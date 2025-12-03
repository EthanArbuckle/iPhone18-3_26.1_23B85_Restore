@interface ASChangedCollectionLeaf
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (ASChangedCollectionLeaf)init;
- (ASChangedCollectionLeaf)initWithCoder:(id)coder;
- (int64_t)dataclass;
- (void)appendActiveSyncDataForTask:(id)task toWBXMLData:(id)data;
- (void)encodeWithCoder:(id)coder;
- (void)loadClientIDs;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
@end

@implementation ASChangedCollectionLeaf

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_21 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_21;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_21 = v2;
    acceptsTopLevelLeaves___haveChecked_21 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_21 == 1)
  {
    v2 = parsingLeafNode___result_21;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_21 = v2;
    parsingLeafNode___haveChecked_21 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_21 == 1)
  {
    v2 = parsingWithSubItems___result_21;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_21 = v2;
    parsingWithSubItems___haveChecked_21 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_21 == 1)
  {
    v2 = frontingBasicTypes___result_21;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_21 = v2;
    frontingBasicTypes___haveChecked_21 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_21 == 1)
  {
    v2 = notifyOfUnknownTokens___result_21;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_21 = v2;
    notifyOfUnknownTokens___haveChecked_21 = 1;
  }

  return v2 & 1;
}

- (ASChangedCollectionLeaf)init
{
  v5.receiver = self;
  v5.super_class = ASChangedCollectionLeaf;
  v2 = [(ASItem *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ASChangedCollectionLeaf *)v2 setValidateOpeningTokens:1];
  }

  return v3;
}

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  v51 = *MEMORY[0x277D85DE8];
  v46.receiver = self;
  v46.super_class = ASChangedCollectionLeaf;
  [(ASItem *)&v46 parseASParseContext:context root:root parent:parent callbackDict:dict streamCallbackDict:callbackDict account:account];
  parsingState = self->super._parsingState;
  if (parsingState < 2)
  {
    goto LABEL_5;
  }

  if (parsingState == 4 || parsingState == 3)
  {
    self->super._parsingState = parsingState;
    goto LABEL_5;
  }

  [(ASChangedCollectionLeaf *)self setIsResponse:0];
  if (![(ASChangedCollectionLeaf *)self validateOpeningTokens])
  {
    [(ASChangedCollectionLeaf *)self setStatus:&unk_285D57BA0];
    [(ASChangedCollectionLeaf *)self setChangeType:0];
    goto LABEL_5;
  }

  v11 = self->super._token & 0x3F;
  if (v11 <= 8)
  {
    if (v11 == 7)
    {
      selfCopy5 = self;
      v13 = 0;
      goto LABEL_19;
    }

    if (v11 == 8)
    {
      selfCopy5 = self;
      v13 = 1;
      goto LABEL_19;
    }

LABEL_38:
    v37 = DALoggingwithCategory();
    v38 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      token = self->super._token;
      *buf = 138412546;
      v48 = v40;
      v49 = 1024;
      v50 = token;
      _os_log_impl(&dword_24A0AC000, v37, v38, "%@ created with unknown token %d", buf, 0x12u);
    }

    status = [(ASChangedCollectionLeaf *)self status];
    if (!status || (v43 = status, -[ASChangedCollectionLeaf status](self, "status"), v44 = objc_claimAutoreleasedReturnValue(), v45 = [v44 intValue], v44, v43, v45 == 1))
    {
      [(ASChangedCollectionLeaf *)self setStatus:&unk_285D57B88];
    }

    goto LABEL_20;
  }

  if (v11 == 9)
  {
    selfCopy5 = self;
    v13 = 2;
    goto LABEL_19;
  }

  if (v11 == 10)
  {
    selfCopy5 = self;
    v13 = 3;
    goto LABEL_19;
  }

  if (v11 != 33)
  {
    goto LABEL_38;
  }

  selfCopy5 = self;
  v13 = 7;
LABEL_19:
  [(ASChangedCollectionLeaf *)selfCopy5 setChangeType:v13];
LABEL_20:
  if (self->super._codePage)
  {
    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      codePage = self->super._codePage;
      *buf = 138412546;
      v48 = v17;
      v49 = 1024;
      v50 = codePage;
      _os_log_impl(&dword_24A0AC000, v14, v15, "%@ created with unknown code page %d", buf, 0x12u);
    }

    status2 = [(ASChangedCollectionLeaf *)self status];
    if (!status2 || (v20 = status2, -[ASChangedCollectionLeaf status](self, "status"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 intValue], v21, v20, v22 == 1))
    {
      [(ASChangedCollectionLeaf *)self setStatus:&unk_285D57B88];
    }
  }

  status3 = [(ASChangedCollectionLeaf *)self status];

  if (!status3)
  {
    [(ASChangedCollectionLeaf *)self setStatus:&unk_285D57BA0];
  }

  status4 = [(ASChangedCollectionLeaf *)self status];
  intValue = [status4 intValue];

  if (intValue != 1)
  {
    v26 = DALoggingwithCategory();
    v27 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v26, v27))
    {
      status5 = [(ASChangedCollectionLeaf *)self status];
      intValue2 = [status5 intValue];
      *buf = 67109120;
      LODWORD(v48) = intValue2;
      _os_log_impl(&dword_24A0AC000, v26, v27, "This leaf node has an unsuccessful status code (has %d)", buf, 8u);
    }
  }

  serverID = [(ASChangedCollectionLeaf *)self serverID];

  if (!serverID)
  {
    v31 = DALoggingwithCategory();
    v32 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v31, v32))
    {
      *buf = 0;
      _os_log_impl(&dword_24A0AC000, v31, v32, "ServerID for this leaf node was not set in the response.", buf, 2u);
    }

    status6 = [(ASChangedCollectionLeaf *)self status];
    if (!status6 || (v34 = status6, -[ASChangedCollectionLeaf status](self, "status"), v35 = objc_claimAutoreleasedReturnValue(), v36 = [v35 intValue], v35, v34, v36 == 1))
    {
      [(ASChangedCollectionLeaf *)self setStatus:&unk_285D57B88];
    }
  }

