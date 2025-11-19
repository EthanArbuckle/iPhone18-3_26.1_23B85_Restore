@interface BWHistogramStats
- (BOOL)addDataPointP:(double)a3;
- (BWHistogramStats)initWithBins:(id)a3;
- (NSDictionary)histogramAsDictionary;
- (void)dealloc;
- (void)getEstimatedQuantiles:(double *)a3 n:(int)a4;
@end

@implementation BWHistogramStats

- (BWHistogramStats)initWithBins:(id)a3
{
  v14.receiver = self;
  v14.super_class = BWHistogramStats;
  v4 = [(BWStats *)&v14 init];
  if (v4)
  {
    v5 = [a3 count];
    if (!v5)
    {
LABEL_10:
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Histogram bins are invalid" userInfo:0]);
    }

    v6 = v5;
    v7 = 0;
    v8 = NAN;
    do
    {
      v9 = v8;
      [objc_msgSend(a3 objectAtIndexedSubscript:{v7), "doubleValue"}];
      if (v8 <= v9)
      {
        goto LABEL_10;
      }

      ++v7;
    }

    while (v6 != v7);
    v10 = 0;
    v4->_bins = malloc_type_calloc(v6 + 1, 8uLL, 0x100004000313F17uLL);
    do
    {
      [objc_msgSend(a3 objectAtIndexedSubscript:{v10), "doubleValue"}];
      bins = v4->_bins;
      bins[v10++] = v12;
    }

    while (v6 != v10);
    bins[v6] = INFINITY;
    v4->_counts = malloc_type_calloc(v6, 8uLL, 0x100004000313F17uLL);
    v4->_areas = malloc_type_calloc(v6, 8uLL, 0x100004000313F17uLL);
    v4->_binsCount = v6;
  }

  return v4;
}

- (void)dealloc
{
  free(self->_bins);
  free(self->_counts);
  free(self->_areas);
  v3.receiver = self;
  v3.super_class = BWHistogramStats;
  [(BWStats *)&v3 dealloc];
}

- (BOOL)addDataPointP:(double)a3
{
  __key = a3;
  v8.receiver = self;
  v8.super_class = BWHistogramStats;
  v4 = [(BWStats *)&v8 addDataPointP:?];
  if (v4)
  {
    v5 = bsearch(&__key, self->_bins, self->_binsCount, 8uLL, compareDoubleToBin);
    if (v5)
    {
      v6 = v5 - self->_bins;
      if (v6 >> 3 < 0 || v6 >> 3 >= self->_binsCount)
      {
        [BWHistogramStats addDataPointP:];
      }

      ++*(self->_counts + v6);
    }
  }

  return v4;
}

- (NSDictionary)histogramAsDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  binsCount = self->_binsCount;
  if (binsCount)
  {
    for (i = 0; i < binsCount; ++i)
    {
      if (self->_counts[i])
      {
        v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
        v7 = MEMORY[0x1E696AD98];
        v8 = self->_bins[i];
        [(BWStats *)self multiplier];
        -[NSDictionary setObject:forKey:](v3, "setObject:forKey:", v6, [v7 numberWithDouble:v8 * v9]);
        binsCount = self->_binsCount;
      }
    }
  }

  return v3;
}

- (void)getEstimatedQuantiles:(double *)a3 n:(int)a4
{
  if ((a4 - 101) <= 0xFFFFFF9C)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid quantile count" userInfo:0]);
  }

  areas = self->_areas;
  *areas = 0.0;
  bins = self->_bins;
  v6 = fabs(*bins) == INFINITY;
  binsCount = self->_binsCount;
  v8 = binsCount - 1;
  v9 = 0.0;
  if (binsCount - 1 > v6)
  {
    v10 = &areas[v6];
    v11 = &self->_counts[v6];
    v12 = &bins[v6 + 1];
    v13 = ~v6 + binsCount;
    do
    {
      v14 = *v11++;
      v15 = (*v12 - *(v12 - 1)) * v14;
      *v10++ = v15;
      v9 = v9 + v15;
      ++v12;
      --v13;
    }

    while (v13);
  }

  areas[v8] = 0.0;
  v16 = fabs(*bins);
  v17 = v16 == INFINITY;
  v18 = a4 - 1;
  v19 = 0;
  if (v8 > v17 && a4 >= 2)
  {
    v21 = v16 == INFINITY;
    v22 = 0.0;
    do
    {
      v23 = areas[v17];
      v24 = v9 * (v19 + 1) / a4;
      if (v24 >= v22 + v23)
      {
        ++v21;
        v22 = v22 + v23;
      }

      else
      {
        v25 = 0.0;
        if (v23 > 0.0)
        {
          v25 = bins[v17] + (v24 - v22) / v23 * (bins[v17 + 1] - bins[v17]);
        }

        a3[v19++] = v25;
      }

      if (v8 <= v21)
      {
        break;
      }

      v17 = v21;
    }

    while (v19 < v18);
  }

  if (v19 < v18)
  {

    bzero(&a3[v19], 8 * (a4 - v19 - 2) + 8);
  }
}

@end