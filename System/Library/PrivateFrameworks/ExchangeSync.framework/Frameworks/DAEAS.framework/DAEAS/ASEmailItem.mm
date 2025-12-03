@interface ASEmailItem
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (ASEmailItem)initWithCoder:(id)coder;
- (NSData)meetingRequestMetaData;
- (NSString)meetingRequestUUID;
- (id)description;
- (int)meetingMessageType;
- (int64_t)compare:(id)compare;
- (void)_processApplicationData:(BOOL)data;
- (void)encodeWithCoder:(id)coder;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
- (void)setBCCString:(id)string;
- (void)setCCString:(id)string;
- (void)setFromString:(id)string;
- (void)setMimeData:(id)data;
- (void)setReplyToString:(id)string;
- (void)setToString:(id)string;
@end

@implementation ASEmailItem

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_26 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_26;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_26 = v2;
    acceptsTopLevelLeaves___haveChecked_26 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_26 == 1)
  {
    v2 = parsingLeafNode___result_26;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_26 = v2;
    parsingLeafNode___haveChecked_26 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_26 == 1)
  {
    v2 = parsingWithSubItems___result_26;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_26 = v2;
    parsingWithSubItems___haveChecked_26 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_26 == 1)
  {
    v2 = frontingBasicTypes___result_26;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_26 = v2;
    frontingBasicTypes___haveChecked_26 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_26 == 1)
  {
    v2 = notifyOfUnknownTokens___result_26;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_26 = v2;
    notifyOfUnknownTokens___haveChecked_26 = 1;
  }

  return v2 & 1;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v50.receiver = self;
    v50.super_class = &OBJC_METACLASS___ASEmailItem;
    v6 = objc_msgSendSuper2(&v50, sel_asParseRules);
    v45 = [v6 mutableCopy];

    v42 = objc_alloc(MEMORY[0x277CBEAC0]);
    v39 = [ASParseRule alloc];
    v38 = objc_opt_class();
    v36 = MEMORY[0x277CBEAC0];
    v48 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:34 objectClass:objc_opt_class() setterMethod:sel__setMeetingRequest_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v49 = [MEMORY[0x277CCABB0] numberWithInt:546];
    v7 = [ASParseRule alloc];
    v8 = objc_opt_class();
    selfCopy = self;
    v9 = MEMORY[0x277CBEAC0];
    v41 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:2 token:5 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v40 = [MEMORY[0x277CCABB0] numberWithInt:517];
    v37 = [v9 dictionaryWithObjectsAndKeys:{v41, v40, 0}];
    v47 = [(ASParseRule *)v7 initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:6 objectClass:v8 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v37];
    v32 = [MEMORY[0x277CCABB0] numberWithInt:518];
    v10 = [ASParseRule alloc];
    v11 = objc_opt_class();
    v12 = MEMORY[0x277CBEAC0];
    v35 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:17 token:15 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v34 = [MEMORY[0x277CCABB0] numberWithInt:4367];
    v33 = [v12 dictionaryWithObjectsAndKeys:{v35, v34, 0}];
    v31 = [(ASParseRule *)v10 initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:14 objectClass:v11 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v33];
    v46 = [MEMORY[0x277CCABB0] numberWithInt:4366];
    v30 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:10 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v29 = [MEMORY[0x277CCABB0] numberWithInt:4362];
    v28 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:58 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v27 = [MEMORY[0x277CCABB0] numberWithInt:570];
    v13 = [ASParseRule alloc];
    v14 = objc_opt_class();
    v15 = MEMORY[0x277CBEAC0];
    v16 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:2 token:28 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:540];
    v18 = [v15 dictionaryWithObjectsAndKeys:{v16, v17, 0}];
    v19 = [(ASParseRule *)v13 initWithMinimumNumber:0 maximumNumber:1 codePage:2 token:27 objectClass:v14 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v18];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:539];
    v21 = [v36 dictionaryWithObjectsAndKeys:{v48, v49, v47, v32, v31, v46, v30, v29, v28, v27, v19, v20, 0}];
    v22 = [(ASParseRule *)v39 initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:29 objectClass:v38 setterMethod:sel_setApplicationData_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v21];
    v23 = [MEMORY[0x277CCABB0] numberWithInt:29];
    v43 = [v42 initWithObjectsAndKeys:{v22, v23, 0}];

    v5 = v45;
    [v45 addEntriesFromDictionary:v43];
    v24 = +[ASItem parseRuleCache];
    v25 = NSStringFromClass(selfCopy);
    [v24 setObject:v45 forKey:v25];
  }

  return v5;
}

