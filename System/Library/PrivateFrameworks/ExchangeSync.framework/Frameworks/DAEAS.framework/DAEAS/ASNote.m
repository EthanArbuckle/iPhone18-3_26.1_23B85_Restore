@interface ASNote
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
+ (id)externalRepClasses;
+ (id)noteWithLocalNoteObject:(id)a3 serverID:(id)a4 account:(id)a5;
- (ASNote)initWithCoder:(id)a3;
- (ASNote)initWithLocalNoteObject:(id)a3 serverID:(id)a4 account:(id)a5;
- (BOOL)deleteFromNoteContext;
- (BOOL)loadNoteObjectForAccount:(id)a3;
- (BOOL)saveServerIDToNoteDB;
- (BOOL)saveToNoteDBWithExistingRecord:(id)a3 intoNoteStore:(id)a4 shouldMergeProperties:(BOOL)a5 outMergeDidChooseLocalProperties:(BOOL *)a6 account:(id)a7;
- (NSString)description;
- (void)_loadAttributesFromLocalNoteObject:(id)a3 forAccount:(id)a4;
- (void)appendActiveSyncDataForTask:(id)a3 toWBXMLData:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)loadClientIDs;
- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8;
- (void)postProcessApplicationData;
@end

@implementation ASNote

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_42 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_42;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_42 = v2;
    acceptsTopLevelLeaves___haveChecked_42 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_42 == 1)
  {
    v2 = parsingLeafNode___result_42;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_42 = v2;
    parsingLeafNode___haveChecked_42 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_42 == 1)
  {
    v2 = parsingWithSubItems___result_42;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_42 = v2;
    parsingWithSubItems___haveChecked_42 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_42 == 1)
  {
    v2 = frontingBasicTypes___result_42;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_42 = v2;
    frontingBasicTypes___haveChecked_42 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_42 == 1)
  {
    v2 = notifyOfUnknownTokens___result_42;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_42 = v2;
    notifyOfUnknownTokens___haveChecked_42 = 1;
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
    v28.receiver = a1;
    v28.super_class = &OBJC_METACLASS___ASNote;
    v6 = objc_msgSendSuper2(&v28, sel_asParseRules);
    v5 = [v6 mutableCopy];

    v27 = objc_alloc(MEMORY[0x277CBEAC0]);
    v26 = [ASParseRule alloc];
    v25 = objc_opt_class();
    v22 = MEMORY[0x277CBEAC0];
    v7 = [ASParseRule alloc];
    v8 = objc_opt_class();
    v9 = MEMORY[0x277CBEAC0];
    v24 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:23 token:9 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v23 = [MEMORY[0x277CCABB0] numberWithInt:5897];
    v21 = [v9 dictionaryWithObjectsAndKeys:{v24, v23, 0}];
    v10 = [(ASParseRule *)v7 initWithMinimumNumber:0 maximumNumber:1 codePage:23 token:8 objectClass:v8 setterMethod:sel_setCategories_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v21];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:5896];
    v12 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:10 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v13 = [MEMORY[0x277CCABB0] numberWithInt:4362];
    v14 = [v22 dictionaryWithObjectsAndKeys:{v10, v11, v12, v13, 0}];
    v15 = [(ASParseRule *)v26 initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:29 objectClass:v25 setterMethod:sel_setApplicationData_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v14];
    v16 = [MEMORY[0x277CCABB0] numberWithInt:29];
    v17 = [v27 initWithObjectsAndKeys:{v15, v16, 0}];

    [v5 addEntriesFromDictionary:v17];
    v18 = +[ASItem parseRuleCache];
    v19 = NSStringFromClass(a1);
    [v18 setObject:v5 forKey:v19];
  }

  return v5;
}

+ (id)externalRepClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
}

