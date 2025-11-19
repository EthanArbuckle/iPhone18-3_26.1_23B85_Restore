@interface BDSReadingHistoryStreakInfo
- (BDSReadingHistoryStreakInfo)initWithCoder:(id)a3;
- (BDSReadingHistoryStreakInfo)initWithEndDate:(id)a3 length:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSReadingHistoryStreakInfo

- (BDSReadingHistoryStreakInfo)initWithEndDate:(id)a3 length:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = BDSReadingHistoryStreakInfo;
  v8 = [(BDSReadingHistoryStreakInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_endDate, a3);
    v9->_length = a4;
  }

  return v9;
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
      goto LABEL_10;
    }

    v7 = [(BDSReadingHistoryStreakInfo *)self endDate];
    v8 = [v5 endDate];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BDSReadingHistoryStreakInfo *)self endDate];
      v11 = [v5 endDate];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        v6 = 0;
LABEL_10:

        return v6;
      }
    }

    v13 = [(BDSReadingHistoryStreakInfo *)self length];
    v6 = v13 == [v5 length];
    goto LABEL_10;
  }

  return 1;
}

- (BDSReadingHistoryStreakInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BDSReadingHistoryStreakInfo *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v6;

    v5->_length = [v4 decodeIntegerForKey:@"length"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(BDSReadingHistoryStreakInfo *)self endDate];
  [v5 encodeObject:v4 forKey:@"endDate"];

  [v5 encodeInteger:-[BDSReadingHistoryStreakInfo length](self forKey:{"length"), @"length"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(BDSReadingHistoryStreakInfo);
  if (v4)
  {
    v5 = [(BDSReadingHistoryStreakInfo *)self endDate];
    [(BDSReadingHistoryStreakInfo *)v4 setEndDate:v5];

    [(BDSReadingHistoryStreakInfo *)v4 setLength:[(BDSReadingHistoryStreakInfo *)self length]];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BDSReadingHistoryStreakInfo *)self endDate];
  v5 = [v3 stringWithFormat:@"{endDate:%@, length:%ld}", v4, -[BDSReadingHistoryStreakInfo length](self, "length")];

  return v5;
}

@end