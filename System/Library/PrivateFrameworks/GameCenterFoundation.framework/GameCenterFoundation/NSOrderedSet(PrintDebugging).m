@interface NSOrderedSet(PrintDebugging)
- (id)_gkDescriptionWithChildren:()PrintDebugging;
@end

@implementation NSOrderedSet(PrintDebugging)

- (id)_gkDescriptionWithChildren:()PrintDebugging
{
  v4 = _gkTabStringForTabLevel(a3);
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend(v5, "appendFormat:", @"%@<%@ %p> {(\n"), v4, v7, a1;

  v8 = [a1 count];
  if (v8 >= 1)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      v11 = [a1 objectAtIndex:i];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 _gkDescriptionWithChildren:a3 + 1];
        v14 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v15 = [v13 stringByTrimmingCharactersInSet:v14];
      }

      else
      {
        v15 = @"(null)\n";
      }

      v16 = [MEMORY[0x277CCABB0] numberWithInteger:i];
      [v5 appendFormat:@"%@    %@ : %@", v4, v16, v15];
    }
  }

  [v5 appendFormat:@"%@}\n"], v4);

  return v5;
}

@end