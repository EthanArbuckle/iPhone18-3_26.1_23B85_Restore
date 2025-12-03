@interface FMHorizontalRule
+ (id)imageWithColor:(id)color leading:(BOOL)leading;
- (CGSize)preferredContentSize;
- (void)commonSetup;
@end

@implementation FMHorizontalRule

+ (id)imageWithColor:(id)color leading:(BOOL)leading
{
  leadingCopy = leading;
  v5 = MEMORY[0x277D759A0];
  colorCopy = color;
  mainScreen = [v5 mainScreen];
  [mainScreen scale];
  v9 = v8;

  v10 = 1.0;
  v11 = 0.0;
  v18.width = 1.0;
  v18.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v18, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  if (v9 > 1.0)
  {
    v10 = 1.0 / v9;
    if (!leadingCopy)
    {
      v11 = 1.0 - v10;
    }
  }

  cGColor = [colorCopy CGColor];

  CGContextSetFillColorWithColor(CurrentContext, cGColor);
  v19.size.width = 1.0;
  v19.origin.x = 0.0;
  v19.origin.y = v11;
  v19.size.height = v10;
  CGContextFillRect(CurrentContext, v19);
  v14 = UIGraphicsGetImageFromCurrentImageContext();
  v15 = [v14 resizableImageWithCapInsets:1 resizingMode:{0.0, 0.0, 0.0, 0.0}];
  UIGraphicsEndImageContext();

  return v15;
}

- (void)commonSetup
{
  v4.receiver = self;
  v4.super_class = FMHorizontalRule;
  [(FMRule *)&v4 commonSetup];
  imageView = [(FMRule *)self imageView];
  [imageView setAutoresizingMask:18];
}

- (CGSize)preferredContentSize
{
  v2 = *MEMORY[0x277D77260];
  v3 = 1.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end