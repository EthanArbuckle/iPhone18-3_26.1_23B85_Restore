@interface IAMEvaluator
+ (BOOL)_isMessageWithinDateRange:(id)a3;
+ (BOOL)applicationContext:(id)a3 allowsPresentationForPolicyGroup:(int64_t)a4 withLastDisplayTime:(id)a5;
+ (int64_t)_compareCurrentTimeWithMessageTime:(double)a3;
- (BOOL)_didCacheResourcesForMessageIfRequired:(id)a3;
- (BOOL)_doesPresentationPolicyAllowPresentationOfMessage:(id)a3;
- (BOOL)_evaluateCompoundRule:(id)a3 forMessageEntry:(id)a4;
- (BOOL)_evaluateCondition:(id)a3 forMessageEntry:(id)a4;
- (BOOL)_evaluateRule:(id)a3 forMessageEntry:(id)a4;
- (IAMEvaluator)initWithMessageEntries:(id)a3 metadataEntries:(id)a4 applicationContext:(id)a5 hostBundleIdentifier:(id)a6 messageGroups:(id)a7 lastDisplayTimeForRestrictedPresentationPolicyGroup:(id)a8 lastDisplayTimeForNormalPresentationPolicyGroup:(id)a9;
- (id)_contextPropertyWithName:(id)a3 forMessageGroupIdentifier:(id)a4;
- (id)_contextPropertyWithName:(id)a3 messageBundleIdentifier:(id)a4 conditionBundleIdentifier:(id)a5;
- (id)_valueForCondition:(id)a3 messageBundleIdentifier:(id)a4 messageMetadata:(id)a5;
- (id)computeMessagesCloseToPassingWithProximityThreshold:(unint64_t)a3;
- (id)computePassingMessageEntries;
- (unint64_t)_calculateCompoundRuleProximity:(id)a3 forMessageEntry:(id)a4;
- (unint64_t)_calculateConditionProximity:(id)a3 forMessageEntry:(id)a4;
- (unint64_t)_calculateRuleProximity:(id)a3 forMessageEntry:(id)a4;
- (unint64_t)_messageEntryProximity:(id)a3;
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
        v9 = [v8 applicationMessage];
        v10 = [v9 identifier];

        metadataEntries = self->_metadataEntries;
        if (metadataEntries)
        {
          v12 = [(NSDictionary *)metadataEntries objectForKeyedSubscript:v10];
          currentMetadata = self->_currentMetadata;
          self->_currentMetadata = v12;
        }

        if ([objc_opt_class() _isMessageWithinDateRange:v8])
        {
          v14 = [v8 applicationMessage];
          v15 = [v14 rule];
          v16 = [(IAMEvaluator *)self _evaluateRule:v15 forMessageEntry:v8];

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
            v31 = v10;
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
            v31 = v10;
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
            v31 = v10;
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

  v22 = [(IAMEvaluator *)self passingMessageEntries];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (BOOL)applicationContext:(id)a3 allowsPresentationForPolicyGroup:(int64_t)a4 withLastDisplayTime:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (objc_opt_respondsToSelector())
  {
    v9 = [v7 presentationPolicyForPolicyGroup:a4];
    v10 = v9;
    v11 = 1;
    if (v8 && v9)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEAA8]);
      [v12 timeIntervalSinceDate:v8];
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

+ (BOOL)_isMessageWithinDateRange:(id)a3
{
  v3 = [a3 applicationMessage];
  if ([v3 hasStartDate] && (objc_msgSend(v3, "startDate"), v4 > 0.0))
  {
    v5 = objc_opt_class();
    [v3 startDate];
    v6 = [v5 _compareCurrentTimeWithMessageTime:?] == 1;
  }

  else
  {
    v6 = 1;
  }

  if ([v3 hasEndDate] && (objc_msgSend(v3, "endDate"), v7 > 0.0))
  {
    v8 = objc_opt_class();
    [v3 endDate];
    v9 = [v8 _compareCurrentTimeWithMessageTime:?] == -1;
  }

  else
  {
    v9 = 1;
  }

  return v6 && v9;
}

+ (int64_t)_compareCurrentTimeWithMessageTime:(double)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:a3];
  v6 = [v4 compare:v5];

  return v6;
}

