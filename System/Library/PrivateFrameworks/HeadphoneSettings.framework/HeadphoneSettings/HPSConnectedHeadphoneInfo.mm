@interface HPSConnectedHeadphoneInfo
- (HPSConnectedHeadphoneInfo)initWithID:(id)d name:(id)name image:(id)image specifier:(id)specifier;
@end

@implementation HPSConnectedHeadphoneInfo

- (HPSConnectedHeadphoneInfo)initWithID:(id)d name:(id)name image:(id)image specifier:(id)specifier
{
  dCopy = d;
  nameCopy = name;
  imageCopy = image;
  specifierCopy = specifier;
  v18.receiver = self;
  v18.super_class = HPSConnectedHeadphoneInfo;
  v15 = [(HPSConnectedHeadphoneInfo *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deviceID, d);
    objc_storeStrong(&v16->_deviceName, name);
    objc_storeStrong(&v16->_deviceImage, image);
    objc_storeStrong(&v16->_deviceSpecifier, specifier);
  }

  return v16;
}

@end