- (void)_processApplicationData:(BOOL)data
{
  dataCopy = data;
  applicationData = [(ASChangedCollectionLeaf *)self applicationData];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:534];
  v7 = [applicationData objectForKey:v6];

  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setToString:v7];
    }
  }

  applicationData2 = [(ASChangedCollectionLeaf *)self applicationData];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:535];
  v10 = [applicationData2 objectForKey:v9];

  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setCCString:v10];
    }
  }

  applicationData3 = [(ASChangedCollectionLeaf *)self applicationData];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:5654];
  v13 = [applicationData3 objectForKey:v12];

  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setBCCString:v13];
    }
  }

  applicationData4 = [(ASChangedCollectionLeaf *)self applicationData];
  v15 = [MEMORY[0x277CCABB0] numberWithInt:536];
  v16 = [applicationData4 objectForKey:v15];

  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setFromString:v16];
    }
  }

  applicationData5 = [(ASChangedCollectionLeaf *)self applicationData];
  v18 = [MEMORY[0x277CCABB0] numberWithInt:537];
  v19 = [applicationData5 objectForKey:v18];

  if (v19)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setReplyToString:v19];
    }
  }

  applicationData6 = [(ASChangedCollectionLeaf *)self applicationData];
  v21 = [MEMORY[0x277CCABB0] numberWithInt:527];
  v22 = [applicationData6 objectForKey:v21];

  if (v22)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v22];
      [(ASEmailItem *)self setDate:v23];
    }
  }

  applicationData7 = [(ASChangedCollectionLeaf *)self applicationData];
  v25 = [MEMORY[0x277CCABB0] numberWithInt:532];
  v26 = [applicationData7 objectForKey:v25];

  if (v26)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setSubject:v26];
    }
  }

  applicationData8 = [(ASChangedCollectionLeaf *)self applicationData];
  v28 = [MEMORY[0x277CCABB0] numberWithInt:529];
  v29 = [applicationData8 objectForKey:v28];

  if (v29)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setDisplayTo:v29];
    }
  }

  applicationData9 = [(ASChangedCollectionLeaf *)self applicationData];
  v31 = [MEMORY[0x277CCABB0] numberWithInt:530];
  v32 = [applicationData9 objectForKey:v31];

  if (v32)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      -[ASEmailItem setImportance:](self, "setImportance:", [v32 intValue]);
    }
  }

  applicationData10 = [(ASChangedCollectionLeaf *)self applicationData];
  v34 = [MEMORY[0x277CCABB0] numberWithInt:533];
  v35 = [applicationData10 objectForKey:v34];

  if (v35)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      -[ASEmailItem setRead:](self, "setRead:", [v35 intValue] != 0);
    }
  }

  applicationData11 = [(ASChangedCollectionLeaf *)self applicationData];
  v37 = [MEMORY[0x277CCABB0] numberWithInt:5643];
  v38 = [applicationData11 objectForKey:v37];

  if (v38)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      -[ASEmailItem setLastVerb:](self, "setLastVerb:", [v38 intValue]);
    }
  }

  applicationData12 = [(ASChangedCollectionLeaf *)self applicationData];
  v40 = [MEMORY[0x277CCABB0] numberWithInt:5646];
  v41 = [applicationData12 objectForKey:v40];

  if (v41)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setSender:v41];
    }
  }

  applicationData13 = [(ASChangedCollectionLeaf *)self applicationData];
  v43 = [MEMORY[0x277CCABB0] numberWithInt:5653];
  v44 = [applicationData13 objectForKey:v43];

  if (v44)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      -[ASEmailItem setIsDraft:](self, "setIsDraft:", [v44 intValue] != 0);
    }
  }

  applicationData14 = [(ASChangedCollectionLeaf *)self applicationData];
  v46 = [MEMORY[0x277CCABB0] numberWithInt:6420];
  v47 = [applicationData14 objectForKey:v46];

  if (v47)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setPreview:v47];
    }
  }

  applicationData15 = [(ASChangedCollectionLeaf *)self applicationData];
  v49 = [MEMORY[0x277CCABB0] numberWithInt:6421];
  v50 = [applicationData15 objectForKey:v49];

  if (v50)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      -[ASEmailItem setHasAttachments:](self, "setHasAttachments:", [v50 intValue] != 0);
    }
  }

  applicationData16 = [(ASChangedCollectionLeaf *)self applicationData];
  v95 = [applicationData16 objectForKeyedSubscript:&unk_285D57C90];

  if (v95)
  {
    v52 = [MEMORY[0x277CCABB0] numberWithInt:4358];
    v53 = [v95 objectForKey:v52];

    if (v53)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        -[ASEmailItem setBodyType:](self, "setBodyType:", [v53 intValue]);
      }
    }

    bodyType = [(ASEmailItem *)self bodyType];
    v55 = [MEMORY[0x277CCABB0] numberWithInt:4363];
    v56 = [v95 objectForKey:v55];

    if (bodyType != 4)
    {
      if (v56)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [(ASEmailItem *)self setBody:v56];
        }
      }

      v57 = [MEMORY[0x277CCABB0] numberWithInt:4364];
      v58 = [v95 objectForKey:v57];

      if (v58)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          -[ASEmailItem setBodySize:](self, "setBodySize:", [v58 intValue]);
        }
      }

      v59 = [MEMORY[0x277CCABB0] numberWithInt:4365];
      v56 = [v95 objectForKey:v59];

      if (v56)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          -[ASEmailItem setBodyTruncated:](self, "setBodyTruncated:", [v56 intValue] != 0);
        }
      }

      goto LABEL_73;
    }
  }

  else
  {
    applicationData17 = [(ASChangedCollectionLeaf *)self applicationData];
    v61 = [MEMORY[0x277CCABB0] numberWithInt:524];
    v62 = [applicationData17 objectForKey:v61];

    if (v62)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(ASEmailItem *)self setBody:v62];
      }
    }

    applicationData18 = [(ASChangedCollectionLeaf *)self applicationData];
    v64 = [MEMORY[0x277CCABB0] numberWithInt:525];
    v65 = [applicationData18 objectForKey:v64];

    if (v65)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        -[ASEmailItem setBodySize:](self, "setBodySize:", [v65 intValue]);
      }
    }

    applicationData19 = [(ASChangedCollectionLeaf *)self applicationData];
    v67 = [MEMORY[0x277CCABB0] numberWithInt:526];
    v68 = [applicationData19 objectForKey:v67];

    if (v68)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        -[ASEmailItem setBodyTruncated:](self, "setBodyTruncated:", [v68 intValue] != 0);
      }
    }

    applicationData20 = [(ASChangedCollectionLeaf *)self applicationData];
    v70 = [MEMORY[0x277CCABB0] numberWithInt:566];
    v56 = [applicationData20 objectForKey:v70];
  }

  if (v56)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setMimeData:v56];
    }
  }

