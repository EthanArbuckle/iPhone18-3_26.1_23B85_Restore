@interface CoreDAVMatchResultsItem
+ (id)copyParseRules;
- (id)description;
@end

@implementation CoreDAVMatchResultsItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v14.receiver = self;
  v14.super_class = CoreDAVMatchResultsItem;
  v4 = [(CoreDAVItem *)&v14 description];
  [v3 appendFormat:@"[%@]", v4];

  rank = [(CoreDAVMatchResultsItem *)self rank];
  payloadAsString = [rank payloadAsString];
  [v3 appendFormat:@"\n  Rank: [%@]", payloadAsString];

  language = [(CoreDAVMatchResultsItem *)self language];
  payloadAsString2 = [language payloadAsString];
  [v3 appendFormat:@"\n  Language: [%@]", payloadAsString2];

  region = [(CoreDAVMatchResultsItem *)self region];
  payloadAsString3 = [region payloadAsString];
  [v3 appendFormat:@"\n  Region: [%@]", payloadAsString3];

  calendarDescription = [(CoreDAVMatchResultsItem *)self calendarDescription];
  payloadAsString4 = [calendarDescription payloadAsString];
  [v3 appendFormat:@"\n  Description: [%@]", payloadAsString4];

  return v3;
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v17 = objc_alloc(MEMORY[0x277CBEAC0]);
    v16 = [CoreDAVParseRule ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:@"http://calendarserver.org/ns/" elementName:@"rank" objectClass:objc_opt_class() setterMethod:sel_setRank_];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://calendarserver.org/ns/", @"rank"];
    v6 = [CoreDAVParseRule ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:@"http://calendarserver.org/ns/" elementName:@"language" objectClass:objc_opt_class() setterMethod:sel_setLanguage_];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://calendarserver.org/ns/", @"language"];
    v8 = [CoreDAVParseRule ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:@"http://calendarserver.org/ns/" elementName:@"region" objectClass:objc_opt_class() setterMethod:sel_setRegion_];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://calendarserver.org/ns/", @"region"];
    v10 = [CoreDAVParseRule ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:@"http://calendarserver.org/ns/" elementName:@"description" objectClass:objc_opt_class() setterMethod:sel_setCalendarDescription_];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://calendarserver.org/ns/", @"description"];
    v5 = [v17 initWithObjectsAndKeys:{v16, v15, v6, v7, v8, v9, v10, v11, 0}];

    v12 = +[CoreDAVItem parseRuleCache];
    v13 = NSStringFromClass(self);
    [v12 setObject:v5 forKey:v13];
  }

  return v5;
}

@end