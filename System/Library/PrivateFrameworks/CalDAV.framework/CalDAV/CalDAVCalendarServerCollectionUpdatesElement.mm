@interface CalDAVCalendarServerCollectionUpdatesElement
- (id)copyParseRules;
@end

@implementation CalDAVCalendarServerCollectionUpdatesElement

- (id)copyParseRules
{
  v12.receiver = self;
  v12.super_class = CalDAVCalendarServerCollectionUpdatesElement;
  v2 = [(CalDAVCalendarServerResourceChangeElement *)&v12 copyParseRules];
  v3 = [v2 mutableCopy];
  v11 = objc_alloc(MEMORY[0x277CBEAC0]);
  v4 = *MEMORY[0x277CFDE90];
  v5 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:@"collection-publish" objectClass:objc_opt_class() setterMethod:sel_setPublish_];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"collection-publish"];
  v7 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v4 elementName:@"collection-unpublish" objectClass:objc_opt_class() setterMethod:sel_setUnpublish_];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, @"collection-unpublish"];
  v9 = [v11 initWithObjectsAndKeys:{v5, v6, v7, v8, 0}];

  [v3 addEntriesFromDictionary:v9];
  return v3;
}

@end