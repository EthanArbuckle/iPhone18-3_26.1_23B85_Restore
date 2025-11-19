@interface LACAnalyticsSession
- (LACAnalyticsSession)initWithDialogID:(id)a3 bundleID:(id)a4;
- (NSString)description;
- (void)authenticationAttemptFailedForEvent:(int64_t)a3;
- (void)authenticationStartedForEvent:(int64_t)a3;
- (void)authenticationSuccessfulForEvent:(int64_t)a3;
- (void)dealloc;
- (void)finish;
- (void)mergeEvaluationAnalytics:(id)a3;
- (void)trackEvaluationAnalytics:(id)a3;
- (void)untrackEvaluationAnalytics:(id)a3;
@end

@implementation LACAnalyticsSession

- (LACAnalyticsSession)initWithDialogID:(id)a3 bundleID:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = LACAnalyticsSession;
  v9 = [(LACAnalyticsSession *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dialogID, a3);
    objc_storeStrong(&v10->_bundleID, a4);
    v11 = objc_opt_new();
    analyticsData = v10->_analyticsData;
    v10->_analyticsData = v11;

    v13 = objc_opt_new();
    evaluationAnalytics = v10->_evaluationAnalytics;
    v10->_evaluationAnalytics = v13;
  }

  v15 = LACLogAnalytics();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v10;
    _os_log_impl(&dword_1B0233000, v15, OS_LOG_TYPE_DEFAULT, "Created %{public}@", buf, 0xCu);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)dealloc
{
  [(LACAnalyticsSession *)self finish];
  v3.receiver = self;
  v3.super_class = LACAnalyticsSession;
  [(LACAnalyticsSession *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(LACAnalyticsSession *)self dialogID];
  v5 = [v3 stringWithFormat:@"<LACAnalyticsSession %p dialogID: %@, evaluationAnalytics: %u>", self, v4, -[NSMutableArray count](self->_evaluationAnalytics, "count")];;

  return v5;
}

- (void)finish
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_finished)
  {
    v3 = LACLogAnalytics();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = self;
      _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "Finishing %{public}@", buf, 0xCu);
    }

    self->_finished = 1;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = self->_evaluationAnalytics;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(LACAnalyticsSession *)self mergeEvaluationAnalytics:*(*(&v15 + 1) + 8 * v8++), v15];
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    v9 = [(LACAnalyticsSession *)self analyticsData];
    v10 = [v9 biomeDialogEvent];

    v11 = [(LACAnalyticsSession *)self dialogID];
    [v10 setDialogID:v11];

    v12 = [(LACAnalyticsSession *)self bundleID];
    [v10 setBundleID:v12];

    v13 = +[LACBiomeDialogDonationHelper sharedInstance];
    [v13 donateEvent:v10];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)trackEvaluationAnalytics:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSMutableArray *)self->_evaluationAnalytics addObject:v4];
  v5 = LACLogAnalytics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ is now tracking %{public}@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)untrackEvaluationAnalytics:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSMutableArray *)self->_evaluationAnalytics removeObject:v4];
  v5 = LACLogAnalytics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ is no longer tracking %{public}@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)mergeEvaluationAnalytics:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([(NSMutableArray *)self->_evaluationAnalytics containsObject:v4]& 1) != 0)
  {
    v5 = [(LACAnalyticsSession *)self analyticsData];
    [v5 mergeAnalyticsData:v4];

    v6 = LACLogAnalytics();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = self;
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ has merged %{public}@", &v8, 0x16u);
    }
  }

  else
  {
    v6 = LACLogAnalytics();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(LACAnalyticsSession *)v4 mergeEvaluationAnalytics:v6];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)authenticationAttemptFailedForEvent:(int64_t)a3
{
  v4 = [(LACAnalyticsSession *)self analyticsData];
  [v4 authenticationAttemptFailedForEvent:a3];
}

- (void)authenticationSuccessfulForEvent:(int64_t)a3
{
  v4 = [(LACAnalyticsSession *)self analyticsData];
  [v4 authenticationSuccessfulForEvent:a3];
}

- (void)authenticationStartedForEvent:(int64_t)a3
{
  v4 = [(LACAnalyticsSession *)self analyticsData];
  [v4 authenticationStartedForEvent:a3];
}

- (void)mergeEvaluationAnalytics:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1B0233000, log, OS_LOG_TYPE_ERROR, "Can't merge %{public}@ into %{public}@, data is not tracked by this session.", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end