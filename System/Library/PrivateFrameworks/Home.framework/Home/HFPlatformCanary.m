@interface HFPlatformCanary
+ (id)tweet;
@end

@implementation HFPlatformCanary

+ (id)tweet
{
  v2 = [MEMORY[0x277D75348] redColor];
  v7 = 0;
  v5 = 0;
  v6 = 0;
  [v2 getRed:&v7 green:&v6 blue:&v5 alpha:0];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"This is not a mac: red %f green %f blue %f", v7, v6, v5];

  return v3;
}

@end