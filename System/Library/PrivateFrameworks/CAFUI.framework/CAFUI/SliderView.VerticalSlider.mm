@interface SliderView.VerticalSlider
- (CGSize)intrinsicContentSize;
- (_TtCV5CAFUI10SliderView14VerticalSlider)initWithFrame:(CGRect)frame;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)sliderTapped:(id)tapped;
- (void)trackingEnter:(id)enter;
- (void)valueChanged:(id)changed;
@end

@implementation SliderView.VerticalSlider

- (void)layoutSubviews
{
  selfCopy = self;
  SliderView.VerticalSlider.layoutSubviews()();
}

- (CGSize)intrinsicContentSize
{
  v3 = OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_slider;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_slider);
  selfCopy = self;
  [v4 intrinsicContentSize];
  v7 = v6;
  [*(&self->super.super.super.isa + v3) intrinsicContentSize];
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)valueChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  SliderView.VerticalSlider.valueChanged(_:)(changedCopy);
}

- (void)sliderTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  SliderView.VerticalSlider.sliderTapped(_:)(tappedCopy);
}

- (void)trackingEnter:(id)enter
{
  selfCopy = self;
  PassthroughSubject.send(_:)();
  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_isTracking) = 1;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  SliderView.VerticalSlider.didUpdateFocus(in:with:)(contextCopy, coordinatorCopy);
}

- (_TtCV5CAFUI10SliderView14VerticalSlider)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end