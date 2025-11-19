@interface TextViewFooterTableViewCell
- (_TtC18HealthExperienceUI27TextViewFooterTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation TextViewFooterTableViewCell

- (_TtC18HealthExperienceUI27TextViewFooterTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return TextViewFooterTableViewCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

@end