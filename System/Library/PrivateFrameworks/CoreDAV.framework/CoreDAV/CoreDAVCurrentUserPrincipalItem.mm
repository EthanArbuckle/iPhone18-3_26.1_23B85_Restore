@interface CoreDAVCurrentUserPrincipalItem
+ (id)copyParseRules;
- (id)description;
@end

@implementation CoreDAVCurrentUserPrincipalItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v9.receiver = self;
  v9.super_class = CoreDAVCurrentUserPrincipalItem;
  v4 = [(CoreDAVItem *)&v9 description];
  [v3 appendFormat:@"[%@]", v4];

  href = [(CoreDAVCurrentUserPrincipalItem *)self href];
  payloadAsString = [href payloadAsString];
  [v3 appendFormat:@"\n  HREF: [%@]", payloadAsString];

  unauthenticated = [(CoreDAVCurrentUserPrincipalItem *)self unauthenticated];
  [v3 appendFormat:@"\n  Unauthenticated: [%@]", unauthenticated];

  return v3;
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEAC0]);
    v7 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"href" objectClass:objc_opt_class() setterMethod:sel_setHref_];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"href"];
    v9 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"unauthenticated" objectClass:objc_opt_class() setterMethod:sel_setUnauthenticated_];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"unauthenticated"];
    v5 = [v6 initWithObjectsAndKeys:{v7, v8, v9, v10, 0}];

    v11 = +[CoreDAVItem parseRuleCache];
    v12 = NSStringFromClass(self);
    [v11 setObject:v5 forKey:v12];
  }

  return v5;
}

@end