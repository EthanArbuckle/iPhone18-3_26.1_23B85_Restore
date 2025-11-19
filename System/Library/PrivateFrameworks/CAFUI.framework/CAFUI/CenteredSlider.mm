@interface CenteredSlider
- (id)createThumbView;
- (void)layoutSubviews;
- (void)tintColorDidChange;
- (void)valueChanged;
@end

@implementation CenteredSlider

- (id)createThumbView
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CenteredSlider();
  v2 = v7.receiver;
  v3 = [(CenteredSlider *)&v7 createThumbView];
  v4 = *&v2[OBJC_IVAR____TtC5CAFUI14CenteredSlider_thumbImageView];
  *&v2[OBJC_IVAR____TtC5CAFUI14CenteredSlider_thumbImageView] = v3;

  v5 = v3;
  return v5;
}

- (void)layoutSubviews
{
  v2 = self;
  CenteredSlider.layoutSubviews()();
}

- (void)valueChanged
{
  v2 = self;
  CenteredSlider.valueChanged()();
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CenteredSlider();
  v2 = v7.receiver;
  [(CenteredSlider *)&v7 tintColorDidChange];
  v3 = *&v2[OBJC_IVAR____TtC5CAFUI14CenteredSlider_fillLayer];
  v4 = [v2 tintColor];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 CGColor];

    [v3 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

@end