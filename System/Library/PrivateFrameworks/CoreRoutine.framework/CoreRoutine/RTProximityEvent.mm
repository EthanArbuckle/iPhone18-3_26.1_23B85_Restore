@interface RTProximityEvent
+ (id)convertContactFrequencyToString:(int64_t)a3;
+ (id)convertContactRecencyToString:(int64_t)a3;
+ (id)convertContactSignificanceToString:(int64_t)a3;
+ (id)convertPersonRelationshipToString:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (RTProximityEvent)initWithCoder:(id)a3;
- (RTProximityEvent)initWithEventID:(id)a3 startDate:(id)a4 endDate:(id)a5 relationship:(int64_t)a6 socialScore:(double)a7 combinedFrequencyScores:(id)a8 combinedRecencyScores:(id)a9 combinedSignificanceScores:(id)a10;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTProximityEvent

- (RTProximityEvent)initWithEventID:(id)a3 startDate:(id)a4 endDate:(id)a5 relationship:(int64_t)a6 socialScore:(double)a7 combinedFrequencyScores:(id)a8 combinedRecencyScores:(id)a9 combinedSignificanceScores:(id)a10
{
  v18 = a3;
  v19 = a4;
  v29 = a5;
  v28 = a8;
  v27 = a9;
  v26 = a10;
  if (!v18)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v22 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: eventID";
LABEL_12:
    _os_log_error_impl(&dword_1BF1C4000, v23, OS_LOG_TYPE_ERROR, v24, buf, 2u);
    goto LABEL_9;
  }

  if (!v19)
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
  v20 = [(RTProximityEvent *)&v30 init:v26];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_eventID, a3);
    objc_storeStrong(&v21->_startDate, a4);
    objc_storeStrong(&v21->_endDate, a5);
    v21->_relationship = a6;
    v21->_socialScore = a7;
    objc_storeStrong(&v21->_combinedFrequencyScores, a8);
    objc_storeStrong(&v21->_combinedRecencyScores, a9);
    objc_storeStrong(&v21->_combinedSignificanceScores, a10);
  }

  self = v21;
  v22 = self;
LABEL_10:

  return v22;
}

+ (id)convertPersonRelationshipToString:(int64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 1)
  {
    v3 = @"Family";
  }

  if (a3 == 2)
  {
    return @"Friend";
  }

  else
  {
    return v3;
  }
}

+ (id)convertContactFrequencyToString:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E80B4F10[a3 - 1];
  }
}

+ (id)convertContactRecencyToString:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E80B4F28[a3 - 1];
  }
}

