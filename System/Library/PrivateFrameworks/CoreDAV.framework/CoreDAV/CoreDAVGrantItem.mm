@interface CoreDAVGrantItem
+ (id)copyParseRules;
- (id)description;
- (void)addPrivilege:(id)privilege;
- (void)write:(id)write;
@end

@implementation CoreDAVGrantItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7.receiver = self;
  v7.super_class = CoreDAVGrantItem;
  v4 = [(CoreDAVItem *)&v7 description];
  [v3 appendFormat:@"[%@]", v4];

  privileges = [(CoreDAVGrantItem *)self privileges];
  [v3 appendFormat:@"\n  Number of privileges: [%lu]", objc_msgSend(privileges, "count")];

  return v3;
}

- (void)write:(id)write
{
  v20 = *MEMORY[0x277D85DE8];
  writeCopy = write;
  name = [(CoreDAVItem *)self name];
  nameSpace = [(CoreDAVItem *)self nameSpace];
  [writeCopy startElement:name inNamespace:nameSpace withAttributeNamesAndValues:0];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  privileges = [(CoreDAVGrantItem *)self privileges];
  v8 = [privileges countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(privileges);
        }

        [*(*(&v15 + 1) + 8 * v11++) write:writeCopy];
      }

      while (v9 != v11);
      v9 = [privileges countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  name2 = [(CoreDAVItem *)self name];
  nameSpace2 = [(CoreDAVItem *)self nameSpace];
  [writeCopy endElement:name2 inNamespace:nameSpace2];

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEAC0]);
    v7 = [CoreDAVParseRule ruleWithMinimumNumber:1 maximumNumber:0x7FFFFFFFLL nameSpace:@"DAV:" elementName:@"privilege" objectClass:objc_opt_class() setterMethod:sel_addPrivilege_];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"privilege"];
    v5 = [v6 initWithObjectsAndKeys:{v7, v8, 0}];

    v9 = +[CoreDAVItem parseRuleCache];
    v10 = NSStringFromClass(self);
    [v9 setObject:v5 forKey:v10];
  }

  return v5;
}

- (void)addPrivilege:(id)privilege
{
  privilegeCopy = privilege;
  privileges = [(CoreDAVGrantItem *)self privileges];

  if (!privileges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(CoreDAVGrantItem *)self setPrivileges:v6];
  }

  privileges2 = [(CoreDAVGrantItem *)self privileges];
  [privileges2 addObject:privilegeCopy];
}

@end