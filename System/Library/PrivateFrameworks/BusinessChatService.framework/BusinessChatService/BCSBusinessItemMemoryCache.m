@interface BCSBusinessItemMemoryCache
+ (id)sharedCache;
- (id)itemMatching:(id)a3;
- (id)lastFetchedBusinessItemIconDataForBizItem:(id *)a1;
- (void)deleteCache;
- (void)deleteItemMatching:(id)a3;
- (void)deleteItemsOfType:(int64_t)a3;
- (void)setLastFetchedBusinesIconData:(void *)a3 withMatchingBusinessItem:;
- (void)setLastFetchedBusinessItem:(uint64_t)a1;
- (void)updateItem:(id)a3 withItemIdentifier:(id)a4;
@end

@implementation BCSBusinessItemMemoryCache

+ (id)sharedCache
{
  objc_opt_self();
  v0 = _MergedGlobals_37;
  if (!_MergedGlobals_37)
  {
    if (qword_280BCF560 != -1)
    {
      dispatch_once(&qword_280BCF560, &__block_literal_global_1);
    }

    v0 = _MergedGlobals_37;
  }

  return v0;
}

uint64_t __41__BCSBusinessItemMemoryCache_sharedCache__block_invoke()
{
  _MergedGlobals_37 = objc_alloc_init(BCSBusinessItemMemoryCache);

  return MEMORY[0x2821F96F8]();
}

- (id)lastFetchedBusinessItemIconDataForBizItem:(id *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 bizID];
    v6 = [a1[2] bizID];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      a1 = a1[3];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (void)setLastFetchedBusinesIconData:(void *)a3 withMatchingBusinessItem:
{
  v7 = a2;
  v6 = a3;
  if (a1)
  {
    objc_storeStrong((a1 + 16), a3);
    objc_storeStrong((a1 + 24), a2);
  }
}

- (void)deleteCache
{
  if (a1)
  {
    v2 = *(a1 + 8);
    *(a1 + 8) = 0;

    v3 = *(a1 + 24);
    *(a1 + 24) = 0;
  }
}

- (void)setLastFetchedBusinessItem:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

- (id)itemMatching:(id)a3
{
  if (self)
  {
    if ([a3 matchesItemIdentifying:self->_lastFetchedBusinessItem])
    {
      lastFetchedBusinessItem = self->_lastFetchedBusinessItem;
LABEL_4:
      v5 = lastFetchedBusinessItem;
      goto LABEL_6;
    }

    v5 = 0;
  }

  else
  {
    v7 = [a3 matchesItemIdentifying:0];
    lastFetchedBusinessItem = 0;
    v5 = 0;
    if (v7)
    {
      goto LABEL_4;
    }
  }

LABEL_6:

  return v5;
}

- (void)updateItem:(id)a3 withItemIdentifier:(id)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BCSBusinessItemMemoryCache *)self setLastFetchedBusinessItem:v5];
  }
}

- (void)deleteItemMatching:(id)a3
{
  v3 = self;
  if (self)
  {
    self = self->_lastFetchedBusinessItem;
  }

  if ([(BCSBusinessItemMemoryCache *)self matchesItemIdentifying:a3])
  {

    [(BCSBusinessItemMemoryCache *)v3 setLastFetchedBusinessItem:?];
  }
}

- (void)deleteItemsOfType:(int64_t)a3
{
  if (a3 == 1)
  {
    [(BCSBusinessItemMemoryCache *)self deleteCache];
  }
}

@end