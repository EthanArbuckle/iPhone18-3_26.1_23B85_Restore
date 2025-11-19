@interface ASGALSearchResult
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)convertToDAContactSearchResultElement;
- (id)description;
- (void)addClass:(id)a3;
- (void)addCollectionID:(id)a3;
- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8;
- (void)postProcessApplicationData;
@end

@implementation ASGALSearchResult

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_15 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_15;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_15 = v2;
    acceptsTopLevelLeaves___haveChecked_15 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_15 == 1)
  {
    v2 = parsingLeafNode___result_15;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_15 = v2;
    parsingLeafNode___haveChecked_15 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_15 == 1)
  {
    v2 = parsingWithSubItems___result_15;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_15 = v2;
    parsingWithSubItems___haveChecked_15 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_15 == 1)
  {
    v2 = frontingBasicTypes___result_15;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_15 = v2;
    frontingBasicTypes___haveChecked_15 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_15 == 1)
  {
    v2 = notifyOfUnknownTokens___result_15;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_15 = v2;
    notifyOfUnknownTokens___haveChecked_15 = 1;
  }

  return v2 & 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ASGALSearchResult *)self firstName];
  v5 = [(ASGALSearchResult *)self lastName];
  v6 = [(ASGALSearchResult *)self emailAddress];
  v7 = [v3 stringWithFormat:@"ASGALSearchResult: %@ %@ <%@>", v4, v5, v6];

  return v7;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v29 = MEMORY[0x277CBEAC0];
    v28 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:15 token:24 objectClass:objc_opt_class() setterMethod:sel_setLongID_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v27 = [MEMORY[0x277CCABB0] numberWithInt:3864];
    v26 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:4 codePage:0 token:16 objectClass:objc_opt_class() setterMethod:sel_addClass_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v18 = [MEMORY[0x277CCABB0] numberWithInt:16];
    v25 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:18 objectClass:objc_opt_class() setterMethod:sel_addCollectionID_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v24 = [MEMORY[0x277CCABB0] numberWithInt:18];
    v23 = [ASParseRule alloc];
    v6 = objc_opt_class();
    v7 = MEMORY[0x277CBEAC0];
    v8 = [ASParseRule alloc];
    v9 = objc_opt_class();
    v10 = MEMORY[0x277CBEAC0];
    v22 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:16 token:18 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v21 = [MEMORY[0x277CCABB0] numberWithInt:4114];
    v20 = [v10 dictionaryWithObjectsAndKeys:{v22, v21, 0}];
    v19 = [(ASParseRule *)v8 initWithMinimumNumber:0 maximumNumber:1 codePage:16 token:16 objectClass:v9 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v20];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:4112];
    v12 = [v7 dictionaryWithObjectsAndKeys:{v19, v11, 0}];
    v13 = [(ASParseRule *)v23 initWithMinimumNumber:0 maximumNumber:1 codePage:15 token:15 objectClass:v6 setterMethod:sel_setApplicationData_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v12];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:3855];
    v5 = [v29 dictionaryWithObjectsAndKeys:{v28, v27, v26, v18, v25, v24, v13, v14, 0}];

    v15 = +[ASItem parseRuleCache];
    v16 = NSStringFromClass(a1);
    [v15 setObject:v5 forKey:v16];
  }

  return v5;
}

- (void)postProcessApplicationData
{
  v3 = [(ASGALSearchResult *)self applicationData];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:4102];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASGALSearchResult *)self setPhone:v5];
    }
  }

  v6 = [(ASGALSearchResult *)self applicationData];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:4103];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASGALSearchResult *)self setOffice:v8];
    }
  }

  v9 = [(ASGALSearchResult *)self applicationData];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:4104];
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASGALSearchResult *)self setTitle:v11];
    }
  }

  v12 = [(ASGALSearchResult *)self applicationData];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:4105];
  v14 = [v12 objectForKey:v13];

  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASGALSearchResult *)self setCompany:v14];
    }
  }

  v15 = [(ASGALSearchResult *)self applicationData];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:4106];
  v17 = [v15 objectForKey:v16];

  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASGALSearchResult *)self setAlias:v17];
    }
  }

  v18 = [(ASGALSearchResult *)self applicationData];
  v19 = [MEMORY[0x277CCABB0] numberWithInt:4107];
  v20 = [v18 objectForKey:v19];

  if (v20)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASGALSearchResult *)self setFirstName:v20];
    }
  }

  v21 = [(ASGALSearchResult *)self applicationData];
  v22 = [MEMORY[0x277CCABB0] numberWithInt:4108];
  v23 = [v21 objectForKey:v22];

  if (v23)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASGALSearchResult *)self setLastName:v23];
    }
  }

  v24 = [(ASGALSearchResult *)self applicationData];
  v25 = [MEMORY[0x277CCABB0] numberWithInt:4109];
  v26 = [v24 objectForKey:v25];

  if (v26)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASGALSearchResult *)self setHomePhone:v26];
    }
  }

  v27 = [(ASGALSearchResult *)self applicationData];
  v28 = [MEMORY[0x277CCABB0] numberWithInt:4110];
  v29 = [v27 objectForKey:v28];

  if (v29)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASGALSearchResult *)self setMobilePhone:v29];
    }
  }

  v30 = [(ASGALSearchResult *)self applicationData];
  v31 = [MEMORY[0x277CCABB0] numberWithInt:4111];
  v32 = [v30 objectForKey:v31];

  if (v32)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASGALSearchResult *)self setEmailAddress:v32];
    }
  }

  v33 = [(ASGALSearchResult *)self applicationData];
  v34 = [MEMORY[0x277CCABB0] numberWithInt:4101];
  v35 = [v33 objectForKey:v34];

  if (v35)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASGALSearchResult *)self setDisplayName:v35];
    }
  }

  v36 = [(NSDictionary *)self->_applicationData objectForKeyedSubscript:&unk_285D57B58];
  v39 = v36;
  if (v36)
  {
    v37 = [v36 objectForKeyedSubscript:&unk_285D57B70];
    if (v37)
    {
      [(ASGALSearchResult *)self setPhotoData:v37];
    }
  }

  applicationData = self->_applicationData;
  self->_applicationData = 0;
}

- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8
{
  v10.receiver = self;
  v10.super_class = ASGALSearchResult;
  [(ASItem *)&v10 parseASParseContext:a3 root:a4 parent:a5 callbackDict:a6 streamCallbackDict:a7 account:a8];
  parsingState = self->super._parsingState;
  if (parsingState >= 2)
  {
    if (parsingState == 4 || parsingState == 3)
    {
      self->super._parsingState = parsingState;
    }

    else
    {
      [(ASGALSearchResult *)self postProcessApplicationData];
    }
  }
}

- (id)convertToDAContactSearchResultElement
{
  v3 = [(ASGALSearchResult *)self phone];
  if ([v3 length])
  {
    goto LABEL_20;
  }

  v4 = [(ASGALSearchResult *)self office];
  if ([v4 length])
  {
LABEL_19:

LABEL_20:
LABEL_21:
    v13 = objc_opt_new();
    v14 = [(ASGALSearchResult *)self phone];
    [v13 setWorkPhone:v14];

    v15 = [(ASGALSearchResult *)self office];
    [v13 setOffice:v15];

    v16 = [(ASGALSearchResult *)self title];
    [v13 setTitle:v16];

    v17 = [(ASGALSearchResult *)self company];
    [v13 setCompany:v17];

    v18 = [(ASGALSearchResult *)self alias];
    [v13 setAlias:v18];

    v19 = [(ASGALSearchResult *)self firstName];
    [v13 setFirstName:v19];

    v20 = [(ASGALSearchResult *)self lastName];
    [v13 setLastName:v20];

    v21 = [(ASGALSearchResult *)self homePhone];
    [v13 setHomePhone:v21];

    v22 = [(ASGALSearchResult *)self mobilePhone];
    [v13 setMobilePhone:v22];

    v23 = [(ASGALSearchResult *)self emailAddress];
    [v13 setEmailAddress:v23];

    v24 = [(ASGALSearchResult *)self displayName];
    [v13 setDisplayName:v24];

    v25 = [(ASGALSearchResult *)self photoData];
    [v13 setJpegPhoto:v25];

    v26 = [v13 emailAddress];
    [v13 setIdentifierOnServer:v26];

    goto LABEL_22;
  }

  v5 = [(ASGALSearchResult *)self title];
  if ([v5 length])
  {
LABEL_18:

    goto LABEL_19;
  }

  v6 = [(ASGALSearchResult *)self company];
  if ([v6 length])
  {
LABEL_17:

    goto LABEL_18;
  }

  v7 = [(ASGALSearchResult *)self alias];
  if ([v7 length])
  {
LABEL_16:

    goto LABEL_17;
  }

  v8 = [(ASGALSearchResult *)self firstName];
  if ([v8 length])
  {
LABEL_15:

    goto LABEL_16;
  }

  v9 = [(ASGALSearchResult *)self lastName];
  if ([v9 length])
  {
LABEL_14:

    goto LABEL_15;
  }

  v10 = [(ASGALSearchResult *)self homePhone];
  if ([v10 length])
  {
LABEL_13:

    goto LABEL_14;
  }

  v11 = [(ASGALSearchResult *)self mobilePhone];
  if ([v11 length])
  {
LABEL_12:

    goto LABEL_13;
  }

  v32 = v11;
  v12 = [(ASGALSearchResult *)self emailAddress];
  if ([v12 length])
  {

    v11 = v32;
    goto LABEL_12;
  }

  v30 = v12;
  v28 = [(ASGALSearchResult *)self displayName];
  if ([v28 length])
  {
    v31 = 1;
  }

  else
  {
    v29 = [(ASGALSearchResult *)self photoData];
    v31 = [v29 length] != 0;
  }

  if (v31)
  {
    goto LABEL_21;
  }

  v13 = 0;
LABEL_22:

  return v13;
}

- (void)addClass:(id)a3
{
  v4 = a3;
  v5 = [(ASGALSearchResult *)self mClasses];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(ASGALSearchResult *)self setMClasses:v6];
  }

  v7 = [(ASGALSearchResult *)self mClasses];
  [v7 addObject:v4];
}

- (void)addCollectionID:(id)a3
{
  v4 = a3;
  v5 = [(ASGALSearchResult *)self mCollectionIDs];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(ASGALSearchResult *)self setMCollectionIDs:v6];
  }

  v7 = [(ASGALSearchResult *)self mCollectionIDs];
  [v7 addObject:v4];
}

@end