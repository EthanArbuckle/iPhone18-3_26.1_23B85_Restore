@interface ASGALSearchResult
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)convertToDAContactSearchResultElement;
- (id)description;
- (void)addClass:(id)class;
- (void)addCollectionID:(id)d;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
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
    v2 = [self conformsToProtocol:&unk_285D64D60];
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
    v2 = [self conformsToProtocol:&unk_285D5E660];
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
    v2 = [self conformsToProtocol:&unk_285D64A10];
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
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
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
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_15 = v2;
    notifyOfUnknownTokens___haveChecked_15 = 1;
  }

  return v2 & 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  firstName = [(ASGALSearchResult *)self firstName];
  lastName = [(ASGALSearchResult *)self lastName];
  emailAddress = [(ASGALSearchResult *)self emailAddress];
  v7 = [v3 stringWithFormat:@"ASGALSearchResult: %@ %@ <%@>", firstName, lastName, emailAddress];

  return v7;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
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
    v16 = NSStringFromClass(self);
    [v15 setObject:v5 forKey:v16];
  }

  return v5;
}

- (void)postProcessApplicationData
{
  applicationData = [(ASGALSearchResult *)self applicationData];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:4102];
  v5 = [applicationData objectForKey:v4];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASGALSearchResult *)self setPhone:v5];
    }
  }

  applicationData2 = [(ASGALSearchResult *)self applicationData];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:4103];
  v8 = [applicationData2 objectForKey:v7];

  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASGALSearchResult *)self setOffice:v8];
    }
  }

  applicationData3 = [(ASGALSearchResult *)self applicationData];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:4104];
  v11 = [applicationData3 objectForKey:v10];

  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASGALSearchResult *)self setTitle:v11];
    }
  }

  applicationData4 = [(ASGALSearchResult *)self applicationData];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:4105];
  v14 = [applicationData4 objectForKey:v13];

  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASGALSearchResult *)self setCompany:v14];
    }
  }

  applicationData5 = [(ASGALSearchResult *)self applicationData];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:4106];
  v17 = [applicationData5 objectForKey:v16];

  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASGALSearchResult *)self setAlias:v17];
    }
  }

  applicationData6 = [(ASGALSearchResult *)self applicationData];
  v19 = [MEMORY[0x277CCABB0] numberWithInt:4107];
  v20 = [applicationData6 objectForKey:v19];

  if (v20)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASGALSearchResult *)self setFirstName:v20];
    }
  }

  applicationData7 = [(ASGALSearchResult *)self applicationData];
  v22 = [MEMORY[0x277CCABB0] numberWithInt:4108];
  v23 = [applicationData7 objectForKey:v22];

  if (v23)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASGALSearchResult *)self setLastName:v23];
    }
  }

  applicationData8 = [(ASGALSearchResult *)self applicationData];
  v25 = [MEMORY[0x277CCABB0] numberWithInt:4109];
  v26 = [applicationData8 objectForKey:v25];

  if (v26)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASGALSearchResult *)self setHomePhone:v26];
    }
  }

  applicationData9 = [(ASGALSearchResult *)self applicationData];
  v28 = [MEMORY[0x277CCABB0] numberWithInt:4110];
  v29 = [applicationData9 objectForKey:v28];

  if (v29)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASGALSearchResult *)self setMobilePhone:v29];
    }
  }

  applicationData10 = [(ASGALSearchResult *)self applicationData];
  v31 = [MEMORY[0x277CCABB0] numberWithInt:4111];
  v32 = [applicationData10 objectForKey:v31];

  if (v32)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASGALSearchResult *)self setEmailAddress:v32];
    }
  }

  applicationData11 = [(ASGALSearchResult *)self applicationData];
  v34 = [MEMORY[0x277CCABB0] numberWithInt:4101];
  v35 = [applicationData11 objectForKey:v34];

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

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  v10.receiver = self;
  v10.super_class = ASGALSearchResult;
  [(ASItem *)&v10 parseASParseContext:context root:root parent:parent callbackDict:dict streamCallbackDict:callbackDict account:account];
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
  phone = [(ASGALSearchResult *)self phone];
  if ([phone length])
  {
    goto LABEL_20;
  }

  office = [(ASGALSearchResult *)self office];
  if ([office length])
  {
LABEL_19:

LABEL_20:
LABEL_21:
    v13 = objc_opt_new();
    phone2 = [(ASGALSearchResult *)self phone];
    [v13 setWorkPhone:phone2];

    office2 = [(ASGALSearchResult *)self office];
    [v13 setOffice:office2];

    title = [(ASGALSearchResult *)self title];
    [v13 setTitle:title];

    company = [(ASGALSearchResult *)self company];
    [v13 setCompany:company];

    alias = [(ASGALSearchResult *)self alias];
    [v13 setAlias:alias];

    firstName = [(ASGALSearchResult *)self firstName];
    [v13 setFirstName:firstName];

    lastName = [(ASGALSearchResult *)self lastName];
    [v13 setLastName:lastName];

    homePhone = [(ASGALSearchResult *)self homePhone];
    [v13 setHomePhone:homePhone];

    mobilePhone = [(ASGALSearchResult *)self mobilePhone];
    [v13 setMobilePhone:mobilePhone];

    emailAddress = [(ASGALSearchResult *)self emailAddress];
    [v13 setEmailAddress:emailAddress];

    displayName = [(ASGALSearchResult *)self displayName];
    [v13 setDisplayName:displayName];

    photoData = [(ASGALSearchResult *)self photoData];
    [v13 setJpegPhoto:photoData];

    emailAddress2 = [v13 emailAddress];
    [v13 setIdentifierOnServer:emailAddress2];

    goto LABEL_22;
  }

  title2 = [(ASGALSearchResult *)self title];
  if ([title2 length])
  {
LABEL_18:

    goto LABEL_19;
  }

  company2 = [(ASGALSearchResult *)self company];
  if ([company2 length])
  {
LABEL_17:

    goto LABEL_18;
  }

  alias2 = [(ASGALSearchResult *)self alias];
  if ([alias2 length])
  {
LABEL_16:

    goto LABEL_17;
  }

  firstName2 = [(ASGALSearchResult *)self firstName];
  if ([firstName2 length])
  {
LABEL_15:

    goto LABEL_16;
  }

  lastName2 = [(ASGALSearchResult *)self lastName];
  if ([lastName2 length])
  {
LABEL_14:

    goto LABEL_15;
  }

  homePhone2 = [(ASGALSearchResult *)self homePhone];
  if ([homePhone2 length])
  {
LABEL_13:

    goto LABEL_14;
  }

  mobilePhone2 = [(ASGALSearchResult *)self mobilePhone];
  if ([mobilePhone2 length])
  {
LABEL_12:

    goto LABEL_13;
  }

  v32 = mobilePhone2;
  emailAddress3 = [(ASGALSearchResult *)self emailAddress];
  if ([emailAddress3 length])
  {

    mobilePhone2 = v32;
    goto LABEL_12;
  }

  v30 = emailAddress3;
  displayName2 = [(ASGALSearchResult *)self displayName];
  if ([displayName2 length])
  {
    v31 = 1;
  }

  else
  {
    photoData2 = [(ASGALSearchResult *)self photoData];
    v31 = [photoData2 length] != 0;
  }

  if (v31)
  {
    goto LABEL_21;
  }

  v13 = 0;
LABEL_22:

  return v13;
}

- (void)addClass:(id)class
{
  classCopy = class;
  mClasses = [(ASGALSearchResult *)self mClasses];

  if (!mClasses)
  {
    v6 = objc_opt_new();
    [(ASGALSearchResult *)self setMClasses:v6];
  }

  mClasses2 = [(ASGALSearchResult *)self mClasses];
  [mClasses2 addObject:classCopy];
}

- (void)addCollectionID:(id)d
{
  dCopy = d;
  mCollectionIDs = [(ASGALSearchResult *)self mCollectionIDs];

  if (!mCollectionIDs)
  {
    v6 = objc_opt_new();
    [(ASGALSearchResult *)self setMCollectionIDs:v6];
  }

  mCollectionIDs2 = [(ASGALSearchResult *)self mCollectionIDs];
  [mCollectionIDs2 addObject:dCopy];
}

@end