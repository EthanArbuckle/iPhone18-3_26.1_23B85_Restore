@interface _CDSocialInteractionAdvisor
- (_CDSocialInteractionAdvisor)initWithStore:(id)a3;
- (id)adviseInteractionsForDate:(id)a3 andSeedContacts:(id)a4 usingSettings:(id)a5;
- (id)inSeedPredicateForSeed:(id)a3;
- (id)keyForModelWithSettings:(id)a3;
- (id)rankContacts:(id)a3 withSeedContacts:(id)a4 usingSettings:(id)a5;
- (id)recentPredicateForDate:(id)a3 lambda:(float)a4 lookAheadWeeks:(int)a5;
- (void)tuneUsingSettings:(id)a3 heartBeatHandler:(id)a4;
@end

@implementation _CDSocialInteractionAdvisor

- (_CDSocialInteractionAdvisor)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _CDSocialInteractionAdvisor;
  v6 = [(_CDSocialInteractionAdvisor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

- (id)keyForModelWithSettings:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 interactionPredicate];
  v5 = [v3 stringWithFormat:@"%@", v4];

  return v5;
}

- (id)rankContacts:(id)a3 withSeedContacts:(id)a4 usingSettings:(id)a5
{
  v57[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v56 = 0;
  v55 = 0;
  v50 = [[_CDPSimpleModelParameterManager alloc] initWithSettings:v10];
  [(_CDPSimpleModelParameterManager *)v50 getLambda:&v56 + 4 w0:&v56 threshold:&v55];
  if ([v10 useFuture])
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v10 interactionDate];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [MEMORY[0x1E695DF00] date];
  }

  v15 = v14;

  LODWORD(v16) = HIDWORD(v56);
  v49 = v15;
  v17 = [(_CDSocialInteractionAdvisor *)self recentPredicateForDate:v15 lambda:v11 lookAheadWeeks:v16];
  v18 = [(_CDSocialInteractionAdvisor *)self inSeedPredicateForSeed:v9];
  v19 = MEMORY[0x1E696AB28];
  v48 = v17;
  v57[0] = v17;
  v20 = [v10 interactionPredicate];
  v57[1] = v20;
  v57[2] = v18;
  v47 = v18;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:3];
  v22 = [v19 andPredicateWithSubpredicates:v21];

  v23 = objc_alloc_init(_CDPSimpleModel);
  -[_CDPSimpleModel setRequireOutgoingInteraction:](v23, "setRequireOutgoingInteraction:", [v10 requireOutgoingInteraction]);
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
  v44 = [v9 valueForKey:@"identifier"];
  v29 = [_CDPSimpleModel _newIdsForPeople:v23 length:"_newIdsForPeople:length:"];
  v52 = v9;
  v30 = -[_CDPSimpleModel _newPredictionResultWithSeed:seedLength:realSeedLength:maxTrainingEmailID:](v23, "_newPredictionResultWithSeed:seedLength:realSeedLength:maxTrainingEmailID:", v29, 0, [v9 count], 0xFFFFFFFFLL);
  v43 = [v8 valueForKey:@"identifier"];
  v31 = [_CDPSimpleModel _newIdsForPeople:v23 length:"_newIdsForPeople:length:"];
  v32 = malloc_type_calloc(0, 0x10uLL, 0x1000040451B5BE8uLL);
  v42 = v31;
  v51 = v10;
  free(v30);
  free(v29);
  qsort_b(v32, 0, 0x10uLL, &__block_literal_global_72);
  v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v34 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v8, "count")}];
  if ([v8 count])
  {
    v35 = 0;
    do
    {
      v36 = [v8 objectAtIndexedSubscript:v35];
      v37 = [v36 identifier];
      v38 = [v34 containsObject:v37];

      if ((v38 & 1) == 0)
      {
        v39 = [v8 objectAtIndexedSubscript:v35];
        [v33 addObject:v39];
      }

      ++v35;
    }

    while ([v8 count] > v35);
  }

  free(v42);
  free(v32);

  v40 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)adviseInteractionsForDate:(id)a3 andSeedContacts:(id)a4 usingSettings:(id)a5
{
  v69[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[_CDPSimpleModelParameterManager alloc] initWithSettings:v10];
  v67 = 0;
  v65 = 0.0;
  v66 = 0;
  [(_CDPSimpleModelParameterManager *)v11 getLambda:&v67 w0:&v66 threshold:&v65];
  if ([v10 useFuture])
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  LODWORD(v12) = v67;
  v14 = [(_CDSocialInteractionAdvisor *)self recentPredicateForDate:v8 lambda:v13 lookAheadWeeks:v12];
  v60 = v9;
  v15 = [(_CDSocialInteractionAdvisor *)self inSeedPredicateForSeed:v9];
  v16 = [v10 interactionPredicate];
  v17 = [v10 callerBundleId];
  v57 = v11;
  v58 = v8;
  if ([v17 isEqualToString:@"com.apple.mobilemail"])
  {

LABEL_7:
    v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(direction == %@)", &unk_1F05EEEB0];
    v21 = MEMORY[0x1E696AB28];
    v22 = [v10 interactionPredicate];
    v69[0] = v22;
    v69[1] = v20;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
    v24 = [v21 andPredicateWithSubpredicates:v23];

    goto LABEL_9;
  }

  v18 = [v10 callerBundleId];
  v19 = [v18 isEqualToString:@"com.apple.mail"];

  if (v19)
  {
    goto LABEL_7;
  }

  v24 = v16;
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
  -[_CDPSimpleModel setRequireOutgoingInteraction:](v29, "setRequireOutgoingInteraction:", [v10 requireOutgoingInteraction]);
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
  v61 = [MEMORY[0x1E695DF70] array];
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

      v39 = [(_CDPSimpleModel *)v29 people];
      v40 = [v39 objectAtIndexedSubscript:*(p_var1 - 1)];

      v41 = [(_CDPInteractionStoreDataHarvester *)v30 contactForIdentifier:v40];
      v42 = [v10 contactPrefix];
      v43 = [v42 length];

      if (!v43 || ([v10 contactPrefix], v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v41, "mayContainPrefix:", v44), v44, v45))
      {
        v46 = objc_alloc_init(_CDAdvisedInteraction);
        [(_CDAdvisedInteraction *)v46 setScore:v38];
        [(_CDAdvisedInteraction *)v46 setContact:v41];
        [v61 addObject:v46];
        ++v36;
        v47 = [v10 resultLimit];

        if (v36 >= v47)
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

  return v61;
}

