@interface IAMEvaluator
+ (BOOL)_isMessageWithinDateRange:(id)range;
+ (BOOL)applicationContext:(id)context allowsPresentationForPolicyGroup:(int64_t)group withLastDisplayTime:(id)time;
+ (int64_t)_compareCurrentTimeWithMessageTime:(double)time;
- (BOOL)_didCacheResourcesForMessageIfRequired:(id)required;
- (BOOL)_doesPresentationPolicyAllowPresentationOfMessage:(id)message;
- (BOOL)_evaluateCompoundRule:(id)rule forMessageEntry:(id)entry;
- (BOOL)_evaluateCondition:(id)condition forMessageEntry:(id)entry;
- (BOOL)_evaluateRule:(id)rule forMessageEntry:(id)entry;
- (IAMEvaluator)initWithMessageEntries:(id)entries metadataEntries:(id)metadataEntries applicationContext:(id)context hostBundleIdentifier:(id)identifier messageGroups:(id)groups lastDisplayTimeForRestrictedPresentationPolicyGroup:(id)group lastDisplayTimeForNormalPresentationPolicyGroup:(id)policyGroup;
- (id)_contextPropertyWithName:(id)name forMessageGroupIdentifier:(id)identifier;
- (id)_contextPropertyWithName:(id)name messageBundleIdentifier:(id)identifier conditionBundleIdentifier:(id)bundleIdentifier;
- (id)_valueForCondition:(id)condition messageBundleIdentifier:(id)identifier messageMetadata:(id)metadata;
- (id)computeMessagesCloseToPassingWithProximityThreshold:(unint64_t)threshold;
- (id)computePassingMessageEntries;
- (unint64_t)_calculateCompoundRuleProximity:(id)proximity forMessageEntry:(id)entry;
- (unint64_t)_calculateConditionProximity:(id)proximity forMessageEntry:(id)entry;
- (unint64_t)_calculateRuleProximity:(id)proximity forMessageEntry:(id)entry;
- (unint64_t)_messageEntryProximity:(id)proximity;
@end

@implementation IAMEvaluator

- (id)computePassingMessageEntries
{
  v33 = *MEMORY[0x277D85DE8];
  v25 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = self->_messageEntries;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v26 + 1) + 8 * v7);
        applicationMessage = [v8 applicationMessage];
        identifier = [applicationMessage identifier];

        metadataEntries = self->_metadataEntries;
        if (metadataEntries)
        {
          v12 = [(NSDictionary *)metadataEntries objectForKeyedSubscript:identifier];
          currentMetadata = self->_currentMetadata;
          self->_currentMetadata = v12;
        }

        if ([objc_opt_class() _isMessageWithinDateRange:v8])
        {
          applicationMessage2 = [v8 applicationMessage];
          rule = [applicationMessage2 rule];
          v16 = [(IAMEvaluator *)self _evaluateRule:rule forMessageEntry:v8];

          if (!v16)
          {
            goto LABEL_17;
          }

          if (![(IAMEvaluator *)self _didCacheResourcesForMessageIfRequired:v8])
          {
            v17 = IAMLogCategoryDefault();
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_16;
            }

            *buf = 138543362;
            v31 = identifier;
            v18 = v17;
            v19 = "Message with identifier = %{public}@ cannot be displayed because its resources aren't cached.";
            goto LABEL_15;
          }

          if ([(IAMEvaluator *)self _doesPresentationPolicyAllowPresentationOfMessage:v8])
          {
            [v25 addObject:v8];
            goto LABEL_17;
          }

          v17 = IAMLogCategoryDefault();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v31 = identifier;
            v18 = v17;
            v19 = "Message with identifier = %{public}@ cannot be displayed because of its presentation policy.";
            goto LABEL_15;
          }
        }

        else
        {
          v17 = IAMLogCategoryDefault();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v31 = identifier;
            v18 = v17;
            v19 = "Message with identifier = %{public}@ cannot be displayed because it's not within expected start and end date range.";
LABEL_15:
            _os_log_impl(&dword_254AF4000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
          }
        }

