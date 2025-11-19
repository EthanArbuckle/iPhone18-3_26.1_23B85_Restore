@interface DMCTableViewCell
+ (NSString)cellReuseIdentifier;
@end

@implementation DMCTableViewCell

+ (NSString)cellReuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end