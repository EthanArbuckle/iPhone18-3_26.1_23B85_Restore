@interface CAMChromeViewController
- (CAMChromeViewController)init;
- (CAMChromeViewController)initWithConfigurator:(id)configurator;
- (CGRect)shutterButtonFrame;
- (UIView)imageWellSourceView;
- (_TtC8CameraUI17ChromeSwiftUIView)view;
- (double)imageWellCornerRadius;
- (void)observeShutterButtonFrameWithHandler:(id)handler;
- (void)setView:(id)view;
@end

@implementation CAMChromeViewController

- (CAMChromeViewController)initWithConfigurator:(id)configurator
{
  *(&self->super.isa + OBJC_IVAR___CAMChromeViewController____lazy_storage___view) = 0;
  *(&self->super.isa + OBJC_IVAR___CAMChromeViewController_viewModel) = *(configurator + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  v4.receiver = self;
  v4.super_class = type metadata accessor for ChromeViewController();
  sub_1A3A2EA60();
  return [(CAMChromeViewController *)&v4 init];
}

- (CAMChromeViewController)init
{
  *(&self->super.isa + OBJC_IVAR___CAMChromeViewController____lazy_storage___view) = 0;
  type metadata accessor for ChromeClosureEventHandler();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1A398F910;
  *(v3 + 24) = 0;
  type metadata accessor for ChromeViewModel();
  v4 = swift_allocObject();
  *(&self->super.isa + OBJC_IVAR___CAMChromeViewController_viewModel) = sub_1A3A1D130(v3, v4, type metadata accessor for ChromeClosureEventHandler, &off_1F165B6C0, sub_1A3A1E6C4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for ChromeViewController();
  return [(CAMChromeViewController *)&v6 init];
}

- (_TtC8CameraUI17ChromeSwiftUIView)view
{
  selfCopy = self;
  v3 = sub_1A3A1A860();

  return v3;
}

- (void)setView:(id)view
{
  v4 = *(&self->super.isa + OBJC_IVAR___CAMChromeViewController____lazy_storage___view);
  *(&self->super.isa + OBJC_IVAR___CAMChromeViewController____lazy_storage___view) = view;
  viewCopy = view;
}

- (UIView)imageWellSourceView
{
  selfCopy = self;
  v3 = sub_1A3A1AC04();

  return v3;
}

- (CGRect)shutterButtonFrame
{
  selfCopy = self;
  v3 = sub_1A3A1AD60();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)observeShutterButtonFrameWithHandler:(id)handler
{
  v4 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  sub_1A3A2F060();
}

- (double)imageWellCornerRadius
{
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v0 = off_1ED997FE0;
  swift_getKeyPath();
  sub_1A3A1E618(&qword_1ED996650, type metadata accessor for SettingsManager);
  sub_1A3A2F080();

  v1 = v0[2];
  swift_getKeyPath();
  sub_1A3A1E618(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v2 = *(v1 + 64);

  result = 24.0;
  if (v2)
  {
    return 10.0;
  }

  return result;
}

@end