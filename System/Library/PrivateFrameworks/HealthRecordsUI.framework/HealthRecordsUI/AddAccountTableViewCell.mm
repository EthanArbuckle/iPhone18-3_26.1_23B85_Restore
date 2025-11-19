@interface AddAccountTableViewCell
+ (NSString)reuseIdentifier;
- (_TtC15HealthRecordsUI23AddAccountTableViewCell)initWithCoder:(id)a3;
- (_TtC15HealthRecordsUI23AddAccountTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)tintColorDidChange;
@end

@implementation AddAccountTableViewCell

+ (NSString)reuseIdentifier
{
  v2 = sub_1D139012C();

  return v2;
}

- (_TtC15HealthRecordsUI23AddAccountTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    sub_1D139016C();
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI23AddAccountTableViewCell_alignWithAccountTitle) = 0;
    v6 = sub_1D139012C();
  }

  else
  {
    v6 = 0;
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI23AddAccountTableViewCell_alignWithAccountTitle) = 0;
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for AddAccountTableViewCell();
  v7 = [(HRStandardTableViewCell *)&v10 initWithStyle:a3 reuseIdentifier:v6];

  v8 = v7;
  sub_1D116E0F4();

  return v8;
}

- (_TtC15HealthRecordsUI23AddAccountTableViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI23AddAccountTableViewCell_alignWithAccountTitle) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AddAccountTableViewCell();
  v4 = a3;
  v5 = [(HRStandardTableViewCell *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1D116E0F4();
  }

  return v6;
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AddAccountTableViewCell();
  v2 = v6.receiver;
  [(AddAccountTableViewCell *)&v6 tintColorDidChange];
  v3 = [v2 textLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 tintColor];
    [v4 setTextColor_];
  }
}

@end