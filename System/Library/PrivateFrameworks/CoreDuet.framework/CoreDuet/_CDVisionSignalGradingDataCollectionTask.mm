@interface _CDVisionSignalGradingDataCollectionTask
- (_CDVisionSignalGradingDataCollectionTask)initWithFile:(id)file activity:(id)activity;
- (id)eventFromDict:(id)dict;
- (id)eventFromFile:(id)file;
- (void)execute;
@end

@implementation _CDVisionSignalGradingDataCollectionTask

- (_CDVisionSignalGradingDataCollectionTask)initWithFile:(id)file activity:(id)activity
{
  fileCopy = file;
  activityCopy = activity;
  v14.receiver = self;
  v14.super_class = _CDVisionSignalGradingDataCollectionTask;
  v9 = [(_CDVisionSignalGradingDataCollectionTask *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_file, file);
    v11 = [(_CDVisionSignalGradingDataCollectionTask *)v10 eventFromFile:fileCopy];
    event = v10->_event;
    v10->_event = v11;

    objc_storeStrong(&v10->_activity, activity);
  }

  return v10;
}

- (void)execute
{
  sharedInstance = [getPETEventTracker2Class() sharedInstance];
  if (self->_event)
  {
    v6 = sharedInstance;
    [sharedInstance logMessage:?];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    file = [(_CDVisionSignalGradingDataCollectionTask *)self file];
    [defaultManager removeItemAtPath:file error:0];

    sharedInstance = v6;
  }
}

- (id)eventFromFile:(id)file
{
  fileCopy = file;
  v13 = 0;
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:fileCopy options:2 error:&v13];
  v6 = v13;
  if (v6)
  {
    v7 = +[_CDLogging dataCollectionChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(_CDVisionSignalGradingDataCollectionTask *)fileCopy eventFromFile:v6, v7];
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
        [(_CDVisionSignalGradingDataCollectionTask *)v7 eventFromFile:v10];
      }

      v8 = 0;
    }

    else
    {
      v8 = [(_CDVisionSignalGradingDataCollectionTask *)self eventFromDict:v9];
    }
  }

  return v8;
}

- (id)eventFromDict:(id)dict
{
  v61 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v40 = objc_opt_new();
  v4 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v44 = dictCopy;
  obj = [dictCopy objectForKeyedSubscript:@"visionGrades"];
  v5 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  v41 = v4;
  if (v5)
  {
    v6 = v5;
    v7 = @"identifier";
    v8 = 0x1E7366000uLL;
    v9 = *v55;
    do
    {
      v10 = 0;
      v42 = v6;
      do
      {
        if (*v55 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v54 + 1) + 8 * v10);
        context = objc_autoreleasePoolPush();
        v12 = *(v8 + 176);
        v13 = objc_opt_new();
        v14 = [v11 objectForKeyedSubscript:v7];
        [v13 setIdentifier:v14];

        v15 = [v11 objectForKeyedSubscript:@"imageGrade"];
        [v13 setImageGrade:{objc_msgSend(v15, "BOOLValue")}];

        v16 = [v11 objectForKeyedSubscript:@"numPeople"];
        [v13 setNumPeople:{objc_msgSend(v16, "intValue")}];

        v17 = [v11 objectForKeyedSubscript:@"cameraRollGrade"];
        [v13 setCameraRollGrade:{objc_msgSend(v17, "BOOLValue")}];

        v18 = [v11 objectForKeyedSubscript:@"extractedGrade"];
        [v13 setExtractedGrade:{objc_msgSend(v18, "BOOLValue")}];

        if ([v13 extractedGrade])
        {
          v19 = v9;
          v20 = v8;
          v21 = v7;
          v22 = objc_opt_new();
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v23 = [v11 objectForKeyedSubscript:@"extractedIds"];
          v24 = [v23 countByEnumeratingWithState:&v50 objects:v59 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v51;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v51 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                [v22 addObject:{*(*(&v50 + 1) + 8 * i), v40}];
              }

              v25 = [v23 countByEnumeratingWithState:&v50 objects:v59 count:16];
            }

            while (v25);
          }

          [v13 setExtractedSignals:v22];
          v7 = v21;
          v8 = v20;
          v9 = v19;
          v4 = v41;
          v6 = v42;
        }

        [v4 addObject:{v13, v40}];

        objc_autoreleasePoolPop(context);
        ++v10;
      }

      while (v10 != v6);
      v6 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v6);
  }

  [v40 setVisionGrades:v4];
  v28 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v29 = [v44 objectForKeyedSubscript:@"popularityDict"];
  v30 = [v29 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v47;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v47 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v46 + 1) + 8 * j);
        v35 = objc_opt_new();
        [v35 setIdentifier:v34];
        v36 = [v44 objectForKeyedSubscript:@"popularityDict"];
        v37 = [v36 objectForKeyedSubscript:v34];
        [v35 setCount:{objc_msgSend(v37, "intValue")}];

        [v28 addObject:v35];
      }

      v31 = [v29 countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v31);
  }

  [v40 setPopularityEntries:v28];
  v38 = *MEMORY[0x1E69E9840];

  return v40;
}

- (void)eventFromFile:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_191750000, log, OS_LOG_TYPE_ERROR, "Error reading vision signal grading data from file %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)eventFromFile:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Error unarchiving vision siginal grading data: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end