LABEL_16:

LABEL_17:
        ++v7;
      }

      while (v5 != v7);
      v20 = [(NSArray *)v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
      v5 = v20;
    }

    while (v20);
  }

  v21 = [v25 copy];
  [(IAMEvaluator *)self setPassingMessageEntries:v21];

  passingMessageEntries = [(IAMEvaluator *)self passingMessageEntries];

  v23 = *MEMORY[0x277D85DE8];

  return passingMessageEntries;
}

+ (BOOL)applicationContext:(id)context allowsPresentationForPolicyGroup:(int64_t)group withLastDisplayTime:(id)time
{
  contextCopy = context;
  timeCopy = time;
  if (objc_opt_respondsToSelector())
  {
    v9 = [contextCopy presentationPolicyForPolicyGroup:group];
    v10 = v9;
    v11 = 1;
    if (timeCopy && v9)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEAA8]);
      [v12 timeIntervalSinceDate:timeCopy];
      v14 = v13;
      [v10 minimumIntervalBetweenPresentations];
      v11 = v14 > v15;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

+ (BOOL)_isMessageWithinDateRange:(id)range
{
  applicationMessage = [range applicationMessage];
  if ([applicationMessage hasStartDate] && (objc_msgSend(applicationMessage, "startDate"), v4 > 0.0))
  {
    v5 = objc_opt_class();
    [applicationMessage startDate];
    v6 = [v5 _compareCurrentTimeWithMessageTime:?] == 1;
  }

  else
  {
    v6 = 1;
  }

  if ([applicationMessage hasEndDate] && (objc_msgSend(applicationMessage, "endDate"), v7 > 0.0))
  {
    v8 = objc_opt_class();
    [applicationMessage endDate];
    v9 = [v8 _compareCurrentTimeWithMessageTime:?] == -1;
  }

  else
  {
    v9 = 1;
  }

  return v6 && v9;
}

+ (int64_t)_compareCurrentTimeWithMessageTime:(double)time
{
  v4 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:time];
  v6 = [v4 compare:v5];

  return v6;
}

- (IAMEvaluator)initWithMessageEntries:(id)entries metadataEntries:(id)metadataEntries applicationContext:(id)context hostBundleIdentifier:(id)identifier messageGroups:(id)groups lastDisplayTimeForRestrictedPresentationPolicyGroup:(id)group lastDisplayTimeForNormalPresentationPolicyGroup:(id)policyGroup
{
  entriesCopy = entries;
  metadataEntriesCopy = metadataEntries;
  contextCopy = context;
  identifierCopy = identifier;
  groupsCopy = groups;
  groupCopy = group;
  policyGroupCopy = policyGroup;
  v30.receiver = self;
  v30.super_class = IAMEvaluator;
  v20 = [(IAMEvaluator *)&v30 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_messageEntries, entries);
    objc_storeWeak(&v21->_applicationContext, contextCopy);
    objc_storeStrong(&v21->_hostBundleIdentifier, identifier);
    objc_storeStrong(&v21->_messageGroupsByGroupIdentifier, groups);
    objc_storeStrong(&v21->_metadataEntries, metadataEntries);
    v22 = [groupCopy copy];
    lastDisplayTimeForRestrictedPresentationPolicyGroup = v21->_lastDisplayTimeForRestrictedPresentationPolicyGroup;
    v21->_lastDisplayTimeForRestrictedPresentationPolicyGroup = v22;

    v24 = [policyGroupCopy copy];
    lastDisplayTimeForNormalPresentationPolicyGroup = v21->_lastDisplayTimeForNormalPresentationPolicyGroup;
    v21->_lastDisplayTimeForNormalPresentationPolicyGroup = v24;
  }

  return v21;
}

