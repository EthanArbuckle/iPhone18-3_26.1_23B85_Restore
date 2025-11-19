@interface BPSAggregator
- (BPSAggregator)initWithAccumulator:(id)a3 closure:(id)a4;
@end

@implementation BPSAggregator

- (BPSAggregator)initWithAccumulator:(id)a3 closure:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BPSAggregator;
  v9 = [(BPSAggregator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accumulator, a3);
    v11 = _Block_copy(v8);
    closure = v10->_closure;
    v10->_closure = v11;
  }

  return v10;
}

@end