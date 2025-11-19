@interface HMFWoWLANInfo
- (BOOL)isEqual:(id)a3;
- (HMFWoWLANInfo)initWithCoder:(id)a3;
- (HMFWoWLANInfo)initWithPrimaryIdentifier:(id)a3 wifiIdentifiers:(id)a4;
- (HMFWoWLANInfo)initWithWakeVersion:(unsigned __int8)a3 wakePort:(unsigned __int16)a4 wakeAddress:(id)a5 wakeType:(int64_t)a6 wakePacketType:(int64_t)a7 wakePattern:(id)a8;
- (NSString)wakeAddressString;
- (id)description;
- (unint64_t)hash;
- (unsigned)woWLANVersion;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMFWoWLANInfo

- (unsigned)woWLANVersion
{
  v3 = [(HMFWoWLANInfo *)self version];
  if (v3)
  {

    LOBYTE(v3) = [(HMFWoWLANInfo *)self version];
  }

  return v3;
}

- (id)description
{
  v3 = [(HMFWoWLANInfo *)self supportsSleepConfig];
  v4 = MEMORY[0x277CCACA8];
  if (v3)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[HMFWoWLANInfo version](self, "version")}];
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMFWoWLANInfo wakeType](self, "wakeType")}];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMFWoWLANInfo wakePort](self, "wakePort")}];
    v8 = [(HMFWoWLANInfo *)self wakeAddressString];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMFWoWLANInfo wakePacketType](self, "wakePacketType")}];
    v10 = [v4 stringWithFormat:@"<Version: %@, Wake Type: %@, Wake Port: %@, Wake Address: %@, Wake Packet Type: %@>", v5, v6, v7, v8, v9];
  }

  else
  {
    v5 = [(HMFWoWLANInfo *)self primaryMACAddress];
    v6 = [(HMFWoWLANInfo *)self additionalMACAddresses];
    v10 = [v4 stringWithFormat:@"<Primary Address: %@, Additional MAC Addresses: %@>", v5, v6];
  }

  return v10;
}

