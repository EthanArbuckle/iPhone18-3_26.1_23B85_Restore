@interface RTPredictedContextOptions
- (BOOL)isEqual:(id)a3;
- (RTPredictedContextOptions)init;
- (RTPredictedContextOptions)initWithCoder:(id)a3;
- (RTPredictedContextOptions)initWithCreationDate:(id)a3 forecastWindowDateInterval:(id)a4 forecastWindowTimeInterval:(double)a5 filterContextTypeMask:(unint64_t)a6 filterLocations:(id)a7 resultSortDescriptors:(id)a8;
- (RTPredictedContextOptions)initWithForecastWindowDateInterval:(id)a3 filterContextTypeMask:(unint64_t)a4 filterLocations:(id)a5 resultSortDescriptors:(id)a6;
- (RTPredictedContextOptions)initWithForecastWindowTimeInterval:(double)a3 filterContextTypeMask:(unint64_t)a4 filterLocations:(id)a5 resultSortDescriptors:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPredictedContextOptions

- (RTPredictedContextOptions)init
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AB80]);
  v4 = [MEMORY[0x1E695DF00] now];
  v5 = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [v3 initWithStartDate:v4 endDate:v5];
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateInterval.startDate.date" ascending:1];
  v13[0] = v7;
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"probability" ascending:0];
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v10 = [(RTPredictedContextOptions *)self initWithForecastWindowDateInterval:v6 filterContextTypeMask:3 filterLocations:0 resultSortDescriptors:v9];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (RTPredictedContextOptions)initWithForecastWindowDateInterval:(id)a3 filterContextTypeMask:(unint64_t)a4 filterLocations:(id)a5 resultSortDescriptors:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x1E696AB80]);
    v15 = [MEMORY[0x1E695DF00] now];
    v16 = [MEMORY[0x1E695DF00] distantFuture];
    v13 = [v14 initWithStartDate:v15 endDate:v16];
  }

  v17 = [MEMORY[0x1E695DF00] date];
  v18 = [(RTPredictedContextOptions *)self initWithCreationDate:v17 forecastWindowDateInterval:v13 forecastWindowTimeInterval:a4 filterContextTypeMask:v11 filterLocations:v12 resultSortDescriptors:0.0];

  return v18;
}

- (RTPredictedContextOptions)initWithForecastWindowTimeInterval:(double)a3 filterContextTypeMask:(unint64_t)a4 filterLocations:(id)a5 resultSortDescriptors:(id)a6
{
  v10 = MEMORY[0x1E695DF00];
  v11 = a6;
  v12 = a5;
  v13 = [v10 date];
  v14 = [(RTPredictedContextOptions *)self initWithCreationDate:v13 forecastWindowDateInterval:0 forecastWindowTimeInterval:a4 filterContextTypeMask:v12 filterLocations:v11 resultSortDescriptors:a3];

  return v14;
}

- (RTPredictedContextOptions)initWithCreationDate:(id)a3 forecastWindowDateInterval:(id)a4 forecastWindowTimeInterval:(double)a5 filterContextTypeMask:(unint64_t)a6 filterLocations:(id)a7 resultSortDescriptors:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a8;
  v24.receiver = self;
  v24.super_class = RTPredictedContextOptions;
  v19 = [(RTPredictedContextOptions *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_creationDate, a3);
    if (v16 || a5 != 0.0)
    {
      objc_storeStrong(&v20->_forecastWindowDateInterval, a4);
      v20->_forecastWindowTimeInterval = a5;
    }

    else
    {
      v21 = [MEMORY[0x1E695DF00] distantFuture];
      [v21 timeIntervalSinceReferenceDate];
      v20->_forecastWindowTimeInterval = v22;
    }

    v20->_filterContextTypeMask = a6;
    objc_storeStrong(&v20->_filterLocations, a7);
    objc_storeStrong(&v20->_resultSortDescriptors, a8);
  }

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  creationDate = self->_creationDate;
  v5 = a3;
  [v5 encodeObject:creationDate forKey:@"creationDate"];
  [v5 encodeObject:self->_forecastWindowDateInterval forKey:@"forecastWindowDateInterval"];
  [v5 encodeDouble:@"forecastWindowTimeInterval" forKey:self->_forecastWindowTimeInterval];
  [v5 encodeInteger:self->_filterContextTypeMask forKey:@"filterContextTypeMask"];
  [v5 encodeObject:self->_filterLocations forKey:@"filterLocations"];
  [v5 encodeObject:self->_resultSortDescriptors forKey:@"resultSortDescriptors"];
}

