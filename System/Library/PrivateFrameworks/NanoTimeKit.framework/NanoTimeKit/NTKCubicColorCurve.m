@interface NTKCubicColorCurve
- (NTKCubicColorCurve)initWithColorCurveElements:(id)a3;
- (NTKCubicColorCurve)initWithCubicColorCurveElements:(id)a3;
- (id)colorForFraction:(float)a3;
- (uint64_t)rgbfColorForFraction:(uint64_t)result;
- (void)dealloc;
@end

@implementation NTKCubicColorCurve

- (NTKCubicColorCurve)initWithCubicColorCurveElements:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NTKCubicColorCurve;
  v5 = [(NTKCubicColorCurve *)&v19 init];
  if (v5)
  {
    v6 = [v4 sortedArrayUsingComparator:&__block_literal_global_90];
    v7 = [v4 count];
    v5->_count = v7;
    v5->_fractions = malloc_type_malloc(4 * v7, 0x100004052888210uLL);
    *v5->_colors = malloc_type_malloc(16 * v5->_count, 0x1000040451B5BE8uLL);
    v8 = [[NTKCubicSpline alloc] initWithNumberOfControlPoints:LODWORD(v5->_count) isClosed:0];
    spline = v5->_spline;
    v5->_spline = v8;

    v10 = [(NTKCubicSpline *)v5->_spline controlPointsBuffer];
    if (v5->_count)
    {
      v11 = v10;
      v12 = 0;
      do
      {
        v13 = [v6 objectAtIndexedSubscript:v12];
        [v13 fraction];
        *&v14 = v14;
        *(*v11 + 8 * v12) = __PAIR64__(LODWORD(v14), v12);
        [v13 fraction];
        *&v15 = v15;
        v5->_fractions[v12] = *&v15;
        [v13 color];
        *(*v5->_colors + 16 * v12) = v16;

        ++v12;
      }

      while (v5->_count > v12);
    }

    [(NTKCubicSpline *)v5->_spline process];
    v17 = v5;
  }

  return v5;
}

uint64_t __54__NTKCubicColorCurve_initWithCubicColorCurveElements___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 fraction];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 fraction];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (NTKCubicColorCurve)initWithColorCurveElements:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NTKCubicColorCurve;
  v5 = [(NTKCubicColorCurve *)&v17 init];
  if (v5)
  {
    v6 = [v4 sortedArrayUsingComparator:&__block_literal_global_19_1];
    v7 = [v4 count];
    v5->_count = v7;
    v5->_fractions = malloc_type_malloc(4 * v7, 0x100004052888210uLL);
    *v5->_colors = malloc_type_malloc(16 * v5->_count, 0x1000040451B5BE8uLL);
    v8 = [[NTKCubicSpline alloc] initWithNumberOfControlPoints:LODWORD(v5->_count) isClosed:0];
    spline = v5->_spline;
    v5->_spline = v8;

    v10 = [(NTKCubicSpline *)v5->_spline controlPointsBuffer];
    if (v5->_count)
    {
      v11 = v10;
      v12 = [v6 objectAtIndexedSubscript:0];
      [v12 fraction];
      **v11 = __PAIR64__(v13, 0);
      [v12 fraction];
      *v5->_fractions = v14;
      [v12 color];
      objc_claimAutoreleasedReturnValue();
      CLKUIConvertToRGBfFromUIColor_fast();
    }

    [(NTKCubicSpline *)v5->_spline process];
    v15 = v5;
  }

  return v5;
}

uint64_t __49__NTKCubicColorCurve_initWithColorCurveElements___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 fraction];
  v6 = [v4 numberWithFloat:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 fraction];
  v9 = v8;

  LODWORD(v10) = v9;
  v11 = [v7 numberWithFloat:v10];
  v12 = [v6 compare:v11];

  return v12;
}

- (void)dealloc
{
  free(self->_fractions);
  free(*self->_colors);
  v3.receiver = self;
  v3.super_class = NTKCubicColorCurve;
  [(NTKCubicColorCurve *)&v3 dealloc];
}

- (id)colorForFraction:(float)a3
{
  [(NTKCubicColorCurve *)self rgbfColorForFraction:a3];

  CLKUIConvertToUIColorFromRGBf_fast();
}

- (uint64_t)rgbfColorForFraction:(uint64_t)result
{
  v2 = *(result + 40);
  if (v2 != 1)
  {
    v3 = 0;
    v4 = *(result + 32);
    while (1)
    {
      v5 = *(v4 + 4 * v3);
      if (v5 <= a2)
      {
        v6 = *(v4 + 4 * v3 + 4);
        if (v6 > a2)
        {
          break;
        }
      }

      if (v2 - 1 == ++v3)
      {
        return result;
      }
    }

    v7 = (a2 - v5) / (v6 - v5) + v3;
    *&v7 = v7;
    return [*(result + 16) interpolateAt:v7];
  }

  return result;
}

@end