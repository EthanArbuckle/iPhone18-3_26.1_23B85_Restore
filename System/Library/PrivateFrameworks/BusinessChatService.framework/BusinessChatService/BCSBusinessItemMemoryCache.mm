@interface BCSBusinessItemMemoryCache
+ (id)sharedCache;
- (id)itemMatching:(id)matching;
- (id)lastFetchedBusinessItemIconDataForBizItem:(id *)item;
- (void)deleteCache;
- (void)deleteItemMatching:(id)matching;
- (void)deleteItemsOfType:(int64_t)type;
- (void)setLastFetchedBusinesIconData:(void *)data withMatchingBusinessItem:;
- (void)setLastFetchedBusinessItem:(uint64_t)item;
- (void)updateItem:(id)item withItemIdentifier:(id)identifier;
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

- (id)lastFetchedBusinessItemIconDataForBizItem:(id *)item
{
  v3 = a2;
  v4 = v3;
  if (item)
  {
    bizID = [v3 bizID];
    bizID2 = [item[2] bizID];
    v7 = [bizID isEqualToString:bizID2];

    if (v7)
    {
      item = item[3];
    }

    else
    {
      item = 0;
    }
  }

  return item;
}

- (void)setLastFetchedBusinesIconData:(void *)data withMatchingBusinessItem:
{
  v7 = a2;
  dataCopy = data;
  if (self)
  {
    objc_storeStrong((self + 16), data);
    objc_storeStrong((self + 24), a2);
  }
}

- (void)deleteCache
{
  if (self)
  {
    v2 = *(self + 8);
    *(self + 8) = 0;

    v3 = *(self + 24);
    *(self + 24) = 0;
  }
}

- (void)setLastFetchedBusinessItem:(uint64_t)item
{
  if (item)
  {
    objc_storeStrong((item + 8), a2);
  }
}

- (id)itemMatching:(id)matching
{
  if (self)
  {
    if ([matching matchesItemIdentifying:self->_lastFetchedBusinessItem])
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
    v7 = [matching matchesItemIdentifying:0];
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

- (void)updateItem:(id)item withItemIdentifier:(id)identifier
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BCSBusinessItemMemoryCache *)self setLastFetchedBusinessItem:itemCopy];
  }
}

- (void)deleteItemMatching:(id)matching
{
  selfCopy = self;
  if (self)
  {
    self = self->_lastFetchedBusinessItem;
  }

  if ([(BCSBusinessItemMemoryCache *)self matchesItemIdentifying:matching])
  {

    [(BCSBusinessItemMemoryCache *)selfCopy setLastFetchedBusinessItem:?];
  }
}

- (void)deleteItemsOfType:(int64_t)type
{
  if (type == 1)
  {
    [(BCSBusinessItemMemoryCache *)self deleteCache];
  }
}

@end