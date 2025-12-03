@interface _CDTemporalInteractionAdvisor
- (_CDTemporalInteractionAdvisor)initWithStore:(id)store;
- (id)adviseInteractionsForDate:(id)date usingSettings:(id)settings;
- (id)rankContacts:(id)contacts usingSettings:(id)settings;
- (id)rankerForDate:(id)date settings:(id)settings;
@end

@implementation _CDTemporalInteractionAdvisor

- (_CDTemporalInteractionAdvisor)initWithStore:(id)store
{
  v19[5] = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = _CDTemporalInteractionAdvisor;
  v6 = [(_CDTemporalInteractionAdvisor *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    v18[0] = &unk_1F05EE9B8;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v19[0] = dictionary;
    v18[1] = &unk_1F05EEA00;
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v19[1] = dictionary2;
    v18[2] = &unk_1F05EE9D0;
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    v19[2] = dictionary3;
    v18[3] = &unk_1F05EE9E8;
    v11 = objc_opt_new();
    v19[3] = v11;
    v18[4] = &unk_1F05EEA18;
    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    v19[4] = dictionary4;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];
    consumerToModelMap = v7->_consumerToModelMap;
    v7->_consumerToModelMap = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)rankerForDate:(id)date settings:(id)settings
{
  settingsCopy = settings;
  dateCopy = date;
  v7 = objc_opt_new();
  [v7 setReferenceDate:dateCopy];

  contactPrefix = [settingsCopy contactPrefix];
  [v7 setContactPrefix:contactPrefix];

  [v7 setTimeHalfLife:172800.0];
  [v7 setTimeOfDayHalfLife:7200.0];
  [v7 setTimeOfWeekHalfLife:21600.0];
  [v7 setTimeWeight:2.0];
  [v7 setTimeOfDayWeight:1.0];
  [v7 setTimeOfWeekWeight:2.0];
  [v7 setOutgoingWeight:2.0];
  [v7 setKeywordWeight:100000.0];
  [v7 setContactNameKeywordMatchWeight:200000.0];
  interactionTitle = [settingsCopy interactionTitle];
  v10 = [_CDStringTokenizer extractNormalizedKeywords:interactionTitle];
  [v7 setReferenceKeywords:v10];

  constrainIdentifiers = [settingsCopy constrainIdentifiers];
  [v7 setAllowedIdentifiers:constrainIdentifiers];

  constrainPersonIds = [settingsCopy constrainPersonIds];
  [v7 setAllowedPersonIds:constrainPersonIds];

  constrainPersonIdType = [settingsCopy constrainPersonIdType];
  [v7 setAllowedPersonIdType:constrainPersonIdType];

  [v7 setLocationWeight:4.0];
  interactionLocationUUID = [settingsCopy interactionLocationUUID];

  [v7 setReferenceLocationUUID:interactionLocationUUID];
  [v7 setRankAggregationMethod:0];

  return v7;
}

- (id)adviseInteractionsForDate:(id)date usingSettings:(id)settings
{
  v49[2] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  settingsCopy = settings;
  context = objc_autoreleasePoolPush();
  v8 = [(_CDTemporalInteractionAdvisor *)self rankerForDate:dateCopy settings:settingsCopy];
  consumerToModelMap = [(_CDTemporalInteractionAdvisor *)self consumerToModelMap];
  v45 = v8;
  [_CDInteractionAdvisorUtils adjustForConsumerSettings:settingsCopy modelSettings:consumerToModelMap andRanker:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  contactPredicate = [settingsCopy contactPredicate];
  v12 = 0x1E696A000uLL;
  v13 = 0x1E695D000uLL;
  v44 = contactPredicate;
  if (contactPredicate)
  {
    v43 = [(_CDInteractionStore *)self->_store queryContactsUsingPredicate:contactPredicate sortDescriptors:0 limit:500 error:0];
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

  if ([settingsCopy useFuture])
  {
    v20 = 4;
  }

  else
  {
    v20 = 0;
  }

  v21 = [_CDInteractionAdvisorUtils createTimePredicateForReferenceDate:dateCopy recentLookBackDays:168 windowHours:24 lookBackWeeks:4 lookAheadWeeks:v20];
  interactionPredicate = [settingsCopy interactionPredicate];
  v23 = *(v12 + 2856);
  v41 = interactionPredicate;
  v42 = v21;
  v48[0] = v21;
  v48[1] = interactionPredicate;
  v48[2] = v10;
  v24 = [*(v13 + 3784) arrayWithObjects:v48 count:3];
  v25 = [v23 andPredicateWithSubpredicates:v24];

  v26 = +[_CDLogging interactionChannel];
  v40 = dateCopy;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [_CDTemporalInteractionAdvisor adviseInteractionsForDate:usingSettings:];
  }

  v27 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  store = self->_store;
  v47 = v27;
  v29 = [*(v13 + 3784) arrayWithObjects:&v47 count:1];
  v30 = [(_CDInteractionStore *)store queryInteractionsUsingPredicate:v25 sortDescriptors:v29 limit:500 error:0];

  ignoreContactIdentifiers = [settingsCopy ignoreContactIdentifiers];
  allObjects = [ignoreContactIdentifiers allObjects];
  v33 = [_CDInteractionAdvisorUtils contactsForIdentifiers:allObjects];

  resultLimit = [settingsCopy resultLimit];
  aggregateByIdentifier = [settingsCopy aggregateByIdentifier];
  LOBYTE(v39) = [settingsCopy requireOutgoingInteraction];
  v36 = [_CDInteractionAdvisorUtils adviceBasedOnInteractions:v30 forContacts:v43 andRanker:v45 ignoringContacts:v33 withLimit:resultLimit aggregateByIdentifier:aggregateByIdentifier requireOneOutgoingInteraction:v39];

  objc_autoreleasePoolPop(context);
  v37 = *MEMORY[0x1E69E9840];

  return v36;
}

- (id)rankContacts:(id)contacts usingSettings:(id)settings
{
  v32[2] = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  contactsCopy = contacts;
  interactionDate = [settingsCopy interactionDate];
  if (!interactionDate)
  {
    interactionDate = [MEMORY[0x1E695DF00] date];
  }

  v29 = [(_CDTemporalInteractionAdvisor *)self rankerForDate:interactionDate settings:settingsCopy];
  consumerToModelMap = [(_CDTemporalInteractionAdvisor *)self consumerToModelMap];
  [_CDInteractionAdvisorUtils adjustForConsumerSettings:settingsCopy modelSettings:consumerToModelMap andRanker:v29];

  v28 = [contactsCopy valueForKey:@"identifier"];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"startDate <= %@", interactionDate];
  interactionPredicate = [settingsCopy interactionPredicate];

  v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"sender.identifier IN %@", v28];
  v26 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY recipients.identifier IN %@", v28];
  v12 = contactsCopy;
  v13 = MEMORY[0x1E696AB28];
  v32[0] = v27;
  v32[1] = v26;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v15 = [v13 orPredicateWithSubpredicates:v14];

  v16 = MEMORY[0x1E696AB28];
  v31[0] = v10;
  v31[1] = interactionPredicate;
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