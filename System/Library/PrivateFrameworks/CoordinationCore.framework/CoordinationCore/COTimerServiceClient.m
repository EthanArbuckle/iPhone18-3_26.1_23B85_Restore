@interface COTimerServiceClient
- (COTimerServiceClient)initWithConnection:(id)a3;
- (void)changeClientLifetimeActivityMetrics:(id)a3;
- (void)dealloc;
- (void)donateClientLifetimeActivityCompletionReason:(int)a3;
@end

@implementation COTimerServiceClient

- (COTimerServiceClient)initWithConnection:(id)a3
{
  v14.receiver = self;
  v14.super_class = COTimerServiceClient;
  v3 = [(COCoordinationServiceClient *)&v14 initWithConnection:a3];
  v4 = v3;
  if (v3)
  {
    v3->_clientLifetimeActivityCompletionReason = 2;
    v5 = [CONetworkActivityFactory activityWithLabel:6 parentActivity:0];
    clientLifetimeActivity = v4->_clientLifetimeActivity;
    v4->_clientLifetimeActivity = v5;

    v7 = v4->_clientLifetimeActivity;
    nw_activity_activate();
    v8 = xpc_dictionary_create(0, 0, 0);
    clientLifetimeActivityMetrics = v4->_clientLifetimeActivityMetrics;
    v4->_clientLifetimeActivityMetrics = v8;

    v10 = v4->_clientLifetimeActivityMetrics;
    if (v10)
    {
      xpc_dictionary_set_uint64(v10, "service", 1uLL);
      v11 = v4->_clientLifetimeActivityMetrics;
      v12 = [(COCoordinationServiceClient *)v4 clientBundleIdentifier];
      xpc_dictionary_set_string(v11, "client", [v12 UTF8String]);
    }
  }

  return v4;
}

- (void)dealloc
{
  if (self->_clientLifetimeActivityMetrics)
  {
    clientLifetimeActivity = self->_clientLifetimeActivity;
    nw_activity_submit_metrics();
  }

  v4 = self->_clientLifetimeActivity;
  clientLifetimeActivityCompletionReason = self->_clientLifetimeActivityCompletionReason;
  nw_activity_complete_with_reason();
  v6.receiver = self;
  v6.super_class = COTimerServiceClient;
  [(COTimerServiceClient *)&v6 dealloc];
}

- (void)donateClientLifetimeActivityCompletionReason:(int)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__COTimerServiceClient_donateClientLifetimeActivityCompletionReason___block_invoke;
  v3[3] = &unk_278E17CA0;
  v4 = a3;
  v3[4] = self;
  [(COCoordinationServiceClient *)self _withLock:v3];
}

uint64_t __69__COTimerServiceClient_donateClientLifetimeActivityCompletionReason___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2 != 3)
  {
    if (v2 != 2)
    {
      return result;
    }

    result = [*(result + 32) clientLifetimeActivityCompletionReason];
    if (result == 3)
    {
      return result;
    }

    v2 = *(v1 + 40);
  }

  v3 = *(v1 + 32);

  return [v3 setClientLifetimeActivityCompletionReason:v2];
}

- (void)changeClientLifetimeActivityMetrics:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__COTimerServiceClient_changeClientLifetimeActivityMetrics___block_invoke;
  v6[3] = &unk_278E159A0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(COCoordinationServiceClient *)self _withLock:v6];
}

void __60__COTimerServiceClient_changeClientLifetimeActivityMetrics___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) clientLifetimeActivityMetrics];
  (*(v1 + 16))(v1, v2);
}

@end