@interface DBModelPolicyAssertion
- (_TtC9DashBoard22DBModelPolicyAssertion)init;
- (void)acquireAssertionWithCompletionHandler:(id)a3;
- (void)invalidateWithCompletionHandler:(id)a3;
@end

@implementation DBModelPolicyAssertion

- (_TtC9DashBoard22DBModelPolicyAssertion)init
{
  *(&self->super.isa + OBJC_IVAR____TtC9DashBoard22DBModelPolicyAssertion_assertion) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DBModelPolicyAssertion();
  return [(DBModelPolicyAssertion *)&v3 init];
}

- (void)acquireAssertionWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_248383BE0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2483A2DB0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2483A2DB8;
  v12[5] = v11;
  v13 = self;
  sub_248376ED4(0, 0, v7, &unk_2483A2DC0, v12);
}

- (void)invalidateWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_248383BE0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2483A2D68;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2483A2D78;
  v12[5] = v11;
  v13 = self;
  sub_248376ED4(0, 0, v7, &unk_2483A2D88, v12);
}

@end