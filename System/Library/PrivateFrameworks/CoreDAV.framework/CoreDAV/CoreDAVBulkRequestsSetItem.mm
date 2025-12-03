@interface CoreDAVBulkRequestsSetItem
+ (id)copyParseRules;
- (NSDictionary)dictRepresentation;
- (id)description;
@end

@implementation CoreDAVBulkRequestsSetItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v8.receiver = self;
  v8.super_class = CoreDAVBulkRequestsSetItem;
  v4 = [(CoreDAVItem *)&v8 description];
  [v3 appendFormat:@"[%@]", v4];

  crudItem = [(CoreDAVBulkRequestsSetItem *)self crudItem];
  simpleItem = [(CoreDAVBulkRequestsSetItem *)self simpleItem];
  [v3 appendFormat:@"\n  CRUD %@\nSimple %@", crudItem, simpleItem];

  return v3;
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v13 = objc_alloc(MEMORY[0x277CBEAC0]);
    v6 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"http://me.com/_namespace/" elementName:@"crud" objectClass:objc_opt_class() setterMethod:sel_setCrudItem_];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://me.com/_namespace/", @"crud"];
    v8 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"http://me.com/_namespace/" elementName:@"simple" objectClass:objc_opt_class() setterMethod:sel_setSimpleItem_];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://me.com/_namespace/", @"simple"];
    v5 = [v13 initWithObjectsAndKeys:{v6, v7, v8, v9, 0}];

    v10 = +[CoreDAVItem parseRuleCache];
    v11 = NSStringFromClass(self);
    [v10 setObject:v5 forKey:v11];
  }

  return v5;
}

- (NSDictionary)dictRepresentation
{
  if (self->_crudItem || self->_simpleItem)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dictRepresentation = [(CoreDAVBulkRequestsItem *)self->_crudItem dictRepresentation];
    if (dictRepresentation)
    {
      [v3 setObject:dictRepresentation forKey:@"crud"];
    }

    dictRepresentation2 = [(CoreDAVBulkRequestsItem *)self->_simpleItem dictRepresentation];
    if (dictRepresentation2)
    {
      [v3 setObject:dictRepresentation2 forKey:@"simple"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end