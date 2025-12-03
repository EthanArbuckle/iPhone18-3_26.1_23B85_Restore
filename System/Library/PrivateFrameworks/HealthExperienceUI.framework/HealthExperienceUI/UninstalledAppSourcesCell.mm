@interface UninstalledAppSourcesCell
- (_TtC18HealthExperienceUI25UninstalledAppSourcesCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI25UninstalledAppSourcesCell)initWithFrame:(CGRect)frame;
@end

@implementation UninstalledAppSourcesCell

- (_TtC18HealthExperienceUI25UninstalledAppSourcesCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for UninstalledAppSourcesCell();
  return [(EmptyIconSourcesCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI25UninstalledAppSourcesCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UninstalledAppSourcesCell();
  coderCopy = coder;
  v5 = [(EmptyIconSourcesCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end