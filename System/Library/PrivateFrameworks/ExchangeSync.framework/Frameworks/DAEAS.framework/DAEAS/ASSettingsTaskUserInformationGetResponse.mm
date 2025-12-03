@interface ASSettingsTaskUserInformationGetResponse
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)description;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
@end

@implementation ASSettingsTaskUserInformationGetResponse

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_163 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_164;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_164 = v2;
    acceptsTopLevelLeaves___haveChecked_163 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_165 == 1)
  {
    v2 = parsingLeafNode___result_166;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_166 = v2;
    parsingLeafNode___haveChecked_165 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_167 == 1)
  {
    v2 = parsingWithSubItems___result_168;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_168 = v2;
    parsingWithSubItems___haveChecked_167 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_169 == 1)
  {
    v2 = frontingBasicTypes___result_170;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_170 = v2;
    frontingBasicTypes___haveChecked_169 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_171 == 1)
  {
    v2 = notifyOfUnknownTokens___result_172;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_172 = v2;
    notifyOfUnknownTokens___haveChecked_171 = 1;
  }

  return v2 & 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  emailAddresses = [(ASSettingsTaskUserInformationGetResponse *)self emailAddresses];
  primarySMTPAddress = [(ASSettingsTaskUserInformationGetResponse *)self primarySMTPAddress];
  v8 = [v3 stringWithFormat:@"%@ %p: emailAddresses: %@ primary address %@", v5, self, emailAddresses, primarySMTPAddress];

  return v8;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v25 = MEMORY[0x277CBEAC0];
    v6 = [ASParseRule alloc];
    v7 = objc_opt_class();
    v8 = MEMORY[0x277CBEAC0];
    v24 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:18 token:31 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v23 = [MEMORY[0x277CCABB0] numberWithInt:4639];
    v22 = [v8 dictionaryWithObjectsAndKeys:{v24, v23, 0}];
    v9 = [(ASParseRule *)v6 initWithMinimumNumber:0 maximumNumber:1 codePage:18 token:30 objectClass:v7 setterMethod:sel_setEmailAddresses_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v22];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:4638];
    v11 = [ASParseRule alloc];
    v12 = objc_opt_class();
    v13 = MEMORY[0x277CBEAC0];
    v14 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:18 token:37 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:4645];
    v16 = [v13 dictionaryWithObjectsAndKeys:{v14, v15, 0}];
    v17 = [(ASParseRule *)v11 initWithMinimumNumber:0 maximumNumber:1 codePage:18 token:36 objectClass:v12 setterMethod:sel_setAccounts_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v16];
    v18 = [MEMORY[0x277CCABB0] numberWithInt:4644];
    v5 = [v25 dictionaryWithObjectsAndKeys:{v9, v10, v17, v18, 0}];

    v19 = +[ASItem parseRuleCache];
    v20 = NSStringFromClass(self);
    [v19 setObject:v5 forKey:v20];
  }

  return v5;
}

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  v56 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  rootCopy = root;
  parentCopy = parent;
  dictCopy = dict;
  callbackDictCopy = callbackDict;
  accountCopy = account;
  v52.receiver = self;
  v52.super_class = ASSettingsTaskUserInformationGetResponse;
  [(ASItem *)&v52 parseASParseContext:contextCopy root:rootCopy parent:parentCopy callbackDict:dictCopy streamCallbackDict:callbackDictCopy account:accountCopy];
  parsingState = self->super._parsingState;
  if (parsingState < 2)
  {
    v21 = 0;
  }

  else if (parsingState == 4 || parsingState == 3)
  {
    v21 = 0;
    self->super._parsingState = parsingState;
  }

  else
  {
    v46 = rootCopy;
    v47 = contextCopy;
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v22, v23))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_24A0AC000, v22, v23, "%@ Parsed its context.", buf, 0xCu);
    }

    v42 = dictCopy;
    v44 = parentCopy;

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    accounts = [(ASSettingsTaskUserInformationGetResponse *)self accounts];
    v25 = [accounts countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v25)
    {
      v26 = v25;
      v21 = 0;
      v27 = *v49;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v49 != v27)
          {
            objc_enumerationMutation(accounts);
          }

          v29 = *(*(&v48 + 1) + 8 * i);
          if (v21)
          {
            accountId = [*(*(&v48 + 1) + 8 * i) accountId];

            if (accountId)
            {
              continue;
            }
          }

          v31 = v29;

          v21 = v31;
        }

        v26 = [accounts countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v26);
    }

    else
    {
      v21 = 0;
    }

    emailAddressList = [v21 emailAddressList];
    emailAddresses = [emailAddressList emailAddresses];
    v34 = [emailAddresses count];

    if (v34)
    {
      emailAddressList2 = [v21 emailAddressList];
      emailAddresses2 = [emailAddressList2 emailAddresses];
      [(ASSettingsTaskUserInformationGetResponse *)self setEmailAddresses:emailAddresses2];
    }

    emailAddressList3 = [v21 emailAddressList];
    primarySMTPAddress = [emailAddressList3 primarySMTPAddress];

    parentCopy = v45;
    rootCopy = v46;
    dictCopy = v43;
    if (primarySMTPAddress)
    {
      emailAddressList4 = [v21 emailAddressList];
      primarySMTPAddress2 = [emailAddressList4 primarySMTPAddress];
      [(ASSettingsTaskUserInformationGetResponse *)self setPrimarySMTPAddress:primarySMTPAddress2];
    }

    contextCopy = v47;
  }

  v41 = *MEMORY[0x277D85DE8];
}

@end