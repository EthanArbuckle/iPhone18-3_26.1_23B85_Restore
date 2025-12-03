@interface CKConversationListTipManager
- (CKConversationListTipManager)initWithConversationListController:(id)controller;
@end

@implementation CKConversationListTipManager

- (CKConversationListTipManager)initWithConversationListController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = CKConversationListTipManager;
  v5 = [(CKConversationListTipManager *)&v9 init];
  if (v5)
  {
    v6 = [[CKConversationListTipManagerSwift alloc] initWithConversationListController:controllerCopy];
    swiftManager = v5->_swiftManager;
    v5->_swiftManager = v6;
  }

  return v5;
}

@end