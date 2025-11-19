@interface NWKUIColorIndex
+ (id)colorForValue:(double)a3;
+ (id)indexForValue:(double)a3;
+ (id)indexWithValue:(double)a3 color:(id)a4;
+ (id)zeroIndex;
- (BOOL)isEqual:(id)a3;
- (NWKUIColorIndex)initWithValue:(double)a3 color:(id)a4;
@end

@implementation NWKUIColorIndex

+ (id)colorForValue:(double)a3
{
  if ([objc_opt_class() conformsToProtocol:&unk_286D125E0])
  {
    v4 = [objc_opt_class() allIndices];
    v5 = NWMColorForValueInIndices(v4, a3);
  }

  else
  {
    v5 = [MEMORY[0x277D75348] whiteColor];
  }

  return v5;
}

+ (id)indexForValue:(double)a3
{
  if ([objc_opt_class() conformsToProtocol:&unk_286D125E0])
  {
    v4 = [objc_opt_class() allIndices];
    v5 = NWMColorIndexForValueInIndices(v4, a3);
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
    v3 = [a1 allIndices];
    [v3 firstObject];
  }

  else
  {
    v3 = [MEMORY[0x277D75348] whiteColor];
    [a1 indexWithValue:v3 color:0.0];
  }
  v4 = ;

  return v4;
}

+ (id)indexWithValue:(double)a3 color:(id)a4
{
  v5 = a4;
  v6 = [[NWKUIColorIndex alloc] initWithValue:v5 color:a3];

  return v6;
}

- (NWKUIColorIndex)initWithValue:(double)a3 color:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = NWKUIColorIndex;
  v8 = [(NWKUIColorIndex *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_value = a3;
    objc_storeStrong(&v8->_color, a4);
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(NWKUIColorIndex *)self value];
      v7 = v6;
      [(NWKUIColorIndex *)v5 value];
      if (v7 == v8)
      {
        v9 = [(NWKUIColorIndex *)self color];
        v10 = [(NWKUIColorIndex *)v5 color];
        v11 = [v9 isEqual:v10];
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