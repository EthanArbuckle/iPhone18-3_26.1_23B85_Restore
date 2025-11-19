@interface CAMAnalyticsSmudgeDisplayEvent
- (CAMAnalyticsSmudgeDisplayEvent)initWithSmudgeAnalyticsDictionary:(id)a3;
@end

@implementation CAMAnalyticsSmudgeDisplayEvent

- (CAMAnalyticsSmudgeDisplayEvent)initWithSmudgeAnalyticsDictionary:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CAMAnalyticsSmudgeDisplayEvent;
  v5 = [(CAMAnalyticsEvent *)&v20 init];
  if (v5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v6 objectForKeyedSubscript:{v11, v16}];
          v13 = [(CAMAnalyticsEvent *)v5 _eventMap];
          [v13 setObject:v12 forKeyedSubscript:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v8);
    }

    v14 = v5;
  }

  return v5;
}

@end