LABEL_73:

  applicationData21 = [(ASChangedCollectionLeaf *)self applicationData];
  v72 = [MEMORY[0x277CCABB0] numberWithInt:531];
  v73 = [applicationData21 objectForKey:v72];

  if (v73)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setMessageClass:v73];
    }
  }

  applicationData22 = [(ASChangedCollectionLeaf *)self applicationData];
  v75 = [MEMORY[0x277CCABB0] numberWithInt:4366];
  v76 = [applicationData22 objectForKey:v75];

  if (v76)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setAttachments:v76];
    }
  }

  if (!self->_attachments)
  {
    applicationData23 = [(ASChangedCollectionLeaf *)self applicationData];
    v78 = [MEMORY[0x277CCABB0] numberWithInt:518];
    v79 = [applicationData23 objectForKey:v78];

    if (v79)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(ASEmailItem *)self setAttachments:v79];
      }
    }
  }

  applicationData24 = [(ASChangedCollectionLeaf *)self applicationData];
  v81 = [MEMORY[0x277CCABB0] numberWithInt:546];
  v82 = [applicationData24 objectForKey:v81];

  if (v82)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self _setMeetingRequest:v82];
    }
  }

  applicationData25 = [(ASChangedCollectionLeaf *)self applicationData];
  v84 = [MEMORY[0x277CCABB0] numberWithInt:565];
  v85 = [applicationData25 objectForKey:v84];

  if (v85)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setThreadTopic:v85];
    }
  }

  applicationData26 = [(ASChangedCollectionLeaf *)self applicationData];
  v87 = [MEMORY[0x277CCABB0] numberWithInt:5641];
  v88 = [applicationData26 objectForKey:v87];

  if (v88)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setConversationId:v88];
    }
  }

  applicationData27 = [(ASChangedCollectionLeaf *)self applicationData];
  v90 = [MEMORY[0x277CCABB0] numberWithInt:5642];
  v91 = [applicationData27 objectForKey:v90];

  if (v91)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setConversationIndex:v91];
    }
  }

  applicationData28 = [(ASChangedCollectionLeaf *)self applicationData];
  v93 = [applicationData28 objectForKeyedSubscript:&unk_285D57CA8];

  if (v93)
  {
    v94 = [v93 objectForKeyedSubscript:&unk_285D57CC0];
    -[ASEmailItem setFlagged:](self, "setFlagged:", [v94 intValue] == 2);
  }

  if (dataCopy)
  {
    [(ASChangedCollectionLeaf *)self setApplicationData:0];
  }
}

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  v64 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  rootCopy = root;
  parentCopy = parent;
  dictCopy = dict;
  callbackDictCopy = callbackDict;
  accountCopy = account;
  if ([(ASEmailItem *)self _isSearchResult])
  {
    v22Parent = 0;
    parent = 0;
  }

  else
  {
    parent = [parentCopy parent];
    collectionId = [parent collectionId];
    [(ASEmailItem *)self setFolderId:collectionId];

    v20Parent = [parent parent];
    v22Parent = [v20Parent parent];
  }

  v62.receiver = self;
  v62.super_class = ASEmailItem;
  [(ASChangedCollectionLeaf *)&v62 parseASParseContext:contextCopy root:rootCopy parent:parentCopy callbackDict:dictCopy streamCallbackDict:callbackDictCopy account:accountCopy];
  parsingState = self->super.super._parsingState;
  if (parsingState >= 2)
  {
    if (parsingState == 4 || parsingState == 3)
    {
      self->super.super._parsingState = parsingState;
      goto LABEL_8;
    }

    v56 = parent;
    if (![(ASChangedCollectionLeaf *)self changeType]|| [(ASChangedCollectionLeaf *)self changeType]== 1 || [(ASChangedCollectionLeaf *)self changeType]== 3)
    {
      v51 = callbackDictCopy;
      v52 = dictCopy;
      v53 = parentCopy;
      v54 = rootCopy;
      v55 = contextCopy;
      [(ASEmailItem *)self postProcessApplicationData];
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      attachments = [(ASEmailItem *)self attachments];
      v26 = [attachments countByEnumeratingWithState:&v58 objects:v63 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v59;
        v29 = MEMORY[0x277CBEC38];
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v59 != v28)
            {
              objc_enumerationMutation(attachments);
            }

            v31 = *(*(&v58 + 1) + 8 * i);
            protocol = [accountCopy protocol];
            allAttachmentsAreBase64ed = [protocol allAttachmentsAreBase64ed];

            if (allAttachmentsAreBase64ed)
            {
              [v31 setHasBase64Transfer:v29];
            }
          }

          v27 = [attachments countByEnumeratingWithState:&v58 objects:v63 count:16];
        }

        while (v27);
      }

      meetingRequest = [(ASEmailItem *)self meetingRequest];
      [meetingRequest takeValuesFromParentEmailForAccount:accountCopy];

      rootCopy = v54;
      contextCopy = v55;
      dictCopy = v52;
      parentCopy = v53;
      callbackDictCopy = v51;
      parent = v56;
    }

    if (![(ASEmailItem *)self _isSearchResult])
    {
      if ([(ASChangedCollectionLeaf *)self changeType])
      {
        if ([(ASChangedCollectionLeaf *)self changeType]== 2)
        {
          serverID = [(ASChangedCollectionLeaf *)self serverID];
          [v22Parent addDeliveryIdToClear:serverID];
        }

        else
        {
          if ([(ASChangedCollectionLeaf *)self changeType]!= 7)
          {
            goto LABEL_8;
          }

          serverID = [(ASChangedCollectionLeaf *)self serverID];
          [v22Parent addDeliveryIdToSoftClear:serverID];
        }

LABEL_45:

        goto LABEL_8;
      }

      meetingRequest2 = [(ASEmailItem *)self meetingRequest];

      if (meetingRequest2)
      {
        messageClass = [(ASEmailItem *)self messageClass];

        if (messageClass)
        {
          messageClass2 = [(ASEmailItem *)self messageClass];
          messageClass = 1;
          v39 = [messageClass2 compare:@"IPM.Schedule.Meeting.Request" options:1 range:{0, objc_msgSend(@"IPM.Schedule.Meeting.Request", "length")}];

          if (v39)
          {
            messageClass3 = [(ASEmailItem *)self messageClass];
            v41 = [messageClass3 compare:@"IPM.Schedule.Meeting.Canceled" options:1 range:{0, objc_msgSend(@"IPM.Schedule.Meeting.Canceled", "length")}];

            if (v41)
            {
              messageClass4 = [(ASEmailItem *)self messageClass];
              v43 = [messageClass4 compare:@"IPM.Schedule.Meeting.Resp.Pos" options:1 range:{0, objc_msgSend(@"IPM.Schedule.Meeting.Resp.Pos", "length")}];

              if (v43)
              {
                messageClass5 = [(ASEmailItem *)self messageClass];
                v45 = [messageClass5 compare:@"IPM.Schedule.Meeting.Resp.Tent" options:1 range:{0, objc_msgSend(@"IPM.Schedule.Meeting.Resp.Tent", "length")}];

                if (v45)
                {
                  messageClass6 = [(ASEmailItem *)self messageClass];
                  v47 = [messageClass6 compare:@"IPM.Schedule.Meeting.Resp.Neg" options:1 range:{0, objc_msgSend(@"IPM.Schedule.Meeting.Resp.Neg", "length")}];

                  if (v47)
                  {
                    messageClass7 = [(ASEmailItem *)self messageClass];
                    v49 = [messageClass7 compare:@"IPM.Schedule.Meeting.Notification.Forward" options:1 range:{0, objc_msgSend(@"IPM.Schedule.Meeting.Notification.Forward", "length")}];

                    if (v49)
                    {
                      messageClass = 0;
                    }

                    else
                    {
                      messageClass = 6;
                    }
                  }

                  else
                  {
                    messageClass = 5;
                  }
                }

                else
                {
                  messageClass = 4;
                }
              }

              else
              {
                messageClass = 3;
              }
            }

            else
            {
              messageClass = 2;
            }
          }
        }

        meetingRequest3 = [(ASEmailItem *)self meetingRequest];
        [meetingRequest3 setMeetingClassType:messageClass];

        parent = v56;
        if ([accountCopy enabledForDADataclass:4])
        {
          if ([v56 sniffableTypeForAccount:accountCopy] == 1)
          {
            serverID = [(ASEmailItem *)self meetingRequestMetaData];
            [v22Parent addMeetingRequestData:serverID];
            goto LABEL_45;
          }
        }
      }
    }
  }

