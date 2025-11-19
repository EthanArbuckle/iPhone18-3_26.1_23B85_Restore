@interface CoreDAVPropStatItem
+ (id)copyParseRules;
- (id)description;
- (void)setErrorItem:(id)a3;
@end

@implementation CoreDAVPropStatItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v10.receiver = self;
  v10.super_class = CoreDAVPropStatItem;
  v4 = [(CoreDAVItem *)&v10 description];
  [v3 appendFormat:@"[%@]", v4];

  v5 = [(CoreDAVPropStatItem *)self status];
  [v3 appendFormat:@"\n  Status: [%@]", v5];

  v6 = [(CoreDAVPropStatItem *)self prop];
  [v3 appendFormat:@"\n  Prop: [%@]", v6];

  v7 = [(CoreDAVPropStatItem *)self errorItem];
  [v3 appendFormat:@"\n  Error: [%@]", v7];

  v8 = [(CoreDAVPropStatItem *)self responseDescription];
  [v3 appendFormat:@"\n  Response description: [%@]", v8];

  return v3;
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v17 = objc_alloc(MEMORY[0x277CBEAC0]);
    v16 = [CoreDAVParseRule ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:@"DAV:" elementName:@"status" objectClass:objc_opt_class() setterMethod:sel_setStatus_];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"status"];
    v6 = [CoreDAVParseRule ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:@"DAV:" elementName:@"prop" objectClass:objc_opt_class() setterMethod:sel_setProp_];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"prop"];
    v8 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"error" objectClass:objc_opt_class() setterMethod:sel_setErrorItem_];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"error"];
    v10 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"responsedescription" objectClass:objc_opt_class() setterMethod:sel_setResponseDescription_];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"responsedescription"];
    v5 = [v17 initWithObjectsAndKeys:{v16, v15, v6, v7, v8, v9, v10, v11, 0}];

    v12 = +[CoreDAVItem parseRuleCache];
    v13 = NSStringFromClass(a1);
    [v12 setObject:v5 forKey:v13];
  }

  return v5;
}

- (void)setErrorItem:(id)a3
{
  v5 = a3;
  if (self->_errorItem != v5)
  {
    objc_storeStrong(&self->_errorItem, a3);
    if (self->_status)
    {
      [(CoreDAVErrorItem *)self->_errorItem setStatus:?];
    }
  }
}

@end