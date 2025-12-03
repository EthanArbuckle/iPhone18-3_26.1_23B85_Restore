@interface NTKFloatCurve
- (NTKFloatCurve)initWithFloatCurveElements:(id)elements;
- (double)floatValueForFraction:(double)fraction;
@end

@implementation NTKFloatCurve

- (NTKFloatCurve)initWithFloatCurveElements:(id)elements
{
  elementsCopy = elements;
  v9.receiver = self;
  v9.super_class = NTKFloatCurve;
  v5 = [(NTKFloatCurve *)&v9 init];
  if (v5)
  {
    v6 = [elementsCopy sortedArrayUsingComparator:&__block_literal_global_109];
    valueCurveElements = v5->_valueCurveElements;
    v5->_valueCurveElements = v6;
  }

  return v5;
}

uint64_t __44__NTKFloatCurve_initWithFloatCurveElements___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 fraction];
  v7 = v6;
  [v5 fraction];
  if (v7 <= v8)
  {
    [v4 fraction];
    v11 = v10;
    [v5 fraction];
    if (v11 >= v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (double)floatValueForFraction:(double)fraction
{
  if ([(NSArray *)self->_valueCurveElements count])
  {
    v5 = [(NSArray *)self->_valueCurveElements count];
    firstObject = [(NSArray *)self->_valueCurveElements firstObject];
    v7 = firstObject;
    if (v5 != 1)
    {
      [firstObject fraction];
      v9 = v8;

      valueCurveElements = self->_valueCurveElements;
      if (v9 >= fraction)
      {
        firstObject = [(NSArray *)valueCurveElements firstObject];
      }

      else
      {
        lastObject = [(NSArray *)valueCurveElements lastObject];
        [lastObject fraction];
        v13 = v12;

        v14 = self->_valueCurveElements;
        if (v13 > fraction)
        {
          v15 = [(NSArray *)v14 objectAtIndex:0];
          v16 = [(NSArray *)self->_valueCurveElements objectAtIndex:1];
          if ([(NSArray *)self->_valueCurveElements count]< 2)
          {
LABEL_10:
            v18 = v16;
            v7 = v15;
          }

          else
          {
            v17 = 1;
            while (1)
            {
              v7 = [(NSArray *)self->_valueCurveElements objectAtIndexedSubscript:v17 - 1];
              v18 = [(NSArray *)self->_valueCurveElements objectAtIndexedSubscript:v17];
              [v7 fraction];
              if (v19 <= fraction)
              {
                [v18 fraction];
                if (v20 >= fraction)
                {
                  break;
                }
              }

              if (++v17 >= [(NSArray *)self->_valueCurveElements count])
              {
                goto LABEL_10;
              }
            }
          }

          [v7 fraction];
          v22 = fraction - v21;
          [v18 fraction];
          v24 = v23;
          [v7 fraction];
          *&v25 = v24 - v25;
          *&v24 = v22 / *&v25;
          timingFunction = [v18 timingFunction];
          LODWORD(v27) = LODWORD(v24);
          [timingFunction _solveForInput:v27];

          [v7 floatValue];
          [v18 floatValue];
          CLKInterpolateBetweenFloatsClipped();
          v29 = v28;

          goto LABEL_17;
        }

        firstObject = [(NSArray *)v14 lastObject];
      }

      v7 = firstObject;
    }

    [firstObject floatValue];
    v29 = v30;
LABEL_17:

    return v29;
  }

  return 0.0;
}

@end