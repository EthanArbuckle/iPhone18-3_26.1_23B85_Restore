@interface MultilineButton
- (_TtC28HealthExposureNotificationUI15MultilineButton)initWithCoder:(id)a3;
- (_TtC28HealthExposureNotificationUI15MultilineButton)initWithFrame:(CGRect)a3;
@end

@implementation MultilineButton

- (_TtC28HealthExposureNotificationUI15MultilineButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14.receiver = self;
  v14.super_class = type metadata accessor for MultilineButton();
  v7 = [(MultilineButton *)&v14 initWithFrame:x, y, width, height];
  v8 = [(MultilineButton *)v7 titleLabel];
  if (v8)
  {
    v9 = v8;
    v10 = [(MultilineButton *)v7 heightAnchor];
    v11 = [v9 heightAnchor];
    v12 = [v10 constraintGreaterThanOrEqualToAnchor_];

    [v12 setActive_];
  }

  return v7;
}

- (_TtC28HealthExposureNotificationUI15MultilineButton)initWithCoder:(id)a3
{
  result = sub_251703584();
  __break(1u);
  return result;
}

@end