+ (id)convertContactSignificanceToString:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E80B4F28[a3 - 1];
  }
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
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

  v6 = v5;
  v7 = [(RTProximityEvent *)self endDate];
  if (!v7)
  {
    v3 = [(RTProximityEvent *)v6 endDate];
    if (!v3)
    {
      v10 = 1;
LABEL_10:

      goto LABEL_11;
    }
  }

  v8 = [(RTProximityEvent *)self endDate];
  v9 = [(RTProximityEvent *)v6 endDate];
  v10 = [v8 isEqualToDate:v9];

  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_11:

  v12 = [(RTProximityEvent *)self eventID];
  v13 = [(RTProximityEvent *)v6 eventID];
  if ([v12 isEqual:v13])
  {
    v14 = [(RTProximityEvent *)self startDate];
    v15 = [(RTProximityEvent *)v6 startDate];
    if (([v14 isEqualToDate:v15] & v10) == 1)
    {
      v16 = [(RTProximityEvent *)self relationship];
      v11 = v16 == [(RTProximityEvent *)v6 relationship];
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
  v4 = [(NSUUID *)self->_eventID UUIDString];
  [v3 setObject:v4 forKey:@"EventID"];

  startDate = self->_startDate;
  if (startDate)
  {
    v6 = [(NSDate *)startDate getFormattedDateString];
    [v3 setObject:v6 forKey:@"StartDate"];
  }

  else
  {
    [v3 setObject:@"-" forKey:@"StartDate"];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    v8 = [(NSDate *)endDate getFormattedDateString];
    [v3 setObject:v8 forKey:@"EndDate"];
  }

  else
  {
    [v3 setObject:@"-" forKey:@"EndDate"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_socialScore];
  v10 = [v9 stringValue];
  [v3 setObject:v10 forKey:@"SocialScore"];

  v11 = [objc_opt_class() convertPersonRelationshipToString:self->_relationship];
  [v3 setObject:v11 forKey:@"Relationship"];

  v12 = [(RTProximityEvent *)self combinedFrequencyScores];

  if (v12)
  {
    v13 = [(RTProximityEvent *)self combinedFrequencyScores];
    v14 = [v13 count];

    if (v14)
    {
      v15 = 0;
      do
      {
        v16 = [objc_opt_class() convertContactFrequencyToString:v15];
        v17 = [(RTProximityEvent *)self combinedFrequencyScores];
        v18 = [v17 objectAtIndexedSubscript:v15];
        v19 = [v18 intValue];

        if (v19 >= 1)
        {
          v20 = [(RTProximityEvent *)self combinedFrequencyScores];
          v21 = [v20 objectAtIndexedSubscript:v15];
          v22 = [v21 stringValue];
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Frequency:%@", v16];
          [v3 setObject:v22 forKey:v23];
        }

        ++v15;
        v24 = [(RTProximityEvent *)self combinedFrequencyScores];
        v25 = [v24 count];
      }

      while (v25 > v15);
    }
  }

  v26 = [(RTProximityEvent *)self combinedRecencyScores];

  if (v26)
  {
    v27 = [(RTProximityEvent *)self combinedRecencyScores];
    v28 = [v27 count];

    if (v28)
    {
      v29 = 0;
      do
      {
        v30 = [RTProximityEvent convertContactRecencyToString:v29];
        v31 = [(RTProximityEvent *)self combinedRecencyScores];
        v32 = [v31 objectAtIndexedSubscript:v29];
        v33 = [v32 intValue];

        if (v33 >= 1)
        {
          v34 = [(RTProximityEvent *)self combinedRecencyScores];
          v35 = [v34 objectAtIndexedSubscript:v29];
          v36 = [v35 stringValue];
          v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Recency:%@", v30];
          [v3 setObject:v36 forKey:v37];
        }

        ++v29;
        v38 = [(RTProximityEvent *)self combinedRecencyScores];
        v39 = [v38 count];
      }

      while (v39 > v29);
    }
  }

  v40 = [(RTProximityEvent *)self combinedSignificanceScores];

  if (v40)
  {
    v41 = [(RTProximityEvent *)self combinedSignificanceScores];
    v42 = [v41 count];

    if (v42)
    {
      v43 = 0;
      do
      {
        v44 = [RTProximityEvent convertContactSignificanceToString:v43];
        v45 = [(RTProximityEvent *)self combinedSignificanceScores];
        v46 = [v45 objectAtIndexedSubscript:v43];
        v47 = [v46 intValue];

        if (v47 >= 1)
        {
          v48 = [(RTProximityEvent *)self combinedSignificanceScores];
          v49 = [v48 objectAtIndexedSubscript:v43];
          v50 = [v49 stringValue];
          v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Significance:%@", v44];
          [v3 setObject:v50 forKey:v51];
        }

        ++v43;
        v52 = [(RTProximityEvent *)self combinedSignificanceScores];
        v53 = [v52 count];
      }

      while (v53 > v43);
    }
  }

  return v3;
}

- (id)description
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(RTProximityEvent *)self descriptionDictionary];
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
  v5 = [(RTProximityEvent *)self eventID];
  v6 = [(RTProximityEvent *)self startDate];
  v7 = [(RTProximityEvent *)self endDate];
  v8 = [(RTProximityEvent *)self relationship];
  [(RTProximityEvent *)self socialScore];
  v10 = v9;
  v11 = [(RTProximityEvent *)self combinedFrequencyScores];
  v12 = [(RTProximityEvent *)self combinedRecencyScores];
  v13 = [(RTProximityEvent *)self combinedSignificanceScores];
  v14 = [v4 initWithEventID:v5 startDate:v6 endDate:v7 relationship:v8 socialScore:v11 combinedFrequencyScores:v12 combinedRecencyScores:v10 combinedSignificanceScores:v13];

  return v14;
}

- (RTProximityEvent)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"EventID"];
  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"StartDate"];
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"EndDate"];
  v11 = [v5 decodeInt64ForKey:@"Relationship"];
  [v5 decodeDoubleForKey:@"SocialScore"];
  v13 = v12;
  v14 = [v5 decodeObjectOfClasses:v7 forKey:@"CombinedFrequency"];
  v15 = [v5 decodeObjectOfClasses:v7 forKey:@"CombinedRecency"];
  v16 = [v5 decodeObjectOfClasses:v7 forKey:@"ContactSignificance"];

  v17 = [(RTProximityEvent *)self initWithEventID:v8 startDate:v9 endDate:v10 relationship:v11 socialScore:v14 combinedFrequencyScores:v15 combinedRecencyScores:v13 combinedSignificanceScores:v16];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  eventID = self->_eventID;
  v5 = a3;
  [v5 encodeObject:eventID forKey:@"EventID"];
  [v5 encodeObject:self->_startDate forKey:@"StartDate"];
  [v5 encodeObject:self->_endDate forKey:@"EndDate"];
  [v5 encodeInt64:self->_relationship forKey:@"Relationship"];
  [v5 encodeDouble:@"SocialScore" forKey:self->_socialScore];
  [v5 encodeObject:self->_combinedFrequencyScores forKey:@"CombinedFrequency"];
  [v5 encodeObject:self->_combinedRecencyScores forKey:@"CombinedRecency"];
  [v5 encodeObject:self->_combinedSignificanceScores forKey:@"ContactSignificance"];
}

@end