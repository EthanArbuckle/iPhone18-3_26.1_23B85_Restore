@interface BDSReadingHistoryDayInfo
- (BDSReadingHistoryDayInfo)initWithCoder:(id)coder;
- (BDSReadingHistoryDayInfo)initWithReadingTime:(int64_t)time goal:(int64_t)goal isStreakDay:(BOOL)day;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSReadingHistoryDayInfo

- (BDSReadingHistoryDayInfo)initWithReadingTime:(int64_t)time goal:(int64_t)goal isStreakDay:(BOOL)day
{
  v9.receiver = self;
  v9.super_class = BDSReadingHistoryDayInfo;
  result = [(BDSReadingHistoryDayInfo *)&v9 init];
  if (result)
  {
    result->_readingTime = time;
    result->_goal = goal;
    result->_isStreakDay = day;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(equalCopy) = 1;
  }

  else
  {
    equalCopy = equal;
    objc_opt_class();
    v4 = BUDynamicCast();

    LOBYTE(equalCopy) = 0;
    if (self && v4)
    {
      readingTime = [(BDSReadingHistoryDayInfo *)self readingTime];
      if (readingTime == [v4 readingTime] && (v7 = -[BDSReadingHistoryDayInfo goal](self, "goal"), v7 == objc_msgSend(v4, "goal")))
      {
        isStreakDay = [(BDSReadingHistoryDayInfo *)self isStreakDay];
        LODWORD(equalCopy) = isStreakDay ^ [v4 isStreakDay] ^ 1;
      }

      else
      {
        LOBYTE(equalCopy) = 0;
      }
    }
  }

  return equalCopy;
}

- (BDSReadingHistoryDayInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BDSReadingHistoryDayInfo *)self init];
  if (v5)
  {
    v5->_readingTime = [coderCopy decodeIntegerForKey:@"readingTime"];
    v5->_goal = [coderCopy decodeIntegerForKey:@"goal"];
    v5->_isStreakDay = [coderCopy decodeBoolForKey:@"isStreakDay"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[BDSReadingHistoryDayInfo readingTime](self forKey:{"readingTime"), @"readingTime"}];
  [coderCopy encodeInteger:-[BDSReadingHistoryDayInfo goal](self forKey:{"goal"), @"goal"}];
  [coderCopy encodeBool:-[BDSReadingHistoryDayInfo isStreakDay](self forKey:{"isStreakDay"), @"isStreakDay"}];
}

- (id)copyWithZone:(_NSZone *)zone
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