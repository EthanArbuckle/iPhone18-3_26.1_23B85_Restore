@interface BDSReadingHistoryStateInfo
- (BDSReadingHistoryStateInfo)initWithCoder:(id)coder;
- (BDSReadingHistoryStateInfo)initWithCurrentStreak:(int64_t)streak longestStreak:(id)longestStreak today:(id)today readingHistory:(id)history;
- (BOOL)isEmptyState;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSReadingHistoryStateInfo

- (BDSReadingHistoryStateInfo)initWithCurrentStreak:(int64_t)streak longestStreak:(id)longestStreak today:(id)today readingHistory:(id)history
{
  longestStreakCopy = longestStreak;
  todayCopy = today;
  historyCopy = history;
  v17.receiver = self;
  v17.super_class = BDSReadingHistoryStateInfo;
  v14 = [(BDSReadingHistoryStateInfo *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_currentStreak = streak;
    objc_storeStrong(&v14->_longestStreak, longestStreak);
    objc_storeStrong(&v15->_today, today);
    objc_storeStrong(&v15->_readingHistory, history);
  }

  return v15;
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
      goto LABEL_18;
    }

    currentStreak = [(BDSReadingHistoryStateInfo *)self currentStreak];
    if (currentStreak == [v5 currentStreak])
    {
      longestStreak = [(BDSReadingHistoryStateInfo *)self longestStreak];
      longestStreak2 = [v5 longestStreak];
      v10 = longestStreak2;
      if (longestStreak == longestStreak2)
      {
      }

      else
      {
        longestStreak3 = [(BDSReadingHistoryStateInfo *)self longestStreak];
        longestStreak4 = [v5 longestStreak];
        v13 = [longestStreak3 isEqual:longestStreak4];

        if (!v13)
        {
          goto LABEL_12;
        }
      }

      today = [(BDSReadingHistoryStateInfo *)self today];
      today2 = [v5 today];
      v16 = today2;
      if (today == today2)
      {
      }

      else
      {
        today3 = [(BDSReadingHistoryStateInfo *)self today];
        today4 = [v5 today];
        v19 = [today3 isEqual:today4];

        if (!v19)
        {
          goto LABEL_12;
        }
      }

      readingHistory = [(BDSReadingHistoryStateInfo *)self readingHistory];
      readingHistory2 = [v5 readingHistory];
      if (readingHistory == readingHistory2)
      {
        v6 = 1;
      }

      else
      {
        readingHistory3 = [(BDSReadingHistoryStateInfo *)self readingHistory];
        readingHistory4 = [v5 readingHistory];
        v6 = [readingHistory3 isEqualToArray:readingHistory4];
      }

      goto LABEL_18;
    }

LABEL_12:
    v6 = 0;
LABEL_18:

    return v6;
  }

  return 1;
}

- (BOOL)isEmptyState
{
  if ([(BDSReadingHistoryStateInfo *)self currentStreak])
  {
    v3 = 0;
  }

  else
  {
    longestStreak = [(BDSReadingHistoryStateInfo *)self longestStreak];
    if ([longestStreak length])
    {
      v3 = 0;
    }

    else
    {
      today = [(BDSReadingHistoryStateInfo *)self today];
      v3 = [today readingTime] == 0;
    }
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  readingHistory = [(BDSReadingHistoryStateInfo *)self readingHistory];
  v7 = [readingHistory countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(readingHistory);
        }

        if (v3)
        {
          v11 = [*(*(&v13 + 1) + 8 * i) day];
          v3 = [v11 readingTime] == 0;
        }

        else
        {
          v3 = 0;
        }
      }

      v8 = [readingHistory countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v3;
}

- (BDSReadingHistoryStateInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BDSReadingHistoryStateInfo *)self init];
  if (v5)
  {
    v5->_currentStreak = [coderCopy decodeIntegerForKey:@"currentStreak"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"longestStreak"];
    longestStreak = v5->_longestStreak;
    v5->_longestStreak = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"today"];
    today = v5->_today;
    v5->_today = v8;

    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"readingHistory"];
    readingHistory = v5->_readingHistory;
    v5->_readingHistory = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[BDSReadingHistoryStateInfo currentStreak](self forKey:{"currentStreak"), @"currentStreak"}];
  longestStreak = [(BDSReadingHistoryStateInfo *)self longestStreak];
  [coderCopy encodeObject:longestStreak forKey:@"longestStreak"];

  today = [(BDSReadingHistoryStateInfo *)self today];
  [coderCopy encodeObject:today forKey:@"today"];

  readingHistory = [(BDSReadingHistoryStateInfo *)self readingHistory];
  [coderCopy encodeObject:readingHistory forKey:@"readingHistory"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(BDSReadingHistoryStateInfo);
  if (v4)
  {
    [(BDSReadingHistoryStateInfo *)v4 setCurrentStreak:[(BDSReadingHistoryStateInfo *)self currentStreak]];
    longestStreak = [(BDSReadingHistoryStateInfo *)self longestStreak];
    [(BDSReadingHistoryStateInfo *)v4 setLongestStreak:longestStreak];

    today = [(BDSReadingHistoryStateInfo *)self today];
    [(BDSReadingHistoryStateInfo *)v4 setToday:today];

    readingHistory = [(BDSReadingHistoryStateInfo *)self readingHistory];
    [(BDSReadingHistoryStateInfo *)v4 setReadingHistory:readingHistory];
  }

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  currentStreak = [(BDSReadingHistoryStateInfo *)self currentStreak];
  longestStreak = [(BDSReadingHistoryStateInfo *)self longestStreak];
  today = [(BDSReadingHistoryStateInfo *)self today];
  readingHistory = [(BDSReadingHistoryStateInfo *)self readingHistory];
  v8 = [NSString stringWithFormat:@"<%@: %p currentStreak:%ld, longestStreak:%@, today:%@, readingHistory:%@>", v3, self, currentStreak, longestStreak, today, readingHistory];

  return v8;
}

@end