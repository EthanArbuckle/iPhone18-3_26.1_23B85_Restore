@interface CalDAVCalendarServerChangedPropertyItem
- (CalDAVCalendarServerChangedPropertyItem)initWithNameSpace:(id)space andName:(id)name;
- (id)copyParseRules;
- (void)addChangedParameter:(id)parameter;
- (void)parserFoundAttributes:(id)attributes;
@end

@implementation CalDAVCalendarServerChangedPropertyItem

- (CalDAVCalendarServerChangedPropertyItem)initWithNameSpace:(id)space andName:(id)name
{
  v8.receiver = self;
  v8.super_class = CalDAVCalendarServerChangedPropertyItem;
  v4 = [(CoreDAVItem *)&v8 initWithNameSpace:space andName:name];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    changedParameters = v4->_changedParameters;
    v4->_changedParameters = v5;
  }

  return v4;
}

- (void)parserFoundAttributes:(id)attributes
{
  v23 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [attributesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = *MEMORY[0x277CFDFA8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(attributesCopy);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        name = [v10 name];
        v12 = [name isEqualToString:v8];

        if (v12)
        {
          value = [v10 value];
          [(CalDAVCalendarServerChangedPropertyItem *)self setNameAttribute:value];
        }

        name2 = [v10 name];
        v15 = [name2 isEqualToString:@"change-type"];

        if (v15)
        {
          value2 = [v10 value];
          [(CalDAVCalendarServerChangedPropertyItem *)self setTypeAttribute:value2];
        }
      }

      v6 = [attributesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addChangedParameter:(id)parameter
{
  parameterCopy = parameter;
  changedParameters = [(CalDAVCalendarServerChangedPropertyItem *)self changedParameters];
  [changedParameters addObject:parameterCopy];
}

- (id)copyParseRules
{
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v3 = *MEMORY[0x277CFDE90];
  v4 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:*MEMORY[0x277CFDE90] elementName:@"changed-parameter" objectClass:objc_opt_class() setterMethod:sel_addChangedParameter_];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v3, @"changed-parameter"];
  v6 = [v2 initWithObjectsAndKeys:{v4, v5, 0}];

  return v6;
}

@end