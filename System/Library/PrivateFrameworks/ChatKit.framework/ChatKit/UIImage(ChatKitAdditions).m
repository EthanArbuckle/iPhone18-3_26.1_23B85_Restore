@interface UIImage(ChatKitAdditions)
+ (id)__ck_actionImageForSubscriptionShortName:()ChatKitAdditions;
+ (id)__ck_actionImageForSubscriptionShortName:()ChatKitAdditions isFilled:;
+ (id)__ck_actionImageForSubscriptionShortName:()ChatKitAdditions isFilled:filledTextColor:filledBackgroundColor:unFilledTextColor:unFilledBackgroundColor:;
+ (id)abImageNamed:()ChatKitAdditions;
+ (id)ckColorImageOfSize:()ChatKitAdditions withColor:;
+ (id)ckImageNamed:()ChatKitAdditions compatibleWithTraitCollection:;
+ (id)ckImageNamed:()ChatKitAdditions withTintColor:;
+ (id)ckImageWithData:()ChatKitAdditions;
+ (id)ckTemplateImageNamed:()ChatKitAdditions;
- (__CFData)__ck_ASTCRepresentation;
- (double)__ck_contentsCenter;
- (id)__ck_imageWithOrientation:()ChatKitAdditions;
- (id)__ck_resizableBalloonWithBalloonDescriptor:()ChatKitAdditions framed:;
- (id)ckImageWithTintColor:()ChatKitAdditions insets:traitCollection:;
- (id)ck_imageCroppedToCircle;
- (void)decode;
@end

@implementation UIImage(ChatKitAdditions)

+ (id)ckImageNamed:()ChatKitAdditions compatibleWithTraitCollection:
{
  v5 = MEMORY[0x1E69DCAB8];
  v6 = a4;
  v7 = a3;
  v8 = CKFrameworkBundle();
  v9 = [v5 imageNamed:v7 inBundle:v8 compatibleWithTraitCollection:v6];

  return v9;
}

+ (id)ckColorImageOfSize:()ChatKitAdditions withColor:
{
  v7 = a5;
  v13.width = a1;
  v13.height = a2;
  UIGraphicsBeginImageContext(v13);
  CurrentContext = UIGraphicsGetCurrentContext();
  v9 = [v7 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v9);
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = a1;
  v14.size.height = a2;
  CGContextFillRect(CurrentContext, v14);
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

+ (id)abImageNamed:()ChatKitAdditions
{
  v3 = abImageNamed__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[UIImage(ChatKitAdditions) abImageNamed:];
  }

  v5 = [MEMORY[0x1E69DCAB8] imageNamed:v4 inBundle:abImageNamed__sABBundle];

  return v5;
}

+ (id)ckImageWithData:()ChatKitAdditions
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = a3;
  v5 = [[v3 alloc] _initWithData:v4 preserveScale:1 cache:1];

  v6 = MEMORY[0x1E69DCAB8];
  v7 = [v5 CGImage];
  v8 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v8 scale];
  v10 = [v6 imageWithCGImage:v7 scale:objc_msgSend(v5 orientation:{"imageOrientation"), v9}];

  return v10;
}