- (NSString)wakeAddressString
{
  if ([(HMFWoWLANInfo *)self supportsSleepConfig]&& [(HMFWoWLANInfo *)self wakePacketType]== 1)
  {
    v3 = [(HMFWoWLANInfo *)self wakeAddress];

    if (v3)
    {
      v4 = objc_alloc(MEMORY[0x277D0F808]);
      v5 = [(HMFWoWLANInfo *)self wakeAddress];
      v6 = [v4 initWithAddressData:v5];

      v7 = [v6 formattedString];
    }

    else
    {
      v7 = [(HMFWoWLANInfo *)self wakePattern];

      if (v7)
      {
        v9 = [(HMFWoWLANInfo *)self wakePattern];
        v10 = v9;
        if (v9 && [v9 length] >= 0x66)
        {
          v11 = [v10 bytes];
          v12 = 0;
          while (*(v11 + v12) == 255)
          {
            if (++v12 == 6)
            {
              for (i = 0; i != 6; ++i)
              {
                v20[i] = *(v11 + 6 + i);
              }

              v14 = v11 + 6;
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

                  v7 = [v19 formattedString];

                  goto LABEL_13;
                }
              }

              break;
            }
          }
        }

        v7 = 0;
LABEL_13:
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (HMFWoWLANInfo)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 decodeBoolForKey:@"HMFCI.woWLAN.sleepConfig"])
  {
    v5 = [v4 decodeIntegerForKey:@"HMFCI.woWLAN.WakePort"];
    v6 = [v4 decodeIntegerForKey:@"HMFCI.woWLAN.version"];
    v7 = [v4 decodeIntegerForKey:@"HMFCI.woWLAN.wakeType"];
    v8 = [v4 decodeIntegerForKey:@"HMFCI.woWLAN.wakePacketType"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMFCI.woWLAN.wakePattern"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMFCI.woWLAN.WakeAddress"];

    v11 = [(HMFWoWLANInfo *)self initWithWakeVersion:v6 wakePort:v5 wakeAddress:v10 wakeType:v7 wakePacketType:v8 wakePattern:v9];
  }

  else
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMFCI.woWLAN.pID"];
    v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"HMFCI.woWLAN.sIDs"];

    v11 = [(HMFWoWLANInfo *)self initWithPrimaryIdentifier:v9 wifiIdentifiers:v10];
  }

  v12 = v11;

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(HMFWoWLANInfo *)self primaryMACAddress];

  if (v4)
  {
    v5 = [(HMFWoWLANInfo *)self primaryMACAddress];
    [v12 encodeObject:v5 forKey:@"HMFCI.woWLAN.pID"];
  }

  v6 = [(HMFWoWLANInfo *)self additionalMACAddresses];

  if (v6)
  {
    v7 = [(HMFWoWLANInfo *)self additionalMACAddresses];
    [v12 encodeObject:v7 forKey:@"HMFCI.woWLAN.sIDs"];
  }

  if ([(HMFWoWLANInfo *)self supportsSleepConfig])
  {
    [v12 encodeBool:1 forKey:@"HMFCI.woWLAN.sleepConfig"];
    [v12 encodeInteger:-[HMFWoWLANInfo version](self forKey:{"version"), @"HMFCI.woWLAN.version"}];
    [v12 encodeInteger:-[HMFWoWLANInfo wakePort](self forKey:{"wakePort"), @"HMFCI.woWLAN.WakePort"}];
    [v12 encodeInteger:-[HMFWoWLANInfo wakeType](self forKey:{"wakeType"), @"HMFCI.woWLAN.wakeType"}];
    [v12 encodeInteger:-[HMFWoWLANInfo wakePacketType](self forKey:{"wakePacketType"), @"HMFCI.woWLAN.wakePacketType"}];
    v8 = [(HMFWoWLANInfo *)self wakeAddress];

    if (v8)
    {
      v9 = [(HMFWoWLANInfo *)self wakeAddress];
      [v12 encodeObject:v9 forKey:@"HMFCI.woWLAN.WakeAddress"];
    }

    v10 = [(HMFWoWLANInfo *)self wakePattern];

    if (v10)
    {
      v11 = [(HMFWoWLANInfo *)self wakePattern];
      [v12 encodeObject:v11 forKey:@"HMFCI.woWLAN.wakePattern"];
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v23 = 1;
  }

  else
  {
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
    if (!v6)
    {
      goto LABEL_15;
    }

    v7 = [(HMFWoWLANInfo *)self primaryMACAddress];
    v8 = [(HMFWoWLANInfo *)v6 primaryMACAddress];
    v9 = HMFEqualObjects();

    if (!v9)
    {
      goto LABEL_15;
    }

    v10 = [(HMFWoWLANInfo *)self additionalMACAddresses];
    v11 = [(HMFWoWLANInfo *)v6 additionalMACAddresses];
    v12 = HMFEqualObjects();

    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = [(HMFWoWLANInfo *)self version];
    if (v13 != [(HMFWoWLANInfo *)v6 version])
    {
      goto LABEL_15;
    }

    v14 = [(HMFWoWLANInfo *)self wakeType];
    if (v14 != [(HMFWoWLANInfo *)v6 wakeType])
    {
      goto LABEL_15;
    }

    v15 = [(HMFWoWLANInfo *)self wakePort];
    if (v15 != [(HMFWoWLANInfo *)v6 wakePort])
    {
      goto LABEL_15;
    }

    v16 = [(HMFWoWLANInfo *)self wakePacketType];
    if (v16 != [(HMFWoWLANInfo *)v6 wakePacketType])
    {
      goto LABEL_15;
    }

    v17 = [(HMFWoWLANInfo *)self supportsSleepConfig];
    if (v17 != [(HMFWoWLANInfo *)v6 supportsSleepConfig])
    {
      goto LABEL_15;
    }

    v18 = [(HMFWoWLANInfo *)self wakePattern];
    v19 = [(HMFWoWLANInfo *)v6 wakePattern];
    v20 = HMFEqualObjects();

    if (v20)
    {
      v21 = [(HMFWoWLANInfo *)self wakeAddress];
      v22 = [(HMFWoWLANInfo *)v6 wakeAddress];
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
    v3 = [(HMFWoWLANInfo *)self version];
    v4 = [(HMFWoWLANInfo *)self wakeType];
    v5 = v4 ^ [(HMFWoWLANInfo *)self wakePacketType]^ v3;
    v6 = [(HMFWoWLANInfo *)self wakePort];
    v7 = [(HMFWoWLANInfo *)self wakePattern];
    v8 = v5 ^ v6 ^ [v7 hash];
    v9 = [(HMFWoWLANInfo *)self wakeAddress];
    v10 = v8 ^ [v9 hash];
  }

  else
  {
    v7 = [(HMFWoWLANInfo *)self primaryMACAddress];
    v10 = [v7 hash];
  }

  return v10;
}

- (HMFWoWLANInfo)initWithWakeVersion:(unsigned __int8)a3 wakePort:(unsigned __int16)a4 wakeAddress:(id)a5 wakeType:(int64_t)a6 wakePacketType:(int64_t)a7 wakePattern:(id)a8
{
  v29 = *MEMORY[0x277D85DE8];
  v15 = a5;
  v16 = a8;
  if (v15)
  {
    v26.receiver = self;
    v26.super_class = HMFWoWLANInfo;
    v17 = [(HMFWoWLANInfo *)&v26 init];
    v18 = v17;
    if (v17)
    {
      v17->_supportsSleepConfig = 1;
      v17->_version = a3;
      v17->_wakePort = a4;
      objc_storeStrong(&v17->_wakeAddress, a5);
      v18->_wakeType = a6;
      v18->_wakePacketType = a7;
      objc_storeStrong(&v18->_wakePattern, a8);
    }

    v19 = v18;
    v20 = v19;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v19 = self;
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

- (HMFWoWLANInfo)initWithPrimaryIdentifier:(id)a3 wifiIdentifiers:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 || [v8 count])
  {
    v18.receiver = self;
    v18.super_class = HMFWoWLANInfo;
    v10 = [(HMFWoWLANInfo *)&v18 init];
    p_isa = &v10->super.super.isa;
    if (v10)
    {
      objc_storeStrong(&v10->_primaryMACAddress, a3);
      objc_storeStrong(p_isa + 3, a4);
    }

    self = p_isa;
    v12 = self;
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
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

@end