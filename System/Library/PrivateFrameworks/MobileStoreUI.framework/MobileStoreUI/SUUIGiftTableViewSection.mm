@interface SUUIGiftTableViewSection
+ (id)aloneRowBackgroundImageWithSize:(CGSize)size;
- (SUUIGiftTableViewSection)initWithGiftConfiguration:(id)configuration;
@end

@implementation SUUIGiftTableViewSection

- (SUUIGiftTableViewSection)initWithGiftConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = SUUIGiftTableViewSection;
  v6 = [(SUUIGiftTableViewSection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_giftConfiguration, configuration);
  }

  return v7;
}

+ (id)aloneRowBackgroundImageWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  UIGraphicsBeginImageContextWithOptions(size, 1, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v6 = [MEMORY[0x277D75348] colorWithWhite:0.921568627 alpha:1.0];
  [v6 set];

  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = width;
  v16.size.height = height;
  UIRectFill(v16);
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = width;
  v17.size.height = height;
  v18 = CGRectInset(v17, 1.0, 1.0);
  v7 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v18.origin.x cornerRadius:{v18.origin.y, v18.size.width, v18.size.height, 7.5}];
  CGContextSaveGState(CurrentContext);
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [whiteColor set];

  [v7 addClip];
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = width;
  v19.size.height = height;
  UIRectFill(v19);
  CGContextRestoreGState(CurrentContext);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = width;
  v20.size.height = height;
  v21 = CGRectInset(v20, 0.5, 0.5);
  v9 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v21.origin.x cornerRadius:{v21.origin.y + 1.0, v21.size.width, v21.size.height + -3.0, 7.5}];
  v10 = [MEMORY[0x277D75348] colorWithWhite:0.929411765 alpha:1.0];
  [v10 set];

  [v9 stroke];
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = width;
  v22.size.height = height;
  v23 = CGRectInset(v22, 0.5, 0.5);
  v11 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v23.origin.x cornerRadius:{v23.origin.y, v23.size.width, v23.size.height + -2.0, 7.5}];
  v12 = [MEMORY[0x277D75348] colorWithWhite:0.737254902 alpha:1.0];
  [v12 set];

  [v11 stroke];
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v13;
}

@end