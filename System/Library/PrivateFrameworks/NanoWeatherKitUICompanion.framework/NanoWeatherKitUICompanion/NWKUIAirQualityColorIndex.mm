@interface NWKUIAirQualityColorIndex
+ (id)colorForIndex:(unint64_t)index;
+ (id)colorIndexWithIndex:(double)index color:(id)color;
+ (unint64_t)lastIndex;
- (NWKUIAirQualityColorIndex)initWithIndex:(double)index color:(id)color;
@end

@implementation NWKUIAirQualityColorIndex

+ (unint64_t)lastIndex
{
  allIndices = [self allIndices];
  lastObject = [allIndices lastObject];
  [lastObject value];
  v5 = v4;

  return v5;
}

+ (id)colorForIndex:(unint64_t)index
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___NWKUIAirQualityColorIndex;
  v3 = objc_msgSendSuper2(&v5, sel_colorForValue_, index);

  return v3;
}

+ (id)colorIndexWithIndex:(double)index color:(id)color
{
  colorCopy = color;
  v7 = [[self alloc] initWithIndex:colorCopy color:index];

  return v7;
}

- (NWKUIAirQualityColorIndex)initWithIndex:(double)index color:(id)color
{
  v5.receiver = self;
  v5.super_class = NWKUIAirQualityColorIndex;
  return [(NWKUIColorIndex *)&v5 initWithValue:color color:index];
}

@end