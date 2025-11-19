@interface ASEmailItem
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (ASEmailItem)initWithCoder:(id)a3;
- (NSData)meetingRequestMetaData;
- (NSString)meetingRequestUUID;
- (id)description;
- (int)meetingMessageType;
- (int64_t)compare:(id)a3;
- (void)_processApplicationData:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8;
- (void)setBCCString:(id)a3;
- (void)setCCString:(id)a3;
- (void)setFromString:(id)a3;
- (void)setMimeData:(id)a3;
- (void)setReplyToString:(id)a3;
- (void)setToString:(id)a3;
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
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
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
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
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
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
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
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
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
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_26 = v2;
    notifyOfUnknownTokens___haveChecked_26 = 1;
  }

  return v2 & 1;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v50.receiver = a1;
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
    v44 = a1;
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
    v25 = NSStringFromClass(v44);
    [v24 setObject:v45 forKey:v25];
  }

  return v5;
}

- (void)_processApplicationData:(BOOL)a3
{
  v3 = a3;
  v5 = [(ASChangedCollectionLeaf *)self applicationData];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:534];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setToString:v7];
    }
  }

  v8 = [(ASChangedCollectionLeaf *)self applicationData];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:535];
  v10 = [v8 objectForKey:v9];

  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setCCString:v10];
    }
  }

  v11 = [(ASChangedCollectionLeaf *)self applicationData];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:5654];
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setBCCString:v13];
    }
  }

  v14 = [(ASChangedCollectionLeaf *)self applicationData];
  v15 = [MEMORY[0x277CCABB0] numberWithInt:536];
  v16 = [v14 objectForKey:v15];

  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setFromString:v16];
    }
  }

  v17 = [(ASChangedCollectionLeaf *)self applicationData];
  v18 = [MEMORY[0x277CCABB0] numberWithInt:537];
  v19 = [v17 objectForKey:v18];

  if (v19)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setReplyToString:v19];
    }
  }

  v20 = [(ASChangedCollectionLeaf *)self applicationData];
  v21 = [MEMORY[0x277CCABB0] numberWithInt:527];
  v22 = [v20 objectForKey:v21];

  if (v22)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v22];
      [(ASEmailItem *)self setDate:v23];
    }
  }

  v24 = [(ASChangedCollectionLeaf *)self applicationData];
  v25 = [MEMORY[0x277CCABB0] numberWithInt:532];
  v26 = [v24 objectForKey:v25];

  if (v26)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setSubject:v26];
    }
  }

  v27 = [(ASChangedCollectionLeaf *)self applicationData];
  v28 = [MEMORY[0x277CCABB0] numberWithInt:529];
  v29 = [v27 objectForKey:v28];

  if (v29)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setDisplayTo:v29];
    }
  }

  v30 = [(ASChangedCollectionLeaf *)self applicationData];
  v31 = [MEMORY[0x277CCABB0] numberWithInt:530];
  v32 = [v30 objectForKey:v31];

  if (v32)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      -[ASEmailItem setImportance:](self, "setImportance:", [v32 intValue]);
    }
  }

  v33 = [(ASChangedCollectionLeaf *)self applicationData];
  v34 = [MEMORY[0x277CCABB0] numberWithInt:533];
  v35 = [v33 objectForKey:v34];

  if (v35)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      -[ASEmailItem setRead:](self, "setRead:", [v35 intValue] != 0);
    }
  }

  v36 = [(ASChangedCollectionLeaf *)self applicationData];
  v37 = [MEMORY[0x277CCABB0] numberWithInt:5643];
  v38 = [v36 objectForKey:v37];

  if (v38)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      -[ASEmailItem setLastVerb:](self, "setLastVerb:", [v38 intValue]);
    }
  }

  v39 = [(ASChangedCollectionLeaf *)self applicationData];
  v40 = [MEMORY[0x277CCABB0] numberWithInt:5646];
  v41 = [v39 objectForKey:v40];

  if (v41)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setSender:v41];
    }
  }

  v42 = [(ASChangedCollectionLeaf *)self applicationData];
  v43 = [MEMORY[0x277CCABB0] numberWithInt:5653];
  v44 = [v42 objectForKey:v43];

  if (v44)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      -[ASEmailItem setIsDraft:](self, "setIsDraft:", [v44 intValue] != 0);
    }
  }

  v45 = [(ASChangedCollectionLeaf *)self applicationData];
  v46 = [MEMORY[0x277CCABB0] numberWithInt:6420];
  v47 = [v45 objectForKey:v46];

  if (v47)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setPreview:v47];
    }
  }

  v48 = [(ASChangedCollectionLeaf *)self applicationData];
  v49 = [MEMORY[0x277CCABB0] numberWithInt:6421];
  v50 = [v48 objectForKey:v49];

  if (v50)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      -[ASEmailItem setHasAttachments:](self, "setHasAttachments:", [v50 intValue] != 0);
    }
  }

  v51 = [(ASChangedCollectionLeaf *)self applicationData];
  v95 = [v51 objectForKeyedSubscript:&unk_285D57C90];

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

    v54 = [(ASEmailItem *)self bodyType];
    v55 = [MEMORY[0x277CCABB0] numberWithInt:4363];
    v56 = [v95 objectForKey:v55];

    if (v54 != 4)
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
    v60 = [(ASChangedCollectionLeaf *)self applicationData];
    v61 = [MEMORY[0x277CCABB0] numberWithInt:524];
    v62 = [v60 objectForKey:v61];

    if (v62)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(ASEmailItem *)self setBody:v62];
      }
    }

    v63 = [(ASChangedCollectionLeaf *)self applicationData];
    v64 = [MEMORY[0x277CCABB0] numberWithInt:525];
    v65 = [v63 objectForKey:v64];

    if (v65)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        -[ASEmailItem setBodySize:](self, "setBodySize:", [v65 intValue]);
      }
    }

    v66 = [(ASChangedCollectionLeaf *)self applicationData];
    v67 = [MEMORY[0x277CCABB0] numberWithInt:526];
    v68 = [v66 objectForKey:v67];

    if (v68)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        -[ASEmailItem setBodyTruncated:](self, "setBodyTruncated:", [v68 intValue] != 0);
      }
    }

    v69 = [(ASChangedCollectionLeaf *)self applicationData];
    v70 = [MEMORY[0x277CCABB0] numberWithInt:566];
    v56 = [v69 objectForKey:v70];
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

  v71 = [(ASChangedCollectionLeaf *)self applicationData];
  v72 = [MEMORY[0x277CCABB0] numberWithInt:531];
  v73 = [v71 objectForKey:v72];

  if (v73)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setMessageClass:v73];
    }
  }

  v74 = [(ASChangedCollectionLeaf *)self applicationData];
  v75 = [MEMORY[0x277CCABB0] numberWithInt:4366];
  v76 = [v74 objectForKey:v75];

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
    v77 = [(ASChangedCollectionLeaf *)self applicationData];
    v78 = [MEMORY[0x277CCABB0] numberWithInt:518];
    v79 = [v77 objectForKey:v78];

    if (v79)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(ASEmailItem *)self setAttachments:v79];
      }
    }
  }

  v80 = [(ASChangedCollectionLeaf *)self applicationData];
  v81 = [MEMORY[0x277CCABB0] numberWithInt:546];
  v82 = [v80 objectForKey:v81];

  if (v82)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self _setMeetingRequest:v82];
    }
  }

  v83 = [(ASChangedCollectionLeaf *)self applicationData];
  v84 = [MEMORY[0x277CCABB0] numberWithInt:565];
  v85 = [v83 objectForKey:v84];

  if (v85)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setThreadTopic:v85];
    }
  }

  v86 = [(ASChangedCollectionLeaf *)self applicationData];
  v87 = [MEMORY[0x277CCABB0] numberWithInt:5641];
  v88 = [v86 objectForKey:v87];

  if (v88)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setConversationId:v88];
    }
  }

  v89 = [(ASChangedCollectionLeaf *)self applicationData];
  v90 = [MEMORY[0x277CCABB0] numberWithInt:5642];
  v91 = [v89 objectForKey:v90];

  if (v91)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEmailItem *)self setConversationIndex:v91];
    }
  }

  v92 = [(ASChangedCollectionLeaf *)self applicationData];
  v93 = [v92 objectForKeyedSubscript:&unk_285D57CA8];

  if (v93)
  {
    v94 = [v93 objectForKeyedSubscript:&unk_285D57CC0];
    -[ASEmailItem setFlagged:](self, "setFlagged:", [v94 intValue] == 2);
  }

  if (v3)
  {
    [(ASChangedCollectionLeaf *)self setApplicationData:0];
  }
}

- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8
{
  v64 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if ([(ASEmailItem *)self _isSearchResult])
  {
    v57 = 0;
    v20 = 0;
  }

  else
  {
    v20 = [v16 parent];
    v21 = [v20 collectionId];
    [(ASEmailItem *)self setFolderId:v21];

    v22 = [v20 parent];
    v57 = [v22 parent];
  }

  v62.receiver = self;
  v62.super_class = ASEmailItem;
  [(ASChangedCollectionLeaf *)&v62 parseASParseContext:v14 root:v15 parent:v16 callbackDict:v17 streamCallbackDict:v18 account:v19];
  parsingState = self->super.super._parsingState;
  if (parsingState >= 2)
  {
    if (parsingState == 4 || parsingState == 3)
    {
      self->super.super._parsingState = parsingState;
      goto LABEL_8;
    }

    v56 = v20;
    if (![(ASChangedCollectionLeaf *)self changeType]|| [(ASChangedCollectionLeaf *)self changeType]== 1 || [(ASChangedCollectionLeaf *)self changeType]== 3)
    {
      v51 = v18;
      v52 = v17;
      v53 = v16;
      v54 = v15;
      v55 = v14;
      [(ASEmailItem *)self postProcessApplicationData];
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v25 = [(ASEmailItem *)self attachments];
      v26 = [v25 countByEnumeratingWithState:&v58 objects:v63 count:16];
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
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v58 + 1) + 8 * i);
            v32 = [v19 protocol];
            v33 = [v32 allAttachmentsAreBase64ed];

            if (v33)
            {
              [v31 setHasBase64Transfer:v29];
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v58 objects:v63 count:16];
        }

        while (v27);
      }

      v34 = [(ASEmailItem *)self meetingRequest];
      [v34 takeValuesFromParentEmailForAccount:v19];

      v15 = v54;
      v14 = v55;
      v17 = v52;
      v16 = v53;
      v18 = v51;
      v20 = v56;
    }

    if (![(ASEmailItem *)self _isSearchResult])
    {
      if ([(ASChangedCollectionLeaf *)self changeType])
      {
        if ([(ASChangedCollectionLeaf *)self changeType]== 2)
        {
          v35 = [(ASChangedCollectionLeaf *)self serverID];
          [v57 addDeliveryIdToClear:v35];
        }

        else
        {
          if ([(ASChangedCollectionLeaf *)self changeType]!= 7)
          {
            goto LABEL_8;
          }

          v35 = [(ASChangedCollectionLeaf *)self serverID];
          [v57 addDeliveryIdToSoftClear:v35];
        }

LABEL_45:

        goto LABEL_8;
      }

      v36 = [(ASEmailItem *)self meetingRequest];

      if (v36)
      {
        v37 = [(ASEmailItem *)self messageClass];

        if (v37)
        {
          v38 = [(ASEmailItem *)self messageClass];
          v37 = 1;
          v39 = [v38 compare:@"IPM.Schedule.Meeting.Request" options:1 range:{0, objc_msgSend(@"IPM.Schedule.Meeting.Request", "length")}];

          if (v39)
          {
            v40 = [(ASEmailItem *)self messageClass];
            v41 = [v40 compare:@"IPM.Schedule.Meeting.Canceled" options:1 range:{0, objc_msgSend(@"IPM.Schedule.Meeting.Canceled", "length")}];

            if (v41)
            {
              v42 = [(ASEmailItem *)self messageClass];
              v43 = [v42 compare:@"IPM.Schedule.Meeting.Resp.Pos" options:1 range:{0, objc_msgSend(@"IPM.Schedule.Meeting.Resp.Pos", "length")}];

              if (v43)
              {
                v44 = [(ASEmailItem *)self messageClass];
                v45 = [v44 compare:@"IPM.Schedule.Meeting.Resp.Tent" options:1 range:{0, objc_msgSend(@"IPM.Schedule.Meeting.Resp.Tent", "length")}];

                if (v45)
                {
                  v46 = [(ASEmailItem *)self messageClass];
                  v47 = [v46 compare:@"IPM.Schedule.Meeting.Resp.Neg" options:1 range:{0, objc_msgSend(@"IPM.Schedule.Meeting.Resp.Neg", "length")}];

                  if (v47)
                  {
                    v48 = [(ASEmailItem *)self messageClass];
                    v49 = [v48 compare:@"IPM.Schedule.Meeting.Notification.Forward" options:1 range:{0, objc_msgSend(@"IPM.Schedule.Meeting.Notification.Forward", "length")}];

                    if (v49)
                    {
                      v37 = 0;
                    }

                    else
                    {
                      v37 = 6;
                    }
                  }

                  else
                  {
                    v37 = 5;
                  }
                }

                else
                {
                  v37 = 4;
                }
              }

              else
              {
                v37 = 3;
              }
            }

            else
            {
              v37 = 2;
            }
          }
        }

        v50 = [(ASEmailItem *)self meetingRequest];
        [v50 setMeetingClassType:v37];

        v20 = v56;
        if ([v19 enabledForDADataclass:4])
        {
          if ([v56 sniffableTypeForAccount:v19] == 1)
          {
            v35 = [(ASEmailItem *)self meetingRequestMetaData];
            [v57 addMeetingRequestData:v35];
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
  v30 = [(ASEmailItem *)self from];
  v22 = [(ASEmailItem *)self replyTo];
  v29 = [(ASEmailItem *)self date];
  v21 = [(ASEmailItem *)self subject];
  v28 = [(ASEmailItem *)self displayTo];
  v20 = [(ASEmailItem *)self importance];
  v19 = [(ASEmailItem *)self read];
  v18 = [(ASEmailItem *)self flagged];
  v17 = [(ASEmailItem *)self lastVerb];
  v16 = [(ASEmailItem *)self bodySize];
  v15 = [(ASEmailItem *)self bodyTruncated];
  v14 = [(ASEmailItem *)self messageClass];
  v13 = [(ASEmailItem *)self body];
  v12 = [(ASEmailItem *)self attachments];
  v11 = [(ASEmailItem *)self meetingRequest];
  v4 = [(ASEmailItem *)self threadTopic];
  v5 = [(ASEmailItem *)self mimeData];
  v6 = [v5 length];
  v7 = [(ASEmailItem *)self longID];
  v8 = [(ASEmailItem *)self conversationId];
  v9 = [(ASEmailItem *)self conversationIndex];
  v27 = [v26 stringWithFormat:@"<%@: To: %@\nCc: %@\nFrom: %@\nReplyTo: %@\nDate: %@\nSubject: %@\nDisplayTo: %@\nImportance %d\nRead %x\nFlagged %x\nLastVerb %x\nBody Size %d\nBodyTruncated %x\nMessage Class %@\nBody %@\nAttachments %@\nMeeting Request %@\nThread Topic %@\nMIMEData <data of size %ld>\nLongID %@\nConversationID %@\nConversation Index %@>", v25, v24, v23, v30, v22, v29, v21, v28, v20, v19, v18, v17, v16, v15, v14, v13, v12, v11, v4, v6, v7, v8, v9];

  return v27;
}

- (int64_t)compare:(id)a3
{
  v4 = [a3 date];
  v5 = [(ASEmailItem *)self date];
  v6 = [v4 compare:v5];

  return v6;
}

- (NSString)meetingRequestUUID
{
  v2 = [(ASEmailItem *)self meetingRequest];
  v3 = [v2 eventUID];
  v4 = [v3 uidForCalFramework];

  return v4;
}

- (NSData)meetingRequestMetaData
{
  v2 = MEMORY[0x277CCAAB0];
  v3 = [(ASEmailItem *)self meetingRequest];
  v4 = [v2 archivedDataWithRootObject:v3];

  return v4;
}

- (int)meetingMessageType
{
  v3 = [(ASEmailItem *)self meetingRequest];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ASEmailItem *)self meetingRequest];
  v5 = [v4 meetingMessageType];

  return v5;
}

- (void)setMimeData:(id)a3
{
  v8 = a3;
  mimeData = [(ASEmailItem *)self mimeData];
  if (mimeData != v8)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_5;
    }

    v6 = [(NSString *)v8 mutableCopy];

    [v6 replaceOccurrencesOfString:@"\r\n" withString:@"\n" options:0 range:{0, objc_msgSend(v6, "length")}];
    [v6 replaceOccurrencesOfString:@"\r" withString:@"\n" options:0 range:{0, objc_msgSend(v6, "length")}];
    v7 = v6;
    mimeData = self->_mimeData;
    v8 = v7;
    self->_mimeData = v7;
  }

