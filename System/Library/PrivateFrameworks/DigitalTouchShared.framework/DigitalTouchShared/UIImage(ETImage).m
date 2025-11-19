@interface UIImage(ETImage)
+ (id)etImageNamed:()ETImage;
@end

@implementation UIImage(ETImage)

+ (id)etImageNamed:()ETImage
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [a1 etImageNamed:v5 inBundle:v6];

  return v7;
}

@end