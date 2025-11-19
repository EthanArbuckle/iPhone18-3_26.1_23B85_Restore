@interface CoreDAVICloudQuotaItem
+ (id)copyParseRules;
- (id)description;
@end

@implementation CoreDAVICloudQuotaItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v12.receiver = self;
  v12.super_class = CoreDAVICloudQuotaItem;
  v4 = [(CoreDAVItem *)&v12 description];
  [v3 appendFormat:@"[%@]", v4];

  v5 = [(CoreDAVICloudQuotaItem *)self resourceBytes];
  v6 = [v5 payloadAsString];
  [v3 appendFormat:@"\n  ResourceBytes: [%@]", v6];

  v7 = [(CoreDAVICloudQuotaItem *)self resourceCount];
  v8 = [v7 payloadAsString];
  [v3 appendFormat:@"\n  ResourceCount: [%@]", v8];

  v9 = [(CoreDAVICloudQuotaItem *)self otherBytes];
  v10 = [v9 payloadAsString];
  [v3 appendFormat:@"\n  OtherBytes: [%@]", v10];

  return v3;
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v15 = objc_alloc(MEMORY[0x277CBEAC0]);
    v6 = [CoreDAVParseRule ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:@"urn:mobileme:davservices" elementName:@"resource-bytes" objectClass:objc_opt_class() setterMethod:sel_setResourceBytes_];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"urn:mobileme:davservices", @"resource-bytes"];
    v8 = [CoreDAVParseRule ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:@"urn:mobileme:davservices" elementName:@"resource-count" objectClass:objc_opt_class() setterMethod:sel_setResourceCount_];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"urn:mobileme:davservices", @"resource-count"];
    v10 = [CoreDAVParseRule ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:@"urn:mobileme:davservices" elementName:@"other-bytes" objectClass:objc_opt_class() setterMethod:sel_setOtherBytes_];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"urn:mobileme:davservices", @"other-bytes"];
    v5 = [v15 initWithObjectsAndKeys:{v6, v7, v8, v9, v10, v11, 0}];

    v12 = +[CoreDAVItem parseRuleCache];
    v13 = NSStringFromClass(a1);
    [v12 setObject:v5 forKey:v13];
  }

  return v5;
}

@end