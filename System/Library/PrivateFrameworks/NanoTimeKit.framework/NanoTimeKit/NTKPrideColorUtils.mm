@interface NTKPrideColorUtils
+ (id)axialColorGradientLayer:(unint64_t)layer forDevice:(id)device;
+ (id)gradientColorsForColor:(unint64_t)color device:(id)device;
+ (id)layerForGradientWithColors:(id)colors type:(id)type gradientLocations:(id)locations startPoint:(CGPoint)point endPoint:(CGPoint)endPoint;
+ (id)prideColorGradientColors2020;
@end

@implementation NTKPrideColorUtils

+ (id)layerForGradientWithColors:(id)colors type:(id)type gradientLocations:(id)locations startPoint:(CGPoint)point endPoint:(CGPoint)endPoint
{
  y = endPoint.y;
  x = endPoint.x;
  v9 = point.y;
  v10 = point.x;
  colorsCopy = colors;
  typeCopy = type;
  locationsCopy = locations;
  v16 = objc_alloc_init(MEMORY[0x277CD9EB0]);
  v17 = [colorsCopy count];
  v18 = v17;
  if (*MEMORY[0x277CDA698] == typeCopy)
  {
    if (locationsCopy)
    {
      v20 = [locationsCopy count];
      if (v20 != [colorsCopy count])
      {
        goto LABEL_10;
      }

LABEL_7:
      v35 = locationsCopy;
      v36 = typeCopy;
      v19 = 0;
      LODWORD(locationsCopy) = 0;
      goto LABEL_12;
    }

    v35 = 0;
    v36 = typeCopy;
    v19 = 0;
    v18 = v17 + 1;
    LODWORD(locationsCopy) = 1;
  }

  else
  {
    if (locationsCopy)
    {
      v18 = [locationsCopy count];
      if (v18 == [colorsCopy count] + 2)
      {
        v35 = locationsCopy;
        v36 = typeCopy;
        LODWORD(locationsCopy) = 0;
        v19 = 1;
        goto LABEL_12;
      }

      if (v18 != [colorsCopy count])
      {
LABEL_10:
        v21 = 0;
        goto LABEL_24;
      }

      goto LABEL_7;
    }

    v35 = 0;
    v36 = typeCopy;
    v19 = 0;
  }

LABEL_12:
  v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:v18];
  v23 = v18 - 1;
  v34 = locationsCopy;
  if (v19 | locationsCopy)
  {
    v24 = v18 - 1;
  }

  else
  {
    v24 = v18;
  }

  v25 = v19;
  if (v24 > v19)
  {
    v26 = 0;
    v27 = v24 - v19;
    do
    {
      v28 = [colorsCopy objectAtIndexedSubscript:v26];
      Copy = CGColorCreateCopy([v28 CGColor]);
      [v22 insertObject:Copy atIndex:v25 + v26];

      ++v26;
    }

    while (v27 != v26);
  }

  if (v25)
  {
    v30 = [v22 objectAtIndexedSubscript:1];
    [v22 setObject:v30 atIndexedSubscript:0];

    v31 = v18 - 2;
    locationsCopy = v35;
    typeCopy = v36;
LABEL_22:
    v32 = [v22 objectAtIndexedSubscript:v31];
    [v22 insertObject:v32 atIndex:v23];

    goto LABEL_23;
  }

  locationsCopy = v35;
  typeCopy = v36;
  if (v34)
  {
    v31 = 0;
    goto LABEL_22;
  }

LABEL_23:
  [v16 setColors:v22];
  [v16 setLocations:locationsCopy];
  [v16 setStartPoint:{v10, v9}];
  [v16 setEndPoint:{x, y}];
  [v16 setType:typeCopy];
  v21 = v16;

LABEL_24:

  return v21;
}

+ (id)prideColorGradientColors2020
{
  v2 = prideColorGradientColors2020__prideColorGradientColors2020;
  if (!prideColorGradientColors2020__prideColorGradientColors2020)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:6];
    v8 = 0;
    v9 = &byte_27DA284DB;
    do
    {
      LOBYTE(v4) = *(v9 - 3);
      LOBYTE(v5) = *(v9 - 2);
      LOBYTE(v6) = *(v9 - 1);
      LOBYTE(v7) = *v9;
      v10 = [MEMORY[0x277D75348] colorWithRed:v4 / 255.0 green:v5 / 255.0 blue:v6 / 255.0 alpha:v7 / 255.0];
      [v3 insertObject:v10 atIndex:v8];

      ++v8;
      v9 += 4;
    }

    while (v8 != 6);
    v11 = [v3 copy];
    v12 = prideColorGradientColors2020__prideColorGradientColors2020;
    prideColorGradientColors2020__prideColorGradientColors2020 = v11;

    v2 = prideColorGradientColors2020__prideColorGradientColors2020;
  }

  return v2;
}

+ (id)gradientColorsForColor:(unint64_t)color device:(id)device
{
  if (color)
  {
    prideColorGradientColors2020 = 0;
  }

  else
  {
    prideColorGradientColors2020 = [self prideColorGradientColors2020];
  }

  return prideColorGradientColors2020;
}

+ (id)axialColorGradientLayer:(unint64_t)layer forDevice:(id)device
{
  v5 = [self gradientColorsForColor:layer device:device];
  v6 = [self layerForGradientWithColors:v5 type:*MEMORY[0x277CDA690] gradientLocations:0 startPoint:0.5 endPoint:{0.0, 0.5, 1.0}];

  return v6;
}

@end