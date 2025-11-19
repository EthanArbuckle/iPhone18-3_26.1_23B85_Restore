@interface __HMDPrimaryElectionCandidate
+ (id)fromMessagePayload:(id)a3;
- (BOOL)matchesPreferredPrimaryIdentifier:(id)a3;
- (BOOL)supportsPingRequest;
- (__HMDPrimaryElectionCandidate)initWithCoder:(id)a3;
- (__HMDPrimaryElectionCandidate)initWithVersion:(id)a3 deviceIdentifier:(id)a4 name:(id)a5 currentPrimaryIdentifier:(id)a6 enabledAsResident:(BOOL)a7 supportsPingRequest:(BOOL)a8 connectionType:(unint64_t)a9 pcsEnabled:(BOOL)a10 swVersion:(id)a11;
- (id)description;
- (id)toMessagePayload;
- (int64_t)compare:(id)a3 currentPrimary:(id)a4 outCriteria:(unint64_t *)a5;
- (int64_t)comparePreferredPrimaryStatusWith:(id)a3;
- (uint64_t)compareSoftwareVersion:(void *)a3 with:;
- (void)encodeWithCoder:(id)a3;
- (void)productClass;
@end

@implementation __HMDPrimaryElectionCandidate

- (int64_t)compare:(id)a3 currentPrimary:(id)a4 outCriteria:(unint64_t *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(__HMDPrimaryElectionCandidate *)self comparePreferredPrimaryStatusWith:v8];
  if (!v10)
  {
    v13 = [(__HMDPrimaryElectionCandidate *)self enabledAsResident];
    v14 = [v8 enabledAsResident];
    if (!self)
    {
      goto LABEL_7;
    }

    if ((v14 | !v13) == 1)
    {
      if ((v13 | v14 ^ 1))
      {
LABEL_7:
        v15 = [(__HMDPrimaryElectionCandidate *)self pcsEnabled];
        v16 = [v8 pcsEnabled];
        if (self)
        {
          if ((v16 | !v15) == 1)
          {
            if ((v15 | v16 ^ 1))
            {
              v17 = [(__HMDPrimaryElectionCandidate *)self productClass];
              v18 = [(__HMDPrimaryElectionCandidate *)v8 productClass];
              if (v17 != 3 && v18 == 3)
              {
                v11 = 1;
LABEL_26:
                if (!a5)
                {
                  goto LABEL_22;
                }

                v12 = 4;
                goto LABEL_21;
              }

              if (v17 == 3 && v18 != 3)
              {
                v11 = -1;
                goto LABEL_26;
              }

LABEL_29:
              v20 = [(__HMDPrimaryElectionCandidate *)self homeKitVersion];
              v21 = [v8 homeKitVersion];
              v11 = [v20 compare:v21];

              if (v11)
              {
                if (!a5)
                {
                  goto LABEL_22;
                }

                v12 = 5;
                goto LABEL_21;
              }

              v22 = [(__HMDPrimaryElectionCandidate *)self swVersion];
              v23 = [v8 swVersion];
              v11 = [(__HMDPrimaryElectionCandidate *)self compareSoftwareVersion:v22 with:v23];

              if (v11)
              {
                if (!a5)
                {
                  goto LABEL_22;
                }

                v12 = 16;
                goto LABEL_21;
              }

              if (v9)
              {
                v24 = [(__HMDPrimaryElectionCandidate *)self residentDevice];
                v25 = [v24 isEqual:v9];

                if (v25)
                {
                  if (a5)
                  {
                    *a5 = 10;
                  }

                  v11 = 1;
                  goto LABEL_22;
                }

                v26 = [v8 residentDevice];
                v27 = [v26 isEqual:v9];

                if (v27)
                {
                  if (a5)
                  {
                    *a5 = 10;
                  }

                  v11 = -1;
                  goto LABEL_22;
                }
              }

              v28 = [(__HMDPrimaryElectionCandidate *)self connectionType];
              v29 = [v8 connectionType];
              if (self)
              {
                if (v28 == 1 && v29 != 1)
                {
                  v11 = 1;
LABEL_51:
                  if (!a5)
                  {
                    goto LABEL_22;
                  }

                  v12 = 14;
                  goto LABEL_21;
                }

                if (v28 != 1 && v29 == 1)
                {
                  v11 = -1;
                  goto LABEL_51;
                }
              }

              if (a5)
              {
                *a5 = 13;
              }

              v30 = [(__HMDPrimaryElectionCandidate *)self deviceIdentifier];
              v31 = [v30 UUIDString];
              v32 = [v8 deviceIdentifier];
              v33 = [v32 UUIDString];
              v11 = [v31 compare:v33];

              goto LABEL_22;
            }

            v11 = -1;
            if (!a5)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v11 = 1;
            if (!a5)
            {
              goto LABEL_22;
            }
          }

          v12 = 15;
          goto LABEL_21;
        }

        [(__HMDPrimaryElectionCandidate *)v8 productClass];
        goto LABEL_29;
      }

      v11 = -1;
      if (!a5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v11 = 1;
      if (!a5)
      {
        goto LABEL_22;
      }
    }

    v12 = 1;
    goto LABEL_21;
  }

  v11 = v10;
  if (a5)
  {
    v12 = 17;
LABEL_21:
    *a5 = v12;
  }

LABEL_22:

  return v11;
}

