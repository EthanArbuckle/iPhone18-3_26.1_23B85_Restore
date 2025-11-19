@interface HPSAdaptiveVolumeDetailController
- (_TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController)initWithCoder:(id)a3;
- (_TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (void)viewDidLoad;
@end

@implementation HPSAdaptiveVolumeDetailController

- (_TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_25121179C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_2511CA984(v5, v7, a4);
}

- (_TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController_headphoneDevice) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController_listeners) = MEMORY[0x277D84FA0];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs33HPSAdaptiveVolumeDetailController____lazy_storage___sliderSection) = 0;
  result = sub_251211C4C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2511CAFD4();
}

- (id)specifiers
{
  v2 = self;
  v3 = sub_2511CB4CC();

  if (v3)
  {
    v4 = sub_25121186C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end