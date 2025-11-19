@interface NTKMovingMedian
- (NTKMovingMedian)initWithSampleSize:(unint64_t)a3;
- (uint64_t)_entryAtIndex:(uint64_t)result;
- (void)addNewValue:(double)a3;
@end

@implementation NTKMovingMedian

- (NTKMovingMedian)initWithSampleSize:(unint64_t)a3
{
  v4 = [(NTKMovingMedian *)self init];
  v5 = v4;
  if (v4)
  {
    v4->_sampleSize = a3;
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
    values = v5->_values;
    v5->_values = v6;
  }

  return v5;
}

- (void)addNewValue:(double)a3
{
  v13[0] = a3;
  *&v13[1] = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = [objc_alloc(MEMORY[0x277CCAE60]) initWithBytes:v13 objCType:"{_SortedEntry=dQ}"];
  p_values = &self->_values;
  v6 = [(NSMutableArray *)self->_values count];
  sampleSize = self->_sampleSize;
  if (v6 == sampleSize && sampleSize != 0)
  {
    if ([(NSMutableArray *)*p_values count])
    {
      [(NTKMovingMedian *)self addNewValue:&v14];
      v9 = v14;
    }

    else
    {
      v9 = 0;
    }

    [(NSMutableArray *)*p_values removeObjectAtIndex:v9];
  }

  if (![(NSMutableArray *)*p_values count]|| ([(NTKMovingMedian *)self addNewValue:v13, &self->_values, v4]& 1) != 0)
  {
    [(NSMutableArray *)*p_values addObject:v4];
  }

  v10 = [(NSMutableArray *)*p_values count]>> 1;
  if (([(NSMutableArray *)*p_values count]& 1) != 0)
  {
    v12 = COERCE_DOUBLE([(NTKMovingMedian *)self _entryAtIndex:v10]);
  }

  else
  {
    v11 = COERCE_DOUBLE([(NTKMovingMedian *)self _entryAtIndex:?]);
    v12 = (v11 + COERCE_DOUBLE([(NTKMovingMedian *)self _entryAtIndex:v10])) * 0.5;
  }

  [(NTKMovingMedian *)self setCurrentValue:v12];
}

- (uint64_t)_entryAtIndex:(uint64_t)result
{
  if (result)
  {
    v2 = [*(result + 24) objectAtIndex:a2];
    v3[0] = 0;
    v3[1] = 0;
    [v2 getValue:v3 size:16];

    return v3[0];
  }

  return result;
}

- (unint64_t)addNewValue:(unint64_t *)a3 .cold.1(uint64_t a1, id *a2, unint64_t *a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    [(NTKMovingMedian *)a1 _entryAtIndex:v8];
    if (v8)
    {
      v10 = v9 >= v6;
    }

    else
    {
      v10 = 0;
    }

    v11 = !v10;
    if (v11)
    {
      v7 = v8;
    }

    *a3 = v7;
    if (v11)
    {
      v6 = v9;
    }

    ++v8;
    result = [*a2 count];
  }

  while (v8 < result);
  return result;
}

- (uint64_t)addNewValue:(id *)a3 .cold.2(uint64_t a1, double *a2, id *a3, uint64_t a4)
{
  v8 = 0;
  while (1)
  {
    v9 = COERCE_DOUBLE([(NTKMovingMedian *)a1 _entryAtIndex:v8]);
    v10 = *a2;
    if (*a2 < v9)
    {
      break;
    }

    if (++v8 >= [*a3 count])
    {
      return 1;
    }
  }

  [*a3 insertObject:a4 atIndex:{v8, v9, v10}];
  return 0;
}

@end