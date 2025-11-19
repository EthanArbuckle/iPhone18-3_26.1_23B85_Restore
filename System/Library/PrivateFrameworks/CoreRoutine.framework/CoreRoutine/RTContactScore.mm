@interface RTContactScore
- (BOOL)isEqual:(id)a3;
- (RTContactScore)initWithCoder:(id)a3;
- (RTContactScore)initWithContactID:(id)a3 frequencyScore:(double)a4 recencyScore:(double)a5 significanceScore:(double)a6 frequencyCount:(unint64_t)a7 runningMean:(double)a8 runningMeanOfSquares:(double)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)a3;
- (void)mergeWithAnotherContactScore:(id)a3;
@end

@implementation RTContactScore

- (RTContactScore)initWithContactID:(id)a3 frequencyScore:(double)a4 recencyScore:(double)a5 significanceScore:(double)a6 frequencyCount:(unint64_t)a7 runningMean:(double)a8 runningMeanOfSquares:(double)a9
{
  v17 = a3;
  if (v17)
  {
    v23.receiver = self;
    v23.super_class = RTContactScore;
    v18 = [(RTContactScore *)&v23 init];
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(&v18->_contactID, a3);
      v19->_frequencyScore = a4;
      v19->_recencyScore = a5;
      v19->_significanceScore = a6;
      v19->_frequencyCount = a7;
      v19->_runningMean = a8;
      v19->_runningMeanOfSquares = a9;
    }

    self = v19;
    v20 = self;
  }

  else
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contactID", buf, 2u);
    }

    v20 = 0;
  }

  return v20;
}

- (void)mergeWithAnotherContactScore:(id)a3
{
  v4 = a3;
  contactID = self->_contactID;
  v12 = v4;
  v6 = [v4 contactID];

  if (contactID == v6)
  {
    self->_frequencyCount += [v12 frequencyCount];
    [v12 frequencyScore];
    self->_frequencyScore = v7;
    [v12 recencyScore];
    self->_recencyScore = v8;
    [v12 significanceScore];
    self->_significanceScore = v9;
    [v12 runningMean];
    self->_runningMean = v10;
    [v12 runningMeanOfSquares];
    self->_runningMeanOfSquares = v11;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTContactScore *)self contactID];
      v7 = [(RTContactScore *)v5 contactID];
      if ([v6 isEqual:v7] && (-[RTContactScore frequencyScore](self, "frequencyScore"), v9 = v8, -[RTContactScore frequencyScore](v5, "frequencyScore"), v9 == v10) && (-[RTContactScore recencyScore](self, "recencyScore"), v12 = v11, -[RTContactScore recencyScore](v5, "recencyScore"), v12 == v13))
      {
        [(RTContactScore *)self significanceScore];
        v15 = v14;
        [(RTContactScore *)v5 significanceScore];
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

  return v17;
}

- (id)descriptionDictionary
{
  v10[4] = *MEMORY[0x1E69E9840];
  v10[0] = self->_contactID;
  v9[0] = @"ContactID";
  v9[1] = @"FrequencyScore";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_frequencyScore];
  v10[1] = v3;
  v9[2] = @"RecencyScore";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_recencyScore];
  v10[2] = v4;
  v9[3] = @"SignificanceScore";
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_significanceScore];
  v10[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)description
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(RTContactScore *)self descriptionDictionary];
  v12 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONStringFromNSDictionary:v2 error:&v12];
  v4 = v12;
  if (v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v4;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "%@ instance failed to create description:%@", buf, 0x16u);
    }

    v6 = [MEMORY[0x1E696AEC0] string];
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  contactID = self->_contactID;
  frequencyScore = self->_frequencyScore;
  recencyScore = self->_recencyScore;
  significanceScore = self->_significanceScore;
  frequencyCount = self->_frequencyCount;
  runningMean = self->_runningMean;
  runningMeanOfSquares = self->_runningMeanOfSquares;

  return [v4 initWithContactID:contactID frequencyScore:frequencyCount recencyScore:frequencyScore significanceScore:recencyScore frequencyCount:significanceScore runningMean:runningMean runningMeanOfSquares:runningMeanOfSquares];
}

- (RTContactScore)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ContactID"];
  [v4 decodeDoubleForKey:@"FrequencyScore"];
  v7 = v6;
  [v4 decodeDoubleForKey:@"RecencyScore"];
  v9 = v8;
  [v4 decodeDoubleForKey:@"SignificanceScore"];
  v11 = v10;
  v12 = [v4 decodeIntegerForKey:@"FrequencyCount"];
  [v4 decodeDoubleForKey:@"RunningMean"];
  v14 = v13;
  [v4 decodeDoubleForKey:@"RunningMeanOfSquares"];
  v16 = v15;

  v17 = [(RTContactScore *)self initWithContactID:v5 frequencyScore:v12 recencyScore:v7 significanceScore:v9 frequencyCount:v11 runningMean:v14 runningMeanOfSquares:v16];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  contactID = self->_contactID;
  v5 = a3;
  [v5 encodeObject:contactID forKey:@"ContactID"];
  [v5 encodeDouble:@"FrequencyScore" forKey:self->_frequencyScore];
  [v5 encodeDouble:@"RecencyScore" forKey:self->_recencyScore];
  [v5 encodeDouble:@"SignificanceScore" forKey:self->_significanceScore];
  [v5 encodeInteger:self->_frequencyCount forKey:@"FrequencyCount"];
  [v5 encodeDouble:@"RunningMean" forKey:self->_runningMean];
  [v5 encodeDouble:@"RunningMeanOfSquares" forKey:self->_runningMeanOfSquares];
}

@end