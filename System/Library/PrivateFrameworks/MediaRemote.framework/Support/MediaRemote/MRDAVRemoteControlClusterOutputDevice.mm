@interface MRDAVRemoteControlClusterOutputDevice
- (MRDAVRemoteControlClusterOutputDevice)initWithDevices:(id)devices;
- (MRDAVRemoteControlClusterOutputDevice)initWithPrimaryOutputDevice:(id)device members:(id)members;
- (id)_calculateHierarchy:(id)hierarchy;
- (id)_createStereoPairRepresentationFrom:(id)from;
@end

@implementation MRDAVRemoteControlClusterOutputDevice

- (MRDAVRemoteControlClusterOutputDevice)initWithDevices:(id)devices
{
  devicesCopy = devices;
  firstObject = [devicesCopy firstObject];
  clusterType = [firstObject clusterType];

  if (clusterType == 2)
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
    v7 = [devicesCopy mutableCopy];
    v35 = v7;
    v36 = &v37;
    [devicesCopy enumerateObjectsUsingBlock:v34];
    v8 = v38[5];
    if (v8)
    {
      v9 = [v7 copy];
      self = [(MRDAVRemoteControlClusterOutputDevice *)self initWithPrimaryOutputDevice:v8 members:v9];
      selfCopy2 = self;
    }

    else
    {
      v9 = _MRLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1003A76B8(devicesCopy, v9);
      }

      selfCopy2 = 0;
    }

    _Block_object_dispose(&v37, 8);
  }

  else
  {
    v11 = [devicesCopy msv_firstWhere:&stru_1004BAF10];

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

    v20 = [devicesCopy sortedArrayUsingDescriptors:v31];
    firstObject2 = [v20 firstObject];
    if ((([firstObject2 clusterType] - 1) & 0xFFFFFFFD) == 0)
    {
      v22 = [v20 mr_first:&stru_1004BAF30];
      if (v22)
      {
        v23 = +[MRDeviceInfoRequest localDeviceInfo];
        parentGroupContainsDiscoverableGroupLeader = [v23 parentGroupContainsDiscoverableGroupLeader];

        if ((parentGroupContainsDiscoverableGroupLeader & 1) == 0)
        {
          v25 = v22;

          firstObject2 = v25;
        }
      }
    }

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000C1BDC;
    v32[3] = &unk_1004B8A40;
    v33 = firstObject2;
    v26 = firstObject2;
    v27 = [v20 mr_filter:v32];
    self = [(MRDAVRemoteControlClusterOutputDevice *)self initWithPrimaryOutputDevice:v26 members:v27];

    selfCopy2 = self;
  }

  return selfCopy2;
}

- (MRDAVRemoteControlClusterOutputDevice)initWithPrimaryOutputDevice:(id)device members:(id)members
{
  deviceCopy = device;
  membersCopy = members;
  descriptor = [deviceCopy descriptor];
  v13.receiver = self;
  v13.super_class = MRDAVRemoteControlClusterOutputDevice;
  v9 = [(MRDAVRemoteControlClusterOutputDevice *)&v13 initWithDescriptor:descriptor];

  if (v9)
  {
    v10 = [membersCopy arrayByAddingObject:deviceCopy];
    memberOutputDevices = v9->_memberOutputDevices;
    v9->_memberOutputDevices = v10;
  }

  return v9;
}

- (id)_calculateHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  if ([hierarchyCopy count] > 1)
  {
    v6 = [hierarchyCopy mutableCopy];
    v7 = objc_alloc_init(NSMutableDictionary);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = hierarchyCopy;
    v8 = hierarchyCopy;
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
          tightSyncID = [v13 tightSyncID];
          if (tightSyncID)
          {
            v15 = [v7 objectForKeyedSubscript:tightSyncID];
            if (!v15)
            {
              v15 = objc_alloc_init(NSMutableArray);
              [v7 setObject:v15 forKeyedSubscript:tightSyncID];
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
    selfCopy = self;
    [v7 enumerateKeysAndObjectsUsingBlock:v19];
    v5 = v16;

    hierarchyCopy = v18;
  }

  else
  {
    v5 = hierarchyCopy;
  }

  return v5;
}

- (id)_createStereoPairRepresentationFrom:(id)from
{
  fromCopy = from;
  firstObject = [fromCopy mr_first:&stru_1004BAFD8];
  if (!firstObject)
  {
    firstObject = [fromCopy firstObject];
  }

  v5 = objc_alloc_init(_MRAVOutputDeviceDescriptorProtobuf);
  tightSyncID = [firstObject tightSyncID];
  [v5 setUniqueIdentifier:tightSyncID];

  name = [firstObject name];
  [v5 setName:name];

  [v5 setClusterType:1];
  [v5 setDeviceType:1];
  [v5 setDeviceSubType:15];
  v8 = [NSString alloc];
  modelID = [firstObject modelID];
  v10 = [v8 initWithFormat:@"%@-%@", modelID, @"TightSyncCluster"];
  [v5 setModelID:v10];

  v11 = [fromCopy mr_map:&stru_1004BAFF8];
  v12 = [v11 mutableCopy];
  [v5 setAllClusterMembers:v12];

  v13 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v5];

  return v13;
}

@end