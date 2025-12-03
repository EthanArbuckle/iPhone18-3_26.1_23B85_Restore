@interface _CDEventStreamProperties
+ (id)eventStreamPropertiesFromDictionary:(id)dictionary;
+ (id)eventStreamPropertiesFromDictionary:(id)dictionary defaultProperties:(id)properties;
- (BOOL)dataCollectionEnabled;
- (BOOL)isAvailable;
- (id)description;
- (id)initFromDictionary:(id)dictionary defaultProperties:(id)properties;
- (unint64_t)domainAvailability;
@end

@implementation _CDEventStreamProperties

- (id)description
{
  v29 = MEMORY[0x1E696AEC0];
  formattedName = [(_CDEventStreamProperties *)self formattedName];
  name = [(_CDEventStreamProperties *)self name];
  knowledgeBaseName = [(_CDEventStreamProperties *)self knowledgeBaseName];
  descriptionString = [(_CDEventStreamProperties *)self descriptionString];
  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[_CDEventStreamProperties isAvailable](self, "isAvailable")}];
  v27 = _CDDomainAvailabilityDescription([(_CDEventStreamProperties *)self domainAvailability]);
  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[_CDEventStreamProperties dataCollectionEnabled](self, "dataCollectionEnabled")}];
  monitorClass = [(_CDEventStreamProperties *)self monitorClass];
  valueType = [(_CDEventStreamProperties *)self valueType];
  v4 = [valueType description];
  setupOnDemand = [(_CDEventStreamProperties *)self setupOnDemand];
  eventCountLimit = [(_CDEventStreamProperties *)self eventCountLimit];
  [(_CDEventStreamProperties *)self timeToLive];
  v8 = v7;
  [(_CDEventStreamProperties *)self temporalPrecision];
  v10 = v9;
  eventsPerPeriod = [(_CDEventStreamProperties *)self eventsPerPeriod];
  [(_CDEventStreamProperties *)self period];
  v13 = v12;
  isInstant = [(_CDEventStreamProperties *)self isInstant];
  isHistorical = [(_CDEventStreamProperties *)self isHistorical];
  shouldSaveCurrentEventOnShutdown = [(_CDEventStreamProperties *)self shouldSaveCurrentEventOnShutdown];
  pollingPeriod = [(_CDEventStreamProperties *)self pollingPeriod];
  if ((pollingPeriod - 1) > 5)
  {
    v18 = @"Max";
  }

  else
  {
    v18 = off_1E7368278[pollingPeriod - 1];
  }

  v19 = MEMORY[0x1E695E110];
  if (shouldSaveCurrentEventOnShutdown)
  {
    v20 = MEMORY[0x1E695E118];
  }

  else
  {
    v20 = MEMORY[0x1E695E110];
  }

  if (isHistorical)
  {
    v21 = MEMORY[0x1E695E118];
  }

  else
  {
    v21 = MEMORY[0x1E695E110];
  }

  if (isInstant)
  {
    v22 = MEMORY[0x1E695E118];
  }

  else
  {
    v22 = MEMORY[0x1E695E110];
  }

  if (setupOnDemand)
  {
    v19 = MEMORY[0x1E695E118];
  }

  v23 = [v29 stringWithFormat:@"Event Stream Formatted Name: %@  \n\tEvent Stream Name: %@ ; \n\tKnowledgeBase Event Stream Name: %@ ; \n\tEvent Stream Description: %@ ; \n\tisAvailable: %@ ; domains: %@\n\tData Collection Enabled: %@ ;\n\tMonitorClass: %@ ; \n\tValue Type: %@ ; SetupOnDemand: %@ ; \n\tEvent Count Limit: %ld ; Life Time seconds: %f ; \n\tTemporal Precision: %f ; \n\tRate Limiting: (%ld) events in (%f) seconds ; \n\tInstant: %@ ; Historical: %@ ; Persist at shutdown: %@ ; Polling Period: %@ ; \n", formattedName, name, knowledgeBaseName, descriptionString, v28, v27, v26, monitorClass, v4, v19, eventCountLimit, v8, v10, eventsPerPeriod, v13, v22, v21, v20, v18];;

  return v23;
}

