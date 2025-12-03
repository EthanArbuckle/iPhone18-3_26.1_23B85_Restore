@interface __HMDPrimaryElectionCandidate
+ (id)fromMessagePayload:(id)payload;
- (BOOL)matchesPreferredPrimaryIdentifier:(id)identifier;
- (BOOL)supportsPingRequest;
- (__HMDPrimaryElectionCandidate)initWithCoder:(id)coder;
- (__HMDPrimaryElectionCandidate)initWithVersion:(id)version deviceIdentifier:(id)identifier name:(id)name currentPrimaryIdentifier:(id)primaryIdentifier enabledAsResident:(BOOL)resident supportsPingRequest:(BOOL)request connectionType:(unint64_t)type pcsEnabled:(BOOL)self0 swVersion:(id)self1;
- (id)description;
- (id)toMessagePayload;
- (int64_t)compare:(id)compare currentPrimary:(id)primary outCriteria:(unint64_t *)criteria;
- (int64_t)comparePreferredPrimaryStatusWith:(id)with;
- (uint64_t)compareSoftwareVersion:(void *)version with:;
- (void)encodeWithCoder:(id)coder;
- (void)productClass;
@end

@implementation __HMDPrimaryElectionCandidate

- (int64_t)compare:(id)compare currentPrimary:(id)primary outCriteria:(unint64_t *)criteria
{
  compareCopy = compare;
  primaryCopy = primary;
  v10 = [(__HMDPrimaryElectionCandidate *)self comparePreferredPrimaryStatusWith:compareCopy];
  if (!v10)
  {
    enabledAsResident = [(__HMDPrimaryElectionCandidate *)self enabledAsResident];
    enabledAsResident2 = [compareCopy enabledAsResident];
    if (!self)
    {
      goto LABEL_7;
    }

    if ((enabledAsResident2 | !enabledAsResident) == 1)
    {
      if ((enabledAsResident | enabledAsResident2 ^ 1))
      {
LABEL_7:
        pcsEnabled = [(__HMDPrimaryElectionCandidate *)self pcsEnabled];
        pcsEnabled2 = [compareCopy pcsEnabled];
        if (self)
        {
          if ((pcsEnabled2 | !pcsEnabled) == 1)
          {
            if ((pcsEnabled | pcsEnabled2 ^ 1))
            {
              productClass = [(__HMDPrimaryElectionCandidate *)self productClass];
              productClass2 = [(__HMDPrimaryElectionCandidate *)compareCopy productClass];
              if (productClass != 3 && productClass2 == 3)
              {
                v11 = 1;
LABEL_26:
                if (!criteria)
                {
                  goto LABEL_22;
                }

                v12 = 4;
                goto LABEL_21;
              }

              if (productClass == 3 && productClass2 != 3)
              {
                v11 = -1;
                goto LABEL_26;
              }

LABEL_29:
              homeKitVersion = [(__HMDPrimaryElectionCandidate *)self homeKitVersion];
              homeKitVersion2 = [compareCopy homeKitVersion];
              v11 = [homeKitVersion compare:homeKitVersion2];

              if (v11)
              {
                if (!criteria)
                {
                  goto LABEL_22;
                }

                v12 = 5;
                goto LABEL_21;
              }

              swVersion = [(__HMDPrimaryElectionCandidate *)self swVersion];
              swVersion2 = [compareCopy swVersion];
              v11 = [(__HMDPrimaryElectionCandidate *)self compareSoftwareVersion:swVersion with:swVersion2];

              if (v11)
              {
                if (!criteria)
                {
                  goto LABEL_22;
                }

                v12 = 16;
                goto LABEL_21;
              }

              if (primaryCopy)
              {
                residentDevice = [(__HMDPrimaryElectionCandidate *)self residentDevice];
                v25 = [residentDevice isEqual:primaryCopy];

                if (v25)
                {
                  if (criteria)
                  {
                    *criteria = 10;
                  }

                  v11 = 1;
                  goto LABEL_22;
                }

                residentDevice2 = [compareCopy residentDevice];
                v27 = [residentDevice2 isEqual:primaryCopy];

                if (v27)
                {
                  if (criteria)
                  {
                    *criteria = 10;
                  }

                  v11 = -1;
                  goto LABEL_22;
                }
              }

              connectionType = [(__HMDPrimaryElectionCandidate *)self connectionType];
              connectionType2 = [compareCopy connectionType];
              if (self)
              {
                if (connectionType == 1 && connectionType2 != 1)
                {
                  v11 = 1;
LABEL_51:
                  if (!criteria)
                  {
                    goto LABEL_22;
                  }

                  v12 = 14;
                  goto LABEL_21;
                }

                if (connectionType != 1 && connectionType2 == 1)
                {
                  v11 = -1;
                  goto LABEL_51;
                }
              }

              if (criteria)
              {
                *criteria = 13;
              }

              deviceIdentifier = [(__HMDPrimaryElectionCandidate *)self deviceIdentifier];
              uUIDString = [deviceIdentifier UUIDString];
              deviceIdentifier2 = [compareCopy deviceIdentifier];
              uUIDString2 = [deviceIdentifier2 UUIDString];
              v11 = [uUIDString compare:uUIDString2];

              goto LABEL_22;
            }

            v11 = -1;
            if (!criteria)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v11 = 1;
            if (!criteria)
            {
              goto LABEL_22;
            }
          }

          v12 = 15;
          goto LABEL_21;
        }

        [(__HMDPrimaryElectionCandidate *)compareCopy productClass];
        goto LABEL_29;
      }

      v11 = -1;
      if (!criteria)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v11 = 1;
      if (!criteria)
      {
        goto LABEL_22;
      }
    }

    v12 = 1;
    goto LABEL_21;
  }

  v11 = v10;
  if (criteria)
  {
    v12 = 17;
LABEL_21:
    *criteria = v12;
  }

LABEL_22:

  return v11;
}

