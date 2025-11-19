@interface FCFeedRange
+ (FCFeedRange)feedRangeWithMaxOrder:(unint64_t)a3 minOrder:(unint64_t)a4;
+ (FCFeedRange)feedRangeWithTop:(id)a3 bottom:(id)a4;
+ (id)feedRangeByMergingRange:(id)a3 withRange:(id)a4;
+ (id)feedRangeFromDate:(id)a3 toDate:(id)a4;
+ (id)feedRangeFromDateRange:(id)a3;
- (BOOL)containsCursor:(id)a3;
- (BOOL)containsFeedRange:(id)a3;
- (BOOL)containsOrder:(unint64_t)a3;
- (BOOL)intersectsOrAdjoinsRange:(id)a3;
- (BOOL)intersectsRange:(id)a3;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)reachesBottomOfFeed;
- (BOOL)reachesTopOfFeed;
- (FCDateRange)dateRange;
- (FCFeedCursor)middle;
- (FCFeedRange)initWithCoder:(id)a3;
- (_NSRange)nsRange;
- (double)timeInterval;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)feedRangeByIntersectingWithRange:(id)a3;
- (id)feedRangeByUnioningWithRange:(id)a3;
- (unint64_t)clampOrder:(unint64_t)a3;
- (unint64_t)hash;
- (unint64_t)maxOrder;
- (unint64_t)minOrder;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCFeedRange

+ (FCFeedRange)feedRangeWithTop:(id)a3 bottom:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [v6 order];
  if (v7 < [v5 order] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"inverted feed range"];
    v12 = 136315906;
    v13 = "+[FCFeedRange feedRangeWithTop:bottom:]";
    v14 = 2080;
    v15 = "FCFeedRange.m";
    v16 = 1024;
    v17 = 26;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
  }

  v8 = objc_alloc_init(FCFeedRange);
  [(FCFeedRange *)v8 setTop:v6];

  [(FCFeedRange *)v8 setBottom:v5];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (FCFeedRange)feedRangeWithMaxOrder:(unint64_t)a3 minOrder:(unint64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3 < a4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"inverted feed range"];
    v12 = 136315906;
    v13 = "+[FCFeedRange feedRangeWithMaxOrder:minOrder:]";
    v14 = 2080;
    v15 = "FCFeedRange.m";
    v16 = 1024;
    v17 = 36;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
  }

  v6 = objc_alloc_init(FCFeedRange);
  v7 = [FCFeedCursor cursorForOrder:a3];
  [(FCFeedRange *)v6 setTop:v7];

  v8 = [FCFeedCursor cursorForOrder:a4];
  [(FCFeedRange *)v6 setBottom:v8];

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)feedRangeFromDate:(id)a3 toDate:(id)a4
{
  v5 = [FCDateRange dateRangeWithStartDate:a3 endDate:a4];
  v6 = [a1 feedRangeFromDateRange:v5];

  return v6;
}

+ (id)feedRangeFromDateRange:(id)a3
{
  v4 = a3;
  if ([v4 isFromInfinity])
  {
    v5 = +[FCFeedCursor cursorForTopOfFeed];
  }

  else
  {
    v6 = [v4 startDate];
    v5 = [FCFeedCursor cursorForDate:v6];
  }

  if ([v4 isToInfinity])
  {
    v7 = +[FCFeedCursor cursorForBottomOfFeed];
  }

  else
  {
    v8 = [v4 endDate];
    v7 = [FCFeedCursor cursorForDate:v8];
  }

  v9 = [a1 feedRangeWithTop:v5 bottom:v7];

  return v9;
}

+ (id)feedRangeByMergingRange:(id)a3 withRange:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v5 top];
    v9 = [v8 order];

    v10 = [v7 top];
    v11 = [v10 order];

    if (v9 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    v13 = [FCFeedCursor cursorForOrder:v12];
    v14 = [v5 bottom];
    v15 = [v14 order];

    v16 = [v7 bottom];
    v17 = [v16 order];

    if (v15 >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v15;
    }

    v19 = [FCFeedCursor cursorForOrder:v18];
    v20 = [FCFeedRange feedRangeWithTop:v13 bottom:v19];
  }

  else
  {
    if (v5)
    {
      v21 = v5;
    }

    else
    {
      v21 = v6;
    }

    v20 = v21;
  }

  return v20;
}

