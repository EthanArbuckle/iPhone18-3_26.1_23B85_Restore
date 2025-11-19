@interface SliderView.VerticalSlider
- (CGSize)intrinsicContentSize;
- (_TtCV5CAFUI10SliderView14VerticalSlider)initWithFrame:(CGRect)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)sliderTapped:(id)a3;
- (void)trackingEnter:(id)a3;
- (void)valueChanged:(id)a3;
@end

@implementation SliderView.VerticalSlider

- (void)layoutSubviews
{
  v2 = self;
  SliderView.VerticalSlider.layoutSubviews()();
}

- (CGSize)intrinsicContentSize
{
  v3 = OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_slider;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_slider);
  v5 = self;
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

- (void)valueChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  SliderView.VerticalSlider.valueChanged(_:)(v4);
}

- (void)sliderTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  SliderView.VerticalSlider.sliderTapped(_:)(v4);
}

- (void)trackingEnter:(id)a3
{
  v3 = self;
  PassthroughSubject.send(_:)();
  *(&v3->super.super.super.isa + OBJC_IVAR____TtCV5CAFUI10SliderView14VerticalSlider_isTracking) = 1;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  SliderView.VerticalSlider.didUpdateFocus(in:with:)(v6, v7);
}

- (_TtCV5CAFUI10SliderView14VerticalSlider)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end