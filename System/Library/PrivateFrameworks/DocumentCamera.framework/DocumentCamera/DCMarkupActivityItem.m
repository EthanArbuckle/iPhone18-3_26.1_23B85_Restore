@interface DCMarkupActivityItem
- (DCMarkupActivityItem)initWithDocumentInfo:(id)a3 imageCache:(id)a4;
@end

@implementation DCMarkupActivityItem

- (DCMarkupActivityItem)initWithDocumentInfo:(id)a3 imageCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = DCMarkupActivityItem;
  v8 = [(DCMarkupActivityItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(DCMarkupActivityItem *)v8 setDocumentInfo:v6];
    [(DCMarkupActivityItem *)v9 setImageCache:v7];
  }

  return v9;
}

@end