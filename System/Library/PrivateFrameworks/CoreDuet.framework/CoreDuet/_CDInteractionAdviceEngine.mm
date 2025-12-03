@interface _CDInteractionAdviceEngine
+ (id)interactionAdviceEngineWithStore:(id)store;
- (_CDInteractionAdviceEngine)initWithStore:(id)store;
- (_CDSocialInteractionAdvisor)socialAdvisor;
- (_CDTemporalInteractionAdvisor)temporalAdvisor;
- (id)adviseInteractionsForDate:(id)date usingSettings:(id)settings;
- (id)adviseInteractionsForKeywordsInString:(id)string usingSettings:(id)settings;
- (id)adviseInteractionsUsingSettings:(id)settings;
- (id)adviseSocialInteractionsForDate:(id)date andSeedContacts:(id)contacts usingSettings:(id)settings;
- (id)rankCandidateContacts:(id)contacts usingSettings:(id)settings;
- (void)tuneSocialAdvisorUsingSettings:(id)settings heartBeatHandler:(id)handler;
@end

@implementation _CDInteractionAdviceEngine

+ (id)interactionAdviceEngineWithStore:(id)store
{
  storeCopy = store;
  v4 = [[_CDInteractionAdviceEngine alloc] initWithStore:storeCopy];

  return v4;
}

- (_CDInteractionAdviceEngine)initWithStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = _CDInteractionAdviceEngine;
  v6 = [(_CDInteractionAdviceEngine *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    temporalAdvisor = v7->_temporalAdvisor;
    v7->_temporalAdvisor = 0;

    socialAdvisor = v7->_socialAdvisor;
    v7->_socialAdvisor = 0;
  }

  return v7;
}

- (id)rankCandidateContacts:(id)contacts usingSettings:(id)settings
{
  v39 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  settingsCopy = settings;
  v32 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(contactsCopy, "count")}];
  v7 = 0;
  if (![contactsCopy count])
  {
LABEL_11:
    v13 = settingsCopy;
    seedIdentifiers = [settingsCopy seedIdentifiers];
    allObjects = [seedIdentifiers allObjects];

    if ([allObjects count])
    {
      v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSObject count](allObjects, "count")}];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v30 = allObjects;
      v16 = allObjects;
      v17 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v35;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v35 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [[_CDContact alloc] initWithIdentifier:*(*(&v34 + 1) + 8 * i) type:0 customIdentifier:0 displayName:0 displayType:0 personId:0 personIdType:0];
            [v15 addObject:v21];
          }

          v18 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v18);
      }

      socialAdvisor = [(_CDInteractionAdviceEngine *)self socialAdvisor];
      v13 = settingsCopy;
      v9 = [socialAdvisor rankContacts:v6 withSeedContacts:v15 usingSettings:settingsCopy];

      allObjects = v30;
      if (v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      temporalAdvisor = [(_CDInteractionAdviceEngine *)self temporalAdvisor];
      v9 = [temporalAdvisor rankContacts:v6 usingSettings:settingsCopy];

      if (v7)
      {
LABEL_20:
        v23 = [v9 valueForKey:@"identifier"];
LABEL_23:
        v25 = v23;
        goto LABEL_29;
      }
    }

    v23 = v9;
    v9 = v23;
    goto LABEL_23;
  }

  v8 = 0;
  while (1)
  {
    v9 = [contactsCopy objectAtIndexedSubscript:v8];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v11 = v9;
      v12 = [[_CDContact alloc] initWithIdentifier:v11 type:0 customIdentifier:0 displayName:0 displayType:0 personId:0 personIdType:0];

      [v6 addObject:v12];
      if (!v8)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    [v6 addObject:v9];
    if (!v8)
    {
LABEL_9:
      v7 = isKindOfClass;
      goto LABEL_10;
    }

LABEL_5:
    if ((v7 & 1) != (isKindOfClass & 1))
    {
      allObjects = +[_CDLogging interactionChannel];
      if (os_log_type_enabled(allObjects, OS_LOG_TYPE_ERROR))
      {
        [_CDInteractionAdviceEngine rankCandidateContacts:usingSettings:];
      }

      goto LABEL_28;
    }

LABEL_10:

    if (++v8 >= [contactsCopy count])
    {
      goto LABEL_11;
    }
  }

  allObjects = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(allObjects, OS_LOG_TYPE_ERROR))
  {
    [_CDInteractionAdviceEngine rankCandidateContacts:usingSettings:];
  }

LABEL_28:
  v25 = 0;
  v13 = settingsCopy;
