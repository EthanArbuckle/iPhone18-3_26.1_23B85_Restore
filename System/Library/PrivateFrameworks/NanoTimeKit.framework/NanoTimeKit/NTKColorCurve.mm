@interface NTKColorCurve
- (NTKColorCurve)initWithColorCurveElements:(id)a3;
- (id)colorForFraction:(float)a3;
@end

@implementation NTKColorCurve

- (NTKColorCurve)initWithColorCurveElements:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NTKColorCurve;
  v5 = [(NTKColorCurve *)&v10 init];
  if (v5)
  {
    v6 = [v4 sortedArrayUsingComparator:&__block_literal_global_156];
    colorCurveElements = v5->_colorCurveElements;
    v5->_colorCurveElements = v6;

    v8 = v5;
  }

  return v5;
}

uint64_t __44__NTKColorCurve_initWithColorCurveElements___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)colorForFraction:(float)a3
{
  if ([(NSArray *)self->_colorCurveElements count])
  {
    v5 = [(NSArray *)self->_colorCurveElements count];
    v6 = [(NSArray *)self->_colorCurveElements firstObject];
    v7 = v6;
    if (v5 != 1)
    {
      [v6 fraction];
      v9 = v8;

      colorCurveElements = self->_colorCurveElements;
      if (v9 >= a3)
      {
        v6 = [(NSArray *)colorCurveElements firstObject];
      }

      else
      {
        v11 = [(NSArray *)colorCurveElements lastObject];
        [v11 fraction];
        v13 = v12;

        v14 = self->_colorCurveElements;
        if (v13 > a3)
        {
          v15 = [(NSArray *)v14 objectAtIndex:0];
          v16 = [(NSArray *)self->_colorCurveElements objectAtIndex:1];
          if ([(NSArray *)self->_colorCurveElements count]< 2)
          {
LABEL_10:
            v19 = v16;
            v18 = v15;
          }

          else
          {
            v17 = 1;
            while (1)
            {
              v18 = [(NSArray *)self->_colorCurveElements objectAtIndexedSubscript:v17 - 1];
              v19 = [(NSArray *)self->_colorCurveElements objectAtIndexedSubscript:v17];
              [v18 fraction];
              if (v20 <= a3)
              {
                [v19 fraction];
                if (v21 >= a3)
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

          [v18 fraction];
          v23 = a3 - v22;
          [v19 fraction];
          v25 = v24;
          [v18 fraction];
          v27 = v23 / (v25 - v26);
          v28 = [v19 timingFunction];
          *&v29 = v27;
          [v28 _solveForInput:v29];

          [v18 color];
          objc_claimAutoreleasedReturnValue();
          [v19 color];
          objc_claimAutoreleasedReturnValue();
          CLKUIInterpolateBetweenColors();
        }

        v6 = [(NSArray *)v14 lastObject];
      }

      v7 = v6;
    }

    v30 = [v6 color];
  }

  else
  {
    v30 = [MEMORY[0x277D75348] blackColor];
  }

  return v30;
}

@end