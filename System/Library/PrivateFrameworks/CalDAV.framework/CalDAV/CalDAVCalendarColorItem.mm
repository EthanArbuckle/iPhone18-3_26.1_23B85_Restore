@interface CalDAVCalendarColorItem
- (NSString)symbolicColorName;
- (void)parserFoundAttributes:(id)attributes;
- (void)write:(id)write;
@end

@implementation CalDAVCalendarColorItem

- (void)parserFoundAttributes:(id)attributes
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  attributesCopy = attributes;
  v5 = [attributesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(attributesCopy);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:@"symbolic-color"];

        if (v11)
        {
          value = [v9 value];
          lowercaseString = [value lowercaseString];
          [(CalDAVCalendarColorItem *)self setSymbolicColorName:lowercaseString];

          goto LABEL_11;
        }
      }

      v6 = [attributesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  colorString = [(CalDAVCalendarColorItem *)self colorString];
  v3 = [v4 symbolicColorForLegacyRGB:colorString];

  if (!v3)
  {
    symbolicColorName = *MEMORY[0x277D7F1E8];
LABEL_2:
    v3 = symbolicColorName;
  }

  return v3;
}

- (void)write:(id)write
{
  writeCopy = write;
  symbolicColorName = [(CalDAVCalendarColorItem *)self symbolicColorName];
  v6 = [symbolicColorName length];

  if (v6)
  {
    name = [(CoreDAVItem *)self name];
    nameSpace = [(CoreDAVItem *)self nameSpace];
    payloadAsString = [(CoreDAVItem *)self payloadAsString];
    symbolicColorName2 = [(CalDAVCalendarColorItem *)self symbolicColorName];
    [writeCopy appendElement:name inNamespace:nameSpace withStringContent:payloadAsString withAttributeNamesAndValues:{@"symbolic-color", symbolicColorName2, 0}];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CalDAVCalendarColorItem;
    [(CoreDAVItem *)&v11 write:writeCopy];
  }
}

@end