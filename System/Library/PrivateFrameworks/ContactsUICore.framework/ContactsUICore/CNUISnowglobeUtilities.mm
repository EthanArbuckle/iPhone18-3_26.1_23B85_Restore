@interface CNUISnowglobeUtilities
+ (BOOL)enableGroupPhoto;
+ (CGColor)backgroundColorForBackgroundStyle:(unint64_t)style;
+ (CGColor)defaultBackgroundColor;
+ (CGColor)defaultDarkBackgroundColor;
+ (CGImage)circularPlaceholderImageForSize:(CGSize)size backgroundStyle:(unint64_t)style scale:(double)scale;
+ (CGImage)imageForAvatarImages:(CGImage *)images badgeImages:(CGImage *)badgeImages badgeTypes:(id)types rect:(CGRect)rect itemCount:(int64_t)count scope:(id)scope;
+ (CGImage)imageForLayer:(id)layer inRect:(CGRect)rect;
+ (CGImage)roundedRectPlaceholderImageForSize:(CGSize)size backgroundStyle:(unint64_t)style scale:(double)scale;
+ (CGSize)sizeForImageAtIndex:(unint64_t)index inRect:(CGRect)rect forItemCount:(unint64_t)count scope:(id)scope;
+ (id)avatarLayerForCGImages:(CGImage *)images inRect:(CGRect)rect forItemCount:(int64_t)count scope:(id)scope;
+ (id)circularContainerLayerForRect:(CGRect)rect backgroundStyle:(unint64_t)style;
+ (id)containerLayerForRect:(CGRect)rect backgroundStyle:(unint64_t)style;
+ (id)roundedRectContainerLayerForRect:(CGRect)rect backgroundStyle:(unint64_t)style;
@end

@implementation CNUISnowglobeUtilities

+ (BOOL)enableGroupPhoto
{
  if (enableGroupPhoto_s_onceToken != -1)
  {
    +[CNUISnowglobeUtilities enableGroupPhoto];
  }

  return (enableGroupPhoto_enableGroupPhoto | enableGroupPhoto_enablePinning) & 1;
}

void __42__CNUISnowglobeUtilities_enableGroupPhoto__block_invoke()
{
  enableGroupPhoto_enableGroupPhoto = _os_feature_enabled_impl();
  enableGroupPhoto_enablePinning = _os_feature_enabled_impl();
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:*MEMORY[0x1E695C130]];

  if ((enableGroupPhoto_enableGroupPhoto & 1) == 0 && (enableGroupPhoto_enablePinning & 1) == 0 && ((v2 ^ 1) & 1) == 0)
  {
    enableGroupPhoto_enableGroupPhoto = CFPreferencesGetAppBooleanValue(@"EnableGroupPhoto", @"com.apple.messages", 0) != 0;
    enableGroupPhoto_enablePinning = CFPreferencesGetAppBooleanValue(@"ConversationPinning", @"com.apple.messages", 0) != 0;
  }
}

