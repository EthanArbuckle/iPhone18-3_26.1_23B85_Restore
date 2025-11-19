@interface ASResolveRecipientsCertificatesItem
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)description;
- (void)addCertificateString:(id)a3;
@end

@implementation ASResolveRecipientsCertificatesItem

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_41 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_41;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_41 = v2;
    acceptsTopLevelLeaves___haveChecked_41 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_41 == 1)
  {
    v2 = parsingLeafNode___result_41;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_41 = v2;
    parsingLeafNode___haveChecked_41 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_41 == 1)
  {
    v2 = parsingWithSubItems___result_41;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_41 = v2;
    parsingWithSubItems___haveChecked_41 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_41 == 1)
  {
    v2 = frontingBasicTypes___result_41;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_41 = v2;
    frontingBasicTypes___haveChecked_41 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_41 == 1)
  {
    v2 = notifyOfUnknownTokens___result_41;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_41 = v2;
    notifyOfUnknownTokens___haveChecked_41 = 1;
  }

  return v2 & 1;
}

- (void)addCertificateString:(id)a3
{
  v4 = a3;
  v5 = [(ASResolveRecipientsCertificatesItem *)self mCertificates];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(ASResolveRecipientsCertificatesItem *)self setMCertificates:v6];
  }

  v7 = [(ASResolveRecipientsCertificatesItem *)self mCertificates];
  [v7 addObject:v4];
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = MEMORY[0x277CBEAC0];
    v7 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:10 token:21 objectClass:objc_opt_class() setterMethod:sel_setCertCount_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:2581];
    v9 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:10 token:18 objectClass:objc_opt_class() setterMethod:sel_setRecipientCount_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:2578];
    v11 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:10 token:7 objectClass:objc_opt_class() setterMethod:sel_setEASStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:2567];
    v13 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:10 token:13 objectClass:objc_opt_class() setterMethod:sel_addCertificateString_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:2573];
    v5 = [v6 dictionaryWithObjectsAndKeys:{v7, v8, v9, v10, v11, v12, v13, v14, 0}];

    v15 = +[ASItem parseRuleCache];
    v16 = NSStringFromClass(a1);
    [v15 setObject:v5 forKey:v16];
  }

  return v5;
}

- (id)description
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v22.receiver = self;
  v22.super_class = ASResolveRecipientsCertificatesItem;
  v4 = [(ASResolveRecipientsCertificatesItem *)&v22 description];
  v5 = [(ASResolveRecipientsCertificatesItem *)self certCount];
  v6 = [(ASResolveRecipientsCertificatesItem *)self recipientCount];
  v7 = [(ASResolveRecipientsCertificatesItem *)self easStatus];
  v8 = [v3 stringWithFormat:@"%@: certCount %@ recipientCount %@ easStatus %@", v4, v5, v6, v7];

  v9 = [(ASResolveRecipientsCertificatesItem *)self certificates];
  v10 = [v9 count];

  if (v10)
  {
    [v8 appendString:@" certificates "];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [(ASResolveRecipientsCertificatesItem *)self certificates];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v8 appendFormat:@"<cert string length %ld hash %ld> ", objc_msgSend(*(*(&v18 + 1) + 8 * i), "length"), objc_msgSend(*(*(&v18 + 1) + 8 * i), "hash")];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

@end