- (void)productClass
{
  if (result)
  {
    v1 = [result residentDevice];
    v2 = [v1 device];
    v3 = [v2 productInfo];
    v4 = [v3 productClass];

    return v4;
  }

  return result;
}

- (uint64_t)compareSoftwareVersion:(void *)a3 with:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v5 && !v6)
    {
      a1 = 1;
      goto LABEL_13;
    }

    if (!v5 && v6)
    {
      a1 = -1;
      goto LABEL_13;
    }

    if (v5)
    {
      [v5 operatingSystemVersion];
      if (!v7)
      {
LABEL_12:
        a1 = HMFOperatingSystemVersionCompare();
        goto LABEL_13;
      }
    }

    else if (!v6)
    {
      goto LABEL_12;
    }

    [v7 operatingSystemVersion];
    goto LABEL_12;
  }

LABEL_13:

  return a1;
}

- (int64_t)comparePreferredPrimaryStatusWith:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CFPreferencesCopyAppValue(@"hmd.preferred.primary", @"hmd.preferred.primary.homeutil");
  if (!v5)
  {
    goto LABEL_11;
  }

  if (![(__HMDPrimaryElectionCandidate *)self matchesPreferredPrimaryIdentifier:v5])
  {
    if ([v4 matchesPreferredPrimaryIdentifier:v5])
    {
      v6 = objc_autoreleasePoolPush();
      v13 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v4 name];
        v16 = [(__HMDPrimaryElectionCandidate *)v13 name];
        v19 = 138544130;
        v20 = v14;
        v21 = 2112;
        v22 = v15;
        v23 = 2112;
        v24 = v16;
        v25 = 2112;
        v26 = v5;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Preferring %@ over %@ in resident election due to preferred primary: %@", &v19, 0x2Au);
      }

      v12 = -1;
      goto LABEL_10;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [(__HMDPrimaryElectionCandidate *)v7 name];
    v11 = [v4 name];
    v19 = 138544130;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Preferring %@ over %@ in resident election due to preferred primary: %@", &v19, 0x2Au);
  }

  v12 = 1;
LABEL_10:

  objc_autoreleasePoolPop(v6);
LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  homeKitVersion = self->_homeKitVersion;
  v5 = a3;
  [v5 encodeObject:homeKitVersion forKey:@"v"];
  [v5 encodeObject:self->_deviceIdentifier forKey:@"id"];
  [v5 encodeObject:self->_name forKey:@"n"];
  [v5 encodeObject:self->_currentPrimaryIdentifier forKey:@"pid"];
  [v5 encodeBool:self->_enabledAsResident forKey:@"e"];
  [v5 encodeInt:LODWORD(self->_capabilities) forKey:@"caps"];
  [v5 encodeInteger:SLODWORD(self->_connectionType) forKey:@"conn"];
  [v5 encodeBool:self->_pcsEnabled forKey:@"pcs"];
  [v5 encodeObject:self->_swVersion forKey:@"swv"];
}

