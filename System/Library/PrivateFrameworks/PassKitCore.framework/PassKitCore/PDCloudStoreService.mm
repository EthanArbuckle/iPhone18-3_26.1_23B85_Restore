@interface PDCloudStoreService
- (PDCloudStoreService)initWithConnection:(id)connection server:(id)server;
- (void)allItemsOfItemType:(unint64_t)type storeLocally:(BOOL)locally completion:(id)completion;
- (void)applePayContainerItemsFromDate:(id)date toDate:(id)toDate completion:(id)completion;
- (void)changeHistoryForContainerIdentifier:(id)identifier completion:(id)completion;
- (void)checkTLKsMissingWithCompletion:(id)completion;
- (void)cloudStoreRecordArrayWithConfiguration:(id)configuration completion:(id)completion;
- (void)cloudStoreStatusForContainer:(id)container completion:(id)completion;
- (void)createInvitationForRecipientHandle:(id)handle zoneName:(id)name containerName:(id)containerName qualityOfService:(int64_t)service completion:(id)completion;
- (void)createZone:(id)zone containerName:(id)name completion:(id)completion;
- (void)declineInvitationForRecipientHandle:(id)handle zoneName:(id)name containerName:(id)containerName qualityOfService:(int64_t)service completion:(id)completion;
- (void)deleteIssuerMessagingFlagWithIdentifier:(id)identifier completion:(id)completion;
- (void)deleteZone:(id)zone containerName:(id)name completion:(id)completion;
- (void)diagnosticInfoForContainerWithName:(id)name completion:(id)completion;
- (void)diagnosticSnapshotForContainerWithName:(id)name completion:(id)completion;
- (void)generateRandomTransactionForTransactionSourceIdentifier:(id)identifier completion:(id)completion;
- (void)itemOfItemType:(unint64_t)type recordName:(id)name qualityOfService:(int64_t)service completion:(id)completion;
- (void)itemOfItemTypeFromAllZones:(unint64_t)zones recordName:(id)name qualityOfService:(int64_t)service completion:(id)completion;
- (void)performAction:(int64_t)action inContainerWithName:(id)name completion:(id)completion;
- (void)performBackgroundRecordChangesSyncWithCompletion:(id)completion;
- (void)performBackgroundTransactionSyncFromDate:(id)date completion:(id)completion;
- (void)populateEvents:(id)events forAccountIdentifier:(id)identifier completion:(id)completion;
- (void)removeAllItems:(unint64_t)items inZoneName:(id)name containerName:(id)containerName storeLocally:(BOOL)locally completion:(id)completion;
- (void)removeRecordWithRecordName:(id)name zoneName:(id)zoneName containerName:(id)containerName completion:(id)completion;
- (void)resetApplePayManateeViewWithCompletion:(id)completion;
- (void)resetContainerWithIdentifier:(id)identifier zoneNames:(id)names completion:(id)completion;
- (void)setupCloudDatabaseForContainerName:(id)name completion:(id)completion;
- (void)shareForZoneName:(id)name containerName:(id)containerName qualityOfService:(int64_t)service completion:(id)completion;
- (void)simulateCloudStorePushForContainerIdentifier:(id)identifier completion:(id)completion;
- (void)simulatePassProvisioningForPassUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)updateCloudStoreWithLocalItemsWithConfigurations:(id)configurations completion:(id)completion;
- (void)uploadIssuerMessagingFlag:(id)flag completion:(id)completion;
- (void)uploadTransaction:(id)transaction forTransactionSourceIdentifier:(id)identifier includeServerData:(BOOL)data completion:(id)completion;
@end

@implementation PDCloudStoreService

- (PDCloudStoreService)initWithConnection:(id)connection server:(id)server
{
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = PDCloudStoreService;
  v6 = [(PDCloudStoreService *)&v12 initWithConnection:connectionCopy];
  if (v6)
  {
    v7 = [[PKEntitlementWhitelist alloc] initWithConnection:connectionCopy];
    whitelist = v6->_whitelist;
    v6->_whitelist = v7;

    v9 = PKCloudStoreServiceInterface();
    [connectionCopy setRemoteObjectInterface:v9];

    v10 = PDCloudStoreServiceInterface();
    [connectionCopy setExportedInterface:v10];

    [connectionCopy setExportedObject:v6];
  }

  return v6;
}

