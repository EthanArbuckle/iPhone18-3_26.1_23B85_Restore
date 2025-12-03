@interface ASNote
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
+ (id)externalRepClasses;
+ (id)noteWithLocalNoteObject:(id)object serverID:(id)d account:(id)account;
- (ASNote)initWithCoder:(id)coder;
- (ASNote)initWithLocalNoteObject:(id)object serverID:(id)d account:(id)account;
- (BOOL)deleteFromNoteContext;
- (BOOL)loadNoteObjectForAccount:(id)account;
- (BOOL)saveServerIDToNoteDB;
- (BOOL)saveToNoteDBWithExistingRecord:(id)record intoNoteStore:(id)store shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account;
- (NSString)description;
- (void)_loadAttributesFromLocalNoteObject:(id)object forAccount:(id)account;
- (void)appendActiveSyncDataForTask:(id)task toWBXMLData:(id)data;
- (void)encodeWithCoder:(id)coder;
- (void)loadClientIDs;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
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
    v2 = [self conformsToProtocol:&unk_285D64D60];
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
    v2 = [self conformsToProtocol:&unk_285D5E660];
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
    v2 = [self conformsToProtocol:&unk_285D64A10];
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
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
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
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_42 = v2;
    notifyOfUnknownTokens___haveChecked_42 = 1;
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
    v28.receiver = self;
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
    v19 = NSStringFromClass(self);
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

