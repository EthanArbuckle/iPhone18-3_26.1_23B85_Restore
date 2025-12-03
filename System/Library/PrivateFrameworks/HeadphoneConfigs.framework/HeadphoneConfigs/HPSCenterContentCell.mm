@interface HPSCenterContentCell
- (_TtC16HeadphoneConfigs20HPSCenterContentCell)initWithCoder:(id)coder;
- (_TtC16HeadphoneConfigs20HPSCenterContentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC16HeadphoneConfigs20HPSCenterContentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)addSubview:(id)subview;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation HPSCenterContentCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  sub_2511ED34C();
}

- (void)addSubview:(id)subview
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for HPSCenterContentCell();
  [(HPSCenterContentCell *)&v4 addSubview:subview];
}

- (_TtC16HeadphoneConfigs20HPSCenterContentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  if (identifier)
  {
    v7 = sub_25121179C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  specifierCopy = specifier;
  return sub_2511E9ACC(style, v7, v9, specifier);
}

- (_TtC16HeadphoneConfigs20HPSCenterContentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
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
  v10 = [(PSTableCell *)&v12 initWithStyle:style reuseIdentifier:v9];

  return v10;
}

- (_TtC16HeadphoneConfigs20HPSCenterContentCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC16HeadphoneConfigs20HPSCenterContentCell_label;
  coderCopy = coder;
  *(&self->super.super.super.super.super.isa + v4) = sub_2511E98F4();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs20HPSCenterContentCell_headphoneDevice) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for HPSCenterContentCell();
  v6 = [(HPSCenterContentCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end