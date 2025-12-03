@interface DBVolumeSlider
- (_TtC9DashBoard14DBVolumeSlider)initWithFrame:(CGRect)frame;
- (double)continuousSliderCornerRadius;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutElasticContentViews;
- (void)minusViewTapped;
- (void)plusViewTapped;
- (void)setContinuousSliderCornerRadius:(double)radius;
- (void)setValue:(float)value animated:(BOOL)animated;
@end

@implementation DBVolumeSlider

- (void)setValue:(float)value animated:(BOOL)animated
{
  selfCopy = self;
  sub_2483033B0(animated, value);
}

- (_TtC9DashBoard14DBVolumeSlider)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)plusViewTapped
{
  selfCopy = self;
  sub_2483063C0("Audio notification + view tapped", 1);
}

- (void)minusViewTapped
{
  selfCopy = self;
  sub_2483063C0("Audio notification - view tapped", 0);
}

- (double)continuousSliderCornerRadius
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DBVolumeSlider();
  [(CCUIBaseSliderView *)&v3 continuousSliderCornerRadius];
  return result;
}

- (void)setContinuousSliderCornerRadius:(double)radius
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DBVolumeSlider();
  v4 = v6.receiver;
  [(CCUIBaseSliderView *)&v6 setContinuousSliderCornerRadius:radius];
  elasticContentView = [v4 elasticContentView];
  [v4 continuousSliderCornerRadius];
  [elasticContentView _setContinuousCornerRadius_];
}

- (void)layoutElasticContentViews
{
  selfCopy = self;
  sub_248306764();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_248306C58(event, x, y);

  return v10;
}

@end