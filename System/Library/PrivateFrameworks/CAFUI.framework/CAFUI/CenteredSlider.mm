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
  createThumbView = [(CenteredSlider *)&v7 createThumbView];
  v4 = *&v2[OBJC_IVAR____TtC5CAFUI14CenteredSlider_thumbImageView];
  *&v2[OBJC_IVAR____TtC5CAFUI14CenteredSlider_thumbImageView] = createThumbView;

  v5 = createThumbView;
  return v5;
}

- (void)layoutSubviews
{
  selfCopy = self;
  CenteredSlider.layoutSubviews()();
}

- (void)valueChanged
{
  selfCopy = self;
  CenteredSlider.valueChanged()();
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CenteredSlider();
  v2 = v7.receiver;
  [(CenteredSlider *)&v7 tintColorDidChange];
  v3 = *&v2[OBJC_IVAR____TtC5CAFUI14CenteredSlider_fillLayer];
  tintColor = [v2 tintColor];
  if (tintColor)
  {
    v5 = tintColor;
    cGColor = [tintColor CGColor];

    [v3 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

@end