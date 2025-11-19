@interface RTPeopleCountEvent
- (BOOL)isEqual:(id)a3;
- (RTPeopleCountEvent)initWithCoder:(id)a3;
- (RTPeopleCountEvent)initWithEventID:(id)a3 startDate:(id)a4 endDate:(id)a5 totalCount:(unint64_t)a6 familyCount:(unint64_t)a7 friendsCount:(unint64_t)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPeopleCountEvent

- (RTPeopleCountEvent)initWithEventID:(id)a3 startDate:(id)a4 endDate:(id)a5 totalCount:(unint64_t)a6 familyCount:(unint64_t)a7 friendsCount:(unint64_t)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  if (!v15)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v20 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: eventID";
LABEL_12:
    _os_log_error_impl(&dword_1BF1C4000, v21, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    goto LABEL_9;
  }

  if (!v16)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: startDate";
    goto LABEL_12;
  }

  v24.receiver = self;
  v24.super_class = RTPeopleCountEvent;
  v18 = [(RTPeopleCountEvent *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_eventID, a3);
    objc_storeStrong(&v19->_startDate, a4);
    objc_storeStrong(&v19->_endDate, a5);
    v19->_totalCount = a6;
    v19->_familyCount = a7;
    v19->_friendsCount = a8;
  }

  self = v19;
  v20 = self;
LABEL_10:

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTPeopleCountEvent *)self eventID];
      v7 = [(RTPeopleCountEvent *)v5 eventID];
      if ([v6 isEqual:v7])
      {
        v8 = [(RTPeopleCountEvent *)self startDate];
        v9 = [(RTPeopleCountEvent *)v5 startDate];
        if ([v8 isEqualToDate:v9])
        {
          v10 = [(RTPeopleCountEvent *)self endDate];
          v11 = [(RTPeopleCountEvent *)v5 endDate];
          if ([v10 isEqualToDate:v11] && (v12 = -[RTPeopleCountEvent totalCount](self, "totalCount"), v12 == -[RTPeopleCountEvent totalCount](v5, "totalCount")) && (v13 = -[RTPeopleCountEvent familyCount](self, "familyCount"), v13 == -[RTPeopleCountEvent familyCount](v5, "familyCount")))
          {
            v14 = [(RTPeopleCountEvent *)self friendsCount];
            v15 = v14 == [(RTPeopleCountEvent *)v5 friendsCount];
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)descriptionDictionary
{
  v15[6] = *MEMORY[0x1E69E9840];
  v14[0] = @"EventID";
  v3 = [(NSUUID *)self->_eventID UUIDString];
  v15[0] = v3;
  v14[1] = @"StartDate";
  startDate = self->_startDate;
  if (startDate)
  {
    v5 = [(NSDate *)self->_startDate getFormattedDateString];
  }

  else
  {
    v5 = @"-";
  }

  v15[1] = v5;
  v14[2] = @"EndDate";
  endDate = self->_endDate;
  if (endDate)
  {
    v7 = [(NSDate *)self->_endDate getFormattedDateString];
  }

  else
  {
    v7 = @"-";
  }

  v15[2] = v7;
  v14[3] = @"TotalCount";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_totalCount];
  v15[3] = v8;
  v14[4] = @"FamilyCount";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_familyCount];
  v15[4] = v9;
  v14[5] = @"FriendsCount";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_friendsCount];
  v15[5] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:6];

  if (endDate)
  {
  }

  if (startDate)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)description
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(RTPeopleCountEvent *)self descriptionDictionary];
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
  v5 = [(RTPeopleCountEvent *)self eventID];
  v6 = [(RTPeopleCountEvent *)self startDate];
  v7 = [(RTPeopleCountEvent *)self endDate];
  v8 = [v4 initWithEventID:v5 startDate:v6 endDate:v7 totalCount:self->_totalCount familyCount:self->_familyCount friendsCount:self->_friendsCount];

  return v8;
}

- (RTPeopleCountEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EventID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StartDate"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EndDate"];
  v8 = [v4 decodeIntForKey:@"TotalCount"];
  v9 = [v4 decodeIntForKey:@"FamilyCount"];
  v10 = [v4 decodeIntForKey:@"FriendsCount"];

  v11 = [(RTPeopleCountEvent *)self initWithEventID:v5 startDate:v6 endDate:v7 totalCount:v8 familyCount:v9 friendsCount:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  eventID = self->_eventID;
  v5 = a3;
  [v5 encodeObject:eventID forKey:@"EventID"];
  [v5 encodeObject:self->_startDate forKey:@"StartDate"];
  [v5 encodeObject:self->_endDate forKey:@"EndDate"];
  [v5 encodeInteger:self->_totalCount forKey:@"TotalCount"];
  [v5 encodeInteger:self->_familyCount forKey:@"FamilyCount"];
  [v5 encodeInteger:self->_friendsCount forKey:@"FriendsCount"];
}

@end