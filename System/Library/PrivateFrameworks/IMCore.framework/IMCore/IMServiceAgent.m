@interface IMServiceAgent
- (id)myPictureData;
@end

@implementation IMServiceAgent

- (id)myPictureData
{
  v3 = objc_msgSend_sharedInstance(IMAccountController, a2, v2);
  v6 = objc_msgSend_bestAccountForStatus(v3, v4, v5);
  v9 = objc_msgSend_myPictureData(v6, v7, v8);

  return v9;
}

@end