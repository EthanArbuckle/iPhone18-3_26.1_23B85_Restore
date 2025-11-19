@interface PBUtils
+ (id)readStringWithInstance:(int)a3 fromContainer:(id)a4;
@end

@implementation PBUtils

+ (id)readStringWithInstance:(int)a3 fromContainer:(id)a4
{
  v4 = [a4 childOfType:4026 instance:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 eshObject];
    v7 = [MEMORY[0x277CCACA8] stringWithCsString:v6 + 48];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end