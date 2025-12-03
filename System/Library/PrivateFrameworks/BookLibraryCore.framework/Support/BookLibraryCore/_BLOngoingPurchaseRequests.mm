@interface _BLOngoingPurchaseRequests
- (BOOL)checkAndAddStoreIDForRequest:(id)request;
- (_BLOngoingPurchaseRequests)init;
- (id)_purchaseRequestStoreID:(id)d;
- (void)removeStoreIDForRequest:(id)request;
@end

@implementation _BLOngoingPurchaseRequests

- (_BLOngoingPurchaseRequests)init
{
  v9.receiver = self;
  v9.super_class = _BLOngoingPurchaseRequests;
  v2 = [(_BLOngoingPurchaseRequests *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ibooks.BLService._BLOngoingPurchaseRequests", v3);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v4;

    v6 = objc_alloc_init(NSMutableSet);
    ongoingPurchaseRequestsByStoreID = v2->_ongoingPurchaseRequestsByStoreID;
    v2->_ongoingPurchaseRequestsByStoreID = v6;
  }

  return v2;
}

- (id)_purchaseRequestStoreID:(id)d
{
  dCopy = d;
  buyParameters = [dCopy buyParameters];
  storeIdentifier = [dCopy storeIdentifier];

  if ([storeIdentifier longLongValue] >= 1)
  {
    v6 = storeIdentifier;
LABEL_5:
    v7 = v6;
    goto LABEL_6;
  }

  if ([buyParameters length])
  {
    v6 = [BLUtilities storeIDFromBuyParameters:buyParameters];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:
  if ([v7 longLongValue] <= 0)
  {
    v8 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = storeIdentifier;
      v12 = 2112;
      v13 = buyParameters;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Purchase-Mgr]: storeID not found: storeIdentifier=%@, buyParameters=%@", &v10, 0x16u);
    }
  }

  return v7;
}

- (BOOL)checkAndAddStoreIDForRequest:(id)request
{
  requestCopy = request;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(_BLOngoingPurchaseRequests *)self _purchaseRequestStoreID:requestCopy];
  if ([v5 longLongValue] >= 1)
  {
    accessQueue = [(_BLOngoingPurchaseRequests *)self accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B4FD0;
    block[3] = &unk_10011DD50;
    v11 = &v12;
    block[4] = self;
    v10 = v5;
    dispatch_sync(accessQueue, block);
  }

  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return (v7 & 1) == 0;
}

- (void)removeStoreIDForRequest:(id)request
{
  v4 = [(_BLOngoingPurchaseRequests *)self _purchaseRequestStoreID:request];
  if ([v4 longLongValue] >= 1)
  {
    accessQueue = [(_BLOngoingPurchaseRequests *)self accessQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000B5130;
    v6[3] = &unk_10011D1A8;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(accessQueue, v6);
  }
}

@end