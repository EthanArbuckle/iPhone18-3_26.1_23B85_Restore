@interface MRDeviceInfoOutputDevice
- (MRDeviceInfoOutputDevice)initWithDeviceInfo:(id)info fallbackOutputDevice:(id)device forExporting:(BOOL)exporting;
@end

@implementation MRDeviceInfoOutputDevice

- (MRDeviceInfoOutputDevice)initWithDeviceInfo:(id)info fallbackOutputDevice:(id)device forExporting:(BOOL)exporting
{
  exportingCopy = exporting;
  infoCopy = info;
  descriptor = [device descriptor];
  v10 = [descriptor copy];

  deviceUID = [infoCopy deviceUID];
  [v10 setUniqueIdentifier:deviceUID];

  deviceUID2 = [infoCopy deviceUID];
  [v10 setLogicalDeviceID:deviceUID2];

  if ([infoCopy clusterType])
  {
    [infoCopy groupName];
  }

  else
  {
    [infoCopy computerName];
  }
  v13 = ;
  [v10 setName:v13];

  modelID = [infoCopy modelID];
  [v10 setModelID:modelID];

  parentGroupID = [infoCopy parentGroupID];
  [v10 setParentGroupIdentifier:parentGroupID];

  airPlayGroupUID = [infoCopy airPlayGroupUID];
  [v10 setAirPlayGroupID:airPlayGroupUID];

  [v10 setIsGroupable:1];
  [v10 setIsRemoteControllable:1];
  [v10 setSupportsMultiplayer:{objc_msgSend(infoCopy, "supportsMultiplayer")}];
  [v10 setDeviceType:1];
  [v10 setDeviceSubType:{objc_msgSend(infoCopy, "deviceSubtype")}];
  [v10 setHostDeviceClass:{objc_msgSend(infoCopy, "deviceClass")}];
  [v10 setClusterType:{objc_msgSend(infoCopy, "clusterType")}];
  [v10 setIsProxyGroupPlayer:{objc_msgSend(infoCopy, "isProxyGroupPlayer")}];
  [v10 setIsGroupLeader:{objc_msgSend(infoCopy, "isGroupLeader")}];
  [v10 setIsAirPlayReceiverSessionActive:{objc_msgSend(infoCopy, "isAirPlayActive")}];
  [v10 setGroupContainsGroupLeader:{objc_msgSend(infoCopy, "groupContainsDiscoverableGroupLeader")}];
  [v10 setParentGroupContainsDiscoverableLeader:{objc_msgSend(infoCopy, "parentGroupContainsDiscoverableGroupLeader")}];
  [v10 setConfiguredClusterSize:{objc_msgSend(infoCopy, "configuredClusterSize")}];
  clusteredDevices = [infoCopy clusteredDevices];
  v18 = [clusteredDevices msv_map:&__block_literal_global_103];
  v19 = [v18 mutableCopy];
  [v10 setClusterCompositions:v19];

  if (exportingCopy)
  {
    [v10 setIsLocalDevice:0];
  }

  else
  {
    deviceUID3 = [infoCopy deviceUID];
    v21 = MRMediaRemoteCopyDeviceUID();
    [v10 setIsLocalDevice:{objc_msgSend(deviceUID3, "isEqualToString:", v21)}];
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