- (BOOL)isAvailable
{
  v28[1] = *MEMORY[0x1E69E9840];
  isAvailableNum = self->_isAvailableNum;
  if (!isAvailableNum)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = self->_platformObject;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 copy];
      v28[0] = v6;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];

      v5 = v7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [@"iOS" caseInsensitiveCompare:@"tvOS"];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        v10 = v9;
        v21 = v5;
        v22 = v4;
        v11 = *v24;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v24 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v23 + 1) + 8 * i) componentsSeparatedByString:{@".", v21, v22, v23}];
            firstObject = [v13 firstObject];
            v15 = [firstObject caseInsensitiveCompare:@"iOS"];

            if (!v15)
            {
              v16 = 1;
              goto LABEL_16;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }

        v16 = 0;
LABEL_16:
        v5 = v21;
        v4 = v22;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = [v4 numberWithBool:v16];
    v18 = self->_isAvailableNum;
    self->_isAvailableNum = v17;

    isAvailableNum = self->_isAvailableNum;
  }

  result = [(NSNumber *)isAvailableNum BOOLValue];
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)domainAvailability
{
  selfCopy = self;
  v29[1] = *MEMORY[0x1E69E9840];
  domainAvailabilityNum = self->_domainAvailabilityNum;
  if (!domainAvailabilityNum)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = selfCopy->_platformObject;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 copy];
      v29[0] = v6;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];

      v5 = v7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = selfCopy;
      v22 = v5;
      v8 = v5;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = *v25;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v25 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = [*(*(&v24 + 1) + 8 * i) componentsSeparatedByString:@"."];
            firstObject = [v14 firstObject];
            v16 = firstObject;
            if (firstObject && ![firstObject caseInsensitiveCompare:@"iOS"])
            {
              if ([v14 count] == 1)
              {
                v11 = 3;
              }

              else if ([v14 count] == 2)
              {
                v17 = [v14 objectAtIndexedSubscript:1];
                if ([v17 caseInsensitiveCompare:@"system"])
                {
                  if (![v17 caseInsensitiveCompare:@"user"])
                  {
                    v11 |= 2uLL;
                  }
                }

                else
                {
                  v11 |= 1uLL;
                }
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v10);
      }

      else
      {
        v11 = 0;
      }

      selfCopy = v23;
      v5 = v22;
    }

    else
    {
      v11 = 0;
    }

    v18 = [v4 numberWithUnsignedLong:v11];
    v19 = selfCopy->_domainAvailabilityNum;
    selfCopy->_domainAvailabilityNum = v18;

    domainAvailabilityNum = selfCopy->_domainAvailabilityNum;
  }

  result = [(NSNumber *)domainAvailabilityNum unsignedLongValue];
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)dataCollectionEnabled
{
  v26[1] = *MEMORY[0x1E69E9840];
  dataCollectionEnabledNum = self->_dataCollectionEnabledNum;
  if (!dataCollectionEnabledNum)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = self->_dataCollectionObject;
    if (+[_CDDeviceInfo isRunningOnInternalBuild])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [v5 BOOLValue];
LABEL_12:

        v11 = [v4 numberWithBool:bOOLValue];
        v12 = self->_dataCollectionEnabledNum;
        self->_dataCollectionEnabledNum = v11;

        dataCollectionEnabledNum = self->_dataCollectionEnabledNum;
        goto LABEL_13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v5;
        v8 = [v7 objectForKeyedSubscript:@"Enabled"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 BOOLValue])
        {
          v9 = [v7 objectForKeyedSubscript:@"DisabledCountries"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v15 = 0;
              goto LABEL_31;
            }

            v26[0] = v9;
            v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
          }

          v15 = v10;
          if (v10 && [v10 count])
          {
            if (dataCollectionIsEnabled_onceToken != -1)
            {
              [_CDEventStreamProperties dataCollectionEnabled];
            }

            if (dataCollectionIsEnabled_countryCode)
            {
              v23 = 0u;
              v24 = 0u;
              v21 = 0u;
              v22 = 0u;
              v15 = v15;
              v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
              if (v16)
              {
                v17 = v16;
                v20 = v9;
                v18 = *v22;
                while (2)
                {
                  for (i = 0; i != v17; ++i)
                  {
                    if (*v22 != v18)
                    {
                      objc_enumerationMutation(v15);
                    }

                    if (![dataCollectionIsEnabled_countryCode caseInsensitiveCompare:*(*(&v21 + 1) + 8 * i)])
                    {
                      bOOLValue = 0;
                      goto LABEL_33;
                    }
                  }

                  v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
                  if (v17)
                  {
                    continue;
                  }

                  break;
                }

                bOOLValue = 1;
LABEL_33:
                v9 = v20;
              }

              else
              {
                bOOLValue = 1;
              }
            }

            else
            {
              bOOLValue = 0;
            }

            goto LABEL_37;
          }

