@interface DNDAWDMetricsService
- (DNDAWDMetricsService)initWithClientIdentifier:(id)identifier;
- (unint64_t)_queue_currentAWDMetricState;
- (void)_queue_postAWDMetric;
- (void)handleTransitionToUILocked:(BOOL)locked;
- (void)resume;
- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update;
@end

@implementation DNDAWDMetricsService

- (void)_queue_postAWDMetric
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_currentState && self->_lockState)
  {
    _queue_currentAWDMetricState = [(DNDAWDMetricsService *)self _queue_currentAWDMetricState];

    MEMORY[0x2821E3D68](1441795, _queue_currentAWDMetricState);
  }
}

- (unint64_t)_queue_currentAWDMetricState
{
  suppressionState = [(DNDState *)self->_currentState suppressionState];
  if (suppressionState == 2)
  {
    if (self->_lockState == 1)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (suppressionState == 1)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (DNDAWDMetricsService)initWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = DNDAWDMetricsService;
  v5 = [(DNDAWDMetricsService *)&v12 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.donotdisturb.kit.AWDMetricService", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = [MEMORY[0x277D05AB0] serviceForClientIdentifier:identifierCopy];
    notificationsStateService = v5->_notificationsStateService;
    v5->_notificationsStateService = v9;

    v5->_lockState = 0;
  }

  return v5;
}

- (void)resume
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__DNDAWDMetricsService_resume__block_invoke;
  block[3] = &unk_278F884B8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __30__DNDAWDMetricsService_resume__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) addStateUpdateListener:*(a1 + 32) withCompletionHandler:&__block_literal_global_2];
  v2 = [*(*(a1 + 32) + 16) queryCurrentStateWithError:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)handleTransitionToUILocked:(BOOL)locked
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__DNDAWDMetricsService_handleTransitionToUILocked___block_invoke;
  v4[3] = &unk_278F88600;
  v4[4] = self;
  lockedCopy = locked;
  dispatch_async(queue, v4);
}

uint64_t __51__DNDAWDMetricsService_handleTransitionToUILocked___block_invoke(uint64_t a1)
{
  v1 = 1;
  if (!*(a1 + 40))
  {
    v1 = 2;
  }

  *(*(a1 + 32) + 32) = v1;
  return [*(a1 + 32) _queue_postAWDMetric];
}

- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update
{
  updateCopy = update;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__DNDAWDMetricsService_stateService_didReceiveDoNotDisturbStateUpdate___block_invoke;
  v8[3] = &unk_278F88500;
  v8[4] = self;
  v9 = updateCopy;
  v7 = updateCopy;
  dispatch_async(queue, v8);
}

uint64_t __71__DNDAWDMetricsService_stateService_didReceiveDoNotDisturbStateUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) state];
  v3 = [v2 copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;

  v6 = *(a1 + 32);

  return [v6 _queue_postAWDMetric];
}

@end