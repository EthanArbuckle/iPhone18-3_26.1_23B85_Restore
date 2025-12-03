@interface CUINamedMultisizeImage(IconServicesAdditions)
- (id)_IS_iconStackWithRequestedAppearance:()IconServicesAdditions;
- (id)_IS_nameWithRequestedAppearance:()IconServicesAdditions;
@end

@implementation CUINamedMultisizeImage(IconServicesAdditions)

- (id)_IS_iconStackWithRequestedAppearance:()IconServicesAdditions
{
  v5 = objc_alloc(MEMORY[0x1E69993C8]);
  v6 = [self _IS_nameWithRequestedAppearance:a3];
  v7 = [v5 initWithName:v6];

  [v7 setSize:{1.0, 1.0}];
  [v7 setScale:1.0];
  v8 = objc_alloc_init(MEMORY[0x1E69993A0]);
  white = [MEMORY[0x1E69A8968] white];
  [v8 setCGColor:{objc_msgSend(white, "cgColor")}];

  [v7 addLayer:v8];
  v10 = objc_alloc_init(MEMORY[0x1E69993D8]);
  [v10 setImage:{objc_msgSend(self, "image")}];
  [v10 setHasLightingEffects:1];
  [v10 setFrame:{0.0, 0.0, 1.0, 1.0}];
  [v7 addLayer:v10];

  return v7;
}

- (id)_IS_nameWithRequestedAppearance:()IconServicesAdditions
{
  v4 = MEMORY[0x1E696AEC0];
  appearance = [self appearance];
  v6 = [v4 stringWithFormat:@"multisizeImageAppearance:%@_requestedAppearance:%ld:", appearance, a3];

  return v6;
}

@end