@interface LACAnalyticsProcessor
- (LACAnalyticsProcessor)initWithAnalyticsSession:(id)a3;
- (void)_donateDialogEvent:(id)a3 request:(id)a4;
- (void)postProcessRequest:(id)a3 result:(id)a4 completion:(id)a5;
- (void)processRequest:(id)a3 configuration:(id)a4 completion:(id)a5;
@end

@implementation LACAnalyticsProcessor

- (LACAnalyticsProcessor)initWithAnalyticsSession:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LACAnalyticsProcessor;
  v6 = [(LACAnalyticsProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_analyticsSession, a3);
  }

  return v7;
}

- (void)processRequest:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = [LACEvaluationResult resultWithNext:a3];
  (*(a5 + 2))(v7, v8);
}

- (void)postProcessRequest:(id)a3 result:(id)a4 completion:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v12 analyticsData];
  v11 = [v10 biomeDialogEvent];

  if (v11 && [v12 isInteractive] && (objc_msgSend(v12, "isImmediateSuccess") & 1) == 0)
  {
    [(LACAnalyticsProcessor *)self _donateDialogEvent:v11 request:v12];
  }

  v9[2](v9, v8);
}

- (void)_donateDialogEvent:(id)a3 request:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 customUI])
  {
    v8 = [v7 options];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:1091];
    v10 = [v8 objectForKeyedSubscript:v9];
    [v6 setDialogID:v10];
  }

  else
  {
    [v6 setDialogID:@"com.apple.LocalAuthentication.default"];
  }

  analyticsSession = self->_analyticsSession;
  if (analyticsSession)
  {
    v12 = [(LACAnalyticsSession *)analyticsSession finished];
    v13 = self->_analyticsSession;
    v14 = [v7 analyticsData];
    v15 = v13;
    if (!v12)
    {
      [(LACAnalyticsSession *)v13 mergeEvaluationAnalytics:v14];

      v16 = LACLogAnalytics();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(LACAnalyticsSession *)self->_analyticsSession analyticsData];
        v18 = [v17 biomeDialogEvent];
        v19 = self->_analyticsSession;
        v23 = 138543618;
        v24 = v18;
        v25 = 2114;
        v26 = v19;
        _os_log_impl(&dword_1B0233000, v16, OS_LOG_TYPE_DEFAULT, "Delaying donation of %{public}@ until %{public}@ is finished.", &v23, 0x16u);
      }

      v20 = self->_analyticsSession;
      v14 = [v7 analyticsData];
      v15 = v20;
    }

    [(LACAnalyticsSession *)v15 untrackEvaluationAnalytics:v14];
  }

  else
  {
    v21 = +[LACBiomeDialogDonationHelper sharedInstance];
    [v21 donateEvent:v6];
  }

  v22 = *MEMORY[0x1E69E9840];
}

@end