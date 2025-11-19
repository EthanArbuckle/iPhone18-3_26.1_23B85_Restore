@interface DDObjcCompatibility
+ (BOOL)swiftUpdateLocalUsersAndGroupsAndReturnError:(id *)a3 perform:(id)a4;
+ (void)swiftInitializeLocalUsersAndGroupsAndPerform:(id)a3;
- (DDObjcCompatibility)init;
@end

@implementation DDObjcCompatibility

+ (void)swiftInitializeLocalUsersAndGroupsAndPerform:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = _Block_copy(v3);
  v5[2] = v4;
  if (qword_27EE87A00 != -1)
  {
    swift_once();
  }

  sub_2480E5C40(sub_2480E652C, v5, qword_27EE87D70);
  _Block_release(v3);
  _Block_release(v4);
}

+ (BOOL)swiftUpdateLocalUsersAndGroupsAndReturnError:(id *)a3 perform:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = _Block_copy(v4);
  _Block_copy(v5);
  if (qword_27EE87A00 != -1)
  {
    swift_once();
  }

  v7[3] = &type metadata for ProviderSideEffects;
  v7[4] = &off_285A49328;
  v7[0] = swift_allocObject();
  sub_2480E628C(qword_27EE87D70, v7[0] + 16);
  sub_248105858(v7, v5);
  _Block_release(v5);
  _Block_release(v4);
  _Block_release(v5);
  __swift_destroy_boxed_opaque_existential_0(v7);
  return 1;
}

- (DDObjcCompatibility)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(DDObjcCompatibility *)&v3 init];
}

@end