- (void)_loadAttributesFromLocalNoteObject:(id)object forAccount:(id)account
{
  v32 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v6 = objectCopy;
  if (objectCopy)
  {
    v7 = MEMORY[0x277CCACA8];
    integerId = [objectCopy integerId];
    v9 = [v7 stringWithFormat:@"%d", objc_msgSend(integerId, "intValue")];
    [(ASChangedCollectionLeaf *)self setClientID:v9];

    title = [v6 title];
    [(ASNote *)self setSubject:title];

    modificationDate = [v6 modificationDate];
    [(ASNote *)self setLastModifiedDate:modificationDate];

    externalRepresentation = [v6 externalRepresentation];
    if (externalRepresentation)
    {
      v13 = MEMORY[0x277CCAAC8];
      v14 = +[ASNote externalRepClasses];
      v29 = 0;
      v15 = [v13 unarchivedObjectOfClasses:v14 fromData:externalRepresentation error:&v29];
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

    messageClass = [(ASNote *)self messageClass];

    if (!messageClass)
    {
      [(ASNote *)self setMessageClass:@"IPM.StickyNote"];
    }

    -[ASNote setBodyIsPlaintext:](self, "setBodyIsPlaintext:", [v6 isPlainText]);
    if ([v6 isPlainText])
    {
      contentAsPlainText = [v6 contentAsPlainText];
      [(ASNote *)self setBody:contentAsPlainText];
    }

    else
    {
      v24 = MEMORY[0x277CCACA8];
      content = [v6 content];
      contentAsPlainText = content;
      v26 = &stru_285D39BD0;
      if (content)
      {
        v26 = content;
      }

      v27 = [v24 stringWithFormat:@"<html>%@</html>", v26];
      [(ASNote *)self setBody:v27];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (ASNote)initWithLocalNoteObject:(id)object serverID:(id)d account:(id)account
{
  objectCopy = object;
  dCopy = d;
  accountCopy = account;
  v14.receiver = self;
  v14.super_class = ASNote;
  v11 = [(ASChangedCollectionLeaf *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(ASChangedCollectionLeaf *)v11 setServerID:dCopy];
    [(ASNote *)v12 setLocalRecord:objectCopy];
    [(ASNote *)v12 _loadAttributesFromLocalNoteObject:objectCopy forAccount:accountCopy];
  }

  return v12;
}

+ (id)noteWithLocalNoteObject:(id)object serverID:(id)d account:(id)account
{
  accountCopy = account;
  dCopy = d;
  objectCopy = object;
  v11 = [[self alloc] initWithLocalNoteObject:objectCopy serverID:dCopy account:accountCopy];

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  serverID = [(ASChangedCollectionLeaf *)self serverID];
  v6 = [v3 stringWithFormat:@"<%@: [%@] [%@]>", v4, serverID, self->_subject];

  return v6;
}

- (BOOL)saveToNoteDBWithExistingRecord:(id)record intoNoteStore:(id)store shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account
{
  propertiesCopy = properties;
  v58 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  storeCopy = store;
  v13 = +[ASLocalDBHelper sharedInstance];
  noteDB = [v13 noteDB];

  if (recordCopy || ([noteDB newlyAddedNote], recordCopy = objc_claimAutoreleasedReturnValue(), objc_msgSend(recordCopy, "setStore:", storeCopy), recordCopy))
  {
    [(ASNote *)self setLocalRecord:recordCopy];
  }

  body = [(ASNote *)self body];

  if (body || !propertiesCopy)
  {
    body2 = [(ASNote *)self body];
    [recordCopy setContent:body2];
  }

  subject = [(ASNote *)self subject];

  if (subject || !propertiesCopy)
  {
    subject2 = [(ASNote *)self subject];
    [recordCopy setTitle:subject2];
  }

  title = [recordCopy title];

  if (!title)
  {
    [recordCopy setTitle:&stru_285D39BD0];
  }

  modificationDate = [recordCopy modificationDate];
  if (!propertiesCopy)
  {
    goto LABEL_17;
  }

  lastModifiedDate = [(ASNote *)self lastModifiedDate];
  if (!lastModifiedDate)
  {
    goto LABEL_17;
  }

  v22 = lastModifiedDate;
  lastModifiedDate2 = [(ASNote *)self lastModifiedDate];
  v24 = [modificationDate compare:lastModifiedDate2];

  if (v24 == 1)
  {
    if (localProperties)
    {
      *localProperties = 1;
    }
  }

  else
  {
LABEL_17:
    lastModifiedDate3 = [(ASNote *)self lastModifiedDate];

    if (lastModifiedDate3 || !propertiesCopy)
    {
      lastModifiedDate4 = [(ASNote *)self lastModifiedDate];
      [recordCopy setModificationDate:lastModifiedDate4];
    }
  }

  modificationDate2 = [recordCopy modificationDate];

  if (!modificationDate2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [recordCopy setModificationDate:date];
  }

  serverID = [(ASChangedCollectionLeaf *)self serverID];

  if (serverID)
  {
    serverID2 = [(ASChangedCollectionLeaf *)self serverID];
    [recordCopy setServerId:serverID2];
  }

  externalRepresentation = [recordCopy externalRepresentation];
  if (!externalRepresentation)
  {
    v40 = 0;
    goto LABEL_39;
  }

  v32 = MEMORY[0x277CCAAC8];
  v33 = +[ASNote externalRepClasses];
  v55 = 0;
  v34 = [v32 unarchivedObjectOfClasses:v33 fromData:externalRepresentation error:&v55];
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

  if (propertiesCopy)
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
    allObjects = [v42 allObjects];
    [v40 setObject:allObjects forKeyedSubscript:&unk_285D58158];
  }

  else
  {
    [v40 removeObjectForKey:&unk_285D58158];
  }

  messageClass = [(ASNote *)self messageClass];

  if (messageClass || !propertiesCopy)
  {
    messageClass2 = [(ASNote *)self messageClass];

    if (messageClass2)
    {
      messageClass3 = [(ASNote *)self messageClass];
      [v40 setObject:messageClass3 forKeyedSubscript:&unk_285D58170];
    }

    else
    {
      [v40 removeObjectForKey:&unk_285D58170];
    }
  }

  v49 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v36];
  [recordCopy setExternalRepresentation:v49];
  creationDate = [recordCopy creationDate];

  if (!creationDate)
  {
    modificationDate3 = [recordCopy modificationDate];
    [recordCopy setCreationDate:modificationDate3];
  }

  v52 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)postProcessApplicationData
{
  applicationData = [(ASChangedCollectionLeaf *)self applicationData];
  v19 = [applicationData objectForKeyedSubscript:&unk_285D58188];

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

  applicationData2 = [(ASChangedCollectionLeaf *)self applicationData];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:5896];
  v8 = [applicationData2 objectForKey:v7];

  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASNote *)self setCategories:v8];
    }
  }

  applicationData3 = [(ASChangedCollectionLeaf *)self applicationData];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:5893];
  v11 = [applicationData3 objectForKey:v10];

  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASNote *)self setSubject:v11];
    }
  }

  applicationData4 = [(ASChangedCollectionLeaf *)self applicationData];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:5894];
  v14 = [applicationData4 objectForKey:v13];

  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASNote *)self setMessageClass:v14];
    }
  }

  applicationData5 = [(ASChangedCollectionLeaf *)self applicationData];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:5895];
  v17 = [applicationData5 objectForKey:v16];

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

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  v10.receiver = self;
  v10.super_class = ASNote;
  [(ASChangedCollectionLeaf *)&v10 parseASParseContext:context root:root parent:parent callbackDict:dict streamCallbackDict:callbackDict account:account];
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
  localRecord = [(ASNote *)self localRecord];

  if (localRecord)
  {
    v4 = +[ASLocalDBHelper sharedInstance];
    noteDB = [v4 noteDB];
    localRecord2 = [(ASNote *)self localRecord];
    [noteDB deleteNoteRegardlessOfConstraints:localRecord2];
  }

  return 1;
}

