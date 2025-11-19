@interface HMDAppleMediaDeviceInfo
- (HMDAppleMediaDeviceInfo)init;
- (HMDAppleMediaDeviceInfo)initWithDeviceID:(id)a3 mediaRouteID:(id)a4 deviceCapabilities:(id)a5;
- (HMDAppleMediaDeviceInfo)initWithPayload:(id)a3;
- (id)asPayload;
- (id)attributeDescriptions;
@end

@implementation HMDAppleMediaDeviceInfo

- (id)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDAppleMediaDeviceInfo *)self deviceID];
  v5 = [v3 initWithName:@"Device ID" value:v4];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDAppleMediaDeviceInfo *)self modelID];
  v8 = [v6 initWithName:@"Model ID" value:v7];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDAppleMediaDeviceInfo *)self mediaRouteUUID];
  v11 = [v9 initWithName:@"Media Route" value:v10];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(HMDAppleMediaDeviceInfo *)self capabilities];
  v14 = [v12 initWithName:@"Capabilities" value:v13];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)asPayload
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDAppleMediaDeviceInfo *)self deviceID];

  if (v4)
  {
    v5 = [(HMDAppleMediaDeviceInfo *)self deviceID];
    [v3 setObject:v5 forKey:@"HMDAM.u"];
  }

  v6 = [(HMDAppleMediaDeviceInfo *)self mediaRouteUUID];

  if (v6)
  {
    v7 = [(HMDAppleMediaDeviceInfo *)self mediaRouteUUID];
    v8 = [v7 UUIDString];
    [v3 setObject:v8 forKey:@"HMDAM.r"];
  }

  v9 = [(HMDAppleMediaDeviceInfo *)self capabilities];

  if (v9)
  {
    v10 = MEMORY[0x277CCAAB0];
    v11 = [(HMDAppleMediaDeviceInfo *)self capabilities];
    v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:0];

    if (v12)
    {
      [v3 setObject:v12 forKey:@"HMDAM.c"];
    }
  }

  v13 = [v3 copy];

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
    v7 = [v6 device];
    v8 = [v7 capabilities];
    v9 = [(HMDAppleMediaDeviceInfo *)self initWithDeviceID:v5 mediaRouteID:v4 deviceCapabilities:v8];

    return v9;
  }

  else
  {
    v11 = _HMFPreconditionFailure();
    return [(HMDAppleMediaDeviceInfo *)v11 initWithPayload:v12, v13];
  }
}

- (HMDAppleMediaDeviceInfo)initWithPayload:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"HMDAM.c"];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 objectForKey:@"HMDAM.u"];
  v8 = [v4 objectForKey:@"HMDAM.r"];

  v9 = [(HMDAppleMediaDeviceInfo *)self initWithDeviceID:v7 mediaRouteID:v8 deviceCapabilities:v6];
  return v9;
}

- (HMDAppleMediaDeviceInfo)initWithDeviceID:(id)a3 mediaRouteID:(id)a4 deviceCapabilities:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HMDAppleMediaDeviceInfo;
  v12 = [(HMDAppleMediaDeviceInfo *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_deviceID, a3);
    v14 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSString:v10];
    mediaRouteUUID = v13->_mediaRouteUUID;
    v13->_mediaRouteUUID = v14;

    objc_storeStrong(&v13->_capabilities, a5);
  }

  return v13;
}

@end