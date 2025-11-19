@interface CKBannerButtonObject
- (CKBannerButtonObject)initWithTitle:(id)a3 handler:(id)a4 menuItems:(id)a5;
@end

@implementation CKBannerButtonObject

- (CKBannerButtonObject)initWithTitle:(id)a3 handler:(id)a4 menuItems:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CKBannerButtonObject;
  v11 = [(CKBannerButtonObject *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(CKBannerButtonObject *)v11 setTitle:v8];
    [(CKBannerButtonObject *)v12 setHandler:v9];
    [(CKBannerButtonObject *)v12 setMenuItems:v10];
  }

  return v12;
}

@end