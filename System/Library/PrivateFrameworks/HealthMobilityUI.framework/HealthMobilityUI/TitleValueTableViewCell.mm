@interface TitleValueTableViewCell
- (_TtC16HealthMobilityUI23TitleValueTableViewCell)initWithCoder:(id)coder;
- (_TtC16HealthMobilityUI23TitleValueTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)tintColorDidChange;
@end

@implementation TitleValueTableViewCell

- (_TtC16HealthMobilityUI23TitleValueTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_2519AEE38();
    v5 = self + OBJC_IVAR____TtC16HealthMobilityUI23TitleValueTableViewCell_item;
    *v5 = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 4) = 0;
    v6 = sub_2519AEE28();
  }

  else
  {
    v6 = 0;
    v7 = self + OBJC_IVAR____TtC16HealthMobilityUI23TitleValueTableViewCell_item;
    *v7 = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 4) = 0;
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for TitleValueTableViewCell();
  v8 = [(TitleValueTableViewCell *)&v10 initWithStyle:1 reuseIdentifier:v6];

  return v8;
}

- (_TtC16HealthMobilityUI23TitleValueTableViewCell)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC16HealthMobilityUI23TitleValueTableViewCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_2519AF198();
  __break(1u);
  return result;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TitleValueTableViewCell();
  v2 = v3.receiver;
  [(TitleValueTableViewCell *)&v3 tintColorDidChange];
  sub_251994260();
}

@end