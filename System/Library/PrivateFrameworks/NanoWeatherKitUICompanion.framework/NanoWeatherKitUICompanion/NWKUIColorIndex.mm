@interface NWKUIColorIndex
+ (id)colorForValue:(double)value;
+ (id)indexForValue:(double)value;
+ (id)indexWithValue:(double)value color:(id)color;
+ (id)zeroIndex;
- (BOOL)isEqual:(id)equal;
- (NWKUIColorIndex)initWithValue:(double)value color:(id)color;
@end

@implementation NWKUIColorIndex

+ (id)colorForValue:(double)value
{
  if ([objc_opt_class() conformsToProtocol:&unk_286D125E0])
  {
    allIndices = [objc_opt_class() allIndices];
    whiteColor = NWMColorForValueInIndices(allIndices, value);
  }

  else
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
  }

  return whiteColor;
}

+ (id)indexForValue:(double)value
{
  if ([objc_opt_class() conformsToProtocol:&unk_286D125E0])
  {
    allIndices = [objc_opt_class() allIndices];
    v5 = NWMColorIndexForValueInIndices(allIndices, value);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)zeroIndex
{
  if ([objc_opt_class() conformsToProtocol:&unk_286D125E0])
  {
    allIndices = [self allIndices];
    [allIndices firstObject];
  }

  else
  {
    allIndices = [MEMORY[0x277D75348] whiteColor];
    [self indexWithValue:allIndices color:0.0];
  }
  v4 = ;

  return v4;
}

+ (id)indexWithValue:(double)value color:(id)color
{
  colorCopy = color;
  v6 = [[NWKUIColorIndex alloc] initWithValue:colorCopy color:value];

  return v6;
}

- (NWKUIColorIndex)initWithValue:(double)value color:(id)color
{
  colorCopy = color;
  v11.receiver = self;
  v11.super_class = NWKUIColorIndex;
  v8 = [(NWKUIColorIndex *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_value = value;
    objc_storeStrong(&v8->_color, color);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(NWKUIColorIndex *)self value];
      v7 = v6;
      [(NWKUIColorIndex *)v5 value];
      if (v7 == v8)
      {
        color = [(NWKUIColorIndex *)self color];
        color2 = [(NWKUIColorIndex *)v5 color];
        v11 = [color isEqual:color2];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

@end