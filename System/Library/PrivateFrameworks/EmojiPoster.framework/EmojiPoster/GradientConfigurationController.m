@interface GradientConfigurationController
- (_TtC11EmojiPoster31GradientConfigurationController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)attributeSliderValueChangedWithSlider:(id)a3;
- (void)colorPickerViewController:(id)a3 didSelectColor:(id)a4 continuously:(BOOL)a5;
- (void)colorPickerViewControllerDidFinish:(id)a3;
- (void)viewDidLoad;
@end

@implementation GradientConfigurationController

- (void)viewDidLoad
{
  v2 = self;
  sub_249FF5738();
}

- (void)attributeSliderValueChangedWithSlider:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_249FF668C(v4);
}

- (void)colorPickerViewController:(id)a3 didSelectColor:(id)a4 continuously:(BOOL)a5
{
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_colorUpdater);
  if (v5)
  {
    v7 = a4;
    v8 = self;
    sub_249FF6FBC(v5);
    v5(v7);

    sub_249FF6C8C(v5);
  }
}

- (void)colorPickerViewControllerDidFinish:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_colorUpdater);
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_colorUpdater);
  *v3 = 0;
  v3[1] = 0;
  v5 = self;
  sub_249FF6C8C(v4);
}

- (_TtC11EmojiPoster31GradientConfigurationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end