@interface ASItemOperationsResponse
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)description;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
- (void)setFetchResponses:(id)responses;
- (void)setStatus:(id)status;
@end

@implementation ASItemOperationsResponse

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_12 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_12;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_12 = v2;
    acceptsTopLevelLeaves___haveChecked_12 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_12 == 1)
  {
    v2 = parsingLeafNode___result_12;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_12 = v2;
    parsingLeafNode___haveChecked_12 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_12 == 1)
  {
    v2 = parsingWithSubItems___result_12;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_12 = v2;
    parsingWithSubItems___haveChecked_12 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_12 == 1)
  {
    v2 = frontingBasicTypes___result_12;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_12 = v2;
    frontingBasicTypes___haveChecked_12 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_12 == 1)
  {
    v2 = notifyOfUnknownTokens___result_12;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_12 = v2;
    notifyOfUnknownTokens___haveChecked_12 = 1;
  }

  return v2 & 1;
}

- (void)setFetchResponses:(id)responses
{
  responsesCopy = responses;
  if (self->_fetchResponses != responsesCopy)
  {
    v6 = responsesCopy;
    objc_storeStrong(&self->_fetchResponses, responses);
    responsesCopy = v6;
  }
}

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

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  v16.receiver = self;
  v16.super_class = ASItemOperationsResponse;
  [(ASItem *)&v16 parseASParseContext:context root:root parent:parent callbackDict:dict streamCallbackDict:callbackDict account:account];
  parsingState = self->super._parsingState;
  if (parsingState >= 2)
  {
    if (parsingState == 4 || parsingState == 3)
    {
      self->super._parsingState = parsingState;
    }

    else
    {
      status = [(ASItemOperationsResponse *)self status];
      intValue = [status intValue];

      if (intValue == 1)
      {
        fetchResponses = [(ASItemOperationsResponse *)self fetchResponses];

        if (!fetchResponses)
        {
          v13 = DALoggingwithCategory();
          v14 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v13, v14))
          {
            *v15 = 0;
            _os_log_impl(&dword_24A0AC000, v13, v14, "Successful item operation, but no fetch responses.  Bail time", v15, 2u);
          }

          [(ASItemOperationsResponse *)self setStatus:&unk_285D57B40];
        }
      }
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  status = self->_status;
  v7 = [v3 stringWithFormat:@"<%@: Status: %@ Fetch Responses: %@>", v5, status, self->_fetchResponses];

  return v7;
}

- (void)setStatus:(id)status
{
  statusCopy = status;
  if (self->_status != statusCopy)
  {
    v6 = statusCopy;
    objc_storeStrong(&self->_status, status);
    statusCopy = v6;
  }
}

@end