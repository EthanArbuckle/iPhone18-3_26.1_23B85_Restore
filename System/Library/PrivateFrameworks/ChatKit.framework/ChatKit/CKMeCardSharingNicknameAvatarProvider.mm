@interface CKMeCardSharingNicknameAvatarProvider
- (CKMeCardSharingNicknameAvatarProvider)initWithImageData:(id)a3;
- (void)generateAvatarImageOfSize:(CGSize)a3 imageHandler:(id)a4;
@end

@implementation CKMeCardSharingNicknameAvatarProvider

- (CKMeCardSharingNicknameAvatarProvider)initWithImageData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKMeCardSharingNicknameAvatarProvider;
  v6 = [(CKMeCardSharingNicknameAvatarProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageData, a3);
  }

  return v7;
}

- (void)generateAvatarImageOfSize:(CGSize)a3 imageHandler:(id)a4
{
  height = a3.height;
  width = a3.width;
  v14 = a4;
  v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = MEMORY[0x1E69DCAB8];
  v11 = [(CKMeCardSharingNicknameAvatarProvider *)self imageData];
  v12 = [v10 imageWithData:v11 scale:v9];

  if (v12)
  {
    if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
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

  v14[2](v14, v13, 0);
}

@end