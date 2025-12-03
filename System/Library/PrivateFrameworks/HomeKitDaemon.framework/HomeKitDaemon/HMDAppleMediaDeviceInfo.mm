@interface HMDAppleMediaDeviceInfo
- (HMDAppleMediaDeviceInfo)init;
- (HMDAppleMediaDeviceInfo)initWithDeviceID:(id)d mediaRouteID:(id)iD deviceCapabilities:(id)capabilities;
- (HMDAppleMediaDeviceInfo)initWithPayload:(id)payload;
- (id)asPayload;
- (id)attributeDescriptions;
@end

@implementation HMDAppleMediaDeviceInfo

- (id)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  deviceID = [(HMDAppleMediaDeviceInfo *)self deviceID];
  v5 = [v3 initWithName:@"Device ID" value:deviceID];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  modelID = [(HMDAppleMediaDeviceInfo *)self modelID];
  v8 = [v6 initWithName:@"Model ID" value:modelID];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  mediaRouteUUID = [(HMDAppleMediaDeviceInfo *)self mediaRouteUUID];
  v11 = [v9 initWithName:@"Media Route" value:mediaRouteUUID];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  capabilities = [(HMDAppleMediaDeviceInfo *)self capabilities];
  v14 = [v12 initWithName:@"Capabilities" value:capabilities];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)asPayload
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  deviceID = [(HMDAppleMediaDeviceInfo *)self deviceID];

  if (deviceID)
  {
    deviceID2 = [(HMDAppleMediaDeviceInfo *)self deviceID];
    [dictionary setObject:deviceID2 forKey:@"HMDAM.u"];
  }

  mediaRouteUUID = [(HMDAppleMediaDeviceInfo *)self mediaRouteUUID];

  if (mediaRouteUUID)
  {
    mediaRouteUUID2 = [(HMDAppleMediaDeviceInfo *)self mediaRouteUUID];
    uUIDString = [mediaRouteUUID2 UUIDString];
    [dictionary setObject:uUIDString forKey:@"HMDAM.r"];
  }

  capabilities = [(HMDAppleMediaDeviceInfo *)self capabilities];

  if (capabilities)
  {
    v10 = MEMORY[0x277CCAAB0];
    capabilities2 = [(HMDAppleMediaDeviceInfo *)self capabilities];
    v12 = [v10 archivedDataWithRootObject:capabilities2 requiringSecureCoding:1 error:0];

    if (v12)
    {
      [dictionary setObject:v12 forKey:@"HMDAM.c"];
    }
  }

  v13 = [dictionary copy];

  return v13;
}

- (HMDAppleMediaDeviceInfo)init
{
  v3 = _mediaRouteIdentifier;
  if (v3)
  {
    v4 = v3;
    v5 = uniqueDeviceId;
    v6 = +[HMDAppleAccountManager sharedManager];
    device = [v6 device];
    capabilities = [device capabilities];
    v9 = [(HMDAppleMediaDeviceInfo *)self initWithDeviceID:v5 mediaRouteID:v4 deviceCapabilities:capabilities];

    return v9;
  }

  else
  {
    v11 = _HMFPreconditionFailure();
    return [(HMDAppleMediaDeviceInfo *)v11 initWithPayload:v12, v13];
  }
}

- (HMDAppleMediaDeviceInfo)initWithPayload:(id)payload
{
  payloadCopy = payload;
  v5 = [payloadCopy objectForKey:@"HMDAM.c"];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = [payloadCopy objectForKey:@"HMDAM.u"];
  v8 = [payloadCopy objectForKey:@"HMDAM.r"];

  v9 = [(HMDAppleMediaDeviceInfo *)self initWithDeviceID:v7 mediaRouteID:v8 deviceCapabilities:v6];
  return v9;
}

- (HMDAppleMediaDeviceInfo)initWithDeviceID:(id)d mediaRouteID:(id)iD deviceCapabilities:(id)capabilities
{
  dCopy = d;
  iDCopy = iD;
  capabilitiesCopy = capabilities;
  v17.receiver = self;
  v17.super_class = HMDAppleMediaDeviceInfo;
  v12 = [(HMDAppleMediaDeviceInfo *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_deviceID, d);
    v14 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSString:iDCopy];
    mediaRouteUUID = v13->_mediaRouteUUID;
    v13->_mediaRouteUUID = v14;

    objc_storeStrong(&v13->_capabilities, capabilities);
  }

  return v13;
}

@end