LABEL_8:

  v24 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v26 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v25 = NSStringFromClass(v3);
  v24 = [(ASEmailItem *)self to];
  v23 = [(ASEmailItem *)self cc];
  from = [(ASEmailItem *)self from];
  replyTo = [(ASEmailItem *)self replyTo];
  date = [(ASEmailItem *)self date];
  subject = [(ASEmailItem *)self subject];
  displayTo = [(ASEmailItem *)self displayTo];
  importance = [(ASEmailItem *)self importance];
  read = [(ASEmailItem *)self read];
  flagged = [(ASEmailItem *)self flagged];
  lastVerb = [(ASEmailItem *)self lastVerb];
  bodySize = [(ASEmailItem *)self bodySize];
  bodyTruncated = [(ASEmailItem *)self bodyTruncated];
  messageClass = [(ASEmailItem *)self messageClass];
  body = [(ASEmailItem *)self body];
  attachments = [(ASEmailItem *)self attachments];
  meetingRequest = [(ASEmailItem *)self meetingRequest];
  threadTopic = [(ASEmailItem *)self threadTopic];
  mimeData = [(ASEmailItem *)self mimeData];
  v6 = [mimeData length];
  longID = [(ASEmailItem *)self longID];
  conversationId = [(ASEmailItem *)self conversationId];
  conversationIndex = [(ASEmailItem *)self conversationIndex];
  v27 = [v26 stringWithFormat:@"<%@: To: %@\nCc: %@\nFrom: %@\nReplyTo: %@\nDate: %@\nSubject: %@\nDisplayTo: %@\nImportance %d\nRead %x\nFlagged %x\nLastVerb %x\nBody Size %d\nBodyTruncated %x\nMessage Class %@\nBody %@\nAttachments %@\nMeeting Request %@\nThread Topic %@\nMIMEData <data of size %ld>\nLongID %@\nConversationID %@\nConversation Index %@>", v25, v24, v23, from, replyTo, date, subject, displayTo, importance, read, flagged, lastVerb, bodySize, bodyTruncated, messageClass, body, attachments, meetingRequest, threadTopic, v6, longID, conversationId, conversationIndex];

  return v27;
}

