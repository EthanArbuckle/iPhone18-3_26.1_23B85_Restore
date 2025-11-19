@interface NSTimeZone(GMT)
+ (id)gmt;
@end

@implementation NSTimeZone(GMT)

+ (id)gmt
{
  v0 = gmt___gmt;
  if (!gmt___gmt)
  {
    v1 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
    v2 = gmt___gmt;
    gmt___gmt = v1;

    v0 = gmt___gmt;
  }

  return v0;
}

@end