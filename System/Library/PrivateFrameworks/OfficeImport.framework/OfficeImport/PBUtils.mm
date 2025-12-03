@interface PBUtils
+ (id)readStringWithInstance:(int)instance fromContainer:(id)container;
@end

@implementation PBUtils

+ (id)readStringWithInstance:(int)instance fromContainer:(id)container
{
  v4 = [container childOfType:4026 instance:instance];
  v5 = v4;
  if (v4)
  {
    eshObject = [v4 eshObject];
    v7 = [MEMORY[0x277CCACA8] stringWithCsString:eshObject + 48];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end