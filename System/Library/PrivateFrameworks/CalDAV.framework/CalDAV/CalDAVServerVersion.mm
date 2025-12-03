@interface CalDAVServerVersion
+ (CalDAVServerVersion)versionWithHTTPHeaders:(id)headers;
+ (CalDAVServerVersion)versionWithPropertyValue:(id)value;
+ (id)_prototypeMatchingServerHeaders:(id)headers;
- (BOOL)isEqual:(id)equal;
- (CalDAVServerVersion)init;
- (id)_allFlagKeys;
- (id)_propertiesToComplianceClasses;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)propertyValue;
- (unint64_t)hash;
- (void)_setPropertiesFromComplianceClasses:(id)classes;
@end

@implementation CalDAVServerVersion

+ (id)_prototypeMatchingServerHeaders:(id)headers
{
  v28 = *MEMORY[0x277D85DE8];
  headersCopy = headers;
  v4 = +[CalDAVConcreteServerVersion prototypes];
  v5 = v4;
  if (headersCopy)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        regularExpression = [v11 regularExpression];
        if (regularExpression)
        {
          v13 = [regularExpression matchesInString:headersCopy options:0 range:{0, objc_msgSend(headersCopy, "length")}];
          if ([v13 count])
          {
            v14 = [v11 copy];
            v15 = [v13 objectAtIndex:0];
            if ([v15 numberOfRanges] >= 2)
            {
              v16 = [v15 rangeAtIndex:1];
              if (v16 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v18 = [headersCopy substringWithRange:{v16, v17}];
                [v18 doubleValue];
                v20 = v19;

                [v14 setVersion:v20];
              }
            }

            if (v14)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

LABEL_17:
  v14 = [_unknownServerVersionPrototype copy];
LABEL_18:
  [v14 setServerHeader:headersCopy];

  v21 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_propertiesToComplianceClasses
{
  if (_propertiesToComplianceClasses_configuredProperties != -1)
  {
    [CalDAVServerVersion _propertiesToComplianceClasses];
  }

  v3 = _calDAVPropertyToComplianceClassMapping;

  return v3;
}

uint64_t __53__CalDAVServerVersion__propertiesToComplianceClasses__block_invoke()
{
  _calDAVPropertyToComplianceClassMapping = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"calendar-auto-schedule", @"supportsAutoSchedule", @"calendarserver-private-comments", @"supportsPrivateComments", @"calendarserver-clearing-private-comments", @"supportsClearingPrivateComments", @"calendarserver-recurrence-split", @"supportsLikenessPropagation", @"calendarserver-sharing", @"supportsSharing", @"calendarserver-sharing-no-scheduling", @"supportsSharingNoScheduling", @"calendar-proxy", @"supportsCalendarProxy", @"inbox-availability", @"supportsInboxAvailability", @"calendarserver-private-events", @"supportsPrivateEvents", @"calendarserver-subscribed", @"supportsSubscriptionCalendars", @"calendarserver-managed-subscribed", @"supportsManagedSubscriptionCalendars", @"calendarserver-subscribed-mirror", @"supportsSubscriptionMirroring", @"calendar-role", @"supportsParticipantRoles", @"calendarserver-principal-property-search", @"supportsPrincipalPropertySearch", @"calendar-query-extended", @"supportsExtendedCalendarQuery", @"calendar-managed-attachments", @"supportsManagedAttachments", @"calendarserver-home-sync", @"supportsCalendarHomeSync", @"calendar-no-timezone", @"supportsCalendarNoTimezone", @"calendarserver-recurrence-split", @"supportsCalendarRecurrenceSplit", @"calendar-audit", @"supportsCalendarAudit", @"caldavserver-supports-telephone", @"supportsTelephone", @"calendar-default-alarms", @"supportsDefaultAlarms", 0}];

  return MEMORY[0x2821F96F8]();
}

- (id)_allFlagKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__CalDAVServerVersion__allFlagKeys__block_invoke;
  block[3] = &unk_278D66940;
  block[4] = self;
  if (_allFlagKeys_configuredFlags != -1)
  {
    dispatch_once(&_allFlagKeys_configuredFlags, block);
  }

  return _calDAVAllFlagProperties;
}

void __35__CalDAVServerVersion__allFlagKeys__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _propertiesToComplianceClasses];
  v2 = [v6 allKeys];
  v3 = [*(a1 + 32) _additionalFlagKeys];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];
  v5 = _calDAVAllFlagProperties;
  _calDAVAllFlagProperties = v4;
}

