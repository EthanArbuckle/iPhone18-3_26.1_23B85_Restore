@interface BDSReadingHistoryStreakInfo
- (BDSReadingHistoryStreakInfo)initWithCoder:(id)coder;
- (BDSReadingHistoryStreakInfo)initWithEndDate:(id)date length:(int64_t)length;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSReadingHistoryStreakInfo

- (BDSReadingHistoryStreakInfo)initWithEndDate:(id)date length:(int64_t)length
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = BDSReadingHistoryStreakInfo;
  v8 = [(BDSReadingHistoryStreakInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_endDate, date);
    v9->_length = length;
  }

  return v9;
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
      goto LABEL_10;
    }

    endDate = [(BDSReadingHistoryStreakInfo *)self endDate];
    endDate2 = [v5 endDate];
    v9 = endDate2;
    if (endDate == endDate2)
    {
    }

    else
    {
      endDate3 = [(BDSReadingHistoryStreakInfo *)self endDate];
      endDate4 = [v5 endDate];
      v12 = [endDate3 isEqual:endDate4];

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

- (BDSReadingHistoryStreakInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BDSReadingHistoryStreakInfo *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v6;

    v5->_length = [coderCopy decodeIntegerForKey:@"length"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  endDate = [(BDSReadingHistoryStreakInfo *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"endDate"];

  [coderCopy encodeInteger:-[BDSReadingHistoryStreakInfo length](self forKey:{"length"), @"length"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(BDSReadingHistoryStreakInfo);
  if (v4)
  {
    endDate = [(BDSReadingHistoryStreakInfo *)self endDate];
    [(BDSReadingHistoryStreakInfo *)v4 setEndDate:endDate];

    [(BDSReadingHistoryStreakInfo *)v4 setLength:[(BDSReadingHistoryStreakInfo *)self length]];
  }

  return v4;
}

- (id)description
{
  endDate = [(BDSReadingHistoryStreakInfo *)self endDate];
  v4 = [NSString stringWithFormat:@"{endDate:%@, length:%ld}", endDate, [(BDSReadingHistoryStreakInfo *)self length]];

  return v4;
}

@end