@interface FCFeedTransformationPersonalizedLimit
+ (id)transformationWithPersonalizer:(id)personalizer dateRange:(id)range;
+ (id)transformationWithPersonalizer:(id)personalizer timeInterval:(double)interval;
- (id)transformFeedItems:(id)items;
@end

@implementation FCFeedTransformationPersonalizedLimit

+ (id)transformationWithPersonalizer:(id)personalizer dateRange:(id)range
{
  v21 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  personalizerCopy = personalizer;
  if (([rangeCopy isFinite] & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
  [v7 setFeedPersonalizer:personalizerCopy];

  [rangeCopy absoluteTimeInterval];
  v9 = v8;

  [v7 setTimeInterval:v9];
  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)transformationWithPersonalizer:(id)personalizer timeInterval:(double)interval
{
  personalizerCopy = personalizer;
  v6 = objc_opt_new();
  [v6 setFeedPersonalizer:personalizerCopy];

  [v6 setTimeInterval:interval];

  return v6;
}

- (id)transformFeedItems:(id)items
{
  v24 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = NewsCoreUserDefaults();
  if ([v5 BOOLForKey:@"personalization_disabled"])
  {

LABEL_12:
    v16 = itemsCopy;
    goto LABEL_13;
  }

  feedPersonalizer = [(FCFeedTransformationPersonalizedLimit *)self feedPersonalizer];

  if (!feedPersonalizer)
  {
    goto LABEL_12;
  }

  v7 = [MEMORY[0x1E695DFA8] set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = itemsCopy;
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

        sourceChannelID = [*(*(&v19 + 1) + 8 * i) sourceChannelID];
        [v7 addObject:sourceChannelID];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  feedPersonalizer2 = [(FCFeedTransformationPersonalizedLimit *)self feedPersonalizer];
  [(FCFeedTransformationPersonalizedLimit *)self timeInterval];
  v16 = [feedPersonalizer2 limitItemsByFlowRate:v8 timeInterval:objc_msgSend(v7 publisherCount:{"count"), v15}];

LABEL_13:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

@end