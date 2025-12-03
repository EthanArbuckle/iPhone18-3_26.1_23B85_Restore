@interface ICNAHistogramBase
- (ICNAHistogramBase)init;
- (double)roundedValue:(double)value;
- (id)icasHistogram;
- (void)reportValue:(double)value;
@end

@implementation ICNAHistogramBase

- (ICNAHistogramBase)init
{
  v8.receiver = self;
  v8.super_class = ICNAHistogramBase;
  v2 = [(ICNAHistogramBase *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_valuePrecision = 1.0;
    [(ICNAHistogramBase *)v2 setup];
    if (!v3->_bucketLeftBounds)
    {
      v3->_bucketLeftBounds = &unk_286E62F38;
    }

    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    countsForEachBucket = v3->_countsForEachBucket;
    v3->_countsForEachBucket = v4;

    if ([(NSArray *)v3->_bucketLeftBounds count])
    {
      v6 = 0;
      do
      {
        [(NSMutableArray *)v3->_countsForEachBucket addObject:&unk_286E5E7E0];
        ++v6;
      }

      while (v6 < [(NSArray *)v3->_bucketLeftBounds count]);
    }
  }

  return v3;
}

- (void)reportValue:(double)value
{
  [(ICNAHistogramBase *)self roundedValue:value];
  v5 = v4;
  valueMax = [(ICNAHistogramBase *)self valueMax];
  if (!valueMax || (v7 = valueMax, -[ICNAHistogramBase valueMax](self, "valueMax"), v8 = objc_claimAutoreleasedReturnValue(), [v8 doubleValue], v10 = v9, v8, v7, v5 <= v10))
  {
    bucketLeftBounds = [(ICNAHistogramBase *)self bucketLeftBounds];
    v12 = [bucketLeftBounds count];

    if (v12)
    {
      v13 = 0;
      while (1)
      {
        bucketLeftBounds2 = [(ICNAHistogramBase *)self bucketLeftBounds];
        v15 = [bucketLeftBounds2 objectAtIndexedSubscript:v13];
        [v15 floatValue];
        v17 = v16;

        if (v5 < v17)
        {
          break;
        }

        ++v13;
        bucketLeftBounds3 = [(ICNAHistogramBase *)self bucketLeftBounds];
        v19 = [bucketLeftBounds3 count];

        if (v13 >= v19)
        {
          goto LABEL_9;
        }
      }

      if (!v13)
      {
        return;
      }

LABEL_9:
      v20 = v13 - 1;
      countsForEachBucket = [(ICNAHistogramBase *)self countsForEachBucket];
      v22 = [countsForEachBucket objectAtIndexedSubscript:v20];
      unsignedIntegerValue = [v22 unsignedIntegerValue];

      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
      countsForEachBucket2 = [(ICNAHistogramBase *)self countsForEachBucket];
      [countsForEachBucket2 setObject:v25 atIndexedSubscript:v20];
    }
  }
}

- (id)icasHistogram
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  bucketLeftBounds = [(ICNAHistogramBase *)self bucketLeftBounds];
  v5 = [bucketLeftBounds count];

  if (v5)
  {
    v6 = 0;
    do
    {
      countsForEachBucket = [(ICNAHistogramBase *)self countsForEachBucket];
      v8 = [countsForEachBucket objectAtIndexedSubscript:v6];
      unsignedIntegerValue = [v8 unsignedIntegerValue];

      if (unsignedIntegerValue)
      {
        bucketLeftBounds2 = [(ICNAHistogramBase *)self bucketLeftBounds];
        v11 = [bucketLeftBounds2 objectAtIndexedSubscript:v6];
        [v11 floatValue];
        v13 = v12;

        bucketLeftBounds3 = [(ICNAHistogramBase *)self bucketLeftBounds];
        v15 = [bucketLeftBounds3 count] - 1;

        if (v6 >= v15)
        {
          valueMax = [(ICNAHistogramBase *)self valueMax];
        }

        else
        {
          v16 = MEMORY[0x277CCABB0];
          bucketLeftBounds4 = [(ICNAHistogramBase *)self bucketLeftBounds];
          v18 = [bucketLeftBounds4 objectAtIndexedSubscript:v6 + 1];
          [v18 floatValue];
          v20 = v19;
          [(ICNAHistogramBase *)self valuePrecision];
          valueMax = [v16 numberWithDouble:v20 - v21];
        }

        v23 = [ICASHistogramItemData alloc];
        v24 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICNAHistogramBase roundedCount:](self, "roundedCount:", unsignedIntegerValue)}];
        v26 = [(ICASHistogramItemData *)v23 initWithLeftBound:v24 rightBound:valueMax count:v25];

        [v3 addObject:v26];
      }

      ++v6;
      bucketLeftBounds5 = [(ICNAHistogramBase *)self bucketLeftBounds];
      v28 = [bucketLeftBounds5 count];
    }

    while (v6 < v28);
  }

  v29 = [v3 copy];

  return v29;
}

- (double)roundedValue:(double)value
{
  [(ICNAHistogramBase *)self valuePrecision];
  v6 = round(value / v5);
  [(ICNAHistogramBase *)self valuePrecision];
  return v7 * v6;
}

@end