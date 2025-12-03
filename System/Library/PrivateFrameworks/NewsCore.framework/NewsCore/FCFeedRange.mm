@interface FCFeedRange
+ (FCFeedRange)feedRangeWithMaxOrder:(unint64_t)order minOrder:(unint64_t)minOrder;
+ (FCFeedRange)feedRangeWithTop:(id)top bottom:(id)bottom;
+ (id)feedRangeByMergingRange:(id)range withRange:(id)withRange;
+ (id)feedRangeFromDate:(id)date toDate:(id)toDate;
+ (id)feedRangeFromDateRange:(id)range;
- (BOOL)containsCursor:(id)cursor;
- (BOOL)containsFeedRange:(id)range;
- (BOOL)containsOrder:(unint64_t)order;
- (BOOL)intersectsOrAdjoinsRange:(id)range;
- (BOOL)intersectsRange:(id)range;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)reachesBottomOfFeed;
- (BOOL)reachesTopOfFeed;
- (FCDateRange)dateRange;
- (FCFeedCursor)middle;
- (FCFeedRange)initWithCoder:(id)coder;
- (_NSRange)nsRange;
- (double)timeInterval;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)feedRangeByIntersectingWithRange:(id)range;
- (id)feedRangeByUnioningWithRange:(id)range;
- (unint64_t)clampOrder:(unint64_t)order;
- (unint64_t)hash;
- (unint64_t)maxOrder;
- (unint64_t)minOrder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCFeedRange

