@interface CKBackBarButtonItem
+ (id)unreadBadgeButtonImageWithString:(id)a3;
- (CKBackBarButtonItem)initWithTitle:(id)a3;
- (CKBackBarButtonItem)initWithUnreadCount:(int64_t)a3;
@end

@implementation CKBackBarButtonItem

- (CKBackBarButtonItem)initWithUnreadCount:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = CKBackBarButtonItem;
  v4 = [(CKBackBarButtonItem *)&v10 initWithTitle:0 style:0 target:0 action:0];
  v5 = v4;
  if (a3 >= 1 && v4)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v7 = [v6 __ck_localizedString];

    v8 = [CKBackBarButtonItem unreadBadgeButtonImageWithString:v7];
    [(CKBackBarButtonItem *)v5 setImage:v8];
  }

  return v5;
}

- (CKBackBarButtonItem)initWithTitle:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKBackBarButtonItem;
  return [(CKBackBarButtonItem *)&v4 initWithTitle:a3 style:0 target:0 action:0];
}

+ (id)unreadBadgeButtonImageWithString:(id)a3
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a3;
  v5 = [v3 whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  v7 = v6;
  v8 = _drawingAttributes();
  v9 = 19.0;
  [v7 boundingRectWithSize:33 options:v8 attributes:0 context:{40.0, 19.0}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v39.origin.x = v11;
  v39.origin.y = v13;
  v39.size.width = v15;
  v39.size.height = v17;
  Width = CGRectGetWidth(v39);
  if (UIAccessibilityIsBoldTextEnabled())
  {
    v9 = 21.0;
  }

  v19 = v9;
  if (v9 - Width <= 10.0)
  {
    UICeilToScale();
    v19 = v20;
  }

  v38.width = v19;
  v38.height = v9;
  UIGraphicsBeginImageContextWithOptions(v38, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v22 = [MEMORY[0x1E69DC888] systemBlueColor];
  CGContextSetFillColorWithColor(CurrentContext, [v22 CGColor]);

  v23 = CGPathCreateWithContinuousRoundedRect();
  CGContextAddPath(CurrentContext, v23);
  CGContextFillPath(CurrentContext);
  CGPathRelease(v23);
  UIRectCenteredIntegralRectScale();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  CGContextSetBlendMode(CurrentContext, kCGBlendModeClear);
  v32 = _drawingAttributes();
  [v7 drawWithRect:33 options:v32 attributes:0 context:{v25, v27, v29, v31, 0}];

  CGContextSetBlendMode(CurrentContext, kCGBlendModeNormal);
  v33 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v34 = [v33 _imageThatSuppressesAccessibilityHairlineThickening];

  v35 = [v34 imageWithRenderingMode:2];

  return v35;
}

@end