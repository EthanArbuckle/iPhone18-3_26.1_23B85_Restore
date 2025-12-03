@interface _DASLogConditionHistory
+ (id)condition:(id)condition fromDate:(id)date;
- (_DASLogConditionHistory)initWithCondition:(id)condition fromDate:(id)date;
- (id)description;
- (id)idealIntervals;
- (void)addCondition:(id)condition atDate:(id)date;
@end

@implementation _DASLogConditionHistory

- (_DASLogConditionHistory)initWithCondition:(id)condition fromDate:(id)date
{
  v10.receiver = self;
  v10.super_class = _DASLogConditionHistory;
  v4 = [(_DASLogConditionHistory *)&v10 init:condition];
  if (v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    conditions = v4->_conditions;
    v4->_conditions = array;

    array2 = [MEMORY[0x277CBEB18] array];
    intervals = v4->_intervals;
    v4->_intervals = array2;
  }

  return v4;
}

+ (id)condition:(id)condition fromDate:(id)date
{
  dateCopy = date;
  conditionCopy = condition;
  v7 = [objc_alloc(objc_opt_class()) initWithCondition:conditionCopy fromDate:dateCopy];

  return v7;
}

- (void)addCondition:(id)condition atDate:(id)date
{
  conditionCopy = condition;
  dateCopy = date;
  lastObject = [(NSMutableArray *)self->_conditions lastObject];
  v8 = [lastObject isEqual:conditionCopy];

  if ((v8 & 1) == 0)
  {
    [(NSMutableArray *)self->_conditions addObject:conditionCopy];
    [(NSMutableArray *)self->_intervals addObject:dateCopy];
  }
}

- (id)idealIntervals
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(NSMutableArray *)self->_conditions count])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = [(NSMutableArray *)self->_conditions objectAtIndexedSubscript:v4];
      isIdeal = [v6 isIdeal];

      if (isIdeal)
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
        [array addObject:v10];

        v5 = 0;
      }

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_conditions count]);
    if (v5)
    {
      v11 = objc_alloc(MEMORY[0x277CCA970]);
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      v13 = [v11 initWithStartDate:v5 endDate:distantFuture];
      [array addObject:v13];
    }
  }

  else
  {
    v5 = 0;
  }

  v14 = [array copy];

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

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    string = [MEMORY[0x277CCAB68] string];
    v5 = [(NSMutableArray *)self->_conditions count];
    if (v5)
    {
      v35 = currentCalendar;
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
          v9 = v8 = string;
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

          string = v8;
          uTF8String = [v23 UTF8String];
          v25 = [(NSMutableArray *)self->_conditions objectAtIndexedSubscript:v6];
          [v8 appendFormat:@"  %-50s %@\n", uTF8String, v25];

          v26 = v34 > v7++;
          v6 = v11;
        }

        while (v26);
      }

      v28 = description_formatter;
      v29 = [(NSMutableArray *)self->_intervals objectAtIndexedSubscript:v11];
      v30 = [v28 stringFromDate:v29];
      uTF8String2 = [v30 UTF8String];
      v32 = [(NSMutableArray *)self->_conditions objectAtIndexedSubscript:v11];
      [string appendFormat:@"  %-50s %@", uTF8String2, v32];

      currentCalendar = v35;
    }

    v27 = [string copy];
  }

  else
  {
    v27 = &stru_2859F0B50;
  }

  return v27;
}

@end