+ (CGImage)imageForAvatarImages:(CGImage *)images badgeImages:(CGImage *)badgeImages badgeTypes:(id)types rect:(CGRect)rect itemCount:(int64_t)count scope:(id)scope
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  typesCopy = types;
  scopeCopy = scope;
  [scopeCopy scale];
  CGAffineTransformMakeScale(&transform, v17, v17);
  v18 = height * transform.c + transform.a * width;
  v19 = height * transform.d + transform.b * width;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v21 = CNUIBitmapContextCreate(llround(v18), llround(v19), DeviceRGB);
  v22 = 0x1E6979000uLL;
  [MEMORY[0x1E6979518] begin];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  v23 = [objc_opt_class() avatarLayerForCGImages:images inRect:count forItemCount:scopeCopy scope:{x, y, v18, v19}];
  v24 = [typesCopy count];
  if (v24)
  {
    v25 = v24;
    v59 = v21;
    layer = [MEMORY[0x1E6979398] layer];
    [layer setFrame:{0.0, 0.0, v18, v19}];
    [layer addSublayer:v23];
    for (i = 0; i != v25; ++i)
    {
      [v23 bounds];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v36 = [typesCopy objectAtIndexedSubscript:i];
      v37 = +[CNUIAvatarLayoutManager avatarBadgeLayerForAvatarInRect:badgeType:isRTL:](CNUIAvatarLayoutManager, "avatarBadgeLayerForAvatarInRect:badgeType:isRTL:", [v36 integerValue], objc_msgSend(scopeCopy, "rightToLeft"), v29, v31, v33, v35);

      [v37 setContents:badgeImages[i]];
      [layer addSublayer:v37];
      if ([scopeCopy rightToLeft])
      {
        [v37 frame];
        if (v38 < 0.0)
        {
          [v23 frame];
          v40 = v39;
          v42 = v41;
          v44 = v43;
          v46 = v45;
          [v37 frame];
          v48 = v40 + fabs(v47);
          [v37 frame];
          v50 = v49;
          v52 = v51;
          v54 = v53;
          [v23 setFrame:{v48, v42, v44, v46}];
          [v37 setFrame:{0.0, v50, v52, v54}];
        }
      }
    }

    v21 = v59;
    v22 = 0x1E6979000;
  }

  else
  {
    layer = v23;
  }

  [layer frame];
  transform.b = 0.0;
  transform.c = 0.0;
  transform.a = 1.0;
  *&transform.d = xmmword_1A34D9290;
  transform.ty = v55;
  CGContextConcatCTM(v21, &transform);
  [layer renderInContext:v21];
  Image = CGBitmapContextCreateImage(v21);
  [*(v22 + 1304) commit];
  CGColorSpaceRelease(DeviceRGB);
  CGContextRelease(v21);
  if (Image)
  {
    v57 = CFAutorelease(Image);
  }

  else
  {
    v57 = 0;
  }

  return v57;
}

+ (CGImage)imageForLayer:(id)layer inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  layerCopy = layer;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v8 = CNUIBitmapContextCreate(llround(width), llround(height), DeviceRGB);
  [layerCopy renderInContext:v8];

  Image = CGBitmapContextCreateImage(v8);
  CGColorSpaceRelease(DeviceRGB);
  CGContextRelease(v8);
  if (!Image)
  {
    return 0;
  }

  return CFAutorelease(Image);
}

+ (CGColor)defaultBackgroundColor
{
  v2 = objc_opt_class();

  return [v2 backgroundColorForBackgroundStyle:0];
}

+ (CGColor)defaultDarkBackgroundColor
{
  v2 = objc_opt_class();

  return [v2 backgroundColorForBackgroundStyle:1];
}

+ (CGColor)backgroundColorForBackgroundStyle:(unint64_t)style
{
  if (style > 2)
  {
    if (style == 3)
    {
      v3 = 0.2;
      goto LABEL_11;
    }

    if (style == 4)
    {
      v4 = 0.0;
      v5 = 0.0;
      v6 = 0.0;
      v3 = 0.0;
      goto LABEL_12;
    }

LABEL_8:
    v4 = 0.882352941;
    v5 = 0.88627451;
    v6 = 0.894117647;
    v3 = 0.56;
    goto LABEL_12;
  }

  if (style == 1)
  {
    v4 = 0.882352941;
    v5 = 0.88627451;
    v6 = 0.894117647;
    v3 = 0.32;
    goto LABEL_12;
  }

  if (style != 2)
  {
    goto LABEL_8;
  }

  v3 = 0.56;
LABEL_11:
  v4 = 1.0;
  v5 = 1.0;
  v6 = 1.0;
LABEL_12:
  result = CGColorCreateSRGB(v4, v5, v6, v3);
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

+ (id)containerLayerForRect:(CGRect)rect backgroundStyle:(unint64_t)style
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = objc_alloc_init(MEMORY[0x1E6979398]);
  [v9 setBackgroundColor:{objc_msgSend(objc_opt_class(), "backgroundColorForBackgroundStyle:", style)}];
  [v9 setFrame:{x, y, width, height}];

  return v9;
}

+ (id)circularContainerLayerForRect:(CGRect)rect backgroundStyle:(unint64_t)style
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = [self containerLayerForRect:style backgroundStyle:?];
  v9 = objc_alloc_init(MEMORY[0x1E69794A0]);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v10 = CGPathCreateWithEllipseInRect(v13, 0);
  [v8 setMask:v9];
  [v9 setPath:v10];
  if (v10)
  {
    CGPathRelease(v10);
  }

  return v8;
}