+ (FCFeedRange)feedRangeWithTop:(id)top bottom:(id)bottom
{
  v20 = *MEMORY[0x1E69E9840];
  bottomCopy = bottom;
  topCopy = top;
  order = [topCopy order];
  if (order < [bottomCopy order] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
  [(FCFeedRange *)v8 setTop:topCopy];

  [(FCFeedRange *)v8 setBottom:bottomCopy];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (FCFeedRange)feedRangeWithMaxOrder:(unint64_t)order minOrder:(unint64_t)minOrder
{
  v20 = *MEMORY[0x1E69E9840];
  if (order < minOrder && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
  v7 = [FCFeedCursor cursorForOrder:order];
  [(FCFeedRange *)v6 setTop:v7];

  v8 = [FCFeedCursor cursorForOrder:minOrder];
  [(FCFeedRange *)v6 setBottom:v8];

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)feedRangeFromDate:(id)date toDate:(id)toDate
{
  v5 = [FCDateRange dateRangeWithStartDate:date endDate:toDate];
  v6 = [self feedRangeFromDateRange:v5];

  return v6;
}

+ (id)feedRangeFromDateRange:(id)range
{
  rangeCopy = range;
  if ([rangeCopy isFromInfinity])
  {
    v5 = +[FCFeedCursor cursorForTopOfFeed];
  }

  else
  {
    startDate = [rangeCopy startDate];
    v5 = [FCFeedCursor cursorForDate:startDate];
  }

  if ([rangeCopy isToInfinity])
  {
    v7 = +[FCFeedCursor cursorForBottomOfFeed];
  }

  else
  {
    endDate = [rangeCopy endDate];
    v7 = [FCFeedCursor cursorForDate:endDate];
  }

  v9 = [self feedRangeWithTop:v5 bottom:v7];

  return v9;
}

+ (id)feedRangeByMergingRange:(id)range withRange:(id)withRange
{
  rangeCopy = range;
  withRangeCopy = withRange;
  v7 = withRangeCopy;
  if (rangeCopy && withRangeCopy)
  {
    v8 = [rangeCopy top];
    order = [v8 order];

    v10 = [v7 top];
    order2 = [v10 order];

    if (order <= order2)
    {
      v12 = order2;
    }

    else
    {
      v12 = order;
    }

    v13 = [FCFeedCursor cursorForOrder:v12];
    bottom = [rangeCopy bottom];
    order3 = [bottom order];

    bottom2 = [v7 bottom];
    order4 = [bottom2 order];

    if (order3 >= order4)
    {
      v18 = order4;
    }

    else
    {
      v18 = order3;
    }

    v19 = [FCFeedCursor cursorForOrder:v18];
    v20 = [FCFeedRange feedRangeWithTop:v13 bottom:v19];
  }

  else
  {
    if (rangeCopy)
    {
      v21 = rangeCopy;
    }

    else
    {
      v21 = withRangeCopy;
    }

    v20 = v21;
  }

  return v20;
}

- (FCFeedRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(FCFeedRange);
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"top"];
  [(FCFeedRange *)v5 setTop:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bottom"];

  [(FCFeedRange *)v5 setBottom:v7];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FCFeedRange *)self top];
  [coderCopy encodeObject:v5 forKey:@"top"];

  bottom = [(FCFeedRange *)self bottom];
  [coderCopy encodeObject:bottom forKey:@"bottom"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(FCFeedRange);
  v5 = [(FCFeedRange *)self top];
  [(FCFeedRange *)v4 setTop:v5];

  bottom = [(FCFeedRange *)self bottom];
  [(FCFeedRange *)v4 setBottom:bottom];

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

  v7 = [(FCFeedRange *)self top];
  v8 = [v6 top];
  if ([v7 isEqualToCursor:v8])
  {
    bottom = [(FCFeedRange *)self bottom];
    bottom2 = [v6 bottom];
    v11 = [bottom isEqualToCursor:bottom2];
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
  bottom = [(FCFeedRange *)self bottom];
  v6 = [bottom hash];

  return v6 ^ v4;
}

- (unint64_t)maxOrder
{
  v2 = [(FCFeedRange *)self top];
  order = [v2 order];

  return order;
}

- (unint64_t)minOrder
{
  bottom = [(FCFeedRange *)self bottom];
  order = [bottom order];

  return order;
}

- (FCFeedCursor)middle
{
  bottom = [(FCFeedRange *)self bottom];
  order = [bottom order];
  v5 = [(FCFeedRange *)self top];
  order2 = [v5 order];
  bottom2 = [(FCFeedRange *)self bottom];
  v8 = +[FCFeedCursor cursorForOrder:](FCFeedCursor, "cursorForOrder:", order + ((order2 - [bottom2 order]) >> 1));

  return v8;
}

- (BOOL)reachesTopOfFeed
{
  v2 = [(FCFeedRange *)self top];
  isTopOfFeed = [v2 isTopOfFeed];

  return isTopOfFeed;
}

- (BOOL)reachesBottomOfFeed
{
  bottom = [(FCFeedRange *)self bottom];
  isBottomOfFeed = [bottom isBottomOfFeed];

  return isBottomOfFeed;
}

- (BOOL)isEmpty
{
  v3 = [(FCFeedRange *)self top];
  bottom = [(FCFeedRange *)self bottom];
  v5 = [v3 compareToCursor:bottom] != 1;

  return v5;
}

- (FCDateRange)dateRange
{
  v3 = [(FCFeedRange *)self top];
  date = [v3 date];
  bottom = [(FCFeedRange *)self bottom];
  date2 = [bottom date];
  v7 = [FCDateRange dateRangeWithStartDate:date endDate:date2];

  return v7;
}

- (_NSRange)nsRange
{
  bottom = [(FCFeedRange *)self bottom];
  order = [bottom order];
  v5 = [(FCFeedRange *)self top];
  order2 = [v5 order];
  bottom2 = [(FCFeedRange *)self bottom];
  v8 = order2 - [bottom2 order];

  v9 = order + 1;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (double)timeInterval
{
  v3 = [(FCFeedRange *)self top];
  order = [v3 order];
  bottom = [(FCFeedRange *)self bottom];
  v6 = (order - [bottom order]) / 1000.0;

  return v6;
}

- (BOOL)containsOrder:(unint64_t)order
{
  v5 = [(FCFeedRange *)self top];
  if ([v5 order] >= order)
  {
    bottom = [(FCFeedRange *)self bottom];
    v6 = [bottom order] < order;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)containsCursor:(id)cursor
{
  order = [cursor order];

  return [(FCFeedRange *)self containsOrder:order];
}

- (BOOL)containsFeedRange:(id)range
{
  rangeCopy = range;
  v5 = [(FCFeedRange *)self top];
  order = [v5 order];
  v7 = [rangeCopy top];
  if (order >= [v7 order])
  {
    bottom = [(FCFeedRange *)self bottom];
    order2 = [bottom order];
    bottom2 = [rangeCopy bottom];
    v8 = order2 <= [bottom2 order];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)intersectsRange:(id)range
{
  rangeCopy = range;
  v5 = [(FCFeedRange *)self top];
  order = [v5 order];
  bottom = [rangeCopy bottom];
  if (order <= [bottom order])
  {
    v11 = 0;
  }

  else
  {
    bottom2 = [(FCFeedRange *)self bottom];
    order2 = [bottom2 order];
    v10 = [rangeCopy top];
    v11 = order2 < [v10 order];
  }

  return v11;
}

- (BOOL)intersectsOrAdjoinsRange:(id)range
{
  rangeCopy = range;
  v5 = [(FCFeedRange *)self top];
  order = [v5 order];
  bottom = [rangeCopy bottom];
  if (order >= [bottom order])
  {
    bottom2 = [(FCFeedRange *)self bottom];
    order2 = [bottom2 order];
    v11 = [rangeCopy top];
    v8 = order2 <= [v11 order];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)feedRangeByIntersectingWithRange:(id)range
{
  v30 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  if (!rangeCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
  order = [v5 order];

  v7 = [rangeCopy top];
  order2 = [v7 order];

  if (order >= order2)
  {
    v9 = order2;
  }

  else
  {
    v9 = order;
  }

  bottom = [(FCFeedRange *)self bottom];
  order3 = [bottom order];

  bottom2 = [rangeCopy bottom];
  order4 = [bottom2 order];

  if (order3 <= order4)
  {
    v14 = order4;
  }

  else
  {
    v14 = order3;
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

- (id)feedRangeByUnioningWithRange:(id)range
{
  v29 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  if (!rangeCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
  order = [v5 order];

  v7 = [rangeCopy top];
  order2 = [v7 order];

  if (order <= order2)
  {
    v9 = order2;
  }

  else
  {
    v9 = order;
  }

  bottom = [(FCFeedRange *)self bottom];
  order3 = [bottom order];

  bottom2 = [rangeCopy bottom];
  order4 = [bottom2 order];

  if (order3 >= order4)
  {
    v14 = order4;
  }

  else
  {
    v14 = order3;
  }

  v15 = [FCFeedCursor cursorForOrder:v9];
  v16 = [FCFeedCursor cursorForOrder:v14];
  v17 = [FCFeedRange feedRangeWithTop:v15 bottom:v16];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (unint64_t)clampOrder:(unint64_t)order
{
  v5 = [(FCFeedRange *)self top];
  order = [v5 order];

  if (order < order)
  {
    bottom2 = [(FCFeedRange *)self top];
    order = [bottom2 order];
LABEL_5:

    return order;
  }

  bottom = [(FCFeedRange *)self bottom];
  order2 = [bottom order];

  if (order2 >= order)
  {
    bottom2 = [(FCFeedRange *)self bottom];
    order = [bottom2 order] + 1;
    goto LABEL_5;
  }

  return order;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AD98];
  v5 = [(FCFeedRange *)self top];
  v6 = [v4 numberWithUnsignedLongLong:{objc_msgSend(v5, "order")}];
  v7 = MEMORY[0x1E696AD98];
  bottom = [(FCFeedRange *)self bottom];
  v9 = [v7 numberWithUnsignedLongLong:{objc_msgSend(bottom, "order")}];
  v10 = [v3 stringWithFormat:@"<%@-%@>", v6, v9];

  return v10;
}

@end