- (int64_t)compare:(id)compare
{
  date = [compare date];
  date2 = [(ASEmailItem *)self date];
  v6 = [date compare:date2];

  return v6;
}

- (NSString)meetingRequestUUID
{
  meetingRequest = [(ASEmailItem *)self meetingRequest];
  eventUID = [meetingRequest eventUID];
  uidForCalFramework = [eventUID uidForCalFramework];

  return uidForCalFramework;
}

- (NSData)meetingRequestMetaData
{
  v2 = MEMORY[0x277CCAAB0];
  meetingRequest = [(ASEmailItem *)self meetingRequest];
  v4 = [v2 archivedDataWithRootObject:meetingRequest];

  return v4;
}

- (int)meetingMessageType
{
  meetingRequest = [(ASEmailItem *)self meetingRequest];

  if (!meetingRequest)
  {
    return 0;
  }

  meetingRequest2 = [(ASEmailItem *)self meetingRequest];
  meetingMessageType = [meetingRequest2 meetingMessageType];

  return meetingMessageType;
}

- (void)setMimeData:(id)data
{
  dataCopy = data;
  mimeData = [(ASEmailItem *)self mimeData];
  if (mimeData != dataCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_5;
    }

    v6 = [(NSString *)dataCopy mutableCopy];

    [v6 replaceOccurrencesOfString:@"\r\n" withString:@"\n" options:0 range:{0, objc_msgSend(v6, "length")}];
    [v6 replaceOccurrencesOfString:@"\r" withString:@"\n" options:0 range:{0, objc_msgSend(v6, "length")}];
    v7 = v6;
    mimeData = self->_mimeData;
    dataCopy = v7;
    self->_mimeData = v7;
  }

