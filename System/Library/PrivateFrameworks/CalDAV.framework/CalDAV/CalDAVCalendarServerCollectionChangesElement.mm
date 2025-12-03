@interface CalDAVCalendarServerCollectionChangesElement
- (id)copyParseRules;
- (void)setCreatedItem:(id)item;
- (void)setDeletedItem:(id)item;
- (void)setUpdatedItem:(id)item;
@end

@implementation CalDAVCalendarServerCollectionChangesElement

- (void)setCreatedItem:(id)item
{
  payloadAsString = [item payloadAsString];
  -[CalDAVCalendarServerCollectionChangesElement setCreated:](self, "setCreated:", [payloadAsString integerValue]);
}

- (void)setUpdatedItem:(id)item
{
  payloadAsString = [item payloadAsString];
  -[CalDAVCalendarServerCollectionChangesElement setUpdated:](self, "setUpdated:", [payloadAsString integerValue]);
}

- (void)setDeletedItem:(id)item
{
  payloadAsString = [item payloadAsString];
  -[CalDAVCalendarServerCollectionChangesElement setDeleted:](self, "setDeleted:", [payloadAsString integerValue]);
}

- (id)copyParseRules
{
  v14.receiver = self;
  v14.super_class = CalDAVCalendarServerCollectionChangesElement;
  copyParseRules = [(CalDAVCalendarServerResourceChangeElement *)&v14 copyParseRules];
  v12 = [copyParseRules mutableCopy];
  v11 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = *MEMORY[0x277CFDE90];
  v3 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:@"child-created" objectClass:objc_opt_class() setterMethod:sel_setCreatedItem_];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"child-created"];
  v5 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"child-updated" objectClass:objc_opt_class() setterMethod:sel_setUpdatedItem_];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"child-updated"];
  v7 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"child-deleted" objectClass:objc_opt_class() setterMethod:sel_setDeletedItem_];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"child-deleted"];
  v9 = [v11 initWithObjectsAndKeys:{v3, v4, v5, v6, v7, v8, 0}];

  [v12 addEntriesFromDictionary:v9];
  return v12;
}

@end