@interface ASFolderItemsSyncResponse
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (ASFolderItemsSyncResponse)initWithDataclass:(int64_t)dataclass;
- (id)description;
- (void)_processMeetingRequestDatasForAccount:(id)account;
- (void)addDeliveryIdToClear:(id)clear;
- (void)addDeliveryIdToSoftClear:(id)clear;
- (void)addMeetingRequestData:(id)data;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
- (void)setCollections:(id)collections;
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
    v2 = [self conformsToProtocol:&unk_285D64D60];
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
    v2 = [self conformsToProtocol:&unk_285D5E660];
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
    v2 = [self conformsToProtocol:&unk_285D64A10];
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
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
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
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_30 = v2;
    notifyOfUnknownTokens___haveChecked_30 = 1;
  }

  return v2 & 1;
}

- (ASFolderItemsSyncResponse)initWithDataclass:(int64_t)dataclass
{
  v7.receiver = self;
  v7.super_class = ASFolderItemsSyncResponse;
  v4 = [(ASItem *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ASFolderItemsSyncResponse *)v4 setDataclass:dataclass];
  }

  return v5;
}

- (void)setCollections:(id)collections
{
  firstObject = [collections firstObject];
  [(ASFolderItemsSyncResponse *)self setCollection:firstObject];

  collection = [(ASFolderItemsSyncResponse *)self collection];
  [collection setParentResponse:self];
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
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
    v17 = NSStringFromClass(self);
    [v16 setObject:v5 forKey:v17];
  }

  return v5;
}

- (void)_processMeetingRequestDatasForAccount:(id)account
{
  accountCopy = account;
  collection = [(ASFolderItemsSyncResponse *)self collection];
  collectionId = [collection collectionId];

  deliveryIdsToClear = [(ASFolderItemsSyncResponse *)self deliveryIdsToClear];
  if ([deliveryIdsToClear count])
  {
    goto LABEL_4;
  }

  deliveryIdsToSoftClear = [(ASFolderItemsSyncResponse *)self deliveryIdsToSoftClear];
  if ([deliveryIdsToSoftClear count])
  {

LABEL_4:
LABEL_5:
    meetingRequestDatas = [(ASFolderItemsSyncResponse *)self meetingRequestDatas];

    mEMORY[0x277D07AF0] = [MEMORY[0x277D07AF0] sharedConnection];
    if (meetingRequestDatas)
    {
      meetingRequestDatas2 = [(ASFolderItemsSyncResponse *)self meetingRequestDatas];
      deliveryIdsToClear2 = [(ASFolderItemsSyncResponse *)self deliveryIdsToClear];
      deliveryIdsToSoftClear2 = [(ASFolderItemsSyncResponse *)self deliveryIdsToSoftClear];
      accountID = [accountCopy accountID];
      [mEMORY[0x277D07AF0] processMeetingRequests:meetingRequestDatas2 deliveryIdsToClear:deliveryIdsToClear2 deliveryIdsToSoftClear:deliveryIdsToSoftClear2 inFolderWithId:collectionId forAccountWithId:accountID];
    }

    else
    {
      meetingRequestDatas2 = [(ASFolderItemsSyncResponse *)self deliveryIdsToClear];
      deliveryIdsToClear2 = [(ASFolderItemsSyncResponse *)self deliveryIdsToSoftClear];
      deliveryIdsToSoftClear2 = [accountCopy accountID];
      [mEMORY[0x277D07AF0] asyncProcessMeetingRequests:0 deliveryIdsToClear:meetingRequestDatas2 deliveryIdsToSoftClear:deliveryIdsToClear2 inFolderWithId:collectionId forAccountWithId:deliveryIdsToSoftClear2];
    }

    goto LABEL_9;
  }

  meetingRequestDatas3 = [(ASFolderItemsSyncResponse *)self meetingRequestDatas];
  v15 = [meetingRequestDatas3 count];

  if (v15)
  {
    goto LABEL_5;
  }

LABEL_9:
  [(ASFolderItemsSyncResponse *)self setDeliveryIdsToClear:0];
  [(ASFolderItemsSyncResponse *)self setDeliveryIdsToSoftClear:0];
  [(ASFolderItemsSyncResponse *)self setMeetingRequestDatas:0];
}

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  accountCopy = account;
  v22.receiver = self;
  v22.super_class = ASFolderItemsSyncResponse;
  [(ASItem *)&v22 parseASParseContext:context root:root parent:parent callbackDict:dict streamCallbackDict:callbackDict account:accountCopy];
  parsingState = self->super._parsingState;
  if (parsingState >= 2)
  {
    if (parsingState == 4 || parsingState == 3)
    {
      self->super._parsingState = parsingState;
    }

    else
    {
      status = [(ASFolderItemsSyncResponse *)self status];
      intValue = [status intValue];

      if (intValue == 1)
      {
        collection = [(ASFolderItemsSyncResponse *)self collection];

        if (!collection)
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

      [(ASFolderItemsSyncResponse *)self _processMeetingRequestDatasForAccount:accountCopy];
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  collection = [(ASFolderItemsSyncResponse *)self collection];
  v7 = [v3 stringWithFormat:@"<%@: Collection: %@>", v5, collection];

  return v7;
}

- (void)addMeetingRequestData:(id)data
{
  dataCopy = data;
  meetingRequestDatas = [(ASFolderItemsSyncResponse *)self meetingRequestDatas];

  if (!meetingRequestDatas)
  {
    v6 = objc_opt_new();
    [(ASFolderItemsSyncResponse *)self setMeetingRequestDatas:v6];
  }

  meetingRequestDatas2 = [(ASFolderItemsSyncResponse *)self meetingRequestDatas];
  [meetingRequestDatas2 addObject:dataCopy];
}

- (void)addDeliveryIdToClear:(id)clear
{
  clearCopy = clear;
  deliveryIdsToClear = [(ASFolderItemsSyncResponse *)self deliveryIdsToClear];

  if (!deliveryIdsToClear)
  {
    v6 = objc_opt_new();
    [(ASFolderItemsSyncResponse *)self setDeliveryIdsToClear:v6];
  }

  deliveryIdsToClear2 = [(ASFolderItemsSyncResponse *)self deliveryIdsToClear];
  [deliveryIdsToClear2 addObject:clearCopy];
}

- (void)addDeliveryIdToSoftClear:(id)clear
{
  clearCopy = clear;
  deliveryIdsToSoftClear = [(ASFolderItemsSyncResponse *)self deliveryIdsToSoftClear];

  if (!deliveryIdsToSoftClear)
  {
    v6 = objc_opt_new();
    [(ASFolderItemsSyncResponse *)self setDeliveryIdsToSoftClear:v6];
  }

  deliveryIdsToSoftClear2 = [(ASFolderItemsSyncResponse *)self deliveryIdsToSoftClear];
  [deliveryIdsToSoftClear2 addObject:clearCopy];
}

@end