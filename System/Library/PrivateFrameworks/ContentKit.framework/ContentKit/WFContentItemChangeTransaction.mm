@interface WFContentItemChangeTransaction
- (WFContentItemChangeTransaction)initWithContentItem:(id)item;
@end

@implementation WFContentItemChangeTransaction

- (WFContentItemChangeTransaction)initWithContentItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContentItemChangeTransaction.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"contentItem"}];
  }

  v13.receiver = self;
  v13.super_class = WFContentItemChangeTransaction;
  v7 = [(WFContentItemChangeTransaction *)&v13 init];
  v8 = v7;
  if (v7)
  {
    mode = v7->_mode;
    v7->_mode = @"Set";

    objc_storeStrong(&v8->_contentItem, item);
    v10 = v8;
  }

  return v8;
}

@end