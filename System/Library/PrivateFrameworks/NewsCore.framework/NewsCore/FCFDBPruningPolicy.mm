@interface FCFDBPruningPolicy
- (FCFDBPruningPolicy)initWithMaxAgeToPersist:(double)persist;
- (FCFDBPruningPolicy)initWithMaxOrderToPrune:(unint64_t)prune;
@end

@implementation FCFDBPruningPolicy

- (FCFDBPruningPolicy)initWithMaxOrderToPrune:(unint64_t)prune
{
  v8.receiver = self;
  v8.super_class = FCFDBPruningPolicy;
  v4 = [(FCFDBPruningPolicy *)&v8 init];
  if (v4)
  {
    v5 = [FCFeedRange feedRangeWithMaxOrder:prune minOrder:0];
    feedRangeToPrune = v4->_feedRangeToPrune;
    v4->_feedRangeToPrune = v5;
  }

  return v4;
}

- (FCFDBPruningPolicy)initWithMaxAgeToPersist:(double)persist
{
  v4 = [FCFeedCursor cursorForTimeIntervalBeforeNow:persist];
  v5 = -[FCFDBPruningPolicy initWithMaxOrderToPrune:](self, "initWithMaxOrderToPrune:", [v4 order]);

  return v5;
}

@end