- (void)_setPropertiesFromComplianceClasses:(id)classes
{
  classesCopy = classes;
  [(CalDAVServerVersion *)self setComplianceClasses:classesCopy];
  _propertiesToComplianceClasses = [(CalDAVServerVersion *)self _propertiesToComplianceClasses];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __59__CalDAVServerVersion__setPropertiesFromComplianceClasses___block_invoke;
  v10 = &unk_278D66D60;
  v6 = classesCopy;
  v11 = v6;
  selfCopy = self;
  [_propertiesToComplianceClasses enumerateKeysAndObjectsUsingBlock:&v7];

  if (![(CalDAVServerVersion *)self supportsInboxAvailability:v7])
  {
    -[CalDAVServerVersion setSupportsInboxAvailability:](self, "setSupportsInboxAvailability:", [v6 containsObject:@"calendar-availability"]);
  }
}

void __59__CalDAVServerVersion__setPropertiesFromComplianceClasses___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 containsObject:a3];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  [*(a1 + 40) setValue:v8 forKey:v6];
}

+ (CalDAVServerVersion)versionWithHTTPHeaders:(id)headers
{
  v22 = *MEMORY[0x277D85DE8];
  headersCopy = headers;
  v5 = [headersCopy objectForKey:*MEMORY[0x277CFDB60]];
  v6 = *MEMORY[0x277CFDB28];
  v7 = CDVCleanedStringsFromResponseHeaders();
  v8 = [self _prototypeMatchingServerHeaders:v5];
  [v8 _setPropertiesFromComplianceClasses:v7];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = *MEMORY[0x277CFDB68];
  v10 = CDVCleanedStringsFromResponseHeaders();
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v17 + 1) + 8 * i) isEqualToString:{@"gzip", v17}])
        {
          [v8 setSupportsRequestCompression:1];
          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (CalDAVServerVersion)init
{
  v3.receiver = self;
  v3.super_class = CalDAVServerVersion;
  result = [(CalDAVServerVersion *)&v3 init];
  if (result)
  {
    result->_version = 0.0;
    *&result->_supportsTimeRangeFilter = 257;
    result->_supportsTimeRangeFilterOnInbox = 1;
    result->_supportsRequestCompression = 0;
    result->_supportsChecksumming = 1;
    result->_alwaysSupportsFreebusyOnOutbox = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(objc_opt_class());
  [(CalDAVServerVersion *)self version];
  [v4 setVersion:?];
  serverHeader = [(CalDAVServerVersion *)self serverHeader];
  [v4 setServerHeader:serverHeader];

  supportedCalendarComponentSets = [(CalDAVServerVersion *)self supportedCalendarComponentSets];
  [v4 setSupportedCalendarComponentSets:supportedCalendarComponentSets];

  complianceClasses = [(CalDAVServerVersion *)self complianceClasses];
  [v4 setComplianceClasses:complianceClasses];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  _allFlagKeys = [(CalDAVServerVersion *)self _allFlagKeys];
  v9 = [_allFlagKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(_allFlagKeys);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [(CalDAVServerVersion *)self valueForKey:v13];
        [v4 setValue:v14 forKey:v13];
      }

      v10 = [_allFlagKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v4;
}

- (unint64_t)hash
{
  type = [(CalDAVServerVersion *)self type];
  v4 = [type hash];
  [(CalDAVServerVersion *)self version];
  v6 = v4 + v5 + [(CalDAVServerVersion *)self supportsAutoSchedule];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v29 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    type = [v5 type];
    type2 = [(CalDAVServerVersion *)self type];
    if ([type isEqualToString:type2])
    {
      [v5 version];
      v9 = v8;
      [(CalDAVServerVersion *)self version];
      v11 = v10;

      if (v9 == v11)
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        _allFlagKeys = [(CalDAVServerVersion *)self _allFlagKeys];
        v13 = [_allFlagKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(_allFlagKeys);
              }

              v17 = *(*(&v24 + 1) + 8 * i);
              v18 = [v5 valueForKey:v17];
              v19 = [(CalDAVServerVersion *)self valueForKey:v17];
              v20 = [v18 isEqualToNumber:v19];

              if (!v20)
              {
                v21 = 0;
                goto LABEL_19;
              }
            }

            v14 = [_allFlagKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v21 = 1;
LABEL_19:

        goto LABEL_16;
      }
    }

    else
    {
    }

    v21 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v21 = 0;
LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)description
{
  v20 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  complianceClasses = [(CalDAVServerVersion *)self complianceClasses];
  v5 = [complianceClasses countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(complianceClasses);
        }

        [string appendFormat:@"%@, ", *(*(&v15 + 1) + 8 * i)];
      }

      v6 = [complianceClasses countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  if ([string length] >= 3)
  {
    [string deleteCharactersInRange:{objc_msgSend(string, "length") - 2, 2}];
  }

  v9 = MEMORY[0x277CCACA8];
  type = [(CalDAVServerVersion *)self type];
  [(CalDAVServerVersion *)self version];
  v12 = [v9 stringWithFormat:@"%@/%0.1f (%@)", type, v11, string];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (CalDAVServerVersion)versionWithPropertyValue:(id)value
{
  v39 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v4 = 0.0;
  if (!valueCopy)
  {
    v31 = 0;
    v32 = 0;
    bOOLValue = 0;
    v12 = 0;
    v5 = @"Unknown";
    goto LABEL_26;
  }

  objc_opt_class();
  v5 = @"Unknown";
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = 0;
    v32 = 0;
    bOOLValue = 0;
    v12 = 0;
    goto LABEL_26;
  }

  v6 = [valueCopy objectForKey:@"CalDAVServerType"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"Unknown";
  }

  v5 = v8;

  v9 = [valueCopy objectForKey:@"CalDAVServerVersion"];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      v4 = v10;
    }
  }

  v11 = [valueCopy objectForKey:@"SupportsCompression"];
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v11 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v12 = [valueCopy objectForKey:@"ComplianceClasses"];
  v32 = [valueCopy objectForKey:@"ServerHeader"];
  v31 = [valueCopy objectForKey:@"SupportedCalendarComponentSets"];
  v13 = [valueCopy objectForKey:@"CalDAVAutoSchedule"];
  if (v13 || ([valueCopy objectForKey:@"CalDAVSupportsComments"], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_18:
    v14 = [MEMORY[0x277CBEB58] set];
    v15 = [valueCopy objectForKey:@"CalDAVAutoSchedule"];

    if (v15)
    {
      [v14 addObject:@"calendar-auto-schedule"];
    }

    v16 = [valueCopy objectForKey:@"CalDAVSupportsComments"];

    if (v16)
    {
      [v14 addObject:@"calendarserver-private-comments"];
    }

    v17 = [valueCopy objectForKey:@"CalDAVSupportsSharing"];

    if (v17)
    {
      [v14 addObject:@"calendarserver-sharing"];
    }

    v18 = [v14 setByAddingObjectsFromSet:v12];

    v12 = v18;
    goto LABEL_25;
  }

  v30 = [valueCopy objectForKey:@"CalDAVSupportsSharing"];

  if (v30)
  {
    goto LABEL_18;
  }

LABEL_25:

LABEL_26:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = +[CalDAVConcreteServerVersion prototypes];
  v20 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
LABEL_28:
    v23 = 0;
    while (1)
    {
      if (*v35 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v34 + 1) + 8 * v23);
      type = [v24 type];
      v26 = [(__CFString *)v5 isEqualToString:type];

      if (v26)
      {
        break;
      }

      if (v21 == ++v23)
      {
        v21 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v21)
        {
          goto LABEL_28;
        }

        goto LABEL_34;
      }
    }

    v27 = [v24 copy];
    [v27 setVersion:v4];

    if (v27)
    {
      goto LABEL_37;
    }
  }

  else
  {
LABEL_34:
  }

  v27 = [_unknownServerVersionPrototype copy];
