@interface FCStatelessPersonalizationPublisherFavorability
- (FCStatelessPersonalizationPublisherFavorability)initWithArray:(id)a3;
@end

@implementation FCStatelessPersonalizationPublisherFavorability

- (FCStatelessPersonalizationPublisherFavorability)initWithArray:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FCStatelessPersonalizationPublisherFavorability;
  v5 = [(FCStatelessPersonalizationPublisherFavorability *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DF20];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__FCStatelessPersonalizationPublisherFavorability_initWithArray___block_invoke;
    v10[3] = &unk_1E7C36EC8;
    v11 = v4;
    v7 = [v6 fc_dictionary:v10];
    favorabilityByPublisherID = v5->_favorabilityByPublisherID;
    v5->_favorabilityByPublisherID = v7;
  }

  return v5;
}

void __65__FCStatelessPersonalizationPublisherFavorability_initWithArray___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = FCAppConfigurationStringValue(v9, @"publisherID", 0);
        if (v10)
        {
          v11 = FCAppConfigurationNumberValue(v9, @"favorability", 0);
          if (v11)
          {
            v12 = [v3 objectForKeyedSubscript:v10];

            if (v12)
            {
              v13 = FCStatelessPersonalizationLog;
              if (os_log_type_enabled(FCStatelessPersonalizationLog, OS_LOG_TYPE_ERROR))
              {
                v14 = v13;
                v15 = [v3 objectForKeyedSubscript:v10];
                *buf = 138543874;
                v24 = v10;
                v25 = 2114;
                v26 = v15;
                v27 = 2114;
                v28 = v11;
                _os_log_error_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_ERROR, "Stateless personalization publisher favorability has duplicate entry for publisherID %{public}@. Existing favorability %{public}@, duplicate favorability %{public}@", buf, 0x20u);
              }
            }

            else
            {
              [v3 setObject:v11 forKeyedSubscript:v10];
            }
          }

          else
          {
            v17 = FCStatelessPersonalizationLog;
            if (os_log_type_enabled(FCStatelessPersonalizationLog, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v24 = @"favorability";
              v25 = 2114;
              v26 = v9;
              _os_log_error_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_ERROR, "Stateless personalization publisher favorability entry missing %{public}@: %{public}@", buf, 0x16u);
            }
          }
        }

        else
        {
          v16 = FCStatelessPersonalizationLog;
          if (os_log_type_enabled(FCStatelessPersonalizationLog, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v24 = @"publisherID";
            v25 = 2114;
            v26 = v9;
            _os_log_error_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_ERROR, "Stateless personalization publisher favorability entry missing %{public}@: %{public}@", buf, 0x16u);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v6);
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end