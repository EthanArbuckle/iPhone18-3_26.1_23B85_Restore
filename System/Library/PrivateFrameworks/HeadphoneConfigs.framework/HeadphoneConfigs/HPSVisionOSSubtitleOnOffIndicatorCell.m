@interface HPSVisionOSSubtitleOnOffIndicatorCell
+ (NSString)cellDisabledKey;
+ (NSString)onOffKey;
- (_TtC16HeadphoneConfigs37HPSVisionOSSubtitleOnOffIndicatorCell)initWithCoder:(id)a3;
- (_TtC16HeadphoneConfigs37HPSVisionOSSubtitleOnOffIndicatorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC16HeadphoneConfigs37HPSVisionOSSubtitleOnOffIndicatorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation HPSVisionOSSubtitleOnOffIndicatorCell

+ (NSString)onOffKey
{
  v2 = sub_25121176C();

  return v2;
}

+ (NSString)cellDisabledKey
{
  v2 = sub_25121176C();

  return v2;
}

- (_TtC16HeadphoneConfigs37HPSVisionOSSubtitleOnOffIndicatorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
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
  return sub_2511E7260(a3, v7, v9, a5);
}

- (_TtC16HeadphoneConfigs37HPSVisionOSSubtitleOnOffIndicatorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    sub_25121179C();
    v6 = sub_25121176C();
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for HPSVisionOSSubtitleOnOffIndicatorCell();
  v7 = [(PSTableCell *)&v10 initWithStyle:a3 reuseIdentifier:v6];

  v8 = v7;
  [(HPSVisionOSSubtitleOnOffIndicatorCell *)v8 setAccessoryType:0];
  [(HPSVisionOSSubtitleOnOffIndicatorCell *)v8 setHoverStyle:0];

  return v8;
}

- (_TtC16HeadphoneConfigs37HPSVisionOSSubtitleOnOffIndicatorCell)initWithCoder:(id)a3
{
  result = sub_251211C4C();
  __break(1u);
  return result;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2511E75DC(a3);
}

@end