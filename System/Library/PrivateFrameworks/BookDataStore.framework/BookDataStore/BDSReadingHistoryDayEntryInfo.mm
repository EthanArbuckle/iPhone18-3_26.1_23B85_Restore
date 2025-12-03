@interface BDSReadingHistoryDayEntryInfo
- (BDSReadingHistoryDayEntryInfo)initWithCoder:(id)coder;
- (BDSReadingHistoryDayEntryInfo)initWithDate:(id)date day:(id)day;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSReadingHistoryDayEntryInfo

- (BDSReadingHistoryDayEntryInfo)initWithDate:(id)date day:(id)day
{
  dateCopy = date;
  dayCopy = day;
  v12.receiver = self;
  v12.super_class = BDSReadingHistoryDayEntryInfo;
  v9 = [(BDSReadingHistoryDayEntryInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_date, date);
    objc_storeStrong(&v10->_day, day);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  if (self != equal)
  {
    equalCopy = equal;
    objc_opt_class();
    v5 = BUDynamicCast();

    v6 = 0;
    if (!self || !v5)
    {
      goto LABEL_13;
    }

    date = [(BDSReadingHistoryDayEntryInfo *)self date];
    date2 = [v5 date];
    v9 = date2;
    if (date == date2)
    {
    }

    else
    {
      date3 = [(BDSReadingHistoryDayEntryInfo *)self date];
      date4 = [v5 date];
      v12 = [date3 isEqual:date4];

      if (!v12)
      {
        v6 = 0;
LABEL_13:

        return v6;
      }
    }

    v13 = [(BDSReadingHistoryDayEntryInfo *)self day];
    v14 = [v5 day];
    if (v13 == v14)
    {
      v6 = 1;
    }

    else
    {
      v15 = [(BDSReadingHistoryDayEntryInfo *)self day];
      v16 = [v5 day];
      v6 = [v15 isEqual:v16];
    }

    goto LABEL_13;
  }

  return 1;
}

- (BDSReadingHistoryDayEntryInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BDSReadingHistoryDayEntryInfo *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"day"];
    day = v5->_day;
    v5->_day = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  date = [(BDSReadingHistoryDayEntryInfo *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  v6 = [(BDSReadingHistoryDayEntryInfo *)self day];
  [coderCopy encodeObject:v6 forKey:@"day"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(BDSReadingHistoryDayEntryInfo);
  if (v4)
  {
    date = [(BDSReadingHistoryDayEntryInfo *)self date];
    [(BDSReadingHistoryDayEntryInfo *)v4 setDate:date];

    v6 = [(BDSReadingHistoryDayEntryInfo *)self day];
    [(BDSReadingHistoryDayEntryInfo *)v4 setDay:v6];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  date = [(BDSReadingHistoryDayEntryInfo *)self date];
  v5 = [(BDSReadingHistoryDayEntryInfo *)self day];
  v6 = [v3 stringWithFormat:@"{%@: %@}", date, v5];

  return v6;
}

@end