- (IAMEvaluator)initWithMessageEntries:(id)a3 metadataEntries:(id)a4 applicationContext:(id)a5 hostBundleIdentifier:(id)a6 messageGroups:(id)a7 lastDisplayTimeForRestrictedPresentationPolicyGroup:(id)a8 lastDisplayTimeForNormalPresentationPolicyGroup:(id)a9
{
  v29 = a3;
  v28 = a4;
  v16 = a5;
  v27 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v30.receiver = self;
  v30.super_class = IAMEvaluator;
  v20 = [(IAMEvaluator *)&v30 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_messageEntries, a3);
    objc_storeWeak(&v21->_applicationContext, v16);
    objc_storeStrong(&v21->_hostBundleIdentifier, a6);
    objc_storeStrong(&v21->_messageGroupsByGroupIdentifier, a7);
    objc_storeStrong(&v21->_metadataEntries, a4);
    v22 = [v18 copy];
    lastDisplayTimeForRestrictedPresentationPolicyGroup = v21->_lastDisplayTimeForRestrictedPresentationPolicyGroup;
    v21->_lastDisplayTimeForRestrictedPresentationPolicyGroup = v22;

    v24 = [v19 copy];
    lastDisplayTimeForNormalPresentationPolicyGroup = v21->_lastDisplayTimeForNormalPresentationPolicyGroup;
    v21->_lastDisplayTimeForNormalPresentationPolicyGroup = v24;
  }

  return v21;
}

- (id)computeMessagesCloseToPassingWithProximityThreshold:(unint64_t)a3
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
        if ([(IAMEvaluator *)self _messageEntryProximity:v11, v16]>= a3)
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

  v13 = [(IAMEvaluator *)self messagesCloseToPassing];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)_didCacheResourcesForMessageIfRequired:(id)a3
{
  v3 = a3;
  v4 = [v3 applicationMessage];
  if (([v4 hasAssetPrefetchStrategy] & 1) == 0)
  {

    goto LABEL_5;
  }

  v5 = [v3 applicationMessage];
  v6 = [v5 assetPrefetchStrategy];

  if (v6 == 2)
  {
LABEL_5:
    v7 = 1;
    goto LABEL_6;
  }

  v7 = [v3 didCacheRequiredResources];
LABEL_6:

  return v7;
}

- (BOOL)_doesPresentationPolicyAllowPresentationOfMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 applicationMessage];
  v6 = [v5 hasGlobalPresentationPolicyGroup];

  if (v6)
  {
    v7 = [v4 applicationMessage];
    v8 = [v7 globalPresentationPolicyGroup];

    v9 = [MEMORY[0x277D1B2C8] presentationPolicyGroupForGlobalPresentationPolicyGroup:v8];
    if (v8 == 1)
    {
      v10 = 40;
    }

    else
    {
      if (v8)
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

- (BOOL)_evaluateRule:(id)a3 forMessageEntry:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    goto LABEL_10;
  }

  if ([v7 hasRequiredApplicationContextBundleIdentifier])
  {
    v4 = [v7 requiredApplicationContextBundleIdentifier];
    v9 = [v4 isEqualToString:self->_hostBundleIdentifier];

    if (!v9)
    {
      LOBYTE(v4) = 0;
      goto LABEL_13;
    }
  }

  v10 = [v7 triggerCondition];
  if (v10)
  {

    goto LABEL_7;
  }

  v4 = [v7 subrules];

  if (!v4)
  {
LABEL_10:
    LOBYTE(v4) = 1;
    goto LABEL_13;
  }

LABEL_7:
  v11 = [v7 type];
  if (v11 == 1)
  {
    LOBYTE(v4) = [(IAMEvaluator *)self _evaluateCompoundRule:v7 forMessageEntry:v8];
  }

  else if (!v11)
  {
    v12 = [v7 triggerCondition];
    LOBYTE(v4) = [(IAMEvaluator *)self _evaluateCondition:v12 forMessageEntry:v8];
  }

LABEL_13:

  return v4 & 1;
}

- (BOOL)_evaluateCompoundRule:(id)a3 forMessageEntry:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = [v6 subrules];
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[IAMEvaluator _evaluateRule:forMessageEntry:](self, "_evaluateRule:forMessageEntry:", *(*(&v28 + 1) + 8 * i), v7)}];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

  v15 = [v6 ruleOperator];
  v16 = v15 == 0;
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

        if (v15 == 1)
        {
          if (v16)
          {
            v16 = 1;
            continue;
          }
        }

        else
        {
          if (v15)
          {
            continue;
          }

          if ((v16 & 1) == 0)
          {
            v16 = 0;
            continue;
          }
        }

        v16 = [*(*(&v24 + 1) + 8 * j) BOOLValue];
      }

      v19 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v19);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

