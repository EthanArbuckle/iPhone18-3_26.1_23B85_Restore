@interface CNContactsAppIntentDependencyManager
+ (void)setupAppIntentDependenciesWithActionPerformer:(id)performer;
- (CNContactsAppIntentDependencyManager)init;
@end

@implementation CNContactsAppIntentDependencyManager

+ (void)setupAppIntentDependenciesWithActionPerformer:(id)performer
{
  swift_unknownObjectRetain();
  _sSo36CNContactsAppIntentDependencyManagerC14ContactsUICoreE05setupbC12Dependencies4withySo09CNIntentsB15ActionPerformer_p_tFZ_0(performer);

  swift_unknownObjectRelease();
}

- (CNContactsAppIntentDependencyManager)init
{
  v3.receiver = self;
  v3.super_class = CNContactsAppIntentDependencyManager;
  return [(CNContactsAppIntentDependencyManager *)&v3 init];
}

@end