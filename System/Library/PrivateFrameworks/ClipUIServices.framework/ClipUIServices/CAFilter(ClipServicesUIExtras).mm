@interface CAFilter(ClipServicesUIExtras)
+ (id)cps_filterWithType:()ClipServicesUIExtras value:forKey:;
@end

@implementation CAFilter(ClipServicesUIExtras)

+ (id)cps_filterWithType:()ClipServicesUIExtras value:forKey:
{
  v7 = a5;
  v8 = a4;
  v9 = [objc_opt_class() filterWithType:v8];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self];
  [v9 setValue:v10 forKey:v7];

  return v9;
}

@end