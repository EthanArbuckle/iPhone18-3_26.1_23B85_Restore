@interface CoreDAVInvertItem
+ (id)copyParseRules;
- (id)description;
- (void)write:(id)a3;
@end

@implementation CoreDAVInvertItem

- (void)write:(id)a3
{
  v4 = a3;
  v5 = [(CoreDAVItem *)self name];
  v6 = [(CoreDAVItem *)self nameSpace];
  [v4 startElement:v5 inNamespace:v6 withAttributeNamesAndValues:0];

  v7 = [(CoreDAVInvertItem *)self principal];
  [v7 write:v4];

  v9 = [(CoreDAVItem *)self name];
  v8 = [(CoreDAVItem *)self nameSpace];
  [v4 endElement:v9 inNamespace:v8];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7.receiver = self;
  v7.super_class = CoreDAVInvertItem;
  v4 = [(CoreDAVItem *)&v7 description];
  [v3 appendFormat:@"[%@]", v4];

  v5 = [(CoreDAVInvertItem *)self principal];
  [v3 appendFormat:@"\n  Principal: [%@]", v5];

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
    v7 = [CoreDAVParseRule ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:@"DAV:" elementName:@"principal" objectClass:objc_opt_class() setterMethod:sel_setPrincipal_];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"principal"];
    v5 = [v6 initWithObjectsAndKeys:{v7, v8, 0}];

    v9 = +[CoreDAVItem parseRuleCache];
    v10 = NSStringFromClass(a1);
    [v9 setObject:v5 forKey:v10];
  }

  return v5;
}

@end