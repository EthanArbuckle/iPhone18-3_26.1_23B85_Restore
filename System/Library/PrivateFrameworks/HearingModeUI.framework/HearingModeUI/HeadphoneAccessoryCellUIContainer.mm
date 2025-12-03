@interface HeadphoneAccessoryCellUIContainer
+ (NSString)deviceKey;
+ (NSString)embeddedViewKey;
+ (NSString)fullBoundsTreatmentKey;
- (_TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer)initWithCoder:(id)coder;
- (_TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation HeadphoneAccessoryCellUIContainer

+ (NSString)embeddedViewKey
{
  v2 = sub_2520646F4();

  return v2;
}

+ (NSString)fullBoundsTreatmentKey
{
  v2 = sub_2520646F4();

  return v2;
}

+ (NSString)deviceKey
{
  v2 = sub_2520646F4();

  return v2;
}

- (_TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  if (identifier)
  {
    v7 = sub_252064724();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  specifierCopy = specifier;
  return sub_25204467C(style, v7, v9, specifier);
}

- (_TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_252064724();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_252044950(style, identifier, v6);
}

- (_TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer____lazy_storage___stackView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer_traiRegestration) = 0;
  result = sub_252064A74();
  __break(1u);
  return result;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  sub_252044C34(specifier);
}

@end