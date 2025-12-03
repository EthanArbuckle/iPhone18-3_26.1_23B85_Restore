@interface HMDMainDriverUtilities
+ (void)mainDriver:(id)driver finishDelayedHomeManager:(id)manager;
- (HMDMainDriverUtilities)init;
@end

@implementation HMDMainDriverUtilities

+ (void)mainDriver:(id)driver finishDelayedHomeManager:(id)manager
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_22A4DE01C();
  swift_unknownObjectRelease();
  v4 = v12;
  v5 = __swift_project_boxed_opaque_existential_0(v11, v12);
  sub_22A4DE01C();
  swift_unknownObjectRelease();
  v6 = v10;
  v7 = __swift_project_boxed_opaque_existential_0(v9, v10);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_2297B3F04(v5, v7, ObjCClassMetadata, v4, v6);
  __swift_destroy_boxed_opaque_existential_0(v9);
  __swift_destroy_boxed_opaque_existential_0(v11);
}

- (HMDMainDriverUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MainDriverUtilities();
  return [(HMDMainDriverUtilities *)&v3 init];
}

@end