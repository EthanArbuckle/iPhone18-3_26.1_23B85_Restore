@interface HostViewTableCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (_TtC18HealthExperienceUI17HostViewTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation HostViewTableCell

- (_TtC18HealthExperienceUI17HostViewTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return HostViewTableCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = self;
  sub_1B9F78228(&OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_hostView, type metadata accessor for HostViewTableCell, width, height, a4, a5);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

@end