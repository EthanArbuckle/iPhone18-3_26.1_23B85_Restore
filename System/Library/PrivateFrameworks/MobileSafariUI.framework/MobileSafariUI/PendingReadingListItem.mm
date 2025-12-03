@interface PendingReadingListItem
+ (id)itemWithBookmark:(id)bookmark provider:(id)provider;
@end

@implementation PendingReadingListItem

+ (id)itemWithBookmark:(id)bookmark provider:(id)provider
{
  bookmarkCopy = bookmark;
  providerCopy = provider;
  v7 = objc_alloc_init(PendingReadingListItem);
  bookmark = v7->_bookmark;
  v7->_bookmark = bookmarkCopy;
  v9 = bookmarkCopy;

  provider = v7->_provider;
  v7->_provider = providerCopy;

  return v7;
}

@end