@interface ICNAHistogramBase
- (ICNAHistogramBase)init;
- (double)roundedValue:(double)a3;
- (id)icasHistogram;
- (void)reportValue:(double)a3;
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

- (void)reportValue:(double)a3
{
  [(ICNAHistogramBase *)self roundedValue:a3];
  v5 = v4;
  v6 = [(ICNAHistogramBase *)self valueMax];
  if (!v6 || (v7 = v6, -[ICNAHistogramBase valueMax](self, "valueMax"), v8 = objc_claimAutoreleasedReturnValue(), [v8 doubleValue], v10 = v9, v8, v7, v5 <= v10))
  {
    v11 = [(ICNAHistogramBase *)self bucketLeftBounds];
    v12 = [v11 count];

    if (v12)
    {
      v13 = 0;
      while (1)
      {
        v14 = [(ICNAHistogramBase *)self bucketLeftBounds];
        v15 = [v14 objectAtIndexedSubscript:v13];
        [v15 floatValue];
        v17 = v16;

        if (v5 < v17)
        {
          break;
        }

        ++v13;
        v18 = [(ICNAHistogramBase *)self bucketLeftBounds];
        v19 = [v18 count];

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
      v21 = [(ICNAHistogramBase *)self countsForEachBucket];
      v22 = [v21 objectAtIndexedSubscript:v20];
      v23 = [v22 unsignedIntegerValue];

      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23 + 1];
      v24 = [(ICNAHistogramBase *)self countsForEachBucket];
      [v24 setObject:v25 atIndexedSubscript:v20];
    }
  }
}

- (id)icasHistogram
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(ICNAHistogramBase *)self bucketLeftBounds];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [(ICNAHistogramBase *)self countsForEachBucket];
      v8 = [v7 objectAtIndexedSubscript:v6];
      v9 = [v8 unsignedIntegerValue];

      if (v9)
      {
        v10 = [(ICNAHistogramBase *)self bucketLeftBounds];
        v11 = [v10 objectAtIndexedSubscript:v6];
        [v11 floatValue];
        v13 = v12;

        v14 = [(ICNAHistogramBase *)self bucketLeftBounds];
        v15 = [v14 count] - 1;

        if (v6 >= v15)
        {
          v22 = [(ICNAHistogramBase *)self valueMax];
        }

        else
        {
          v16 = MEMORY[0x277CCABB0];
          v17 = [(ICNAHistogramBase *)self bucketLeftBounds];
          v18 = [v17 objectAtIndexedSubscript:v6 + 1];
          [v18 floatValue];
          v20 = v19;
          [(ICNAHistogramBase *)self valuePrecision];
          v22 = [v16 numberWithDouble:v20 - v21];
        }

        v23 = [ICASHistogramItemData alloc];
        v24 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICNAHistogramBase roundedCount:](self, "roundedCount:", v9)}];
        v26 = [(ICASHistogramItemData *)v23 initWithLeftBound:v24 rightBound:v22 count:v25];

        [v3 addObject:v26];
      }

      ++v6;
      v27 = [(ICNAHistogramBase *)self bucketLeftBounds];
      v28 = [v27 count];
    }

    while (v6 < v28);
  }

  v29 = [v3 copy];

  return v29;
}

- (double)roundedValue:(double)a3
{
  [(ICNAHistogramBase *)self valuePrecision];
  v6 = round(a3 / v5);
  [(ICNAHistogramBase *)self valuePrecision];
  return v7 * v6;
}

@end