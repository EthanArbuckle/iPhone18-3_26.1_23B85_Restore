@interface BDSReadingHistoryDayInfo
- (BDSReadingHistoryDayInfo)initWithCoder:(id)a3;
- (BDSReadingHistoryDayInfo)initWithReadingTime:(int64_t)a3 goal:(int64_t)a4 isStreakDay:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSReadingHistoryDayInfo

- (BDSReadingHistoryDayInfo)initWithReadingTime:(int64_t)a3 goal:(int64_t)a4 isStreakDay:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = BDSReadingHistoryDayInfo;
  result = [(BDSReadingHistoryDayInfo *)&v9 init];
  if (result)
  {
    result->_readingTime = a3;
    result->_goal = a4;
    result->_isStreakDay = a5;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = a3;
    objc_opt_class();
    v4 = BUDynamicCast();

    LOBYTE(v5) = 0;
    if (self && v4)
    {
      v6 = [(BDSReadingHistoryDayInfo *)self readingTime];
      if (v6 == [v4 readingTime] && (v7 = -[BDSReadingHistoryDayInfo goal](self, "goal"), v7 == objc_msgSend(v4, "goal")))
      {
        v8 = [(BDSReadingHistoryDayInfo *)self isStreakDay];
        LODWORD(v5) = v8 ^ [v4 isStreakDay] ^ 1;
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (BDSReadingHistoryDayInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BDSReadingHistoryDayInfo *)self init];
  if (v5)
  {
    v5->_readingTime = [v4 decodeIntegerForKey:@"readingTime"];
    v5->_goal = [v4 decodeIntegerForKey:@"goal"];
    v5->_isStreakDay = [v4 decodeBoolForKey:@"isStreakDay"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[BDSReadingHistoryDayInfo readingTime](self forKey:{"readingTime"), @"readingTime"}];
  [v4 encodeInteger:-[BDSReadingHistoryDayInfo goal](self forKey:{"goal"), @"goal"}];
  [v4 encodeBool:-[BDSReadingHistoryDayInfo isStreakDay](self forKey:{"isStreakDay"), @"isStreakDay"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(BDSReadingHistoryDayInfo);
  if (v4)
  {
    [(BDSReadingHistoryDayInfo *)v4 setReadingTime:[(BDSReadingHistoryDayInfo *)self readingTime]];
    [(BDSReadingHistoryDayInfo *)v4 setGoal:[(BDSReadingHistoryDayInfo *)self goal]];
    [(BDSReadingHistoryDayInfo *)v4 setIsStreakDay:[(BDSReadingHistoryDayInfo *)self isStreakDay]];
  }

  return v4;
}

@end