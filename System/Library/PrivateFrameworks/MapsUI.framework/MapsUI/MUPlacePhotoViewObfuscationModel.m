@interface MUPlacePhotoViewObfuscationModel
- (MUPlacePhotoViewObfuscationModel)initWithProviderName:(id)a3;
@end

@implementation MUPlacePhotoViewObfuscationModel

- (MUPlacePhotoViewObfuscationModel)initWithProviderName:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v10.receiver = self;
    v10.super_class = MUPlacePhotoViewObfuscationModel;
    v6 = [(MUPlacePhotoViewObfuscationModel *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_providerName, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end