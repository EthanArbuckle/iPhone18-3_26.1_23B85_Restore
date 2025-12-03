@interface HPSVisionOSSubtitleOnOffIndicatorCell
+ (NSString)cellDisabledKey;
+ (NSString)onOffKey;
- (_TtC16HeadphoneConfigs37HPSVisionOSSubtitleOnOffIndicatorCell)initWithCoder:(id)coder;
- (_TtC16HeadphoneConfigs37HPSVisionOSSubtitleOnOffIndicatorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC16HeadphoneConfigs37HPSVisionOSSubtitleOnOffIndicatorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
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

- (_TtC16HeadphoneConfigs37HPSVisionOSSubtitleOnOffIndicatorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
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
  return sub_2511E7260(style, v7, v9, specifier);
}

- (_TtC16HeadphoneConfigs37HPSVisionOSSubtitleOnOffIndicatorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
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
  v7 = [(PSTableCell *)&v10 initWithStyle:style reuseIdentifier:v6];

  v8 = v7;
  [(HPSVisionOSSubtitleOnOffIndicatorCell *)v8 setAccessoryType:0];
  [(HPSVisionOSSubtitleOnOffIndicatorCell *)v8 setHoverStyle:0];

  return v8;
}

- (_TtC16HeadphoneConfigs37HPSVisionOSSubtitleOnOffIndicatorCell)initWithCoder:(id)coder
{
  result = sub_251211C4C();
  __break(1u);
  return result;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  sub_2511E75DC(specifier);
}

@end