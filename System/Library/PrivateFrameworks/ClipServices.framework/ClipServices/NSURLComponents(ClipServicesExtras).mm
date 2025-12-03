@interface NSURLComponents(ClipServicesExtras)
- (void)cps_addQueryItem:()ClipServicesExtras;
@end

@implementation NSURLComponents(ClipServicesExtras)

- (void)cps_addQueryItem:()ClipServicesExtras
{
  v4 = a3;
  queryItems = [self queryItems];
  v6 = [queryItems mutableCopy];
  v7 = v6;
  if (v6)
  {
    array = v6;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v9 = array;

  [v9 addObject:v4];
  [self setQueryItems:v9];
}

@end