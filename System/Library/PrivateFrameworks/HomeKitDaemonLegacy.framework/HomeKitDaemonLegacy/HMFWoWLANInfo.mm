@interface HMFWoWLANInfo
- (BOOL)isEqual:(id)equal;
- (HMFWoWLANInfo)initWithCoder:(id)coder;
- (HMFWoWLANInfo)initWithPrimaryIdentifier:(id)identifier wifiIdentifiers:(id)identifiers;
- (HMFWoWLANInfo)initWithWakeVersion:(unsigned __int8)version wakePort:(unsigned __int16)port wakeAddress:(id)address wakeType:(int64_t)type wakePacketType:(int64_t)packetType wakePattern:(id)pattern;
- (NSString)wakeAddressString;
- (id)description;
- (unint64_t)hash;
- (unsigned)woWLANVersion;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMFWoWLANInfo

- (unsigned)woWLANVersion
{
  version = [(HMFWoWLANInfo *)self version];
  if (version)
  {

    LOBYTE(version) = [(HMFWoWLANInfo *)self version];
  }

  return version;
}

- (id)description
{
  supportsSleepConfig = [(HMFWoWLANInfo *)self supportsSleepConfig];
  v4 = MEMORY[0x277CCACA8];
  if (supportsSleepConfig)
  {
    primaryMACAddress = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[HMFWoWLANInfo version](self, "version")}];
    additionalMACAddresses = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMFWoWLANInfo wakeType](self, "wakeType")}];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMFWoWLANInfo wakePort](self, "wakePort")}];
    wakeAddressString = [(HMFWoWLANInfo *)self wakeAddressString];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMFWoWLANInfo wakePacketType](self, "wakePacketType")}];
    v10 = [v4 stringWithFormat:@"<Version: %@, Wake Type: %@, Wake Port: %@, Wake Address: %@, Wake Packet Type: %@>", primaryMACAddress, additionalMACAddresses, v7, wakeAddressString, v9];
  }

  else
  {
    primaryMACAddress = [(HMFWoWLANInfo *)self primaryMACAddress];
    additionalMACAddresses = [(HMFWoWLANInfo *)self additionalMACAddresses];
    v10 = [v4 stringWithFormat:@"<Primary Address: %@, Additional MAC Addresses: %@>", primaryMACAddress, additionalMACAddresses];
  }

  return v10;
}

- (NSString)wakeAddressString
{
  if ([(HMFWoWLANInfo *)self supportsSleepConfig]&& [(HMFWoWLANInfo *)self wakePacketType]== 1)
  {
    wakeAddress = [(HMFWoWLANInfo *)self wakeAddress];

    if (wakeAddress)
    {
      v4 = objc_alloc(MEMORY[0x277D0F808]);
      wakeAddress2 = [(HMFWoWLANInfo *)self wakeAddress];
      v6 = [v4 initWithAddressData:wakeAddress2];

      formattedString = [v6 formattedString];
    }

    else
    {
      formattedString = [(HMFWoWLANInfo *)self wakePattern];

      if (formattedString)
      {
        wakePattern = [(HMFWoWLANInfo *)self wakePattern];
        v10 = wakePattern;
        if (wakePattern && [wakePattern length] >= 0x66)
        {
          bytes = [v10 bytes];
          v12 = 0;
          while (*(bytes + v12) == 255)
          {
            if (++v12 == 6)
            {
              for (i = 0; i != 6; ++i)
              {
                v20[i] = *(bytes + 6 + i);
              }

              v14 = bytes + 6;
              v15 = 1;
LABEL_20:
              v16 = 0;
              while (*(v14 + v16) == v20[v16])
              {
                if (++v16 == 6)
                {
                  ++v15;
                  v14 += 6;
                  if (v15 != 16)
                  {
                    goto LABEL_20;
                  }

                  v17 = objc_alloc(MEMORY[0x277D0F808]);
                  v18 = [MEMORY[0x277CBEA90] dataWithBytes:v20 length:6];
                  v19 = [v17 initWithAddressData:v18];

                  formattedString = [v19 formattedString];

                  goto LABEL_13;
                }
              }

              break;
            }
          }
        }

        formattedString = 0;
LABEL_13:
      }
    }
  }

  else
  {
    formattedString = 0;
  }

  return formattedString;
}

