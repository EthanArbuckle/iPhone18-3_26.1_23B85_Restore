@interface CalDAVCalendarColorItem
- (NSString)symbolicColorName;
- (void)parserFoundAttributes:(id)a3;
- (void)write:(id)a3;
@end

@implementation CalDAVCalendarColorItem

- (void)parserFoundAttributes:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqualToString:@"symbolic-color"];

        if (v11)
        {
          v12 = [v9 value];
          v13 = [v12 lowercaseString];
          [(CalDAVCalendarColorItem *)self setSymbolicColorName:v13];

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
}

- (NSString)symbolicColorName
{
  symbolicColorName = self->_symbolicColorName;
  if (symbolicColorName)
  {
    goto LABEL_2;
  }

  v4 = MEMORY[0x277D7F0D8];
  v5 = [(CalDAVCalendarColorItem *)self colorString];
  v3 = [v4 symbolicColorForLegacyRGB:v5];

  if (!v3)
  {
    symbolicColorName = *MEMORY[0x277D7F1E8];
LABEL_2:
    v3 = symbolicColorName;
  }

  return v3;
}

- (void)write:(id)a3
{
  v4 = a3;
  v5 = [(CalDAVCalendarColorItem *)self symbolicColorName];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [(CoreDAVItem *)self name];
    v8 = [(CoreDAVItem *)self nameSpace];
    v9 = [(CoreDAVItem *)self payloadAsString];
    v10 = [(CalDAVCalendarColorItem *)self symbolicColorName];
    [v4 appendElement:v7 inNamespace:v8 withStringContent:v9 withAttributeNamesAndValues:{@"symbolic-color", v10, 0}];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CalDAVCalendarColorItem;
    [(CoreDAVItem *)&v11 write:v4];
  }
}

@end