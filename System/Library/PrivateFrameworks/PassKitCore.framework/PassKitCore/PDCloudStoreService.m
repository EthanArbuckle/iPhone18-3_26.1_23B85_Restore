@interface PDCloudStoreService
- (PDCloudStoreService)initWithConnection:(id)a3 server:(id)a4;
- (void)allItemsOfItemType:(unint64_t)a3 storeLocally:(BOOL)a4 completion:(id)a5;
- (void)applePayContainerItemsFromDate:(id)a3 toDate:(id)a4 completion:(id)a5;
- (void)changeHistoryForContainerIdentifier:(id)a3 completion:(id)a4;
- (void)checkTLKsMissingWithCompletion:(id)a3;
- (void)cloudStoreRecordArrayWithConfiguration:(id)a3 completion:(id)a4;
- (void)cloudStoreStatusForContainer:(id)a3 completion:(id)a4;
- (void)createInvitationForRecipientHandle:(id)a3 zoneName:(id)a4 containerName:(id)a5 qualityOfService:(int64_t)a6 completion:(id)a7;
- (void)createZone:(id)a3 containerName:(id)a4 completion:(id)a5;
- (void)declineInvitationForRecipientHandle:(id)a3 zoneName:(id)a4 containerName:(id)a5 qualityOfService:(int64_t)a6 completion:(id)a7;
- (void)deleteIssuerMessagingFlagWithIdentifier:(id)a3 completion:(id)a4;
- (void)deleteZone:(id)a3 containerName:(id)a4 completion:(id)a5;
- (void)diagnosticInfoForContainerWithName:(id)a3 completion:(id)a4;
- (void)diagnosticSnapshotForContainerWithName:(id)a3 completion:(id)a4;
- (void)generateRandomTransactionForTransactionSourceIdentifier:(id)a3 completion:(id)a4;
- (void)itemOfItemType:(unint64_t)a3 recordName:(id)a4 qualityOfService:(int64_t)a5 completion:(id)a6;
- (void)itemOfItemTypeFromAllZones:(unint64_t)a3 recordName:(id)a4 qualityOfService:(int64_t)a5 completion:(id)a6;
- (void)performAction:(int64_t)a3 inContainerWithName:(id)a4 completion:(id)a5;
- (void)performBackgroundRecordChangesSyncWithCompletion:(id)a3;
- (void)performBackgroundTransactionSyncFromDate:(id)a3 completion:(id)a4;
- (void)populateEvents:(id)a3 forAccountIdentifier:(id)a4 completion:(id)a5;
- (void)removeAllItems:(unint64_t)a3 inZoneName:(id)a4 containerName:(id)a5 storeLocally:(BOOL)a6 completion:(id)a7;
- (void)removeRecordWithRecordName:(id)a3 zoneName:(id)a4 containerName:(id)a5 completion:(id)a6;
- (void)resetApplePayManateeViewWithCompletion:(id)a3;
- (void)resetContainerWithIdentifier:(id)a3 zoneNames:(id)a4 completion:(id)a5;
- (void)setupCloudDatabaseForContainerName:(id)a3 completion:(id)a4;
- (void)shareForZoneName:(id)a3 containerName:(id)a4 qualityOfService:(int64_t)a5 completion:(id)a6;
- (void)simulateCloudStorePushForContainerIdentifier:(id)a3 completion:(id)a4;
- (void)simulatePassProvisioningForPassUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)updateCloudStoreWithLocalItemsWithConfigurations:(id)a3 completion:(id)a4;
- (void)uploadIssuerMessagingFlag:(id)a3 completion:(id)a4;
- (void)uploadTransaction:(id)a3 forTransactionSourceIdentifier:(id)a4 includeServerData:(BOOL)a5 completion:(id)a6;
@end

@implementation PDCloudStoreService

- (PDCloudStoreService)initWithConnection:(id)a3 server:(id)a4
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PDCloudStoreService;
  v6 = [(PDCloudStoreService *)&v12 initWithConnection:v5];
  if (v6)
  {
    v7 = [[PKEntitlementWhitelist alloc] initWithConnection:v5];
    whitelist = v6->_whitelist;
    v6->_whitelist = v7;

    v9 = PKCloudStoreServiceInterface();
    [v5 setRemoteObjectInterface:v9];

    v10 = PDCloudStoreServiceInterface();
    [v5 setExportedInterface:v10];

    [v5 setExportedObject:v6];
  }

  return v6;
}

