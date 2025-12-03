@interface GradientConfigurationController
- (_TtC11EmojiPoster31GradientConfigurationController)initWithNibName:(id)name bundle:(id)bundle;
- (void)attributeSliderValueChangedWithSlider:(id)slider;
- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously;
- (void)colorPickerViewControllerDidFinish:(id)finish;
- (void)viewDidLoad;
@end

@implementation GradientConfigurationController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_249FF5738();
}

- (void)attributeSliderValueChangedWithSlider:(id)slider
{
  sliderCopy = slider;
  selfCopy = self;
  sub_249FF668C(sliderCopy);
}

- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously
{
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_colorUpdater);
  if (v5)
  {
    colorCopy = color;
    selfCopy = self;
    sub_249FF6FBC(v5);
    v5(colorCopy);

    sub_249FF6C8C(v5);
  }
}

- (void)colorPickerViewControllerDidFinish:(id)finish
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_colorUpdater);
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_colorUpdater);
  *v3 = 0;
  v3[1] = 0;
  selfCopy = self;
  sub_249FF6C8C(v4);
}

- (_TtC11EmojiPoster31GradientConfigurationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end