@interface HKLocationReadings
- (HKLocationReadings)initWithCoder:(id)a3;
- (HKLocationReadings)initWithLocation:(id)a3 workout:(id)a4;
- (HKLocationReadings)initWithLocations:(id)a3 workout:(id)a4 isSmoothed:(BOOL)a5;
- (id)debugDescription;
- (id)description;
- (void)_calculateSpeeds;
- (void)_filterLocationsByActiveTimePeriod:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKLocationReadings

- (HKLocationReadings)initWithLocations:(id)a3 workout:(id)a4 isSmoothed:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = HKLocationReadings;
  v10 = [(HKLocationReadings *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_workout, a4);
    v11->_isSmoothed = a5;
    [(HKLocationReadings *)v11 _filterLocationsByActiveTimePeriod:v8];
    [(HKLocationReadings *)v11 _calculateSpeeds];
  }

  return v11;
}

- (HKLocationReadings)initWithLocation:(id)a3 workout:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HKLocationReadings;
  v8 = [(HKLocationReadings *)&v12 init];
  if (v8)
  {
    v13[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    allValidLocations = v8->_allValidLocations;
    v8->_allValidLocations = v9;

    objc_storeStrong(&v8->_workout, a4);
  }

  return v8;
}

- (id)debugDescription
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendFormat:@"Locations count: %zd.", -[HKLocationReadings count](self, "count")];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(HKLocationReadings *)self inOrderLocationArrays];
  v21 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v21)
  {
    v4 = 0;
    v20 = *v23;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        [v3 appendFormat:@"---- paused."];
        if ([v6 count])
        {
          v7 = 0;
          do
          {
            v8 = [v6 objectAtIndexedSubscript:v7];
            v9 = [(HKLocationReadings *)self allValidLocations];
            v10 = [v9 objectAtIndexedSubscript:v4];

            [v8 coordinate];
            v12 = v11;
            [v8 coordinate];
            v14 = v13;
            [v10 coordinate];
            v16 = v15;
            [v10 coordinate];
            [v3 appendFormat:@"%zd. %zd. from (%f, %f) vs (%f, %f).", v7, v4++, v12, v14, v16, v17];

            ++v7;
          }

          while (v7 < [v6 count]);
        }
      }

      v21 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v21);
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSArray *)self->_allValidLocations count];
  if ([(HKLocationReadings *)self isSmoothed])
  {
    v5 = @"smoothed ";
  }

  else
  {
    v5 = &stru_1F42FFBE0;
  }

  v9.receiver = self;
  v9.super_class = HKLocationReadings;
  v6 = [(HKLocationReadings *)&v9 description];
  v7 = [v3 stringWithFormat:@"(%zd %@locations) %@", v4, v5, v6];

  return v7;
}

- (void)_calculateSpeeds
{
  v23 = *MEMORY[0x1E69E9840];
  *&self->_topSpeed = xmmword_1C3D5CF30;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_allValidLocations;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v4)
  {

LABEL_17:
    v17 = 0.0;
    goto LABEL_18;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v19;
  v8 = 0.0;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v18 + 1) + 8 * i);
      [v10 speed];
      if (v11 >= 0.0)
      {
        [v10 speed];
        if (v12 > self->_topSpeed)
        {
          [v10 speed];
          self->_topSpeed = v13;
        }

        [v10 speed];
        if (v14 < self->_bottomSpeed)
        {
          [v10 speed];
          self->_bottomSpeed = v15;
        }

        [v10 speed];
        v8 = v8 + v16;
        ++v6;
      }
    }

    v5 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v5);

  if (v6 < 1)
  {
    goto LABEL_17;
  }

  v17 = v8 / v6;
LABEL_18:
  self->_averageSpeed = v17;
}

