@interface LACAnalyticsSession
- (LACAnalyticsSession)initWithDialogID:(id)d bundleID:(id)iD;
- (NSString)description;
- (void)authenticationAttemptFailedForEvent:(int64_t)event;
- (void)authenticationStartedForEvent:(int64_t)event;
- (void)authenticationSuccessfulForEvent:(int64_t)event;
- (void)dealloc;
- (void)finish;
- (void)mergeEvaluationAnalytics:(id)analytics;
- (void)trackEvaluationAnalytics:(id)analytics;
- (void)untrackEvaluationAnalytics:(id)analytics;
@end

@implementation LACAnalyticsSession

- (LACAnalyticsSession)initWithDialogID:(id)d bundleID:(id)iD
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  v18.receiver = self;
  v18.super_class = LACAnalyticsSession;
  v9 = [(LACAnalyticsSession *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dialogID, d);
    objc_storeStrong(&v10->_bundleID, iD);
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
  dialogID = [(LACAnalyticsSession *)self dialogID];
  v5 = [v3 stringWithFormat:@"<LACAnalyticsSession %p dialogID: %@, evaluationAnalytics: %u>", self, dialogID, -[NSMutableArray count](self->_evaluationAnalytics, "count")];;

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
      selfCopy = self;
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

    analyticsData = [(LACAnalyticsSession *)self analyticsData];
    biomeDialogEvent = [analyticsData biomeDialogEvent];

    dialogID = [(LACAnalyticsSession *)self dialogID];
    [biomeDialogEvent setDialogID:dialogID];

    bundleID = [(LACAnalyticsSession *)self bundleID];
    [biomeDialogEvent setBundleID:bundleID];

    v13 = +[LACBiomeDialogDonationHelper sharedInstance];
    [v13 donateEvent:biomeDialogEvent];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)trackEvaluationAnalytics:(id)analytics
{
  v11 = *MEMORY[0x1E69E9840];
  analyticsCopy = analytics;
  [(NSMutableArray *)self->_evaluationAnalytics addObject:analyticsCopy];
  v5 = LACLogAnalytics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = analyticsCopy;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ is now tracking %{public}@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)untrackEvaluationAnalytics:(id)analytics
{
  v11 = *MEMORY[0x1E69E9840];
  analyticsCopy = analytics;
  [(NSMutableArray *)self->_evaluationAnalytics removeObject:analyticsCopy];
  v5 = LACLogAnalytics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = analyticsCopy;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ is no longer tracking %{public}@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)mergeEvaluationAnalytics:(id)analytics
{
  v12 = *MEMORY[0x1E69E9840];
  analyticsCopy = analytics;
  if (([(NSMutableArray *)self->_evaluationAnalytics containsObject:analyticsCopy]& 1) != 0)
  {
    analyticsData = [(LACAnalyticsSession *)self analyticsData];
    [analyticsData mergeAnalyticsData:analyticsCopy];

    v6 = LACLogAnalytics();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      selfCopy = self;
      v10 = 2114;
      v11 = analyticsCopy;
      _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ has merged %{public}@", &v8, 0x16u);
    }
  }

  else
  {
    v6 = LACLogAnalytics();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(LACAnalyticsSession *)analyticsCopy mergeEvaluationAnalytics:v6];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)authenticationAttemptFailedForEvent:(int64_t)event
{
  analyticsData = [(LACAnalyticsSession *)self analyticsData];
  [analyticsData authenticationAttemptFailedForEvent:event];
}

- (void)authenticationSuccessfulForEvent:(int64_t)event
{
  analyticsData = [(LACAnalyticsSession *)self analyticsData];
  [analyticsData authenticationSuccessfulForEvent:event];
}

- (void)authenticationStartedForEvent:(int64_t)event
{
  analyticsData = [(LACAnalyticsSession *)self analyticsData];
  [analyticsData authenticationStartedForEvent:event];
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