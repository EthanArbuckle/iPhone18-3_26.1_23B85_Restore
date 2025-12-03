@interface BPSDirectAssocationCorrelateHandler
- (BPSDirectAssocationCorrelateHandler)initWithCorrelating:(id)correlating;
- (id)correlateWithCurrentEvent:(id)event;
- (void)receivePriorEvent:(id)event;
@end

@implementation BPSDirectAssocationCorrelateHandler

- (BPSDirectAssocationCorrelateHandler)initWithCorrelating:(id)correlating
{
  correlatingCopy = correlating;
  v5 = objc_opt_new();
  v10.receiver = self;
  v10.super_class = BPSDirectAssocationCorrelateHandler;
  v6 = [(BPSCorrelateHandler *)&v10 initWithInitialContext:v5];

  if (v6)
  {
    v7 = [correlatingCopy copy];
    correlating = v6->_correlating;
    v6->_correlating = v7;
  }

  return v6;
}

- (void)receivePriorEvent:(id)event
{
  eventCopy = event;
  context = [(BPSCorrelateHandler *)self context];
  [context addObject:eventCopy];
}

- (id)correlateWithCurrentEvent:(id)event
{
  eventCopy = event;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  context = [(BPSCorrelateHandler *)self context];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __65__BPSDirectAssocationCorrelateHandler_correlateWithCurrentEvent___block_invoke;
  v17 = &unk_1E8320B58;
  selfCopy = self;
  v8 = eventCopy;
  v19 = v8;
  v9 = v5;
  v20 = v9;
  v10 = v6;
  v21 = v10;
  [context enumerateObjectsUsingBlock:&v14];

  v11 = [(BPSCorrelateHandler *)self context:v14];
  [v11 removeObjectsAtIndexes:v10];

  if ([v9 count])
  {
    v12 = [[BPSTuple alloc] initWithFirst:v8 second:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __65__BPSDirectAssocationCorrelateHandler_correlateWithCurrentEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  v7 = v5;
  if ((*(*(*(a1 + 32) + 16) + 16))())
  {
    [*(a1 + 48) addObject:v7];
    [*(a1 + 56) addIndex:a3];
  }
}

@end