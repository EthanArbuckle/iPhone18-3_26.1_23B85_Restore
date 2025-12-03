@interface HKAttributedDurationFormatter
+ (id)formattedValueWithDuration:(double)duration unitsStyle:(int64_t)style font:(id)font valueColor:(id)color unitColor:(id)unitColor;
- (HKAttributedDurationFormatter)init;
@end

@implementation HKAttributedDurationFormatter

- (HKAttributedDurationFormatter)init
{
  result = sub_1C3D20944();
  __break(1u);
  return result;
}

+ (id)formattedValueWithDuration:(double)duration unitsStyle:(int64_t)style font:(id)font valueColor:(id)color unitColor:(id)unitColor
{
  fontCopy = font;
  colorCopy = color;
  unitColorCopy = unitColor;
  v13 = sub_1C3C60410(style, fontCopy, colorCopy, unitColorCopy);

  return v13;
}

@end