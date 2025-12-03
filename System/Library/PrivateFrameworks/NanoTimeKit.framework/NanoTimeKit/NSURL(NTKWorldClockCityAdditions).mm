@interface NSURL(NTKWorldClockCityAdditions)
+ (id)nwcCurrentLocationURLForLatitude:()NTKWorldClockCityAdditions longitude:;
+ (id)nwcCurrentLocationURLForLocation:()NTKWorldClockCityAdditions;
@end

@implementation NSURL(NTKWorldClockCityAdditions)

+ (id)nwcCurrentLocationURLForLatitude:()NTKWorldClockCityAdditions longitude:
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  stringValue = [v4 stringValue];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  stringValue2 = [v6 stringValue];
  v8 = [v3 stringWithFormat:@"%@/%@/%@", @"nwc://curLoc", stringValue, stringValue2];

  v9 = [MEMORY[0x277CBEBC0] URLWithString:v8];

  return v9;
}

+ (id)nwcCurrentLocationURLForLocation:()NTKWorldClockCityAdditions
{
  v3 = a3;
  v4 = v3;
  v5 = MEMORY[0x277CBEBC0];
  if (v3)
  {
    [v3 coordinate];
    v7 = v6;
    [v4 coordinate];
    [v5 nwcCurrentLocationURLForLatitude:v7 longitude:?];
  }

  else
  {
    [MEMORY[0x277CBEBC0] nwcCurrentLocationURL];
  }
  v8 = ;

  return v8;
}

@end