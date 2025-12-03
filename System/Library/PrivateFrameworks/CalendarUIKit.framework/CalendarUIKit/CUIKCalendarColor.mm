@interface CUIKCalendarColor
+ (NSString)providerIdentifier;
+ (id)deserializeColor:(id)color;
- (CUIKCalendarColor)init;
@end

@implementation CUIKCalendarColor

+ (NSString)providerIdentifier
{
  v2 = sub_1CAD4DF54();

  return v2;
}

+ (id)deserializeColor:(id)color
{
  colorCopy = color;
  v4 = sub_1CAD4C024();
  v6 = v5;

  v7 = _s13CalendarUIKit17CUIKCalendarColorC011deserializeD0ySo7UIColorCSg10Foundation4DataVFZ_0();
  sub_1CABB8C1C(v4, v6);

  return v7;
}

- (CUIKCalendarColor)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CUIKCalendarColor();
  return [(CUIKCalendarColor *)&v3 init];
}

@end