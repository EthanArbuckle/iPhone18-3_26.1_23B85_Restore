@interface CoreDAVPrincipalSearchPropertyItem
+ (id)copyParseRules;
- (id)description;
@end

@implementation CoreDAVPrincipalSearchPropertyItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v8.receiver = self;
  v8.super_class = CoreDAVPrincipalSearchPropertyItem;
  v4 = [(CoreDAVItem *)&v8 description];
  [v3 appendFormat:@"[%@]", v4];

  prop = [(CoreDAVPrincipalSearchPropertyItem *)self prop];
  [v3 appendFormat:@"\n  Prop: [%@]", prop];

  descriptionItem = [(CoreDAVPrincipalSearchPropertyItem *)self descriptionItem];
  [v3 appendFormat:@"\n  Description: [%@]", descriptionItem];

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
    v7 = [CoreDAVParseRule ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:@"DAV:" elementName:@"prop" objectClass:objc_opt_class() setterMethod:sel_setProp_];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"prop"];
    v9 = [CoreDAVParseRule ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:@"DAV:" elementName:@"description" objectClass:objc_opt_class() setterMethod:sel_setDescriptionItem_];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"description"];
    v5 = [v6 initWithObjectsAndKeys:{v7, v8, v9, v10, 0}];

    v11 = +[CoreDAVItem parseRuleCache];
    v12 = NSStringFromClass(self);
    [v11 setObject:v5 forKey:v12];
  }

  return v5;
}

@end