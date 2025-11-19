@interface BDSReadingHistoryDayEntryInfo
- (BDSReadingHistoryDayEntryInfo)initWithCoder:(id)a3;
- (BDSReadingHistoryDayEntryInfo)initWithDate:(id)a3 day:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSReadingHistoryDayEntryInfo

- (BDSReadingHistoryDayEntryInfo)initWithDate:(id)a3 day:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BDSReadingHistoryDayEntryInfo;
  v9 = [(BDSReadingHistoryDayEntryInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_date, a3);
    objc_storeStrong(&v10->_day, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  if (self != a3)
  {
    v4 = a3;
    objc_opt_class();
    v5 = BUDynamicCast();

    v6 = 0;
    if (!self || !v5)
    {
      goto LABEL_13;
    }

    v7 = [(BDSReadingHistoryDayEntryInfo *)self date];
    v8 = [v5 date];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BDSReadingHistoryDayEntryInfo *)self date];
      v11 = [v5 date];
      v12 = [v10 isEqual:v11];

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

- (BDSReadingHistoryDayEntryInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BDSReadingHistoryDayEntryInfo *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"day"];
    day = v5->_day;
    v5->_day = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BDSReadingHistoryDayEntryInfo *)self date];
  [v4 encodeObject:v5 forKey:@"date"];

  v6 = [(BDSReadingHistoryDayEntryInfo *)self day];
  [v4 encodeObject:v6 forKey:@"day"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(BDSReadingHistoryDayEntryInfo);
  if (v4)
  {
    v5 = [(BDSReadingHistoryDayEntryInfo *)self date];
    [(BDSReadingHistoryDayEntryInfo *)v4 setDate:v5];

    v6 = [(BDSReadingHistoryDayEntryInfo *)self day];
    [(BDSReadingHistoryDayEntryInfo *)v4 setDay:v6];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BDSReadingHistoryDayEntryInfo *)self date];
  v5 = [(BDSReadingHistoryDayEntryInfo *)self day];
  v6 = [v3 stringWithFormat:@"{%@: %@}", v4, v5];

  return v6;
}

@end