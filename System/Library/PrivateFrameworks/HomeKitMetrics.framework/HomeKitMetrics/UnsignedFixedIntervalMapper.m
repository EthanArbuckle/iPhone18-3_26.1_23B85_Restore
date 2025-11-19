@interface UnsignedFixedIntervalMapper
- (UnsignedFixedIntervalMapper)initWithBins:(id)a3 intervalCreationBlock:(id)a4 valueComparisonBlock:(id)a5;
- (id)intervalForValue:(unint64_t)a3;
- (id)intervalIndexForValue:(unint64_t)a3;
@end

@implementation UnsignedFixedIntervalMapper

- (id)intervalForValue:(unint64_t)a3
{
  v5 = [(UnsignedFixedIntervalMapper *)self intervals];
  v6 = [(UnsignedFixedIntervalMapper *)self intervalIndexForValue:a3];
  v7 = [v5 objectAtIndexedSubscript:{objc_msgSend(v6, "unsignedIntValue")}];

  return v7;
}

- (id)intervalIndexForValue:(unint64_t)a3
{
  v5 = [(UnsignedFixedIntervalMapper *)self intervals];
  v6 = [v5 count];

  if (v6 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = [(UnsignedFixedIntervalMapper *)self comparisonBlock];
      v9 = [(UnsignedFixedIntervalMapper *)self intervals];
      v10 = [v9 objectAtIndexedSubscript:v7];
      v11 = [v10 end];
      v12 = (v8)[2](v8, a3, v11);

      if (v12)
      {
        break;
      }

      ++v7;
      v13 = [(UnsignedFixedIntervalMapper *)self intervals];
      v14 = [v13 count] - 1;
    }

    while (v7 < v14);
  }

  v15 = MEMORY[0x277CCABB0];

  return [v15 numberWithInteger:v7];
}

- (UnsignedFixedIntervalMapper)initWithBins:(id)a3 intervalCreationBlock:(id)a4 valueComparisonBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29.receiver = self;
  v29.super_class = UnsignedFixedIntervalMapper;
  v11 = [(UnsignedFixedIntervalMapper *)&v29 init];
  if (v11)
  {
    v12 = _Block_copy(v9);
    creationBlock = v11->_creationBlock;
    v11->_creationBlock = v12;

    v14 = _Block_copy(v10);
    comparisonBlock = v11->_comparisonBlock;
    v11->_comparisonBlock = v14;

    v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count") + 1}];
    if ([v8 count])
    {
      v17 = 0;
      v18 = &unk_283EF3C90;
      do
      {
        v19 = [(UnsignedFixedIntervalMapper *)v11 creationBlock];
        v20 = [v8 objectAtIndexedSubscript:v17];
        v21 = (v19)[2](v19, v18, v20);
        [v16 addObject:v21];

        v22 = [v8 objectAtIndexedSubscript:v17];

        ++v17;
        v18 = v22;
      }

      while ([v8 count] > v17);
    }

    else
    {
      v22 = &unk_283EF3C90;
    }

    v23 = [(UnsignedFixedIntervalMapper *)v11 creationBlock];
    v24 = +[HMMInterval positiveInfinityEnd];
    v25 = (v23)[2](v23, v22, v24);
    [v16 addObject:v25];

    v26 = [v16 copy];
    intervals = v11->_intervals;
    v11->_intervals = v26;
  }

  return v11;
}

@end