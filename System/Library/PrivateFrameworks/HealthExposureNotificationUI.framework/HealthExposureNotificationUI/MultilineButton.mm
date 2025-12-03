@interface MultilineButton
- (_TtC28HealthExposureNotificationUI15MultilineButton)initWithCoder:(id)coder;
- (_TtC28HealthExposureNotificationUI15MultilineButton)initWithFrame:(CGRect)frame;
@end

@implementation MultilineButton

- (_TtC28HealthExposureNotificationUI15MultilineButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v14.receiver = self;
  v14.super_class = type metadata accessor for MultilineButton();
  height = [(MultilineButton *)&v14 initWithFrame:x, y, width, height];
  titleLabel = [(MultilineButton *)height titleLabel];
  if (titleLabel)
  {
    v9 = titleLabel;
    heightAnchor = [(MultilineButton *)height heightAnchor];
    heightAnchor2 = [v9 heightAnchor];
    constraintGreaterThanOrEqualToAnchor_ = [heightAnchor constraintGreaterThanOrEqualToAnchor_];

    [constraintGreaterThanOrEqualToAnchor_ setActive_];
  }

  return height;
}

- (_TtC28HealthExposureNotificationUI15MultilineButton)initWithCoder:(id)coder
{
  result = sub_251703584();
  __break(1u);
  return result;
}

@end