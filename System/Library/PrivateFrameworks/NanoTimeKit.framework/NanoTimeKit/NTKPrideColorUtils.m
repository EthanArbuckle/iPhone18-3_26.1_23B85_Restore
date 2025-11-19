@interface NTKPrideColorUtils
+ (id)axialColorGradientLayer:(unint64_t)a3 forDevice:(id)a4;
+ (id)gradientColorsForColor:(unint64_t)a3 device:(id)a4;
+ (id)layerForGradientWithColors:(id)a3 type:(id)a4 gradientLocations:(id)a5 startPoint:(CGPoint)a6 endPoint:(CGPoint)a7;
+ (id)prideColorGradientColors2020;
@end

@implementation NTKPrideColorUtils

+ (id)layerForGradientWithColors:(id)a3 type:(id)a4 gradientLocations:(id)a5 startPoint:(CGPoint)a6 endPoint:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  v9 = a6.y;
  v10 = a6.x;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = objc_alloc_init(MEMORY[0x277CD9EB0]);
  v17 = [v13 count];
  v18 = v17;
  if (*MEMORY[0x277CDA698] == v14)
  {
    if (v15)
    {
      v20 = [v15 count];
      if (v20 != [v13 count])
      {
        goto LABEL_10;
      }

LABEL_7:
      v35 = v15;
      v36 = v14;
      v19 = 0;
      LODWORD(v15) = 0;
      goto LABEL_12;
    }

    v35 = 0;
    v36 = v14;
    v19 = 0;
    v18 = v17 + 1;
    LODWORD(v15) = 1;
  }

  else
  {
    if (v15)
    {
      v18 = [v15 count];
      if (v18 == [v13 count] + 2)
      {
        v35 = v15;
        v36 = v14;
        LODWORD(v15) = 0;
        v19 = 1;
        goto LABEL_12;
      }

      if (v18 != [v13 count])
      {
LABEL_10:
        v21 = 0;
        goto LABEL_24;
      }

      goto LABEL_7;
    }

    v35 = 0;
    v36 = v14;
    v19 = 0;
  }

LABEL_12:
  v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:v18];
  v23 = v18 - 1;
  v34 = v15;
  if (v19 | v15)
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
      v28 = [v13 objectAtIndexedSubscript:v26];
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
    v15 = v35;
    v14 = v36;
LABEL_22:
    v32 = [v22 objectAtIndexedSubscript:v31];
    [v22 insertObject:v32 atIndex:v23];

    goto LABEL_23;
  }

  v15 = v35;
  v14 = v36;
  if (v34)
  {
    v31 = 0;
    goto LABEL_22;
  }

LABEL_23:
  [v16 setColors:v22];
  [v16 setLocations:v15];
  [v16 setStartPoint:{v10, v9}];
  [v16 setEndPoint:{x, y}];
  [v16 setType:v14];
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

+ (id)gradientColorsForColor:(unint64_t)a3 device:(id)a4
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [a1 prideColorGradientColors2020];
  }

  return v6;
}

+ (id)axialColorGradientLayer:(unint64_t)a3 forDevice:(id)a4
{
  v5 = [a1 gradientColorsForColor:a3 device:a4];
  v6 = [a1 layerForGradientWithColors:v5 type:*MEMORY[0x277CDA690] gradientLocations:0 startPoint:0.5 endPoint:{0.0, 0.5, 1.0}];

  return v6;
}

@end