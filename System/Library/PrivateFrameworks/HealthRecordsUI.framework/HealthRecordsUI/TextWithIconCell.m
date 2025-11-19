@interface TextWithIconCell
- (_TtC15HealthRecordsUI16TextWithIconCell)initWithCoder:(id)a3;
- (_TtC15HealthRecordsUI16TextWithIconCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation TextWithIconCell

- (_TtC15HealthRecordsUI16TextWithIconCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_1D139016C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1D121A528(a3, a4, v6);
}

- (_TtC15HealthRecordsUI16TextWithIconCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell____lazy_storage___iconView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell____lazy_storage___titleLabel) = 0;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell_baseAccessibilityIdentifier);
  *v3 = 0;
  v3[1] = 0;
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TextWithIconCell();
  v2 = v5.receiver;
  [(TextWithIconCell *)&v5 prepareForReuse];
  v3 = sub_1D121A164();
  [v3 setImage_];

  v4 = sub_1D121A20C();
  [v4 setText_];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for TextWithIconCell();
  v2 = v13.receiver;
  [(TextWithIconCell *)&v13 layoutSubviews];
  v3 = sub_1D121A20C();
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 convertRect:*&v2[OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell____lazy_storage___titleLabel] fromCoordinateSpace:{v5, v7, v9, v11}];
  [v2 setSeparatorInset_];
}

@end