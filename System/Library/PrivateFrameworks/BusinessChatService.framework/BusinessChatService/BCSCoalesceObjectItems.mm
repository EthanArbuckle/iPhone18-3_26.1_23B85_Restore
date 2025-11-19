@interface BCSCoalesceObjectItems
- (BCSCoalesceObjectItems)initWithCompletionBlock:(id)a3 coalesceKey:(id)a4;
@end

@implementation BCSCoalesceObjectItems

- (BCSCoalesceObjectItems)initWithCompletionBlock:(id)a3 coalesceKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = BCSCoalesceObjectItems;
  v8 = [(BCSCoalesceObjectItems *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    itemsCompletionBlock = v8->_itemsCompletionBlock;
    v8->_itemsCompletionBlock = v9;

    v11 = [v7 copy];
    coalesceKey = v8->_coalesceKey;
    v8->_coalesceKey = v11;
  }

  return v8;
}

@end