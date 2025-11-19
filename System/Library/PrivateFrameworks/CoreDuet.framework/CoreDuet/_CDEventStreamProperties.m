@interface _CDEventStreamProperties
+ (id)eventStreamPropertiesFromDictionary:(id)a3;
+ (id)eventStreamPropertiesFromDictionary:(id)a3 defaultProperties:(id)a4;
- (BOOL)dataCollectionEnabled;
- (BOOL)isAvailable;
- (id)description;
- (id)initFromDictionary:(id)a3 defaultProperties:(id)a4;
- (unint64_t)domainAvailability;
@end

@implementation _CDEventStreamProperties

- (id)description
{
  v29 = MEMORY[0x1E696AEC0];
  v33 = [(_CDEventStreamProperties *)self formattedName];
  v32 = [(_CDEventStreamProperties *)self name];
  v31 = [(_CDEventStreamProperties *)self knowledgeBaseName];
  v30 = [(_CDEventStreamProperties *)self descriptionString];
  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[_CDEventStreamProperties isAvailable](self, "isAvailable")}];
  v27 = _CDDomainAvailabilityDescription([(_CDEventStreamProperties *)self domainAvailability]);
  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[_CDEventStreamProperties dataCollectionEnabled](self, "dataCollectionEnabled")}];
  v3 = [(_CDEventStreamProperties *)self monitorClass];
  v25 = [(_CDEventStreamProperties *)self valueType];
  v4 = [v25 description];
  v5 = [(_CDEventStreamProperties *)self setupOnDemand];
  v6 = [(_CDEventStreamProperties *)self eventCountLimit];
  [(_CDEventStreamProperties *)self timeToLive];
  v8 = v7;
  [(_CDEventStreamProperties *)self temporalPrecision];
  v10 = v9;
  v11 = [(_CDEventStreamProperties *)self eventsPerPeriod];
  [(_CDEventStreamProperties *)self period];
  v13 = v12;
  v14 = [(_CDEventStreamProperties *)self isInstant];
  v15 = [(_CDEventStreamProperties *)self isHistorical];
  v16 = [(_CDEventStreamProperties *)self shouldSaveCurrentEventOnShutdown];
  v17 = [(_CDEventStreamProperties *)self pollingPeriod];
  if ((v17 - 1) > 5)
  {
    v18 = @"Max";
  }

  else
  {
    v18 = off_1E7368278[v17 - 1];
  }

  v19 = MEMORY[0x1E695E110];
  if (v16)
  {
    v20 = MEMORY[0x1E695E118];
  }

  else
  {
    v20 = MEMORY[0x1E695E110];
  }

  if (v15)
  {
    v21 = MEMORY[0x1E695E118];
  }

  else
  {
    v21 = MEMORY[0x1E695E110];
  }

  if (v14)
  {
    v22 = MEMORY[0x1E695E118];
  }

  else
  {
    v22 = MEMORY[0x1E695E110];
  }

  if (v5)
  {
    v19 = MEMORY[0x1E695E118];
  }

  v23 = [v29 stringWithFormat:@"Event Stream Formatted Name: %@  \n\tEvent Stream Name: %@ ; \n\tKnowledgeBase Event Stream Name: %@ ; \n\tEvent Stream Description: %@ ; \n\tisAvailable: %@ ; domains: %@\n\tData Collection Enabled: %@ ;\n\tMonitorClass: %@ ; \n\tValue Type: %@ ; SetupOnDemand: %@ ; \n\tEvent Count Limit: %ld ; Life Time seconds: %f ; \n\tTemporal Precision: %f ; \n\tRate Limiting: (%ld) events in (%f) seconds ; \n\tInstant: %@ ; Historical: %@ ; Persist at shutdown: %@ ; Polling Period: %@ ; \n", v33, v32, v31, v30, v28, v27, v26, v3, v4, v19, v6, v8, v10, v11, v13, v22, v21, v20, v18];;

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
            v14 = [v13 firstObject];
            v15 = [v14 caseInsensitiveCompare:@"iOS"];

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
  v2 = self;
  v29[1] = *MEMORY[0x1E69E9840];
  domainAvailabilityNum = self->_domainAvailabilityNum;
  if (!domainAvailabilityNum)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = v2->_platformObject;
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
      v23 = v2;
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
            v15 = [v14 firstObject];
            v16 = v15;
            if (v15 && ![v15 caseInsensitiveCompare:@"iOS"])
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

      v2 = v23;
      v5 = v22;
    }

    else
    {
      v11 = 0;
    }

    v18 = [v4 numberWithUnsignedLong:v11];
    v19 = v2->_domainAvailabilityNum;
    v2->_domainAvailabilityNum = v18;

    domainAvailabilityNum = v2->_domainAvailabilityNum;
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
        v6 = [v5 BOOLValue];
LABEL_12:

        v11 = [v4 numberWithBool:v6];
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
                      v6 = 0;
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

                v6 = 1;
LABEL_33:
                v9 = v20;
              }

              else
              {
                v6 = 1;
              }
            }

            else
            {
              v6 = 0;
            }

            goto LABEL_37;
          }

LABEL_31:
          v6 = 1;
LABEL_37:

          goto LABEL_12;
        }
      }
    }

    v6 = 0;
    goto LABEL_12;
  }

