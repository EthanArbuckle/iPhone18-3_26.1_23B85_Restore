@interface FCFeedCursor
+ (id)cursorForCurrentDate;
+ (id)cursorForDate:(id)date;
+ (id)cursorForOrder:(unint64_t)order;
+ (id)cursorForTimeIntervalBeforeNow:(double)now;
- (BOOL)hasReachedCursor:(id)cursor;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCursor:(id)cursor;
- (FCFeedCursor)initWithCoder:(id)coder;
- (NSDate)date;
- (id)bottommostCursor:(id)cursor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)topmostCursor:(id)cursor;
- (int64_t)compareToCursor:(id)cursor;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCFeedCursor

+ (id)cursorForOrder:(unint64_t)order
{
  v4 = objc_alloc_init(FCFeedCursor);
  [(FCFeedCursor *)v4 setOrder:order];

  return v4;
}

+ (id)cursorForDate:(id)date
{
  fc_millisecondTimeIntervalSince1970 = [date fc_millisecondTimeIntervalSince1970];

  return [self cursorForOrder:fc_millisecondTimeIntervalSince1970];
}

+ (id)cursorForCurrentDate
{
  date = [MEMORY[0x1E695DF00] date];
  v4 = [self cursorForDate:date];

  return v4;
}

+ (id)cursorForTimeIntervalBeforeNow:(double)now
{
  date = [MEMORY[0x1E695DF00] date];
  v6 = [date fc_dateBySubtractingTimeInterval:now];
  v7 = [self cursorForDate:v6];

  return v7;
}

- (FCFeedCursor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(FCFeedCursor);
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"order"];

  -[FCFeedCursor setOrder:](v5, "setOrder:", [v6 unsignedLongLongValue]);
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedLongLong:{-[FCFeedCursor order](self, "order")}];
  [coderCopy encodeObject:v6 forKey:@"order"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(FCFeedCursor);
  [(FCFeedCursor *)v4 setOrder:[(FCFeedCursor *)self order]];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

  order = [(FCFeedCursor *)self order];
  LOBYTE(order) = order == [v6 order];

  return order;
}

- (BOOL)isEqualToCursor:(id)cursor
{
  cursorCopy = cursor;
  order = [(FCFeedCursor *)self order];
  order2 = [cursorCopy order];

  return order == order2;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[FCFeedCursor order](self, "order")}];
  v3 = [v2 hash];

  return v3;
}

- (int64_t)compareToCursor:(id)cursor
{
  cursorCopy = cursor;
  order = [(FCFeedCursor *)self order];
  order2 = [cursorCopy order];

  if (order < order2)
  {
    return -1;
  }

  else
  {
    return order > order2;
  }
}

- (NSDate)date
{
  v2 = MEMORY[0x1E695DF00];
  order = [(FCFeedCursor *)self order];

  return [v2 fc_dateWithMillisecondTimeIntervalSince1970:order];
}

- (BOOL)hasReachedCursor:(id)cursor
{
  v17 = *MEMORY[0x1E69E9840];
  cursorCopy = cursor;
  if (!cursorCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  v5 = [(FCFeedCursor *)self compareToCursor:cursorCopy]!= 1;

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)topmostCursor:(id)cursor
{
  cursorCopy = cursor;
  if (cursorCopy && [(FCFeedCursor *)self compareToCursor:cursorCopy]!= 1)
  {
    self = cursorCopy;
  }

  selfCopy = self;

  return self;
}

- (id)bottommostCursor:(id)cursor
{
  cursorCopy = cursor;
  if (cursorCopy && [(FCFeedCursor *)self compareToCursor:cursorCopy]== 1)
  {
    self = cursorCopy;
  }

  selfCopy = self;

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