LABEL_5:
}

- (void)setToString:(id)a3
{
  v4 = [MEMORY[0x277D24F40] addressListFromEncodedString:a3];
  [(ASEmailItem *)self setTo:v4];
}

- (void)setCCString:(id)a3
{
  v4 = [MEMORY[0x277D24F40] addressListFromEncodedString:a3];
  [(ASEmailItem *)self setCc:v4];
}

- (void)setBCCString:(id)a3
{
  v4 = [MEMORY[0x277D24F40] addressListFromEncodedString:a3];
  [(ASEmailItem *)self setBcc:v4];
}

- (void)setFromString:(id)a3
{
  v4 = [MEMORY[0x277D24F40] addressListFromEncodedString:a3];
  [(ASEmailItem *)self setFrom:v4];
}

- (void)setReplyToString:(id)a3
{
  v4 = [MEMORY[0x277D24F40] addressListFromEncodedString:a3];
  [(ASEmailItem *)self setReplyTo:v4];
}

- (ASEmailItem)initWithCoder:(id)a3
{
  v50[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([v5 allowsKeyedCoding] & 1) == 0)
  {
    [(ASEmailItem *)a2 initWithCoder:?];
  }

  v49.receiver = self;
  v49.super_class = ASEmailItem;
  v6 = [(ASChangedCollectionLeaf *)&v49 initWithCoder:v5];
  if (v6)
  {
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v5 decodeObjectOfClasses:v9 forKey:@"ASETo"];
    [(ASEmailItem *)v6 setTo:v10];

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v5 decodeObjectOfClasses:v13 forKey:@"ASECC"];
    [(ASEmailItem *)v6 setCc:v14];

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v5 decodeObjectOfClasses:v17 forKey:@"ASEFrom"];
    [(ASEmailItem *)v6 setFrom:v18];

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [v5 decodeObjectOfClasses:v21 forKey:@"ASEReplyTo"];
    [(ASEmailItem *)v6 setReplyTo:v22];

    v23 = MEMORY[0x277CBEB98];
    v50[0] = objc_opt_class();
    v50[1] = objc_opt_class();
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
    v25 = [v23 setWithArray:v24];
    v26 = [v5 decodeObjectOfClasses:v25 forKey:@"ASEDate"];
    [(ASEmailItem *)v6 setDate:v26];

    v27 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ASESubject"];
    [(ASEmailItem *)v6 setSubject:v27];

    v28 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ASEDisplayTo"];
    [(ASEmailItem *)v6 setDisplayTo:v28];

    -[ASEmailItem setImportance:](v6, "setImportance:", [v5 decodeIntForKey:@"ASEImportance"]);
    -[ASEmailItem setRead:](v6, "setRead:", [v5 decodeBoolForKey:@"ASERead"]);
    -[ASEmailItem setFlagged:](v6, "setFlagged:", [v5 decodeBoolForKey:@"ASEFlagged"]);
    v29 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ASEBody"];
    [(ASEmailItem *)v6 setBody:v29];

    -[ASEmailItem setBodySize:](v6, "setBodySize:", [v5 decodeIntForKey:@"ASEBodySize"]);
    -[ASEmailItem setBodyTruncated:](v6, "setBodyTruncated:", [v5 decodeBoolForKey:@"ASEBodyTruncated"]);
    v30 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ASEMessageClass"];
    [(ASEmailItem *)v6 setMessageClass:v30];

    v31 = MEMORY[0x277CBEB98];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    v34 = [v5 decodeObjectOfClasses:v33 forKey:@"ASEAttachments"];
    [(ASEmailItem *)v6 setAttachments:v34];

    v35 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ASEMeetingRequest"];
    [(ASEmailItem *)v6 _setMeetingRequest:v35];

    v36 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ASEThreadTopic"];
    [(ASEmailItem *)v6 setThreadTopic:v36];

    v37 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ASEConversationId"];
    [(ASEmailItem *)v6 setConversationId:v37];

    v38 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ASEConversationIndex"];
    [(ASEmailItem *)v6 setConversationIndex:v38];

    v39 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ASEMIMEData"];
    [(ASEmailItem *)v6 setMimeData:v39];

    v40 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ASEFolderId"];
    [(ASEmailItem *)v6 setFolderId:v40];

    v41 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ASELongID"];
    [(ASEmailItem *)v6 setLongID:v41];

    -[ASEmailItem setBodyType:](v6, "setBodyType:", [v5 decodeIntForKey:@"ASEBodyType"]);
    -[ASEmailItem setReadIsSet:](v6, "setReadIsSet:", [v5 decodeBoolForKey:@"ASEReadIsSet"]);
    -[ASEmailItem setFlaggedIsSet:](v6, "setFlaggedIsSet:", [v5 decodeBoolForKey:@"ASEFlaggedIsSet"]);
    -[ASEmailItem setLastVerb:](v6, "setLastVerb:", [v5 decodeIntForKey:@"ASELastVerb"]);
    -[ASEmailItem setVerbIsSet:](v6, "setVerbIsSet:", [v5 decodeBoolForKey:@"ASEVerbIsSet"]);
    v42 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ASESender"];
    [(ASEmailItem *)v6 setSender:v42];

    v43 = MEMORY[0x277CBEB98];
    v44 = objc_opt_class();
    v45 = [v43 setWithObjects:{v44, objc_opt_class(), 0}];
    v46 = [v5 decodeObjectOfClasses:v45 forKey:@"ASEBCC"];
    [(ASEmailItem *)v6 setBcc:v46];

    -[ASEmailItem setIsDraft:](v6, "setIsDraft:", [v5 decodeBoolForKey:@"ASEIsDraft"]);
  }

  v47 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (([v5 allowsKeyedCoding] & 1) == 0)
  {
    [(ASEmailItem *)a2 encodeWithCoder:?];
  }

  v25.receiver = self;
  v25.super_class = ASEmailItem;
  [(ASChangedCollectionLeaf *)&v25 encodeWithCoder:v5];
  v6 = [(ASEmailItem *)self to];
  [v5 encodeObject:v6 forKey:@"ASETo"];

  v7 = [(ASEmailItem *)self cc];
  [v5 encodeObject:v7 forKey:@"ASECC"];

  v8 = [(ASEmailItem *)self from];
  [v5 encodeObject:v8 forKey:@"ASEFrom"];

  v9 = [(ASEmailItem *)self replyTo];
  [v5 encodeObject:v9 forKey:@"ASEReplyTo"];

  v10 = [(ASEmailItem *)self date];
  [v5 encodeObject:v10 forKey:@"ASEDate"];

  v11 = [(ASEmailItem *)self subject];
  [v5 encodeObject:v11 forKey:@"ASESubject"];

  v12 = [(ASEmailItem *)self displayTo];
  [v5 encodeObject:v12 forKey:@"ASEDisplayTo"];

  [v5 encodeInt:-[ASEmailItem importance](self forKey:{"importance"), @"ASEImportance"}];
  [v5 encodeBool:-[ASEmailItem read](self forKey:{"read"), @"ASERead"}];
  [v5 encodeBool:-[ASEmailItem flagged](self forKey:{"flagged"), @"ASEFlagged"}];
  v13 = [(ASEmailItem *)self body];
  [v5 encodeObject:v13 forKey:@"ASEBody"];

  [v5 encodeInt:-[ASEmailItem bodySize](self forKey:{"bodySize"), @"ASEBodySize"}];
  [v5 encodeBool:-[ASEmailItem bodyTruncated](self forKey:{"bodyTruncated"), @"ASEBodyTruncated"}];
  v14 = [(ASEmailItem *)self messageClass];
  [v5 encodeObject:v14 forKey:@"ASEMessageClass"];

  v15 = [(ASEmailItem *)self attachments];
  [v5 encodeObject:v15 forKey:@"ASEAttachments"];

  v16 = [(ASEmailItem *)self meetingRequest];
  [v5 encodeObject:v16 forKey:@"ASEMeetingRequest"];

  v17 = [(ASEmailItem *)self threadTopic];
  [v5 encodeObject:v17 forKey:@"ASEThreadTopic"];

  v18 = [(ASEmailItem *)self conversationId];
  [v5 encodeObject:v18 forKey:@"ASEConversationId"];

  v19 = [(ASEmailItem *)self conversationIndex];
  [v5 encodeObject:v19 forKey:@"ASEConversationIndex"];

  v20 = [(ASEmailItem *)self mimeData];
  [v5 encodeObject:v20 forKey:@"ASEMIMEData"];

  v21 = [(ASEmailItem *)self folderId];
  [v5 encodeObject:v21 forKey:@"ASEFolderId"];

  v22 = [(ASEmailItem *)self longID];
  [v5 encodeObject:v22 forKey:@"ASELongID"];

  [v5 encodeInt:-[ASEmailItem bodyType](self forKey:{"bodyType"), @"ASEBodyType"}];
  [v5 encodeBool:-[ASEmailItem readIsSet](self forKey:{"readIsSet"), @"ASEReadIsSet"}];
  [v5 encodeBool:-[ASEmailItem flaggedIsSet](self forKey:{"flaggedIsSet"), @"ASEFlaggedIsSet"}];
  [v5 encodeInt:-[ASEmailItem lastVerb](self forKey:{"lastVerb"), @"ASELastVerb"}];
  [v5 encodeBool:-[ASEmailItem verbIsSet](self forKey:{"verbIsSet"), @"ASEVerbIsSet"}];
  v23 = [(ASEmailItem *)self sender];
  [v5 encodeObject:v23 forKey:@"ASESender"];

  v24 = [(ASEmailItem *)self bcc];
  [v5 encodeObject:v24 forKey:@"ASEBCC"];

  [v5 encodeBool:-[ASEmailItem isDraft](self forKey:{"isDraft"), @"ASEIsDraft"}];
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