- (void)_loadAttributesFromLocalNoteObject:(id)a3 forAccount:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [v5 integerId];
    v9 = [v7 stringWithFormat:@"%d", objc_msgSend(v8, "intValue")];
    [(ASChangedCollectionLeaf *)self setClientID:v9];

    v10 = [v6 title];
    [(ASNote *)self setSubject:v10];

    v11 = [v6 modificationDate];
    [(ASNote *)self setLastModifiedDate:v11];

    v12 = [v6 externalRepresentation];
    if (v12)
    {
      v13 = MEMORY[0x277CCAAC8];
      v14 = +[ASNote externalRepClasses];
      v29 = 0;
      v15 = [v13 unarchivedObjectOfClasses:v14 fromData:v12 error:&v29];
      v16 = v29;

      if (!v15)
      {
        v17 = DALoggingwithCategory();
        v18 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(v17, v18))
        {
          *buf = 138412290;
          v31 = v16;
          _os_log_impl(&dword_24A0AC000, v17, v18, "Unable to decode note properties: %@", buf, 0xCu);
        }
      }

      v19 = [v15 objectForKeyedSubscript:@"easExtraProperties"];
      v20 = [v19 objectForKeyedSubscript:&unk_285D58158];
      [(ASNote *)self setCategories:v20];

      v21 = [v19 objectForKeyedSubscript:&unk_285D58170];
      [(ASNote *)self setMessageClass:v21];
    }

    v22 = [(ASNote *)self messageClass];

    if (!v22)
    {
      [(ASNote *)self setMessageClass:@"IPM.StickyNote"];
    }

    -[ASNote setBodyIsPlaintext:](self, "setBodyIsPlaintext:", [v6 isPlainText]);
    if ([v6 isPlainText])
    {
      v23 = [v6 contentAsPlainText];
      [(ASNote *)self setBody:v23];
    }

    else
    {
      v24 = MEMORY[0x277CCACA8];
      v25 = [v6 content];
      v23 = v25;
      v26 = &stru_285D39BD0;
      if (v25)
      {
        v26 = v25;
      }

      v27 = [v24 stringWithFormat:@"<html>%@</html>", v26];
      [(ASNote *)self setBody:v27];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (ASNote)initWithLocalNoteObject:(id)a3 serverID:(id)a4 account:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ASNote;
  v11 = [(ASChangedCollectionLeaf *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(ASChangedCollectionLeaf *)v11 setServerID:v9];
    [(ASNote *)v12 setLocalRecord:v8];
    [(ASNote *)v12 _loadAttributesFromLocalNoteObject:v8 forAccount:v10];
  }

  return v12;
}

+ (id)noteWithLocalNoteObject:(id)a3 serverID:(id)a4 account:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithLocalNoteObject:v10 serverID:v9 account:v8];

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ASChangedCollectionLeaf *)self serverID];
  v6 = [v3 stringWithFormat:@"<%@: [%@] [%@]>", v4, v5, self->_subject];

  return v6;
}

