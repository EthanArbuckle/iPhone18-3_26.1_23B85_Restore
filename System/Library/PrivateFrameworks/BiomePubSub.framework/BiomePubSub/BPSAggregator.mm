@interface BPSAggregator
- (BPSAggregator)initWithAccumulator:(id)accumulator closure:(id)closure;
@end

@implementation BPSAggregator

- (BPSAggregator)initWithAccumulator:(id)accumulator closure:(id)closure
{
  accumulatorCopy = accumulator;
  closureCopy = closure;
  v14.receiver = self;
  v14.super_class = BPSAggregator;
  v9 = [(BPSAggregator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accumulator, accumulator);
    v11 = _Block_copy(closureCopy);
    closure = v10->_closure;
    v10->_closure = v11;
  }

  return v10;
}

@end