@interface CalDAVCalendarServerResourceChangeDeletedElement
- (id)copyParseRules;
- (void)setDeletedDetails:(id)a3;
@end

@implementation CalDAVCalendarServerResourceChangeDeletedElement

- (void)setDeletedDetails:(id)a3
{
  v4 = a3;
  v5 = [v4 componentType];
  [(CalDAVCalendarServerResourceChangeDeletedElement *)self setComponentType:v5];

  v6 = [v4 summary];
  [(CalDAVCalendarServerResourceChangeDeletedElement *)self setSummary:v6];

  v7 = [v4 displayName];
  [(CalDAVCalendarServerResourceChangeDeletedElement *)self setDisplayName:v7];

  v8 = [v4 nextInstance];
  [(CalDAVCalendarServerResourceChangeDeletedElement *)self setNextInstance:v8];

  v9 = [v4 hadMoreInstances];

  [(CalDAVCalendarServerResourceChangeDeletedElement *)self setHadMoreInstances:v9];
}

- (id)copyParseRules
{
  v10.receiver = self;
  v10.super_class = CalDAVCalendarServerResourceChangeDeletedElement;
  v2 = [(CalDAVCalendarServerResourceChangeElement *)&v10 copyParseRules];
  v3 = [v2 mutableCopy];
  v4 = objc_alloc(MEMORY[0x277CBEAC0]);
  v5 = *MEMORY[0x277CFDE90];
  v6 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:@"deleted-details" objectClass:objc_opt_class() setterMethod:sel_setDeletedDetails_];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v5, @"deleted-details"];
  v8 = [v4 initWithObjectsAndKeys:{v6, v7, 0}];

  [v3 addEntriesFromDictionary:v8];
  return v3;
}

@end