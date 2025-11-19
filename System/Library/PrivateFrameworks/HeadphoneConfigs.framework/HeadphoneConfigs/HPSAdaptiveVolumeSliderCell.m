@interface HPSAdaptiveVolumeSliderCell
- (_TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation HPSAdaptiveVolumeSliderCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2511C95F0(a3);
}

- (_TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
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
  return sub_2511CA394(a3, v7, v9, a5);
}

- (_TtC16HeadphoneConfigs27HPSAdaptiveVolumeSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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
  v9 = [(PSTableCell *)&v11 initWithStyle:a3 reuseIdentifier:v8];

  return v9;
}

@end