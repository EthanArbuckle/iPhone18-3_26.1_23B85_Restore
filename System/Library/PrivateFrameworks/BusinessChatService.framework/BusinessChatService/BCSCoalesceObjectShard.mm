@interface BCSCoalesceObjectShard
- (BCSCoalesceObjectShard)initWithCompletionBlock:(id)block coalesceKey:(id)key;
@end

@implementation BCSCoalesceObjectShard

- (BCSCoalesceObjectShard)initWithCompletionBlock:(id)block coalesceKey:(id)key
{
  blockCopy = block;
  keyCopy = key;
  v14.receiver = self;
  v14.super_class = BCSCoalesceObjectShard;
  v8 = [(BCSCoalesceObjectShard *)&v14 init];
  if (v8)
  {
    v9 = [blockCopy copy];
    shardCompletionBlock = v8->_shardCompletionBlock;
    v8->_shardCompletionBlock = v9;

    v11 = [keyCopy copy];
    coalesceKey = v8->_coalesceKey;
    v8->_coalesceKey = v11;
  }

  return v8;
}

@end