- (id)__ck_resizableBalloonWithBalloonDescriptor:()ChatKitAdditions framed:
{
  v7 = [a1 __ck_imageWithOrientation:4 * (a3[3] == 0)];
  [a1 capInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (a3[121] == 1)
  {
    v16 = a3[1];
  }

  else
  {
    v16 = 0;
  }

  v17 = +[CKUIBehavior sharedBehaviors];
  [v17 balloonMaskAlignmentRectInsetsWithTailShape:v16];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  if (a4)
  {
    v26 = +[CKUIBehavior sharedBehaviors];
    [v26 balloonMaskFrameInsetsWithBalloonShape:*a3];
    v9 = v9 + v27;
    v11 = v11 + v28;
    v13 = v13 + v29;
    v15 = v15 + v30;
  }

  v31 = [v7 resizableImageWithCapInsets:{v9, v11, v13, v15}];

  v32 = [v31 imageWithAlignmentRectInsets:{v19, v21, v23, v25}];

  return v32;
}

- (id)__ck_imageWithOrientation:()ChatKitAdditions
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a1;
  if ([v4 imageOrientation] != a3)
  {
    v5 = [v4 images];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v39;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v39 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [*(*(&v38 + 1) + 8 * i) __ck_imageWithOrientation:{a3, v38}];
            [v6 addObject:v12];
          }

          v9 = [v7 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v9);
      }

      v13 = MEMORY[0x1E69DCAB8];
      [v4 duration];
      v14 = [v13 animatedImageWithImages:v6 duration:?];
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x1E69DCAB8]);
      v16 = [v4 CGImage];
      [v4 scale];
      v14 = [v15 initWithCGImage:v16 scale:a3 orientation:?];
    }

    [v4 capInsets];
    v20 = *MEMORY[0x1E69DDCE0];
    v21 = *(MEMORY[0x1E69DDCE0] + 8);
    v22 = *(MEMORY[0x1E69DDCE0] + 16);
    v23 = *(MEMORY[0x1E69DDCE0] + 24);
    if (v24 != v21 || v17 != v20 || v19 != v23 || v18 != v22)
    {
      v28 = [v14 resizableImageWithCapInsets:?];

      v14 = v28;
    }

    [v4 alignmentRectInsets];
    if (v32 != v21 || v29 != v20 || v31 != v23 || v30 != v22)
    {
      v36 = [v14 imageWithAlignmentRectInsets:?];

      v14 = v36;
    }

    v4 = v14;
  }

  return v4;
}

- (double)__ck_contentsCenter
{
  [a1 size];
  v3 = v2;
  [a1 capInsets];
  v5 = v4 / v3;
  if (v3 == 0.0)
  {
    return 0.0;
  }

  else
  {
    return v5;
  }
}

- (__CFData)__ck_ASTCRepresentation
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF88]);
  if (__ck_ASTCRepresentation_onceToken != -1)
  {
    [UIImage(ChatKitAdditions) __ck_ASTCRepresentation];
  }

  v3 = CGImageDestinationCreateWithData(v2, @"com.apple.atx", 1uLL, 0);
  v4 = [a1 CGImage];
  CGImageDestinationAddImage(v3, v4, __ck_ASTCRepresentation_imageProperties);
  CGImageDestinationFinalize(v3);
  CFRelease(v3);

  return v2;
}

- (id)ck_imageCroppedToCircle
{
  [a1 size];
  v3 = v2;
  [a1 size];
  if (v3 >= v4)
  {
    v3 = v4;
  }

  [a1 size];
  v6 = (v3 - v5) * 0.5;
  [a1 size];
  v8 = (v3 - v7) * 0.5;
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v3;
  v21.size.height = v3;
  v22 = CGRectInset(v21, v6, v8);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  v13 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v13 scale];
  v15 = v14;
  v20.width = width;
  v20.height = height;
  UIGraphicsBeginImageContextWithOptions(v20, 0, v15);

  v16 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:x cornerRadius:{y, width, height, v3 * 0.5}];
  [v16 addClip];

  [a1 drawInRect:{x, y, width, height}];
  v17 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v17;
}

- (void)decode
{
  result = [a1 CGImage];
  if (result)
  {

    return [result CA_prepareRenderValue];
  }

  return result;
}

- (id)ckImageWithTintColor:()ChatKitAdditions insets:traitCollection:
{
  v14 = a7;
  v15 = a8;
  [a1 size];
  v17 = v16;
  v19 = v18;
  if (v15)
  {
    [MEMORY[0x1E69DCA80] formatForTraitCollection:v15];
  }

  else
  {
    [MEMORY[0x1E69DCA80] preferredFormat];
  }
  v20 = ;
  v21 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v20 format:{a3 + a5 + v17, a2 + a4 + v19}];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __73__UIImage_ChatKitAdditions__ckImageWithTintColor_insets_traitCollection___block_invoke;
  v25[3] = &unk_1E72EEEA8;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v25[4] = a1;
  v26 = v14;
  v22 = v14;
  v23 = [v21 imageWithActions:v25];

  return v23;
}

