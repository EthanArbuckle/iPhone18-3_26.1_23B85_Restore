@interface CATConcreteTimerSource
- (CATConcreteTimerSource)init;
- (id)scheduleInfiniteTimerWithIdentifier:(id)identifier timeInterval:(double)interval queue:(id)queue fireHandler:(id)handler;
- (id)scheduleOneShotTimerWithIdentifier:(id)identifier timeInterval:(double)interval queue:(id)queue fireHandler:(id)handler;
- (id)scheduleRepeatTimerWithIdentifier:(id)identifier timeInterval:(double)interval queue:(id)queue totalFires:(unint64_t)fires fireHandler:(id)handler;
@end

@implementation CATConcreteTimerSource

- (CATConcreteTimerSource)init
{
  v6.receiver = self;
  v6.super_class = CATConcreteTimerSource;
  v2 = [(CATConcreteTimerSource *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create(0, 0);
    mWorkQueue = v2->mWorkQueue;
    v2->mWorkQueue = v3;
  }

  return v2;
}

- (id)scheduleOneShotTimerWithIdentifier:(id)identifier timeInterval:(double)interval queue:(id)queue fireHandler:(id)handler
{
  handlerCopy = handler;
  mWorkQueue = self->mWorkQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__CATConcreteTimerSource_scheduleOneShotTimerWithIdentifier_timeInterval_queue_fireHandler___block_invoke;
  v15[3] = &unk_278DA7C10;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = [CATDispatchTimer scheduledTimerWithIdentifier:identifier workQueue:mWorkQueue delegateQueue:queue timeInterval:1 totalFires:0 firesForever:v15 fireHandler:interval];

  return v13;
}

- (id)scheduleRepeatTimerWithIdentifier:(id)identifier timeInterval:(double)interval queue:(id)queue totalFires:(unint64_t)fires fireHandler:(id)handler
{
  handlerCopy = handler;
  mWorkQueue = self->mWorkQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __102__CATConcreteTimerSource_scheduleRepeatTimerWithIdentifier_timeInterval_queue_totalFires_fireHandler___block_invoke;
  v17[3] = &unk_278DA7C10;
  v18 = handlerCopy;
  v14 = handlerCopy;
  v15 = [CATDispatchTimer scheduledTimerWithIdentifier:identifier workQueue:mWorkQueue delegateQueue:queue timeInterval:fires totalFires:0 firesForever:v17 fireHandler:interval];

  return v15;
}

- (id)scheduleInfiniteTimerWithIdentifier:(id)identifier timeInterval:(double)interval queue:(id)queue fireHandler:(id)handler
{
  handlerCopy = handler;
  mWorkQueue = self->mWorkQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __93__CATConcreteTimerSource_scheduleInfiniteTimerWithIdentifier_timeInterval_queue_fireHandler___block_invoke;
  v15[3] = &unk_278DA7C10;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = [CATDispatchTimer scheduledTimerWithIdentifier:identifier workQueue:mWorkQueue delegateQueue:queue timeInterval:0 totalFires:1 firesForever:v15 fireHandler:interval];

  return v13;
}

@end