- (void)productClass
{
  if (result)
  {
    residentDevice = [result residentDevice];
    device = [residentDevice device];
    productInfo = [device productInfo];
    productClass = [productInfo productClass];

    return productClass;
  }

  return result;
}

- (uint64_t)compareSoftwareVersion:(void *)version with:
{
  v5 = a2;
  versionCopy = version;
  v7 = versionCopy;
  if (self)
  {
    if (v5 && !versionCopy)
    {
      self = 1;
      goto LABEL_13;
    }

    if (!v5 && versionCopy)
    {
      self = -1;
      goto LABEL_13;
    }

    if (v5)
    {
      [v5 operatingSystemVersion];
      if (!v7)
      {
LABEL_12:
        self = HMFOperatingSystemVersionCompare();
        goto LABEL_13;
      }
    }

    else if (!versionCopy)
    {
      goto LABEL_12;
    }

    [v7 operatingSystemVersion];
    goto LABEL_12;
  }

LABEL_13:

  return self;
}

- (int64_t)comparePreferredPrimaryStatusWith:(id)with
{
  v27 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v5 = CFPreferencesCopyAppValue(@"hmd.preferred.primary", @"hmd.preferred.primary.homeutil");
  if (!v5)
  {
    goto LABEL_11;
  }

  if (![(__HMDPrimaryElectionCandidate *)self matchesPreferredPrimaryIdentifier:v5])
  {
    if ([withCopy matchesPreferredPrimaryIdentifier:v5])
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = HMFGetLogIdentifier();
        name = [withCopy name];
        name2 = [(__HMDPrimaryElectionCandidate *)selfCopy name];
        v19 = 138544130;
        v20 = v14;
        v21 = 2112;
        v22 = name;
        v23 = 2112;
        v24 = name2;
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
  selfCopy2 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    name3 = [(__HMDPrimaryElectionCandidate *)selfCopy2 name];
    name4 = [withCopy name];
    v19 = 138544130;
    v20 = v9;
    v21 = 2112;
    v22 = name3;
    v23 = 2112;
    v24 = name4;
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

- (void)encodeWithCoder:(id)coder
{
  homeKitVersion = self->_homeKitVersion;
  coderCopy = coder;
  [coderCopy encodeObject:homeKitVersion forKey:@"v"];
  [coderCopy encodeObject:self->_deviceIdentifier forKey:@"id"];
  [coderCopy encodeObject:self->_name forKey:@"n"];
  [coderCopy encodeObject:self->_currentPrimaryIdentifier forKey:@"pid"];
  [coderCopy encodeBool:self->_enabledAsResident forKey:@"e"];
  [coderCopy encodeInt:LODWORD(self->_capabilities) forKey:@"caps"];
  [coderCopy encodeInteger:SLODWORD(self->_connectionType) forKey:@"conn"];
  [coderCopy encodeBool:self->_pcsEnabled forKey:@"pcs"];
  [coderCopy encodeObject:self->_swVersion forKey:@"swv"];
}

- (__HMDPrimaryElectionCandidate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"v"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"n"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pid"];
  v16 = [coderCopy decodeBoolForKey:@"e"];
  v9 = [coderCopy decodeIntForKey:@"caps"];
  v10 = [coderCopy decodeIntegerForKey:@"conn"];
  v11 = [coderCopy decodeBoolForKey:@"pcs"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"swv"];

  selfCopy = 0;
  if (v5 && v6)
  {
    LOBYTE(v15) = v11;
    self = [(__HMDPrimaryElectionCandidate *)self initWithVersion:v5 deviceIdentifier:v6 name:v7 currentPrimaryIdentifier:v8 enabledAsResident:v16 supportsPingRequest:[__HMDPrimaryElectionCandidate capabilitiesSupportPingRequest:?]swVersion:v10, v15, v12];
    selfCopy = self;
  }

  return selfCopy;
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
  versionString = [(HMFSoftwareVersion *)self->_swVersion versionString];
  v16 = [v3 stringWithFormat:@"<%@ name: %@, homekitVersion: %@, id: %@, primary: %@, enabled: %@ supportsPingRequest: %@, wired: %@, pcsEnabled: %@>, swVersion: %@", v5, name, v18, currentPrimaryIdentifier, v9, v10, v12, v14, versionString];

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
  capabilities = [(__HMDPrimaryElectionCandidate *)self capabilities];

  return [__HMDPrimaryElectionCandidate capabilitiesSupportPingRequest:capabilities];
}

- (BOOL)matchesPreferredPrimaryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  name = [(__HMDPrimaryElectionCandidate *)self name];
  v6 = [name isEqualToString:identifierCopy];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:identifierCopy];
    if (!v8)
    {
      goto LABEL_8;
    }

    deviceIdentifier = [(__HMDPrimaryElectionCandidate *)self deviceIdentifier];
    v10 = [deviceIdentifier isEqual:v8];

    if (v10)
    {
      goto LABEL_7;
    }

    residentDevice = [(__HMDPrimaryElectionCandidate *)self residentDevice];
    identifier = [residentDevice identifier];
    v13 = [identifier isEqual:v8];

    if (v13)
    {
      goto LABEL_7;
    }

    residentDevice2 = [(__HMDPrimaryElectionCandidate *)self residentDevice];
    device = [residentDevice2 device];
    identifier2 = [device identifier];
    v17 = [identifier2 isEqual:v8];

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

- (__HMDPrimaryElectionCandidate)initWithVersion:(id)version deviceIdentifier:(id)identifier name:(id)name currentPrimaryIdentifier:(id)primaryIdentifier enabledAsResident:(BOOL)resident supportsPingRequest:(BOOL)request connectionType:(unint64_t)type pcsEnabled:(BOOL)self0 swVersion:(id)self1
{
  requestCopy = request;
  versionCopy = version;
  identifierCopy = identifier;
  nameCopy = name;
  primaryIdentifierCopy = primaryIdentifier;
  swVersionCopy = swVersion;
  v33.receiver = self;
  v33.super_class = __HMDPrimaryElectionCandidate;
  v21 = [(__HMDPrimaryElectionCandidate *)&v33 init];
  homeKitVersion = v21->_homeKitVersion;
  v21->_homeKitVersion = versionCopy;
  v23 = versionCopy;

  deviceIdentifier = v21->_deviceIdentifier;
  v21->_deviceIdentifier = identifierCopy;
  v25 = identifierCopy;

  name = v21->_name;
  v21->_name = nameCopy;
  v27 = nameCopy;

  currentPrimaryIdentifier = v21->_currentPrimaryIdentifier;
  v21->_currentPrimaryIdentifier = primaryIdentifierCopy;
  v29 = primaryIdentifierCopy;

  v21->_enabledAsResident = resident;
  v21->_capabilities = [__HMDPrimaryElectionCandidate setSupportsPingRequest:requestCopy capabilities:0];
  v21->_connectionType = type;
  v21->_pcsEnabled = enabled;
  swVersion = v21->_swVersion;
  v21->_swVersion = swVersionCopy;

  return v21;
}

+ (id)fromMessagePayload:(id)payload
{
  v24 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v4 = [payloadCopy hmf_dataForKey:@"parameters"];
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
      allKeys = [payloadCopy allKeys];
      *buf = 138543618;
      v21 = v11;
      v22 = 2112;
      v23 = allKeys;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to find election parameters in payload (keys: %@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v5 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

@end