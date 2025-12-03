@interface CKBannerButtonObject
- (CKBannerButtonObject)initWithTitle:(id)title handler:(id)handler menuItems:(id)items;
@end

@implementation CKBannerButtonObject

- (CKBannerButtonObject)initWithTitle:(id)title handler:(id)handler menuItems:(id)items
{
  titleCopy = title;
  handlerCopy = handler;
  itemsCopy = items;
  v14.receiver = self;
  v14.super_class = CKBannerButtonObject;
  v11 = [(CKBannerButtonObject *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(CKBannerButtonObject *)v11 setTitle:titleCopy];
    [(CKBannerButtonObject *)v12 setHandler:handlerCopy];
    [(CKBannerButtonObject *)v12 setMenuItems:itemsCopy];
  }

  return v12;
}

@end