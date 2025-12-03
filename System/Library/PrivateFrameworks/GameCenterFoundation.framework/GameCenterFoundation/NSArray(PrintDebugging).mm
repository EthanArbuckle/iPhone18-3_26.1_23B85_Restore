@interface NSArray(PrintDebugging)
- (id)_gkDescriptionWithChildren:()PrintDebugging;
@end

@implementation NSArray(PrintDebugging)

- (id)_gkDescriptionWithChildren:()PrintDebugging
{
  v4 = _gkTabStringForTabLevel(a3);
  string = [MEMORY[0x277CCAB68] string];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [string appendFormat:@"%@<%@ %p> {\n", v4, v7, self];

  v8 = [self count];
  if (v8 >= 1)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      v11 = [self objectAtIndex:i];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 _gkDescriptionWithChildren:a3 + 1];
        whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v15 = [v13 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
      }

      else
      {
        v15 = @"(null)\n";
      }

      v16 = [MEMORY[0x277CCABB0] numberWithInteger:i];
      [string appendFormat:@"%@    %@ : %@", v4, v16, v15];
    }
  }

  [string appendFormat:@"%@}\n", v4];

  return string;
}

@end