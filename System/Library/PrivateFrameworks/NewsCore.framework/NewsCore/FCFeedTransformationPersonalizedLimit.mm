@interface FCFeedTransformationPersonalizedLimit
+ (id)transformationWithPersonalizer:(id)a3 dateRange:(id)a4;
+ (id)transformationWithPersonalizer:(id)a3 timeInterval:(double)a4;
- (id)transformFeedItems:(id)a3;
@end

@implementation FCFeedTransformationPersonalizedLimit

+ (id)transformationWithPersonalizer:(id)a3 dateRange:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  if (([v5 isFinite] & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"personalization limit requires a finite date range"];
    v13 = 136315906;
    v14 = "+[FCFeedTransformationPersonalizedLimit transformationWithPersonalizer:dateRange:]";
    v15 = 2080;
    v16 = "FCFeedTransformationPersonalize.m";
    v17 = 1024;
    v18 = 140;
    v19 = 2114;
    v20 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v13, 0x26u);
  }

  v7 = objc_opt_new();
  [v7 setFeedPersonalizer:v6];

  [v5 absoluteTimeInterval];
  v9 = v8;

  [v7 setTimeInterval:v9];
  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)transformationWithPersonalizer:(id)a3 timeInterval:(double)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  [v6 setFeedPersonalizer:v5];

  [v6 setTimeInterval:a4];

  return v6;
}

- (id)transformFeedItems:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = NewsCoreUserDefaults();
  if ([v5 BOOLForKey:@"personalization_disabled"])
  {

LABEL_12:
    v16 = v4;
    goto LABEL_13;
  }

  v6 = [(FCFeedTransformationPersonalizedLimit *)self feedPersonalizer];

  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = [MEMORY[0x1E695DFA8] set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v19 + 1) + 8 * i) sourceChannelID];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v14 = [(FCFeedTransformationPersonalizedLimit *)self feedPersonalizer];
  [(FCFeedTransformationPersonalizedLimit *)self timeInterval];
  v16 = [v14 limitItemsByFlowRate:v8 timeInterval:objc_msgSend(v7 publisherCount:{"count"), v15}];

LABEL_13:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

@end