- (void)appendActiveSyncDataForTask:(id)task toWBXMLData:(id)data
{
  v24 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  body = [(ASNote *)self body];
  [dataCopy switchToCodePage:17];
  [dataCopy openTag:10];
  if ([(ASNote *)self bodyIsPlaintext])
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [dataCopy appendTag:6 withIntContent:v7];
  if ([body length])
  {
    [dataCopy appendTag:11 withStringContent:body];
  }

  else
  {
    [dataCopy appendEmptyTag:11];
  }

  [dataCopy closeTag:10];
  [dataCopy switchToCodePage:23];
  subject = [(ASNote *)self subject];
  if (subject)
  {
    [dataCopy appendTag:5 withStringContent:subject];
  }

  lastModifiedDate = [(ASNote *)self lastModifiedDate];
  v10 = lastModifiedDate;
  if (lastModifiedDate)
  {
    activeSyncStringWithoutSeparators = [lastModifiedDate activeSyncStringWithoutSeparators];
    [dataCopy appendTag:7 withStringContent:activeSyncStringWithoutSeparators];
  }

  messageClass = [(ASNote *)self messageClass];
  if (messageClass)
  {
    [dataCopy appendTag:6 withStringContent:messageClass];
  }

  if ([(NSArray *)self->_categories count])
  {
    [dataCopy openTag:8];
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

          [dataCopy appendTag:9 withStringContent:{*(*(&v19 + 1) + 8 * i), v19}];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }

    [dataCopy closeTag:8];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)loadNoteObjectForAccount:(id)account
{
  accountCopy = account;
  localRecord = [(ASNote *)self localRecord];

  if (localRecord)
  {
    [(ASNote *)a2 loadNoteObjectForAccount:?];
  }

  clientID = [(ASChangedCollectionLeaf *)self clientID];

  if (!clientID)
  {
    [(ASNote *)a2 loadNoteObjectForAccount:?];
  }

  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  v9 = MEMORY[0x277CCABB0];
  clientID2 = [(ASChangedCollectionLeaf *)self clientID];
  v11 = [v9 numberWithInt:{objc_msgSend(clientID2, "intValue")}];
  v12 = [v8 initWithObjects:{v11, 0}];

  v13 = +[ASLocalDBHelper sharedInstance];
  noteDB = [v13 noteDB];
  v15 = [noteDB notesForIntegerIds:v12];

  if ([v15 count])
  {
    v16 = [v15 objectAtIndexedSubscript:0];
  }

  else
  {
    v16 = 0;
  }

  [(ASNote *)self _loadAttributesFromLocalNoteObject:v16 forAccount:accountCopy];
  [(ASNote *)self setLocalRecord:v16];

  return v16 != 0;
}

- (BOOL)saveServerIDToNoteDB
{
  serverID = [(ASChangedCollectionLeaf *)self serverID];
  localRecord = [(ASNote *)self localRecord];
  [localRecord setServerId:serverID];

  return 1;
}

- (void)loadClientIDs
{
  localRecord = [(ASNote *)self localRecord];

  if (localRecord)
  {
    v4 = MEMORY[0x277CCACA8];
    localRecord2 = [(ASNote *)self localRecord];
    integerId = [localRecord2 integerId];
    v6 = [v4 stringWithFormat:@"%d", objc_msgSend(integerId, "intValue")];
    [(ASChangedCollectionLeaf *)self setClientID:v6];
  }
}

- (ASNote)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASNote.m" lineNumber:312 description:{@"Yes, I know ASNote is a subclass of ASChangedCollectionLeaf, and should handle initWithCoder:.  But I'm lazy, and no one needs this yet"}];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASNote.m" lineNumber:317 description:{@"Yes, I know ASNote is a subclass of ASChangedCollectionLeaf, and should handle encodeWithCoder:.  But I'm lazy, and no one needs this yet"}];
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