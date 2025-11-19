@interface HPSCenterContentCell
- (_TtC16HeadphoneConfigs20HPSCenterContentCell)initWithCoder:(id)a3;
- (_TtC16HeadphoneConfigs20HPSCenterContentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC16HeadphoneConfigs20HPSCenterContentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)addSubview:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation HPSCenterContentCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2511ED34C();
}

- (void)addSubview:(id)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for HPSCenterContentCell();
  [(HPSCenterContentCell *)&v4 addSubview:a3];
}

- (_TtC16HeadphoneConfigs20HPSCenterContentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  if (a4)
  {
    v7 = sub_25121179C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5;
  return sub_2511E9ACC(a3, v7, v9, a5);
}

- (_TtC16HeadphoneConfigs20HPSCenterContentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    sub_25121179C();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR____TtC16HeadphoneConfigs20HPSCenterContentCell_label;
  *(&self->super.super.super.super.super.isa + v8) = sub_2511E98F4();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs20HPSCenterContentCell_headphoneDevice) = 0;
  if (v7)
  {
    v9 = sub_25121176C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for HPSCenterContentCell();
  v10 = [(PSTableCell *)&v12 initWithStyle:a3 reuseIdentifier:v9];

  return v10;
}

- (_TtC16HeadphoneConfigs20HPSCenterContentCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC16HeadphoneConfigs20HPSCenterContentCell_label;
  v5 = a3;
  *(&self->super.super.super.super.super.isa + v4) = sub_2511E98F4();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs20HPSCenterContentCell_headphoneDevice) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for HPSCenterContentCell();
  v6 = [(HPSCenterContentCell *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end