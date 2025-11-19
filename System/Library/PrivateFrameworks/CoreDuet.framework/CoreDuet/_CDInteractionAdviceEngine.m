@interface _CDInteractionAdviceEngine
+ (id)interactionAdviceEngineWithStore:(id)a3;
- (_CDInteractionAdviceEngine)initWithStore:(id)a3;
- (_CDSocialInteractionAdvisor)socialAdvisor;
- (_CDTemporalInteractionAdvisor)temporalAdvisor;
- (id)adviseInteractionsForDate:(id)a3 usingSettings:(id)a4;
- (id)adviseInteractionsForKeywordsInString:(id)a3 usingSettings:(id)a4;
- (id)adviseInteractionsUsingSettings:(id)a3;
- (id)adviseSocialInteractionsForDate:(id)a3 andSeedContacts:(id)a4 usingSettings:(id)a5;
- (id)rankCandidateContacts:(id)a3 usingSettings:(id)a4;
- (void)tuneSocialAdvisorUsingSettings:(id)a3 heartBeatHandler:(id)a4;
@end

@implementation _CDInteractionAdviceEngine

+ (id)interactionAdviceEngineWithStore:(id)a3
{
  v3 = a3;
  v4 = [[_CDInteractionAdviceEngine alloc] initWithStore:v3];

  return v4;
}

- (_CDInteractionAdviceEngine)initWithStore:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _CDInteractionAdviceEngine;
  v6 = [(_CDInteractionAdviceEngine *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
    temporalAdvisor = v7->_temporalAdvisor;
    v7->_temporalAdvisor = 0;

    socialAdvisor = v7->_socialAdvisor;
    v7->_socialAdvisor = 0;
  }

  return v7;
}

- (id)rankCandidateContacts:(id)a3 usingSettings:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v33 = a4;
  v32 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v7 = 0;
  if (![v5 count])
  {
LABEL_11:
    v13 = v33;
    v14 = [v33 seedIdentifiers];
    v26 = [v14 allObjects];

    if ([v26 count])
    {
      v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSObject count](v26, "count")}];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v30 = v26;
      v16 = v26;
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

      v22 = [(_CDInteractionAdviceEngine *)self socialAdvisor];
      v13 = v33;
      v9 = [v22 rankContacts:v6 withSeedContacts:v15 usingSettings:v33];

      v26 = v30;
      if (v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v24 = [(_CDInteractionAdviceEngine *)self temporalAdvisor];
      v9 = [v24 rankContacts:v6 usingSettings:v33];

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
    v9 = [v5 objectAtIndexedSubscript:v8];
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
      v26 = +[_CDLogging interactionChannel];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [_CDInteractionAdviceEngine rankCandidateContacts:usingSettings:];
      }

      goto LABEL_28;
    }

LABEL_10:

    if (++v8 >= [v5 count])
    {
      goto LABEL_11;
    }
  }

  v26 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [_CDInteractionAdviceEngine rankCandidateContacts:usingSettings:];
  }

LABEL_28:
  v25 = 0;
  v13 = v33;
LABEL_29:

  objc_autoreleasePoolPop(v32);
  v28 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)adviseInteractionsUsingSettings:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 seedIdentifiers];
  v7 = [v6 allObjects];

  v8 = [v4 interactionDate];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x1E695DF00] date];
  }

  v11 = v10;

  v12 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [_CDInteractionAdviceEngine adviseInteractionsUsingSettings:];
  }

  if ([v7 count])
  {
    v26 = v5;
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = v7;
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
          [v13 addObject:v19];
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

    v21 = [(_CDInteractionAdviceEngine *)self socialAdvisor];
    v22 = [v21 adviseInteractionsForDate:v11 andSeedContacts:v13 usingSettings:v4];

    v5 = v26;
  }

  else
  {
    v23 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [_CDInteractionAdviceEngine adviseInteractionsUsingSettings:];
    }

    v13 = [(_CDInteractionAdviceEngine *)self temporalAdvisor];
    v22 = [v13 adviseInteractionsForDate:v11 usingSettings:v4];
  }

  objc_autoreleasePoolPop(v5);
  v24 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)adviseInteractionsForDate:(id)a3 usingSettings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_CDInteractionAdviceEngine *)self temporalAdvisor];
  v9 = [v8 adviseInteractionsForDate:v7 usingSettings:v6];

  return v9;
}

- (id)adviseInteractionsForKeywordsInString:(id)a3 usingSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  queryAdvisor = self->_queryAdvisor;
  if (!queryAdvisor)
  {
    v9 = [[_CDQueryInteractionAdvisor alloc] initWithStore:self->_store];
    v10 = self->_queryAdvisor;
    self->_queryAdvisor = v9;

    queryAdvisor = self->_queryAdvisor;
  }

  v11 = [(_CDQueryInteractionAdvisor *)queryAdvisor adviseInteractionsForKeywordsInString:v6 usingSettings:v7];

  return v11;
}

- (id)adviseSocialInteractionsForDate:(id)a3 andSeedContacts:(id)a4 usingSettings:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(_CDInteractionAdviceEngine *)self socialAdvisor];
  v12 = [v11 adviseInteractionsForDate:v10 andSeedContacts:v9 usingSettings:v8];

  return v12;
}

- (void)tuneSocialAdvisorUsingSettings:(id)a3 heartBeatHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_CDInteractionAdviceEngine *)self socialAdvisor];
  [v8 tuneUsingSettings:v7 heartBeatHandler:v6];
}

- (_CDSocialInteractionAdvisor)socialAdvisor
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_socialAdvisor)
  {
    v3 = [[_CDSocialInteractionAdvisor alloc] initWithStore:v2->_store];
    socialAdvisor = v2->_socialAdvisor;
    v2->_socialAdvisor = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_socialAdvisor;

  return v5;
}

- (_CDTemporalInteractionAdvisor)temporalAdvisor
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_temporalAdvisor)
  {
    v3 = [[_CDTemporalInteractionAdvisor alloc] initWithStore:v2->_store];
    temporalAdvisor = v2->_temporalAdvisor;
    v2->_temporalAdvisor = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_temporalAdvisor;

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