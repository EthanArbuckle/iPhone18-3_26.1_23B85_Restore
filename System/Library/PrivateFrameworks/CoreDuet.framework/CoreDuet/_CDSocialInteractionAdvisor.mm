@interface _CDSocialInteractionAdvisor
- (_CDSocialInteractionAdvisor)initWithStore:(id)store;
- (id)adviseInteractionsForDate:(id)date andSeedContacts:(id)contacts usingSettings:(id)settings;
- (id)inSeedPredicateForSeed:(id)seed;
- (id)keyForModelWithSettings:(id)settings;
- (id)rankContacts:(id)contacts withSeedContacts:(id)seedContacts usingSettings:(id)settings;
- (id)recentPredicateForDate:(id)date lambda:(float)lambda lookAheadWeeks:(int)weeks;
- (void)tuneUsingSettings:(id)settings heartBeatHandler:(id)handler;
@end

@implementation _CDSocialInteractionAdvisor

- (_CDSocialInteractionAdvisor)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = _CDSocialInteractionAdvisor;
  v6 = [(_CDSocialInteractionAdvisor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (id)keyForModelWithSettings:(id)settings
{
  v3 = MEMORY[0x1E696AEC0];
  interactionPredicate = [settings interactionPredicate];
  v5 = [v3 stringWithFormat:@"%@", interactionPredicate];

  return v5;
}

- (id)rankContacts:(id)contacts withSeedContacts:(id)seedContacts usingSettings:(id)settings
{
  v57[3] = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  seedContactsCopy = seedContacts;
  settingsCopy = settings;
  v56 = 0;
  v55 = 0;
  v50 = [[_CDPSimpleModelParameterManager alloc] initWithSettings:settingsCopy];
  [(_CDPSimpleModelParameterManager *)v50 getLambda:&v56 + 4 w0:&v56 threshold:&v55];
  if ([settingsCopy useFuture])
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  interactionDate = [settingsCopy interactionDate];
  v13 = interactionDate;
  if (interactionDate)
  {
    date = interactionDate;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v15 = date;

  LODWORD(v16) = HIDWORD(v56);
  v49 = v15;
  v17 = [(_CDSocialInteractionAdvisor *)self recentPredicateForDate:v15 lambda:v11 lookAheadWeeks:v16];
  v18 = [(_CDSocialInteractionAdvisor *)self inSeedPredicateForSeed:seedContactsCopy];
  v19 = MEMORY[0x1E696AB28];
  v48 = v17;
  v57[0] = v17;
  interactionPredicate = [settingsCopy interactionPredicate];
  v57[1] = interactionPredicate;
  v57[2] = v18;
  v47 = v18;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:3];
  v22 = [v19 andPredicateWithSubpredicates:v21];

  v23 = objc_alloc_init(_CDPSimpleModel);
  -[_CDPSimpleModel setRequireOutgoingInteraction:](v23, "setRequireOutgoingInteraction:", [settingsCopy requireOutgoingInteraction]);
  v24 = objc_alloc_init(_CDPInteractionStoreDataHarvester);
  [(_CDPInteractionStoreDataHarvester *)v24 setStore:self->_store];
  v46 = v22;
  [(_CDPInteractionStoreDataHarvester *)v24 setPredicate:v22];
  [(_CDPSimpleModel *)v23 setHarvester:v24];
  v25 = dispatch_semaphore_create(0);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __75___CDSocialInteractionAdvisor_rankContacts_withSeedContacts_usingSettings___block_invoke;
  v53[3] = &unk_1E73675F8;
  v26 = v25;
  v54 = v26;
  [(_CDPSimpleModel *)v23 loadModel:v53];
  v45 = v26;
  dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
  LODWORD(v27) = HIDWORD(v56);
  LODWORD(v28) = v56;
  [(_CDPSimpleModel *)v23 setLambda:v27 w0:v28];
  v44 = [seedContactsCopy valueForKey:@"identifier"];
  v29 = [_CDPSimpleModel _newIdsForPeople:v23 length:"_newIdsForPeople:length:"];
  v52 = seedContactsCopy;
  v30 = -[_CDPSimpleModel _newPredictionResultWithSeed:seedLength:realSeedLength:maxTrainingEmailID:](v23, "_newPredictionResultWithSeed:seedLength:realSeedLength:maxTrainingEmailID:", v29, 0, [seedContactsCopy count], 0xFFFFFFFFLL);
  v43 = [contactsCopy valueForKey:@"identifier"];
  v31 = [_CDPSimpleModel _newIdsForPeople:v23 length:"_newIdsForPeople:length:"];
  v32 = malloc_type_calloc(0, 0x10uLL, 0x1000040451B5BE8uLL);
  v42 = v31;
  v51 = settingsCopy;
  free(v30);
  free(v29);
  qsort_b(v32, 0, 0x10uLL, &__block_literal_global_72);
  v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(contactsCopy, "count")}];
  v34 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(contactsCopy, "count")}];
  if ([contactsCopy count])
  {
    v35 = 0;
    do
    {
      v36 = [contactsCopy objectAtIndexedSubscript:v35];
      identifier = [v36 identifier];
      v38 = [v34 containsObject:identifier];

      if ((v38 & 1) == 0)
      {
        v39 = [contactsCopy objectAtIndexedSubscript:v35];
        [v33 addObject:v39];
      }

      ++v35;
    }

    while ([contactsCopy count] > v35);
  }

  free(v42);
  free(v32);

  v40 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)adviseInteractionsForDate:(id)date andSeedContacts:(id)contacts usingSettings:(id)settings
{
  v69[2] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  contactsCopy = contacts;
  settingsCopy = settings;
  v11 = [[_CDPSimpleModelParameterManager alloc] initWithSettings:settingsCopy];
  v67 = 0;
  v65 = 0.0;
  v66 = 0;
  [(_CDPSimpleModelParameterManager *)v11 getLambda:&v67 w0:&v66 threshold:&v65];
  if ([settingsCopy useFuture])
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  LODWORD(v12) = v67;
  v14 = [(_CDSocialInteractionAdvisor *)self recentPredicateForDate:dateCopy lambda:v13 lookAheadWeeks:v12];
  v60 = contactsCopy;
  v15 = [(_CDSocialInteractionAdvisor *)self inSeedPredicateForSeed:contactsCopy];
  interactionPredicate = [settingsCopy interactionPredicate];
  callerBundleId = [settingsCopy callerBundleId];
  v57 = v11;
  v58 = dateCopy;
  if ([callerBundleId isEqualToString:@"com.apple.mobilemail"])
  {

LABEL_7:
    v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(direction == %@)", &unk_1F05EEEB0];
    v21 = MEMORY[0x1E696AB28];
    interactionPredicate2 = [settingsCopy interactionPredicate];
    v69[0] = interactionPredicate2;
    v69[1] = v20;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
    v24 = [v21 andPredicateWithSubpredicates:v23];

    goto LABEL_9;
  }

  callerBundleId2 = [settingsCopy callerBundleId];
  v19 = [callerBundleId2 isEqualToString:@"com.apple.mail"];

  if (v19)
  {
    goto LABEL_7;
  }

  v24 = interactionPredicate;
LABEL_9:
  v25 = MEMORY[0x1E696AB28];
  v55 = v15;
  v56 = v14;
  v68[0] = v14;
  v68[1] = v24;
  v54 = v24;
  v68[2] = v15;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:3];
  v27 = [v25 andPredicateWithSubpredicates:v26];

  v28 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [_CDSocialInteractionAdvisor adviseInteractionsForDate:andSeedContacts:usingSettings:];
  }

  v29 = objc_alloc_init(_CDPSimpleModel);
  -[_CDPSimpleModel setRequireOutgoingInteraction:](v29, "setRequireOutgoingInteraction:", [settingsCopy requireOutgoingInteraction]);
  v30 = objc_alloc_init(_CDPInteractionStoreDataHarvester);
  [(_CDPInteractionStoreDataHarvester *)v30 setStore:self->_store];
  v53 = v27;
  [(_CDPInteractionStoreDataHarvester *)v30 setPredicate:v27];
  [(_CDPSimpleModel *)v29 setHarvester:v30];
  v31 = dispatch_semaphore_create(0);
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __87___CDSocialInteractionAdvisor_adviseInteractionsForDate_andSeedContacts_usingSettings___block_invoke;
  v63[3] = &unk_1E73675F8;
  v32 = v31;
  v64 = v32;
  [(_CDPSimpleModel *)v29 loadModel:v63];
  v52 = v32;
  dispatch_semaphore_wait(v32, 0xFFFFFFFFFFFFFFFFLL);
  LODWORD(v33) = v67;
  LODWORD(v34) = v66;
  [(_CDPSimpleModel *)v29 setLambda:v33 w0:v34];
  v62 = 0;
  v51 = [v60 valueForKey:@"identifier"];
  v50 = [(_CDPSimpleModel *)v29 _newIdsForPeople:v51 length:&v62];
  v59 = -[_CDPSimpleModel _newPredictionResultWithSeed:seedLength:realSeedLength:maxTrainingEmailID:](v29, "_newPredictionResultWithSeed:seedLength:realSeedLength:maxTrainingEmailID:", v50, v62, [v51 count], 0xFFFFFFFFLL);
  qsort_b(v59, [(_CDPSimpleModel *)v29 nPeople], 0x10uLL, &__block_literal_global_38_2);
  array = [MEMORY[0x1E695DF70] array];
  if ([(_CDPSimpleModel *)v29 nPeople])
  {
    v35 = 0;
    v36 = 0;
    p_var1 = &v59->var1;
    do
    {
      v38 = *p_var1;
      if (*p_var1 < v65)
      {
        break;
      }

      people = [(_CDPSimpleModel *)v29 people];
      v40 = [people objectAtIndexedSubscript:*(p_var1 - 1)];

      v41 = [(_CDPInteractionStoreDataHarvester *)v30 contactForIdentifier:v40];
      contactPrefix = [settingsCopy contactPrefix];
      v43 = [contactPrefix length];

      if (!v43 || ([settingsCopy contactPrefix], v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v41, "mayContainPrefix:", v44), v44, v45))
      {
        v46 = objc_alloc_init(_CDAdvisedInteraction);
        [(_CDAdvisedInteraction *)v46 setScore:v38];
        [(_CDAdvisedInteraction *)v46 setContact:v41];
        [array addObject:v46];
        ++v36;
        resultLimit = [settingsCopy resultLimit];

        if (v36 >= resultLimit)
        {

          break;
        }
      }

      ++v35;
      p_var1 += 4;
    }

    while ([(_CDPSimpleModel *)v29 nPeople]> v35);
  }

  free(v59);
  free(v50);

  v48 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)tuneUsingSettings:(id)settings heartBeatHandler:(id)handler
{
  settingsCopy = settings;
  handlerCopy = handler;
  interactionPredicate = [settingsCopy interactionPredicate];
  v9 = objc_alloc_init(_CDPSimpleModel);
  -[_CDPSimpleModel setRequireOutgoingInteraction:](v9, "setRequireOutgoingInteraction:", [settingsCopy requireOutgoingInteraction]);
  v10 = objc_alloc_init(_CDPInteractionStoreDataHarvester);
  [(_CDPInteractionStoreDataHarvester *)v10 setStore:self->_store];
  [(_CDPInteractionStoreDataHarvester *)v10 setPredicate:interactionPredicate];
  [(_CDPSimpleModel *)v9 setHarvester:v10];
  v11 = dispatch_semaphore_create(0);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __66___CDSocialInteractionAdvisor_tuneUsingSettings_heartBeatHandler___block_invoke;
  v27[3] = &unk_1E73675F8;
  v12 = v11;
  v28 = v12;
  [(_CDPSimpleModel *)v9 loadModel:v27];
  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v13 = objc_alloc_init(_CDPModelTuning);
  _testingIndices = [(_CDPSimpleModel *)v9 _testingIndices];
  [(_CDPModelTuning *)v13 setTestIndices:_testingIndices];

  v15 = +[_CDPModelTuning f2Score];
  [(_CDPModelTuning *)v13 setScorer:v15];

  _testingIndices2 = [(_CDPSimpleModel *)v9 _testingIndices];
  [(_CDPModelTuning *)v13 setTestIndices:_testingIndices2];

  [(_CDPModelTuning *)v13 setModel:v9];
  Current = CFAbsoluteTimeGetCurrent();
  v18 = [[_CDPSimpleModelParameterManager alloc] initWithSettings:settingsCopy];
  objc_initWeak(&location, v13);
  [(_CDPSimpleModelParameterManager *)v18 modelTunerWillResume:v13];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __66___CDSocialInteractionAdvisor_tuneUsingSettings_heartBeatHandler___block_invoke_41;
  v22[3] = &unk_1E736A690;
  v19 = handlerCopy;
  v23 = v19;
  v20 = v18;
  v24 = v20;
  objc_copyWeak(v25, &location);
  v25[1] = *&Current;
  v25[2] = 0x402E000000000000;
  [(_CDPModelTuning *)v13 setHeartBeat:v22];
  lastTuningState = [(_CDPSimpleModelParameterManager *)v20 lastTuningState];
  [(_CDPModelTuning *)v13 resumeTuningWithState:lastTuningState];

  [(_CDPSimpleModelParameterManager *)v20 modelTunerWillStop:v13];
  objc_destroyWeak(v25);

  objc_destroyWeak(&location);
}

