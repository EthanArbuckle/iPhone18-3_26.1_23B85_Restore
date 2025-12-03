@interface CommunicationFilterItemCache
- (CommunicationFilterItemCache)initWithFilterItem:(id)item isInList:(int64_t)list;
@end

@implementation CommunicationFilterItemCache

- (CommunicationFilterItemCache)initWithFilterItem:(id)item isInList:(int64_t)list
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = CommunicationFilterItemCache;
  v8 = [(CommunicationFilterItemCache *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_filterItem, item);
    v9->_isInList = list;
  }

  return v9;
}

@end