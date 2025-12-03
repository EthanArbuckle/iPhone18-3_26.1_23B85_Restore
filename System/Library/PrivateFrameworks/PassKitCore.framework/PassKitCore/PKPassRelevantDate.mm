@interface PKPassRelevantDate
+ (id)findDateFromDates:(id)dates option:(unint64_t)option;
- (BOOL)_isEqualToRelevancyDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (PKPassRelevantDate)initWithCoder:(id)coder;
- (PKPassRelevantDate)initWithDictionary:(id)dictionary;
- (PKPassRelevantDate)initWithEffectiveStartDate:(id)date effectiveEndDate:(id)endDate;
- (PKPassRelevantDate)initWithRelevantDate:(id)date;
- (PKPassRelevantDate)relevantDateWithPriority:(unint64_t)priority;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)earliestDate;
- (id)latestDate;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassRelevantDate

+ (id)findDateFromDates:(id)dates option:(unint64_t)option
{
  v25 = *MEMORY[0x1E69E9840];
  datesCopy = dates;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [datesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_27;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v21;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(datesCopy);
      }

      v11 = *(*(&v20 + 1) + 8 * i);
      if (option <= 1)
      {
        if (option)
        {
          if (option != 1)
          {
            continue;
          }

          v12 = 1;
        }

        else
        {
          v12 = 0;
        }

        v13 = [v11 relevantDateWithPriority:v12];
        if (!v8)
        {
          goto LABEL_21;
        }

        v16 = [v8 earlierDate:v13];
        goto LABEL_20;
      }

      if (option == 2)
      {
        v13 = [v11 relevantDateWithPriority:0];
        if (!v8)
        {
          goto LABEL_21;
        }

        v16 = [v8 laterDate:v13];
LABEL_20:
        v17 = v16;
        v18 = [v16 isEqualToDate:v13];

        if (v18)
        {
          goto LABEL_21;
        }

        goto LABEL_22;
      }

      if (option != 3)
      {
        continue;
      }

      v13 = [v11 relevantDateWithPriority:1];
      if (!v8 || ([v8 laterDate:v13], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToDate:", v13), v14, v15))
      {
LABEL_21:
        v13 = v13;

        v8 = v13;
      }

LABEL_22:
    }

    v7 = [datesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v7);
LABEL_27:

  return v8;
}

- (PKPassRelevantDate)initWithEffectiveStartDate:(id)date effectiveEndDate:(id)endDate
{
  v22 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  if (!dateCopy || (v8 = endDateCopy) == 0)
  {
    __break(1u);
  }

  if ([dateCopy compare:endDateCopy] == 1)
  {
    v9 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = dateCopy;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Dropping relevancy interval with start date: %@ end date: %@. Start date is after end date", buf, 0x16u);
    }

LABEL_10:
    selfCopy = 0;
    goto LABEL_14;
  }

  v9 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:dateCopy endDate:v8];
  [v9 duration];
  if (v10 > 86400.0)
  {
    v11 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = dateCopy;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Dropping relevancy interval with start date: %@ end date: %@. Interval can be at most 24hrs", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v17.receiver = self;
  v17.super_class = PKPassRelevantDate;
  v13 = [(PKPassRelevantDate *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_interval, v9);
    date = v14->_date;
    v14->_date = 0;
  }

  self = v14;
  selfCopy = self;
LABEL_14:

  return selfCopy;
}

- (PKPassRelevantDate)initWithRelevantDate:(id)date
{
  result = date;
  if (result)
  {
    v6 = result;
    v10.receiver = self;
    v10.super_class = PKPassRelevantDate;
    v7 = [(PKPassRelevantDate *)&v10 init];
    v8 = v7;
    if (v7)
    {
      interval = v7->_interval;
      v7->_interval = 0;

      objc_storeStrong(&v8->_date, date);
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (PKPassRelevantDate)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy PKDateForKey:@"startDate"];
  v6 = [dictionaryCopy PKDateForKey:@"endDate"];
  v7 = [dictionaryCopy PKDateForKey:@"date"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (!v7)
    {
      selfCopy = 0;
      goto LABEL_9;
    }

    v9 = [(PKPassRelevantDate *)self initWithRelevantDate:v7];
  }

  else
  {
    v9 = [(PKPassRelevantDate *)self initWithEffectiveStartDate:v5 effectiveEndDate:v6];
  }

  self = v9;
  selfCopy = self;
LABEL_9:

  return selfCopy;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPassRelevantDate;
  return [(PKPassRelevantDate *)&v3 init];
}

- (PKPassRelevantDate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPassRelevantDate;
  v5 = [(PKPassRelevantDate *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relevantInterval"];
    interval = v5->_interval;
    v5->_interval = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PKPassRelevantDate allocWithZone:?]];
  objc_storeStrong(&v4->_interval, self->_interval);
  objc_storeStrong(&v4->_date, self->_date);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  interval = self->_interval;
  coderCopy = coder;
  [coderCopy encodeObject:interval forKey:@"relevantInterval"];
  [coderCopy encodeObject:self->_date forKey:@"date"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPassRelevantDate *)self _isEqualToRelevancyDate:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_date];
  [array safelyAddObject:self->_interval];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (BOOL)_isEqualToRelevancyDate:(id)date
{
  dateCopy = date;
  date = self->_date;
  date = [dateCopy date];
  v7 = date;
  if (date)
  {
    v8 = date == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v10 = [(NSDate *)date isEqual:date];
    if (v10)
    {
      goto LABEL_9;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_14;
  }

  if (date != date)
  {
    goto LABEL_7;
  }

LABEL_9:
  interval = self->_interval;
  interval = [dateCopy interval];
  v13 = interval;
  if (interval && interval)
  {
    v9 = [(NSDateInterval *)interval isEqual:interval];
  }

  else
  {
    v9 = interval == interval;
  }

LABEL_14:
  return v9;
}

- (id)earliestDate
{
  effectiveStartDate = [(PKPassRelevantDate *)self effectiveStartDate];
  date = effectiveStartDate;
  if (!effectiveStartDate)
  {
    date = self->_date;
  }

  v5 = date;

  return date;
}

- (id)latestDate
{
  effectiveEndDate = [(PKPassRelevantDate *)self effectiveEndDate];
  date = effectiveEndDate;
  if (!effectiveEndDate)
  {
    date = self->_date;
  }

  v5 = date;

  return date;
}

- (PKPassRelevantDate)relevantDateWithPriority:(unint64_t)priority
{
  if (priority == 1)
  {
    latestDate = [(PKPassRelevantDate *)self latestDate];
  }

  else if (priority)
  {
    latestDate = 0;
  }

  else
  {
    latestDate = [(PKPassRelevantDate *)self earliestDate];
  }

  return latestDate;
}

@end