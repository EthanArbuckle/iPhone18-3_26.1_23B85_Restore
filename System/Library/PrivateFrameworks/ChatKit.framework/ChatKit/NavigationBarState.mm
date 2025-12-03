@interface NavigationBarState
- (id)copyWithZone:(void *)zone;
@end

@implementation NavigationBarState

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_190C6C0D8(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_190D58740();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

@end