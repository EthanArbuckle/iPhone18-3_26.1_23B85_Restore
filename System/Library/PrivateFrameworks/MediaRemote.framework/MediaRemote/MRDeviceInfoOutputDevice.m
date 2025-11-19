@interface MRDeviceInfoOutputDevice
- (MRDeviceInfoOutputDevice)initWithDeviceInfo:(id)a3 fallbackOutputDevice:(id)a4 forExporting:(BOOL)a5;
@end

@implementation MRDeviceInfoOutputDevice

- (MRDeviceInfoOutputDevice)initWithDeviceInfo:(id)a3 fallbackOutputDevice:(id)a4 forExporting:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [a4 descriptor];
  v10 = [v9 copy];

  v11 = [v8 deviceUID];
  [v10 setUniqueIdentifier:v11];

  v12 = [v8 deviceUID];
  [v10 setLogicalDeviceID:v12];

  if ([v8 clusterType])
  {
    [v8 groupName];
  }

  else
  {
    [v8 computerName];
  }
  v13 = ;
  [v10 setName:v13];

  v14 = [v8 modelID];
  [v10 setModelID:v14];

  v15 = [v8 parentGroupID];
  [v10 setParentGroupIdentifier:v15];

  v16 = [v8 airPlayGroupUID];
  [v10 setAirPlayGroupID:v16];

  [v10 setIsGroupable:1];
  [v10 setIsRemoteControllable:1];
  [v10 setSupportsMultiplayer:{objc_msgSend(v8, "supportsMultiplayer")}];
  [v10 setDeviceType:1];
  [v10 setDeviceSubType:{objc_msgSend(v8, "deviceSubtype")}];
  [v10 setHostDeviceClass:{objc_msgSend(v8, "deviceClass")}];
  [v10 setClusterType:{objc_msgSend(v8, "clusterType")}];
  [v10 setIsProxyGroupPlayer:{objc_msgSend(v8, "isProxyGroupPlayer")}];
  [v10 setIsGroupLeader:{objc_msgSend(v8, "isGroupLeader")}];
  [v10 setIsAirPlayReceiverSessionActive:{objc_msgSend(v8, "isAirPlayActive")}];
  [v10 setGroupContainsGroupLeader:{objc_msgSend(v8, "groupContainsDiscoverableGroupLeader")}];
  [v10 setParentGroupContainsDiscoverableLeader:{objc_msgSend(v8, "parentGroupContainsDiscoverableGroupLeader")}];
  [v10 setConfiguredClusterSize:{objc_msgSend(v8, "configuredClusterSize")}];
  v17 = [v8 clusteredDevices];
  v18 = [v17 msv_map:&__block_literal_global_103];
  v19 = [v18 mutableCopy];
  [v10 setClusterCompositions:v19];

  if (v5)
  {
    [v10 setIsLocalDevice:0];
  }

  else
  {
    v20 = [v8 deviceUID];
    v21 = MRMediaRemoteCopyDeviceUID();
    [v10 setIsLocalDevice:{objc_msgSend(v20, "isEqualToString:", v21)}];
  }

  v24.receiver = self;
  v24.super_class = MRDeviceInfoOutputDevice;
  v22 = [(MRAVDistantOutputDevice *)&v24 initWithDescriptor:v10];

  return v22;
}

id __81__MRDeviceInfoOutputDevice_initWithDeviceInfo_fallbackOutputDevice_forExporting___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MRAVOutputDeviceDescription alloc];
  v4 = [v2 deviceUID];
  v5 = [v2 computerName];
  v6 = [v2 modelID];

  v7 = [(MRAVOutputDeviceDescription *)v3 initWithDeviceType:1 deviceSubtype:12 uid:v4 name:v5 modelID:v6];
  v8 = [(MRAVOutputDeviceDescription *)v7 descriptor];

  return v8;
}

@end