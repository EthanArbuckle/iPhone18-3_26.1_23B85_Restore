@interface ASFolder
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (ASFolder)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_folderTypeString;
- (id)description;
- (int64_t)dataclass;
- (void)encodeWithCoder:(id)a3;
- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8;
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
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
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
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
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
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
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
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
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
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_29 = v2;
    notifyOfUnknownTokens___haveChecked_29 = 1;
  }

  return v2 & 1;
}

- (ASFolder)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ASFolder;
  v5 = [(ASItem *)&v13 init];
  if (v5)
  {
    if ([v4 allowsKeyedCoding])
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverID"];
      [(ASFolder *)v5 setServerID:v6];

      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentID"];
      [(ASFolder *)v5 setParentID:v7];

      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
      [(ASFolder *)v5 setDisplayName:v8];

      -[ASFolder setFolderType:](v5, "setFolderType:", [v4 decodeIntForKey:@"folderType"]);
      -[ASFolder setLocalID:](v5, "setLocalID:", [v4 decodeIntForKey:@"localID"]);
    }

    else
    {
      v9 = [v4 decodeObject];
      [(ASFolder *)v5 setServerID:v9];

      v10 = [v4 decodeObject];
      [(ASFolder *)v5 setParentID:v10];

      v11 = [v4 decodeObject];
      [(ASFolder *)v5 setDisplayName:v11];

      [v4 decodeValueOfObjCType:"i" at:&v5->_folderType];
      [v4 decodeValueOfObjCType:"i" at:&v5->_localID];
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 displayName];
    v7 = [(ASFolder *)self displayName];
    if ([v6 isEqualToString:v7])
    {
      v8 = [v5 serverID];
      v9 = [(ASFolder *)self serverID];
      if ([v8 isEqualToString:v9])
      {
        v10 = [v5 parentID];
        v11 = [(ASFolder *)self parentID];
        if ([v10 isEqualToString:v11])
        {
          v17 = [v5 localID];
          v12 = [(ASFolder *)self localID];

          if (v17 == v12)
          {
            v13 = [(ASFolder *)self folderType];
            if ((v13 - 2) >= 5 && v13 != 12)
            {
              v16 = [v5 folderType];
              v14 = v16 == [(ASFolder *)self folderType];
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

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [v10 allowsKeyedCoding];
  v5 = [(ASFolder *)self serverID];
  if (v4)
  {
    [v10 encodeObject:v5 forKey:@"serverID"];

    v6 = [(ASFolder *)self parentID];
    [v10 encodeObject:v6 forKey:@"parentID"];

    v7 = [(ASFolder *)self displayName];
    [v10 encodeObject:v7 forKey:@"displayName"];

    [v10 encodeInt:-[ASFolder folderType](self forKey:{"folderType"), @"folderType"}];
    [v10 encodeInt:-[ASFolder localID](self forKey:{"localID"), @"localID"}];
  }

  else
  {
    [v10 encodeObject:v5];

    v8 = [(ASFolder *)self parentID];
    [v10 encodeObject:v8];

    v9 = [(ASFolder *)self displayName];
    [v10 encodeObject:v9];

    [v10 encodeValueOfObjCType:"i" at:&self->_folderType];
    [v10 encodeValueOfObjCType:"i" at:&self->_localID];
  }
}

- (int64_t)dataclass
{
  v2 = [(ASFolder *)self folderType];

  return DADataclassForASFolderType(v2);
}

- (id)_folderTypeString
{
  v2 = [(ASFolder *)self folderType];
  if (v2 > 0x12)
  {
    return @"Unknown";
  }

  else
  {
    return off_278FC7F60[v2];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ASFolder *)self displayName];
  v6 = [(ASFolder *)self serverID];
  v7 = [(ASFolder *)self parentID];
  v8 = [(ASFolder *)self _folderTypeString];
  v9 = [v3 stringWithFormat:@"<%@: [%@] [%@] [%@] [%@]>", v4, v5, v6, v7, v8];

  return v9;
}

- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8
{
  v31 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = ASFolder;
  [(ASItem *)&v28 parseASParseContext:a3 root:a4 parent:a5 callbackDict:a6 streamCallbackDict:a7 account:a8];
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
        v20 = [(ASItem *)self token];
        *buf = 67109120;
        v30 = v20;
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
        v11 = [(ASFolder *)self serverID];
        if (v11)
        {
          v12 = v11;
          if ([(ASFolder *)self changeType]&& [(ASFolder *)self changeType]!= 1)
          {

            goto LABEL_21;
          }

          v13 = [(ASFolder *)self parentID];
          if (v13)
          {
            v14 = v13;
            v15 = [(ASFolder *)self displayName];
            if (v15)
            {
              v16 = v15;
              v17 = [(ASFolder *)self folderType];

              if (v17)
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
        v22 = [(ASItem *)self codePage];
        *buf = 67109120;
        v30 = v22;
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
  v4 = NSStringFromClass(a1);
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
    v16 = NSStringFromClass(a1);
    [v15 setObject:v5 forKey:v16];
  }

  return v5;
}

@end