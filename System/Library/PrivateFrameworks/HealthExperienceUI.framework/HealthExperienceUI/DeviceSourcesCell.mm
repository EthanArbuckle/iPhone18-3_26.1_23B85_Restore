@interface DeviceSourcesCell
- (_TtC18HealthExperienceUI17DeviceSourcesCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI17DeviceSourcesCell)initWithFrame:(CGRect)frame;
@end

@implementation DeviceSourcesCell

- (_TtC18HealthExperienceUI17DeviceSourcesCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DeviceSourcesCell();
  return [(IconWithNameCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI17DeviceSourcesCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DeviceSourcesCell();
  coderCopy = coder;
  v5 = [(IconWithNameCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end