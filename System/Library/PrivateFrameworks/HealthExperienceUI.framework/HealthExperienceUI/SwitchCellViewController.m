@interface SwitchCellViewController
- (_TtC18HealthExperienceUI24SwitchCellViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)switchTapped;
@end

@implementation SwitchCellViewController

- (void)switchTapped
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.isa) + 0xF0);
  v11 = self;
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
    v10 = [v8 isOn];

    (*(v6 + 16))(v10, ObjectType, v6);
  }
}

- (_TtC18HealthExperienceUI24SwitchCellViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return SwitchCellViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end