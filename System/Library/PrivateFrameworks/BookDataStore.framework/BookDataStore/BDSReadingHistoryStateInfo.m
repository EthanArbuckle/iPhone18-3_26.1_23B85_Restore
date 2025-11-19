@interface BDSReadingHistoryStateInfo
- (BDSReadingHistoryStateInfo)initWithCoder:(id)a3;
- (BDSReadingHistoryStateInfo)initWithCurrentStreak:(int64_t)a3 longestStreak:(id)a4 today:(id)a5 readingHistory:(id)a6;
- (BOOL)isEmptyState;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSReadingHistoryStateInfo

- (BDSReadingHistoryStateInfo)initWithCurrentStreak:(int64_t)a3 longestStreak:(id)a4 today:(id)a5 readingHistory:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = BDSReadingHistoryStateInfo;
  v14 = [(BDSReadingHistoryStateInfo *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_currentStreak = a3;
    objc_storeStrong(&v14->_longestStreak, a4);
    objc_storeStrong(&v15->_today, a5);
    objc_storeStrong(&v15->_readingHistory, a6);
  }

  return v15;
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
      goto LABEL_18;
    }

    v7 = [(BDSReadingHistoryStateInfo *)self currentStreak];
    if (v7 == [v5 currentStreak])
    {
      v8 = [(BDSReadingHistoryStateInfo *)self longestStreak];
      v9 = [v5 longestStreak];
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        v11 = [(BDSReadingHistoryStateInfo *)self longestStreak];
        v12 = [v5 longestStreak];
        v13 = [v11 isEqual:v12];

        if (!v13)
        {
          goto LABEL_12;
        }
      }

      v14 = [(BDSReadingHistoryStateInfo *)self today];
      v15 = [v5 today];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BDSReadingHistoryStateInfo *)self today];
        v18 = [v5 today];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_12;
        }
      }

      v20 = [(BDSReadingHistoryStateInfo *)self readingHistory];
      v21 = [v5 readingHistory];
      if (v20 == v21)
      {
        v6 = 1;
      }

      else
      {
        v22 = [(BDSReadingHistoryStateInfo *)self readingHistory];
        v23 = [v5 readingHistory];
        v6 = [v22 isEqualToArray:v23];
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
  v19 = *MEMORY[0x1E69E9840];
  if ([(BDSReadingHistoryStateInfo *)self currentStreak])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(BDSReadingHistoryStateInfo *)self longestStreak];
    if ([v4 length])
    {
      v3 = 0;
    }

    else
    {
      v5 = [(BDSReadingHistoryStateInfo *)self today];
      v3 = [v5 readingTime] == 0;
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(BDSReadingHistoryStateInfo *)self readingHistory];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (v3)
        {
          v11 = [*(*(&v14 + 1) + 8 * i) day];
          v3 = [v11 readingTime] == 0;
        }

        else
        {
          v3 = 0;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BDSReadingHistoryStateInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BDSReadingHistoryStateInfo *)self init];
  if (v5)
  {
    v5->_currentStreak = [v4 decodeIntegerForKey:@"currentStreak"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"longestStreak"];
    longestStreak = v5->_longestStreak;
    v5->_longestStreak = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"today"];
    today = v5->_today;
    v5->_today = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"readingHistory"];
    readingHistory = v5->_readingHistory;
    v5->_readingHistory = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[BDSReadingHistoryStateInfo currentStreak](self forKey:{"currentStreak"), @"currentStreak"}];
  v5 = [(BDSReadingHistoryStateInfo *)self longestStreak];
  [v4 encodeObject:v5 forKey:@"longestStreak"];

  v6 = [(BDSReadingHistoryStateInfo *)self today];
  [v4 encodeObject:v6 forKey:@"today"];

  v7 = [(BDSReadingHistoryStateInfo *)self readingHistory];
  [v4 encodeObject:v7 forKey:@"readingHistory"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(BDSReadingHistoryStateInfo);
  if (v4)
  {
    [(BDSReadingHistoryStateInfo *)v4 setCurrentStreak:[(BDSReadingHistoryStateInfo *)self currentStreak]];
    v5 = [(BDSReadingHistoryStateInfo *)self longestStreak];
    [(BDSReadingHistoryStateInfo *)v4 setLongestStreak:v5];

    v6 = [(BDSReadingHistoryStateInfo *)self today];
    [(BDSReadingHistoryStateInfo *)v4 setToday:v6];

    v7 = [(BDSReadingHistoryStateInfo *)self readingHistory];
    [(BDSReadingHistoryStateInfo *)v4 setReadingHistory:v7];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(BDSReadingHistoryStateInfo *)self currentStreak];
  v6 = [(BDSReadingHistoryStateInfo *)self longestStreak];
  v7 = [(BDSReadingHistoryStateInfo *)self today];
  v8 = [(BDSReadingHistoryStateInfo *)self readingHistory];
  v9 = [v3 stringWithFormat:@"<%@: %p currentStreak:%ld, longestStreak:%@, today:%@, readingHistory:%@>", v4, self, v5, v6, v7, v8];

  return v9;
}

@end