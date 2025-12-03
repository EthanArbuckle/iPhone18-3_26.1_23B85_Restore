@interface CalDAVCompItem
- (void)parserFoundAttributes:(id)attributes;
- (void)write:(id)write;
@end

@implementation CalDAVCompItem

- (void)parserFoundAttributes:(id)attributes
{
  v20 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [attributesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(attributesCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        name = [v10 name];
        v12 = [name isEqualToString:v8];

        if (v12)
        {
          value = [v10 value];
          [(CalDAVCompItem *)self setNameAttribute:value];
        }
      }

      v6 = [attributesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)write:(id)write
{
  writeCopy = write;
  nameAttribute = [(CalDAVCompItem *)self nameAttribute];

  if (nameAttribute)
  {
    name = [(CoreDAVItem *)self name];
    nameSpace = [(CoreDAVItem *)self nameSpace];
    v8 = *MEMORY[0x277CFDFA8];
    nameAttribute2 = [(CalDAVCompItem *)self nameAttribute];
    [writeCopy appendElement:name inNamespace:nameSpace withStringContent:0 withAttributeNamesAndValues:{v8, nameAttribute2, 0}];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CalDAVCompItem;
    [(CoreDAVItem *)&v10 write:writeCopy];
  }
}

@end