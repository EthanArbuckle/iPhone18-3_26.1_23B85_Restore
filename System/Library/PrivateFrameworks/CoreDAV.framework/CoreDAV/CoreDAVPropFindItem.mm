@interface CoreDAVPropFindItem
+ (id)copyParseRules;
- (id)description;
@end

@implementation CoreDAVPropFindItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v10.receiver = self;
  v10.super_class = CoreDAVPropFindItem;
  v4 = [(CoreDAVItem *)&v10 description];
  [v3 appendFormat:@"[%@]", v4];

  propName = [(CoreDAVPropFindItem *)self propName];
  [v3 appendFormat:@"\n  Propname: [%@]", propName];

  allProp = [(CoreDAVPropFindItem *)self allProp];
  [v3 appendFormat:@"\n  Allprop: [%@]", allProp];

  include = [(CoreDAVPropFindItem *)self include];
  [v3 appendFormat:@"\n  Include: [%@]", include];

  prop = [(CoreDAVPropFindItem *)self prop];
  [v3 appendFormat:@"\n  Prop: [%@]", prop];

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
    v16 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"propname" objectClass:objc_opt_class() setterMethod:sel_setPropName_];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"propname"];
    v6 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"allprop" objectClass:objc_opt_class() setterMethod:sel_setAllProp_];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"allprop"];
    v8 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"include" objectClass:objc_opt_class() setterMethod:sel_setInclude_];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"include"];
    v10 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"prop" objectClass:objc_opt_class() setterMethod:sel_setProp_];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"prop"];
    v5 = [v17 initWithObjectsAndKeys:{v16, v15, v6, v7, v8, v9, v10, v11, 0}];

    v12 = +[CoreDAVItem parseRuleCache];
    v13 = NSStringFromClass(self);
    [v12 setObject:v5 forKey:v13];
  }

  return v5;
}

@end