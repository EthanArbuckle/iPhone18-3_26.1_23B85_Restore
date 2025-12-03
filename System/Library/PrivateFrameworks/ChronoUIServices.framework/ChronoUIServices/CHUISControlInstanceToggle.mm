@interface CHUISControlInstanceToggle
- (BOOL)state;
- (CHUISControlIconView)iconView;
- (CHUISControlInstanceToggle)initWithControl:(id)control contentType:(unint64_t)type;
- (CHUISControlInstanceToggle)initWithWidget:(id)widget;
- (CHUISControlToggleViewModel)viewModel;
- (UIColor)tintColor;
@end

@implementation CHUISControlInstanceToggle

- (CHUISControlIconView)iconView
{
  v3 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(&self->CHUISControlInstance_opaque[v3], v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB80, qword_1D932E408);
  swift_dynamicCast();
  v4 = *(v6 + 24);

  return v4;
}

- (UIColor)tintColor
{
  selfCopy = self;
  v3 = CHUISControlInstanceToggle.tintColor.getter();

  return v3;
}

- (BOOL)state
{
  selfCopy = self;
  v3 = CHUISControlInstanceToggle.state.getter();

  return v3 & 1;
}

- (CHUISControlToggleViewModel)viewModel
{
  v3 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(&self->CHUISControlInstance_opaque[v3], v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB80, qword_1D932E408);
  swift_dynamicCast();
  swift_beginAccess();
  v4 = *(v6 + 16);

  return v4;
}

- (CHUISControlInstanceToggle)initWithControl:(id)control contentType:(unint64_t)type
{
  v7 = objc_allocWithZone(MEMORY[0x1E6994270]);
  controlCopy = control;
  v9 = [v7 initWithControl:controlCopy contentType:type hostIdentifier:0 configurationIdentifier:0];
  v10 = [(CHUISControlInstanceToggle *)self initWithInstanceIdentity:v9];

  return v10;
}

- (CHUISControlInstanceToggle)initWithWidget:(id)widget
{
  widgetCopy = widget;
  v4 = sub_1D92E79C8(widgetCopy);

  return v4;
}

@end