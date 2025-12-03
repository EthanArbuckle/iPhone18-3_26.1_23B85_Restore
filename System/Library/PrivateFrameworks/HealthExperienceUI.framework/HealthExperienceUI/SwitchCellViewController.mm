@interface SwitchCellViewController
- (_TtC18HealthExperienceUI24SwitchCellViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)switchTapped;
@end

@implementation SwitchCellViewController

- (void)switchTapped
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.isa) + 0xF0);
  selfCopy = self;
  v3 = v2();
  if (v3)
  {
    v5 = v3;
    v6 = v4;
    v7 = sub_1BA04A9DC();
    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = v7;
    ObjectType = swift_getObjectType();
    isOn = [v8 isOn];

    (*(v6 + 16))(isOn, ObjectType, v6);
  }
}

- (_TtC18HealthExperienceUI24SwitchCellViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return SwitchCellViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end