@interface DRSCloudChannelConfig
+ (id)_iOSSliceCountDict;
+ (id)_smallPopulationCountDict;
+ (id)currentDeviceDefaultCloudChannelConfig;
+ (id)staticSnapshotDeviceDefaultCloudChannelConfig;
+ (id)stringForChannelType:(unsigned __int8)type;
+ (id)stringForEnvironment:(unsigned __int8)environment;
+ (unsigned)channelTypeForIsInternal:(BOOL)internal isSeed:(BOOL)seed isQA:(BOOL)a isCarrier:(BOOL)carrier;
+ (unsigned)populationSliceForDevice:(unsigned __int16)device;
- (BOOL)isEqual:(id)equal;
- (DRSCloudChannelConfig)initWithMO:(id)o;
- (NSString)channelID;
- (NSString)channelName;
- (id)debugDescription;
- (id)initNoChecksWithPlatform:(unsigned __int8)platform channelType:(unsigned __int8)type environment:(unsigned __int8)environment populationSliceNumber:(id)number overridesDeviceDefault:(BOOL)default;
- (id)initNoSubscriptionConfig:(BOOL)config;
- (id)jsonDictionaryRepresentation;
@end

@implementation DRSCloudChannelConfig

+ (id)stringForChannelType:(unsigned __int8)type
{
  if (type > 4u)
  {
    return @"Unknown";
  }

  else
  {
    return off_27899FB78[type];
  }
}

+ (id)stringForEnvironment:(unsigned __int8)environment
{
  if (environment > 2u)
  {
    return @"Unknown";
  }

  else
  {
    return off_27899FBA0[environment];
  }
}

- (id)debugDescription
{
  isNoSubscriptionConfig = [(DRSCloudChannelConfig *)self isNoSubscriptionConfig];
  v4 = MEMORY[0x277CCACA8];
  if (isNoSubscriptionConfig)
  {
    overridesDeviceDefault = [(DRSCloudChannelConfig *)self overridesDeviceDefault];
    v6 = @"DEFAULT";
    if (overridesDeviceDefault)
    {
      v6 = @"Override";
    }

    v7 = [v4 stringWithFormat:@"No Subscription (%@)", v6];
  }

  else
  {
    channelName = [(DRSCloudChannelConfig *)self channelName];
    if ([(DRSCloudChannelConfig *)self overridesDeviceDefault])
    {
      v9 = @"Override";
    }

    else
    {
      v9 = @"DEFAULT";
    }

    channelID = [(DRSCloudChannelConfig *)self channelID];
    v7 = [v4 stringWithFormat:@"%@ (%@, %@)", channelName, v9, channelID];
  }

  return v7;
}

- (id)initNoChecksWithPlatform:(unsigned __int8)platform channelType:(unsigned __int8)type environment:(unsigned __int8)environment populationSliceNumber:(id)number overridesDeviceDefault:(BOOL)default
{
  numberCopy = number;
  v17.receiver = self;
  v17.super_class = DRSCloudChannelConfig;
  v14 = [(DRSCloudChannelConfig *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_platform = platform;
    v14->_type = type;
    v14->_environment = environment;
    objc_storeStrong(&v14->_populationSliceNumber, number);
    v15->_overridesDeviceDefault = default;
  }

  return v15;
}

- (id)initNoSubscriptionConfig:(BOOL)config
{
  v8.receiver = self;
  v8.super_class = DRSCloudChannelConfig;
  v4 = [(DRSCloudChannelConfig *)&v8 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_platform = 0;
    v4->_environment = 0;
    populationSliceNumber = v4->_populationSliceNumber;
    v4->_populationSliceNumber = 0;

    v5->_overridesDeviceDefault = config;
  }

  return v5;
}

- (DRSCloudChannelConfig)initWithMO:(id)o
{
  if (o)
  {
    oCopy = o;
    platform = [oCopy platform];
    channelType = [oCopy channelType];
    environment = [oCopy environment];
    populationSliceNumber = [oCopy populationSliceNumber];
    overridesDeviceDefault = [oCopy overridesDeviceDefault];

    self = [(DRSCloudChannelConfig *)self initNoChecksWithPlatform:platform channelType:channelType environment:environment populationSliceNumber:populationSliceNumber overridesDeviceDefault:overridesDeviceDefault];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        populationSliceNumber = [(DRSCloudChannelConfig *)self populationSliceNumber];
        if (!populationSliceNumber || ([(DRSCloudChannelConfig *)v7 populationSliceNumber], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          populationSliceNumber2 = [(DRSCloudChannelConfig *)v7 populationSliceNumber];
          if (populationSliceNumber2)
          {
            populationSliceNumber3 = [(DRSCloudChannelConfig *)self populationSliceNumber];

            if (populationSliceNumber)
            {

              if (!populationSliceNumber3)
              {
                goto LABEL_22;
              }
            }

            else if (!populationSliceNumber3)
            {
              goto LABEL_22;
            }
          }

          else
          {

            if (populationSliceNumber)
            {
            }
          }

          populationSliceNumber4 = [(DRSCloudChannelConfig *)self populationSliceNumber];

          if (!populationSliceNumber4 || (-[DRSCloudChannelConfig populationSliceNumber](self, "populationSliceNumber"), v13 = objc_claimAutoreleasedReturnValue(), -[DRSCloudChannelConfig populationSliceNumber](v7, "populationSliceNumber"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v13 isEqualToNumber:v14], v14, v13, v15))
          {
            platform = [(DRSCloudChannelConfig *)self platform];
            if (platform == [(DRSCloudChannelConfig *)v7 platform])
            {
              environment = [(DRSCloudChannelConfig *)self environment];
              if (environment == [(DRSCloudChannelConfig *)v7 environment])
              {
                type = [(DRSCloudChannelConfig *)self type];
                if (type == [(DRSCloudChannelConfig *)v7 type])
                {
                  overridesDeviceDefault = [(DRSCloudChannelConfig *)self overridesDeviceDefault];
                  v9 = overridesDeviceDefault ^ [(DRSCloudChannelConfig *)v7 overridesDeviceDefault]^ 1;
LABEL_23:

                  goto LABEL_24;
                }
              }
            }
          }
        }

        else
        {
        }

LABEL_22:
        LOBYTE(v9) = 0;
        goto LABEL_23;
      }
    }

    LOBYTE(v9) = 0;
  }

LABEL_24:

  return v9;
}

