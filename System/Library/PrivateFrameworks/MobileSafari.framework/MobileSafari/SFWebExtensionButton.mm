@interface SFWebExtensionButton
- (SFWebExtensionButton)initWithExtension:(id)extension image:(id)image badged:(BOOL)badged;
@end

@implementation SFWebExtensionButton

- (SFWebExtensionButton)initWithExtension:(id)extension image:(id)image badged:(BOOL)badged
{
  extensionCopy = extension;
  imageCopy = image;
  v15.receiver = self;
  v15.super_class = SFWebExtensionButton;
  v11 = [(SFWebExtensionButton *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_extension, extension);
    objc_storeStrong(&v12->_image, image);
    v12->_badged = badged;
    v13 = v12;
  }

  return v12;
}

@end