@interface NSObject(PrintDebugging)
- (id)_gkDescription;
- (id)_gkDescriptionWithChildren:()PrintDebugging;
@end

@implementation NSObject(PrintDebugging)

- (id)_gkDescription
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [self description];
  v3 = [v1 stringWithFormat:@"%@\n", v2];

  return v3;
}

- (id)_gkDescriptionWithChildren:()PrintDebugging
{
  string = [MEMORY[0x277CCAB68] string];
  v6 = _gkTabStringForTabLevel(a3);
  _gkDescription = [self _gkDescription];
  [string appendFormat:@"%@%@", v6, _gkDescription];

  return string;
}

@end