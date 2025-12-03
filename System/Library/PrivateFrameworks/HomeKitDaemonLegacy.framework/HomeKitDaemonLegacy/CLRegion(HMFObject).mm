@interface CLRegion(HMFObject)
+ (NSString)shortDescription;
- (id)shortDescription;
@end

@implementation CLRegion(HMFObject)

- (id)shortDescription
{
  v0 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  v2 = [v0 stringWithFormat:@"<%@>", shortDescription];

  return v2;
}

+ (NSString)shortDescription
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

@end