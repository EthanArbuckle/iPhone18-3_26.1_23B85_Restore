@interface RTProximityEvent
+ (id)convertContactFrequencyToString:(int64_t)string;
+ (id)convertContactRecencyToString:(int64_t)string;
+ (id)convertContactSignificanceToString:(int64_t)string;
+ (id)convertPersonRelationshipToString:(int64_t)string;
- (BOOL)isEqual:(id)equal;
- (RTProximityEvent)initWithCoder:(id)coder;
- (RTProximityEvent)initWithEventID:(id)d startDate:(id)date endDate:(id)endDate relationship:(int64_t)relationship socialScore:(double)score combinedFrequencyScores:(id)scores combinedRecencyScores:(id)recencyScores combinedSignificanceScores:(id)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTProximityEvent

- (RTProximityEvent)initWithEventID:(id)d startDate:(id)date endDate:(id)endDate relationship:(int64_t)relationship socialScore:(double)score combinedFrequencyScores:(id)scores combinedRecencyScores:(id)recencyScores combinedSignificanceScores:(id)self0
{
  dCopy = d;
  dateCopy = date;
  endDateCopy = endDate;
  scoresCopy = scores;
  recencyScoresCopy = recencyScores;
  significanceScoresCopy = significanceScores;
  if (!dCopy)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: eventID";
LABEL_12:
    _os_log_error_impl(&dword_1BF1C4000, v23, OS_LOG_TYPE_ERROR, v24, buf, 2u);
    goto LABEL_9;
  }

  if (!dateCopy)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: startDate";
    goto LABEL_12;
  }

  v30.receiver = self;
  v30.super_class = RTProximityEvent;
  v20 = [(RTProximityEvent *)&v30 init:significanceScoresCopy];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_eventID, d);
    objc_storeStrong(&v21->_startDate, date);
    objc_storeStrong(&v21->_endDate, endDate);
    v21->_relationship = relationship;
    v21->_socialScore = score;
    objc_storeStrong(&v21->_combinedFrequencyScores, scores);
    objc_storeStrong(&v21->_combinedRecencyScores, recencyScores);
    objc_storeStrong(&v21->_combinedSignificanceScores, significanceScores);
  }

  self = v21;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

+ (id)convertPersonRelationshipToString:(int64_t)string
{
  v3 = @"Unknown";
  if (string == 1)
  {
    v3 = @"Family";
  }

  if (string == 2)
  {
    return @"Friend";
  }

  else
  {
    return v3;
  }
}

