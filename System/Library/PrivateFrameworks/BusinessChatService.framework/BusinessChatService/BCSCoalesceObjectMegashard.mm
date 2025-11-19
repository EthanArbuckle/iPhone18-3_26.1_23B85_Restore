@interface BCSCoalesceObjectMegashard
- (BCSCoalesceObjectMegashard)initWithCompletionBlock:(id)a3 coalesceKey:(id)a4;
@end

@implementation BCSCoalesceObjectMegashard

- (BCSCoalesceObjectMegashard)initWithCompletionBlock:(id)a3 coalesceKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = BCSCoalesceObjectMegashard;
  v8 = [(BCSCoalesceObjectMegashard *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    megashardCompletionBlock = v8->_megashardCompletionBlock;
    v8->_megashardCompletionBlock = v9;

    v11 = [v7 copy];
    coalesceKey = v8->_coalesceKey;
    v8->_coalesceKey = v11;
  }

  return v8;
}

@end