- (HMFWoWLANInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy decodeBoolForKey:@"HMFCI.woWLAN.sleepConfig"])
  {
    v5 = [coderCopy decodeIntegerForKey:@"HMFCI.woWLAN.WakePort"];
    v6 = [coderCopy decodeIntegerForKey:@"HMFCI.woWLAN.version"];
    v7 = [coderCopy decodeIntegerForKey:@"HMFCI.woWLAN.wakeType"];
    v8 = [coderCopy decodeIntegerForKey:@"HMFCI.woWLAN.wakePacketType"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMFCI.woWLAN.wakePattern"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMFCI.woWLAN.WakeAddress"];

    v11 = [(HMFWoWLANInfo *)self initWithWakeVersion:v6 wakePort:v5 wakeAddress:v10 wakeType:v7 wakePacketType:v8 wakePattern:v9];
  }

  else
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMFCI.woWLAN.pID"];
    v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"HMFCI.woWLAN.sIDs"];

    v11 = [(HMFWoWLANInfo *)self initWithPrimaryIdentifier:v9 wifiIdentifiers:v10];
  }

  v12 = v11;

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  primaryMACAddress = [(HMFWoWLANInfo *)self primaryMACAddress];

  if (primaryMACAddress)
  {
    primaryMACAddress2 = [(HMFWoWLANInfo *)self primaryMACAddress];
    [coderCopy encodeObject:primaryMACAddress2 forKey:@"HMFCI.woWLAN.pID"];
  }

  additionalMACAddresses = [(HMFWoWLANInfo *)self additionalMACAddresses];

  if (additionalMACAddresses)
  {
    additionalMACAddresses2 = [(HMFWoWLANInfo *)self additionalMACAddresses];
    [coderCopy encodeObject:additionalMACAddresses2 forKey:@"HMFCI.woWLAN.sIDs"];
  }

  if ([(HMFWoWLANInfo *)self supportsSleepConfig])
  {
    [coderCopy encodeBool:1 forKey:@"HMFCI.woWLAN.sleepConfig"];
    [coderCopy encodeInteger:-[HMFWoWLANInfo version](self forKey:{"version"), @"HMFCI.woWLAN.version"}];
    [coderCopy encodeInteger:-[HMFWoWLANInfo wakePort](self forKey:{"wakePort"), @"HMFCI.woWLAN.WakePort"}];
    [coderCopy encodeInteger:-[HMFWoWLANInfo wakeType](self forKey:{"wakeType"), @"HMFCI.woWLAN.wakeType"}];
    [coderCopy encodeInteger:-[HMFWoWLANInfo wakePacketType](self forKey:{"wakePacketType"), @"HMFCI.woWLAN.wakePacketType"}];
    wakeAddress = [(HMFWoWLANInfo *)self wakeAddress];

    if (wakeAddress)
    {
      wakeAddress2 = [(HMFWoWLANInfo *)self wakeAddress];
      [coderCopy encodeObject:wakeAddress2 forKey:@"HMFCI.woWLAN.WakeAddress"];
    }

    wakePattern = [(HMFWoWLANInfo *)self wakePattern];

    if (wakePattern)
    {
      wakePattern2 = [(HMFWoWLANInfo *)self wakePattern];
      [coderCopy encodeObject:wakePattern2 forKey:@"HMFCI.woWLAN.wakePattern"];
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (!v6)
    {
      goto LABEL_15;
    }

    primaryMACAddress = [(HMFWoWLANInfo *)self primaryMACAddress];
    primaryMACAddress2 = [(HMFWoWLANInfo *)v6 primaryMACAddress];
    v9 = HMFEqualObjects();

    if (!v9)
    {
      goto LABEL_15;
    }

    additionalMACAddresses = [(HMFWoWLANInfo *)self additionalMACAddresses];
    additionalMACAddresses2 = [(HMFWoWLANInfo *)v6 additionalMACAddresses];
    v12 = HMFEqualObjects();

    if (!v12)
    {
      goto LABEL_15;
    }

    version = [(HMFWoWLANInfo *)self version];
    if (version != [(HMFWoWLANInfo *)v6 version])
    {
      goto LABEL_15;
    }

    wakeType = [(HMFWoWLANInfo *)self wakeType];
    if (wakeType != [(HMFWoWLANInfo *)v6 wakeType])
    {
      goto LABEL_15;
    }

    wakePort = [(HMFWoWLANInfo *)self wakePort];
    if (wakePort != [(HMFWoWLANInfo *)v6 wakePort])
    {
      goto LABEL_15;
    }

    wakePacketType = [(HMFWoWLANInfo *)self wakePacketType];
    if (wakePacketType != [(HMFWoWLANInfo *)v6 wakePacketType])
    {
      goto LABEL_15;
    }

    supportsSleepConfig = [(HMFWoWLANInfo *)self supportsSleepConfig];
    if (supportsSleepConfig != [(HMFWoWLANInfo *)v6 supportsSleepConfig])
    {
      goto LABEL_15;
    }

    wakePattern = [(HMFWoWLANInfo *)self wakePattern];
    wakePattern2 = [(HMFWoWLANInfo *)v6 wakePattern];
    v20 = HMFEqualObjects();

    if (v20)
    {
      wakeAddress = [(HMFWoWLANInfo *)self wakeAddress];
      wakeAddress2 = [(HMFWoWLANInfo *)v6 wakeAddress];
      v23 = HMFEqualObjects();
    }

    else
    {
LABEL_15:
      v23 = 0;
    }
  }

  return v23;
}