- (id)_contextPropertyWithName:(id)a3 forMessageGroupIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(NSDictionary *)self->_messageGroupsByGroupIdentifier objectForKeyedSubscript:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 contextPropertyWithName:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_contextPropertyWithName:(id)a3 messageBundleIdentifier:(id)a4 conditionBundleIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    if ([v10 isEqualToString:self->_hostBundleIdentifier])
    {
      WeakRetained = objc_loadWeakRetained(&self->_applicationContext);
      v13 = [WeakRetained contextPropertyWithName:v8];

      goto LABEL_8;
    }

    v15 = self;
    v16 = v8;
    v17 = v11;
  }

  else
  {
    v14 = objc_loadWeakRetained(&self->_applicationContext);
    v13 = [v14 contextPropertyWithName:v8];

    if (v13)
    {
      goto LABEL_8;
    }

    v15 = self;
    v16 = v8;
    v17 = v9;
  }

  v13 = [(IAMEvaluator *)v15 _contextPropertyWithName:v16 forMessageGroupIdentifier:v17];
LABEL_8:

  return v13;
}

- (id)_valueForCondition:(id)a3 messageBundleIdentifier:(id)a4 messageMetadata:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 hasKind])
  {
    v11 = [v8 kind];
    if (v11 != 1)
    {
      if (v11 || !v10)
      {
LABEL_10:
        if ([v8 dataType] == 2 && !objc_msgSend(v8, "triggerConditionType"))
        {
          v15 = [MEMORY[0x277CCABB0] numberWithInt:0];
        }

        else
        {
          v15 = 0;
        }

        goto LABEL_13;
      }

      v12 = [v8 identifier];
      v13 = [v8 bundleIdentifier];
      v14 = [IAMTriggerKey nameSpacedKeyNameForName:v12 bundleIdentifier:v13];
      v15 = [v10 metadataValueForKey:v14];

      goto LABEL_9;
    }
  }

  else if (v10)
  {
    v16 = [v8 identifier];
    v17 = [v8 bundleIdentifier];
    v18 = [IAMTriggerKey nameSpacedKeyNameForName:v16 bundleIdentifier:v17];
    v15 = [v10 metadataValueForKey:v18];

    if (v15)
    {
      goto LABEL_13;
    }
  }

  v12 = [v8 identifier];
  v13 = [v8 bundleIdentifier];
  v15 = [(IAMEvaluator *)self _contextPropertyWithName:v12 messageBundleIdentifier:v9 conditionBundleIdentifier:v13];
LABEL_9:

  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_13:

  return v15;
}

- (BOOL)_evaluateCondition:(id)a3 forMessageEntry:(id)a4
{
  v6 = a3;
  v7 = [a4 bundleIdentifier];
  v8 = [(IAMEvaluator *)self _valueForCondition:v6 messageBundleIdentifier:v7 messageMetadata:self->_currentMetadata];

  v9 = [v6 dataType];
  if ((!v9 || v9 == 2 || v9 == 1) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v10 = [v6 comparisonType];
    if (v10 <= 2)
    {
      if (v10)
      {
        if (v10 != 1)
        {
          if (v10 != 2)
          {
            goto LABEL_31;
          }

LABEL_23:
          LODWORD(v7) = [v8 intValue];
          v11 = [v6 triggerValue];
          LOBYTE(v7) = v7 < [v11 intValue];
          goto LABEL_30;
        }
      }

      else
      {
        v12 = [v6 dataType];
        switch(v12)
        {
          case 0:
            v15 = [v8 BOOLValue];
            v11 = [v6 triggerValue];
            LOBYTE(v7) = v15 ^ [v11 BOOLValue] ^ 1;
            goto LABEL_30;
          case 2:
            LODWORD(v7) = [v8 intValue];
            v11 = [v6 triggerValue];
            LOBYTE(v7) = v7 == [v11 intValue];
            goto LABEL_30;
          case 1:
            v11 = [v6 triggerValue];
            LOBYTE(v7) = [v8 isEqualToString:v11];
            goto LABEL_30;
        }
      }

      v13 = [v6 dataType];
      if (!v13)
      {
        v14 = [v8 BOOLValue];
        v11 = [v6 triggerValue];
        LOBYTE(v7) = v14 ^ [v11 BOOLValue];
        goto LABEL_30;
      }

      if (v13 == 2)
      {
        LODWORD(v7) = [v8 intValue];
        v11 = [v6 triggerValue];
        LOBYTE(v7) = v7 != [v11 intValue];
        goto LABEL_30;
      }

      if (v13 != 1)
      {
        goto LABEL_23;
      }

      v11 = [v6 triggerValue];
      LOBYTE(v7) = [v8 isEqualToString:v11] ^ 1;
LABEL_30:

      goto LABEL_31;
    }

    switch(v10)
    {
      case 3:
        LODWORD(v7) = [v8 intValue];
        v11 = [v6 triggerValue];
        LOBYTE(v7) = v7 <= [v11 intValue];
        goto LABEL_30;
      case 4:
        LODWORD(v7) = [v8 intValue];
        v11 = [v6 triggerValue];
        LOBYTE(v7) = v7 > [v11 intValue];
        goto LABEL_30;
      case 5:
        LODWORD(v7) = [v8 intValue];
        v11 = [v6 triggerValue];
        LOBYTE(v7) = v7 >= [v11 intValue];
        goto LABEL_30;
    }
  }

LABEL_31:

  return v7 & 1;
}