LABEL_5:
  v10 = *MEMORY[0x277D85DE8];
}

- (void)appendActiveSyncDataForTask:(id)task toWBXMLData:(id)data
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24A0AC000, v5, v6, "%s to be implemented by subclass", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)loadClientIDs
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24A0AC000, v3, v4, "%s to be implemented by subclass", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (int64_t)dataclass
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24A0AC000, v3, v4, "%s to be implemented by subclass", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return -1;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  selfCopy = self;
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v20 = MEMORY[0x277CBEAC0];
    v21 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:13 objectClass:objc_opt_class() setterMethod:sel_setServerID_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v19 = [MEMORY[0x277CCABB0] numberWithInt:13];
    v18 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:12 objectClass:objc_opt_class() setterMethod:sel_setClientID_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:12];
    v6 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:45 objectClass:objc_opt_class() setterMethod:sel_setInstanceID_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:4397];
    v8 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:29 objectClass:objc_opt_class() setterMethod:sel_setApplicationData_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v16 = [MEMORY[0x277CCABB0] numberWithInt:29];
    v15 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:14 objectClass:objc_opt_class() setterMethod:sel_setStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:14];
    v10 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:16 objectClass:objc_opt_class() setterMethod:sel_ignoreThisContent_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:16];
    v5 = [v20 dictionaryWithObjectsAndKeys:{v21, v19, v18, v17, v6, v7, v8, v16, v15, v9, v10, v11, 0}];

    v12 = +[ASItem parseRuleCache];
    v13 = NSStringFromClass(selfCopy);
    [v12 setObject:v5 forKey:v13];
  }

  return v5;
}

- (ASChangedCollectionLeaf)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [(ASChangedCollectionLeaf *)a2 initWithCoder:?];
  }

  v19.receiver = self;
  v19.super_class = ASChangedCollectionLeaf;
  v6 = [(ASItem *)&v19 init];
  if (v6)
  {
    -[ASChangedCollectionLeaf setChangeType:](v6, "setChangeType:", [coderCopy decodeInt64ForKey:@"ASCCLChangeType"]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ASCCLServerID"];
    [(ASChangedCollectionLeaf *)v6 setServerID:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ASCCLClientID"];
    [(ASChangedCollectionLeaf *)v6 setClientID:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ASCCLInstanceID"];
    [(ASChangedCollectionLeaf *)v6 setInstanceID:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ASCCLStatus"];
    [(ASChangedCollectionLeaf *)v6 setStatus:v10];

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v11 setWithObjects:{v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"ASCCLApplicationData"];
    [(ASChangedCollectionLeaf *)v6 setApplicationData:v17];

    -[ASChangedCollectionLeaf setIsResponse:](v6, "setIsResponse:", [coderCopy decodeBoolForKey:@"ASCCLIsResponse"]);
    -[ASChangedCollectionLeaf setValidateOpeningTokens:](v6, "setValidateOpeningTokens:", [coderCopy decodeBoolForKey:@"ASCCLValidateOpeningTokens"]);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [(ASChangedCollectionLeaf *)a2 encodeWithCoder:?];
  }

  [coderCopy encodeInt64:-[ASChangedCollectionLeaf changeType](self forKey:{"changeType"), @"ASCCLChangeType"}];
  serverID = [(ASChangedCollectionLeaf *)self serverID];
  [coderCopy encodeObject:serverID forKey:@"ASCCLServerID"];

  clientID = [(ASChangedCollectionLeaf *)self clientID];
  [coderCopy encodeObject:clientID forKey:@"ASCCLClientID"];

  instanceID = [(ASChangedCollectionLeaf *)self instanceID];
  [coderCopy encodeObject:instanceID forKey:@"ASCCLInstanceID"];

  status = [(ASChangedCollectionLeaf *)self status];
  [coderCopy encodeObject:status forKey:@"ASCCLStatus"];

  applicationData = [(ASChangedCollectionLeaf *)self applicationData];
  [coderCopy encodeObject:applicationData forKey:@"ASCCLApplicationData"];

  [coderCopy encodeBool:-[ASChangedCollectionLeaf isResponse](self forKey:{"isResponse"), @"ASCCLIsResponse"}];
  [coderCopy encodeBool:-[ASChangedCollectionLeaf validateOpeningTokens](self forKey:{"validateOpeningTokens"), @"ASCCLValidateOpeningTokens"}];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASChangedCollectionLeaf.m" lineNumber:114 description:@"Who does non-keyed coding nowadays?"];
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASChangedCollectionLeaf.m" lineNumber:130 description:@"Who does non-keyed coding nowadays?"];
}

@end