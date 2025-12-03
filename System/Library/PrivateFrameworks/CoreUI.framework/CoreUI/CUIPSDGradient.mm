@interface CUIPSDGradient
+ (CUIPSDGradient)cuiPSDGradientWithColors:(id)colors locations:(id)locations midpointLocations:(id)midpointLocations angle:(double)angle isRadial:(BOOL)radial;
+ (CUIPSDGradient)cuiPSDGradientWithColors:(id)colors locations:(id)locations midpointLocations:(id)midpointLocations angle:(double)angle style:(unsigned int)style;
+ (id)getMidpointLocationFromArray:(id)array atIndex:(int64_t)index withPolicy:(int)policy;
- (CUIPSDGradient)initWithEvaluator:(id)evaluator drawingAngle:(double)angle gradientStyle:(unsigned int)style;
- (void)dealloc;
@end

@implementation CUIPSDGradient

+ (id)getMidpointLocationFromArray:(id)array atIndex:(int64_t)index withPolicy:(int)policy
{
  switch(policy)
  {
    case 0:
      return 0;
    case 2:
      if (index)
      {
        arrayCopy2 = array;
        indexCopy = index - 1;
        return [arrayCopy2 objectAtIndex:indexCopy];
      }

      break;
    case 3:
      arrayCopy2 = array;
      indexCopy = index;
      return [arrayCopy2 objectAtIndex:indexCopy];
  }

  return &unk_1F00F7E18;
}

+ (CUIPSDGradient)cuiPSDGradientWithColors:(id)colors locations:(id)locations midpointLocations:(id)midpointLocations angle:(double)angle isRadial:(BOOL)radial
{
  if (radial)
  {
    v7 = 1382312992;
  }

  else
  {
    v7 = 1282306592;
  }

  return [self cuiPSDGradientWithColors:colors locations:locations midpointLocations:midpointLocations angle:v7 style:angle];
}

+ (CUIPSDGradient)cuiPSDGradientWithColors:(id)colors locations:(id)locations midpointLocations:(id)midpointLocations angle:(double)angle style:(unsigned int)style
{
  v12 = [colors count];
  v13 = [locations count];
  v14 = [midpointLocations count];
  if (v12 != v13)
  {
    return 0;
  }

  if (!v14)
  {
    styleCopy3 = style;
    v15 = 1;
    goto LABEL_8;
  }

  if (v14 != (v12 - 1))
  {
    if (v14 == v12)
    {
      styleCopy3 = style;
      v15 = 3;
      goto LABEL_8;
    }

    return 0;
  }

  styleCopy3 = style;
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
      [objc_msgSend(locations objectAtIndex:{i), "doubleValue"}];
      v19 = v18;
      v20 = [colors objectAtIndex:i];
      NumberOfComponents = CGColorGetNumberOfComponents(v20);
      if (NumberOfComponents >= 3)
      {
        v22 = NumberOfComponents;
        Components = CGColorGetComponents(v20);
        v24 = [[CUIPSDGradientColorStop alloc] initWithLocation:v19 gradientColor:*Components, Components[1], Components[2], 1.0];
        v25 = [CUIPSDGradient getMidpointLocationFromArray:midpointLocations atIndex:i withPolicy:v33];
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

  v28 = [[CUIPSDGradient alloc] initWithEvaluator:v27 drawingAngle:styleCopy3 gradientStyle:angle];

  return v28;
}

- (CUIPSDGradient)initWithEvaluator:(id)evaluator drawingAngle:(double)angle gradientStyle:(unsigned int)style
{
  v10.receiver = self;
  v10.super_class = CUIPSDGradient;
  v8 = [(CUIPSDGradient *)&v10 init];
  if (v8)
  {
    v8->evaluator = evaluator;
    v8->drawingAngle = angle;
    v8->gradientStyle = style;
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