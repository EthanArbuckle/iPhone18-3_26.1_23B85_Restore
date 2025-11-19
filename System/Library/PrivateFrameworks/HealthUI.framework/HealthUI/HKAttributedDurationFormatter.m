@interface HKAttributedDurationFormatter
+ (id)formattedValueWithDuration:(double)a3 unitsStyle:(int64_t)a4 font:(id)a5 valueColor:(id)a6 unitColor:(id)a7;
- (HKAttributedDurationFormatter)init;
@end

@implementation HKAttributedDurationFormatter

- (HKAttributedDurationFormatter)init
{
  result = sub_1C3D20944();
  __break(1u);
  return result;
}

+ (id)formattedValueWithDuration:(double)a3 unitsStyle:(int64_t)a4 font:(id)a5 valueColor:(id)a6 unitColor:(id)a7
{
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = sub_1C3C60410(a4, v10, v11, v12);

  return v13;
}

@end