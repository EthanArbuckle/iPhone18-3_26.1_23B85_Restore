@interface ASChangedFolderStore
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)description;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
@end

@implementation ASChangedFolderStore

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_22 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_22;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_22 = v2;
    acceptsTopLevelLeaves___haveChecked_22 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_22 == 1)
  {
    v2 = parsingLeafNode___result_22;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_22 = v2;
    parsingLeafNode___haveChecked_22 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_22 == 1)
  {
    v2 = parsingWithSubItems___result_22;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_22 = v2;
    parsingWithSubItems___haveChecked_22 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_22 == 1)
  {
    v2 = frontingBasicTypes___result_22;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_22 = v2;
    frontingBasicTypes___haveChecked_22 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_22 == 1)
  {
    v2 = notifyOfUnknownTokens___result_22;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_22 = v2;
    notifyOfUnknownTokens___haveChecked_22 = 1;
  }

  return v2 & 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASChangedFolderStore;
  v4 = [(ASChangedFolderStore *)&v8 description];
  updatedFolders = [(ASChangedFolderStore *)self updatedFolders];
  v6 = [v3 stringWithFormat:@"%@: Updated Folders %@", v4, updatedFolders];

  return v6;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    selfCopy = self;
    v27 = MEMORY[0x277CBEAC0];
    v26 = [ASParseRule alloc];
    v25 = objc_opt_class();
    v18 = MEMORY[0x277CBEAC0];
    v24 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:7 token:15 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v23 = [MEMORY[0x277CCABB0] numberWithInt:1807];
    v22 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:7 token:17 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v21 = [MEMORY[0x277CCABB0] numberWithInt:1809];
    v20 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:7 token:16 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v19 = [MEMORY[0x277CCABB0] numberWithInt:1808];
    v6 = [[ASParseRule alloc] initWithMinimumNumber:1 maximumNumber:1 codePage:7 token:23 objectClass:objc_opt_class() setterMethod:sel_ignoreThisContent_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:1815];
    v8 = [v18 dictionaryWithObjectsAndKeys:{v24, v23, v22, v21, v20, v19, v6, v7, 0}];
    v9 = [(ASParseRule *)v26 initWithMinimumNumber:0 maximumNumber:1 codePage:7 token:14 objectClass:v25 setterMethod:sel_setUpdatedFolders_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v8];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:1806];
    v11 = [[ASParseRule alloc] initWithMinimumNumber:1 maximumNumber:1 codePage:7 token:12 objectClass:objc_opt_class() setterMethod:sel_setStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:1804];
    v13 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:7 token:18 objectClass:objc_opt_class() setterMethod:sel_setSyncKey_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:1810];
    v5 = [v27 dictionaryWithObjectsAndKeys:{v9, v10, v11, v12, v13, v14, 0}];

    v15 = +[ASItem parseRuleCache];
    v16 = NSStringFromClass(selfCopy);
    [v15 setObject:v5 forKey:v16];
  }

  return v5;
}

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  v22 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = ASChangedFolderStore;
  [(ASItem *)&v17 parseASParseContext:context root:root parent:parent callbackDict:dict streamCallbackDict:callbackDict account:account];
  parsingState = self->super._parsingState;
  if (parsingState >= 2)
  {
    if (parsingState == 4 || parsingState == 3)
    {
      self->super._parsingState = parsingState;
    }

    else
    {
      status = [(ASChangedFolderStore *)self status];
      intValue = [status intValue];

      if (intValue == 1)
      {
        syncKey = [(ASChangedFolderStore *)self syncKey];

        if (!syncKey)
        {
          [(ASItem *)self setParsingState:3];
          v14 = DALoggingwithCategory();
          v15 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v14, v15))
          {
            syncKey2 = [(ASChangedFolderStore *)self syncKey];
            *buf = 67109378;
            v19 = 1;
            v20 = 2112;
            v21 = syncKey2;
            _os_log_impl(&dword_24A0AC000, v14, v15, "We received a happy value for status (%d), but syncKey %@ is missing", buf, 0x12u);
          }
        }
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end