@interface MEMailComposeToolbarItemInfo
- (MEMailComposeToolbarItemInfo)initWithLabel:(id)label image:(id)image tooltip:(id)tooltip;
@end

@implementation MEMailComposeToolbarItemInfo

- (MEMailComposeToolbarItemInfo)initWithLabel:(id)label image:(id)image tooltip:(id)tooltip
{
  labelCopy = label;
  imageCopy = image;
  tooltipCopy = tooltip;
  v15.receiver = self;
  v15.super_class = MEMailComposeToolbarItemInfo;
  v12 = [(MEMailComposeToolbarItemInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_image, image);
    objc_storeStrong(&v13->_label, label);
    objc_storeStrong(&v13->_tooltip, tooltip);
  }

  return v13;
}

@end