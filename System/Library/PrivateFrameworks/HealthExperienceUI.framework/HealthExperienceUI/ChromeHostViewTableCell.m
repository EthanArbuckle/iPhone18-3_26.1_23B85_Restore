@interface ChromeHostViewTableCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (_TtC18HealthExperienceUI23ChromeHostViewTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation ChromeHostViewTableCell

- (_TtC18HealthExperienceUI23ChromeHostViewTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for ChromeHostViewTableCell(0);
  v7 = [(HostViewTableCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = self;
  sub_1BA0B91A0(width, height, a4, a5);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

@end