- (id)computeMessagesCloseToPassingWithProximityThreshold:(unint64_t)threshold
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_messageEntries;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([(IAMEvaluator *)self _messageEntryProximity:v11, v16]>= threshold)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  [(IAMEvaluator *)self setMessagesCloseToPassing:v12];

  messagesCloseToPassing = [(IAMEvaluator *)self messagesCloseToPassing];

  v14 = *MEMORY[0x277D85DE8];

  return messagesCloseToPassing;
}

- (BOOL)_didCacheResourcesForMessageIfRequired:(id)required
{
  requiredCopy = required;
  applicationMessage = [requiredCopy applicationMessage];
  if (([applicationMessage hasAssetPrefetchStrategy] & 1) == 0)
  {

    goto LABEL_5;
  }

  applicationMessage2 = [requiredCopy applicationMessage];
  assetPrefetchStrategy = [applicationMessage2 assetPrefetchStrategy];

  if (assetPrefetchStrategy == 2)
  {
LABEL_5:
    didCacheRequiredResources = 1;
    goto LABEL_6;
  }

  didCacheRequiredResources = [requiredCopy didCacheRequiredResources];
LABEL_6:

  return didCacheRequiredResources;
}

- (BOOL)_doesPresentationPolicyAllowPresentationOfMessage:(id)message
{
  messageCopy = message;
  applicationMessage = [messageCopy applicationMessage];
  hasGlobalPresentationPolicyGroup = [applicationMessage hasGlobalPresentationPolicyGroup];

  if (hasGlobalPresentationPolicyGroup)
  {
    applicationMessage2 = [messageCopy applicationMessage];
    globalPresentationPolicyGroup = [applicationMessage2 globalPresentationPolicyGroup];

    v9 = [MEMORY[0x277D1B2C8] presentationPolicyGroupForGlobalPresentationPolicyGroup:globalPresentationPolicyGroup];
    if (globalPresentationPolicyGroup == 1)
    {
      v10 = 40;
    }

    else
    {
      if (globalPresentationPolicyGroup)
      {
        v12 = 0;
        goto LABEL_9;
      }

      v10 = 48;
    }

    v12 = *(&self->super.isa + v10);
LABEL_9:
    v13 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained(&self->_applicationContext);
    v11 = [v13 applicationContext:WeakRetained allowsPresentationForPolicyGroup:v9 withLastDisplayTime:v12];

    goto LABEL_10;
  }

  v11 = 1;
LABEL_10:

  return v11;
}

- (BOOL)_evaluateRule:(id)rule forMessageEntry:(id)entry
{
  ruleCopy = rule;
  entryCopy = entry;
  if (!ruleCopy)
  {
    goto LABEL_10;
  }

  if ([ruleCopy hasRequiredApplicationContextBundleIdentifier])
  {
    requiredApplicationContextBundleIdentifier = [ruleCopy requiredApplicationContextBundleIdentifier];
    v9 = [requiredApplicationContextBundleIdentifier isEqualToString:self->_hostBundleIdentifier];

    if (!v9)
    {
      LOBYTE(requiredApplicationContextBundleIdentifier) = 0;
      goto LABEL_13;
    }
  }

  triggerCondition = [ruleCopy triggerCondition];
  if (triggerCondition)
  {

    goto LABEL_7;
  }

  requiredApplicationContextBundleIdentifier = [ruleCopy subrules];

  if (!requiredApplicationContextBundleIdentifier)
  {
LABEL_10:
    LOBYTE(requiredApplicationContextBundleIdentifier) = 1;
    goto LABEL_13;
  }

LABEL_7:
  type = [ruleCopy type];
  if (type == 1)
  {
    LOBYTE(requiredApplicationContextBundleIdentifier) = [(IAMEvaluator *)self _evaluateCompoundRule:ruleCopy forMessageEntry:entryCopy];
  }

  else if (!type)
  {
    triggerCondition2 = [ruleCopy triggerCondition];
    LOBYTE(requiredApplicationContextBundleIdentifier) = [(IAMEvaluator *)self _evaluateCondition:triggerCondition2 forMessageEntry:entryCopy];
  }

LABEL_13:

  return requiredApplicationContextBundleIdentifier & 1;
}