- (void)updateCloudStoreWithLocalItemsWithConfigurations:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = dispatch_get_global_queue(21, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10007C830;
    v10[3] = &unk_10083D320;
    v10[4] = self;
    v11 = v6;
    v12 = v7;
    v9 = v10;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v14 = v9;
    dispatch_async(v8, block);
  }
}

- (void)removeAllItems:(unint64_t)a3 inZoneName:(id)a4 containerName:(id)a5 storeLocally:(BOOL)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (v14)
  {
    v15 = dispatch_get_global_queue(21, 0);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10007CC88;
    v17[3] = &unk_100840BD0;
    v17[4] = self;
    v21 = a3;
    v18 = v12;
    v19 = v13;
    v22 = a6;
    v20 = v14;
    v16 = v17;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v24 = v16;
    dispatch_async(v15, block);
  }
}

- (void)removeRecordWithRecordName:(id)a3 zoneName:(id)a4 containerName:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    v14 = dispatch_get_global_queue(21, 0);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10007D0F8;
    v16[3] = &unk_10083FD78;
    v16[4] = self;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    v15 = v16;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v22 = v15;
    dispatch_async(v14, block);
  }
}

- (void)allItemsOfItemType:(unint64_t)a3 storeLocally:(BOOL)a4 completion:(id)a5
{
  v8 = a5;
  if (v8)
  {
    v9 = dispatch_get_global_queue(21, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10007D504;
    v11[3] = &unk_10083F440;
    v11[4] = self;
    v13 = a3;
    v14 = a4;
    v12 = v8;
    v10 = v11;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v16 = v10;
    dispatch_async(v9, block);
  }
}

- (void)applePayContainerItemsFromDate:(id)a3 toDate:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = dispatch_get_global_queue(21, 0);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10007D948;
    v13[3] = &unk_10083E468;
    v13[4] = self;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    v12 = v13;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v18 = v12;
    dispatch_async(v11, block);
  }
}

- (void)itemOfItemType:(unint64_t)a3 recordName:(id)a4 qualityOfService:(int64_t)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  if (v11)
  {
    v12 = dispatch_get_global_queue(21, 0);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10007DD7C;
    v14[3] = &unk_10083FE18;
    v14[4] = self;
    v17 = a3;
    v15 = v10;
    v18 = a5;
    v16 = v11;
    v13 = v14;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v20 = v13;
    dispatch_async(v12, block);
  }
}

- (void)itemOfItemTypeFromAllZones:(unint64_t)a3 recordName:(id)a4 qualityOfService:(int64_t)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  if (v11)
  {
    v12 = dispatch_get_global_queue(21, 0);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10007E1B8;
    v14[3] = &unk_10083FE18;
    v14[4] = self;
    v17 = a3;
    v15 = v10;
    v18 = a5;
    v16 = v11;
    v13 = v14;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v20 = v13;
    dispatch_async(v12, block);
  }
}

- (void)cloudStoreRecordArrayWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = dispatch_get_global_queue(21, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10007E5DC;
    v10[3] = &unk_10083D320;
    v10[4] = self;
    v11 = v6;
    v12 = v7;
    v9 = v10;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v14 = v9;
    dispatch_async(v8, block);
  }
}

- (void)resetContainerWithIdentifier:(id)a3 zoneNames:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(21, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007EA1C;
  v16[3] = &unk_10083E468;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v12 = v16;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v21 = v12;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(v11, block);
}

- (void)simulateCloudStorePushForContainerIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007EE38;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)simulatePassProvisioningForPassUniqueIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007F258;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)generateRandomTransactionForTransactionSourceIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007F668;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)uploadTransaction:(id)a3 forTransactionSourceIdentifier:(id)a4 includeServerData:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = dispatch_get_global_queue(21, 0);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10007FAD0;
  v18[3] = &unk_100840BF8;
  v18[4] = self;
  v19 = v10;
  v22 = a5;
  v20 = v11;
  v21 = v12;
  v14 = v18;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v24 = v14;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  dispatch_async(v13, block);
}

