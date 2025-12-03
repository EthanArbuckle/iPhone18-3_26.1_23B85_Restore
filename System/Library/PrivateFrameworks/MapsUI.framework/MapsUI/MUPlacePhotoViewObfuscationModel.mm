@interface MUPlacePhotoViewObfuscationModel
- (MUPlacePhotoViewObfuscationModel)initWithProviderName:(id)name;
@end

@implementation MUPlacePhotoViewObfuscationModel

- (MUPlacePhotoViewObfuscationModel)initWithProviderName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    v10.receiver = self;
    v10.super_class = MUPlacePhotoViewObfuscationModel;
    v6 = [(MUPlacePhotoViewObfuscationModel *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_providerName, name);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end