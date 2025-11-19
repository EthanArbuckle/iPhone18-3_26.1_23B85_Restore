@interface RequestsHandler
- (_TtC16CallsAppServices15RequestsHandler)init;
- (void)configurationChanged;
@end

@implementation RequestsHandler

- (_TtC16CallsAppServices15RequestsHandler)init
{
  v2 = sub_1D33DE034();
  v12[3] = v2;
  v12[4] = &off_1F4EE7D68;
  v12[0] = sub_1D33DE024();
  v3 = objc_allocWithZone(type metadata accessor for RequestsHandler());
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v12, v2);
  v5 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_1D33D42B0(*v7, 2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

- (void)configurationChanged
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_1D33DE9B4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  v9 = self;
  sub_1D333DD88(0, 0, v6, &unk_1D33E5590, v8);
}

@end