- (__HMDPrimaryElectionCandidate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"v"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"n"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pid"];
  v16 = [v4 decodeBoolForKey:@"e"];
  v9 = [v4 decodeIntForKey:@"caps"];
  v10 = [v4 decodeIntegerForKey:@"conn"];
  v11 = [v4 decodeBoolForKey:@"pcs"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"swv"];

  v13 = 0;
  if (v5 && v6)
  {
    LOBYTE(v15) = v11;
    self = [(__HMDPrimaryElectionCandidate *)self initWithVersion:v5 deviceIdentifier:v6 name:v7 currentPrimaryIdentifier:v8 enabledAsResident:v16 supportsPingRequest:[__HMDPrimaryElectionCandidate capabilitiesSupportPingRequest:?]swVersion:v10, v15, v12];
    v13 = self;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (shouldLogPrivateInformation())
  {
    name = self->_name;
  }

  else
  {
    name = @"<redacted>";
  }

  v18 = *&self->_homeKitVersion;
  currentPrimaryIdentifier = self->_currentPrimaryIdentifier;
  enabledAsResident = self->_enabledAsResident;
  v9 = HMFBooleanToString();
  [__HMDPrimaryElectionCandidate capabilitiesSupportPingRequest:self->_capabilities];
  v10 = HMFBooleanToString();
  connectionType = self->_connectionType;
  v12 = HMFBooleanToString();
  pcsEnabled = self->_pcsEnabled;
  v14 = HMFBooleanToString();
  v15 = [(HMFSoftwareVersion *)self->_swVersion versionString];
  v16 = [v3 stringWithFormat:@"<%@ name: %@, homekitVersion: %@, id: %@, primary: %@, enabled: %@ supportsPingRequest: %@, wired: %@, pcsEnabled: %@>, swVersion: %@", v5, name, v18, currentPrimaryIdentifier, v9, v10, v12, v14, v15];

  return v16;
}

- (id)toMessagePayload
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"parameters";
  v2 = encodeRootObject();
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)supportsPingRequest
{
  v2 = [(__HMDPrimaryElectionCandidate *)self capabilities];

  return [__HMDPrimaryElectionCandidate capabilitiesSupportPingRequest:v2];
}

- (BOOL)matchesPreferredPrimaryIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(__HMDPrimaryElectionCandidate *)self name];
  v6 = [v5 isEqualToString:v4];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = [(__HMDPrimaryElectionCandidate *)self deviceIdentifier];
    v10 = [v9 isEqual:v8];

    if (v10)
    {
      goto LABEL_7;
    }

    v11 = [(__HMDPrimaryElectionCandidate *)self residentDevice];
    v12 = [v11 identifier];
    v13 = [v12 isEqual:v8];

    if (v13)
    {
      goto LABEL_7;
    }

    v14 = [(__HMDPrimaryElectionCandidate *)self residentDevice];
    v15 = [v14 device];
    v16 = [v15 identifier];
    v17 = [v16 isEqual:v8];

    if (v17)
    {
LABEL_7:
      v7 = 1;
    }

    else
    {
LABEL_8:
      v7 = 0;
    }
  }

  return v7;
}

- (__HMDPrimaryElectionCandidate)initWithVersion:(id)a3 deviceIdentifier:(id)a4 name:(id)a5 currentPrimaryIdentifier:(id)a6 enabledAsResident:(BOOL)a7 supportsPingRequest:(BOOL)a8 connectionType:(unint64_t)a9 pcsEnabled:(BOOL)a10 swVersion:(id)a11
{
  v32 = a8;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a11;
  v33.receiver = self;
  v33.super_class = __HMDPrimaryElectionCandidate;
  v21 = [(__HMDPrimaryElectionCandidate *)&v33 init];
  homeKitVersion = v21->_homeKitVersion;
  v21->_homeKitVersion = v16;
  v23 = v16;

  deviceIdentifier = v21->_deviceIdentifier;
  v21->_deviceIdentifier = v17;
  v25 = v17;

  name = v21->_name;
  v21->_name = v18;
  v27 = v18;

  currentPrimaryIdentifier = v21->_currentPrimaryIdentifier;
  v21->_currentPrimaryIdentifier = v19;
  v29 = v19;

  v21->_enabledAsResident = a7;
  v21->_capabilities = [__HMDPrimaryElectionCandidate setSupportsPingRequest:v32 capabilities:0];
  v21->_connectionType = a9;
  v21->_pcsEnabled = a10;
  swVersion = v21->_swVersion;
  v21->_swVersion = v20;

  return v21;
}

+ (id)fromMessagePayload:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 hmf_dataForKey:@"parameters"];
  if (v4)
  {
    v19 = 0;
    v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v19];
    v6 = v19;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = objc_opt_class();
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v21 = v16;
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode election parameters: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = objc_opt_class();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v3 allKeys];
      *buf = 138543618;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to find election parameters in payload (keys: %@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v5 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

@end