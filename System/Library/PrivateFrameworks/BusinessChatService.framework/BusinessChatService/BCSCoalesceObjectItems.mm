@interface BCSCoalesceObjectItems
- (BCSCoalesceObjectItems)initWithCompletionBlock:(id)block coalesceKey:(id)key;
@end

@implementation BCSCoalesceObjectItems

- (BCSCoalesceObjectItems)initWithCompletionBlock:(id)block coalesceKey:(id)key
{
  blockCopy = block;
  keyCopy = key;
  v14.receiver = self;
  v14.super_class = BCSCoalesceObjectItems;
  v8 = [(BCSCoalesceObjectItems *)&v14 init];
  if (v8)
  {
    v9 = [blockCopy copy];
    itemsCompletionBlock = v8->_itemsCompletionBlock;
    v8->_itemsCompletionBlock = v9;

    v11 = [keyCopy copy];
    coalesceKey = v8->_coalesceKey;
    v8->_coalesceKey = v11;
  }

  return v8;
}

@end