LABEL_5:
}

- (void)setToString:(id)string
{
  v4 = [MEMORY[0x277D24F40] addressListFromEncodedString:string];
  [(ASEmailItem *)self setTo:v4];
}

- (void)setCCString:(id)string
{
  v4 = [MEMORY[0x277D24F40] addressListFromEncodedString:string];
  [(ASEmailItem *)self setCc:v4];
}

- (void)setBCCString:(id)string
{
  v4 = [MEMORY[0x277D24F40] addressListFromEncodedString:string];
  [(ASEmailItem *)self setBcc:v4];
}

- (void)setFromString:(id)string
{
  v4 = [MEMORY[0x277D24F40] addressListFromEncodedString:string];
  [(ASEmailItem *)self setFrom:v4];
}

- (void)setReplyToString:(id)string
{
  v4 = [MEMORY[0x277D24F40] addressListFromEncodedString:string];
  [(ASEmailItem *)self setReplyTo:v4];
}

- (ASEmailItem)initWithCoder:(id)coder
{
  v50[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [(ASEmailItem *)a2 initWithCoder:?];
  }

  v49.receiver = self;
  v49.super_class = ASEmailItem;
  v6 = [(ASChangedCollectionLeaf *)&v49 initWithCoder:coderCopy];
  if (v6)
  {
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"ASETo"];
    [(ASEmailItem *)v6 setTo:v10];

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"ASECC"];
    [(ASEmailItem *)v6 setCc:v14];

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"ASEFrom"];
    [(ASEmailItem *)v6 setFrom:v18];

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"ASEReplyTo"];
    [(ASEmailItem *)v6 setReplyTo:v22];

    v23 = MEMORY[0x277CBEB98];
    v50[0] = objc_opt_class();
    v50[1] = objc_opt_class();
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
    v25 = [v23 setWithArray:v24];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"ASEDate"];
    [(ASEmailItem *)v6 setDate:v26];

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ASESubject"];
    [(ASEmailItem *)v6 setSubject:v27];

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ASEDisplayTo"];
    [(ASEmailItem *)v6 setDisplayTo:v28];

    -[ASEmailItem setImportance:](v6, "setImportance:", [coderCopy decodeIntForKey:@"ASEImportance"]);
    -[ASEmailItem setRead:](v6, "setRead:", [coderCopy decodeBoolForKey:@"ASERead"]);
    -[ASEmailItem setFlagged:](v6, "setFlagged:", [coderCopy decodeBoolForKey:@"ASEFlagged"]);
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ASEBody"];
    [(ASEmailItem *)v6 setBody:v29];

    -[ASEmailItem setBodySize:](v6, "setBodySize:", [coderCopy decodeIntForKey:@"ASEBodySize"]);
    -[ASEmailItem setBodyTruncated:](v6, "setBodyTruncated:", [coderCopy decodeBoolForKey:@"ASEBodyTruncated"]);
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ASEMessageClass"];
    [(ASEmailItem *)v6 setMessageClass:v30];

    v31 = MEMORY[0x277CBEB98];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"ASEAttachments"];
    [(ASEmailItem *)v6 setAttachments:v34];

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ASEMeetingRequest"];
    [(ASEmailItem *)v6 _setMeetingRequest:v35];

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ASEThreadTopic"];
    [(ASEmailItem *)v6 setThreadTopic:v36];

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ASEConversationId"];
    [(ASEmailItem *)v6 setConversationId:v37];

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ASEConversationIndex"];
    [(ASEmailItem *)v6 setConversationIndex:v38];

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ASEMIMEData"];
    [(ASEmailItem *)v6 setMimeData:v39];

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ASEFolderId"];
    [(ASEmailItem *)v6 setFolderId:v40];

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ASELongID"];
    [(ASEmailItem *)v6 setLongID:v41];

    -[ASEmailItem setBodyType:](v6, "setBodyType:", [coderCopy decodeIntForKey:@"ASEBodyType"]);
    -[ASEmailItem setReadIsSet:](v6, "setReadIsSet:", [coderCopy decodeBoolForKey:@"ASEReadIsSet"]);
    -[ASEmailItem setFlaggedIsSet:](v6, "setFlaggedIsSet:", [coderCopy decodeBoolForKey:@"ASEFlaggedIsSet"]);
    -[ASEmailItem setLastVerb:](v6, "setLastVerb:", [coderCopy decodeIntForKey:@"ASELastVerb"]);
    -[ASEmailItem setVerbIsSet:](v6, "setVerbIsSet:", [coderCopy decodeBoolForKey:@"ASEVerbIsSet"]);
    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ASESender"];
    [(ASEmailItem *)v6 setSender:v42];

    v43 = MEMORY[0x277CBEB98];
    v44 = objc_opt_class();
    v45 = [v43 setWithObjects:{v44, objc_opt_class(), 0}];
    v46 = [coderCopy decodeObjectOfClasses:v45 forKey:@"ASEBCC"];
    [(ASEmailItem *)v6 setBcc:v46];

    -[ASEmailItem setIsDraft:](v6, "setIsDraft:", [coderCopy decodeBoolForKey:@"ASEIsDraft"]);
  }

  v47 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [(ASEmailItem *)a2 encodeWithCoder:?];
  }

  v25.receiver = self;
  v25.super_class = ASEmailItem;
  [(ASChangedCollectionLeaf *)&v25 encodeWithCoder:coderCopy];
  v6 = [(ASEmailItem *)self to];
  [coderCopy encodeObject:v6 forKey:@"ASETo"];

  v7 = [(ASEmailItem *)self cc];
  [coderCopy encodeObject:v7 forKey:@"ASECC"];

  from = [(ASEmailItem *)self from];
  [coderCopy encodeObject:from forKey:@"ASEFrom"];

  replyTo = [(ASEmailItem *)self replyTo];
  [coderCopy encodeObject:replyTo forKey:@"ASEReplyTo"];

  date = [(ASEmailItem *)self date];
  [coderCopy encodeObject:date forKey:@"ASEDate"];

  subject = [(ASEmailItem *)self subject];
  [coderCopy encodeObject:subject forKey:@"ASESubject"];

  displayTo = [(ASEmailItem *)self displayTo];
  [coderCopy encodeObject:displayTo forKey:@"ASEDisplayTo"];

  [coderCopy encodeInt:-[ASEmailItem importance](self forKey:{"importance"), @"ASEImportance"}];
  [coderCopy encodeBool:-[ASEmailItem read](self forKey:{"read"), @"ASERead"}];
  [coderCopy encodeBool:-[ASEmailItem flagged](self forKey:{"flagged"), @"ASEFlagged"}];
  body = [(ASEmailItem *)self body];
  [coderCopy encodeObject:body forKey:@"ASEBody"];

  [coderCopy encodeInt:-[ASEmailItem bodySize](self forKey:{"bodySize"), @"ASEBodySize"}];
  [coderCopy encodeBool:-[ASEmailItem bodyTruncated](self forKey:{"bodyTruncated"), @"ASEBodyTruncated"}];
  messageClass = [(ASEmailItem *)self messageClass];
  [coderCopy encodeObject:messageClass forKey:@"ASEMessageClass"];

  attachments = [(ASEmailItem *)self attachments];
  [coderCopy encodeObject:attachments forKey:@"ASEAttachments"];

  meetingRequest = [(ASEmailItem *)self meetingRequest];
  [coderCopy encodeObject:meetingRequest forKey:@"ASEMeetingRequest"];

  threadTopic = [(ASEmailItem *)self threadTopic];
  [coderCopy encodeObject:threadTopic forKey:@"ASEThreadTopic"];

  conversationId = [(ASEmailItem *)self conversationId];
  [coderCopy encodeObject:conversationId forKey:@"ASEConversationId"];

  conversationIndex = [(ASEmailItem *)self conversationIndex];
  [coderCopy encodeObject:conversationIndex forKey:@"ASEConversationIndex"];

  mimeData = [(ASEmailItem *)self mimeData];
  [coderCopy encodeObject:mimeData forKey:@"ASEMIMEData"];

  folderId = [(ASEmailItem *)self folderId];
  [coderCopy encodeObject:folderId forKey:@"ASEFolderId"];

  longID = [(ASEmailItem *)self longID];
  [coderCopy encodeObject:longID forKey:@"ASELongID"];

  [coderCopy encodeInt:-[ASEmailItem bodyType](self forKey:{"bodyType"), @"ASEBodyType"}];
  [coderCopy encodeBool:-[ASEmailItem readIsSet](self forKey:{"readIsSet"), @"ASEReadIsSet"}];
  [coderCopy encodeBool:-[ASEmailItem flaggedIsSet](self forKey:{"flaggedIsSet"), @"ASEFlaggedIsSet"}];
  [coderCopy encodeInt:-[ASEmailItem lastVerb](self forKey:{"lastVerb"), @"ASELastVerb"}];
  [coderCopy encodeBool:-[ASEmailItem verbIsSet](self forKey:{"verbIsSet"), @"ASEVerbIsSet"}];
  sender = [(ASEmailItem *)self sender];
  [coderCopy encodeObject:sender forKey:@"ASESender"];

  v24 = [(ASEmailItem *)self bcc];
  [coderCopy encodeObject:v24 forKey:@"ASEBCC"];

  [coderCopy encodeBool:-[ASEmailItem isDraft](self forKey:{"isDraft"), @"ASEIsDraft"}];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASEmailItem.m" lineNumber:284 description:@"We can't unarchive an email if the coder doesn't allow keyed coding"];
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASEmailItem.m" lineNumber:331 description:@"We can't archive an email if the coder doesn't allow keyed coding"];
}

@end