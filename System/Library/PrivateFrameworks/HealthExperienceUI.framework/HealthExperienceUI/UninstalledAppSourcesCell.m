@interface UninstalledAppSourcesCell
- (_TtC18HealthExperienceUI25UninstalledAppSourcesCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI25UninstalledAppSourcesCell)initWithFrame:(CGRect)a3;
@end

@implementation UninstalledAppSourcesCell

- (_TtC18HealthExperienceUI25UninstalledAppSourcesCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for UninstalledAppSourcesCell();
  return [(EmptyIconSourcesCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI25UninstalledAppSourcesCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UninstalledAppSourcesCell();
  v4 = a3;
  v5 = [(EmptyIconSourcesCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end