- (unint64_t)hash
{
  if ([(HMFWoWLANInfo *)self supportsSleepConfig])
  {
    version = [(HMFWoWLANInfo *)self version];
    wakeType = [(HMFWoWLANInfo *)self wakeType];
    v5 = wakeType ^ [(HMFWoWLANInfo *)self wakePacketType]^ version;
    wakePort = [(HMFWoWLANInfo *)self wakePort];
    wakePattern = [(HMFWoWLANInfo *)self wakePattern];
    v8 = v5 ^ wakePort ^ [wakePattern hash];
    wakeAddress = [(HMFWoWLANInfo *)self wakeAddress];
    v10 = v8 ^ [wakeAddress hash];
  }

  else
  {
    wakePattern = [(HMFWoWLANInfo *)self primaryMACAddress];
    v10 = [wakePattern hash];
  }

  return v10;
}

- (HMFWoWLANInfo)initWithWakeVersion:(unsigned __int8)version wakePort:(unsigned __int16)port wakeAddress:(id)address wakeType:(int64_t)type wakePacketType:(int64_t)packetType wakePattern:(id)pattern
{
  v29 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  patternCopy = pattern;
  if (addressCopy)
  {
    v26.receiver = self;
    v26.super_class = HMFWoWLANInfo;
    v17 = [(HMFWoWLANInfo *)&v26 init];
    v18 = v17;
    if (v17)
    {
      v17->_supportsSleepConfig = 1;
      v17->_version = version;
      v17->_wakePort = port;
      objc_storeStrong(&v17->_wakeAddress, address);
      v18->_wakeType = type;
      v18->_wakePacketType = packetType;
      objc_storeStrong(&v18->_wakePattern, pattern);
    }

    selfCopy = v18;
    v20 = selfCopy;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Invalid wake address", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v20 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

- (HMFWoWLANInfo)initWithPrimaryIdentifier:(id)identifier wifiIdentifiers:(id)identifiers
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v9 = identifiersCopy;
  if (identifierCopy || [identifiersCopy count])
  {
    v18.receiver = self;
    v18.super_class = HMFWoWLANInfo;
    v10 = [(HMFWoWLANInfo *)&v18 init];
    p_isa = &v10->super.super.isa;
    if (v10)
    {
      objc_storeStrong(&v10->_primaryMACAddress, identifier);
      objc_storeStrong(p_isa + 3, identifiers);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Invalid inputs for HMFWoWLANInfo.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    selfCopy = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end