- (id)jsonDictionaryRepresentation
{
  v38 = *MEMORY[0x277D85DE8];
  isNoSubscriptionConfig = [(DRSCloudChannelConfig *)self isNoSubscriptionConfig];
  v6 = isNoSubscriptionConfig;
  v22 = @"platform";
  if (isNoSubscriptionConfig)
  {
    v30 = @"(None)";
    v31 = @"(None)";
    v23 = @"channelType";
    v24 = @"environment";
    v7 = MEMORY[0x277CBEC28];
    v8 = @"(None)";
  }

  else
  {
    v2 = DRSSystemProfilePlatformStringForPlatform([(DRSCloudChannelConfig *)self platform]);
    v30 = v2;
    v23 = @"channelType";
    v3 = [objc_opt_class() stringForChannelType:{-[DRSCloudChannelConfig type](self, "type")}];
    v31 = v3;
    v24 = @"environment";
    v8 = [objc_opt_class() stringForEnvironment:{-[DRSCloudChannelConfig environment](self, "environment")}];
    v7 = MEMORY[0x277CBEC38];
  }

  v32 = v8;
  v33 = v7;
  v25 = @"isSubscribed";
  v26 = @"populationSliceNumber";
  populationSliceNumber = [(DRSCloudChannelConfig *)self populationSliceNumber];
  v10 = populationSliceNumber;
  if (populationSliceNumber)
  {
    v11 = populationSliceNumber;
  }

  else
  {
    v11 = @"(None)";
  }

  v34 = v11;
  v27 = @"overridesDeviceDefault";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[DRSCloudChannelConfig overridesDeviceDefault](self, "overridesDeviceDefault")}];
  v35 = v12;
  v28 = @"channelName";
  channelName = [(DRSCloudChannelConfig *)self channelName];
  v14 = channelName;
  if (channelName)
  {
    v15 = channelName;
  }

  else
  {
    v15 = @"(None)";
  }

  v36 = v15;
  v29 = @"channelID";
  channelID = [(DRSCloudChannelConfig *)self channelID];
  v17 = channelID;
  if (channelID)
  {
    v18 = channelID;
  }

  else
  {
    v18 = @"(None)";
  }

  v37 = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v22 count:8];

  if (!v6)
  {
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (NSString)channelName
{
  v3 = objc_opt_class();
  platform = [(DRSCloudChannelConfig *)self platform];
  type = [(DRSCloudChannelConfig *)self type];
  populationSliceNumber = [(DRSCloudChannelConfig *)self populationSliceNumber];
  v7 = [v3 channelNameForPlatform:platform type:type sliceNum:populationSliceNumber];

  return v7;
}

- (NSString)channelID
{
  v3 = objc_opt_class();
  channelName = [(DRSCloudChannelConfig *)self channelName];
  v5 = [v3 channelIDForName:channelName];

  return v5;
}

+ (unsigned)channelTypeForIsInternal:(BOOL)internal isSeed:(BOOL)seed isQA:(BOOL)a isCarrier:(BOOL)carrier
{
  if (seed)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

  if (internal)
  {
    v6 = 2;
  }

  if (a || carrier)
  {
    return !carrier;
  }

  else
  {
    return v6;
  }
}

+ (id)staticSnapshotDeviceDefaultCloudChannelConfig
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__DRSCloudChannelConfig_staticSnapshotDeviceDefaultCloudChannelConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (staticSnapshotDeviceDefaultCloudChannelConfig_onceToken != -1)
  {
    dispatch_once(&staticSnapshotDeviceDefaultCloudChannelConfig_onceToken, block);
  }

  v2 = staticSnapshotDeviceDefaultCloudChannelConfig_defaultConfig;

  return v2;
}

