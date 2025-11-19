@interface NWKUIAirQualityColorIndex
+ (id)colorForIndex:(unint64_t)a3;
+ (id)colorIndexWithIndex:(double)a3 color:(id)a4;
+ (unint64_t)lastIndex;
- (NWKUIAirQualityColorIndex)initWithIndex:(double)a3 color:(id)a4;
@end

@implementation NWKUIAirQualityColorIndex

+ (unint64_t)lastIndex
{
  v2 = [a1 allIndices];
  v3 = [v2 lastObject];
  [v3 value];
  v5 = v4;

  return v5;
}

+ (id)colorForIndex:(unint64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___NWKUIAirQualityColorIndex;
  v3 = objc_msgSendSuper2(&v5, sel_colorForValue_, a3);

  return v3;
}

+ (id)colorIndexWithIndex:(double)a3 color:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithIndex:v6 color:a3];

  return v7;
}

- (NWKUIAirQualityColorIndex)initWithIndex:(double)a3 color:(id)a4
{
  v5.receiver = self;
  v5.super_class = NWKUIAirQualityColorIndex;
  return [(NWKUIColorIndex *)&v5 initWithValue:a4 color:a3];
}

@end