LABEL_29:

  objc_autoreleasePoolPop(v32);
  v28 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)adviseInteractionsUsingSettings:(id)settings
{
  v32 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  v5 = objc_autoreleasePoolPush();
  seedIdentifiers = [settingsCopy seedIdentifiers];
  allObjects = [seedIdentifiers allObjects];

  interactionDate = [settingsCopy interactionDate];
  v9 = interactionDate;
  if (interactionDate)
  {
    date = interactionDate;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v11 = date;

  v12 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [_CDInteractionAdviceEngine adviseInteractionsUsingSettings:];
  }

  if ([allObjects count])
  {
    v26 = v5;
    temporalAdvisor = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(allObjects, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = allObjects;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [[_CDContact alloc] initWithIdentifier:*(*(&v27 + 1) + 8 * i) type:0 customIdentifier:0 displayName:0 displayType:0 personId:0 personIdType:0];
          [temporalAdvisor addObject:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v16);
    }

    v20 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [_CDInteractionAdviceEngine adviseInteractionsUsingSettings:];
    }

    socialAdvisor = [(_CDInteractionAdviceEngine *)self socialAdvisor];
    v22 = [socialAdvisor adviseInteractionsForDate:v11 andSeedContacts:temporalAdvisor usingSettings:settingsCopy];

    v5 = v26;
  }

  else
  {
    v23 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [_CDInteractionAdviceEngine adviseInteractionsUsingSettings:];
    }

    temporalAdvisor = [(_CDInteractionAdviceEngine *)self temporalAdvisor];
    v22 = [temporalAdvisor adviseInteractionsForDate:v11 usingSettings:settingsCopy];
  }

  objc_autoreleasePoolPop(v5);
  v24 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)adviseInteractionsForDate:(id)date usingSettings:(id)settings
{
  settingsCopy = settings;
  dateCopy = date;
  temporalAdvisor = [(_CDInteractionAdviceEngine *)self temporalAdvisor];
  v9 = [temporalAdvisor adviseInteractionsForDate:dateCopy usingSettings:settingsCopy];

  return v9;
}

- (id)adviseInteractionsForKeywordsInString:(id)string usingSettings:(id)settings
{
  stringCopy = string;
  settingsCopy = settings;
  queryAdvisor = self->_queryAdvisor;
  if (!queryAdvisor)
  {
    v9 = [[_CDQueryInteractionAdvisor alloc] initWithStore:self->_store];
    v10 = self->_queryAdvisor;
    self->_queryAdvisor = v9;

    queryAdvisor = self->_queryAdvisor;
  }

  v11 = [(_CDQueryInteractionAdvisor *)queryAdvisor adviseInteractionsForKeywordsInString:stringCopy usingSettings:settingsCopy];

  return v11;
}

- (id)adviseSocialInteractionsForDate:(id)date andSeedContacts:(id)contacts usingSettings:(id)settings
{
  settingsCopy = settings;
  contactsCopy = contacts;
  dateCopy = date;
  socialAdvisor = [(_CDInteractionAdviceEngine *)self socialAdvisor];
  v12 = [socialAdvisor adviseInteractionsForDate:dateCopy andSeedContacts:contactsCopy usingSettings:settingsCopy];

  return v12;
}

- (void)tuneSocialAdvisorUsingSettings:(id)settings heartBeatHandler:(id)handler
{
  handlerCopy = handler;
  settingsCopy = settings;
  socialAdvisor = [(_CDInteractionAdviceEngine *)self socialAdvisor];
  [socialAdvisor tuneUsingSettings:settingsCopy heartBeatHandler:handlerCopy];
}

- (_CDSocialInteractionAdvisor)socialAdvisor
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_socialAdvisor)
  {
    v3 = [[_CDSocialInteractionAdvisor alloc] initWithStore:selfCopy->_store];
    socialAdvisor = selfCopy->_socialAdvisor;
    selfCopy->_socialAdvisor = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_socialAdvisor;

  return v5;
}

- (_CDTemporalInteractionAdvisor)temporalAdvisor
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_temporalAdvisor)
  {
    v3 = [[_CDTemporalInteractionAdvisor alloc] initWithStore:selfCopy->_store];
    temporalAdvisor = selfCopy->_temporalAdvisor;
    selfCopy->_temporalAdvisor = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_temporalAdvisor;

  return v5;
}

- (void)rankCandidateContacts:usingSettings:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_191750000, v0, OS_LOG_TYPE_ERROR, "Cannot rank invalid contact type : %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)adviseInteractionsUsingSettings:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)adviseInteractionsUsingSettings:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)adviseInteractionsUsingSettings:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end