void __70__DRSCloudChannelConfig_staticSnapshotDeviceDefaultCloudChannelConfig__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) currentDeviceDefaultCloudChannelConfig];
  v2 = staticSnapshotDeviceDefaultCloudChannelConfig_defaultConfig;
  staticSnapshotDeviceDefaultCloudChannelConfig_defaultConfig = v1;
}

+ (id)currentDeviceDefaultCloudChannelConfig
{
  v3 = +[DRSSystemProfile sharedInstance];
  v4 = [self channelTypeForIsInternal:objc_msgSend(v3 isSeed:"isInternal") isQA:objc_msgSend(v3 isCarrier:{"isSeed"), 0, objc_msgSend(v3, "isCarrier")}];
  if (v4)
  {
    v5 = v4;
    v6 = [self sliceCountForPlatform:objc_msgSend(v3 channelType:{"platform"), v4}];
    v7 = v6;
    if (v6)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{+[DRSCloudChannelConfig populationSliceForDevice:](DRSCloudChannelConfig, "populationSliceForDevice:", objc_msgSend(v6, "unsignedShortValue"))}];
    }

    else
    {
      v8 = 0;
    }

    v9 = -[DRSCloudChannelConfig initWithValidPlatform:channelType:environment:populationSliceNumber:overridesDeviceDefault:]([DRSCloudChannelConfig alloc], "initWithValidPlatform:channelType:environment:populationSliceNumber:overridesDeviceDefault:", [v3 platform], v5, 2, v8, 0);
  }

  else
  {
    v9 = [[DRSCloudChannelConfig alloc] initNoSubscriptionConfig:0];
  }

  return v9;
}

+ (unsigned)populationSliceForDevice:(unsigned __int16)device
{
  deviceCopy = device;
  v4 = +[DRSSystemProfile sharedInstance];
  LOWORD(deviceCopy) = [v4 deviceHash] % deviceCopy;

  return deviceCopy;
}

+ (id)_smallPopulationCountDict
{
  if (_smallPopulationCountDict_onceToken != -1)
  {
    +[DRSCloudChannelConfig _smallPopulationCountDict];
  }

  v3 = _smallPopulationCountDict_kCountDict;

  return v3;
}

void __50__DRSCloudChannelConfig__smallPopulationCountDict__block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_2847FF780;
  v3[1] = &unk_2847FF7B0;
  v4[0] = &unk_2847FF798;
  v4[1] = &unk_2847FF798;
  v3[2] = &unk_2847FF7C8;
  v3[3] = &unk_2847FF7F8;
  v4[2] = &unk_2847FF7E0;
  v4[3] = &unk_2847FF7E0;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = _smallPopulationCountDict_kCountDict;
  _smallPopulationCountDict_kCountDict = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)_iOSSliceCountDict
{
  if (_iOSSliceCountDict_onceToken != -1)
  {
    +[DRSCloudChannelConfig _iOSSliceCountDict];
  }

  v3 = _iOSSliceCountDict_kCountDict;

  return v3;
}

void __43__DRSCloudChannelConfig__iOSSliceCountDict__block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_2847FF780;
  v3[1] = &unk_2847FF7B0;
  v4[0] = &unk_2847FF798;
  v4[1] = &unk_2847FF798;
  v3[2] = &unk_2847FF7C8;
  v3[3] = &unk_2847FF7F8;
  v4[2] = &unk_2847FF7E0;
  v4[3] = &unk_2847FF810;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = _iOSSliceCountDict_kCountDict;
  _iOSSliceCountDict_kCountDict = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end