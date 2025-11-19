@interface HPSConnectedHeadphoneInfo
- (HPSConnectedHeadphoneInfo)initWithID:(id)a3 name:(id)a4 image:(id)a5 specifier:(id)a6;
@end

@implementation HPSConnectedHeadphoneInfo

- (HPSConnectedHeadphoneInfo)initWithID:(id)a3 name:(id)a4 image:(id)a5 specifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HPSConnectedHeadphoneInfo;
  v15 = [(HPSConnectedHeadphoneInfo *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deviceID, a3);
    objc_storeStrong(&v16->_deviceName, a4);
    objc_storeStrong(&v16->_deviceImage, a5);
    objc_storeStrong(&v16->_deviceSpecifier, a6);
  }

  return v16;
}

@end