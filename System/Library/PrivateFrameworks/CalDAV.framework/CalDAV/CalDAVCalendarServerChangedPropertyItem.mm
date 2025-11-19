@interface CalDAVCalendarServerChangedPropertyItem
- (CalDAVCalendarServerChangedPropertyItem)initWithNameSpace:(id)a3 andName:(id)a4;
- (id)copyParseRules;
- (void)addChangedParameter:(id)a3;
- (void)parserFoundAttributes:(id)a3;
@end

@implementation CalDAVCalendarServerChangedPropertyItem

- (CalDAVCalendarServerChangedPropertyItem)initWithNameSpace:(id)a3 andName:(id)a4
{
  v8.receiver = self;
  v8.super_class = CalDAVCalendarServerChangedPropertyItem;
  v4 = [(CoreDAVItem *)&v8 initWithNameSpace:a3 andName:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    changedParameters = v4->_changedParameters;
    v4->_changedParameters = v5;
  }

  return v4;
}

- (void)parserFoundAttributes:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = [v11 isEqualToString:v8];

        if (v12)
        {
          v13 = [v10 value];
          [(CalDAVCalendarServerChangedPropertyItem *)self setNameAttribute:v13];
        }

        v14 = [v10 name];
        v15 = [v14 isEqualToString:@"change-type"];

        if (v15)
        {
          v16 = [v10 value];
          [(CalDAVCalendarServerChangedPropertyItem *)self setTypeAttribute:v16];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addChangedParameter:(id)a3
{
  v4 = a3;
  v5 = [(CalDAVCalendarServerChangedPropertyItem *)self changedParameters];
  [v5 addObject:v4];
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