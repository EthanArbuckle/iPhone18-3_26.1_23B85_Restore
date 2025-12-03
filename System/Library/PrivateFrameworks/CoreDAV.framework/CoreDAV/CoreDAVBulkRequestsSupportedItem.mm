@interface CoreDAVBulkRequestsSupportedItem
+ (id)copyParseRules;
- (id)description;
@end

@implementation CoreDAVBulkRequestsSupportedItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v8.receiver = self;
  v8.super_class = CoreDAVBulkRequestsSupportedItem;
  v4 = [(CoreDAVItem *)&v8 description];
  [v3 appendFormat:@"[%@]", v4];

  extraChildItems = [(CoreDAVItem *)self extraChildItems];
  lastObject = [extraChildItems lastObject];
  [v3 appendFormat:@"\n  Supported: [%@]", lastObject];

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
    v7 = [CoreDAVParseRule ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:@"http://me.com/_namespace/" elementName:@"supported" objectClass:objc_opt_class() setterMethod:sel_setSupported_];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"http://me.com/_namespace/", @"supported"];
    v5 = [v6 initWithObjectsAndKeys:{v7, v8, 0}];

    v9 = +[CoreDAVItem parseRuleCache];
    v10 = NSStringFromClass(self);
    [v9 setObject:v5 forKey:v10];
  }

  return v5;
}

@end