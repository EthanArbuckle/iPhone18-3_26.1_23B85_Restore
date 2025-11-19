@interface CHUISControlInstancePicker
- (CHUISControlIconView)iconView;
- (CHUISControlInstancePicker)initWithControl:(id)a3;
- (CHUISControlInstancePicker)initWithControl:(id)a3 contentType:(unint64_t)a4;
- (CHUISControlPickerViewModel)viewModel;
- (NSArray)options;
- (UIColor)tintColor;
- (int64_t)state;
- (void)setState:(int64_t)a3 completion:(id)a4;
@end

@implementation CHUISControlInstancePicker

- (CHUISControlIconView)iconView
{
  v3 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(&self->CHUISControlInstance_opaque[v3], v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB38, &qword_1D932E358);
  swift_dynamicCast();
  v4 = *(v6 + 24);

  return v4;
}

- (UIColor)tintColor
{
  v2 = self;
  v3 = CHUISControlInstancePicker.tintColor.getter();

  return v3;
}

- (int64_t)state
{
  v2 = self;
  v3 = CHUISControlInstancePicker.state.getter();

  return v3;
}

- (NSArray)options
{
  v2 = self;
  v3 = CHUISControlInstancePicker.options.getter();

  if (v3)
  {
    type metadata accessor for CHUISControlPickerOption(v4);
    v5 = sub_1D9328014();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CHUISControlPickerViewModel)viewModel
{
  v3 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(&self->CHUISControlInstance_opaque[v3], v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB38, &qword_1D932E358);
  swift_dynamicCast();
  swift_beginAccess();
  v4 = *(v6 + 16);

  return v4;
}

- (CHUISControlInstancePicker)initWithControl:(id)a3 contentType:(unint64_t)a4
{
  v7 = objc_allocWithZone(MEMORY[0x1E6994270]);
  v8 = a3;
  v9 = [v7 initWithControl:v8 contentType:a4 hostIdentifier:0 configurationIdentifier:0];
  v10 = [(CHUISControlInstancePicker *)self initWithInstanceIdentity:v9];

  return v10;
}

- (void)setState:(int64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1D92E5F5C;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  CHUISControlInstancePicker.setState(_:completion:)(a3, v6, v7);
  sub_1D92E5F4C(v6);
}

- (CHUISControlInstancePicker)initWithControl:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end