- (void)updateCloudStoreWithLocalItemsWithConfigurations:(id)configurations completion:(id)completion
{
  configurationsCopy = configurations;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = dispatch_get_global_queue(21, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10007C830;
    v10[3] = &unk_10083D320;
    v10[4] = self;
    v11 = configurationsCopy;
    v12 = completionCopy;
    v9 = v10;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v14 = v9;
    dispatch_async(v8, block);
  }
}

- (void)removeAllItems:(unint64_t)items inZoneName:(id)name containerName:(id)containerName storeLocally:(BOOL)locally completion:(id)completion
{
  nameCopy = name;
  containerNameCopy = containerName;
  completionCopy = completion;
  if (completionCopy)
  {
    v15 = dispatch_get_global_queue(21, 0);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10007CC88;
    v17[3] = &unk_100840BD0;
    v17[4] = self;
    itemsCopy = items;
    v18 = nameCopy;
    v19 = containerNameCopy;
    locallyCopy = locally;
    v20 = completionCopy;
    v16 = v17;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v24 = v16;
    dispatch_async(v15, block);
  }
}

- (void)removeRecordWithRecordName:(id)name zoneName:(id)zoneName containerName:(id)containerName completion:(id)completion
{
  nameCopy = name;
  zoneNameCopy = zoneName;
  containerNameCopy = containerName;
  completionCopy = completion;
  if (completionCopy)
  {
    v14 = dispatch_get_global_queue(21, 0);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10007D0F8;
    v16[3] = &unk_10083FD78;
    v16[4] = self;
    v17 = nameCopy;
    v18 = zoneNameCopy;
    v19 = containerNameCopy;
    v20 = completionCopy;
    v15 = v16;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v22 = v15;
    dispatch_async(v14, block);
  }
}

- (void)allItemsOfItemType:(unint64_t)type storeLocally:(BOOL)locally completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v9 = dispatch_get_global_queue(21, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10007D504;
    v11[3] = &unk_10083F440;
    v11[4] = self;
    typeCopy = type;
    locallyCopy = locally;
    v12 = completionCopy;
    v10 = v11;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v16 = v10;
    dispatch_async(v9, block);
  }
}

- (void)applePayContainerItemsFromDate:(id)date toDate:(id)toDate completion:(id)completion
{
  dateCopy = date;
  toDateCopy = toDate;
  completionCopy = completion;
  if (completionCopy)
  {
    v11 = dispatch_get_global_queue(21, 0);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10007D948;
    v13[3] = &unk_10083E468;
    v13[4] = self;
    v14 = dateCopy;
    v15 = toDateCopy;
    v16 = completionCopy;
    v12 = v13;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v18 = v12;
    dispatch_async(v11, block);
  }
}

- (void)itemOfItemType:(unint64_t)type recordName:(id)name qualityOfService:(int64_t)service completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  if (completionCopy)
  {
    v12 = dispatch_get_global_queue(21, 0);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10007DD7C;
    v14[3] = &unk_10083FE18;
    v14[4] = self;
    typeCopy = type;
    v15 = nameCopy;
    serviceCopy = service;
    v16 = completionCopy;
    v13 = v14;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v20 = v13;
    dispatch_async(v12, block);
  }
}

- (void)itemOfItemTypeFromAllZones:(unint64_t)zones recordName:(id)name qualityOfService:(int64_t)service completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  if (completionCopy)
  {
    v12 = dispatch_get_global_queue(21, 0);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10007E1B8;
    v14[3] = &unk_10083FE18;
    v14[4] = self;
    zonesCopy = zones;
    v15 = nameCopy;
    serviceCopy = service;
    v16 = completionCopy;
    v13 = v14;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v20 = v13;
    dispatch_async(v12, block);
  }
}

- (void)cloudStoreRecordArrayWithConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = dispatch_get_global_queue(21, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10007E5DC;
    v10[3] = &unk_10083D320;
    v10[4] = self;
    v11 = configurationCopy;
    v12 = completionCopy;
    v9 = v10;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v14 = v9;
    dispatch_async(v8, block);
  }
}

