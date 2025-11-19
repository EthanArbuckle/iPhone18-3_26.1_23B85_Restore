@interface FCFeedCursor
+ (id)cursorForCurrentDate;
+ (id)cursorForDate:(id)a3;
+ (id)cursorForOrder:(unint64_t)a3;
+ (id)cursorForTimeIntervalBeforeNow:(double)a3;
- (BOOL)hasReachedCursor:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCursor:(id)a3;
- (FCFeedCursor)initWithCoder:(id)a3;
- (NSDate)date;
- (id)bottommostCursor:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)topmostCursor:(id)a3;
- (int64_t)compareToCursor:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCFeedCursor

+ (id)cursorForOrder:(unint64_t)a3
{
  v4 = objc_alloc_init(FCFeedCursor);
  [(FCFeedCursor *)v4 setOrder:a3];

  return v4;
}

+ (id)cursorForDate:(id)a3
{
  v4 = [a3 fc_millisecondTimeIntervalSince1970];

  return [a1 cursorForOrder:v4];
}

+ (id)cursorForCurrentDate
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [a1 cursorForDate:v3];

  return v4;
}

+ (id)cursorForTimeIntervalBeforeNow:(double)a3
{
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [v5 fc_dateBySubtractingTimeInterval:a3];
  v7 = [a1 cursorForDate:v6];

  return v7;
}

- (FCFeedCursor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(FCFeedCursor);
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"order"];

  -[FCFeedCursor setOrder:](v5, "setOrder:", [v6 unsignedLongLongValue]);
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedLongLong:{-[FCFeedCursor order](self, "order")}];
  [v5 encodeObject:v6 forKey:@"order"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(FCFeedCursor);
  [(FCFeedCursor *)v4 setOrder:[(FCFeedCursor *)self order]];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [(FCFeedCursor *)self order];
  LOBYTE(v7) = v7 == [v6 order];

  return v7;
}

- (BOOL)isEqualToCursor:(id)a3
{
  v4 = a3;
  v5 = [(FCFeedCursor *)self order];
  v6 = [v4 order];

  return v5 == v6;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[FCFeedCursor order](self, "order")}];
  v3 = [v2 hash];

  return v3;
}

- (int64_t)compareToCursor:(id)a3
{
  v4 = a3;
  v5 = [(FCFeedCursor *)self order];
  v6 = [v4 order];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (NSDate)date
{
  v2 = MEMORY[0x1E695DF00];
  v3 = [(FCFeedCursor *)self order];

  return [v2 fc_dateWithMillisecondTimeIntervalSince1970:v3];
}

- (BOOL)hasReachedCursor:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"other cursor must be non-nil"];
    v9 = 136315906;
    v10 = "[FCFeedCursor hasReachedCursor:]";
    v11 = 2080;
    v12 = "FCFeedCursor.m";
    v13 = 1024;
    v14 = 116;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v9, 0x26u);
  }

  v5 = [(FCFeedCursor *)self compareToCursor:v4]!= 1;

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)topmostCursor:(id)a3
{
  v4 = a3;
  if (v4 && [(FCFeedCursor *)self compareToCursor:v4]!= 1)
  {
    self = v4;
  }

  v5 = self;

  return self;
}

- (id)bottommostCursor:(id)a3
{
  v4 = a3;
  if (v4 && [(FCFeedCursor *)self compareToCursor:v4]== 1)
  {
    self = v4;
  }

  v5 = self;

  return self;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[FCFeedCursor order](self, "order")}];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

@end