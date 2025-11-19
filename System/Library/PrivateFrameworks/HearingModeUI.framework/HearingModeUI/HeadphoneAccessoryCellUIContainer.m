@interface HeadphoneAccessoryCellUIContainer
+ (NSString)deviceKey;
+ (NSString)embeddedViewKey;
+ (NSString)fullBoundsTreatmentKey;
- (_TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer)initWithCoder:(id)a3;
- (_TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
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

- (_TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  if (a4)
  {
    v7 = sub_252064724();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5;
  return sub_25204467C(a3, v7, v9, a5);
}

- (_TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_252064724();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_252044950(a3, a4, v6);
}

- (_TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer____lazy_storage___stackView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13HearingModeUI33HeadphoneAccessoryCellUIContainer_traiRegestration) = 0;
  result = sub_252064A74();
  __break(1u);
  return result;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_252044C34(a3);
}

@end