- (unint64_t)_messageEntryProximity:(id)a3
{
  v4 = a3;
  v5 = v4;
  metadataEntries = self->_metadataEntries;
  if (metadataEntries)
  {
    v7 = [v4 applicationMessage];
    v8 = [v7 identifier];
    v9 = [(NSDictionary *)metadataEntries objectForKeyedSubscript:v8];
    currentProximityMetadata = self->_currentProximityMetadata;
    self->_currentProximityMetadata = v9;
  }

  v11 = [v5 applicationMessage];
  v12 = [v11 rule];
  v13 = [(IAMEvaluator *)self _calculateRuleProximity:v12 forMessageEntry:v5];

  return v13;
}

- (unint64_t)_calculateRuleProximity:(id)a3 forMessageEntry:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_10;
  }

  if ([v6 hasRequiredApplicationContextBundleIdentifier])
  {
    v8 = [v6 requiredApplicationContextBundleIdentifier];
    v9 = [v8 isEqualToString:self->_hostBundleIdentifier];

    if (!v9)
    {
LABEL_11:
      v14 = 0;
      goto LABEL_13;
    }
  }

  v10 = [v6 triggerCondition];
  if (v10)
  {

    goto LABEL_7;
  }

  v11 = [v6 subrules];

  if (!v11)
  {
LABEL_10:
    v14 = 100;
    goto LABEL_13;
  }

LABEL_7:
  v12 = [v6 type];
  if (v12 == 1)
  {
    v14 = [(IAMEvaluator *)self _calculateCompoundRuleProximity:v6 forMessageEntry:v7];
    goto LABEL_13;
  }

  if (v12)
  {
    goto LABEL_11;
  }

  v13 = [v6 triggerCondition];
  v14 = [(IAMEvaluator *)self _calculateConditionProximity:v13 forMessageEntry:v7];

LABEL_13:
  return v14;
}

