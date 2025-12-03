@interface CoreDAVInvertItem
+ (id)copyParseRules;
- (id)description;
- (void)write:(id)write;
@end

@implementation CoreDAVInvertItem

- (void)write:(id)write
{
  writeCopy = write;
  name = [(CoreDAVItem *)self name];
  nameSpace = [(CoreDAVItem *)self nameSpace];
  [writeCopy startElement:name inNamespace:nameSpace withAttributeNamesAndValues:0];

  principal = [(CoreDAVInvertItem *)self principal];
  [principal write:writeCopy];

  name2 = [(CoreDAVItem *)self name];
  nameSpace2 = [(CoreDAVItem *)self nameSpace];
  [writeCopy endElement:name2 inNamespace:nameSpace2];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7.receiver = self;
  v7.super_class = CoreDAVInvertItem;
  v4 = [(CoreDAVItem *)&v7 description];
  [v3 appendFormat:@"[%@]", v4];

  principal = [(CoreDAVInvertItem *)self principal];
  [v3 appendFormat:@"\n  Principal: [%@]", principal];

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
    v7 = [CoreDAVParseRule ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:@"DAV:" elementName:@"principal" objectClass:objc_opt_class() setterMethod:sel_setPrincipal_];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"principal"];
    v5 = [v6 initWithObjectsAndKeys:{v7, v8, 0}];

    v9 = +[CoreDAVItem parseRuleCache];
    v10 = NSStringFromClass(self);
    [v9 setObject:v5 forKey:v10];
  }

  return v5;
}

@end