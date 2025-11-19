@interface CHUISControlInstanceButton
- (CHUISControlButtonViewModel)viewModel;
- (CHUISControlIconView)iconView;
- (CHUISControlInstanceButton)initWithControl:(id)a3;
- (CHUISControlInstanceButton)initWithControl:(id)a3 contentType:(unint64_t)a4;
- (NSString)title;
- (UIColor)tintColor;
@end

@implementation CHUISControlInstanceButton

- (NSString)title
{
  v2 = self;
  CHUISControlInstanceButton.title.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1D9327F74();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CHUISControlIconView)iconView
{
  v3 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(&self->CHUISControlInstance_opaque[v3], v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA38, qword_1D932DF18);
  swift_dynamicCast();
  v4 = *(v6 + 24);

  return v4;
}

- (UIColor)tintColor
{
  v2 = self;
  v3 = CHUISControlInstanceButton.tintColor.getter();

  return v3;
}

- (CHUISControlButtonViewModel)viewModel
{
  v3 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(&self->CHUISControlInstance_opaque[v3], v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA38, qword_1D932DF18);
  swift_dynamicCast();
  swift_beginAccess();
  v4 = *(v6 + 16);

  return v4;
}

- (CHUISControlInstanceButton)initWithControl:(id)a3 contentType:(unint64_t)a4
{
  v7 = objc_allocWithZone(MEMORY[0x1E6994270]);
  v8 = a3;
  v9 = [v7 initWithControl:v8 contentType:a4 hostIdentifier:0 configurationIdentifier:0];
  v10 = [(CHUISControlInstanceButton *)self initWithInstanceIdentity:v9];

  return v10;
}

- (CHUISControlInstanceButton)initWithControl:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end