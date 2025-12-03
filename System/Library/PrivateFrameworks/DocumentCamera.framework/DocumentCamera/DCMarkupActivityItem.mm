@interface DCMarkupActivityItem
- (DCMarkupActivityItem)initWithDocumentInfo:(id)info imageCache:(id)cache;
@end

@implementation DCMarkupActivityItem

- (DCMarkupActivityItem)initWithDocumentInfo:(id)info imageCache:(id)cache
{
  infoCopy = info;
  cacheCopy = cache;
  v11.receiver = self;
  v11.super_class = DCMarkupActivityItem;
  v8 = [(DCMarkupActivityItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(DCMarkupActivityItem *)v8 setDocumentInfo:infoCopy];
    [(DCMarkupActivityItem *)v9 setImageCache:cacheCopy];
  }

  return v9;
}

@end