- (void)deleteZone:(id)a3 containerName:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(21, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007FF38;
  v16[3] = &unk_10083E468;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v12 = v16;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v21 = v12;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(v11, block);
}

- (void)createZone:(id)a3 containerName:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(21, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10008037C;
  v16[3] = &unk_10083E468;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v12 = v16;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v21 = v12;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(v11, block);
}

- (void)populateEvents:(id)a3 forAccountIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(21, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000807C0;
  v16[3] = &unk_10083E468;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v12 = v16;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v21 = v12;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(v11, block);
}

- (void)declineInvitationForRecipientHandle:(id)a3 zoneName:(id)a4 containerName:(id)a5 qualityOfService:(int64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = dispatch_get_global_queue(21, 0);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100080C3C;
  v22[3] = &unk_100840C48;
  v22[4] = self;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = a6;
  v17 = v22;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v29 = v17;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  dispatch_async(v16, block);
}

- (void)createInvitationForRecipientHandle:(id)a3 zoneName:(id)a4 containerName:(id)a5 qualityOfService:(int64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = dispatch_get_global_queue(21, 0);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000810B4;
  v22[3] = &unk_100840C48;
  v22[4] = self;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = a6;
  v17 = v22;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v29 = v17;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  dispatch_async(v16, block);
}

- (void)shareForZoneName:(id)a3 containerName:(id)a4 qualityOfService:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = dispatch_get_global_queue(21, 0);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100081504;
  v18[3] = &unk_10083E178;
  v18[4] = self;
  v19 = v10;
  v21 = v12;
  v22 = a5;
  v20 = v11;
  v14 = v18;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v24 = v14;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  dispatch_async(v13, block);
}

- (void)diagnosticInfoForContainerWithName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100081920;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)diagnosticSnapshotForContainerWithName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100081D38;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)performAction:(int64_t)a3 inContainerWithName:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = dispatch_get_global_queue(21, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008215C;
  v14[3] = &unk_10083F918;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = a3;
  v11 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  dispatch_async(v10, block);
}

- (void)performBackgroundTransactionSyncFromDate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100082570;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)performBackgroundRecordChangesSyncWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100082964;
  v8[3] = &unk_10083DCB8;
  v8[4] = self;
  v9 = v4;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v11 = v6;
  v7 = v4;
  dispatch_async(v5, block);
}

- (void)changeHistoryForContainerIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100082D74;
  v12[3] = &unk_10083F418;
  v13 = v6;
  v14 = v7;
  v12[4] = self;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = v6;
  v11 = v7;
  dispatch_async(v8, block);
}

- (void)uploadIssuerMessagingFlag:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000831B8;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)deleteIssuerMessagingFlagWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000835E8;
  v12[3] = &unk_10083D320;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000565C;
  block[3] = &unk_10083D648;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)setupCloudDatabaseForContainerName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v8 = dispatch_get_global_queue(21, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100083A50;
    v10[3] = &unk_10083D320;
    v10[4] = self;
    v11 = v6;
    v12 = v7;
    v9 = v10;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v14 = v9;
    dispatch_async(v8, block);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)cloudStoreStatusForContainer:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v8 = dispatch_get_global_queue(21, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100083C80;
    v10[3] = &unk_10083D320;
    v10[4] = self;
    v11 = v6;
    v12 = v7;
    v9 = v10;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v14 = v9;
    dispatch_async(v8, block);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0, 0, 0);
  }
}

- (void)checkTLKsMissingWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100083E84;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)resetApplePayManateeViewWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PKEntitlementWhitelist *)self->_whitelist peerPaymentAllAccess])
  {
    v5 = dispatch_get_global_queue(21, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10008407C;
    v7[3] = &unk_10083DCB8;
    v7[4] = self;
    v8 = v4;
    v6 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000565C;
    block[3] = &unk_10083D648;
    v10 = v6;
    dispatch_async(v5, block);
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

@end