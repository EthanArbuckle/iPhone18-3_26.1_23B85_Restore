@interface ASResolveRecipientsSingleResponseItem
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)description;
- (void)addRecipient:(id)recipient;
@end

@implementation ASResolveRecipientsSingleResponseItem

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_152 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_153;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_153 = v2;
    acceptsTopLevelLeaves___haveChecked_152 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_154 == 1)
  {
    v2 = parsingLeafNode___result_155;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_155 = v2;
    parsingLeafNode___haveChecked_154 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_156 == 1)
  {
    v2 = parsingWithSubItems___result_157;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_157 = v2;
    parsingWithSubItems___haveChecked_156 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_158 == 1)
  {
    v2 = frontingBasicTypes___result_159;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_159 = v2;
    frontingBasicTypes___haveChecked_158 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_160 == 1)
  {
    v2 = notifyOfUnknownTokens___result_161;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_161 = v2;
    notifyOfUnknownTokens___haveChecked_160 = 1;
  }

  return v2 & 1;
}

- (void)addRecipient:(id)recipient
{
  recipientCopy = recipient;
  mRecipients = [(ASResolveRecipientsSingleResponseItem *)self mRecipients];

  if (!mRecipients)
  {
    v6 = objc_opt_new();
    [(ASResolveRecipientsSingleResponseItem *)self setMRecipients:v6];
  }

  mRecipients2 = [(ASResolveRecipientsSingleResponseItem *)self mRecipients];
  [mRecipients2 addObject:recipientCopy];
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v19 = MEMORY[0x277CBEAC0];
    v18 = [[ASParseRule alloc] initWithMinimumNumber:1 maximumNumber:1 codePage:10 token:16 objectClass:objc_opt_class() setterMethod:sel_setEmailAddress_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:2576];
    v16 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:10 token:7 objectClass:objc_opt_class() setterMethod:sel_setEASStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:2567];
    v14 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:10 token:9 objectClass:objc_opt_class() setterMethod:sel_addRecipient_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:2569];
    v7 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:10 token:18 objectClass:objc_opt_class() setterMethod:sel_ignoreThisContent_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:2578];
    v9 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:10 token:26 objectClass:objc_opt_class() setterMethod:sel_ignoreThisContent_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:2586];
    v5 = [v19 dictionaryWithObjectsAndKeys:{v18, v17, v16, v15, v14, v6, v7, v8, v9, v10, 0}];

    v11 = +[ASItem parseRuleCache];
    v12 = NSStringFromClass(self);
    [v11 setObject:v5 forKey:v12];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = ASResolveRecipientsSingleResponseItem;
  v4 = [(ASResolveRecipientsSingleResponseItem *)&v10 description];
  emailAddress = [(ASResolveRecipientsSingleResponseItem *)self emailAddress];
  easStatus = [(ASResolveRecipientsSingleResponseItem *)self easStatus];
  recipients = [(ASResolveRecipientsSingleResponseItem *)self recipients];
  v8 = [v3 stringWithFormat:@"%@: emailAddress %@ easStatus %@ recipients %@", v4, emailAddress, easStatus, recipients];

  return v8;
}

@end