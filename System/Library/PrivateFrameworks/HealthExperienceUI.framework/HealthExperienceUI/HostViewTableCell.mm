@interface HostViewTableCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (_TtC18HealthExperienceUI17HostViewTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation HostViewTableCell

- (_TtC18HealthExperienceUI17HostViewTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return HostViewTableCell.init(style:reuseIdentifier:)(style, identifier, v6);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_1B9F78228(&OBJC_IVAR____TtC18HealthExperienceUI17HostViewTableCell_hostView, type metadata accessor for HostViewTableCell, width, height, priority, fittingPriority);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

@end