- (BOOL)saveToNoteDBWithExistingRecord:(id)a3 intoNoteStore:(id)a4 shouldMergeProperties:(BOOL)a5 outMergeDidChooseLocalProperties:(BOOL *)a6 account:(id)a7
{
  v8 = a5;
  v58 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = +[ASLocalDBHelper sharedInstance];
  v14 = [v13 noteDB];

  if (v11 || ([v14 newlyAddedNote], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "setStore:", v12), v11))
  {
    [(ASNote *)self setLocalRecord:v11];
  }

  v15 = [(ASNote *)self body];

  if (v15 || !v8)
  {
    v16 = [(ASNote *)self body];
    [v11 setContent:v16];
  }

  v17 = [(ASNote *)self subject];

  if (v17 || !v8)
  {
    v18 = [(ASNote *)self subject];
    [v11 setTitle:v18];
  }

  v19 = [v11 title];

  if (!v19)
  {
    [v11 setTitle:&stru_285D39BD0];
  }

  v20 = [v11 modificationDate];
  if (!v8)
  {
    goto LABEL_17;
  }

  v21 = [(ASNote *)self lastModifiedDate];
  if (!v21)
  {
    goto LABEL_17;
  }

  v22 = v21;
  v23 = [(ASNote *)self lastModifiedDate];
  v24 = [v20 compare:v23];

  if (v24 == 1)
  {
    if (a6)
    {
      *a6 = 1;
    }
  }

  else
  {
LABEL_17:
    v25 = [(ASNote *)self lastModifiedDate];

    if (v25 || !v8)
    {
      v26 = [(ASNote *)self lastModifiedDate];
      [v11 setModificationDate:v26];
    }
  }

  v27 = [v11 modificationDate];

  if (!v27)
  {
    v28 = [MEMORY[0x277CBEAA8] date];
    [v11 setModificationDate:v28];
  }

  v29 = [(ASChangedCollectionLeaf *)self serverID];

  if (v29)
  {
    v30 = [(ASChangedCollectionLeaf *)self serverID];
    [v11 setServerId:v30];
  }

  v31 = [v11 externalRepresentation];
  if (!v31)
  {
    v40 = 0;
    goto LABEL_39;
  }

  v32 = MEMORY[0x277CCAAC8];
  v33 = +[ASNote externalRepClasses];
  v55 = 0;
  v34 = [v32 unarchivedObjectOfClasses:v33 fromData:v31 error:&v55];
  v35 = v55;
  v36 = [v34 mutableCopy];

  if (!v36)
  {
    v37 = DALoggingwithCategory();
    v38 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v37, v38))
    {
      *buf = 138412290;
      v57 = v35;
      _os_log_impl(&dword_24A0AC000, v37, v38, "Unable to decode note properties: %@", buf, 0xCu);
    }
  }

  v39 = [v36 objectForKeyedSubscript:@"easExtraProperties"];
  v40 = [v39 mutableCopy];

  if (!v36)
  {
LABEL_39:
    v36 = objc_opt_new();
    if (v40)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  if (v40)
  {
    goto LABEL_31;
  }

LABEL_40:
  v40 = objc_opt_new();
LABEL_31:
  [v36 setObject:v40 forKeyedSubscript:@"easExtraProperties"];
  v41 = objc_opt_new();
  v42 = v41;
  if (self->_categories)
  {
    [v41 addObjectsFromArray:?];
  }

  if (v8)
  {
    v43 = [v40 objectForKeyedSubscript:&unk_285D58158];

    if (v43)
    {
      v44 = [v40 objectForKeyedSubscript:&unk_285D58158];
      [v42 addObjectsFromArray:v44];
    }
  }

  if ([v42 count])
  {
    v45 = [v42 allObjects];
    [v40 setObject:v45 forKeyedSubscript:&unk_285D58158];
  }

  else
  {
    [v40 removeObjectForKey:&unk_285D58158];
  }

  v46 = [(ASNote *)self messageClass];

  if (v46 || !v8)
  {
    v47 = [(ASNote *)self messageClass];

    if (v47)
    {
      v48 = [(ASNote *)self messageClass];
      [v40 setObject:v48 forKeyedSubscript:&unk_285D58170];
    }

    else
    {
      [v40 removeObjectForKey:&unk_285D58170];
    }
  }

  v49 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v36];
  [v11 setExternalRepresentation:v49];
  v50 = [v11 creationDate];

  if (!v50)
  {
    v51 = [v11 modificationDate];
    [v11 setCreationDate:v51];
  }

  v52 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)postProcessApplicationData
{
  v3 = [(ASChangedCollectionLeaf *)self applicationData];
  v19 = [v3 objectForKeyedSubscript:&unk_285D58188];

  v4 = [MEMORY[0x277CCABB0] numberWithInt:4363];
  v5 = [v19 objectForKey:v4];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASNote *)self setBody:v5];
    }
  }

  v6 = [(ASChangedCollectionLeaf *)self applicationData];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:5896];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASNote *)self setCategories:v8];
    }
  }

  v9 = [(ASChangedCollectionLeaf *)self applicationData];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:5893];
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASNote *)self setSubject:v11];
    }
  }

  v12 = [(ASChangedCollectionLeaf *)self applicationData];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:5894];
  v14 = [v12 objectForKey:v13];

  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASNote *)self setMessageClass:v14];
    }
  }

  v15 = [(ASChangedCollectionLeaf *)self applicationData];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:5895];
  v17 = [v15 objectForKey:v16];

  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:v17];
      [(ASNote *)self setLastModifiedDate:v18];
    }
  }

  [(ASChangedCollectionLeaf *)self setApplicationData:0];
}

- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8
{
  v10.receiver = self;
  v10.super_class = ASNote;
  [(ASChangedCollectionLeaf *)&v10 parseASParseContext:a3 root:a4 parent:a5 callbackDict:a6 streamCallbackDict:a7 account:a8];
  parsingState = self->super.super._parsingState;
  if (parsingState >= 2)
  {
    if (parsingState == 4 || parsingState == 3)
    {
      self->super.super._parsingState = parsingState;
    }

    else if (![(ASChangedCollectionLeaf *)self changeType]|| [(ASChangedCollectionLeaf *)self changeType]== 1)
    {
      [(ASNote *)self postProcessApplicationData];
    }
  }
}