LABEL_13:
  result = [(NSNumber *)dataCollectionEnabledNum BOOLValue];
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)eventStreamPropertiesFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() eventStreamPropertiesFromDictionary:v3 defaultProperties:0];

  return v4;
}

+ (id)eventStreamPropertiesFromDictionary:(id)a3 defaultProperties:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_CDEventStreamProperties alloc] initFromDictionary:v6 defaultProperties:v5];

  return v7;
}

- (id)initFromDictionary:(id)a3 defaultProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v55.receiver = self;
  v55.super_class = _CDEventStreamProperties;
  v8 = [(_CDEventStreamProperties *)&v55 init];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:kCDESPEventNameKey];
    name = v8->name;
    v8->name = v9;

    v11 = [v6 objectForKeyedSubscript:kCDESPEventFormattedNameKey];
    formattedName = v8->formattedName;
    v8->formattedName = v11;

    v13 = [v6 objectForKeyedSubscript:kCDESPKnowledgeBaseEventNameKey];
    knowledgeBaseName = v8->knowledgeBaseName;
    v8->knowledgeBaseName = v13;

    v15 = [v6 objectForKeyedSubscript:kCDESPEventDescriptionKey];
    descriptionString = v8->descriptionString;
    v8->descriptionString = v15;

    v17 = [v6 objectForKeyedSubscript:kCDESPPlatformsKey];
    platformObject = v8->_platformObject;
    v8->_platformObject = v17;

    v19 = [v6 objectForKeyedSubscript:kCDESPDataCollectionKey];
    dataCollectionObject = v8->_dataCollectionObject;
    v8->_dataCollectionObject = v19;

    v21 = [v6 objectForKeyedSubscript:kCDESPMonitorClassKey];
    monitorClass = v8->monitorClass;
    v8->monitorClass = v21;

    v23 = [v6 objectForKeyedSubscript:kCDESPEventTypeKey];
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

      v28 = [(objc_class *)v27 performSelector:sel_type];
    }

    else
    {
      v28 = [v7 valueType];
    }

    valueType = v8->valueType;
    v8->valueType = v28;

    v30 = [v6 objectForKeyedSubscript:kCDESPSetupOnDemandKey];
    v31 = v30;
    if (v30)
    {
      v32 = [v30 BOOLValue];
    }

    else
    {
      v32 = [v7 setupOnDemand];
    }

    v8->setupOnDemand = v32;
    v33 = [v6 objectForKeyedSubscript:kCDESPTotalNumberOfEventsLimitKey];

    if (v33)
    {
      v34 = [v33 integerValue];
    }

    else
    {
      v34 = [v7 eventCountLimit];
    }

    v8->eventCountLimit = v34;
    v35 = [v6 objectForKeyedSubscript:kCDESPEphemeralityInSecondsKey];

    if (v35)
    {
      [v35 doubleValue];
    }

    else
    {
      [v7 timeToLive];
    }

    v8->timeToLive = v36;
    v37 = [v6 objectForKeyedSubscript:kCDESPTimestampPrecisionInSecondsKey];

    if (v37)
    {
      [v37 doubleValue];
    }

    else
    {
      [v7 temporalPrecision];
    }

    v8->temporalPrecision = v38;
    v39 = [v6 objectForKeyedSubscript:kCDESPRateLimitPeriodInSecondsKey];

    if (v39)
    {
      [v39 doubleValue];
    }

    else
    {
      [v7 period];
    }

    v8->period = v40;
    v41 = [v6 objectForKeyedSubscript:kCDESPRateLimitCountKey];

    if (v41)
    {
      [v41 doubleValue];
    }

    else
    {
      v42 = [v7 eventsPerPeriod];
    }

    v8->eventsPerPeriod = v42;
    v43 = [v6 objectForKeyedSubscript:kCDESPIsInstant];

    if (v43)
    {
      v44 = [v43 BOOLValue];
    }

    else
    {
      v44 = [v7 isInstant];
    }

    v8->isInstant = v44;
    v45 = [v6 objectForKeyedSubscript:kCDESPIsHistorical];

    if (v45)
    {
      v46 = [v45 BOOLValue];
    }

    else
    {
      v46 = [v7 isHistorical];
    }

    v8->isHistorical = v46;
    v47 = [v6 objectForKey:kCDESPShouldSaveCurrentEventOnShutdown];

    if (v47)
    {
      v48 = [v47 BOOLValue];
    }

    else
    {
      v48 = [v7 shouldSaveCurrentEventOnShutdown];
    }

    v8->shouldSaveCurrentEventOnShutdown = v48;
    v49 = [v6 objectForKeyedSubscript:kCDESPPollingPeriod];
    v50 = v49;
    if (v49)
    {
      v51 = v49;
      if ([v51 isEqualToString:@"Min"])
      {
        v52 = 1;
      }

      else if ([v51 isEqualToString:@"4Hour"])
      {
        v52 = 2;
      }

      else if ([v51 isEqualToString:@"6Hour"])
      {
        v52 = 3;
      }

      else if ([v51 isEqualToString:@"12Hour"])
      {
        v52 = 4;
      }

      else if ([v51 isEqualToString:@"18Hour"])
      {
        v52 = 5;
      }

      else if ([v51 isEqualToString:@"24Hour"])
      {
        v52 = 6;
      }

      else
      {
        v52 = 7;
      }
    }

    else
    {
      v52 = [v7 pollingPeriod];
    }

    v8->pollingPeriod = v52;
  }

  return v8;
}

@end