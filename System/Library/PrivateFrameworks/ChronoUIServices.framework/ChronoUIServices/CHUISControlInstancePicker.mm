@interface CHUISControlInstancePicker
- (CHUISControlIconView)iconView;
- (CHUISControlInstancePicker)initWithControl:(id)control;
- (CHUISControlInstancePicker)initWithControl:(id)control contentType:(unint64_t)type;
- (CHUISControlPickerViewModel)viewModel;
- (NSArray)options;
- (UIColor)tintColor;
- (int64_t)state;
- (void)setState:(int64_t)state completion:(id)completion;
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
  selfCopy = self;
  v3 = CHUISControlInstancePicker.tintColor.getter();

  return v3;
}

- (int64_t)state
{
  selfCopy = self;
  v3 = CHUISControlInstancePicker.state.getter();

  return v3;
}

- (NSArray)options
{
  selfCopy = self;
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

- (CHUISControlInstancePicker)initWithControl:(id)control contentType:(unint64_t)type
{
  v7 = objc_allocWithZone(MEMORY[0x1E6994270]);
  controlCopy = control;
  v9 = [v7 initWithControl:controlCopy contentType:type hostIdentifier:0 configurationIdentifier:0];
  v10 = [(CHUISControlInstancePicker *)self initWithInstanceIdentity:v9];

  return v10;
}

- (void)setState:(int64_t)state completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  selfCopy = self;
  CHUISControlInstancePicker.setState(_:completion:)(state, v6, v7);
  sub_1D92E5F4C(v6);
}

- (CHUISControlInstancePicker)initWithControl:(id)control
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end