@interface _CNACDPeopleSuggesterFacade
- (id)suggestPeopleWithContext:(id)a3 settings:(id)a4 error:(id *)a5;
@end

@implementation _CNACDPeopleSuggesterFacade

- (id)suggestPeopleWithContext:(id)a3 settings:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CFE0E0] peopleSuggester];
  [v9 setContext:v7];
  [v9 setSettings:v8];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  v28 = 0;
  v10 = [MEMORY[0x277CFBE10] currentEnvironment];
  v11 = [v10 schedulerProvider];
  v12 = [v11 immediateScheduler];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71___CNACDPeopleSuggesterFacade_suggestPeopleWithContext_settings_error___block_invoke;
  v19[3] = &unk_2781C3DE0;
  v21 = &v23;
  v13 = v9;
  v20 = v13;
  v22 = &v29;
  [v12 performBlock:v19 qualityOfService:4];

  v14 = v30[5];
  v15 = v24[5];
  v16 = v15;
  if (a5 && !v15)
  {
    v17 = v14;
    *a5 = v14;
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v16;
}

@end