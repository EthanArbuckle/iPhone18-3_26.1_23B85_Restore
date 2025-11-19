@interface ASSettingsTaskOofGetResponse
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (id)convertToDAOofParams;
- (id)description;
- (void)addOofMessages:(id)a3;
- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8;
@end

@implementation ASSettingsTaskOofGetResponse

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_222 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_223;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_223 = v2;
    acceptsTopLevelLeaves___haveChecked_222 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_224 == 1)
  {
    v2 = parsingLeafNode___result_225;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_225 = v2;
    parsingLeafNode___haveChecked_224 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_226 == 1)
  {
    v2 = parsingWithSubItems___result_227;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_227 = v2;
    parsingWithSubItems___haveChecked_226 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_228 == 1)
  {
    v2 = frontingBasicTypes___result_229;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_229 = v2;
    frontingBasicTypes___haveChecked_228 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_230 == 1)
  {
    v2 = notifyOfUnknownTokens___result_231;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_231 = v2;
    notifyOfUnknownTokens___haveChecked_230 = 1;
  }

  return v2 & 1;
}

- (void)addOofMessages:(id)a3
{
  v4 = a3;
  v5 = [(ASSettingsTaskOofGetResponse *)self mOofMessages];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(ASSettingsTaskOofGetResponse *)self setMOofMessages:v6];
  }

  v7 = [(ASSettingsTaskOofGetResponse *)self mOofMessages];
  [v7 addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ASSettingsTaskOofGetResponse *)self oofState];
  v7 = [(ASSettingsTaskOofGetResponse *)self startTime];
  v8 = [(ASSettingsTaskOofGetResponse *)self endTime];
  v9 = [v3 stringWithFormat:@"%@ %p: oofState: %@ startTime: %@ endTime %@", v5, self, v6, v7, v8];

  return v9;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = MEMORY[0x277CBEAC0];
    v7 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:18 token:10 objectClass:objc_opt_class() setterMethod:sel_setOofState_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:4618];
    v9 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:18 token:11 objectClass:objc_opt_class() setterMethod:sel_setStartTime_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:4619];
    v11 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:18 token:12 objectClass:objc_opt_class() setterMethod:sel_setEndTime_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:4620];
    v13 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:18 token:13 objectClass:objc_opt_class() setterMethod:sel_addOofMessages_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:4621];
    v5 = [v6 dictionaryWithObjectsAndKeys:{v7, v8, v9, v10, v11, v12, v13, v14, 0}];

    v15 = +[ASItem parseRuleCache];
    v16 = NSStringFromClass(a1);
    [v15 setObject:v5 forKey:v16];
  }

  return v5;
}

- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8
{
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = ASSettingsTaskOofGetResponse;
  [(ASItem *)&v13 parseASParseContext:a3 root:a4 parent:a5 callbackDict:a6 streamCallbackDict:a7 account:a8];
  parsingState = self->super._parsingState;
  if (parsingState >= 2)
  {
    if (parsingState == 4 || parsingState == 3)
    {
      self->super._parsingState = parsingState;
    }

    else
    {
      v10 = DALoggingwithCategory();
      v11 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v10, v11))
      {
        *buf = 138412290;
        v15 = self;
        _os_log_impl(&dword_24A0AC000, v10, v11, "%@ Parsed its context.", buf, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)convertToDAOofParams
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(ASSettingsTaskOofGetResponse *)self oofState];

  if (v4)
  {
    v5 = [(ASSettingsTaskOofGetResponse *)self oofState];
    [v3 setOofState:{objc_msgSend(v5, "intValue")}];
  }

  if (!convertToDAOofParams_dateFormatter)
  {
    v6 = objc_opt_new();
    v7 = convertToDAOofParams_dateFormatter;
    convertToDAOofParams_dateFormatter = v6;

    v8 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [convertToDAOofParams_dateFormatter setLocale:v8];
    [convertToDAOofParams_dateFormatter setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss'.000Z'"];
    v9 = convertToDAOofParams_dateFormatter;
    v10 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    [v9 setTimeZone:v10];
  }

  v11 = [(ASSettingsTaskOofGetResponse *)self startTime];

  if (v11)
  {
    v12 = convertToDAOofParams_dateFormatter;
    v13 = [(ASSettingsTaskOofGetResponse *)self startTime];
    v14 = [v12 dateFromString:v13];
    [v3 setStartTime:v14];
  }

  v15 = [(ASSettingsTaskOofGetResponse *)self endTime];

  if (v15)
  {
    v16 = convertToDAOofParams_dateFormatter;
    v17 = [(ASSettingsTaskOofGetResponse *)self endTime];
    v18 = [v16 dateFromString:v17];
    [v3 setEndTime:v18];
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v19 = [(ASSettingsTaskOofGetResponse *)self oofMessages];
  v20 = [v19 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v44;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v44 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v43 + 1) + 8 * i);
        v25 = [v24 audience];

        if (v25)
        {
          v26 = [v24 audience];
          v27 = [v26 intValue];

          switch(v27)
          {
            case 2:
              v36 = [v24 replyMessage];
              [v3 setExternalMessage:v36];

              v37 = [v24 enabled];
              if (v37)
              {
                v38 = v37;
                v39 = [v24 enabled];
                v40 = [v39 intValue];

                if (v40 == 1)
                {
                  v34 = v3;
                  v35 = 2;
                  goto LABEL_26;
                }
              }

              break;
            case 1:
              v29 = [v24 replyMessage];
              [v3 setExternalMessage:v29];

              v30 = [v24 enabled];
              if (v30)
              {
                v31 = v30;
                v32 = [v24 enabled];
                v33 = [v32 intValue];

                if (v33 == 1 && ![v3 externalState])
                {
                  v34 = v3;
                  v35 = 1;
LABEL_26:
                  [v34 setExternalState:v35];
                  continue;
                }
              }

              break;
            case 0:
              v28 = [v24 replyMessage];
              [v3 setMessage:v28];

              break;
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v21);
  }

  v41 = *MEMORY[0x277D85DE8];

  return v3;
}

@end