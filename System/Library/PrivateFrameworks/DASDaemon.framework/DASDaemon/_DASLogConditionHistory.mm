@interface _DASLogConditionHistory
+ (id)condition:(id)a3 fromDate:(id)a4;
- (_DASLogConditionHistory)initWithCondition:(id)a3 fromDate:(id)a4;
- (id)description;
- (id)idealIntervals;
- (void)addCondition:(id)a3 atDate:(id)a4;
@end

@implementation _DASLogConditionHistory

- (_DASLogConditionHistory)initWithCondition:(id)a3 fromDate:(id)a4
{
  v10.receiver = self;
  v10.super_class = _DASLogConditionHistory;
  v4 = [(_DASLogConditionHistory *)&v10 init:a3];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    conditions = v4->_conditions;
    v4->_conditions = v5;

    v7 = [MEMORY[0x277CBEB18] array];
    intervals = v4->_intervals;
    v4->_intervals = v7;
  }

  return v4;
}

+ (id)condition:(id)a3 fromDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithCondition:v6 fromDate:v5];

  return v7;
}

- (void)addCondition:(id)a3 atDate:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(NSMutableArray *)self->_conditions lastObject];
  v8 = [v7 isEqual:v9];

  if ((v8 & 1) == 0)
  {
    [(NSMutableArray *)self->_conditions addObject:v9];
    [(NSMutableArray *)self->_intervals addObject:v6];
  }
}

- (id)idealIntervals
{
  v3 = [MEMORY[0x277CBEB18] array];
  if ([(NSMutableArray *)self->_conditions count])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = [(NSMutableArray *)self->_conditions objectAtIndexedSubscript:v4];
      v7 = [v6 isIdeal];

      if (v7)
      {
        if (!v5)
        {
          v5 = [(NSMutableArray *)self->_intervals objectAtIndexedSubscript:v4];
        }
      }

      else if (v5)
      {
        v8 = objc_alloc(MEMORY[0x277CCA970]);
        v9 = [(NSMutableArray *)self->_intervals objectAtIndexedSubscript:v4];
        v10 = [v8 initWithStartDate:v5 endDate:v9];
        [v3 addObject:v10];

        v5 = 0;
      }

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_conditions count]);
    if (v5)
    {
      v11 = objc_alloc(MEMORY[0x277CCA970]);
      v12 = [MEMORY[0x277CBEAA8] distantFuture];
      v13 = [v11 initWithStartDate:v5 endDate:v12];
      [v3 addObject:v13];
    }
  }

  else
  {
    v5 = 0;
  }

  v14 = [v3 copy];

  return v14;
}

- (id)description
{
  if ([(NSMutableArray *)self->_conditions count])
  {
    if (description_onceToken != -1)
    {
      [_DASLogConditionHistory description];
    }

    v3 = [MEMORY[0x277CBEA80] currentCalendar];
    v4 = [MEMORY[0x277CCAB68] string];
    v5 = [(NSMutableArray *)self->_conditions count];
    if (v5)
    {
      v35 = v3;
      if (v5 == 1)
      {
        v11 = 0;
      }

      else
      {
        v6 = 0;
        v7 = 1;
        v34 = v5 - 1;
        do
        {
          [(NSMutableArray *)self->_intervals objectAtIndexedSubscript:v6];
          v9 = v8 = v4;
          v10 = [v35 components:24 fromDate:v9];
          v11 = v7;
          v12 = [(NSMutableArray *)self->_intervals objectAtIndexedSubscript:v7];
          v13 = [v35 components:24 fromDate:v12];
          v14 = [v10 isEqual:v13];

          v15 = MEMORY[0x277CCACA8];
          v16 = description_formatter;
          v17 = [(NSMutableArray *)self->_intervals objectAtIndexedSubscript:v6];
          v18 = [v16 stringFromDate:v17];
          v19 = &description_shortFormatter;
          if (!v14)
          {
            v19 = &description_formatter;
          }

          v20 = *v19;
          v21 = [(NSMutableArray *)self->_intervals objectAtIndexedSubscript:v7];
          v22 = [v20 stringFromDate:v21];
          v23 = [v15 stringWithFormat:@"%@ - %@", v18, v22];

          v4 = v8;
          v24 = [v23 UTF8String];
          v25 = [(NSMutableArray *)self->_conditions objectAtIndexedSubscript:v6];
          [v8 appendFormat:@"  %-50s %@\n", v24, v25];

          v26 = v34 > v7++;
          v6 = v11;
        }

        while (v26);
      }

      v28 = description_formatter;
      v29 = [(NSMutableArray *)self->_intervals objectAtIndexedSubscript:v11];
      v30 = [v28 stringFromDate:v29];
      v31 = [v30 UTF8String];
      v32 = [(NSMutableArray *)self->_conditions objectAtIndexedSubscript:v11];
      [v4 appendFormat:@"  %-50s %@", v31, v32];

      v3 = v35;
    }

    v27 = [v4 copy];
  }

  else
  {
    v27 = &stru_2859F0B50;
  }

  return v27;
}

@end