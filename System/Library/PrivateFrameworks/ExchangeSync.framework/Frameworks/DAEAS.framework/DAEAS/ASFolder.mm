@interface ASFolder
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (ASFolder)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_folderTypeString;
- (id)description;
- (int64_t)dataclass;
- (void)encodeWithCoder:(id)coder;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
@end

@implementation ASFolder

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_29 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_29;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_29 = v2;
    acceptsTopLevelLeaves___haveChecked_29 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_29 == 1)
  {
    v2 = parsingLeafNode___result_29;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_29 = v2;
    parsingLeafNode___haveChecked_29 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_29 == 1)
  {
    v2 = parsingWithSubItems___result_29;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_29 = v2;
    parsingWithSubItems___haveChecked_29 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_29 == 1)
  {
    v2 = frontingBasicTypes___result_29;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_29 = v2;
    frontingBasicTypes___haveChecked_29 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_29 == 1)
  {
    v2 = notifyOfUnknownTokens___result_29;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_29 = v2;
    notifyOfUnknownTokens___haveChecked_29 = 1;
  }

  return v2 & 1;
}

- (ASFolder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ASFolder;
  v5 = [(ASItem *)&v13 init];
  if (v5)
  {
    if ([coderCopy allowsKeyedCoding])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverID"];
      [(ASFolder *)v5 setServerID:v6];

      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentID"];
      [(ASFolder *)v5 setParentID:v7];

      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
      [(ASFolder *)v5 setDisplayName:v8];

      -[ASFolder setFolderType:](v5, "setFolderType:", [coderCopy decodeIntForKey:@"folderType"]);
      -[ASFolder setLocalID:](v5, "setLocalID:", [coderCopy decodeIntForKey:@"localID"]);
    }

    else
    {
      decodeObject = [coderCopy decodeObject];
      [(ASFolder *)v5 setServerID:decodeObject];

      decodeObject2 = [coderCopy decodeObject];
      [(ASFolder *)v5 setParentID:decodeObject2];

      decodeObject3 = [coderCopy decodeObject];
      [(ASFolder *)v5 setDisplayName:decodeObject3];

      [coderCopy decodeValueOfObjCType:"i" at:&v5->_folderType];
      [coderCopy decodeValueOfObjCType:"i" at:&v5->_localID];
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    displayName = [v5 displayName];
    displayName2 = [(ASFolder *)self displayName];
    if ([displayName isEqualToString:displayName2])
    {
      serverID = [v5 serverID];
      serverID2 = [(ASFolder *)self serverID];
      if ([serverID isEqualToString:serverID2])
      {
        parentID = [v5 parentID];
        parentID2 = [(ASFolder *)self parentID];
        if ([parentID isEqualToString:parentID2])
        {
          localID = [v5 localID];
          localID2 = [(ASFolder *)self localID];

          if (localID == localID2)
          {
            folderType = [(ASFolder *)self folderType];
            if ((folderType - 2) >= 5 && folderType != 12)
            {
              folderType2 = [v5 folderType];
              v14 = folderType2 == [(ASFolder *)self folderType];
              goto LABEL_19;
            }

            if ([v5 folderType] == 2 || objc_msgSend(v5, "folderType") == 3 || objc_msgSend(v5, "folderType") == 4 || objc_msgSend(v5, "folderType") == 5 || objc_msgSend(v5, "folderType") == 6 || objc_msgSend(v5, "folderType") == 12)
            {
              v14 = 1;
LABEL_19:

              goto LABEL_20;
            }
          }

LABEL_18:
          v14 = 0;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_18;
  }

  v14 = 0;
LABEL_20:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  allowsKeyedCoding = [coderCopy allowsKeyedCoding];
  serverID = [(ASFolder *)self serverID];
  if (allowsKeyedCoding)
  {
    [coderCopy encodeObject:serverID forKey:@"serverID"];

    parentID = [(ASFolder *)self parentID];
    [coderCopy encodeObject:parentID forKey:@"parentID"];

    displayName = [(ASFolder *)self displayName];
    [coderCopy encodeObject:displayName forKey:@"displayName"];

    [coderCopy encodeInt:-[ASFolder folderType](self forKey:{"folderType"), @"folderType"}];
    [coderCopy encodeInt:-[ASFolder localID](self forKey:{"localID"), @"localID"}];
  }

  else
  {
    [coderCopy encodeObject:serverID];

    parentID2 = [(ASFolder *)self parentID];
    [coderCopy encodeObject:parentID2];

    displayName2 = [(ASFolder *)self displayName];
    [coderCopy encodeObject:displayName2];

    [coderCopy encodeValueOfObjCType:"i" at:&self->_folderType];
    [coderCopy encodeValueOfObjCType:"i" at:&self->_localID];
  }
}

- (int64_t)dataclass
{
  folderType = [(ASFolder *)self folderType];

  return DADataclassForASFolderType(folderType);
}

- (id)_folderTypeString
{
  folderType = [(ASFolder *)self folderType];
  if (folderType > 0x12)
  {
    return @"Unknown";
  }

  else
  {
    return off_278FC7F60[folderType];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  displayName = [(ASFolder *)self displayName];
  serverID = [(ASFolder *)self serverID];
  parentID = [(ASFolder *)self parentID];
  _folderTypeString = [(ASFolder *)self _folderTypeString];
  v9 = [v3 stringWithFormat:@"<%@: [%@] [%@] [%@] [%@]>", v4, displayName, serverID, parentID, _folderTypeString];

  return v9;
}

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  v31 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = ASFolder;
  [(ASItem *)&v28 parseASParseContext:context root:root parent:parent callbackDict:dict streamCallbackDict:callbackDict account:account];
  parsingState = self->super._parsingState;
  if (parsingState >= 2)
  {
    if (parsingState == 4 || parsingState == 3)
    {
      self->super._parsingState = parsingState;
      goto LABEL_21;
    }

    v10 = ([(ASItem *)self token]& 0x3F) - 15;
    if (v10 >= 3)
    {
      v18 = DALoggingwithCategory();
      v19 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v18, v19))
      {
        token = [(ASItem *)self token];
        *buf = 67109120;
        v30 = token;
        v21 = "ASFolder created with unknown token %d";
LABEL_18:
        v23 = v18;
        v24 = v19;
        v25 = 8;
LABEL_19:
        _os_log_impl(&dword_24A0AC000, v23, v24, v21, buf, v25);
      }
    }

    else
    {
      [(ASFolder *)self setChangeType:qword_24A14DDE0[v10]];
      if ([(ASItem *)self codePage]== 7)
      {
        serverID = [(ASFolder *)self serverID];
        if (serverID)
        {
          v12 = serverID;
          if ([(ASFolder *)self changeType]&& [(ASFolder *)self changeType]!= 1)
          {

            goto LABEL_21;
          }

          parentID = [(ASFolder *)self parentID];
          if (parentID)
          {
            v14 = parentID;
            displayName = [(ASFolder *)self displayName];
            if (displayName)
            {
              v16 = displayName;
              folderType = [(ASFolder *)self folderType];

              if (folderType)
              {
                goto LABEL_21;
              }

              goto LABEL_25;
            }
          }
        }

LABEL_25:
        v18 = DALoggingwithCategory();
        v27 = *(MEMORY[0x277D03988] + 3);
        if (!os_log_type_enabled(v18, v27))
        {
          goto LABEL_20;
        }

        *buf = 0;
        v21 = "A required attribute for this folder was not set in the response.";
        v23 = v18;
        v24 = v27;
        v25 = 2;
        goto LABEL_19;
      }

      v18 = DALoggingwithCategory();
      v19 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v18, v19))
      {
        codePage = [(ASItem *)self codePage];
        *buf = 67109120;
        v30 = codePage;
        v21 = "ASFolder created with unknown code page %d";
        goto LABEL_18;
      }
    }

LABEL_20:

    [(ASItem *)self setParsingState:3];
  }

LABEL_21:
  v26 = *MEMORY[0x277D85DE8];
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = MEMORY[0x277CBEAC0];
    v7 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:7 token:7 objectClass:objc_opt_class() setterMethod:sel_setDisplayName_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:1799];
    v9 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:7 token:9 objectClass:objc_opt_class() setterMethod:sel_setParentID_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:1801];
    v11 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:7 token:8 objectClass:objc_opt_class() setterMethod:sel_setServerID_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:1800];
    v13 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:7 token:10 objectClass:objc_opt_class() setterMethod:sel_setFolderTypeNumber_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:1802];
    v5 = [v6 dictionaryWithObjectsAndKeys:{v7, v8, v9, v10, v11, v12, v13, v14, 0}];

    v15 = +[ASItem parseRuleCache];
    v16 = NSStringFromClass(self);
    [v15 setObject:v5 forKey:v16];
  }

  return v5;
}

@end