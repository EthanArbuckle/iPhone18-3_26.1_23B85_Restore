@interface BCSCoalesceObjectConfig
- (BCSCoalesceObjectConfig)initWithCompletionBlock:(id)a3 coalesceKey:(id)a4;
@end

@implementation BCSCoalesceObjectConfig

- (BCSCoalesceObjectConfig)initWithCompletionBlock:(id)a3 coalesceKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = BCSCoalesceObjectConfig;
  v8 = [(BCSCoalesceObjectConfig *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    configCompletionBlock = v8->_configCompletionBlock;
    v8->_configCompletionBlock = v9;

    v11 = [v7 copy];
    coalesceKey = v8->_coalesceKey;
    v8->_coalesceKey = v11;
  }

  return v8;
}

@end