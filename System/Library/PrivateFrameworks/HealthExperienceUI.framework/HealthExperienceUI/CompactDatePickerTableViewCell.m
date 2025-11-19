@interface CompactDatePickerTableViewCell
- (CGPoint)accessibilityActivationPoint;
- (_TtC18HealthExperienceUI30CompactDatePickerTableViewCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI30CompactDatePickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)compactDatePickerView:(id)a3 didChangeValue:(id)a4;
@end

@implementation CompactDatePickerTableViewCell

- (_TtC18HealthExperienceUI30CompactDatePickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return CompactDatePickerTableViewCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

- (_TtC18HealthExperienceUI30CompactDatePickerTableViewCell)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___containerView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___compactPicker) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)compactDatePickerView:(id)a3 didChangeValue:(id)a4
{
  v6 = sub_1BA4A1728();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A16F8();
  v10 = a3;
  v11 = self;
  sub_1BA2931BC(v9);

  (*(v7 + 8))(v9, v6);
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = self;
  v3 = sub_1BA292494();
  [v3 accessibilityActivationPoint];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

@end