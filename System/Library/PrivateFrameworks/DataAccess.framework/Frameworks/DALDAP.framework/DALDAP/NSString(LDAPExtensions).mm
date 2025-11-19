@interface NSString(LDAPExtensions)
- (id)ldapHumanReadableStringFromSearchBase;
- (id)ldapSanitizedAddress;
@end

@implementation NSString(LDAPExtensions)

- (id)ldapHumanReadableStringFromSearchBase
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = [a1 componentsSeparatedByString:{@", "}];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 rangeOfString:@"=" options:{4, v17}];
        if (v9 == 0x7FFFFFFFFFFFFFFFLL || (v10 = v9 + 1, v9 + 1 >= [v8 length]))
        {
          [v2 addObject:v8];
        }

        else
        {
          v11 = [v8 substringFromIndex:v10];
          v12 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v13 = [v11 stringByTrimmingCharactersInSet:v12];

          if ([v13 length])
          {
            [v2 addObject:v13];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v14 = [v2 componentsJoinedByString:{@", "}];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)ldapSanitizedAddress
{
  v2 = [a1 mutableCopy];
  v3 = [a1 length];
  [v2 replaceOccurrencesOfString:@"$" withString:@"\n" options:0 range:{0, v3}];
  [v2 replaceOccurrencesOfString:@"\\24" withString:@"$" options:0 range:{0, v3}];
  [v2 replaceOccurrencesOfString:@"\\5C" withString:@"\\"" options:0 range:{0, v3}];

  return v2;
}

@end