- (void)tuneUsingSettings:(id)a3 heartBeatHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 interactionPredicate];
  v9 = objc_alloc_init(_CDPSimpleModel);
  -[_CDPSimpleModel setRequireOutgoingInteraction:](v9, "setRequireOutgoingInteraction:", [v6 requireOutgoingInteraction]);
  v10 = objc_alloc_init(_CDPInteractionStoreDataHarvester);
  [(_CDPInteractionStoreDataHarvester *)v10 setStore:self->_store];
  [(_CDPInteractionStoreDataHarvester *)v10 setPredicate:v8];
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
  v14 = [(_CDPSimpleModel *)v9 _testingIndices];
  [(_CDPModelTuning *)v13 setTestIndices:v14];

  v15 = +[_CDPModelTuning f2Score];
  [(_CDPModelTuning *)v13 setScorer:v15];

  v16 = [(_CDPSimpleModel *)v9 _testingIndices];
  [(_CDPModelTuning *)v13 setTestIndices:v16];

  [(_CDPModelTuning *)v13 setModel:v9];
  Current = CFAbsoluteTimeGetCurrent();
  v18 = [[_CDPSimpleModelParameterManager alloc] initWithSettings:v6];
  objc_initWeak(&location, v13);
  [(_CDPSimpleModelParameterManager *)v18 modelTunerWillResume:v13];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __66___CDSocialInteractionAdvisor_tuneUsingSettings_heartBeatHandler___block_invoke_41;
  v22[3] = &unk_1E736A690;
  v19 = v7;
  v23 = v19;
  v20 = v18;
  v24 = v20;
  objc_copyWeak(v25, &location);
  v25[1] = *&Current;
  v25[2] = 0x402E000000000000;
  [(_CDPModelTuning *)v13 setHeartBeat:v22];
  v21 = [(_CDPSimpleModelParameterManager *)v20 lastTuningState];
  [(_CDPModelTuning *)v13 resumeTuningWithState:v21];

  [(_CDPSimpleModelParameterManager *)v20 modelTunerWillStop:v13];
  objc_destroyWeak(v25);

  objc_destroyWeak(&location);
}

- (id)recentPredicateForDate:(id)a3 lambda:(float)a4 lookAheadWeeks:(int)a5
{
  v6 = a4 * *"" * 86400.0;
  v7 = a3;
  v8 = [v7 dateByAddingTimeInterval:v6];
  v9 = [v7 dateByAddingTimeInterval:a5 * 604800.0];

  v10 = MEMORY[0x1E696AE18];
  [v8 timeIntervalSinceReferenceDate];
  v12 = v11;
  [v9 timeIntervalSinceReferenceDate];
  v14 = [v10 predicateWithFormat:@"startDate >= CAST(%f, NSDate) AND startDate <= CAST(%f, NSDate)", v12, v13];

  return v14;
}

- (id)inSeedPredicateForSeed:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AE18];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 setWithArray:v5];
  v7 = [_CDInteractionAdvisorSettings extractContactIdentifiers:v6];
  v8 = [v3 predicateWithFormat:@"(sender.identifier IN %@)", v7];

  v9 = MEMORY[0x1E696AE18];
  v10 = [MEMORY[0x1E695DFD8] setWithArray:v5];

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