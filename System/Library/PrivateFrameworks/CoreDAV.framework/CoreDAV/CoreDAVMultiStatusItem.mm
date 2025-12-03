@interface CoreDAVMultiStatusItem
+ (id)copyParseRules;
- (NSSet)responses;
- (id)description;
- (void)addResponse:(id)response;
@end

@implementation CoreDAVMultiStatusItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v8.receiver = self;
  v8.super_class = CoreDAVMultiStatusItem;
  v4 = [(CoreDAVItem *)&v8 description];
  [v3 appendFormat:@"[%@]", v4];

  orderedResponses = [(CoreDAVMultiStatusItem *)self orderedResponses];
  [v3 appendFormat:@"\n  Number of responses: [%lu]", objc_msgSend(orderedResponses, "count")];

  responseDescription = [(CoreDAVMultiStatusItem *)self responseDescription];
  [v3 appendFormat:@"\n  Response description: [%@]", responseDescription];

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
    v7 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:@"DAV:" elementName:@"response" objectClass:objc_opt_class() setterMethod:sel_addResponse_];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"response"];
    v9 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"responsedescription" objectClass:objc_opt_class() setterMethod:sel_setResponseDescription_];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"responsedescription"];
    v5 = [v6 initWithObjectsAndKeys:{v7, v8, v9, v10, 0}];

    v11 = +[CoreDAVItem parseRuleCache];
    v12 = NSStringFromClass(self);
    [v11 setObject:v5 forKey:v12];
  }

  return v5;
}

- (void)addResponse:(id)response
{
  responseCopy = response;
  orderedResponses = [(CoreDAVMultiStatusItem *)self orderedResponses];

  if (!orderedResponses)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(CoreDAVMultiStatusItem *)self setOrderedResponses:v6];
  }

  orderedResponses2 = [(CoreDAVMultiStatusItem *)self orderedResponses];
  [orderedResponses2 addObject:responseCopy];
}

- (NSSet)responses
{
  v2 = MEMORY[0x277CBEB98];
  orderedResponses = [(CoreDAVMultiStatusItem *)self orderedResponses];
  v4 = [v2 setWithArray:orderedResponses];

  return v4;
}

@end