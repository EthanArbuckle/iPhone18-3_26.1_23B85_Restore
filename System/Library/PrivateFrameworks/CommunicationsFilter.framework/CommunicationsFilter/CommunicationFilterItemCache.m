@interface CommunicationFilterItemCache
- (CommunicationFilterItemCache)initWithFilterItem:(id)a3 isInList:(int64_t)a4;
@end

@implementation CommunicationFilterItemCache

- (CommunicationFilterItemCache)initWithFilterItem:(id)a3 isInList:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CommunicationFilterItemCache;
  v8 = [(CommunicationFilterItemCache *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_filterItem, a3);
    v9->_isInList = a4;
  }

  return v9;
}

@end