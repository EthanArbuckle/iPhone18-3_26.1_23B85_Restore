@interface BCSCoalesceObjectMegashard
- (BCSCoalesceObjectMegashard)initWithCompletionBlock:(id)block coalesceKey:(id)key;
@end

@implementation BCSCoalesceObjectMegashard

- (BCSCoalesceObjectMegashard)initWithCompletionBlock:(id)block coalesceKey:(id)key
{
  blockCopy = block;
  keyCopy = key;
  v14.receiver = self;
  v14.super_class = BCSCoalesceObjectMegashard;
  v8 = [(BCSCoalesceObjectMegashard *)&v14 init];
  if (v8)
  {
    v9 = [blockCopy copy];
    megashardCompletionBlock = v8->_megashardCompletionBlock;
    v8->_megashardCompletionBlock = v9;

    v11 = [keyCopy copy];
    coalesceKey = v8->_coalesceKey;
    v8->_coalesceKey = v11;
  }

  return v8;
}

@end