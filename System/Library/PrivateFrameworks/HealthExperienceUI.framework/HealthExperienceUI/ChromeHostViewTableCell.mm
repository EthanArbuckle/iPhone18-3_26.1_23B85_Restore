@interface ChromeHostViewTableCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (_TtC18HealthExperienceUI23ChromeHostViewTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation ChromeHostViewTableCell

- (_TtC18HealthExperienceUI23ChromeHostViewTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
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
  v7 = [(HostViewTableCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_1BA0B91A0(width, height, priority, fittingPriority);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

@end