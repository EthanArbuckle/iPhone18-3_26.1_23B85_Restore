@interface _DASPredictionTimeline
- (NSDate)endDate;
- (_DASPredictionTimeline)initWithCoder:(id)coder;
- (_DASPredictionTimeline)initWithValues:(id)values eachWithDuration:(double)duration startingAt:(id)at;
- (_DASPredictionTimeline)initWithValues:(id)values forDurations:(id)durations startingAt:(id)at;
- (_DASPredictionTimeline)initWithValues:(id)values startDate:(id)date transitionDates:(id)dates;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)lowLikelihoodPeriod;
- (id)valueAtDate:(id)date;
- (id)valuesUntilEndDate:(id)date withIntervalDuration:(double)duration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DASPredictionTimeline

- (_DASPredictionTimeline)initWithValues:(id)values eachWithDuration:(double)duration startingAt:(id)at
{
  valuesCopy = values;
  atCopy = at;
  v27.receiver = self;
  v27.super_class = _DASPredictionTimeline;
  v10 = [(_DASPredictionTimeline *)&v27 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_startDate, at);
    v12 = [valuesCopy mutableCopy];
    array = [MEMORY[0x1E695DF70] array];
    v14 = v11->_startDate;
    if ([v12 count] < 2)
    {
      durationCopy3 = duration;
    }

    else
    {
      v15 = 1;
      durationCopy3 = duration;
      do
      {
        v17 = [v12 objectAtIndexedSubscript:v15];
        v18 = [v12 objectAtIndexedSubscript:v15 - 1];
        v19 = [v17 isEqual:v18];

        if (v19)
        {
          durationCopy3 = durationCopy3 + duration;
          [v12 removeObjectAtIndex:v15];
        }

        else
        {
          v20 = [(NSDate *)v14 dateByAddingTimeInterval:durationCopy3];

          [array addObject:v20];
          ++v15;
          durationCopy3 = duration;
          v14 = v20;
        }
      }

      while (v15 < [v12 count]);
    }

    v21 = [(NSDate *)v14 dateByAddingTimeInterval:durationCopy3];
    [array addObject:v21];

    v22 = [array copy];
    transitionDates = v11->_transitionDates;
    v11->_transitionDates = v22;

    v24 = [v12 copy];
    values = v11->_values;
    v11->_values = v24;
  }

  return v11;
}

- (_DASPredictionTimeline)initWithValues:(id)values forDurations:(id)durations startingAt:(id)at
{
  v34 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  durationsCopy = durations;
  atCopy = at;
  v32.receiver = self;
  v32.super_class = _DASPredictionTimeline;
  v11 = [(_DASPredictionTimeline *)&v32 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_startDate, at);
    v13 = [valuesCopy copy];
    values = v12->_values;
    v12->_values = v13;

    array = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = durationsCopy;
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
          v23 = [atCopy dateByAddingTimeInterval:v20];
          [array addObject:v23];

          ++v21;
        }

        while (v18 != v21);
        v18 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v18);
    }

    v24 = [array copy];
    transitionDates = v12->_transitionDates;
    v12->_transitionDates = v24;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v12;
}

- (_DASPredictionTimeline)initWithValues:(id)values startDate:(id)date transitionDates:(id)dates
{
  valuesCopy = values;
  dateCopy = date;
  datesCopy = dates;
  v17.receiver = self;
  v17.super_class = _DASPredictionTimeline;
  v11 = [(_DASPredictionTimeline *)&v17 init];
  if (v11)
  {
    v12 = [valuesCopy copy];
    values = v11->_values;
    v11->_values = v12;

    objc_storeStrong(&v11->_startDate, date);
    v14 = [datesCopy copy];
    transitionDates = v11->_transitionDates;
    v11->_transitionDates = v14;
  }

  return v11;
}

