@interface NSSet(PrintDebugging)
- (id)_gkDescriptionWithChildren:()PrintDebugging;
@end

@implementation NSSet(PrintDebugging)

- (id)_gkDescriptionWithChildren:()PrintDebugging
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = _gkTabStringForTabLevel(a3);
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend(v5, "appendFormat:", @"%@<%@ %p> {(\n"), v4, v7, a1;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = a1;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if (v13)
        {
          v14 = [v13 _gkDescriptionWithChildren:a3 + 1];
          v15 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v16 = [v14 stringByTrimmingCharactersInSet:v15];
        }

        else
        {
          v16 = @"(null)\n";
        }

        [v5 appendFormat:@"%@    %@", v4, v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  [v5 appendFormat:@"%@}\n"], v4);
  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

@end