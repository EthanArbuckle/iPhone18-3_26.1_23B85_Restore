@interface HMFNetworkServiceInfo
+ (id)defaultServiceTypes;
+ (id)logCategory;
- (BOOL)isAirPlay;
- (BOOL)isEqual:(id)a3;
- (BOOL)isHAP;
- (BOOL)isMatter;
- (BOOL)isTCP;
- (BOOL)isUDP;
- (HMFNetworkServiceInfo)initWithEndpoint:(id)a3 txtRecord:(id)a4;
- (HMFNetworkServiceInfo)initWithServiceName:(id)a3 serviceType:(id)a4 serviceDomain:(id)a5 txtRecord:(id)a6;
- (NSDictionary)txtRecord;
- (NSString)category;
- (NSString)configNumber;
- (NSString)deviceID;
- (NSString)model;
- (NSString)stateNumber;
- (NSString)statusFlag;
- (void)updateWithServiceInfo:(id)a3;
@end

@implementation HMFNetworkServiceInfo

- (HMFNetworkServiceInfo)initWithEndpoint:(id)a3 txtRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  bonjour_service_name = nw_endpoint_get_bonjour_service_name(v6);
  if (bonjour_service_name)
  {
    bonjour_service_name = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:bonjour_service_name];
  }

  bonjour_service_type = nw_endpoint_get_bonjour_service_type(v6);
  if (bonjour_service_type)
  {
    bonjour_service_type = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:bonjour_service_type];
  }

  bonjour_service_domain = nw_endpoint_get_bonjour_service_domain(v6);
  if (bonjour_service_domain)
  {
    bonjour_service_domain = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:bonjour_service_domain];
  }

  v11 = v7;
  v12 = v11;
  if (v11)
  {
    v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:nw_txt_record_get_key_count(v11)];
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __txtRecordDictionary_block_invoke;
    applier[3] = &unk_2786E7E78;
    v14 = v13;
    v19 = v14;
    if (nw_txt_record_apply(v12, applier))
    {
      v15 = [v14 copy];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = [(HMFNetworkServiceInfo *)self initWithServiceName:bonjour_service_name serviceType:bonjour_service_type serviceDomain:bonjour_service_domain txtRecord:v15];
  return v16;
}

- (HMFNetworkServiceInfo)initWithServiceName:(id)a3 serviceType:(id)a4 serviceDomain:(id)a5 txtRecord:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = 0;
  if (v11 && v12 && v13)
  {
    v19.receiver = self;
    v19.super_class = HMFNetworkServiceInfo;
    v16 = [(HMFNetworkServiceInfo *)&v19 init];
    p_isa = &v16->super.super.isa;
    if (v16)
    {
      objc_storeStrong(&v16->_serviceName, a3);
      objc_storeStrong(p_isa + 4, a4);
      objc_storeStrong(p_isa + 5, a5);
      objc_storeStrong(p_isa + 2, a6);
    }

    self = p_isa;
    v15 = self;
  }

  return v15;
}

- (NSDictionary)txtRecord
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSDictionary *)self->_txtRecord copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)deviceID
{
  if ([(HMFNetworkServiceInfo *)self isAirPlay])
  {
    v3 = [(HMFNetworkServiceInfo *)self txtRecord];
    v4 = v3;
    v5 = @"deviceid";
  }

  else
  {
    v6 = [(HMFNetworkServiceInfo *)self serviceType];
    v7 = [v6 containsString:@"_companion-link._tcp"];

    v3 = [(HMFNetworkServiceInfo *)self txtRecord];
    v4 = v3;
    if (v7)
    {
      v5 = @"rpBA";
    }

    else
    {
      v5 = @"id";
    }
  }

  v8 = [v3 hmf_stringForKey:v5];

  return v8;
}

- (NSString)model
{
  if ([(HMFNetworkServiceInfo *)self isAirPlay])
  {
    v3 = [(HMFNetworkServiceInfo *)self txtRecord];
    v4 = v3;
    v5 = @"model";
  }

  else
  {
    v6 = [(HMFNetworkServiceInfo *)self serviceType];
    v7 = [v6 containsString:@"_companion-link._tcp"];

    v3 = [(HMFNetworkServiceInfo *)self txtRecord];
    v4 = v3;
    if (v7)
    {
      v5 = @"rpMd";
    }

    else
    {
      v5 = @"md";
    }
  }

  v8 = [v3 hmf_stringForKey:v5];

  return v8;
}

- (NSString)category
{
  v2 = [(HMFNetworkServiceInfo *)self txtRecord];
  v3 = [v2 hmf_stringForKey:@"ci"];

  return v3;
}

- (NSString)statusFlag
{
  v2 = [(HMFNetworkServiceInfo *)self txtRecord];
  v3 = [v2 hmf_stringForKey:@"sf"];

  return v3;
}

