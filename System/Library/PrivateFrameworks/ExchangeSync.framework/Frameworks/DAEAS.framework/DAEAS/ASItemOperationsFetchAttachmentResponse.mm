@interface ASItemOperationsFetchAttachmentResponse
+ (id)asParseRules;
@end

@implementation ASItemOperationsFetchAttachmentResponse

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v19 = MEMORY[0x277CBEAC0];
    v6 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:20 token:13 objectClass:objc_opt_class() setterMethod:sel_setStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:5133];
    v8 = [ASParseRule alloc];
    v9 = objc_opt_class();
    v10 = MEMORY[0x277CBEAC0];
    v11 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:20 token:6 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:5126];
    v13 = [v10 dictionaryWithObjectsAndKeys:{v11, v12, 0}];
    v14 = [(ASParseRule *)v8 initWithMinimumNumber:0 maximumNumber:1 codePage:20 token:14 objectClass:v9 setterMethod:sel_setFetchResponses_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v13];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:5134];
    v5 = [v19 dictionaryWithObjectsAndKeys:{v6, v7, v14, v15, 0}];

    v16 = +[ASItem parseRuleCache];
    v17 = NSStringFromClass(self);
    [v16 setObject:v5 forKey:v17];
  }

  return v5;
}

@end