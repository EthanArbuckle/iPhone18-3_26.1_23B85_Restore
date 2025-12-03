@interface BCSCoalesceObjectData
- (BCSCoalesceObjectData)initWithCompletionBlock:(id)block coalesceKey:(id)key;
@end

@implementation BCSCoalesceObjectData

- (BCSCoalesceObjectData)initWithCompletionBlock:(id)block coalesceKey:(id)key
{
  blockCopy = block;
  keyCopy = key;
  v14.receiver = self;
  v14.super_class = BCSCoalesceObjectData;
  v8 = [(BCSCoalesceObjectData *)&v14 init];
  if (v8)
  {
    v9 = [blockCopy copy];
    dataCompletionBlock = v8->_dataCompletionBlock;
    v8->_dataCompletionBlock = v9;

    v11 = [keyCopy copy];
    coalesceKey = v8->_coalesceKey;
    v8->_coalesceKey = v11;
  }

  return v8;
}

@end