- (BOOL)deleteFromNoteContext
{
  v3 = [(ASNote *)self localRecord];

  if (v3)
  {
    v4 = +[ASLocalDBHelper sharedInstance];
    v5 = [v4 noteDB];
    v6 = [(ASNote *)self localRecord];
    [v5 deleteNoteRegardlessOfConstraints:v6];
  }

  return 1;
}

- (void)appendActiveSyncDataForTask:(id)a3 toWBXMLData:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(ASNote *)self body];
  [v5 switchToCodePage:17];
  [v5 openTag:10];
  if ([(ASNote *)self bodyIsPlaintext])
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [v5 appendTag:6 withIntContent:v7];
  if ([v6 length])
  {
    [v5 appendTag:11 withStringContent:v6];
  }

  else
  {
    [v5 appendEmptyTag:11];
  }

  [v5 closeTag:10];
  [v5 switchToCodePage:23];
  v8 = [(ASNote *)self subject];
  if (v8)
  {
    [v5 appendTag:5 withStringContent:v8];
  }

  v9 = [(ASNote *)self lastModifiedDate];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 activeSyncStringWithoutSeparators];
    [v5 appendTag:7 withStringContent:v11];
  }

  v12 = [(ASNote *)self messageClass];
  if (v12)
  {
    [v5 appendTag:6 withStringContent:v12];
  }

  if ([(NSArray *)self->_categories count])
  {
    [v5 openTag:8];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = self->_categories;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [v5 appendTag:9 withStringContent:{*(*(&v19 + 1) + 8 * i), v19}];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }

    [v5 closeTag:8];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)loadNoteObjectForAccount:(id)a3
{
  v5 = a3;
  v6 = [(ASNote *)self localRecord];

  if (v6)
  {
    [(ASNote *)a2 loadNoteObjectForAccount:?];
  }

  v7 = [(ASChangedCollectionLeaf *)self clientID];

  if (!v7)
  {
    [(ASNote *)a2 loadNoteObjectForAccount:?];
  }

  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  v9 = MEMORY[0x277CCABB0];
  v10 = [(ASChangedCollectionLeaf *)self clientID];
  v11 = [v9 numberWithInt:{objc_msgSend(v10, "intValue")}];
  v12 = [v8 initWithObjects:{v11, 0}];

  v13 = +[ASLocalDBHelper sharedInstance];
  v14 = [v13 noteDB];
  v15 = [v14 notesForIntegerIds:v12];

  if ([v15 count])
  {
    v16 = [v15 objectAtIndexedSubscript:0];
  }

  else
  {
    v16 = 0;
  }

  [(ASNote *)self _loadAttributesFromLocalNoteObject:v16 forAccount:v5];
  [(ASNote *)self setLocalRecord:v16];

  return v16 != 0;
}

- (BOOL)saveServerIDToNoteDB
{
  v3 = [(ASChangedCollectionLeaf *)self serverID];
  v4 = [(ASNote *)self localRecord];
  [v4 setServerId:v3];

  return 1;
}

- (void)loadClientIDs
{
  v3 = [(ASNote *)self localRecord];

  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v7 = [(ASNote *)self localRecord];
    v5 = [v7 integerId];
    v6 = [v4 stringWithFormat:@"%d", objc_msgSend(v5, "intValue")];
    [(ASChangedCollectionLeaf *)self setClientID:v6];
  }
}

- (ASNote)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASNote.m" lineNumber:312 description:{@"Yes, I know ASNote is a subclass of ASChangedCollectionLeaf, and should handle initWithCoder:.  But I'm lazy, and no one needs this yet"}];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASNote.m" lineNumber:317 description:{@"Yes, I know ASNote is a subclass of ASChangedCollectionLeaf, and should handle encodeWithCoder:.  But I'm lazy, and no one needs this yet"}];
}

- (void)loadNoteObjectForAccount:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASNote.m" lineNumber:262 description:{@"%@ asked to loadNoteObject, but I already have one", a2}];
}

- (void)loadNoteObjectForAccount:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASNote.m" lineNumber:263 description:{@"%@ asked to loadNoteObject, but I have no client id", a2}];
}

@end