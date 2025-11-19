@interface _CDTemporalInteractionAdvisor
- (_CDTemporalInteractionAdvisor)initWithStore:(id)a3;
- (id)adviseInteractionsForDate:(id)a3 usingSettings:(id)a4;
- (id)rankContacts:(id)a3 usingSettings:(id)a4;
- (id)rankerForDate:(id)a3 settings:(id)a4;
@end

@implementation _CDTemporalInteractionAdvisor

- (_CDTemporalInteractionAdvisor)initWithStore:(id)a3
{
  v19[5] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v17.receiver = self;
  v17.super_class = _CDTemporalInteractionAdvisor;
  v6 = [(_CDTemporalInteractionAdvisor *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
    v18[0] = &unk_1F05EE9B8;
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v19[0] = v8;
    v18[1] = &unk_1F05EEA00;
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v19[1] = v9;
    v18[2] = &unk_1F05EE9D0;
    v10 = [MEMORY[0x1E695DF90] dictionary];
    v19[2] = v10;
    v18[3] = &unk_1F05EE9E8;
    v11 = objc_opt_new();
    v19[3] = v11;
    v18[4] = &unk_1F05EEA18;
    v12 = [MEMORY[0x1E695DF90] dictionary];
    v19[4] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];
    consumerToModelMap = v7->_consumerToModelMap;
    v7->_consumerToModelMap = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)rankerForDate:(id)a3 settings:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setReferenceDate:v6];

  v8 = [v5 contactPrefix];
  [v7 setContactPrefix:v8];

  [v7 setTimeHalfLife:172800.0];
  [v7 setTimeOfDayHalfLife:7200.0];
  [v7 setTimeOfWeekHalfLife:21600.0];
  [v7 setTimeWeight:2.0];
  [v7 setTimeOfDayWeight:1.0];
  [v7 setTimeOfWeekWeight:2.0];
  [v7 setOutgoingWeight:2.0];
  [v7 setKeywordWeight:100000.0];
  [v7 setContactNameKeywordMatchWeight:200000.0];
  v9 = [v5 interactionTitle];
  v10 = [_CDStringTokenizer extractNormalizedKeywords:v9];
  [v7 setReferenceKeywords:v10];

  v11 = [v5 constrainIdentifiers];
  [v7 setAllowedIdentifiers:v11];

  v12 = [v5 constrainPersonIds];
  [v7 setAllowedPersonIds:v12];

  v13 = [v5 constrainPersonIdType];
  [v7 setAllowedPersonIdType:v13];

  [v7 setLocationWeight:4.0];
  v14 = [v5 interactionLocationUUID];

  [v7 setReferenceLocationUUID:v14];
  [v7 setRankAggregationMethod:0];

  return v7;
}

- (id)adviseInteractionsForDate:(id)a3 usingSettings:(id)a4
{
  v49[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  context = objc_autoreleasePoolPush();
  v8 = [(_CDTemporalInteractionAdvisor *)self rankerForDate:v6 settings:v7];
  v9 = [(_CDTemporalInteractionAdvisor *)self consumerToModelMap];
  v45 = v8;
  [_CDInteractionAdvisorUtils adjustForConsumerSettings:v7 modelSettings:v9 andRanker:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v11 = [v7 contactPredicate];
  v12 = 0x1E696A000uLL;
  v13 = 0x1E695D000uLL;
  v44 = v11;
  if (v11)
  {
    v43 = [(_CDInteractionStore *)self->_store queryContactsUsingPredicate:v11 sortDescriptors:0 limit:500 error:0];
    v14 = [v43 valueForKey:@"identifier"];
    if ([v14 count])
    {
      v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"sender.identifier IN %@", v14];
      v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY recipients.identifier IN %@", v14];
      v17 = v10;
      v18 = MEMORY[0x1E696AB28];
      v49[0] = v15;
      v49[1] = v16;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
      v10 = [v18 orPredicateWithSubpredicates:v19];

      v12 = 0x1E696A000;
      v13 = 0x1E695D000;
    }
  }

  else
  {
    v43 = 0;
  }

  if ([v7 useFuture])
  {
    v20 = 4;
  }

  else
  {
    v20 = 0;
  }

  v21 = [_CDInteractionAdvisorUtils createTimePredicateForReferenceDate:v6 recentLookBackDays:168 windowHours:24 lookBackWeeks:4 lookAheadWeeks:v20];
  v22 = [v7 interactionPredicate];
  v23 = *(v12 + 2856);
  v41 = v22;
  v42 = v21;
  v48[0] = v21;
  v48[1] = v22;
  v48[2] = v10;
  v24 = [*(v13 + 3784) arrayWithObjects:v48 count:3];
  v25 = [v23 andPredicateWithSubpredicates:v24];

  v26 = +[_CDLogging interactionChannel];
  v40 = v6;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [_CDTemporalInteractionAdvisor adviseInteractionsForDate:usingSettings:];
  }

  v27 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  store = self->_store;
  v47 = v27;
  v29 = [*(v13 + 3784) arrayWithObjects:&v47 count:1];
  v30 = [(_CDInteractionStore *)store queryInteractionsUsingPredicate:v25 sortDescriptors:v29 limit:500 error:0];

  v31 = [v7 ignoreContactIdentifiers];
  v32 = [v31 allObjects];
  v33 = [_CDInteractionAdvisorUtils contactsForIdentifiers:v32];

  v34 = [v7 resultLimit];
  v35 = [v7 aggregateByIdentifier];
  LOBYTE(v39) = [v7 requireOutgoingInteraction];
  v36 = [_CDInteractionAdvisorUtils adviceBasedOnInteractions:v30 forContacts:v43 andRanker:v45 ignoringContacts:v33 withLimit:v34 aggregateByIdentifier:v35 requireOneOutgoingInteraction:v39];

  objc_autoreleasePoolPop(context);
  v37 = *MEMORY[0x1E69E9840];

  return v36;
}

- (id)rankContacts:(id)a3 usingSettings:(id)a4
{
  v32[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [v6 interactionDate];
  if (!v8)
  {
    v8 = [MEMORY[0x1E695DF00] date];
  }

  v29 = [(_CDTemporalInteractionAdvisor *)self rankerForDate:v8 settings:v6];
  v9 = [(_CDTemporalInteractionAdvisor *)self consumerToModelMap];
  [_CDInteractionAdvisorUtils adjustForConsumerSettings:v6 modelSettings:v9 andRanker:v29];

  v28 = [v7 valueForKey:@"identifier"];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"startDate <= %@", v8];
  v11 = [v6 interactionPredicate];

  v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"sender.identifier IN %@", v28];
  v26 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY recipients.identifier IN %@", v28];
  v12 = v7;
  v13 = MEMORY[0x1E696AB28];
  v32[0] = v27;
  v32[1] = v26;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v15 = [v13 orPredicateWithSubpredicates:v14];

  v16 = MEMORY[0x1E696AB28];
  v31[0] = v10;
  v31[1] = v11;
  v31[2] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
  v18 = [v16 andPredicateWithSubpredicates:v17];

  v19 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  store = self->_store;
  v30 = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v22 = [(_CDInteractionStore *)store queryInteractionsUsingPredicate:v18 sortDescriptors:v21 limit:500 error:0];

  v23 = [_CDInteractionAdvisorUtils rankContacts:v12 basedOnInteractions:v22 andRanker:v29];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)adviseInteractionsForDate:usingSettings:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end