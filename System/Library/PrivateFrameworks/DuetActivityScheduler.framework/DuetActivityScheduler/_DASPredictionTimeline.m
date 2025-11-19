@interface _DASPredictionTimeline
- (NSDate)endDate;
- (_DASPredictionTimeline)initWithCoder:(id)a3;
- (_DASPredictionTimeline)initWithValues:(id)a3 eachWithDuration:(double)a4 startingAt:(id)a5;
- (_DASPredictionTimeline)initWithValues:(id)a3 forDurations:(id)a4 startingAt:(id)a5;
- (_DASPredictionTimeline)initWithValues:(id)a3 startDate:(id)a4 transitionDates:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)lowLikelihoodPeriod;
- (id)valueAtDate:(id)a3;
- (id)valuesUntilEndDate:(id)a3 withIntervalDuration:(double)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DASPredictionTimeline

- (_DASPredictionTimeline)initWithValues:(id)a3 eachWithDuration:(double)a4 startingAt:(id)a5
{
  v8 = a3;
  v9 = a5;
  v27.receiver = self;
  v27.super_class = _DASPredictionTimeline;
  v10 = [(_DASPredictionTimeline *)&v27 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_startDate, a5);
    v12 = [v8 mutableCopy];
    v13 = [MEMORY[0x1E695DF70] array];
    v14 = v11->_startDate;
    if ([v12 count] < 2)
    {
      v16 = a4;
    }

    else
    {
      v15 = 1;
      v16 = a4;
      do
      {
        v17 = [v12 objectAtIndexedSubscript:v15];
        v18 = [v12 objectAtIndexedSubscript:v15 - 1];
        v19 = [v17 isEqual:v18];

        if (v19)
        {
          v16 = v16 + a4;
          [v12 removeObjectAtIndex:v15];
        }

        else
        {
          v20 = [(NSDate *)v14 dateByAddingTimeInterval:v16];

          [v13 addObject:v20];
          ++v15;
          v16 = a4;
          v14 = v20;
        }
      }

      while (v15 < [v12 count]);
    }

    v21 = [(NSDate *)v14 dateByAddingTimeInterval:v16];
    [v13 addObject:v21];

    v22 = [v13 copy];
    transitionDates = v11->_transitionDates;
    v11->_transitionDates = v22;

    v24 = [v12 copy];
    values = v11->_values;
    v11->_values = v24;
  }

  return v11;
}

- (_DASPredictionTimeline)initWithValues:(id)a3 forDurations:(id)a4 startingAt:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v32.receiver = self;
  v32.super_class = _DASPredictionTimeline;
  v11 = [(_DASPredictionTimeline *)&v32 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_startDate, a5);
    v13 = [v8 copy];
    values = v12->_values;
    v12->_values = v13;

    v15 = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      v20 = 0.0;
      do
      {
        v21 = 0;
        do
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v28 + 1) + 8 * v21) doubleValue];
          v20 = v20 + v22;
          v23 = [v10 dateByAddingTimeInterval:v20];
          [v15 addObject:v23];

          ++v21;
        }

        while (v18 != v21);
        v18 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v18);
    }

    v24 = [v15 copy];
    transitionDates = v12->_transitionDates;
    v12->_transitionDates = v24;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v12;
}

- (_DASPredictionTimeline)initWithValues:(id)a3 startDate:(id)a4 transitionDates:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = _DASPredictionTimeline;
  v11 = [(_DASPredictionTimeline *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    values = v11->_values;
    v11->_values = v12;

    objc_storeStrong(&v11->_startDate, a4);
    v14 = [v10 copy];
    transitionDates = v11->_transitionDates;
    v11->_transitionDates = v14;
  }

  return v11;
}

- (id)valueAtDate:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSDate *)self->_startDate timeIntervalSinceDate:v4];
  if (v5 <= 0.0)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_transitionDates;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v18;
      while (2)
      {
        v12 = 0;
        v13 = v10;
        v10 += v9;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v17 + 1) + 8 * v12) timeIntervalSinceDate:{v4, v17}];
          if (v14 > 0.0)
          {
            v6 = [(NSArray *)self->_values objectAtIndexedSubscript:v13];
            goto LABEL_13;
          }

          ++v13;
          ++v12;
        }

        while (v9 != v12);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_13:
  }

  else
  {
    v6 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)lowLikelihoodPeriod
{
  v3 = [(_DASPredictionTimeline *)self startDate];
  [v3 timeIntervalSinceNow];
  if (v4 > 604800.0)
  {
    v8 = 0;
    goto LABEL_31;
  }

  v5 = [(_DASPredictionTimeline *)self endDate];
  [v5 timeIntervalSinceNow];
  v7 = v6;

  if (v7 > 604800.0)
  {
    v8 = 0;
    goto LABEL_32;
  }

  v9 = MEMORY[0x1E695DF70];
  v10 = [(_DASPredictionTimeline *)self startDate];
  v3 = [v9 arrayWithObject:v10];

  v11 = [(_DASPredictionTimeline *)self transitionDates];
  [v3 addObjectsFromArray:v11];

  if ([v3 count] == 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v8 = 0;
    goto LABEL_30;
  }

  v15 = 0;
  v14 = 0;
  v13 = 0;
  v35 = 0;
  v16 = 0.0;
  v17 = 0.0;
  do
  {
    v18 = [v3 objectAtIndexedSubscript:v15];
    v19 = [v3 objectAtIndexedSubscript:++v15];
    v20 = [(_DASPredictionTimeline *)self valueAtDate:v18];
    [v20 doubleValue];
    if (v21 < 0.05)
    {
      [v19 timeIntervalSinceDate:v18];
      v16 = v16 + v22;
      v23 = v18;
      v24 = v14;
      if (v13)
      {
        goto LABEL_17;
      }

LABEL_16:
      v26 = v18;
      v13 = v23;
      v14 = v24;
      goto LABEL_17;
    }

    if (v13)
    {
      if (v16 > v17)
      {
        v25 = v13;

        v35 = v25;
        v17 = v16;
      }

      v16 = 0.0;
    }

    v23 = 0;
    v13 = 0;
    v24 = v18;
    if (!v14)
    {
      goto LABEL_16;
    }

LABEL_17:
  }

  while (v15 < [v3 count] - 1);
  if (v16 <= 0.0 || v14 == 0)
  {
    v30 = v17;
    v12 = v35;
  }

  else
  {
    v28 = [(_DASPredictionTimeline *)self startDate];
    [v14 timeIntervalSinceDate:v28];
    v30 = v16 + v29;

    v12 = v35;
    if (v30 <= v17)
    {
      v30 = v17;
    }

    else
    {
      v31 = v13;

      v12 = v31;
    }
  }

  v8 = 0;
  if (v30 >= 7200.0 && v12)
  {
    v32 = objc_alloc(MEMORY[0x1E696AB80]);
    v33 = [v12 dateByAddingTimeInterval:v30];
    v8 = [v32 initWithStartDate:v12 endDate:v33];
  }

LABEL_30:

LABEL_31:
LABEL_32:

  return v8;
}