- (id)valueAtDate:(id)date
{
  v22 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  [(NSDate *)self->_startDate timeIntervalSinceDate:dateCopy];
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

          [*(*(&v17 + 1) + 8 * v12) timeIntervalSinceDate:{dateCopy, v17}];
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
  startDate = [(_DASPredictionTimeline *)self startDate];
  [startDate timeIntervalSinceNow];
  if (v4 > 604800.0)
  {
    v8 = 0;
    goto LABEL_31;
  }

  endDate = [(_DASPredictionTimeline *)self endDate];
  [endDate timeIntervalSinceNow];
  v7 = v6;

  if (v7 > 604800.0)
  {
    v8 = 0;
    goto LABEL_32;
  }

  v9 = MEMORY[0x1E695DF70];
  startDate2 = [(_DASPredictionTimeline *)self startDate];
  startDate = [v9 arrayWithObject:startDate2];

  transitionDates = [(_DASPredictionTimeline *)self transitionDates];
  [startDate addObjectsFromArray:transitionDates];

  if ([startDate count] == 1)
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
    v18 = [startDate objectAtIndexedSubscript:v15];
    v19 = [startDate objectAtIndexedSubscript:++v15];
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

  while (v15 < [startDate count] - 1);
  if (v16 <= 0.0 || v14 == 0)
  {
    v30 = v17;
    v12 = v35;
  }

  else
  {
    startDate3 = [(_DASPredictionTimeline *)self startDate];
    [v14 timeIntervalSinceDate:startDate3];
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

- (id)valuesUntilEndDate:(id)date withIntervalDuration:(double)duration
{
  dateCopy = date;
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:dateCopy];
  if (v8 >= 0.0)
  {
    goto LABEL_3;
  }

  [dateCopy timeIntervalSinceDate:date];
  if (v9 > 86400.0)
  {
    goto LABEL_3;
  }

  startDate = [(_DASPredictionTimeline *)self startDate];
  [dateCopy timeIntervalSinceDate:startDate];
  if (v13 <= 0.0)
  {
    v10 = 0;
  }

  else
  {
    endDate = [(_DASPredictionTimeline *)self endDate];
    [endDate timeIntervalSinceDate:date];
    v16 = v15;

    if (v16 <= 0.0)
    {
LABEL_3:
      v10 = 0;
      goto LABEL_4;
    }

    startDate = [MEMORY[0x1E695DF70] array];
    v17 = date;
    v18 = dateCopy;
    startDate2 = [(_DASPredictionTimeline *)self startDate];
    [startDate2 timeIntervalSinceDate:v17];
    v21 = v20;

    if (v21 <= 0.0)
    {
      v22 = 0;
    }

    else
    {
      v22 = (v21 / duration);
      if (v22)
      {
        for (i = 0; i != v22; ++i)
        {
          [startDate setObject:&unk_1F2ED4A60 atIndexedSubscript:i];
        }
      }

      startDate3 = [(_DASPredictionTimeline *)self startDate];

      v17 = startDate3;
    }

    endDate2 = [(_DASPredictionTimeline *)self endDate];
    [v18 timeIntervalSinceDate:endDate2];
    v27 = v26;

    endDate3 = v18;
    if (v27 > 0.0)
    {
      endDate3 = [(_DASPredictionTimeline *)self endDate];
    }

    [endDate3 timeIntervalSinceDate:v17];
    v30 = v29;
    v31 = v17;
    v32 = (v30 / duration);
    v42 = v31;
    if (v22 < v32)
    {
      do
      {
        v33 = v31;
        v34 = [(_DASPredictionTimeline *)self valueAtDate:v31];
        [startDate setObject:v34 atIndexedSubscript:v22];

        v31 = [v33 dateByAddingTimeInterval:duration];

        ++v22;
      }

      while (v32 != v22);
      v22 = (v30 / duration);
    }

    endDate4 = [(_DASPredictionTimeline *)self endDate];
    [v18 timeIntervalSinceDate:endDate4];
    v37 = v36;

    if (v37 > 0.0)
    {
      endDate5 = [(_DASPredictionTimeline *)self endDate];
      [v18 timeIntervalSinceDate:endDate5];
      v40 = v39;

      v41 = (v40 / duration);
      if (v22 < v41)
      {
        do
        {
          [startDate setObject:&unk_1F2ED4A60 atIndexedSubscript:v22++];
        }

        while (v41 != v22);
      }
    }

    v10 = [startDate copy];
  }

LABEL_4:

  return v10;
}

- (NSDate)endDate
{
  lastObject = [(NSArray *)self->_transitionDates lastObject];
  v3 = lastObject;
  if (lastObject)
  {
    date = lastObject;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v5 = date;

  return v5;
}

- (_DASPredictionTimeline)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"values"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v7 setWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"transitionDates"];

  selfCopy = 0;
  if (v5 && v6 && v12)
  {
    self = [(_DASPredictionTimeline *)self initWithValues:v6 startDate:v5 transitionDates:v12];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  values = self->_values;
  coderCopy = coder;
  [coderCopy encodeObject:values forKey:@"values"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_transitionDates forKey:@"transitionDates"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  startDate = self->_startDate;
  values = self->_values;
  transitionDates = self->_transitionDates;

  return [v4 initWithValues:values startDate:startDate transitionDates:transitionDates];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  startDate = [(_DASPredictionTimeline *)self startDate];
  endDate = [(_DASPredictionTimeline *)self endDate];
  transitionDates = [(_DASPredictionTimeline *)self transitionDates];
  v7 = MEMORY[0x1E696AD98];
  values = [(_DASPredictionTimeline *)self values];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(values, "count")}];
  v10 = [v3 stringWithFormat:@"<_DASPredictionTimeline: startDate: %@, endDate: %@, transitionDates: %@, valuesCount: %@>", startDate, endDate, transitionDates, v9];

  return v10;
}

@end