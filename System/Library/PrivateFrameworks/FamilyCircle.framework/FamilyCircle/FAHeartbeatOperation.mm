@interface FAHeartbeatOperation
- (FAHeartbeatOperation)initWithNetworkService:(id)service grandSlamSigner:(id)signer familyGrandSlamSigner:(id)slamSigner;
- (id)_followupIdentifiers;
- (id)fetchHeartbeatData;
@end

@implementation FAHeartbeatOperation

- (FAHeartbeatOperation)initWithNetworkService:(id)service grandSlamSigner:(id)signer familyGrandSlamSigner:(id)slamSigner
{
  signerCopy = signer;
  slamSignerCopy = slamSigner;
  v14.receiver = self;
  v14.super_class = FAHeartbeatOperation;
  v11 = [(FANetworkClient *)&v14 initWithNetworkService:service];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_grandSlamSigner, signer);
    objc_storeStrong(&v12->_familyGrandSlamSigner, slamSigner);
  }

  return v12;
}

- (id)fetchHeartbeatData
{
  v3 = objc_alloc_init(NSMutableDictionary);
  _followupIdentifiers = [(FAHeartbeatOperation *)self _followupIdentifiers];
  [v3 setObject:_followupIdentifiers forKeyedSubscript:@"notificationIDs"];

  networkService = [(FANetworkClient *)self networkService];
  ensureDeviceUnlockedSinceBoot = [networkService ensureDeviceUnlockedSinceBoot];
  then = [ensureDeviceUnlockedSinceBoot then];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100014B1C;
  v24[3] = &unk_1000A5F78;
  v24[4] = self;
  v6 = (then)[2](then, v24);
  then2 = [v6 then];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100014B6C;
  v22[3] = &unk_1000A6B38;
  v22[4] = self;
  v23 = v3;
  v8 = then2[2];
  v17 = v3;
  v9 = v8(then2, v22);
  then3 = [v9 then];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100014C2C;
  v21[3] = &unk_1000A6798;
  v21[4] = self;
  v11 = (then3)[2](then3, v21);
  then4 = [v11 then];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100014CAC;
  v20[3] = &unk_1000A67C0;
  v20[4] = self;
  v13 = (then4)[2](then4, v20);
  then5 = [v13 then];
  v15 = (then5)[2](then5, &stru_1000A6B78);

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