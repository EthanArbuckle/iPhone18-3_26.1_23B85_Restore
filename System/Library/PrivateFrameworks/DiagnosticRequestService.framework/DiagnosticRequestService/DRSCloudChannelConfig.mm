@interface DRSCloudChannelConfig
+ (id)_iOSSliceCountDict;
+ (id)_smallPopulationCountDict;
+ (id)currentDeviceDefaultCloudChannelConfig;
+ (id)staticSnapshotDeviceDefaultCloudChannelConfig;
+ (id)stringForChannelType:(unsigned __int8)a3;
+ (id)stringForEnvironment:(unsigned __int8)a3;
+ (unsigned)channelTypeForIsInternal:(BOOL)a3 isSeed:(BOOL)a4 isQA:(BOOL)a5 isCarrier:(BOOL)a6;
+ (unsigned)populationSliceForDevice:(unsigned __int16)a3;
- (BOOL)isEqual:(id)a3;
- (DRSCloudChannelConfig)initWithMO:(id)a3;
- (NSString)channelID;
- (NSString)channelName;
- (id)debugDescription;
- (id)initNoChecksWithPlatform:(unsigned __int8)a3 channelType:(unsigned __int8)a4 environment:(unsigned __int8)a5 populationSliceNumber:(id)a6 overridesDeviceDefault:(BOOL)a7;
- (id)initNoSubscriptionConfig:(BOOL)a3;
- (id)jsonDictionaryRepresentation;
@end

@implementation DRSCloudChannelConfig

+ (id)stringForChannelType:(unsigned __int8)a3
{
  if (a3 > 4u)
  {
    return @"Unknown";
  }

  else
  {
    return off_27899FB78[a3];
  }
}

+ (id)stringForEnvironment:(unsigned __int8)a3
{
  if (a3 > 2u)
  {
    return @"Unknown";
  }

  else
  {
    return off_27899FBA0[a3];
  }
}

- (id)debugDescription
{
  v3 = [(DRSCloudChannelConfig *)self isNoSubscriptionConfig];
  v4 = MEMORY[0x277CCACA8];
  if (v3)
  {
    v5 = [(DRSCloudChannelConfig *)self overridesDeviceDefault];
    v6 = @"DEFAULT";
    if (v5)
    {
      v6 = @"Override";
    }

    v7 = [v4 stringWithFormat:@"No Subscription (%@)", v6];
  }

  else
  {
    v8 = [(DRSCloudChannelConfig *)self channelName];
    if ([(DRSCloudChannelConfig *)self overridesDeviceDefault])
    {
      v9 = @"Override";
    }

    else
    {
      v9 = @"DEFAULT";
    }

    v10 = [(DRSCloudChannelConfig *)self channelID];
    v7 = [v4 stringWithFormat:@"%@ (%@, %@)", v8, v9, v10];
  }

  return v7;
}

- (id)initNoChecksWithPlatform:(unsigned __int8)a3 channelType:(unsigned __int8)a4 environment:(unsigned __int8)a5 populationSliceNumber:(id)a6 overridesDeviceDefault:(BOOL)a7
{
  v13 = a6;
  v17.receiver = self;
  v17.super_class = DRSCloudChannelConfig;
  v14 = [(DRSCloudChannelConfig *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_platform = a3;
    v14->_type = a4;
    v14->_environment = a5;
    objc_storeStrong(&v14->_populationSliceNumber, a6);
    v15->_overridesDeviceDefault = a7;
  }

  return v15;
}

- (id)initNoSubscriptionConfig:(BOOL)a3
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

    v5->_overridesDeviceDefault = a3;
  }

  return v5;
}

- (DRSCloudChannelConfig)initWithMO:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 platform];
    v6 = [v4 channelType];
    v7 = [v4 environment];
    v8 = [v4 populationSliceNumber];
    v9 = [v4 overridesDeviceDefault];

    self = [(DRSCloudChannelConfig *)self initNoChecksWithPlatform:v5 channelType:v6 environment:v7 populationSliceNumber:v8 overridesDeviceDefault:v9];
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(DRSCloudChannelConfig *)self populationSliceNumber];
        if (!v8 || ([(DRSCloudChannelConfig *)v7 populationSliceNumber], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v10 = [(DRSCloudChannelConfig *)v7 populationSliceNumber];
          if (v10)
          {
            v11 = [(DRSCloudChannelConfig *)self populationSliceNumber];

            if (v8)
            {

              if (!v11)
              {
                goto LABEL_22;
              }
            }

            else if (!v11)
            {
              goto LABEL_22;
            }
          }

          else
          {

            if (v8)
            {
            }
          }

          v12 = [(DRSCloudChannelConfig *)self populationSliceNumber];

          if (!v12 || (-[DRSCloudChannelConfig populationSliceNumber](self, "populationSliceNumber"), v13 = objc_claimAutoreleasedReturnValue(), -[DRSCloudChannelConfig populationSliceNumber](v7, "populationSliceNumber"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v13 isEqualToNumber:v14], v14, v13, v15))
          {
            v16 = [(DRSCloudChannelConfig *)self platform];
            if (v16 == [(DRSCloudChannelConfig *)v7 platform])
            {
              v17 = [(DRSCloudChannelConfig *)self environment];
              if (v17 == [(DRSCloudChannelConfig *)v7 environment])
              {
                v18 = [(DRSCloudChannelConfig *)self type];
                if (v18 == [(DRSCloudChannelConfig *)v7 type])
                {
                  v19 = [(DRSCloudChannelConfig *)self overridesDeviceDefault];
                  v9 = v19 ^ [(DRSCloudChannelConfig *)v7 overridesDeviceDefault]^ 1;
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
  v5 = [(DRSCloudChannelConfig *)self isNoSubscriptionConfig];
  v6 = v5;
  v22 = @"platform";
  if (v5)
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
  v9 = [(DRSCloudChannelConfig *)self populationSliceNumber];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
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
  v13 = [(DRSCloudChannelConfig *)self channelName];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"(None)";
  }

  v36 = v15;
  v29 = @"channelID";
  v16 = [(DRSCloudChannelConfig *)self channelID];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
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
  v4 = [(DRSCloudChannelConfig *)self platform];
  v5 = [(DRSCloudChannelConfig *)self type];
  v6 = [(DRSCloudChannelConfig *)self populationSliceNumber];
  v7 = [v3 channelNameForPlatform:v4 type:v5 sliceNum:v6];

  return v7;
}

- (NSString)channelID
{
  v3 = objc_opt_class();
  v4 = [(DRSCloudChannelConfig *)self channelName];
  v5 = [v3 channelIDForName:v4];

  return v5;
}

+ (unsigned)channelTypeForIsInternal:(BOOL)a3 isSeed:(BOOL)a4 isQA:(BOOL)a5 isCarrier:(BOOL)a6
{
  if (a4)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

  if (a3)
  {
    v6 = 2;
  }

  if (a5 || a6)
  {
    return !a6;
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
  block[4] = a1;
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
  v4 = [a1 channelTypeForIsInternal:objc_msgSend(v3 isSeed:"isInternal") isQA:objc_msgSend(v3 isCarrier:{"isSeed"), 0, objc_msgSend(v3, "isCarrier")}];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 sliceCountForPlatform:objc_msgSend(v3 channelType:{"platform"), v4}];
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

+ (unsigned)populationSliceForDevice:(unsigned __int16)a3
{
  v3 = a3;
  v4 = +[DRSSystemProfile sharedInstance];
  LOWORD(v3) = [v4 deviceHash] % v3;

  return v3;
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