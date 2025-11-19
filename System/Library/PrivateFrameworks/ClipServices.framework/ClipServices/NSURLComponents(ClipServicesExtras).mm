@interface NSURLComponents(ClipServicesExtras)
- (void)cps_addQueryItem:()ClipServicesExtras;
@end

@implementation NSURLComponents(ClipServicesExtras)

- (void)cps_addQueryItem:()ClipServicesExtras
{
  v4 = a3;
  v5 = [a1 queryItems];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB18] array];
  }

  v9 = v8;

  [v9 addObject:v4];
  [a1 setQueryItems:v9];
}

@end