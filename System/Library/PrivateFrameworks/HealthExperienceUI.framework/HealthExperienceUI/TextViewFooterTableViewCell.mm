@interface TextViewFooterTableViewCell
- (_TtC18HealthExperienceUI27TextViewFooterTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation TextViewFooterTableViewCell

- (_TtC18HealthExperienceUI27TextViewFooterTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return TextViewFooterTableViewCell.init(style:reuseIdentifier:)(style, identifier, v6);
}

@end