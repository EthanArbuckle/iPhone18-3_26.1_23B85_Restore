@interface HDValueHistogramCollectionCalculator
- (HDValueHistogramCollectionCalculator)initWithQuantityType:(id)a3 quantityRanges:(id)a4 intervalCollection:(id)a5;
- (id)_currentHistogram;
- (id)result;
- (void)addSampleValue:(double)a3 startTime:(double)a4;
@end

@implementation HDValueHistogramCollectionCalculator

- (HDValueHistogramCollectionCalculator)initWithQuantityType:(id)a3 quantityRanges:(id)a4 intervalCollection:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v30.receiver = self;
  v30.super_class = HDValueHistogramCollectionCalculator;
  v13 = [(HDValueHistogramCollectionCalculator *)&v30 init];
  if (v13)
  {
    if (([MEMORY[0x277CCD7F8] areRangesDisjoint:v11] & 1) == 0)
    {
      v27 = [MEMORY[0x277CCA890] currentHandler];
      [v27 handleFailureInMethod:a2 object:v13 file:@"HDValueHistogramCollectionCalculator.m" lineNumber:130 description:@"Quantity ranges must be disjoint"];
    }

    objc_storeStrong(&v13->_quantityType, a3);
    objc_storeStrong(&v13->_quantityRanges, a4);
    v14 = [v10 canonicalUnit];
    canonicalUnit = v13->_canonicalUnit;
    v13->_canonicalUnit = v14;

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __95__HDValueHistogramCollectionCalculator_initWithQuantityType_quantityRanges_intervalCollection___block_invoke;
    v28[3] = &unk_278620A68;
    v16 = v13;
    v29 = v16;
    v17 = [v11 hk_map:v28];
    valueRangesInCanonicalUnit = v16->_valueRangesInCanonicalUnit;
    v16->_valueRangesInCanonicalUnit = v17;

    objc_storeStrong(&v16->_intervalCollection, a5);
    currentInterval = v16->_currentInterval;
    v16->_currentInterval = 0;

    currentIntervalIndex = v16->_currentIntervalIndex;
    v16->_currentIntervalIndex = 0;

    v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v13->_quantityRanges, "count")}];
    currentIntervalCountsByValueRange = v16->_currentIntervalCountsByValueRange;
    v16->_currentIntervalCountsByValueRange = v21;

    if ([(NSArray *)v13->_quantityRanges count])
    {
      v23 = 0;
      do
      {
        [(NSMutableArray *)v16->_currentIntervalCountsByValueRange addObject:&unk_283CB2160];
        ++v23;
      }

      while (v23 < [(NSArray *)v13->_quantityRanges count]);
    }

    v24 = [MEMORY[0x277CBEB38] dictionary];
    finalizedHistogramsByDateIntervalIndex = v16->_finalizedHistogramsByDateIntervalIndex;
    v16->_finalizedHistogramsByDateIntervalIndex = v24;
  }

  return v13;
}

- (void)addSampleValue:(double)a3 startTime:(double)a4
{
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a4];
  v25 = 0;
  v8 = [(_HKDateIntervalCollection *)self->_intervalCollection dateIntervalContainingDate:v7 index:&v25];
  if ([(NSArray *)self->_valueRangesInCanonicalUnit count])
  {
    v9 = 0;
    while (1)
    {
      v10 = [(NSArray *)self->_valueRangesInCanonicalUnit objectAtIndexedSubscript:v9];
      if ([v10 contains:a3])
      {
        break;
      }

      if (++v9 >= [(NSArray *)self->_valueRangesInCanonicalUnit count])
      {
        goto LABEL_5;
      }
    }

    if (v10)
    {
      currentInterval = self->_currentInterval;
      if (!currentInterval)
      {
        objc_storeStrong(&self->_currentInterval, v8);
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:v25];
        currentIntervalIndex = self->_currentIntervalIndex;
        self->_currentIntervalIndex = v12;

        currentInterval = self->_currentInterval;
      }

      if (([v8 isEqual:currentInterval] & 1) == 0)
      {
        v14 = [v8 startDate];
        v15 = [(NSDateInterval *)self->_currentInterval startDate];
        v16 = [v14 compare:v15];

        if (v16 != 1)
        {
          v24 = [MEMORY[0x277CCA890] currentHandler];
          [v24 handleFailureInMethod:a2 object:self file:@"HDValueHistogramCollectionCalculator.m" lineNumber:174 description:@"Samples must be added in ascending order by start date"];
        }

        v17 = [(HDValueHistogramCollectionCalculator *)&self->super.isa _currentHistogram];
        [(NSMutableDictionary *)self->_finalizedHistogramsByDateIntervalIndex setObject:v17 forKeyedSubscript:self->_currentIntervalIndex];

        objc_storeStrong(&self->_currentInterval, v8);
        v18 = [MEMORY[0x277CCABB0] numberWithInteger:v25];
        v19 = self->_currentIntervalIndex;
        self->_currentIntervalIndex = v18;

        if ([(NSMutableArray *)self->_currentIntervalCountsByValueRange count])
        {
          v20 = 0;
          do
          {
            [(NSMutableArray *)self->_currentIntervalCountsByValueRange setObject:&unk_283CB2160 atIndexedSubscript:v20++];
          }

          while (v20 < [(NSMutableArray *)self->_currentIntervalCountsByValueRange count]);
        }
      }

      v21 = MEMORY[0x277CCABB0];
      v22 = [(NSMutableArray *)self->_currentIntervalCountsByValueRange objectAtIndexedSubscript:v9];
      v23 = [v21 numberWithInteger:{objc_msgSend(v22, "integerValue") + 1}];
      [(NSMutableArray *)self->_currentIntervalCountsByValueRange setObject:v23 atIndexedSubscript:v9];
    }
  }

  else
  {
LABEL_5:
    v10 = 0;
  }
}

- (id)_currentHistogram
{
  v1 = a1;
  if (a1)
  {
    v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1[2], "count")}];
    if ([v1[2] count])
    {
      v3 = 0;
      do
      {
        v4 = [v1[2] objectAtIndexedSubscript:v3];
        v5 = [v1[6] objectAtIndexedSubscript:v3];
        v6 = [v5 integerValue];

        v7 = [objc_alloc(MEMORY[0x277CCDBA0]) initWithQuantityRange:v4 count:v6];
        [v2 addObject:v7];

        ++v3;
      }

      while (v3 < [v1[2] count]);
    }

    v1 = [objc_alloc(MEMORY[0x277CCDB88]) initWithSegments:v2 dateInterval:v1[7]];
  }

  return v1;
}

- (id)result
{
  v3 = [(HDValueHistogramCollectionCalculator *)&self->super.isa _currentHistogram];
  v4 = [(NSMutableDictionary *)self->_finalizedHistogramsByDateIntervalIndex mutableCopy];
  if ([v3 totalSampleCount] >= 1)
  {
    [v4 setObject:v3 forKeyedSubscript:self->_currentIntervalIndex];
  }

  v5 = objc_alloc(MEMORY[0x277CCDB90]);
  quantityRanges = self->_quantityRanges;
  v7 = [(_HKDateIntervalCollection *)self->_intervalCollection anchorDate];
  v8 = [(_HKDateIntervalCollection *)self->_intervalCollection intervalComponents];
  v9 = [v5 initWithQuantityRanges:quantityRanges valueHistogramsByDateIntervalIndex:v4 anchorDate:v7 intervalComponents:v8];

  return v9;
}

@end