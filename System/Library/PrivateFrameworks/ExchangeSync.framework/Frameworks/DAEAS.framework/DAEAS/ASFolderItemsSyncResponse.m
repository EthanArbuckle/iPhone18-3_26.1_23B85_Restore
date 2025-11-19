@interface ASFolderItemsSyncResponse
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (ASFolderItemsSyncResponse)initWithDataclass:(int64_t)a3;
- (id)description;
- (void)_processMeetingRequestDatasForAccount:(id)a3;
- (void)addDeliveryIdToClear:(id)a3;
- (void)addDeliveryIdToSoftClear:(id)a3;
- (void)addMeetingRequestData:(id)a3;
- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8;
- (void)setCollections:(id)a3;
@end

@implementation ASFolderItemsSyncResponse

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_30 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_30;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_30 = v2;
    acceptsTopLevelLeaves___haveChecked_30 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_30 == 1)
  {
    v2 = parsingLeafNode___result_30;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_30 = v2;
    parsingLeafNode___haveChecked_30 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_30 == 1)
  {
    v2 = parsingWithSubItems___result_30;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_30 = v2;
    parsingWithSubItems___haveChecked_30 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_30 == 1)
  {
    v2 = frontingBasicTypes___result_30;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_30 = v2;
    frontingBasicTypes___haveChecked_30 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_30 == 1)
  {
    v2 = notifyOfUnknownTokens___result_30;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_30 = v2;
    notifyOfUnknownTokens___haveChecked_30 = 1;
  }

  return v2 & 1;
}

- (ASFolderItemsSyncResponse)initWithDataclass:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = ASFolderItemsSyncResponse;
  v4 = [(ASItem *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ASFolderItemsSyncResponse *)v4 setDataclass:a3];
  }

  return v5;
}

- (void)setCollections:(id)a3
{
  v4 = [a3 firstObject];
  [(ASFolderItemsSyncResponse *)self setCollection:v4];

  v5 = [(ASFolderItemsSyncResponse *)self collection];
  [v5 setParentResponse:self];
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v19 = MEMORY[0x277CBEAC0];
    v6 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:14 objectClass:objc_opt_class() setterMethod:sel_setStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:14];
    v8 = [ASParseRule alloc];
    v9 = objc_opt_class();
    v10 = MEMORY[0x277CBEAC0];
    v11 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:0 token:15 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:15];
    v13 = [v10 dictionaryWithObjectsAndKeys:{v11, v12, 0}];
    v14 = [(ASParseRule *)v8 initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:28 objectClass:v9 setterMethod:sel_setCollections_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v13];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:28];
    v5 = [v19 dictionaryWithObjectsAndKeys:{v6, v7, v14, v15, 0}];

    v16 = +[ASItem parseRuleCache];
    v17 = NSStringFromClass(a1);
    [v16 setObject:v5 forKey:v17];
  }

  return v5;
}

- (void)_processMeetingRequestDatasForAccount:(id)a3
{
  v16 = a3;
  v4 = [(ASFolderItemsSyncResponse *)self collection];
  v5 = [v4 collectionId];

  v6 = [(ASFolderItemsSyncResponse *)self deliveryIdsToClear];
  if ([v6 count])
  {
    goto LABEL_4;
  }

  v7 = [(ASFolderItemsSyncResponse *)self deliveryIdsToSoftClear];
  if ([v7 count])
  {

LABEL_4:
LABEL_5:
    v8 = [(ASFolderItemsSyncResponse *)self meetingRequestDatas];

    v9 = [MEMORY[0x277D07AF0] sharedConnection];
    if (v8)
    {
      v10 = [(ASFolderItemsSyncResponse *)self meetingRequestDatas];
      v11 = [(ASFolderItemsSyncResponse *)self deliveryIdsToClear];
      v12 = [(ASFolderItemsSyncResponse *)self deliveryIdsToSoftClear];
      v13 = [v16 accountID];
      [v9 processMeetingRequests:v10 deliveryIdsToClear:v11 deliveryIdsToSoftClear:v12 inFolderWithId:v5 forAccountWithId:v13];
    }

    else
    {
      v10 = [(ASFolderItemsSyncResponse *)self deliveryIdsToClear];
      v11 = [(ASFolderItemsSyncResponse *)self deliveryIdsToSoftClear];
      v12 = [v16 accountID];
      [v9 asyncProcessMeetingRequests:0 deliveryIdsToClear:v10 deliveryIdsToSoftClear:v11 inFolderWithId:v5 forAccountWithId:v12];
    }

    goto LABEL_9;
  }

  v14 = [(ASFolderItemsSyncResponse *)self meetingRequestDatas];
  v15 = [v14 count];

  if (v15)
  {
    goto LABEL_5;
  }

LABEL_9:
  [(ASFolderItemsSyncResponse *)self setDeliveryIdsToClear:0];
  [(ASFolderItemsSyncResponse *)self setDeliveryIdsToSoftClear:0];
  [(ASFolderItemsSyncResponse *)self setMeetingRequestDatas:0];
}

- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8
{
  v14 = a8;
  v22.receiver = self;
  v22.super_class = ASFolderItemsSyncResponse;
  [(ASItem *)&v22 parseASParseContext:a3 root:a4 parent:a5 callbackDict:a6 streamCallbackDict:a7 account:v14];
  parsingState = self->super._parsingState;
  if (parsingState >= 2)
  {
    if (parsingState == 4 || parsingState == 3)
    {
      self->super._parsingState = parsingState;
    }

    else
    {
      v16 = [(ASFolderItemsSyncResponse *)self status];
      v17 = [v16 intValue];

      if (v17 == 1)
      {
        v18 = [(ASFolderItemsSyncResponse *)self collection];

        if (!v18)
        {
          v19 = DALoggingwithCategory();
          v20 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v19, v20))
          {
            *v21 = 0;
            _os_log_impl(&dword_24A0AC000, v19, v20, "Successful sync, but no collections item.  Bail time", v21, 2u);
          }

          [(ASFolderItemsSyncResponse *)self setStatus:&unk_285D57E40];
        }
      }

      [(ASFolderItemsSyncResponse *)self _processMeetingRequestDatasForAccount:v14];
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ASFolderItemsSyncResponse *)self collection];
  v7 = [v3 stringWithFormat:@"<%@: Collection: %@>", v5, v6];

  return v7;
}

- (void)addMeetingRequestData:(id)a3
{
  v4 = a3;
  v5 = [(ASFolderItemsSyncResponse *)self meetingRequestDatas];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(ASFolderItemsSyncResponse *)self setMeetingRequestDatas:v6];
  }

  v7 = [(ASFolderItemsSyncResponse *)self meetingRequestDatas];
  [v7 addObject:v4];
}

- (void)addDeliveryIdToClear:(id)a3
{
  v4 = a3;
  v5 = [(ASFolderItemsSyncResponse *)self deliveryIdsToClear];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(ASFolderItemsSyncResponse *)self setDeliveryIdsToClear:v6];
  }

  v7 = [(ASFolderItemsSyncResponse *)self deliveryIdsToClear];
  [v7 addObject:v4];
}

- (void)addDeliveryIdToSoftClear:(id)a3
{
  v4 = a3;
  v5 = [(ASFolderItemsSyncResponse *)self deliveryIdsToSoftClear];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(ASFolderItemsSyncResponse *)self setDeliveryIdsToSoftClear:v6];
  }

  v7 = [(ASFolderItemsSyncResponse *)self deliveryIdsToSoftClear];
  [v7 addObject:v4];
}

@end