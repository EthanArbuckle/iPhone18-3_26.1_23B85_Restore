@interface CUIPSDGradient
+ (CUIPSDGradient)cuiPSDGradientWithColors:(id)a3 locations:(id)a4 midpointLocations:(id)a5 angle:(double)a6 isRadial:(BOOL)a7;
+ (CUIPSDGradient)cuiPSDGradientWithColors:(id)a3 locations:(id)a4 midpointLocations:(id)a5 angle:(double)a6 style:(unsigned int)a7;
+ (id)getMidpointLocationFromArray:(id)a3 atIndex:(int64_t)a4 withPolicy:(int)a5;
- (CUIPSDGradient)initWithEvaluator:(id)a3 drawingAngle:(double)a4 gradientStyle:(unsigned int)a5;
- (void)dealloc;
@end

@implementation CUIPSDGradient

+ (id)getMidpointLocationFromArray:(id)a3 atIndex:(int64_t)a4 withPolicy:(int)a5
{
  switch(a5)
  {
    case 0:
      return 0;
    case 2:
      if (a4)
      {
        v5 = a3;
        v6 = a4 - 1;
        return [v5 objectAtIndex:v6];
      }

      break;
    case 3:
      v5 = a3;
      v6 = a4;
      return [v5 objectAtIndex:v6];
  }

  return &unk_1F00F7E18;
}

+ (CUIPSDGradient)cuiPSDGradientWithColors:(id)a3 locations:(id)a4 midpointLocations:(id)a5 angle:(double)a6 isRadial:(BOOL)a7
{
  if (a7)
  {
    v7 = 1382312992;
  }

  else
  {
    v7 = 1282306592;
  }

  return [a1 cuiPSDGradientWithColors:a3 locations:a4 midpointLocations:a5 angle:v7 style:a6];
}

+ (CUIPSDGradient)cuiPSDGradientWithColors:(id)a3 locations:(id)a4 midpointLocations:(id)a5 angle:(double)a6 style:(unsigned int)a7
{
  v12 = [a3 count];
  v13 = [a4 count];
  v14 = [a5 count];
  if (v12 != v13)
  {
    return 0;
  }

  if (!v14)
  {
    v30 = a7;
    v15 = 1;
    goto LABEL_8;
  }

  if (v14 != (v12 - 1))
  {
    if (v14 == v12)
    {
      v30 = a7;
      v15 = 3;
      goto LABEL_8;
    }

    return 0;
  }

  v30 = a7;
  v15 = 2;
LABEL_8:
  v33 = v15;
  v34 = [[NSMutableArray alloc] initWithCapacity:v12];
  v16 = [[NSMutableArray alloc] initWithCapacity:v12];
  v32 = [[NSMutableArray alloc] initWithCapacity:v12];
  v31 = [[NSMutableArray alloc] initWithCapacity:v12];
  if (v12 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      [objc_msgSend(a4 objectAtIndex:{i), "doubleValue"}];
      v19 = v18;
      v20 = [a3 objectAtIndex:i];
      NumberOfComponents = CGColorGetNumberOfComponents(v20);
      if (NumberOfComponents >= 3)
      {
        v22 = NumberOfComponents;
        Components = CGColorGetComponents(v20);
        v24 = [[CUIPSDGradientColorStop alloc] initWithLocation:v19 gradientColor:*Components, Components[1], Components[2], 1.0];
        v25 = [CUIPSDGradient getMidpointLocationFromArray:a5 atIndex:i withPolicy:v33];
        [v16 addObject:v25];
        [v34 addObject:v24];
        if (v22 != 3)
        {
          v26 = [[CUIPSDGradientOpacityStop alloc] initWithLocation:v19 opacity:Components[3]];
          [v31 addObject:v25];
          [v32 addObject:v26];
        }
      }
    }
  }

  v27 = [[CUIPSDGradientEvaluator alloc] initWithColorStops:v34 colorMidpoints:v16 opacityStops:v32 opacityMidpoints:v31 smoothingCoefficient:1 fillColor:100.0 dither:0.0, 0.0, 0.0, 1.0];

  v28 = [[CUIPSDGradient alloc] initWithEvaluator:v27 drawingAngle:v30 gradientStyle:a6];

  return v28;
}

- (CUIPSDGradient)initWithEvaluator:(id)a3 drawingAngle:(double)a4 gradientStyle:(unsigned int)a5
{
  v10.receiver = self;
  v10.super_class = CUIPSDGradient;
  v8 = [(CUIPSDGradient *)&v10 init];
  if (v8)
  {
    v8->evaluator = a3;
    v8->drawingAngle = a4;
    v8->gradientStyle = a5;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIPSDGradient;
  [(CUIPSDGradient *)&v3 dealloc];
}

@end