- (RTPredictedContextOptions)initWithCoder:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v30 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v28 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"forecastWindowDateInterval"];
  [v3 decodeDoubleForKey:@"forecastWindowTimeInterval"];
  v5 = v4;
  v27 = [v3 decodeIntegerForKey:@"filterContextTypeMask"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v26 = [v3 decodeObjectOfClasses:v8 forKey:@"filterLocations"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v31 = v3;
  v12 = [v3 decodeObjectOfClasses:v11 forKey:@"resultSortDescriptors"];

  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v33;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v32 + 1) + 8 * i);
        v20 = MEMORY[0x1E696AEB0];
        v21 = [v19 key];
        v22 = [v20 sortDescriptorWithKey:v21 ascending:objc_msgSend(v19 selector:{"ascending"), objc_msgSend(v19, "selector")}];

        [v13 addObject:v22];
      }

      v16 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v16);
  }

  v23 = [(RTPredictedContextOptions *)self initWithCreationDate:v30 forecastWindowDateInterval:v28 forecastWindowTimeInterval:v27 filterContextTypeMask:v26 filterLocations:v13 resultSortDescriptors:v5];
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v17 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(RTPredictedContextOptions *)self forecastWindowDateInterval];
    v8 = [(RTPredictedContextOptions *)v6 forecastWindowDateInterval];
    if ([v7 isEqualToDateInterval:v8] && (-[RTPredictedContextOptions forecastWindowTimeInterval](self, "forecastWindowTimeInterval"), v10 = v9, -[RTPredictedContextOptions forecastWindowTimeInterval](v6, "forecastWindowTimeInterval"), v10 == v11) && (v12 = -[RTPredictedContextOptions filterContextTypeMask](self, "filterContextTypeMask"), v12 == -[RTPredictedContextOptions filterContextTypeMask](v6, "filterContextTypeMask")))
    {
      v13 = [(RTPredictedContextOptions *)self filterLocations];
      v14 = [(RTPredictedContextOptions *)v6 filterLocations];
      if ([v13 isEqual:v14])
      {
        v15 = [(RTPredictedContextOptions *)self resultSortDescriptors];
        v16 = [(RTPredictedContextOptions *)v6 resultSortDescriptors];
        v17 = v15 == v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RTPredictedContextOptions alloc];
  forecastWindowDateInterval = self->_forecastWindowDateInterval;
  forecastWindowTimeInterval = self->_forecastWindowTimeInterval;
  filterContextTypeMask = self->_filterContextTypeMask;
  filterLocations = self->_filterLocations;
  resultSortDescriptors = self->_resultSortDescriptors;
  creationDate = self->_creationDate;

  return [(RTPredictedContextOptions *)v4 initWithCreationDate:creationDate forecastWindowDateInterval:forecastWindowDateInterval forecastWindowTimeInterval:filterContextTypeMask filterContextTypeMask:filterLocations filterLocations:resultSortDescriptors resultSortDescriptors:forecastWindowTimeInterval];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(RTPredictedContextOptions *)self creationDate];
  v5 = [(RTPredictedContextOptions *)self forecastWindowDateInterval];
  [(RTPredictedContextOptions *)self forecastWindowTimeInterval];
  v7 = v6;
  v8 = [(RTPredictedContextOptions *)self filterContextTypeMask];
  v9 = [(RTPredictedContextOptions *)self filterLocations];
  v10 = [(RTPredictedContextOptions *)self resultSortDescriptors];
  v11 = [v3 stringWithFormat:@"creationDate, %@, forecastWindowDateInterval, %@, forecastWindowTimeInterval %f, filterContextTypeMask, %lu, filterLocations, %@, resultSortDescriptors, %@", v4, v5, v7, v8, v9, v10];

  return v11;
}

@end