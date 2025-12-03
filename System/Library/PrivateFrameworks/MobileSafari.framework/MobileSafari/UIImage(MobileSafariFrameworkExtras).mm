@interface UIImage(MobileSafariFrameworkExtras)
+ (__CFString)safari_currentDeviceImageNameForOrientation:()MobileSafariFrameworkExtras;
+ (id)sf_chicletStyleImageWithImage:()MobileSafariFrameworkExtras backgroundColor:size:cornerRadius:;
+ (id)sf_imageNamed:()MobileSafariFrameworkExtras;
- (BOOL)sf_isLaunchImageSizedForOrientation:()MobileSafariFrameworkExtras includesStatusBar:;
- (uint64_t)sf_hasRegisteredFaviconForDarkUserInterfaceStyle;
- (uint64_t)sf_isMonogram;
- (uint64_t)sf_shouldApplyBackingForDarkBackdrop;
- (void)sf_registerFaviconForDarkUserInterfaceStyleWithSize:()MobileSafariFrameworkExtras;
- (void)sf_setIsMonogram:()MobileSafariFrameworkExtras;
@end

@implementation UIImage(MobileSafariFrameworkExtras)

+ (id)sf_imageNamed:()MobileSafariFrameworkExtras
{
  v3 = a3;
  v4 = MEMORY[0x1E69DCAB8];
  sf_mobileSafariFrameworkBundle = [MEMORY[0x1E696AAE8] sf_mobileSafariFrameworkBundle];
  v6 = [v4 imageNamed:v3 inBundle:sf_mobileSafariFrameworkBundle compatibleWithTraitCollection:0];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [MEMORY[0x1E69DCAB8] imageNamed:v3];
  }

  v8 = v7;

  return v8;
}

+ (__CFString)safari_currentDeviceImageNameForOrientation:()MobileSafariFrameworkExtras
{
  v3 = 4 * ((a3 - 3) < 2);
  _typeOfCurrentDevice = [MEMORY[0x1E6982C40] _typeOfCurrentDevice];
  identifier = [_typeOfCurrentDevice identifier];

  v6 = [MEMORY[0x1E69A8A40] symbolForTypeIdentifier:identifier withResolutionStrategy:1 variantOptions:v3 error:0];
  v7 = v6;
  if (v6)
  {
    name = [v6 name];
  }

  else
  {
    name = @"iphone";
  }

  return name;
}

- (uint64_t)sf_shouldApplyBackingForDarkBackdrop
{
  v2 = objc_getAssociatedObject(self, shouldApplyBackingForDarkBackdropKey);
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    [self CGImage];
    bOOLValue = WBSShouldApplyBackingForDarkBackdropToImage();
    v5 = shouldApplyBackingForDarkBackdropKey;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
    objc_setAssociatedObject(self, v5, v6, 1);
  }

  return bOOLValue;
}

- (uint64_t)sf_hasRegisteredFaviconForDarkUserInterfaceStyle
{
  v1 = objc_getAssociatedObject(self, hasRegisteredFaviconForDarkUserInterfaceStyleKey);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)sf_registerFaviconForDarkUserInterfaceStyleWithSize:()MobileSafariFrameworkExtras
{
  if ([self renderingMode] != 2 && (objc_msgSend(self, "isSymbolImage") & 1) == 0 && (objc_msgSend(self, "sf_hasRegisteredFaviconForDarkUserInterfaceStyle") & 1) == 0)
  {
    if ([self sf_shouldApplyBackingForDarkBackdrop])
    {
      preferredFormat = [MEMORY[0x1E69DCA80] preferredFormat];
      [preferredFormat setOpaque:0];
      v7 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:preferredFormat format:{a2, a3}];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __92__UIImage_MobileSafariFrameworkExtras__sf_registerFaviconForDarkUserInterfaceStyleWithSize___block_invoke;
      v16[3] = &unk_1E721B448;
      *&v16[5] = a2;
      *&v16[6] = a3;
      v16[4] = self;
      __asm { FMOV            V0.2D, #1.0 }

      v17 = _Q0;
      v18 = a2 + -2.0;
      v19 = a3 + -2.0;
      v13 = [v7 imageWithActions:v16];
      imageAsset = [self imageAsset];
      v15 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
      [imageAsset registerImage:v13 withTraitCollection:v15];

      objc_setAssociatedObject(self, hasRegisteredFaviconForDarkUserInterfaceStyleKey, MEMORY[0x1E695E118], 1);
    }
  }
}

- (uint64_t)sf_isMonogram
{
  v1 = objc_getAssociatedObject(self, isMonogramKey);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)sf_setIsMonogram:()MobileSafariFrameworkExtras
{
  v2 = isMonogramKey;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, v2, v3, 0x301);
}

- (BOOL)sf_isLaunchImageSizedForOrientation:()MobileSafariFrameworkExtras includesStatusBar:
{
  v6 = a3 - 3;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  fixedCoordinateSpace = [mainScreen fixedCoordinateSpace];
  [fixedCoordinateSpace bounds];
  v10 = v9;
  v12 = v11;

  if (v6 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  if (v6 >= 2)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 scale];
  v17 = v16;

  selfCopy = self;
  [selfCopy scale];
  if (v19 == v17 && (([selfCopy size], v21 == v14) ? (v22 = v20 == v13) : (v22 = 0), v22))
  {
    v30 = 1;
  }

  else
  {
    [selfCopy scale];
    v24 = v23;
    [selfCopy size];
    v26 = v25;
    v28 = v27;
    if (v24 != v17)
    {
      [selfCopy size];
      v24 = v24 * (v29 / v14);
      v26 = v26 / v24;
      v28 = v28 / v24;
    }

    if (v24 != v17)
    {

      return 0;
    }

    v30 = v28 == v13 && v26 == v14;
  }

  if (a4 && v30)
  {
    v30 = 1;
    *a4 = 1;
  }

  return v30;
}

+ (id)sf_chicletStyleImageWithImage:()MobileSafariFrameworkExtras backgroundColor:size:cornerRadius:
{
  v15 = a8;
  v16 = a9;
  v17 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithBounds:{self, a2, a3, a4}];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __104__UIImage_MobileSafariFrameworkExtras__sf_chicletStyleImageWithImage_backgroundColor_size_cornerRadius___block_invoke;
  v22[3] = &unk_1E721B470;
  selfCopy = self;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v23 = v16;
  v24 = v15;
  v18 = v15;
  v19 = v16;
  v20 = [v17 imageWithActions:v22];

  return v20;
}

@end