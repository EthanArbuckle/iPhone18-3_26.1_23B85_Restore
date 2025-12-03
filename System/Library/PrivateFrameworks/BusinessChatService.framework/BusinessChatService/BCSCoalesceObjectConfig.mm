@interface BCSCoalesceObjectConfig
- (BCSCoalesceObjectConfig)initWithCompletionBlock:(id)block coalesceKey:(id)key;
@end

@implementation BCSCoalesceObjectConfig

- (BCSCoalesceObjectConfig)initWithCompletionBlock:(id)block coalesceKey:(id)key
{
  blockCopy = block;
  keyCopy = key;
  v14.receiver = self;
  v14.super_class = BCSCoalesceObjectConfig;
  v8 = [(BCSCoalesceObjectConfig *)&v14 init];
  if (v8)
  {
    v9 = [blockCopy copy];
    configCompletionBlock = v8->_configCompletionBlock;
    v8->_configCompletionBlock = v9;

    v11 = [keyCopy copy];
    coalesceKey = v8->_coalesceKey;
    v8->_coalesceKey = v11;
  }

  return v8;
}

@end