- (void)resetContainerWithIdentifier:(id)identifier zoneNames:(id)names completion:(id)completion
{
  identifierCopy = identifier;
  namesCopy = names;
  completionCopy = completion;
  v11 = dispatch_get_global_queue(21, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007EA1C;
  v16[3] = &unk_10083E468;
  v16[4] = self;
  v17 = identifierCopy;
  v18 = namesCopy;
  v19 = completionCopy;
  v12 = v16;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v21 = v12;
  v13 = completionCopy;
  v14 = namesCopy;
  v15 = identifierCopy;
  dispatch_async(v11, block);
}

- (void)simulateCloudStorePushForContainerIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007EE38;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = completionCopy;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = completionCopy;
  v11 = identifierCopy;
  dispatch_async(v8, block);
}

- (void)simulatePassProvisioningForPassUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007F258;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = completionCopy;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = completionCopy;
  v11 = identifierCopy;
  dispatch_async(v8, block);
}

- (void)generateRandomTransactionForTransactionSourceIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007F668;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = completionCopy;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = completionCopy;
  v11 = identifierCopy;
  dispatch_async(v8, block);
}

- (void)uploadTransaction:(id)transaction forTransactionSourceIdentifier:(id)identifier includeServerData:(BOOL)data completion:(id)completion
{
  transactionCopy = transaction;
  identifierCopy = identifier;
  completionCopy = completion;
  v13 = dispatch_get_global_queue(21, 0);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10007FAD0;
  v18[3] = &unk_100840BF8;
  v18[4] = self;
  v19 = transactionCopy;
  dataCopy = data;
  v20 = identifierCopy;
  v21 = completionCopy;
  v14 = v18;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v24 = v14;
  v15 = completionCopy;
  v16 = identifierCopy;
  v17 = transactionCopy;
  dispatch_async(v13, block);
}

- (void)deleteZone:(id)zone containerName:(id)name completion:(id)completion
{
  zoneCopy = zone;
  nameCopy = name;
  completionCopy = completion;
  v11 = dispatch_get_global_queue(21, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007FF38;
  v16[3] = &unk_10083E468;
  v16[4] = self;
  v17 = zoneCopy;
  v18 = nameCopy;
  v19 = completionCopy;
  v12 = v16;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v21 = v12;
  v13 = completionCopy;
  v14 = nameCopy;
  v15 = zoneCopy;
  dispatch_async(v11, block);
}

- (void)createZone:(id)zone containerName:(id)name completion:(id)completion
{
  zoneCopy = zone;
  nameCopy = name;
  completionCopy = completion;
  v11 = dispatch_get_global_queue(21, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10008037C;
  v16[3] = &unk_10083E468;
  v16[4] = self;
  v17 = zoneCopy;
  v18 = nameCopy;
  v19 = completionCopy;
  v12 = v16;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v21 = v12;
  v13 = completionCopy;
  v14 = nameCopy;
  v15 = zoneCopy;
  dispatch_async(v11, block);
}

- (void)populateEvents:(id)events forAccountIdentifier:(id)identifier completion:(id)completion
{
  eventsCopy = events;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = dispatch_get_global_queue(21, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000807C0;
  v16[3] = &unk_10083E468;
  v16[4] = self;
  v17 = eventsCopy;
  v18 = identifierCopy;
  v19 = completionCopy;
  v12 = v16;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v21 = v12;
  v13 = completionCopy;
  v14 = identifierCopy;
  v15 = eventsCopy;
  dispatch_async(v11, block);
}

- (void)declineInvitationForRecipientHandle:(id)handle zoneName:(id)name containerName:(id)containerName qualityOfService:(int64_t)service completion:(id)completion
{
  handleCopy = handle;
  nameCopy = name;
  containerNameCopy = containerName;
  completionCopy = completion;
  v16 = dispatch_get_global_queue(21, 0);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100080C3C;
  v22[3] = &unk_100840C48;
  v22[4] = self;
  v23 = handleCopy;
  v24 = nameCopy;
  v25 = containerNameCopy;
  v26 = completionCopy;
  serviceCopy = service;
  v17 = v22;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v29 = v17;
  v18 = completionCopy;
  v19 = containerNameCopy;
  v20 = nameCopy;
  v21 = handleCopy;
  dispatch_async(v16, block);
}

- (void)createInvitationForRecipientHandle:(id)handle zoneName:(id)name containerName:(id)containerName qualityOfService:(int64_t)service completion:(id)completion
{
  handleCopy = handle;
  nameCopy = name;
  containerNameCopy = containerName;
  completionCopy = completion;
  v16 = dispatch_get_global_queue(21, 0);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000810B4;
  v22[3] = &unk_100840C48;
  v22[4] = self;
  v23 = handleCopy;
  v24 = nameCopy;
  v25 = containerNameCopy;
  v26 = completionCopy;
  serviceCopy = service;
  v17 = v22;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v29 = v17;
  v18 = completionCopy;
  v19 = containerNameCopy;
  v20 = nameCopy;
  v21 = handleCopy;
  dispatch_async(v16, block);
}

- (void)shareForZoneName:(id)name containerName:(id)containerName qualityOfService:(int64_t)service completion:(id)completion
{
  nameCopy = name;
  containerNameCopy = containerName;
  completionCopy = completion;
  v13 = dispatch_get_global_queue(21, 0);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100081504;
  v18[3] = &unk_10083E178;
  v18[4] = self;
  v19 = nameCopy;
  v21 = completionCopy;
  serviceCopy = service;
  v20 = containerNameCopy;
  v14 = v18;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v24 = v14;
  v15 = completionCopy;
  v16 = containerNameCopy;
  v17 = nameCopy;
  dispatch_async(v13, block);
}

- (void)diagnosticInfoForContainerWithName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100081920;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = nameCopy;
  v14 = completionCopy;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = completionCopy;
  v11 = nameCopy;
  dispatch_async(v8, block);
}

- (void)diagnosticSnapshotForContainerWithName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100081D38;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = nameCopy;
  v14 = completionCopy;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = completionCopy;
  v11 = nameCopy;
  dispatch_async(v8, block);
}

- (void)performAction:(int64_t)action inContainerWithName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v10 = dispatch_get_global_queue(21, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008215C;
  v14[3] = &unk_10083F918;
  v14[4] = self;
  v15 = nameCopy;
  v16 = completionCopy;
  actionCopy = action;
  v11 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v19 = v11;
  v12 = completionCopy;
  v13 = nameCopy;
  dispatch_async(v10, block);
}

- (void)performBackgroundTransactionSyncFromDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100082570;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = dateCopy;
  v14 = completionCopy;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = completionCopy;
  v11 = dateCopy;
  dispatch_async(v8, block);
}

- (void)performBackgroundRecordChangesSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100082964;
  v8[3] = &unk_10083DCB8;
  v8[4] = self;
  v9 = completionCopy;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = completionCopy;
  dispatch_async(v5, block);
}

- (void)changeHistoryForContainerIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100082D74;
  v12[3] = &unk_10083F418;
  v13 = identifierCopy;
  v14 = completionCopy;
  v12[4] = self;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = identifierCopy;
  v11 = completionCopy;
  dispatch_async(v8, block);
}

- (void)uploadIssuerMessagingFlag:(id)flag completion:(id)completion
{
  flagCopy = flag;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000831B8;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = flagCopy;
  v14 = completionCopy;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = completionCopy;
  v11 = flagCopy;
  dispatch_async(v8, block);
}

- (void)deleteIssuerMessagingFlagWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000835E8;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = completionCopy;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = completionCopy;
  v11 = identifierCopy;
  dispatch_async(v8, block);
}

- (void)setupCloudDatabaseForContainerName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v8 = dispatch_get_global_queue(21, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100083A50;
    v10[3] = &unk_10083D320;
    v10[4] = self;
    v11 = nameCopy;
    v12 = completionCopy;
    v9 = v10;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v14 = v9;
    dispatch_async(v8, block);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)cloudStoreStatusForContainer:(id)container completion:(id)completion
{
  containerCopy = container;
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v8 = dispatch_get_global_queue(21, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100083C80;
    v10[3] = &unk_10083D320;
    v10[4] = self;
    v11 = containerCopy;
    v12 = completionCopy;
    v9 = v10;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v14 = v9;
    dispatch_async(v8, block);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }
}

- (void)checkTLKsMissingWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100083E84;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = completionCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)resetApplePayManateeViewWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10008407C;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = completionCopy;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

@end