- (void)_filterLocationsByActiveTimePeriod:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E695DF70] array];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  workout = self->_workout;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__HKLocationReadings__filterLocationsByActiveTimePeriod___block_invoke;
  v15[3] = &unk_1E81B6100;
  v20 = &v21;
  v8 = v4;
  v16 = v8;
  v9 = v6;
  v17 = v9;
  v10 = v5;
  v18 = v10;
  v19 = self;
  [(HKWorkout *)workout _enumerateActiveTimePeriods:v15];
  objc_storeStrong(&self->_inOrderLocationArrays, v6);
  objc_storeStrong(&self->_allValidLocations, v5);
  _HKInitializeLogging();
  v11 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(HKLocationReadings *)self count];
    v13 = v22[3];
    v14 = [(HKWorkout *)self->_workout UUID];
    *buf = 134218498;
    v26 = v12;
    v27 = 2048;
    v28 = v13;
    v29 = 2112;
    v30 = v14;
    _os_log_impl(&dword_1C3942000, v11, OS_LOG_TYPE_DEFAULT, "[routes] HKLocationReadings: %ld locations are within the %ld active periods for workout ID %@", buf, 0x20u);
  }

  _Block_object_dispose(&v21, 8);
}

void __57__HKLocationReadings__filterLocationsByActiveTimePeriod___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  ++*(*(*(a1 + 64) + 8) + 24);
  v7 = MEMORY[0x1E696AE18];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __57__HKLocationReadings__filterLocationsByActiveTimePeriod___block_invoke_2;
  v22 = &unk_1E81B60D8;
  v8 = v5;
  v23 = v8;
  v9 = v6;
  v24 = v9;
  v10 = [v7 predicateWithBlock:&v19];
  v11 = [*(a1 + 32) filteredArrayUsingPredicate:{v10, v19, v20, v21, v22}];
  if ([v11 count])
  {
    [*(a1 + 40) addObject:v11];
    [*(a1 + 48) addObjectsFromArray:v11];
  }

  v12 = [*(a1 + 32) count];
  v13 = v12 - [v11 count];
  if (v13 >= 1)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x1E696B9A8];
    if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*(*(a1 + 64) + 8) + 24);
      v16 = *(*(a1 + 56) + 16);
      v17 = v14;
      v18 = [v16 UUID];
      *buf = 134219010;
      v26 = v13;
      v27 = 2048;
      v28 = v15;
      v29 = 2112;
      v30 = v8;
      v31 = 2112;
      v32 = v9;
      v33 = 2112;
      v34 = v18;
      _os_log_impl(&dword_1C3942000, v17, OS_LOG_TYPE_DEFAULT, "[routes] HKLocationReadings: %ld locations are out of range for active workout period %ld (%@ - %@) and have been filtered out for workout ID %@", buf, 0x34u);
    }
  }
}

BOOL __57__HKLocationReadings__filterLocationsByActiveTimePeriod___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 timestamp];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  [*(a1 + 32) timeIntervalSinceReferenceDate];
  if (v5 < v6)
  {
    return 0;
  }

  [*(a1 + 40) timeIntervalSinceReferenceDate];
  return v5 <= v8;
}

- (void)encodeWithCoder:(id)a3
{
  isSmoothed = self->_isSmoothed;
  v5 = a3;
  [v5 encodeBool:isSmoothed forKey:@"isSmoothed"];
  [v5 encodeObject:self->_workout forKey:@"workout"];
  [v5 encodeObject:self->_allValidLocations forKey:@"allValidLocations"];
  [v5 encodeObject:self->_inOrderLocationArrays forKey:@"inOrderLocationArrays"];
  [v5 encodeDouble:@"averageSpeed" forKey:self->_averageSpeed];
  [v5 encodeDouble:@"topSpeed" forKey:self->_topSpeed];
  [v5 encodeDouble:@"bottomSpeed" forKey:self->_bottomSpeed];
}

- (HKLocationReadings)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HKLocationReadings;
  v5 = [(HKLocationReadings *)&v23 init];
  if (v5)
  {
    v5->_isSmoothed = [v4 decodeBoolForKey:@"isSmoothed"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workout"];
    workout = v5->_workout;
    v5->_workout = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"allValidLocations"];
    allValidLocations = v5->_allValidLocations;
    v5->_allValidLocations = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"inOrderLocationArrays"];
    inOrderLocationArrays = v5->_inOrderLocationArrays;
    v5->_inOrderLocationArrays = v17;

    [v4 decodeDoubleForKey:@"averageSpeed"];
    v5->_averageSpeed = v19;
    [v4 decodeDoubleForKey:@"topSpeed"];
    v5->_topSpeed = v20;
    [v4 decodeDoubleForKey:@"bottomSpeed"];
    v5->_bottomSpeed = v21;
  }

  return v5;
}

@end