@interface SGColorCurve
- (SGColorCurve)initWithColorCurveElements:(id)elements;
- (id)colorForFraction:(float)fraction;
@end

@implementation SGColorCurve

- (SGColorCurve)initWithColorCurveElements:(id)elements
{
  elementsCopy = elements;
  v10.receiver = self;
  v10.super_class = SGColorCurve;
  v5 = [(SGColorCurve *)&v10 init];
  if (v5)
  {
    v6 = [elementsCopy sortedArrayUsingComparator:&__block_literal_global_0];
    colorCurveElements = v5->_colorCurveElements;
    v5->_colorCurveElements = v6;

    v8 = v5;
  }

  return v5;
}

uint64_t __43__SGColorCurve_initWithColorCurveElements___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)colorForFraction:(float)fraction
{
  if (![(NSArray *)self->_colorCurveElements count])
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    goto LABEL_18;
  }

  v5 = [(NSArray *)self->_colorCurveElements count];
  firstObject = [(NSArray *)self->_colorCurveElements firstObject];
  v7 = firstObject;
  if (v5 != 1)
  {
    [firstObject fraction];
    v9 = v8;

    colorCurveElements = self->_colorCurveElements;
    if (v9 >= fraction)
    {
      firstObject = [(NSArray *)colorCurveElements firstObject];
    }

    else
    {
      lastObject = [(NSArray *)colorCurveElements lastObject];
      [lastObject fraction];
      v13 = v12;

      v14 = self->_colorCurveElements;
      if (v13 > fraction)
      {
        v15 = [(NSArray *)v14 objectAtIndex:0];
        v16 = [(NSArray *)self->_colorCurveElements objectAtIndex:1];
        if ([(NSArray *)self->_colorCurveElements count]< 2)
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
            v7 = [(NSArray *)self->_colorCurveElements objectAtIndexedSubscript:v17 - 1];
            v18 = [(NSArray *)self->_colorCurveElements objectAtIndexedSubscript:v17];
            [v7 fraction];
            if (v19 <= fraction)
            {
              [v18 fraction];
              if (v20 >= fraction)
              {
                break;
              }
            }

            if (++v17 >= [(NSArray *)self->_colorCurveElements count])
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
        v26 = v22 / (v24 - v25);
        timingFunction = [v18 timingFunction];
        *&v28 = v26;
        [timingFunction _solveForInput:v28];

        color = [v7 color];
        color2 = [v18 color];
        blackColor = CLKUIInterpolateBetweenColors();

        goto LABEL_17;
      }

      firstObject = [(NSArray *)v14 lastObject];
    }

    v7 = firstObject;
  }

  blackColor = [firstObject color];
LABEL_17:

LABEL_18:

  return blackColor;
}

@end