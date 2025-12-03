@interface CKBlackholeConversationListViewController
- (void)setSpecifier:(id)specifier;
@end

@implementation CKBlackholeConversationListViewController

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (self->_specifier != specifierCopy)
  {
    v6 = specifierCopy;
    objc_storeStrong(&self->_specifier, specifier);
    specifierCopy = v6;
  }
}

@end