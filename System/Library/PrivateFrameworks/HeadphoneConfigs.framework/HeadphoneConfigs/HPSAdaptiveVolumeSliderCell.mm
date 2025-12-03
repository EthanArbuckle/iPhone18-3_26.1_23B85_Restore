@interface HPSAdaptiveVolumeSliderCell
- (_TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation HPSAdaptiveVolumeSliderCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  sub_2511C95F0(specifier);
}

- (_TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
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
  return sub_2511CA394(style, v7, v9, specifier);
}

- (_TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell____lazy_storage___slider) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell_listeners) = MEMORY[0x277D84FA0];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell_headphoneDevice) = 0;
  if (v7)
  {
    v8 = sub_25121176C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for HPSAdaptiveVolumeSliderCell();
  v9 = [(PSTableCell *)&v11 initWithStyle:style reuseIdentifier:v8];

  return v9;
}

@end