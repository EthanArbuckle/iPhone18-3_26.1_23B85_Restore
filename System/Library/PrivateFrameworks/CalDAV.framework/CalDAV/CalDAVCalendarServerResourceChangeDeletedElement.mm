@interface CalDAVCalendarServerResourceChangeDeletedElement
- (id)copyParseRules;
- (void)setDeletedDetails:(id)details;
@end

@implementation CalDAVCalendarServerResourceChangeDeletedElement

- (void)setDeletedDetails:(id)details
{
  detailsCopy = details;
  componentType = [detailsCopy componentType];
  [(CalDAVCalendarServerResourceChangeDeletedElement *)self setComponentType:componentType];

  summary = [detailsCopy summary];
  [(CalDAVCalendarServerResourceChangeDeletedElement *)self setSummary:summary];

  displayName = [detailsCopy displayName];
  [(CalDAVCalendarServerResourceChangeDeletedElement *)self setDisplayName:displayName];

  nextInstance = [detailsCopy nextInstance];
  [(CalDAVCalendarServerResourceChangeDeletedElement *)self setNextInstance:nextInstance];

  hadMoreInstances = [detailsCopy hadMoreInstances];

  [(CalDAVCalendarServerResourceChangeDeletedElement *)self setHadMoreInstances:hadMoreInstances];
}

- (id)copyParseRules
{
  v10.receiver = self;
  v10.super_class = CalDAVCalendarServerResourceChangeDeletedElement;
  copyParseRules = [(CalDAVCalendarServerResourceChangeElement *)&v10 copyParseRules];
  v3 = [copyParseRules mutableCopy];
  v4 = objc_alloc(MEMORY[0x277CBEAC0]);
  v5 = *MEMORY[0x277CFDE90];
  v6 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:@"deleted-details" objectClass:objc_opt_class() setterMethod:sel_setDeletedDetails_];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v5, @"deleted-details"];
  v8 = [v4 initWithObjectsAndKeys:{v6, v7, 0}];

  [v3 addEntriesFromDictionary:v8];
  return v3;
}

@end