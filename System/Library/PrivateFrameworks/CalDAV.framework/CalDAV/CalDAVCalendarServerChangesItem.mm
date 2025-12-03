@interface CalDAVCalendarServerChangesItem
- (CalDAVCalendarServerChangesItem)initWithNameSpace:(id)space andName:(id)name;
- (id)copyParseRules;
- (void)addChangedProperty:(id)property;
@end

@implementation CalDAVCalendarServerChangesItem

- (CalDAVCalendarServerChangesItem)initWithNameSpace:(id)space andName:(id)name
{
  v8.receiver = self;
  v8.super_class = CalDAVCalendarServerChangesItem;
  v4 = [(CoreDAVItem *)&v8 initWithNameSpace:space andName:name];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    changedProperties = v4->_changedProperties;
    v4->_changedProperties = v5;
  }

  return v4;
}

- (void)addChangedProperty:(id)property
{
  propertyCopy = property;
  changedProperties = [(CalDAVCalendarServerChangesItem *)self changedProperties];
  [changedProperties addObject:propertyCopy];
}

- (id)copyParseRules
{
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v3 = *MEMORY[0x277CFDE90];
  v4 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:*MEMORY[0x277CFDE90] elementName:@"changed-property" objectClass:objc_opt_class() setterMethod:sel_addChangedProperty_];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v3, @"changed-property"];
  v6 = [v2 initWithObjectsAndKeys:{v4, v5, 0}];

  return v6;
}

@end