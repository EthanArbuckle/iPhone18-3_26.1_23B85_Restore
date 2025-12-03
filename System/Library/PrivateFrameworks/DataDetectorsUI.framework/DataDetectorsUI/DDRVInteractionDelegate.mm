@interface DDRVInteractionDelegate
- (DDRVInteractionDelegate)initWithItem:(id)item;
- (void)actionDidFinish:(id)finish;
- (void)actionWillStart:(id)start;
@end

@implementation DDRVInteractionDelegate

- (DDRVInteractionDelegate)initWithItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = DDRVInteractionDelegate;
  v6 = [(DDRVInteractionDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, item);
  }

  return v7;
}

- (void)actionWillStart:(id)start
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"kDDRVInteractionWillStartNotification" object:self->_item];
}

- (void)actionDidFinish:(id)finish
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"kDDRVInteractionDidFinishNotification" object:self->_item];
}

@end