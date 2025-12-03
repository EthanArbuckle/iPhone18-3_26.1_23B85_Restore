@interface LACAnalyticsProcessor
- (LACAnalyticsProcessor)initWithAnalyticsSession:(id)session;
- (void)_donateDialogEvent:(id)event request:(id)request;
- (void)postProcessRequest:(id)request result:(id)result completion:(id)completion;
- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion;
@end

@implementation LACAnalyticsProcessor

- (LACAnalyticsProcessor)initWithAnalyticsSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = LACAnalyticsProcessor;
  v6 = [(LACAnalyticsProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_analyticsSession, session);
  }

  return v7;
}

- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  v8 = [LACEvaluationResult resultWithNext:request];
  (*(completion + 2))(completionCopy, v8);
}

- (void)postProcessRequest:(id)request result:(id)result completion:(id)completion
{
  requestCopy = request;
  resultCopy = result;
  completionCopy = completion;
  analyticsData = [requestCopy analyticsData];
  biomeDialogEvent = [analyticsData biomeDialogEvent];

  if (biomeDialogEvent && [requestCopy isInteractive] && (objc_msgSend(requestCopy, "isImmediateSuccess") & 1) == 0)
  {
    [(LACAnalyticsProcessor *)self _donateDialogEvent:biomeDialogEvent request:requestCopy];
  }

  completionCopy[2](completionCopy, resultCopy);
}

- (void)_donateDialogEvent:(id)event request:(id)request
{
  v27 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  requestCopy = request;
  if ([requestCopy customUI])
  {
    options = [requestCopy options];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:1091];
    v10 = [options objectForKeyedSubscript:v9];
    [eventCopy setDialogID:v10];
  }

  else
  {
    [eventCopy setDialogID:@"com.apple.LocalAuthentication.default"];
  }

  analyticsSession = self->_analyticsSession;
  if (analyticsSession)
  {
    finished = [(LACAnalyticsSession *)analyticsSession finished];
    v13 = self->_analyticsSession;
    analyticsData = [requestCopy analyticsData];
    v15 = v13;
    if (!finished)
    {
      [(LACAnalyticsSession *)v13 mergeEvaluationAnalytics:analyticsData];

      v16 = LACLogAnalytics();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        analyticsData2 = [(LACAnalyticsSession *)self->_analyticsSession analyticsData];
        biomeDialogEvent = [analyticsData2 biomeDialogEvent];
        v19 = self->_analyticsSession;
        v23 = 138543618;
        v24 = biomeDialogEvent;
        v25 = 2114;
        v26 = v19;
        _os_log_impl(&dword_1B0233000, v16, OS_LOG_TYPE_DEFAULT, "Delaying donation of %{public}@ until %{public}@ is finished.", &v23, 0x16u);
      }

      v20 = self->_analyticsSession;
      analyticsData = [requestCopy analyticsData];
      v15 = v20;
    }

    [(LACAnalyticsSession *)v15 untrackEvaluationAnalytics:analyticsData];
  }

  else
  {
    v21 = +[LACBiomeDialogDonationHelper sharedInstance];
    [v21 donateEvent:eventCopy];
  }

  v22 = *MEMORY[0x1E69E9840];
}

@end