- (id)valuesUntilEndDate:(id)a3 withIntervalDuration:(double)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E695DF00] date];
  [v7 timeIntervalSinceDate:v6];
  if (v8 >= 0.0)
  {
    goto LABEL_3;
  }

  [v6 timeIntervalSinceDate:v7];
  if (v9 > 86400.0)
  {
    goto LABEL_3;
  }

  v12 = [(_DASPredictionTimeline *)self startDate];
  [v6 timeIntervalSinceDate:v12];
  if (v13 <= 0.0)
  {
    v10 = 0;
  }

  else
  {
    v14 = [(_DASPredictionTimeline *)self endDate];
    [v14 timeIntervalSinceDate:v7];
    v16 = v15;

    if (v16 <= 0.0)
    {
LABEL_3:
      v10 = 0;
      goto LABEL_4;
    }

    v12 = [MEMORY[0x1E695DF70] array];
    v17 = v7;
    v18 = v6;
    v19 = [(_DASPredictionTimeline *)self startDate];
    [v19 timeIntervalSinceDate:v17];
    v21 = v20;

    if (v21 <= 0.0)
    {
      v22 = 0;
    }

    else
    {
      v22 = (v21 / a4);
      if (v22)
      {
        for (i = 0; i != v22; ++i)
        {
          [v12 setObject:&unk_1F2ED4A60 atIndexedSubscript:i];
        }
      }

      v24 = [(_DASPredictionTimeline *)self startDate];

      v17 = v24;
    }

    v25 = [(_DASPredictionTimeline *)self endDate];
    [v18 timeIntervalSinceDate:v25];
    v27 = v26;

    v28 = v18;
    if (v27 > 0.0)
    {
      v28 = [(_DASPredictionTimeline *)self endDate];
    }

    [v28 timeIntervalSinceDate:v17];
    v30 = v29;
    v31 = v17;
    v32 = (v30 / a4);
    v42 = v31;
    if (v22 < v32)
    {
      do
      {
        v33 = v31;
        v34 = [(_DASPredictionTimeline *)self valueAtDate:v31];
        [v12 setObject:v34 atIndexedSubscript:v22];

        v31 = [v33 dateByAddingTimeInterval:a4];

        ++v22;
      }

      while (v32 != v22);
      v22 = (v30 / a4);
    }

    v35 = [(_DASPredictionTimeline *)self endDate];
    [v18 timeIntervalSinceDate:v35];
    v37 = v36;

    if (v37 > 0.0)
    {
      v38 = [(_DASPredictionTimeline *)self endDate];
      [v18 timeIntervalSinceDate:v38];
      v40 = v39;

      v41 = (v40 / a4);
      if (v22 < v41)
      {
        do
        {
          [v12 setObject:&unk_1F2ED4A60 atIndexedSubscript:v22++];
        }

        while (v41 != v22);
      }
    }

    v10 = [v12 copy];
  }

LABEL_4:

  return v10;
}

- (NSDate)endDate
{
  v2 = [(NSArray *)self->_transitionDates lastObject];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E695DF00] date];
  }

  v5 = v4;

  return v5;
}

- (_DASPredictionTimeline)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"values"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v7 setWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"transitionDates"];

  v13 = 0;
  if (v5 && v6 && v12)
  {
    self = [(_DASPredictionTimeline *)self initWithValues:v6 startDate:v5 transitionDates:v12];
    v13 = self;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  values = self->_values;
  v5 = a3;
  [v5 encodeObject:values forKey:@"values"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_transitionDates forKey:@"transitionDates"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  startDate = self->_startDate;
  values = self->_values;
  transitionDates = self->_transitionDates;

  return [v4 initWithValues:values startDate:startDate transitionDates:transitionDates];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_DASPredictionTimeline *)self startDate];
  v5 = [(_DASPredictionTimeline *)self endDate];
  v6 = [(_DASPredictionTimeline *)self transitionDates];
  v7 = MEMORY[0x1E696AD98];
  v8 = [(_DASPredictionTimeline *)self values];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
  v10 = [v3 stringWithFormat:@"<_DASPredictionTimeline: startDate: %@, endDate: %@, transitionDates: %@, valuesCount: %@>", v4, v5, v6, v9];

  return v10;
}

@end