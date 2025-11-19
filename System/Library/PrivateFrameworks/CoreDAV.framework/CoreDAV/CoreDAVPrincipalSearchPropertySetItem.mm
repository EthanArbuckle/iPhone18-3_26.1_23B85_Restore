@interface CoreDAVPrincipalSearchPropertySetItem
+ (id)copyParseRules;
- (id)description;
- (void)addPrincipalSearchProperty:(id)a3;
@end

@implementation CoreDAVPrincipalSearchPropertySetItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7.receiver = self;
  v7.super_class = CoreDAVPrincipalSearchPropertySetItem;
  v4 = [(CoreDAVItem *)&v7 description];
  [v3 appendFormat:@"[%@]", v4];

  v5 = [(CoreDAVPrincipalSearchPropertySetItem *)self principalSearchProperties];
  [v3 appendFormat:@"\n  Number of principal search properties: [%lu]", objc_msgSend(v5, "count")];

  return v3;
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEAC0]);
    v7 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:@"DAV:" elementName:@"principal-search-property" objectClass:objc_opt_class() setterMethod:sel_addPrincipalSearchProperty_];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"principal-search-property"];
    v5 = [v6 initWithObjectsAndKeys:{v7, v8, 0}];

    v9 = +[CoreDAVItem parseRuleCache];
    v10 = NSStringFromClass(a1);
    [v9 setObject:v5 forKey:v10];
  }

  return v5;
}

- (void)addPrincipalSearchProperty:(id)a3
{
  v4 = a3;
  v5 = [(CoreDAVPrincipalSearchPropertySetItem *)self principalSearchProperties];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(CoreDAVPrincipalSearchPropertySetItem *)self setPrincipalSearchProperties:v6];
  }

  v7 = [(CoreDAVPrincipalSearchPropertySetItem *)self principalSearchProperties];
  [v7 addObject:v4];
}

@end