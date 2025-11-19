@interface FAHeartbeatOperation
- (FAHeartbeatOperation)initWithNetworkService:(id)a3 grandSlamSigner:(id)a4 familyGrandSlamSigner:(id)a5;
- (id)_followupIdentifiers;
- (id)fetchHeartbeatData;
@end

@implementation FAHeartbeatOperation

- (FAHeartbeatOperation)initWithNetworkService:(id)a3 grandSlamSigner:(id)a4 familyGrandSlamSigner:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = FAHeartbeatOperation;
  v11 = [(FANetworkClient *)&v14 initWithNetworkService:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_grandSlamSigner, a4);
    objc_storeStrong(&v12->_familyGrandSlamSigner, a5);
  }

  return v12;
}

- (id)fetchHeartbeatData
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(FAHeartbeatOperation *)self _followupIdentifiers];
  [v3 setObject:v4 forKeyedSubscript:@"notificationIDs"];

  v19 = [(FANetworkClient *)self networkService];
  v18 = [v19 ensureDeviceUnlockedSinceBoot];
  v5 = [v18 then];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100014B1C;
  v24[3] = &unk_1000A5F78;
  v24[4] = self;
  v6 = (v5)[2](v5, v24);
  v7 = [v6 then];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100014B6C;
  v22[3] = &unk_1000A6B38;
  v22[4] = self;
  v23 = v3;
  v8 = v7[2];
  v17 = v3;
  v9 = v8(v7, v22);
  v10 = [v9 then];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100014C2C;
  v21[3] = &unk_1000A6798;
  v21[4] = self;
  v11 = (v10)[2](v10, v21);
  v12 = [v11 then];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100014CAC;
  v20[3] = &unk_1000A67C0;
  v20[4] = self;
  v13 = (v12)[2](v12, v20);
  v14 = [v13 then];
  v15 = (v14)[2](v14, &stru_1000A6B78);

  return v15;
}

- (id)_followupIdentifiers
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = [FLFollowUpController alloc];
  v4 = [v3 initWithClientIdentifier:FAFollowUpClientIdentifier];
  v5 = [v4 pendingFollowUpItems:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100014E20;
  v8[3] = &unk_1000A6BA0;
  v6 = v2;
  v9 = v6;
  [v5 enumerateObjectsUsingBlock:v8];

  return v6;
}

@end