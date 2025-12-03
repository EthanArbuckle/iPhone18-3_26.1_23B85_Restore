@interface CKSettingsMeCardSharingNicknameAvatarProvider
- (CKSettingsMeCardSharingNicknameAvatarProvider)initWithImageData:(id)data;
- (void)generateAvatarImageOfSize:(CGSize)size imageHandler:(id)handler;
@end

@implementation CKSettingsMeCardSharingNicknameAvatarProvider

- (CKSettingsMeCardSharingNicknameAvatarProvider)initWithImageData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = CKSettingsMeCardSharingNicknameAvatarProvider;
  v6 = [(CKSettingsMeCardSharingNicknameAvatarProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageData, data);
  }

  return v7;
}

- (void)generateAvatarImageOfSize:(CGSize)size imageHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v9 = v8;

  v10 = MEMORY[0x277D755B8];
  imageData = [(CKSettingsMeCardSharingNicknameAvatarProvider *)self imageData];
  v12 = [v10 imageWithData:imageData scale:v9];

  if (v12)
  {
    if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
    {
      height = 100.0;
      width = 100.0;
    }

    v16.width = width;
    v16.height = height;
    UIGraphicsBeginImageContextWithOptions(v16, 0, v9);
    [v12 drawInRect:{0.0, 0.0, width, height}];
    v13 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v13 = 0;
  }

  handlerCopy[2](handlerCopy, v13, 0);
}

@end