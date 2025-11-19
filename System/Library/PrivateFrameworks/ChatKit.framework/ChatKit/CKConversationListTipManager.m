@interface CKConversationListTipManager
- (CKConversationListTipManager)initWithConversationListController:(id)a3;
@end

@implementation CKConversationListTipManager

- (CKConversationListTipManager)initWithConversationListController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKConversationListTipManager;
  v5 = [(CKConversationListTipManager *)&v9 init];
  if (v5)
  {
    v6 = [[CKConversationListTipManagerSwift alloc] initWithConversationListController:v4];
    swiftManager = v5->_swiftManager;
    v5->_swiftManager = v6;
  }

  return v5;
}

@end