+ (id)convertContactFrequencyToString:(int64_t)string
{
  if ((string - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E80B4F10[string - 1];
  }
}

+ (id)convertContactRecencyToString:(int64_t)string
{
  if ((string - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E80B4F28[string - 1];
  }
}

+ (id)convertContactSignificanceToString:(int64_t)string
{
  if ((string - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E80B4F28[string - 1];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_18;
  }

  v6 = equalCopy;
  endDate = [(RTProximityEvent *)self endDate];
  if (!endDate)
  {
    endDate2 = [(RTProximityEvent *)v6 endDate];
    if (!endDate2)
    {
      v10 = 1;
LABEL_10:

      goto LABEL_11;
    }
  }

  endDate3 = [(RTProximityEvent *)self endDate];
  endDate4 = [(RTProximityEvent *)v6 endDate];
  v10 = [endDate3 isEqualToDate:endDate4];

  if (!endDate)
  {
    goto LABEL_10;
  }

LABEL_11:

  eventID = [(RTProximityEvent *)self eventID];
  eventID2 = [(RTProximityEvent *)v6 eventID];
  if ([eventID isEqual:eventID2])
  {
    startDate = [(RTProximityEvent *)self startDate];
    startDate2 = [(RTProximityEvent *)v6 startDate];
    if (([startDate isEqualToDate:startDate2] & v10) == 1)
    {
      relationship = [(RTProximityEvent *)self relationship];
      v11 = relationship == [(RTProximityEvent *)v6 relationship];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_18:
  return v11;
}

- (id)descriptionDictionary
{
  v3 = objc_opt_new();
  uUIDString = [(NSUUID *)self->_eventID UUIDString];
  [v3 setObject:uUIDString forKey:@"EventID"];

  startDate = self->_startDate;
  if (startDate)
  {
    getFormattedDateString = [(NSDate *)startDate getFormattedDateString];
    [v3 setObject:getFormattedDateString forKey:@"StartDate"];
  }

  else
  {
    [v3 setObject:@"-" forKey:@"StartDate"];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    getFormattedDateString2 = [(NSDate *)endDate getFormattedDateString];
    [v3 setObject:getFormattedDateString2 forKey:@"EndDate"];
  }

  else
  {
    [v3 setObject:@"-" forKey:@"EndDate"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_socialScore];
  stringValue = [v9 stringValue];
  [v3 setObject:stringValue forKey:@"SocialScore"];

  v11 = [objc_opt_class() convertPersonRelationshipToString:self->_relationship];
  [v3 setObject:v11 forKey:@"Relationship"];

  combinedFrequencyScores = [(RTProximityEvent *)self combinedFrequencyScores];

  if (combinedFrequencyScores)
  {
    combinedFrequencyScores2 = [(RTProximityEvent *)self combinedFrequencyScores];
    v14 = [combinedFrequencyScores2 count];

    if (v14)
    {
      v15 = 0;
      do
      {
        v16 = [objc_opt_class() convertContactFrequencyToString:v15];
        combinedFrequencyScores3 = [(RTProximityEvent *)self combinedFrequencyScores];
        v18 = [combinedFrequencyScores3 objectAtIndexedSubscript:v15];
        intValue = [v18 intValue];

        if (intValue >= 1)
        {
          combinedFrequencyScores4 = [(RTProximityEvent *)self combinedFrequencyScores];
          v21 = [combinedFrequencyScores4 objectAtIndexedSubscript:v15];
          stringValue2 = [v21 stringValue];
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Frequency:%@", v16];
          [v3 setObject:stringValue2 forKey:v23];
        }

        ++v15;
        combinedFrequencyScores5 = [(RTProximityEvent *)self combinedFrequencyScores];
        v25 = [combinedFrequencyScores5 count];
      }

      while (v25 > v15);
    }
  }

  combinedRecencyScores = [(RTProximityEvent *)self combinedRecencyScores];

  if (combinedRecencyScores)
  {
    combinedRecencyScores2 = [(RTProximityEvent *)self combinedRecencyScores];
    v28 = [combinedRecencyScores2 count];

    if (v28)
    {
      v29 = 0;
      do
      {
        v30 = [RTProximityEvent convertContactRecencyToString:v29];
        combinedRecencyScores3 = [(RTProximityEvent *)self combinedRecencyScores];
        v32 = [combinedRecencyScores3 objectAtIndexedSubscript:v29];
        intValue2 = [v32 intValue];

        if (intValue2 >= 1)
        {
          combinedRecencyScores4 = [(RTProximityEvent *)self combinedRecencyScores];
          v35 = [combinedRecencyScores4 objectAtIndexedSubscript:v29];
          stringValue3 = [v35 stringValue];
          v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Recency:%@", v30];
          [v3 setObject:stringValue3 forKey:v37];
        }

        ++v29;
        combinedRecencyScores5 = [(RTProximityEvent *)self combinedRecencyScores];
        v39 = [combinedRecencyScores5 count];
      }

      while (v39 > v29);
    }
  }

  combinedSignificanceScores = [(RTProximityEvent *)self combinedSignificanceScores];

  if (combinedSignificanceScores)
  {
    combinedSignificanceScores2 = [(RTProximityEvent *)self combinedSignificanceScores];
    v42 = [combinedSignificanceScores2 count];

    if (v42)
    {
      v43 = 0;
      do
      {
        v44 = [RTProximityEvent convertContactSignificanceToString:v43];
        combinedSignificanceScores3 = [(RTProximityEvent *)self combinedSignificanceScores];
        v46 = [combinedSignificanceScores3 objectAtIndexedSubscript:v43];
        intValue3 = [v46 intValue];

        if (intValue3 >= 1)
        {
          combinedSignificanceScores4 = [(RTProximityEvent *)self combinedSignificanceScores];
          v49 = [combinedSignificanceScores4 objectAtIndexedSubscript:v43];
          stringValue4 = [v49 stringValue];
          v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Significance:%@", v44];
          [v3 setObject:stringValue4 forKey:v51];
        }

        ++v43;
        combinedSignificanceScores5 = [(RTProximityEvent *)self combinedSignificanceScores];
        v53 = [combinedSignificanceScores5 count];
      }

      while (v53 > v43);
    }
  }

  return v3;
}

- (id)description
{
  v17 = *MEMORY[0x1E69E9840];
  descriptionDictionary = [(RTProximityEvent *)self descriptionDictionary];
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
  eventID = [(RTProximityEvent *)self eventID];
  startDate = [(RTProximityEvent *)self startDate];
  endDate = [(RTProximityEvent *)self endDate];
  relationship = [(RTProximityEvent *)self relationship];
  [(RTProximityEvent *)self socialScore];
  v10 = v9;
  combinedFrequencyScores = [(RTProximityEvent *)self combinedFrequencyScores];
  combinedRecencyScores = [(RTProximityEvent *)self combinedRecencyScores];
  combinedSignificanceScores = [(RTProximityEvent *)self combinedSignificanceScores];
  v14 = [v4 initWithEventID:eventID startDate:startDate endDate:endDate relationship:relationship socialScore:combinedFrequencyScores combinedFrequencyScores:combinedRecencyScores combinedRecencyScores:v10 combinedSignificanceScores:combinedSignificanceScores];

  return v14;
}

- (RTProximityEvent)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EventID"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StartDate"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EndDate"];
  v11 = [coderCopy decodeInt64ForKey:@"Relationship"];
  [coderCopy decodeDoubleForKey:@"SocialScore"];
  v13 = v12;
  v14 = [coderCopy decodeObjectOfClasses:v7 forKey:@"CombinedFrequency"];
  v15 = [coderCopy decodeObjectOfClasses:v7 forKey:@"CombinedRecency"];
  v16 = [coderCopy decodeObjectOfClasses:v7 forKey:@"ContactSignificance"];

  v17 = [(RTProximityEvent *)self initWithEventID:v8 startDate:v9 endDate:v10 relationship:v11 socialScore:v14 combinedFrequencyScores:v15 combinedRecencyScores:v13 combinedSignificanceScores:v16];
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  eventID = self->_eventID;
  coderCopy = coder;
  [coderCopy encodeObject:eventID forKey:@"EventID"];
  [coderCopy encodeObject:self->_startDate forKey:@"StartDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"EndDate"];
  [coderCopy encodeInt64:self->_relationship forKey:@"Relationship"];
  [coderCopy encodeDouble:@"SocialScore" forKey:self->_socialScore];
  [coderCopy encodeObject:self->_combinedFrequencyScores forKey:@"CombinedFrequency"];
  [coderCopy encodeObject:self->_combinedRecencyScores forKey:@"CombinedRecency"];
  [coderCopy encodeObject:self->_combinedSignificanceScores forKey:@"ContactSignificance"];
}

@end