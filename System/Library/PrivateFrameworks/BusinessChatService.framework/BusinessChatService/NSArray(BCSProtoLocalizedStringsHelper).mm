@interface NSArray(BCSProtoLocalizedStringsHelper)
- (id)defaultLocalizedStringsValue;
- (id)localizedStringsToDictionary;
@end

@implementation NSArray(BCSProtoLocalizedStringsHelper)

- (id)localizedStringsToDictionary
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(self, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        text = [v8 text];
        locale = [v8 locale];
        [v2 setObject:text forKeyedSubscript:locale];
      }

      v5 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)defaultLocalizedStringsValue
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  selfCopy = self;
  v2 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(selfCopy);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if ([v6 isDefault])
        {
          text = [v6 text];

          goto LABEL_11;
        }
      }

      v3 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  selfCopy = [selfCopy firstObject];
  text = [selfCopy text];
LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return text;
}

@end