@interface CKBlackholeConversationListViewController
- (void)setSpecifier:(id)a3;
@end

@implementation CKBlackholeConversationListViewController

- (void)setSpecifier:(id)a3
{
  v5 = a3;
  if (self->_specifier != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_specifier, a3);
    v5 = v6;
  }
}

@end