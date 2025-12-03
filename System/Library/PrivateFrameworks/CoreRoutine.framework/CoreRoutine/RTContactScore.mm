@interface RTContactScore
- (BOOL)isEqual:(id)equal;
- (RTContactScore)initWithCoder:(id)coder;
- (RTContactScore)initWithContactID:(id)d frequencyScore:(double)score recencyScore:(double)recencyScore significanceScore:(double)significanceScore frequencyCount:(unint64_t)count runningMean:(double)mean runningMeanOfSquares:(double)squares;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)coder;
- (void)mergeWithAnotherContactScore:(id)score;
@end

@implementation RTContactScore

- (RTContactScore)initWithContactID:(id)d frequencyScore:(double)score recencyScore:(double)recencyScore significanceScore:(double)significanceScore frequencyCount:(unint64_t)count runningMean:(double)mean runningMeanOfSquares:(double)squares
{
  dCopy = d;
  if (dCopy)
  {
    v23.receiver = self;
    v23.super_class = RTContactScore;
    v18 = [(RTContactScore *)&v23 init];
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(&v18->_contactID, d);
      v19->_frequencyScore = score;
      v19->_recencyScore = recencyScore;
      v19->_significanceScore = significanceScore;
      v19->_frequencyCount = count;
      v19->_runningMean = mean;
      v19->_runningMeanOfSquares = squares;
    }

    self = v19;
    selfCopy = self;
  }

  else
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contactID", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)mergeWithAnotherContactScore:(id)score
{
  scoreCopy = score;
  contactID = self->_contactID;
  v12 = scoreCopy;
  contactID = [scoreCopy contactID];

  if (contactID == contactID)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      contactID = [(RTContactScore *)self contactID];
      contactID2 = [(RTContactScore *)v5 contactID];
      if ([contactID isEqual:contactID2] && (-[RTContactScore frequencyScore](self, "frequencyScore"), v9 = v8, -[RTContactScore frequencyScore](v5, "frequencyScore"), v9 == v10) && (-[RTContactScore recencyScore](self, "recencyScore"), v12 = v11, -[RTContactScore recencyScore](v5, "recencyScore"), v12 == v13))
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
  descriptionDictionary = [(RTContactScore *)self descriptionDictionary];
  v12 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONStringFromNSDictionary:descriptionDictionary error:&v12];
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

    string = [MEMORY[0x1E696AEC0] string];
  }

  else
  {
    string = v3;
  }

  v7 = string;

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (RTContactScore)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ContactID"];
  [coderCopy decodeDoubleForKey:@"FrequencyScore"];
  v7 = v6;
  [coderCopy decodeDoubleForKey:@"RecencyScore"];
  v9 = v8;
  [coderCopy decodeDoubleForKey:@"SignificanceScore"];
  v11 = v10;
  v12 = [coderCopy decodeIntegerForKey:@"FrequencyCount"];
  [coderCopy decodeDoubleForKey:@"RunningMean"];
  v14 = v13;
  [coderCopy decodeDoubleForKey:@"RunningMeanOfSquares"];
  v16 = v15;

  v17 = [(RTContactScore *)self initWithContactID:v5 frequencyScore:v12 recencyScore:v7 significanceScore:v9 frequencyCount:v11 runningMean:v14 runningMeanOfSquares:v16];
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  contactID = self->_contactID;
  coderCopy = coder;
  [coderCopy encodeObject:contactID forKey:@"ContactID"];
  [coderCopy encodeDouble:@"FrequencyScore" forKey:self->_frequencyScore];
  [coderCopy encodeDouble:@"RecencyScore" forKey:self->_recencyScore];
  [coderCopy encodeDouble:@"SignificanceScore" forKey:self->_significanceScore];
  [coderCopy encodeInteger:self->_frequencyCount forKey:@"FrequencyCount"];
  [coderCopy encodeDouble:@"RunningMean" forKey:self->_runningMean];
  [coderCopy encodeDouble:@"RunningMeanOfSquares" forKey:self->_runningMeanOfSquares];
}

@end