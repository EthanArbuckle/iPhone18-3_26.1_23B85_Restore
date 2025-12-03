@interface SGCubicColorCurve
- (SGCubicColorCurve)initWithColorCurveElements:(id)elements;
- (SGCubicColorCurve)initWithCubicColorCurveElements:(id)elements;
- (id)colorForFraction:(float)fraction;
- (uint64_t)rgbfColorForFraction:(uint64_t)result;
- (void)dealloc;
@end

@implementation SGCubicColorCurve

- (SGCubicColorCurve)initWithCubicColorCurveElements:(id)elements
{
  elementsCopy = elements;
  v19.receiver = self;
  v19.super_class = SGCubicColorCurve;
  v5 = [(SGCubicColorCurve *)&v19 init];
  if (v5)
  {
    v6 = [elementsCopy sortedArrayUsingComparator:&__block_literal_global_2];
    v7 = [elementsCopy count];
    v5->_count = v7;
    v5->_fractions = malloc_type_malloc(4 * v7, 0x100004052888210uLL);
    *v5->_colors = malloc_type_malloc(16 * v5->_count, 0x1000040451B5BE8uLL);
    v8 = [[SGCubicSpline alloc] initWithNumberOfControlPoints:LODWORD(v5->_count) isClosed:0];
    spline = v5->_spline;
    v5->_spline = v8;

    controlPointsBuffer = [(SGCubicSpline *)v5->_spline controlPointsBuffer];
    if (v5->_count)
    {
      v11 = controlPointsBuffer;
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

    [(SGCubicSpline *)v5->_spline process];
    v17 = v5;
  }

  return v5;
}

uint64_t __53__SGCubicColorCurve_initWithCubicColorCurveElements___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (SGCubicColorCurve)initWithColorCurveElements:(id)elements
{
  elementsCopy = elements;
  v20.receiver = self;
  v20.super_class = SGCubicColorCurve;
  v5 = [(SGCubicColorCurve *)&v20 init];
  if (v5)
  {
    v6 = [elementsCopy sortedArrayUsingComparator:&__block_literal_global_19];
    v7 = [elementsCopy count];
    v5->_count = v7;
    v5->_fractions = malloc_type_malloc(4 * v7, 0x100004052888210uLL);
    *v5->_colors = malloc_type_malloc(16 * v5->_count, 0x1000040451B5BE8uLL);
    v8 = [[SGCubicSpline alloc] initWithNumberOfControlPoints:LODWORD(v5->_count) isClosed:0];
    spline = v5->_spline;
    v5->_spline = v8;

    controlPointsBuffer = [(SGCubicSpline *)v5->_spline controlPointsBuffer];
    if (v5->_count)
    {
      v11 = controlPointsBuffer;
      v12 = 0;
      do
      {
        v13 = [v6 objectAtIndexedSubscript:v12];
        [v13 fraction];
        *(*v11 + 8 * v12) = __PAIR64__(v14, v12);
        [v13 fraction];
        v5->_fractions[v12] = v15;
        color = [v13 color];
        CLKUIConvertToRGBfFromUIColor_fast();
        *(*v5->_colors + 16 * v12) = v17;

        ++v12;
      }

      while (v5->_count > v12);
    }

    [(SGCubicSpline *)v5->_spline process];
    v18 = v5;
  }

  return v5;
}

uint64_t __48__SGCubicColorCurve_initWithColorCurveElements___block_invoke(uint64_t a1, void *a2, void *a3)
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
  v3.super_class = SGCubicColorCurve;
  [(SGCubicColorCurve *)&v3 dealloc];
}

- (id)colorForFraction:(float)fraction
{
  v3 = [(SGCubicColorCurve *)self rgbfColorForFraction:fraction];

  return MEMORY[0x28214CCB0](v3);
}

- (uint64_t)rgbfColorForFraction:(uint64_t)result
{
  v2 = result;
  v3 = *(result + 40);
  if (v3 == 1)
  {
LABEL_6:
    v8 = *(*(result + 24) + 16 * v3 - 16);
  }

  else
  {
    v4 = 0;
    v5 = *(result + 32);
    while (1)
    {
      v6 = *(v5 + 4 * v4);
      if (v6 <= a2)
      {
        v7 = *(v5 + 4 * v4 + 4);
        if (v7 > a2)
        {
          break;
        }
      }

      if (v3 - 1 == ++v4)
      {
        goto LABEL_6;
      }
    }

    v9 = v7 - v6;
    v10 = (a2 - v6) / (v7 - v6) + v4;
    *&v10 = v10;
    result = [*(result + 16) interpolateAt:v10];
    v12 = fmin(((v11 - v6) / v9), 1.0);
    if (v12 < 0.0)
    {
      v12 = 0.0;
    }

    v13 = v12;
    v14 = vmlaq_n_f32(*(*(v2 + 24) + 16 * v4), vsubq_f32(*(*(v2 + 24) + 16 * v4 + 16), *(*(v2 + 24) + 16 * v4)), v13).u64[0];
  }

  return result;
}

@end