LABEL_31:
          bOOLValue = 1;
LABEL_37:

          goto LABEL_12;
        }
      }
    }

    bOOLValue = 0;
    goto LABEL_12;
  }

LABEL_13:
  result = [(NSNumber *)dataCollectionEnabledNum BOOLValue];
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)eventStreamPropertiesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [objc_opt_class() eventStreamPropertiesFromDictionary:dictionaryCopy defaultProperties:0];

  return v4;
}

+ (id)eventStreamPropertiesFromDictionary:(id)dictionary defaultProperties:(id)properties
{
  propertiesCopy = properties;
  dictionaryCopy = dictionary;
  v7 = [[_CDEventStreamProperties alloc] initFromDictionary:dictionaryCopy defaultProperties:propertiesCopy];

  return v7;
}

- (id)initFromDictionary:(id)dictionary defaultProperties:(id)properties
{
  dictionaryCopy = dictionary;
  propertiesCopy = properties;
  v55.receiver = self;
  v55.super_class = _CDEventStreamProperties;
  v8 = [(_CDEventStreamProperties *)&v55 init];
  if (v8)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:kCDESPEventNameKey];
    name = v8->name;
    v8->name = v9;

    v11 = [dictionaryCopy objectForKeyedSubscript:kCDESPEventFormattedNameKey];
    formattedName = v8->formattedName;
    v8->formattedName = v11;

    v13 = [dictionaryCopy objectForKeyedSubscript:kCDESPKnowledgeBaseEventNameKey];
    knowledgeBaseName = v8->knowledgeBaseName;
    v8->knowledgeBaseName = v13;

    v15 = [dictionaryCopy objectForKeyedSubscript:kCDESPEventDescriptionKey];
    descriptionString = v8->descriptionString;
    v8->descriptionString = v15;

    v17 = [dictionaryCopy objectForKeyedSubscript:kCDESPPlatformsKey];
    platformObject = v8->_platformObject;
    v8->_platformObject = v17;

    v19 = [dictionaryCopy objectForKeyedSubscript:kCDESPDataCollectionKey];
    dataCollectionObject = v8->_dataCollectionObject;
    v8->_dataCollectionObject = v19;

    v21 = [dictionaryCopy objectForKeyedSubscript:kCDESPMonitorClassKey];
    monitorClass = v8->monitorClass;
    v8->monitorClass = v21;

    v23 = [dictionaryCopy objectForKeyedSubscript:kCDESPEventTypeKey];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
      v26 = [@"_DK" stringByAppendingString:v25];
      v27 = NSClassFromString(v26);
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to find matching class for '%@'. Check plist entry for '%@'.", v26, v25];
        v54 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
        objc_exception_throw(v54);
      }

      valueType = [(objc_class *)v27 performSelector:sel_type];
    }

    else
    {
      valueType = [propertiesCopy valueType];
    }

    valueType = v8->valueType;
    v8->valueType = valueType;

    v30 = [dictionaryCopy objectForKeyedSubscript:kCDESPSetupOnDemandKey];
    v31 = v30;
    if (v30)
    {
      bOOLValue = [v30 BOOLValue];
    }

    else
    {
      bOOLValue = [propertiesCopy setupOnDemand];
    }

    v8->setupOnDemand = bOOLValue;
    v33 = [dictionaryCopy objectForKeyedSubscript:kCDESPTotalNumberOfEventsLimitKey];

    if (v33)
    {
      integerValue = [v33 integerValue];
    }

    else
    {
      integerValue = [propertiesCopy eventCountLimit];
    }

    v8->eventCountLimit = integerValue;
    v35 = [dictionaryCopy objectForKeyedSubscript:kCDESPEphemeralityInSecondsKey];

    if (v35)
    {
      [v35 doubleValue];
    }

    else
    {
      [propertiesCopy timeToLive];
    }

    v8->timeToLive = v36;
    v37 = [dictionaryCopy objectForKeyedSubscript:kCDESPTimestampPrecisionInSecondsKey];

    if (v37)
    {
      [v37 doubleValue];
    }

    else
    {
      [propertiesCopy temporalPrecision];
    }

    v8->temporalPrecision = v38;
    v39 = [dictionaryCopy objectForKeyedSubscript:kCDESPRateLimitPeriodInSecondsKey];

    if (v39)
    {
      [v39 doubleValue];
    }

    else
    {
      [propertiesCopy period];
    }

    v8->period = v40;
    v41 = [dictionaryCopy objectForKeyedSubscript:kCDESPRateLimitCountKey];

    if (v41)
    {
      [v41 doubleValue];
    }

    else
    {
      eventsPerPeriod = [propertiesCopy eventsPerPeriod];
    }

    v8->eventsPerPeriod = eventsPerPeriod;
    v43 = [dictionaryCopy objectForKeyedSubscript:kCDESPIsInstant];

    if (v43)
    {
      bOOLValue2 = [v43 BOOLValue];
    }

    else
    {
      bOOLValue2 = [propertiesCopy isInstant];
    }

    v8->isInstant = bOOLValue2;
    v45 = [dictionaryCopy objectForKeyedSubscript:kCDESPIsHistorical];

    if (v45)
    {
      bOOLValue3 = [v45 BOOLValue];
    }

    else
    {
      bOOLValue3 = [propertiesCopy isHistorical];
    }

    v8->isHistorical = bOOLValue3;
    v47 = [dictionaryCopy objectForKey:kCDESPShouldSaveCurrentEventOnShutdown];

    if (v47)
    {
      bOOLValue4 = [v47 BOOLValue];
    }

    else
    {
      bOOLValue4 = [propertiesCopy shouldSaveCurrentEventOnShutdown];
    }

    v8->shouldSaveCurrentEventOnShutdown = bOOLValue4;
    v49 = [dictionaryCopy objectForKeyedSubscript:kCDESPPollingPeriod];
    v50 = v49;
    if (v49)
    {
      v51 = v49;
      if ([v51 isEqualToString:@"Min"])
      {
        pollingPeriod = 1;
      }

      else if ([v51 isEqualToString:@"4Hour"])
      {
        pollingPeriod = 2;
      }

      else if ([v51 isEqualToString:@"6Hour"])
      {
        pollingPeriod = 3;
      }

      else if ([v51 isEqualToString:@"12Hour"])
      {
        pollingPeriod = 4;
      }

      else if ([v51 isEqualToString:@"18Hour"])
      {
        pollingPeriod = 5;
      }

      else if ([v51 isEqualToString:@"24Hour"])
      {
        pollingPeriod = 6;
      }

      else
      {
        pollingPeriod = 7;
      }
    }

    else
    {
      pollingPeriod = [propertiesCopy pollingPeriod];
    }

    v8->pollingPeriod = pollingPeriod;
  }

  return v8;
}

@end