- (BOOL)_evaluateCompoundRule:(id)rule forMessageEntry:(id)entry
{
  v34 = *MEMORY[0x277D85DE8];
  ruleCopy = rule;
  entryCopy = entry;
  v8 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  subrules = [ruleCopy subrules];
  v10 = [subrules countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(subrules);
        }

        v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[IAMEvaluator _evaluateRule:forMessageEntry:](self, "_evaluateRule:forMessageEntry:", *(*(&v28 + 1) + 8 * i), entryCopy)}];
        [v8 addObject:v14];
      }

      v11 = [subrules countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

  ruleOperator = [ruleCopy ruleOperator];
  bOOLValue = ruleOperator == 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = v8;
  v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        if (ruleOperator == 1)
        {
          if (bOOLValue)
          {
            bOOLValue = 1;
            continue;
          }
        }

        else
        {
          if (ruleOperator)
          {
            continue;
          }

          if ((bOOLValue & 1) == 0)
          {
            bOOLValue = 0;
            continue;
          }
        }

        bOOLValue = [*(*(&v24 + 1) + 8 * j) BOOLValue];
      }

      v19 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v19);
  }

  v22 = *MEMORY[0x277D85DE8];
  return bOOLValue & 1;
}

- (id)_contextPropertyWithName:(id)name forMessageGroupIdentifier:(id)identifier
{
  nameCopy = name;
  v7 = [(NSDictionary *)self->_messageGroupsByGroupIdentifier objectForKeyedSubscript:identifier];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 contextPropertyWithName:nameCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_contextPropertyWithName:(id)name messageBundleIdentifier:(id)identifier conditionBundleIdentifier:(id)bundleIdentifier
{
  nameCopy = name;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v11 = bundleIdentifierCopy;
  if (bundleIdentifierCopy)
  {
    if ([bundleIdentifierCopy isEqualToString:self->_hostBundleIdentifier])
    {
      WeakRetained = objc_loadWeakRetained(&self->_applicationContext);
      v13 = [WeakRetained contextPropertyWithName:nameCopy];

      goto LABEL_8;
    }

    selfCopy2 = self;
    v16 = nameCopy;
    v17 = v11;
  }

  else
  {
    v14 = objc_loadWeakRetained(&self->_applicationContext);
    v13 = [v14 contextPropertyWithName:nameCopy];

    if (v13)
    {
      goto LABEL_8;
    }

    selfCopy2 = self;
    v16 = nameCopy;
    v17 = identifierCopy;
  }

  v13 = [(IAMEvaluator *)selfCopy2 _contextPropertyWithName:v16 forMessageGroupIdentifier:v17];
LABEL_8:

  return v13;
}

- (id)_valueForCondition:(id)condition messageBundleIdentifier:(id)identifier messageMetadata:(id)metadata
{
  conditionCopy = condition;
  identifierCopy = identifier;
  metadataCopy = metadata;
  if ([conditionCopy hasKind])
  {
    kind = [conditionCopy kind];
    if (kind != 1)
    {
      if (kind || !metadataCopy)
      {
LABEL_10:
        if ([conditionCopy dataType] == 2 && !objc_msgSend(conditionCopy, "triggerConditionType"))
        {
          v15 = [MEMORY[0x277CCABB0] numberWithInt:0];
        }

        else
        {
          v15 = 0;
        }

        goto LABEL_13;
      }

      identifier = [conditionCopy identifier];
      bundleIdentifier = [conditionCopy bundleIdentifier];
      v14 = [IAMTriggerKey nameSpacedKeyNameForName:identifier bundleIdentifier:bundleIdentifier];
      v15 = [metadataCopy metadataValueForKey:v14];

      goto LABEL_9;
    }
  }

  else if (metadataCopy)
  {
    identifier2 = [conditionCopy identifier];
    bundleIdentifier2 = [conditionCopy bundleIdentifier];
    v18 = [IAMTriggerKey nameSpacedKeyNameForName:identifier2 bundleIdentifier:bundleIdentifier2];
    v15 = [metadataCopy metadataValueForKey:v18];

    if (v15)
    {
      goto LABEL_13;
    }
  }

  identifier = [conditionCopy identifier];
  bundleIdentifier = [conditionCopy bundleIdentifier];
  v15 = [(IAMEvaluator *)self _contextPropertyWithName:identifier messageBundleIdentifier:identifierCopy conditionBundleIdentifier:bundleIdentifier];
LABEL_9:

  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_13:

  return v15;
}

- (BOOL)_evaluateCondition:(id)condition forMessageEntry:(id)entry
{
  conditionCopy = condition;
  bundleIdentifier = [entry bundleIdentifier];
  v8 = [(IAMEvaluator *)self _valueForCondition:conditionCopy messageBundleIdentifier:bundleIdentifier messageMetadata:self->_currentMetadata];

  dataType = [conditionCopy dataType];
  if ((!dataType || dataType == 2 || dataType == 1) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    LOBYTE(bundleIdentifier) = 0;
  }

  else
  {
    comparisonType = [conditionCopy comparisonType];
    if (comparisonType <= 2)
    {
      if (comparisonType)
      {
        if (comparisonType != 1)
        {
          if (comparisonType != 2)
          {
            goto LABEL_31;
          }

LABEL_23:
          LODWORD(bundleIdentifier) = [v8 intValue];
          triggerValue = [conditionCopy triggerValue];
          LOBYTE(bundleIdentifier) = bundleIdentifier < [triggerValue intValue];
          goto LABEL_30;
        }
      }

      else
      {
        dataType2 = [conditionCopy dataType];
        switch(dataType2)
        {
          case 0:
            bOOLValue = [v8 BOOLValue];
            triggerValue = [conditionCopy triggerValue];
            LOBYTE(bundleIdentifier) = bOOLValue ^ [triggerValue BOOLValue] ^ 1;
            goto LABEL_30;
          case 2:
            LODWORD(bundleIdentifier) = [v8 intValue];
            triggerValue = [conditionCopy triggerValue];
            LOBYTE(bundleIdentifier) = bundleIdentifier == [triggerValue intValue];
            goto LABEL_30;
          case 1:
            triggerValue = [conditionCopy triggerValue];
            LOBYTE(bundleIdentifier) = [v8 isEqualToString:triggerValue];
            goto LABEL_30;
        }
      }

      dataType3 = [conditionCopy dataType];
      if (!dataType3)
      {
        bOOLValue2 = [v8 BOOLValue];
        triggerValue = [conditionCopy triggerValue];
        LOBYTE(bundleIdentifier) = bOOLValue2 ^ [triggerValue BOOLValue];
        goto LABEL_30;
      }

      if (dataType3 == 2)
      {
        LODWORD(bundleIdentifier) = [v8 intValue];
        triggerValue = [conditionCopy triggerValue];
        LOBYTE(bundleIdentifier) = bundleIdentifier != [triggerValue intValue];
        goto LABEL_30;
      }

      if (dataType3 != 1)
      {
        goto LABEL_23;
      }

      triggerValue = [conditionCopy triggerValue];
      LOBYTE(bundleIdentifier) = [v8 isEqualToString:triggerValue] ^ 1;
LABEL_30:

      goto LABEL_31;
    }

    switch(comparisonType)
    {
      case 3:
        LODWORD(bundleIdentifier) = [v8 intValue];
        triggerValue = [conditionCopy triggerValue];
        LOBYTE(bundleIdentifier) = bundleIdentifier <= [triggerValue intValue];
        goto LABEL_30;
      case 4:
        LODWORD(bundleIdentifier) = [v8 intValue];
        triggerValue = [conditionCopy triggerValue];
        LOBYTE(bundleIdentifier) = bundleIdentifier > [triggerValue intValue];
        goto LABEL_30;
      case 5:
        LODWORD(bundleIdentifier) = [v8 intValue];
        triggerValue = [conditionCopy triggerValue];
        LOBYTE(bundleIdentifier) = bundleIdentifier >= [triggerValue intValue];
        goto LABEL_30;
    }
  }

LABEL_31:

  return bundleIdentifier & 1;
}

- (unint64_t)_messageEntryProximity:(id)proximity
{
  proximityCopy = proximity;
  v5 = proximityCopy;
  metadataEntries = self->_metadataEntries;
  if (metadataEntries)
  {
    applicationMessage = [proximityCopy applicationMessage];
    identifier = [applicationMessage identifier];
    v9 = [(NSDictionary *)metadataEntries objectForKeyedSubscript:identifier];
    currentProximityMetadata = self->_currentProximityMetadata;
    self->_currentProximityMetadata = v9;
  }

  applicationMessage2 = [v5 applicationMessage];
  rule = [applicationMessage2 rule];
  v13 = [(IAMEvaluator *)self _calculateRuleProximity:rule forMessageEntry:v5];

  return v13;
}

- (unint64_t)_calculateRuleProximity:(id)proximity forMessageEntry:(id)entry
{
  proximityCopy = proximity;
  entryCopy = entry;
  if (!proximityCopy)
  {
    goto LABEL_10;
  }

  if ([proximityCopy hasRequiredApplicationContextBundleIdentifier])
  {
    requiredApplicationContextBundleIdentifier = [proximityCopy requiredApplicationContextBundleIdentifier];
    v9 = [requiredApplicationContextBundleIdentifier isEqualToString:self->_hostBundleIdentifier];

    if (!v9)
    {
LABEL_11:
      v14 = 0;
      goto LABEL_13;
    }
  }

  triggerCondition = [proximityCopy triggerCondition];
  if (triggerCondition)
  {

    goto LABEL_7;
  }

  subrules = [proximityCopy subrules];

  if (!subrules)
  {
LABEL_10:
    v14 = 100;
    goto LABEL_13;
  }

LABEL_7:
  type = [proximityCopy type];
  if (type == 1)
  {
    v14 = [(IAMEvaluator *)self _calculateCompoundRuleProximity:proximityCopy forMessageEntry:entryCopy];
    goto LABEL_13;
  }

  if (type)
  {
    goto LABEL_11;
  }

  triggerCondition2 = [proximityCopy triggerCondition];
  v14 = [(IAMEvaluator *)self _calculateConditionProximity:triggerCondition2 forMessageEntry:entryCopy];

LABEL_13:
  return v14;
}

- (unint64_t)_calculateCompoundRuleProximity:(id)proximity forMessageEntry:(id)entry
{
  v55 = *MEMORY[0x277D85DE8];
  proximityCopy = proximity;
  entryCopy = entry;
  v7 = objc_opt_new();
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v29 = proximityCopy;
  subrules = [proximityCopy subrules];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __64__IAMEvaluator__calculateCompoundRuleProximity_forMessageEntry___block_invoke;
  v43[3] = &unk_2797A7610;
  v43[4] = &v48;
  v43[5] = &v44;
  [subrules enumerateObjectsUsingBlock:v43];

  v9 = ![v29 ruleOperator] && v49[3] && v45[3] != 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  subrules2 = [v29 subrules];
  v11 = [subrules2 countByEnumeratingWithState:&v39 objects:v54 count:16];
  if (v11)
  {
    v12 = *v40;
    do
    {
      v13 = 0;
      do
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(subrules2);
        }

        v14 = *(*(&v39 + 1) + 8 * v13);
        if (!v9 || ([*(*(&v39 + 1) + 8 * v13) isExactMatchRule] & 1) == 0)
        {
          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IAMEvaluator _calculateRuleProximity:forMessageEntry:](self, "_calculateRuleProximity:forMessageEntry:", v14, entryCopy)}];
          [v7 addObject:v15];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [subrules2 countByEnumeratingWithState:&v39 objects:v54 count:16];
    }

    while (v11);
  }

  if ([v29 ruleOperator])
  {
    if ([v29 ruleOperator] == 1)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v16 = v7;
      v17 = 0;
      v18 = [v16 countByEnumeratingWithState:&v31 objects:v52 count:16];
      if (v18)
      {
        v19 = *v32;
        do
        {
          v20 = 0;
          do
          {
            if (*v32 != v19)
            {
              objc_enumerationMutation(v16);
            }

            unsignedIntegerValue = [*(*(&v31 + 1) + 8 * v20) unsignedIntegerValue];
            if (v17 <= unsignedIntegerValue)
            {
              v17 = unsignedIntegerValue;
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v31 objects:v52 count:16];
        }

        while (v18);
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v22 = v7;
    v23 = 0;
    v24 = [v22 countByEnumeratingWithState:&v35 objects:v53 count:16];
    if (v24)
    {
      v25 = *v36;
      do
      {
        v26 = 0;
        do
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v23 += [*(*(&v35 + 1) + 8 * v26++) unsignedIntegerValue];
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v35 objects:v53 count:16];
      }

      while (v24);
    }

    v17 = v23 / [v22 count];
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);

  v27 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t __64__IAMEvaluator__calculateCompoundRuleProximity_forMessageEntry___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isExactMatchRule];
  v4 = 40;
  if (result)
  {
    v4 = 32;
  }

  ++*(*(*(a1 + v4) + 8) + 24);
  return result;
}

