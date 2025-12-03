@interface NSSet(PrintDebugging)
- (id)_gkDescriptionWithChildren:()PrintDebugging;
@end

@implementation NSSet(PrintDebugging)

- (id)_gkDescriptionWithChildren:()PrintDebugging
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = _gkTabStringForTabLevel(a3);
  string = [MEMORY[0x277CCAB68] string];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend(string, "appendFormat:", @"%@<%@ %p> {(\n"), v4, v7, self;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  v9 = [selfCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if (v13)
        {
          v14 = [v13 _gkDescriptionWithChildren:a3 + 1];
          whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v16 = [v14 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
        }

        else
        {
          v16 = @"(null)\n";
        }

        [string appendFormat:@"%@    %@", v4, v16];
      }

      v10 = [selfCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  [string appendFormat:@"%@}\n"], v4);
  v17 = *MEMORY[0x277D85DE8];

  return string;
}

@end