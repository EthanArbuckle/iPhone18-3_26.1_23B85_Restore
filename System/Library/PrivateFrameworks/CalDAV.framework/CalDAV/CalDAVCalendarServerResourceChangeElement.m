@interface CalDAVCalendarServerResourceChangeElement
- (CalDAVCalendarServerResourceChangeElement)init;
- (NSURL)fullHrefURL;
- (id)copyParseRules;
@end

@implementation CalDAVCalendarServerResourceChangeElement

- (CalDAVCalendarServerResourceChangeElement)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CalDAVCalendarServerResourceChangeElement.m" lineNumber:19 description:{@"Don't initialize CalDAVCalendarServerResourceChange directly. Use a subclass, dude."}];

  return 0;
}

- (NSURL)fullHrefURL
{
  v5.receiver = self;
  v5.super_class = CalDAVCalendarServerResourceChangeElement;
  v2 = [(CoreDAVItemWithHrefChildItem *)&v5 href];
  v3 = [v2 payloadAsFullURL];

  return v3;
}

- (id)copyParseRules
{
  v2 = objc_alloc(MEMORY[0x277CBEB38]);
  v3 = *MEMORY[0x277CFDEF8];
  v4 = *MEMORY[0x277CFDF38];
  v5 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:*MEMORY[0x277CFDEF8] elementName:*MEMORY[0x277CFDF38] objectClass:objc_opt_class() setterMethod:sel_setHref_];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v3, v4];
  v7 = *MEMORY[0x277CFDE90];
  v8 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDE90] elementName:@"changed-by" objectClass:objc_opt_class() setterMethod:sel_setChangedBy_];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v7, @"changed-by"];
  v10 = [v2 initWithObjectsAndKeys:{v5, v6, v8, v9, 0}];

  return v10;
}

@end