LABEL_37:
  [v27 _setPropertiesFromComplianceClasses:v12];
  [v27 setServerHeader:v32];
  [v27 setSupportsRequestCompression:bOOLValue];
  [v27 setSupportedCalendarComponentSets:v31];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)propertyValue
{
  complianceClasses = [(CalDAVServerVersion *)self complianceClasses];
  if (![complianceClasses count])
  {
    v4 = [MEMORY[0x277CBEB58] set];
    _propertiesToComplianceClasses = [(CalDAVServerVersion *)self _propertiesToComplianceClasses];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __36__CalDAVServerVersion_propertyValue__block_invoke;
    v20 = &unk_278D66D60;
    selfCopy = self;
    v6 = v4;
    v22 = v6;
    [_propertiesToComplianceClasses enumerateKeysAndObjectsUsingBlock:&v17];

    v7 = v6;
    complianceClasses = v7;
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = MEMORY[0x277CCABB0];
  [(CalDAVServerVersion *)self version];
  v10 = [v9 numberWithDouble:?];
  [v8 setObject:v10 forKey:@"CalDAVServerVersion"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[CalDAVServerVersion supportsRequestCompression](self, "supportsRequestCompression")}];
  [v8 setObject:v11 forKey:@"SupportsCompression"];

  allObjects = [complianceClasses allObjects];
  [v8 setObject:allObjects forKey:@"ComplianceClasses"];

  type = [(CalDAVServerVersion *)self type];
  if (type)
  {
    [v8 setObject:type forKey:@"CalDAVServerType"];
  }

  v14 = [(CalDAVServerVersion *)self serverHeader:v17];
  if (v14)
  {
    [v8 setObject:v14 forKey:@"ServerHeader"];
  }

  supportedCalendarComponentSets = [(CalDAVServerVersion *)self supportedCalendarComponentSets];
  if (supportedCalendarComponentSets)
  {
    [v8 setObject:supportedCalendarComponentSets forKey:@"SupportedCalendarComponentSets"];
  }

  return v8;
}

void __36__CalDAVServerVersion_propertyValue__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) valueForKey:a2];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    [*(a1 + 40) addObject:v7];
  }
}

@end