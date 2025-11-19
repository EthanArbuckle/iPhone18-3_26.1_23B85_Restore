@interface DDRVInteractionDelegate
- (DDRVInteractionDelegate)initWithItem:(id)a3;
- (void)actionDidFinish:(id)a3;
- (void)actionWillStart:(id)a3;
@end

@implementation DDRVInteractionDelegate

- (DDRVInteractionDelegate)initWithItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DDRVInteractionDelegate;
  v6 = [(DDRVInteractionDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
  }

  return v7;
}

- (void)actionWillStart:(id)a3
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"kDDRVInteractionWillStartNotification" object:self->_item];
}

- (void)actionDidFinish:(id)a3
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"kDDRVInteractionDidFinishNotification" object:self->_item];
}

@end