- (id)recentPredicateForDate:(id)date lambda:(float)lambda lookAheadWeeks:(int)weeks
{
  v6 = lambda * *"" * 86400.0;
  dateCopy = date;
  v8 = [dateCopy dateByAddingTimeInterval:v6];
  v9 = [dateCopy dateByAddingTimeInterval:weeks * 604800.0];

  v10 = MEMORY[0x1E696AE18];
  [v8 timeIntervalSinceReferenceDate];
  v12 = v11;
  [v9 timeIntervalSinceReferenceDate];
  v14 = [v10 predicateWithFormat:@"startDate >= CAST(%f, NSDate) AND startDate <= CAST(%f, NSDate)", v12, v13];

  return v14;
}

- (id)inSeedPredicateForSeed:(id)seed
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AE18];
  v4 = MEMORY[0x1E695DFD8];
  seedCopy = seed;
  v6 = [v4 setWithArray:seedCopy];
  v7 = [_CDInteractionAdvisorSettings extractContactIdentifiers:v6];
  v8 = [v3 predicateWithFormat:@"(sender.identifier IN %@)", v7];

  v9 = MEMORY[0x1E696AE18];
  v10 = [MEMORY[0x1E695DFD8] setWithArray:seedCopy];

  v11 = [_CDInteractionAdvisorSettings extractContactIdentifiers:v10];
  v12 = [v9 predicateWithFormat:@"(ANY recipients.identifier IN %@)", v11];

  v13 = MEMORY[0x1E696AB28];
  v18[0] = v8;
  v18[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v15 = [v13 orPredicateWithSubpredicates:v14];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)adviseInteractionsForDate:andSeedContacts:usingSettings:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_191750000, v0, OS_LOG_TYPE_DEBUG, "Final interaction predicate %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end