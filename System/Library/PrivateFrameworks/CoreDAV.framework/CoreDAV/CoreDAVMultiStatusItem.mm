@interface CoreDAVMultiStatusItem
+ (id)copyParseRules;
- (NSSet)responses;
- (id)description;
- (void)addResponse:(id)a3;
@end

@implementation CoreDAVMultiStatusItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v8.receiver = self;
  v8.super_class = CoreDAVMultiStatusItem;
  v4 = [(CoreDAVItem *)&v8 description];
  [v3 appendFormat:@"[%@]", v4];

  v5 = [(CoreDAVMultiStatusItem *)self orderedResponses];
  [v3 appendFormat:@"\n  Number of responses: [%lu]", objc_msgSend(v5, "count")];

  v6 = [(CoreDAVMultiStatusItem *)self responseDescription];
  [v3 appendFormat:@"\n  Response description: [%@]", v6];

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
    v7 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:@"DAV:" elementName:@"response" objectClass:objc_opt_class() setterMethod:sel_addResponse_];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"response"];
    v9 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"responsedescription" objectClass:objc_opt_class() setterMethod:sel_setResponseDescription_];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"responsedescription"];
    v5 = [v6 initWithObjectsAndKeys:{v7, v8, v9, v10, 0}];

    v11 = +[CoreDAVItem parseRuleCache];
    v12 = NSStringFromClass(a1);
    [v11 setObject:v5 forKey:v12];
  }

  return v5;
}

- (void)addResponse:(id)a3
{
  v4 = a3;
  v5 = [(CoreDAVMultiStatusItem *)self orderedResponses];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(CoreDAVMultiStatusItem *)self setOrderedResponses:v6];
  }

  v7 = [(CoreDAVMultiStatusItem *)self orderedResponses];
  [v7 addObject:v4];
}

- (NSSet)responses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(CoreDAVMultiStatusItem *)self orderedResponses];
  v4 = [v2 setWithArray:v3];

  return v4;
}

@end