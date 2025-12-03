@interface NSURLComponents(CRXUExtensions)
- (id)crxu_valueForQueryParameter:()CRXUExtensions;
@end

@implementation NSURLComponents(CRXUExtensions)

- (id)crxu_valueForQueryParameter:()CRXUExtensions
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [self queryItems];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  value = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (value)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != value; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:v4];

        if (v11)
        {
          value = [v9 value];
          goto LABEL_11;
        }
      }

      value = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (value)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return value;
}

@end