@interface MEMailComposeToolbarItemInfo
- (MEMailComposeToolbarItemInfo)initWithLabel:(id)a3 image:(id)a4 tooltip:(id)a5;
@end

@implementation MEMailComposeToolbarItemInfo

- (MEMailComposeToolbarItemInfo)initWithLabel:(id)a3 image:(id)a4 tooltip:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MEMailComposeToolbarItemInfo;
  v12 = [(MEMailComposeToolbarItemInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_image, a4);
    objc_storeStrong(&v13->_label, a3);
    objc_storeStrong(&v13->_tooltip, a5);
  }

  return v13;
}

@end