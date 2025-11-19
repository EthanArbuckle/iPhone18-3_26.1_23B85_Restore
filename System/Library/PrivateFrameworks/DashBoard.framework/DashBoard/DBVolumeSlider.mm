@interface DBVolumeSlider
- (_TtC9DashBoard14DBVolumeSlider)initWithFrame:(CGRect)a3;
- (double)continuousSliderCornerRadius;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutElasticContentViews;
- (void)minusViewTapped;
- (void)plusViewTapped;
- (void)setContinuousSliderCornerRadius:(double)a3;
- (void)setValue:(float)a3 animated:(BOOL)a4;
@end

@implementation DBVolumeSlider

- (void)setValue:(float)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_2483033B0(a4, a3);
}

- (_TtC9DashBoard14DBVolumeSlider)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)plusViewTapped
{
  v2 = self;
  sub_2483063C0("Audio notification + view tapped", 1);
}

- (void)minusViewTapped
{
  v2 = self;
  sub_2483063C0("Audio notification - view tapped", 0);
}

- (double)continuousSliderCornerRadius
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DBVolumeSlider();
  [(CCUIBaseSliderView *)&v3 continuousSliderCornerRadius];
  return result;
}

- (void)setContinuousSliderCornerRadius:(double)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DBVolumeSlider();
  v4 = v6.receiver;
  [(CCUIBaseSliderView *)&v6 setContinuousSliderCornerRadius:a3];
  v5 = [v4 elasticContentView];
  [v4 continuousSliderCornerRadius];
  [v5 _setContinuousCornerRadius_];
}

- (void)layoutElasticContentViews
{
  v2 = self;
  sub_248306764();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_248306C58(a4, x, y);

  return v10;
}

@end