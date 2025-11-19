@interface BCSCoalesceObjectShard
- (BCSCoalesceObjectShard)initWithCompletionBlock:(id)a3 coalesceKey:(id)a4;
@end

@implementation BCSCoalesceObjectShard

- (BCSCoalesceObjectShard)initWithCompletionBlock:(id)a3 coalesceKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = BCSCoalesceObjectShard;
  v8 = [(BCSCoalesceObjectShard *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    shardCompletionBlock = v8->_shardCompletionBlock;
    v8->_shardCompletionBlock = v9;

    v11 = [v7 copy];
    coalesceKey = v8->_coalesceKey;
    v8->_coalesceKey = v11;
  }

  return v8;
}

@end