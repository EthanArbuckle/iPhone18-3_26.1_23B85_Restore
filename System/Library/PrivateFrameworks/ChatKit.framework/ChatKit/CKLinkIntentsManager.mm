@interface CKLinkIntentsManager
+ (CKLinkIntentsManager)sharedManager;
- (CKLinkIntentsManager)init;
- (void)purgeDependencies;
- (void)registerDependencyWithDetailsController:(id)controller;
@end

@implementation CKLinkIntentsManager

+ (CKLinkIntentsManager)sharedManager
{
  if (qword_1EAD45C50 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAD45C58;

  return v3;
}

- (CKLinkIntentsManager)init
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for LinkIntentsManager();
  return [(CKLinkIntentsManager *)&v4 init];
}

- (void)registerDependencyWithDetailsController:(id)controller
{
  sub_190D50490();
  controllerCopy = controller;
  sub_190D50480();
  sub_190D58230();
  *(swift_allocObject() + 16) = controllerCopy;
  sub_190D2AD7C();
  v5 = controllerCopy;
  sub_190D50470();

  sub_190D2ADC8(v6);
}

- (void)purgeDependencies
{
  sub_190D50490();
  sub_190D50480();
  sub_190D58230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD64050);
  sub_190D50470();

  sub_190D2ADC8(v2);
}

@end