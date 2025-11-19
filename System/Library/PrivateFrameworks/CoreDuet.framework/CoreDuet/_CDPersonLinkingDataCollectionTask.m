@interface _CDPersonLinkingDataCollectionTask
- (_CDPersonLinkingDataCollectionTask)initWithFile:(id)a3 activity:(id)a4;
- (id)eventFromDict:(id)a3;
- (id)eventFromFile:(id)a3;
- (void)execute;
@end

@implementation _CDPersonLinkingDataCollectionTask

- (_CDPersonLinkingDataCollectionTask)initWithFile:(id)a3 activity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _CDPersonLinkingDataCollectionTask;
  v9 = [(_CDPersonLinkingDataCollectionTask *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_file, a3);
    v11 = [(_CDPersonLinkingDataCollectionTask *)v10 eventFromFile:v7];
    event = v10->_event;
    v10->_event = v11;

    objc_storeStrong(&v10->_activity, a4);
  }

  return v10;
}

- (id)eventFromDict:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 objectForKeyedSubscript:@"userID"];
  v25 = v4;
  [v4 setUserID:v5];

  v28 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = v3;
  obj = [v3 objectForKeyedSubscript:@"pairs"];
  v29 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v29)
  {
    v27 = *v31;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v31 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        v8 = objc_opt_new();
        v9 = objc_opt_new();
        v10 = objc_opt_new();
        v11 = [v7 objectForKeyedSubscript:@"sourcePerson"];
        v12 = [v11 objectForKeyedSubscript:@"name"];
        [v9 setName:v12];

        v13 = [v7 objectForKeyedSubscript:@"sourcePerson"];
        v14 = [v13 objectForKeyedSubscript:@"emails"];
        [v9 setEmails:v14];

        v15 = [v7 objectForKeyedSubscript:@"targetPerson"];
        v16 = [v15 objectForKeyedSubscript:@"name"];
        [v10 setName:v16];

        v17 = [v7 objectForKeyedSubscript:@"targetPerson"];
        v18 = [v17 objectForKeyedSubscript:@"emails"];
        [v10 setEmails:v18];

        [v8 setSourcePerson:v9];
        [v8 setTargetPerson:v10];
        v19 = [v7 objectForKeyedSubscript:@"grade"];
        [v8 setGrade:{objc_msgSend(v19, "BOOLValue")}];

        v20 = [v7 objectForKeyedSubscript:@"confidence"];
        [v20 floatValue];
        [v8 setConfidence:?];

        v21 = [v7 objectForKeyedSubscript:@"reason"];
        [v8 setReason:v21];

        [v28 addObject:v8];
      }

      v29 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v29);
  }

  [v25 setPairs:v28];
  v22 = *MEMORY[0x1E69E9840];

  return v25;
}

- (void)execute
{
  v3 = [getPETEventTracker2Class() sharedInstance];
  if (self->_event)
  {
    v6 = v3;
    [v3 logMessage:?];
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [(_CDPersonLinkingDataCollectionTask *)self file];
    [v4 removeItemAtPath:v5 error:0];

    v3 = v6;
  }
}

- (id)eventFromFile:(id)a3
{
  v4 = a3;
  v13 = 0;
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v4 options:2 error:&v13];
  v6 = v13;
  if (v6)
  {
    v7 = +[_CDLogging dataCollectionChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(_CDPersonLinkingDataCollectionTask *)v4 eventFromFile:v6, v7];
    }

    v8 = 0;
  }

  else
  {
    v12 = 0;
    v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:&v12];
    v7 = v12;
    if (v7)
    {
      v10 = +[_CDLogging dataCollectionChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(_CDPersonLinkingDataCollectionTask *)v7 eventFromFile:v10];
      }

      v8 = 0;
    }

    else
    {
      v8 = [(_CDPersonLinkingDataCollectionTask *)self eventFromDict:v9];
    }
  }

  return v8;
}

- (void)eventFromFile:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_191750000, log, OS_LOG_TYPE_ERROR, "Error reading person linking data from file %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)eventFromFile:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Error unarchiving person linking data: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end