- (unint64_t)_calculateConditionProximity:(id)proximity forMessageEntry:(id)entry
{
  proximityCopy = proximity;
  bundleIdentifier = [entry bundleIdentifier];
  v8 = [(IAMEvaluator *)self _valueForCondition:proximityCopy messageBundleIdentifier:bundleIdentifier messageMetadata:self->_currentProximityMetadata];

  dataType = [proximityCopy dataType];
  if (!dataType || dataType == 2 || dataType == 1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  comparisonType = [proximityCopy comparisonType];
  v11 = 0;
  if (comparisonType > 2)
  {
    if (comparisonType != 3)
    {
      if (comparisonType == 4)
      {
        intValue = [v8 intValue];
        triggerValue = [proximityCopy triggerValue];
        intValue2 = [triggerValue intValue];

        if (intValue > intValue2)
        {
          goto LABEL_42;
        }

        intValue3 = [v8 intValue];
        triggerValue2 = [proximityCopy triggerValue];
        intValue4 = [triggerValue2 intValue];

        if (intValue3 <= intValue4)
        {
          v51 = 100 * [v8 intValue];
          triggerValue3 = [proximityCopy triggerValue];
          v52 = v51 / ([triggerValue3 intValue] + 1);
LABEL_52:
          v11 = v52;
LABEL_53:

          goto LABEL_54;
        }
      }

      else
      {
        if (comparisonType != 5)
        {
          goto LABEL_54;
        }

        intValue5 = [v8 intValue];
        triggerValue4 = [proximityCopy triggerValue];
        intValue6 = [triggerValue4 intValue];

        if (intValue5 >= intValue6)
        {
          goto LABEL_42;
        }

        intValue7 = [v8 intValue];
        triggerValue5 = [proximityCopy triggerValue];
        intValue8 = [triggerValue5 intValue];

        if (intValue7 < intValue8)
        {
          v18 = 100 * [v8 intValue];
LABEL_50:
          triggerValue6 = [proximityCopy triggerValue];
          triggerValue3 = triggerValue6;
          goto LABEL_51;
        }
      }

LABEL_33:
      v11 = 0;
      goto LABEL_54;
    }

    intValue9 = [v8 intValue];
    triggerValue7 = [proximityCopy triggerValue];
    intValue10 = [triggerValue7 intValue];

    if (intValue9 <= intValue10)
    {
      goto LABEL_42;
    }

    intValue11 = [v8 intValue];
LABEL_29:
    triggerValue8 = [proximityCopy triggerValue];
    intValue12 = [triggerValue8 intValue];

    if (intValue11 > intValue12)
    {
LABEL_30:
      triggerValue3 = [proximityCopy triggerValue];
      v18 = 100 * [triggerValue3 intValue];
      triggerValue6 = v8;
LABEL_51:
      v52 = v18 / [triggerValue6 intValue];
      goto LABEL_52;
    }

    goto LABEL_33;
  }

  if (comparisonType)
  {
    if (comparisonType != 1)
    {
      if (comparisonType != 2)
      {
        goto LABEL_54;
      }

LABEL_24:
      intValue13 = [v8 intValue];
      triggerValue9 = [proximityCopy triggerValue];
      intValue14 = [triggerValue9 intValue];

      if (intValue13 >= intValue14)
      {
        intValue15 = [v8 intValue];
        triggerValue10 = [proximityCopy triggerValue];
        intValue16 = [triggerValue10 intValue];

        if (intValue15 < intValue16)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

LABEL_42:
      v11 = 100;
      goto LABEL_54;
    }

    goto LABEL_20;
  }

  dataType2 = [proximityCopy dataType];
  switch(dataType2)
  {
    case 0:
      bOOLValue = [v8 BOOLValue];
      triggerValue3 = [proximityCopy triggerValue];
      v23 = bOOLValue == [triggerValue3 BOOLValue];
      goto LABEL_44;
    case 2:
      intValue17 = [v8 intValue];
      triggerValue11 = [proximityCopy triggerValue];
      intValue18 = [triggerValue11 intValue];

      if (intValue17 == intValue18)
      {
        goto LABEL_42;
      }

      intValue19 = [v8 intValue];
      triggerValue12 = [proximityCopy triggerValue];
      intValue20 = [triggerValue12 intValue];

      intValue21 = [v8 intValue];
      intValue11 = intValue21;
      if (intValue19 < intValue20)
      {
        v18 = 100 * intValue21;
        goto LABEL_50;
      }

      goto LABEL_29;
    case 1:
      triggerValue3 = [proximityCopy triggerValue];
      v21 = [v8 isEqualToString:triggerValue3] == 0;
      goto LABEL_38;
  }

LABEL_20:
  dataType3 = [proximityCopy dataType];
  if (!dataType3)
  {
    bOOLValue2 = [v8 BOOLValue];
    triggerValue3 = [proximityCopy triggerValue];
    v21 = bOOLValue2 == [triggerValue3 BOOLValue];
LABEL_38:
    if (v21)
    {
      v11 = 0;
    }

    else
    {
      v11 = 100;
    }

    goto LABEL_53;
  }

  if (dataType3 != 2)
  {
    if (dataType3 != 1)
    {
      goto LABEL_24;
    }

    triggerValue3 = [proximityCopy triggerValue];
    v23 = [v8 isEqualToString:triggerValue3] == 0;
LABEL_44:
    if (v23)
    {
      v11 = 100;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_53;
  }

  intValue22 = [v8 intValue];
  triggerValue13 = [proximityCopy triggerValue];
  intValue23 = [triggerValue13 intValue];

  if (intValue22 == intValue23)
  {
    v11 = 0;
  }

  else
  {
    v11 = 100;
  }

LABEL_54:

  return v11;
}

@end