@interface CKTextEffectCoordinatorConfiguration
- (CKTextEffectCoordinatorConfiguration)init;
- (CKTextEffectCoordinatorConfiguration)initWithLogIdentifier:(id)identifier;
- (CKTextEffectCoordinatorConfiguration)initWithLogIdentifier:(id)identifier timeAfterLastAnimationInSeconds:(double)seconds;
@end

@implementation CKTextEffectCoordinatorConfiguration

- (CKTextEffectCoordinatorConfiguration)initWithLogIdentifier:(id)identifier timeAfterLastAnimationInSeconds:(double)seconds
{
  v5 = sub_190D56F10();
  CKTextEffectCoordinator.Configuration.init(logIdentifier:timeAfterLastAnimationInSeconds:)(v5, v6, seconds);
  return result;
}

- (CKTextEffectCoordinatorConfiguration)initWithLogIdentifier:(id)identifier
{
  v3 = sub_190D56760();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_190D56F10();
  v9 = v8;
  swift_getObjectType();
  *v6 = 5;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E7F48], v3);
  v10 = sub_190A4BE60(v7, v9, v6, 1);
  swift_deallocPartialClassInstance();
  return v10;
}

- (CKTextEffectCoordinatorConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end