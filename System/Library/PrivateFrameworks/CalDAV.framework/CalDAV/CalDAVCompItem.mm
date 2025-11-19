@interface CalDAVCompItem
- (void)parserFoundAttributes:(id)a3;
- (void)write:(id)a3;
@end

@implementation CalDAVCompItem

- (void)parserFoundAttributes:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = *MEMORY[0x277CFDFA8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = [v11 isEqualToString:v8];

        if (v12)
        {
          v13 = [v10 value];
          [(CalDAVCompItem *)self setNameAttribute:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)write:(id)a3
{
  v4 = a3;
  v5 = [(CalDAVCompItem *)self nameAttribute];

  if (v5)
  {
    v6 = [(CoreDAVItem *)self name];
    v7 = [(CoreDAVItem *)self nameSpace];
    v8 = *MEMORY[0x277CFDFA8];
    v9 = [(CalDAVCompItem *)self nameAttribute];
    [v4 appendElement:v6 inNamespace:v7 withStringContent:0 withAttributeNamesAndValues:{v8, v9, 0}];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CalDAVCompItem;
    [(CoreDAVItem *)&v10 write:v4];
  }
}

@end