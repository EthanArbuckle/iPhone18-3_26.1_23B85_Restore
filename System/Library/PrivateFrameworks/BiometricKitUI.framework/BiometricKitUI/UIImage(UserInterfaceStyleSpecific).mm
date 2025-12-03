@interface UIImage(UserInterfaceStyleSpecific)
+ (id)userInterfaceStyleSpecificImageInBundle:()UserInterfaceStyleSpecific;
@end

@implementation UIImage(UserInterfaceStyleSpecific)

+ (id)userInterfaceStyleSpecificImageInBundle:()UserInterfaceStyleSpecific
{
  v4 = a3;
  v5 = +[BKUIDevice sharedInstance];
  isIdiomPad = [v5 isIdiomPad];

  if (isIdiomPad)
  {
    v7 = @"ipad";
  }

  else
  {
    v7 = @"iphone";
  }

  _currentTraitCollection = [MEMORY[0x277D75C80] _currentTraitCollection];
  userInterfaceStyle = [_currentTraitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    v10 = @"-dark";
  }

  else
  {
    v10 = @"-light";
  }

  v11 = [(__CFString *)v7 stringByAppendingString:v10];
  v12 = [self imageNamed:v11 inBundle:v4];

  return v12;
}

@end