- (FCFeedRange)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(FCFeedRange);
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"top"];
  [(FCFeedRange *)v5 setTop:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bottom"];

  [(FCFeedRange *)v5 setBottom:v7];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FCFeedRange *)self top];
  [v4 encodeObject:v5 forKey:@"top"];

  v6 = [(FCFeedRange *)self bottom];
  [v4 encodeObject:v6 forKey:@"bottom"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(FCFeedRange);
  v5 = [(FCFeedRange *)self top];
  [(FCFeedRange *)v4 setTop:v5];

  v6 = [(FCFeedRange *)self bottom];
  [(FCFeedRange *)v4 setBottom:v6];

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

  v7 = [(FCFeedRange *)self top];
  v8 = [v6 top];
  if ([v7 isEqualToCursor:v8])
  {
    v9 = [(FCFeedRange *)self bottom];
    v10 = [v6 bottom];
    v11 = [v9 isEqualToCursor:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(FCFeedRange *)self top];
  v4 = [v3 hash];
  v5 = [(FCFeedRange *)self bottom];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (unint64_t)maxOrder
{
  v2 = [(FCFeedRange *)self top];
  v3 = [v2 order];

  return v3;
}

- (unint64_t)minOrder
{
  v2 = [(FCFeedRange *)self bottom];
  v3 = [v2 order];

  return v3;
}

- (FCFeedCursor)middle
{
  v3 = [(FCFeedRange *)self bottom];
  v4 = [v3 order];
  v5 = [(FCFeedRange *)self top];
  v6 = [v5 order];
  v7 = [(FCFeedRange *)self bottom];
  v8 = +[FCFeedCursor cursorForOrder:](FCFeedCursor, "cursorForOrder:", v4 + ((v6 - [v7 order]) >> 1));

  return v8;
}

- (BOOL)reachesTopOfFeed
{
  v2 = [(FCFeedRange *)self top];
  v3 = [v2 isTopOfFeed];

  return v3;
}

- (BOOL)reachesBottomOfFeed
{
  v2 = [(FCFeedRange *)self bottom];
  v3 = [v2 isBottomOfFeed];

  return v3;
}

- (BOOL)isEmpty
{
  v3 = [(FCFeedRange *)self top];
  v4 = [(FCFeedRange *)self bottom];
  v5 = [v3 compareToCursor:v4] != 1;

  return v5;
}

- (FCDateRange)dateRange
{
  v3 = [(FCFeedRange *)self top];
  v4 = [v3 date];
  v5 = [(FCFeedRange *)self bottom];
  v6 = [v5 date];
  v7 = [FCDateRange dateRangeWithStartDate:v4 endDate:v6];

  return v7;
}

- (_NSRange)nsRange
{
  v3 = [(FCFeedRange *)self bottom];
  v4 = [v3 order];
  v5 = [(FCFeedRange *)self top];
  v6 = [v5 order];
  v7 = [(FCFeedRange *)self bottom];
  v8 = v6 - [v7 order];

  v9 = v4 + 1;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (double)timeInterval
{
  v3 = [(FCFeedRange *)self top];
  v4 = [v3 order];
  v5 = [(FCFeedRange *)self bottom];
  v6 = (v4 - [v5 order]) / 1000.0;

  return v6;
}

- (BOOL)containsOrder:(unint64_t)a3
{
  v5 = [(FCFeedRange *)self top];
  if ([v5 order] >= a3)
  {
    v7 = [(FCFeedRange *)self bottom];
    v6 = [v7 order] < a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)containsCursor:(id)a3
{
  v4 = [a3 order];

  return [(FCFeedRange *)self containsOrder:v4];
}

- (BOOL)containsFeedRange:(id)a3
{
  v4 = a3;
  v5 = [(FCFeedRange *)self top];
  v6 = [v5 order];
  v7 = [v4 top];
  if (v6 >= [v7 order])
  {
    v9 = [(FCFeedRange *)self bottom];
    v10 = [v9 order];
    v11 = [v4 bottom];
    v8 = v10 <= [v11 order];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)intersectsRange:(id)a3
{
  v4 = a3;
  v5 = [(FCFeedRange *)self top];
  v6 = [v5 order];
  v7 = [v4 bottom];
  if (v6 <= [v7 order])
  {
    v11 = 0;
  }

  else
  {
    v8 = [(FCFeedRange *)self bottom];
    v9 = [v8 order];
    v10 = [v4 top];
    v11 = v9 < [v10 order];
  }

  return v11;
}

- (BOOL)intersectsOrAdjoinsRange:(id)a3
{
  v4 = a3;
  v5 = [(FCFeedRange *)self top];
  v6 = [v5 order];
  v7 = [v4 bottom];
  if (v6 >= [v7 order])
  {
    v9 = [(FCFeedRange *)self bottom];
    v10 = [v9 order];
    v11 = [v4 top];
    v8 = v10 <= [v11 order];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)feedRangeByIntersectingWithRange:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "range != nil"];
    *buf = 136315906;
    v23 = "[FCFeedRange feedRangeByIntersectingWithRange:]";
    v24 = 2080;
    v25 = "FCFeedRange.m";
    v26 = 1024;
    v27 = 189;
    v28 = 2114;
    v29 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCFeedRange *)self top];
  v6 = [v5 order];

  v7 = [v4 top];
  v8 = [v7 order];

  if (v6 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = [(FCFeedRange *)self bottom];
  v11 = [v10 order];

  v12 = [v4 bottom];
  v13 = [v12 order];

  if (v11 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  if (v14 >= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = [FCFeedCursor cursorForOrder:v9];
  v17 = [FCFeedCursor cursorForOrder:v15];
  v18 = [FCFeedRange feedRangeWithTop:v16 bottom:v17];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)feedRangeByUnioningWithRange:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "range != nil"];
    *buf = 136315906;
    v22 = "[FCFeedRange feedRangeByUnioningWithRange:]";
    v23 = 2080;
    v24 = "FCFeedRange.m";
    v25 = 1024;
    v26 = 201;
    v27 = 2114;
    v28 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCFeedRange *)self top];
  v6 = [v5 order];

  v7 = [v4 top];
  v8 = [v7 order];

  if (v6 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = [(FCFeedRange *)self bottom];
  v11 = [v10 order];

  v12 = [v4 bottom];
  v13 = [v12 order];

  if (v11 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  v15 = [FCFeedCursor cursorForOrder:v9];
  v16 = [FCFeedCursor cursorForOrder:v14];
  v17 = [FCFeedRange feedRangeWithTop:v15 bottom:v16];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (unint64_t)clampOrder:(unint64_t)a3
{
  v5 = [(FCFeedRange *)self top];
  v6 = [v5 order];

  if (v6 < a3)
  {
    v7 = [(FCFeedRange *)self top];
    a3 = [v7 order];
LABEL_5:

    return a3;
  }

  v8 = [(FCFeedRange *)self bottom];
  v9 = [v8 order];

  if (v9 >= a3)
  {
    v7 = [(FCFeedRange *)self bottom];
    a3 = [v7 order] + 1;
    goto LABEL_5;
  }

  return a3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AD98];
  v5 = [(FCFeedRange *)self top];
  v6 = [v4 numberWithUnsignedLongLong:{objc_msgSend(v5, "order")}];
  v7 = MEMORY[0x1E696AD98];
  v8 = [(FCFeedRange *)self bottom];
  v9 = [v7 numberWithUnsignedLongLong:{objc_msgSend(v8, "order")}];
  v10 = [v3 stringWithFormat:@"<%@-%@>", v6, v9];

  return v10;
}

@end