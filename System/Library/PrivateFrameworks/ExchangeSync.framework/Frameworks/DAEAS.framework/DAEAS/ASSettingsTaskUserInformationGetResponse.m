@interface ASSettingsTaskUserInformationGetResponse
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)description;
- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8;
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
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
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
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
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
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
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
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
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
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
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
  v6 = [(ASSettingsTaskUserInformationGetResponse *)self emailAddresses];
  v7 = [(ASSettingsTaskUserInformationGetResponse *)self primarySMTPAddress];
  v8 = [v3 stringWithFormat:@"%@ %p: emailAddresses: %@ primary address %@", v5, self, v6, v7];

  return v8;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(a1);
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
    v20 = NSStringFromClass(a1);
    [v19 setObject:v5 forKey:v20];
  }

  return v5;
}

- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8
{
  v56 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v52.receiver = self;
  v52.super_class = ASSettingsTaskUserInformationGetResponse;
  [(ASItem *)&v52 parseASParseContext:v14 root:v15 parent:v16 callbackDict:v17 streamCallbackDict:v18 account:v19];
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
    v46 = v15;
    v47 = v14;
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v22, v23))
    {
      *buf = 138412290;
      v55 = self;
      _os_log_impl(&dword_24A0AC000, v22, v23, "%@ Parsed its context.", buf, 0xCu);
    }

    v42 = v17;
    v44 = v16;

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v24 = [(ASSettingsTaskUserInformationGetResponse *)self accounts];
    v25 = [v24 countByEnumeratingWithState:&v48 objects:v53 count:16];
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
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v48 + 1) + 8 * i);
          if (v21)
          {
            v30 = [*(*(&v48 + 1) + 8 * i) accountId];

            if (v30)
            {
              continue;
            }
          }

          v31 = v29;

          v21 = v31;
        }

        v26 = [v24 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v26);
    }

    else
    {
      v21 = 0;
    }

    v32 = [v21 emailAddressList];
    v33 = [v32 emailAddresses];
    v34 = [v33 count];

    if (v34)
    {
      v35 = [v21 emailAddressList];
      v36 = [v35 emailAddresses];
      [(ASSettingsTaskUserInformationGetResponse *)self setEmailAddresses:v36];
    }

    v37 = [v21 emailAddressList];
    v38 = [v37 primarySMTPAddress];

    v16 = v45;
    v15 = v46;
    v17 = v43;
    if (v38)
    {
      v39 = [v21 emailAddressList];
      v40 = [v39 primarySMTPAddress];
      [(ASSettingsTaskUserInformationGetResponse *)self setPrimarySMTPAddress:v40];
    }

    v14 = v47;
  }

  v41 = *MEMORY[0x277D85DE8];
}

@end