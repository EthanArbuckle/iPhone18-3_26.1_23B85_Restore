@interface SFWebExtensionButton
- (SFWebExtensionButton)initWithExtension:(id)a3 image:(id)a4 badged:(BOOL)a5;
@end

@implementation SFWebExtensionButton

- (SFWebExtensionButton)initWithExtension:(id)a3 image:(id)a4 badged:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = SFWebExtensionButton;
  v11 = [(SFWebExtensionButton *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_extension, a3);
    objc_storeStrong(&v12->_image, a4);
    v12->_badged = a5;
    v13 = v12;
  }

  return v12;
}

@end