@interface MRDAVRemoteControlClusterOutputDevice
- (MRDAVRemoteControlClusterOutputDevice)initWithDevices:(id)a3;
- (MRDAVRemoteControlClusterOutputDevice)initWithPrimaryOutputDevice:(id)a3 members:(id)a4;
- (id)_calculateHierarchy:(id)a3;
- (id)_createStereoPairRepresentationFrom:(id)a3;
@end

@implementation MRDAVRemoteControlClusterOutputDevice

- (MRDAVRemoteControlClusterOutputDevice)initWithDevices:(id)a3
{
  v4 = a3;
  v5 = [v4 firstObject];
  v6 = [v5 clusterType];

  if (v6 == 2)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = sub_1000350AC;
    v41 = sub_100035A0C;
    v42 = 0;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000C1B44;
    v34[3] = &unk_1004BAEF0;
    v7 = [v4 mutableCopy];
    v35 = v7;
    v36 = &v37;
    [v4 enumerateObjectsUsingBlock:v34];
    v8 = v38[5];
    if (v8)
    {
      v9 = [v7 copy];
      self = [(MRDAVRemoteControlClusterOutputDevice *)self initWithPrimaryOutputDevice:v8 members:v9];
      v10 = self;
    }

    else
    {
      v9 = _MRLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1003A76B8(v4, v9);
      }

      v10 = 0;
    }

    _Block_object_dispose(&v37, 8);
  }

  else
  {
    v11 = [v4 msv_firstWhere:&stru_1004BAF10];

    if (v11)
    {
      v12 = NSStringFromSelector("isAirPlayReceiverSessionActive");
      v13 = [NSSortDescriptor sortDescriptorWithKey:v12 ascending:1];
      v44[0] = v13;
      v14 = NSStringFromSelector("isClusterLeader");
      v15 = [NSSortDescriptor sortDescriptorWithKey:v14 ascending:0];
      v44[1] = v15;
      v31 = [NSArray arrayWithObjects:v44 count:2];
    }

    else
    {
      v12 = NSStringFromSelector("isGroupLeader");
      v13 = [NSSortDescriptor sortDescriptorWithKey:v12 ascending:0];
      v43[0] = v13;
      v14 = NSStringFromSelector("groupContextID");
      v15 = [NSSortDescriptor sortDescriptorWithKey:v14 ascending:0];
      v43[1] = v15;
      v30 = NSStringFromSelector("isAirPlayReceiverSessionActive");
      v29 = [NSSortDescriptor sortDescriptorWithKey:v30 ascending:1];
      v43[2] = v29;
      v16 = NSStringFromSelector("isProxyGroupPlayer");
      v17 = [NSSortDescriptor sortDescriptorWithKey:v16 ascending:0];
      v43[3] = v17;
      v18 = NSStringFromSelector("uid");
      v19 = [NSSortDescriptor sortDescriptorWithKey:v18 ascending:1];
      v43[4] = v19;
      v31 = [NSArray arrayWithObjects:v43 count:5];
    }

    v20 = [v4 sortedArrayUsingDescriptors:v31];
    v21 = [v20 firstObject];
    if ((([v21 clusterType] - 1) & 0xFFFFFFFD) == 0)
    {
      v22 = [v20 mr_first:&stru_1004BAF30];
      if (v22)
      {
        v23 = +[MRDeviceInfoRequest localDeviceInfo];
        v24 = [v23 parentGroupContainsDiscoverableGroupLeader];

        if ((v24 & 1) == 0)
        {
          v25 = v22;

          v21 = v25;
        }
      }
    }

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000C1BDC;
    v32[3] = &unk_1004B8A40;
    v33 = v21;
    v26 = v21;
    v27 = [v20 mr_filter:v32];
    self = [(MRDAVRemoteControlClusterOutputDevice *)self initWithPrimaryOutputDevice:v26 members:v27];

    v10 = self;
  }

  return v10;
}

- (MRDAVRemoteControlClusterOutputDevice)initWithPrimaryOutputDevice:(id)a3 members:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 descriptor];
  v13.receiver = self;
  v13.super_class = MRDAVRemoteControlClusterOutputDevice;
  v9 = [(MRDAVRemoteControlClusterOutputDevice *)&v13 initWithDescriptor:v8];

  if (v9)
  {
    v10 = [v7 arrayByAddingObject:v6];
    memberOutputDevices = v9->_memberOutputDevices;
    v9->_memberOutputDevices = v10;
  }

  return v9;
}

- (id)_calculateHierarchy:(id)a3
{
  v4 = a3;
  if ([v4 count] > 1)
  {
    v6 = [v4 mutableCopy];
    v7 = objc_alloc_init(NSMutableDictionary);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = v4;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v13 tightSyncID];
          if (v14)
          {
            v15 = [v7 objectForKeyedSubscript:v14];
            if (!v15)
            {
              v15 = objc_alloc_init(NSMutableArray);
              [v7 setObject:v15 forKeyedSubscript:v14];
            }

            [v15 addObject:v13];
            [v6 removeObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000C1FA8;
    v19[3] = &unk_1004BAFB8;
    v16 = v6;
    v20 = v16;
    v21 = self;
    [v7 enumerateKeysAndObjectsUsingBlock:v19];
    v5 = v16;

    v4 = v18;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (id)_createStereoPairRepresentationFrom:(id)a3
{
  v3 = a3;
  v4 = [v3 mr_first:&stru_1004BAFD8];
  if (!v4)
  {
    v4 = [v3 firstObject];
  }

  v5 = objc_alloc_init(_MRAVOutputDeviceDescriptorProtobuf);
  v6 = [v4 tightSyncID];
  [v5 setUniqueIdentifier:v6];

  v7 = [v4 name];
  [v5 setName:v7];

  [v5 setClusterType:1];
  [v5 setDeviceType:1];
  [v5 setDeviceSubType:15];
  v8 = [NSString alloc];
  v9 = [v4 modelID];
  v10 = [v8 initWithFormat:@"%@-%@", v9, @"TightSyncCluster"];
  [v5 setModelID:v10];

  v11 = [v3 mr_map:&stru_1004BAFF8];
  v12 = [v11 mutableCopy];
  [v5 setAllClusterMembers:v12];

  v13 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v5];

  return v13;
}

@end