- (NSString)stateNumber
{
  v2 = [(HMFNetworkServiceInfo *)self txtRecord];
  v3 = [v2 hmf_stringForKey:@"s#"];

  return v3;
}

- (NSString)configNumber
{
  v2 = [(HMFNetworkServiceInfo *)self txtRecord];
  v3 = [v2 hmf_stringForKey:@"c#"];

  return v3;
}

- (BOOL)isUDP
{
  if ([(HMFNetworkServiceInfo *)self isMatter])
  {
    return 1;
  }

  v4 = [(HMFNetworkServiceInfo *)self serviceType];
  v5 = [v4 hasSuffix:@"._udp"];

  return v5;
}

- (BOOL)isTCP
{
  v2 = [(HMFNetworkServiceInfo *)self serviceType];
  v3 = [v2 hasSuffix:@"._tcp"];

  return v3;
}

- (BOOL)isAirPlay
{
  v2 = [(HMFNetworkServiceInfo *)self serviceType];
  v3 = [v2 isEqualToString:@"_airplay._tcp"];

  return v3;
}

- (BOOL)isHAP
{
  v3 = [(HMFNetworkServiceInfo *)self serviceType];
  if ([v3 isEqualToString:@"_hap._tcp"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HMFNetworkServiceInfo *)self serviceType];
    v4 = [v5 isEqualToString:@"_hap._udp"];
  }

  return v4;
}

- (BOOL)isMatter
{
  v3 = [(HMFNetworkServiceInfo *)self serviceType];
  if ([v3 isEqualToString:@"_matter._tcp"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HMFNetworkServiceInfo *)self serviceType];
    v4 = [v5 isEqualToString:@"_matterc._udp"];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = [v6 serviceName];
  v9 = [(HMFNetworkServiceInfo *)self serviceName];
  v10 = HMFEqualObjects(v8, v9);

  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = [v7 serviceType];
  v12 = [(HMFNetworkServiceInfo *)self serviceType];
  v13 = HMFEqualObjects(v11, v12);

  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = [v7 serviceDomain];
  v15 = [(HMFNetworkServiceInfo *)self serviceDomain];
  v16 = HMFEqualObjects(v14, v15);

  if (v16)
  {
    v17 = [v7 txtRecord];
    v18 = [(HMFNetworkServiceInfo *)self txtRecord];
    v19 = HMFEqualObjects(v17, v18);
  }

  else
  {
LABEL_9:
    v19 = 0;
  }

  return v19;
}

- (void)updateWithServiceInfo:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [v4 serviceName];
  v6 = HMFEqualObjects(v5, self->_serviceName);

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [v4 serviceType];
  v8 = HMFEqualObjects(v7, self->_serviceType);

  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = [v4 serviceDomain];
  v10 = HMFEqualObjects(v9, self->_serviceDomain);

  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = [v4 txtRecord];
  v12 = HMFEqualObjects(v11, self->_txtRecord);

  if ((v12 & 1) == 0)
  {
    v14 = [v4 txtRecord];
    txtRecord = self->_txtRecord;
    self->_txtRecord = v14;

    os_unfair_lock_unlock(&self->_lock);
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier(v17);
      v20 = [v4 txtRecord];
      v21 = 138543618;
      v22 = v19;
      v23 = 2112;
      v24 = v20;
      _os_log_impl(&dword_22ADEC000, v18, OS_LOG_TYPE_INFO, "%{public}@Updating with new txt record: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  else
  {
LABEL_5:
    os_unfair_lock_unlock(&self->_lock);
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)defaultServiceTypes
{
  if (_MergedGlobals_3_14 != -1)
  {
    dispatch_once(&_MergedGlobals_3_14, &__block_literal_global_42);
  }

  v3 = qword_280AFC430;

  return v3;
}

void __44__HMFNetworkServiceInfo_defaultServiceTypes__block_invoke()
{
  v3[7] = *MEMORY[0x277D85DE8];
  v3[0] = @"_hap._tcp";
  v3[1] = @"_hap._udp";
  v3[2] = @"_airplay._tcp";
  v3[3] = @"_matter._tcp";
  v3[4] = @"_matterc._udp";
  v3[5] = @"_companion-link._tcp";
  v3[6] = @"_sleep-proxy._udp";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:7];
  v1 = qword_280AFC430;
  qword_280AFC430 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (qword_280AFC438 != -1)
  {
    dispatch_once(&qword_280AFC438, &__block_literal_global_62);
  }

  v3 = qword_280AFC440;

  return v3;
}

uint64_t __36__HMFNetworkServiceInfo_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"HMFNetworkService", @"com.apple.HMFoundation");
  v1 = qword_280AFC440;
  qword_280AFC440 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end