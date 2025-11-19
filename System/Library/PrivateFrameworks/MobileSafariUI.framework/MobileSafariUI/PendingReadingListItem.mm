@interface PendingReadingListItem
+ (id)itemWithBookmark:(id)a3 provider:(id)a4;
@end

@implementation PendingReadingListItem

+ (id)itemWithBookmark:(id)a3 provider:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(PendingReadingListItem);
  bookmark = v7->_bookmark;
  v7->_bookmark = v5;
  v9 = v5;

  provider = v7->_provider;
  v7->_provider = v6;

  return v7;
}

@end