+ (id)ckImageNamed:()ChatKitAdditions withTintColor:
{
  v5 = a4;
  v6 = [MEMORY[0x1E69DCAB8] ckImageNamed:a3];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v6 ckImageWithTintColor:v5];

    v7 = v8;
  }

  return v7;
}

+ (id)ckTemplateImageNamed:()ChatKitAdditions
{
  v1 = [a1 ckImageNamed:?];
  v2 = [v1 imageWithRenderingMode:2];

  return v2;
}

+ (id)__ck_actionImageForSubscriptionShortName:()ChatKitAdditions
{
  v3 = a3;
  v4 = [objc_opt_class() __ck_actionImageForSubscriptionShortName:v3 isFilled:1];

  return v4;
}

+ (id)__ck_actionImageForSubscriptionShortName:()ChatKitAdditions isFilled:
{
  v5 = MEMORY[0x1E69DCAB8];
  v6 = MEMORY[0x1E69DC888];
  v7 = a3;
  v8 = [v6 systemBackgroundColor];
  v9 = [MEMORY[0x1E69DC888] labelColor];
  v10 = [MEMORY[0x1E69DC888] labelColor];
  v11 = [MEMORY[0x1E69DC888] clearColor];
  v12 = [v5 __ck_actionImageForSubscriptionShortName:v7 isFilled:a4 filledTextColor:v8 filledBackgroundColor:v9 unFilledTextColor:v10 unFilledBackgroundColor:v11];

  return v12;
}

+ (id)__ck_actionImageForSubscriptionShortName:()ChatKitAdditions isFilled:filledTextColor:filledBackgroundColor:unFilledTextColor:unFilledBackgroundColor:
{
  v13 = MEMORY[0x1E69DD250];
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a3;
  v19 = [[v13 alloc] initWithFrame:{0.0, 0.0, 25.0, 25.0}];
  v20 = [MEMORY[0x1E69DC888] clearColor];
  [v19 setBackgroundColor:v20];

  v21 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 17.0, 17.0}];
  v22 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:12.0];
  [v21 setFont:v22];

  [v21 setText:v18];
  if (a4)
  {
    v23 = v17;
  }

  else
  {
    v23 = v15;
  }

  if (a4)
  {
    v24 = v16;
  }

  else
  {
    v24 = v14;
  }

  [v21 setTextColor:v23];

  [v21 setTextAlignment:1];
  [v21 setBackgroundColor:v24];

  v25 = [v21 layer];
  [v25 setMasksToBounds:1];

  v26 = [v21 layer];
  [v26 setCornerRadius:3.0];

  if ((a4 & 1) == 0)
  {
    v27 = [MEMORY[0x1E69DC888] labelColor];
    v28 = [v27 CGColor];
    v29 = [v21 layer];
    [v29 setBorderColor:v28];

    v30 = [v21 layer];
    [v30 setBorderWidth:1.5];
  }

  [v21 intrinsicContentSize];
  v32 = v31 + 7.0;
  if (v31 + 7.0 > 17.0)
  {
    v33 = v31 + 10.0;
    if (v33 <= 25.0)
    {
      v34 = 25.0;
    }

    else
    {
      v34 = v33;
    }

    [v19 setFrame:{0.0, 0.0, v34, v34}];
    [v21 setFrame:{0.0, 0.0, v32, 17.0}];
  }

  [v19 center];
  [v21 setCenter:?];
  [v19 addSubview:v21];
  [v19 bounds];
  v42.width = v35;
  v42.height = v36;
  UIGraphicsBeginImageContextWithOptions(v42, 0, 0.0);
  v37 = [v19 layer];
  [v37 renderInContext:UIGraphicsGetCurrentContext()];

  v38 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v39 = [MEMORY[0x1E69DCAB8] imageWithCGImage:objc_msgSend(v38 scale:"CGImage") orientation:{0, 0.0}];

  return v39;
}

@end