@interface IdentityCredentialProviderSceneSpecification
- (_TtC9CoreIDVUI44IdentityCredentialProviderSceneSpecification)init;
- (id)userActivity;
@end

@implementation IdentityCredentialProviderSceneSpecification

- (id)userActivity
{
  v2 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v3 = sub_2459109C4();
  initWithActivityType_ = [v2 initWithActivityType_];

  return initWithActivityType_;
}

- (_TtC9CoreIDVUI44IdentityCredentialProviderSceneSpecification)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(IdentityCredentialProviderSceneSpecification *)&v3 init];
}

@end