- (unint64_t)_calculateCompoundRuleProximity:(id)a3 forMessageEntry:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v30 = a4;
  v7 = objc_opt_new();
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v29 = v6;
  v8 = [v6 subrules];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __64__IAMEvaluator__calculateCompoundRuleProximity_forMessageEntry___block_invoke;
  v43[3] = &unk_2797A7610;
  v43[4] = &v48;
  v43[5] = &v44;
  [v8 enumerateObjectsUsingBlock:v43];

  v9 = ![v29 ruleOperator] && v49[3] && v45[3] != 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = [v29 subrules];
  v11 = [v10 countByEnumeratingWithState:&v39 objects:v54 count:16];
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
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v39 + 1) + 8 * v13);
        if (!v9 || ([*(*(&v39 + 1) + 8 * v13) isExactMatchRule] & 1) == 0)
        {
          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IAMEvaluator _calculateRuleProximity:forMessageEntry:](self, "_calculateRuleProximity:forMessageEntry:", v14, v30)}];
          [v7 addObject:v15];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v39 objects:v54 count:16];
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

            v21 = [*(*(&v31 + 1) + 8 * v20) unsignedIntegerValue];
            if (v17 <= v21)
            {
              v17 = v21;
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

- (unint64_t)_calculateConditionProximity:(id)a3 forMessageEntry:(id)a4
{
  v6 = a3;
  v7 = [a4 bundleIdentifier];
  v8 = [(IAMEvaluator *)self _valueForCondition:v6 messageBundleIdentifier:v7 messageMetadata:self->_currentProximityMetadata];

  v9 = [v6 dataType];
  if (!v9 || v9 == 2 || v9 == 1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v10 = [v6 comparisonType];
  v11 = 0;
  if (v10 > 2)
  {
    if (v10 != 3)
    {
      if (v10 == 4)
      {
        v37 = [v8 intValue];
        v38 = [v6 triggerValue];
        v39 = [v38 intValue];

        if (v37 > v39)
        {
          goto LABEL_42;
        }

        v40 = [v8 intValue];
        v41 = [v6 triggerValue];
        v42 = [v41 intValue];

        if (v40 <= v42)
        {
          v51 = 100 * [v8 intValue];
          v20 = [v6 triggerValue];
          v52 = v51 / ([v20 intValue] + 1);
LABEL_52:
          v11 = v52;
LABEL_53:

          goto LABEL_54;
        }
      }

      else
      {
        if (v10 != 5)
        {
          goto LABEL_54;
        }

        v12 = [v8 intValue];
        v13 = [v6 triggerValue];
        v14 = [v13 intValue];

        if (v12 >= v14)
        {
          goto LABEL_42;
        }

        v15 = [v8 intValue];
        v16 = [v6 triggerValue];
        v17 = [v16 intValue];

        if (v15 < v17)
        {
          v18 = 100 * [v8 intValue];
LABEL_50:
          v36 = [v6 triggerValue];
          v20 = v36;
          goto LABEL_51;
        }
      }

LABEL_33:
      v11 = 0;
      goto LABEL_54;
    }

    v30 = [v8 intValue];
    v31 = [v6 triggerValue];
    v32 = [v31 intValue];

    if (v30 <= v32)
    {
      goto LABEL_42;
    }

    v33 = [v8 intValue];
LABEL_29:
    v34 = [v6 triggerValue];
    v35 = [v34 intValue];

    if (v33 > v35)
    {
LABEL_30:
      v20 = [v6 triggerValue];
      v18 = 100 * [v20 intValue];
      v36 = v8;
LABEL_51:
      v52 = v18 / [v36 intValue];
      goto LABEL_52;
    }

    goto LABEL_33;
  }

  if (v10)
  {
    if (v10 != 1)
    {
      if (v10 != 2)
      {
        goto LABEL_54;
      }

LABEL_24:
      v24 = [v8 intValue];
      v25 = [v6 triggerValue];
      v26 = [v25 intValue];

      if (v24 >= v26)
      {
        v27 = [v8 intValue];
        v28 = [v6 triggerValue];
        v29 = [v28 intValue];

        if (v27 < v29)
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

  v19 = [v6 dataType];
  switch(v19)
  {
    case 0:
      v50 = [v8 BOOLValue];
      v20 = [v6 triggerValue];
      v23 = v50 == [v20 BOOLValue];
      goto LABEL_44;
    case 2:
      v47 = [v8 intValue];
      v48 = [v6 triggerValue];
      v49 = [v48 intValue];

      if (v47 == v49)
      {
        goto LABEL_42;
      }

      v53 = [v8 intValue];
      v54 = [v6 triggerValue];
      v55 = [v54 intValue];

      v56 = [v8 intValue];
      v33 = v56;
      if (v53 < v55)
      {
        v18 = 100 * v56;
        goto LABEL_50;
      }

      goto LABEL_29;
    case 1:
      v20 = [v6 triggerValue];
      v21 = [v8 isEqualToString:v20] == 0;
      goto LABEL_38;
  }

LABEL_20:
  v22 = [v6 dataType];
  if (!v22)
  {
    v46 = [v8 BOOLValue];
    v20 = [v6 triggerValue];
    v21 = v46 == [v20 BOOLValue];
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

  if (v22 != 2)
  {
    if (v22 != 1)
    {
      goto LABEL_24;
    }

    v20 = [v6 triggerValue];
    v23 = [v8 isEqualToString:v20] == 0;
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

  v43 = [v8 intValue];
  v44 = [v6 triggerValue];
  v45 = [v44 intValue];

  if (v43 == v45)
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