+ (id)roundedRectContainerLayerForRect:(CGRect)rect backgroundStyle:(unint64_t)style
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = [self containerLayerForRect:style backgroundStyle:?];
  v9 = objc_alloc_init(MEMORY[0x1E69794A0]);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v10 = floor(width * 15.0 / 255.0) * 0.5;
  v11 = CGPathCreateWithRoundedRect(v14, v10, v10, 0);
  [v8 setMask:v9];
  [v9 setPath:v11];
  if (v11)
  {
    CGPathRelease(v11);
  }

  return v8;
}

+ (CGSize)sizeForImageAtIndex:(unint64_t)index inRect:(CGRect)rect forItemCount:(unint64_t)count scope:(id)scope
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  scopeCopy = scope;
  v13 = [CNUIAvatarLayoutManager layoutConfigurationsForType:2 withItemCount:count];
  if ([v13 count] <= index)
  {
    v16 = *MEMORY[0x1E695F060];
    v18 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v14 = [v13 objectAtIndexedSubscript:index];
    [v14 itemFrameInContainingBounds:objc_msgSend(scopeCopy isRTL:{"rightToLeft"), x, y, width, height}];
    v16 = v15;
    v18 = v17;
  }

  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

+ (id)avatarLayerForCGImages:(CGImage *)images inRect:(CGRect)rect forItemCount:(int64_t)count scope:(id)scope
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  scopeCopy = scope;
  if (width < height)
  {
    height = width;
  }

  v12 = [objc_opt_class() circularContainerLayerForRect:objc_msgSend(scopeCopy backgroundStyle:{"backgroundStyle"), x, y, height, height}];
  v13 = [CNUIAvatarLayoutManager layoutConfigurationsForType:2 withItemCount:count];
  v14 = [v13 count];
  if (v14 >= count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = v14;
  }

  if (countCopy)
  {
    v16 = 0;
    v17 = MEMORY[0x1E695E0F0];
    do
    {
      maskedAvatarIndices = [scopeCopy maskedAvatarIndices];
      v19 = [maskedAvatarIndices containsIndex:v16];

      if ((v19 & 1) == 0)
      {
        layer = [MEMORY[0x1E6979398] layer];
        [layer setContents:images[v16]];
        [v12 addSublayer:layer];
        v21 = [v17 arrayByAddingObject:layer];

        v22 = [v13 objectAtIndexedSubscript:v16];
        [v22 updateLayer:layer inBounds:v16 atIndex:objc_msgSend(scopeCopy isRTL:"rightToLeft") layoutType:{2, x, y, height, height}];
        v23 = objc_alloc_init(MEMORY[0x1E69794A0]);
        [layer bounds];
        v29 = CGRectInset(v28, 1.0, 1.0);
        v24 = CGPathCreateWithEllipseInRect(v29, 0);
        [layer setMask:v23];
        [v23 setPath:v24];
        if (v24)
        {
          CGPathRelease(v24);
        }

        v17 = v21;
      }

      ++v16;
    }

    while (countCopy != v16);
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

+ (CGImage)circularPlaceholderImageForSize:(CGSize)size backgroundStyle:(unint64_t)style scale:(double)scale
{
  height = size.height;
  width = size.width;
  [MEMORY[0x1E6979518] begin];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  v9 = width * scale;
  v10 = height * scale;
  v11 = [objc_opt_class() circularContainerLayerForRect:style backgroundStyle:{0.0, 0.0, v9, v10}];
  v12 = [objc_opt_class() imageForLayer:v11 inRect:{0.0, 0.0, v9, v10}];
  [MEMORY[0x1E6979518] commit];

  return v12;
}

+ (CGImage)roundedRectPlaceholderImageForSize:(CGSize)size backgroundStyle:(unint64_t)style scale:(double)scale
{
  height = size.height;
  width = size.width;
  [MEMORY[0x1E6979518] begin];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setDisableActions:1];
  v9 = width * scale;
  v10 = height * scale;
  v11 = [objc_opt_class() roundedRectContainerLayerForRect:style backgroundStyle:{0.0, 0.0, v9, v10}];
  v12 = [objc_opt_class() imageForLayer:v11 inRect:{0.0, 0.0, v9, v10}];
  [MEMORY[0x1E6979518] commit];

  return v12;
}

@end