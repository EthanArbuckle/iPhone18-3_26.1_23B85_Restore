@interface CWFBackgroundScanConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToBackgroundScanConfiguration:(id)configuration;
- (CWFBackgroundScanConfiguration)initWithCoder:(id)coder;
- (NSString)description;
- (id)JSONCompatibleKeyValueMap;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)merge:(id)merge;
- (void)setChannels:(id)channels;
- (void)setNetworks:(id)networks;
@end

@implementation CWFBackgroundScanConfiguration

- (id)JSONCompatibleKeyValueMap
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  networks = [(CWFBackgroundScanConfiguration *)self networks];
  v6 = [networks countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(networks);
        }

        jSONCompatibleKeyValueMap = [*(*(&v30 + 1) + 8 * i) JSONCompatibleKeyValueMap];
        [v4 addObject:jSONCompatibleKeyValueMap];
      }

      v7 = [networks countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  [v3 setObject:v4 forKeyedSubscript:@"networks"];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  channels = [(CWFBackgroundScanConfiguration *)self channels];
  v13 = [channels countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(channels);
        }

        jSONCompatibleKeyValueMap2 = [*(*(&v26 + 1) + 8 * j) JSONCompatibleKeyValueMap];
        [v11 addObject:jSONCompatibleKeyValueMap2];
      }

      v14 = [channels countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v14);
  }

  [v3 setObject:v11 forKeyedSubscript:@"channels"];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFBackgroundScanConfiguration cacheEnabled](self, "cacheEnabled")}];
  [v3 setObject:v18 forKeyedSubscript:@"cacheEnabled"];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFBackgroundScanConfiguration cacheRollover](self, "cacheRollover")}];
  [v3 setObject:v19 forKeyedSubscript:@"cacheRollover"];

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFBackgroundScanConfiguration scanFrequency](self, "scanFrequency")}];
  [v3 setObject:v20 forKeyedSubscript:@"scanFrequency"];

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFBackgroundScanConfiguration lostNetworkScanCount](self, "lostNetworkScanCount")}];
  [v3 setObject:v21 forKeyedSubscript:@"lostNetworkScanCount"];

  v22 = sub_1E0BCEC64(v3, 0, 1u);
  if (v22)
  {
    v23 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v22];
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)merge:(id)merge
{
  mergeCopy = merge;
  if (([(CWFBackgroundScanConfiguration *)mergeCopy modifyMap]& 2) != 0)
  {
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    networks = [(CWFBackgroundScanConfiguration *)self networks];
    [orderedSet addObjectsFromArray:networks];

    networks2 = [(CWFBackgroundScanConfiguration *)mergeCopy networks];
    [orderedSet addObjectsFromArray:networks2];

    array = [orderedSet array];
    [(CWFBackgroundScanConfiguration *)self setNetworks:array];
  }

  if (([(CWFBackgroundScanConfiguration *)mergeCopy modifyMap]& 1) != 0)
  {
    orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
    channels = [(CWFBackgroundScanConfiguration *)self channels];
    [orderedSet2 addObjectsFromArray:channels];

    channels2 = [(CWFBackgroundScanConfiguration *)mergeCopy channels];
    [orderedSet2 addObjectsFromArray:channels2];

    array2 = [orderedSet2 array];
    [(CWFBackgroundScanConfiguration *)self setChannels:array2];
  }

  if (([(CWFBackgroundScanConfiguration *)mergeCopy modifyMap]& 4) != 0)
  {
    [(CWFBackgroundScanConfiguration *)self setCacheEnabled:[(CWFBackgroundScanConfiguration *)mergeCopy cacheEnabled]| [(CWFBackgroundScanConfiguration *)self cacheEnabled]];
  }

  if (([(CWFBackgroundScanConfiguration *)mergeCopy modifyMap]& 8) != 0)
  {
    [(CWFBackgroundScanConfiguration *)self setCacheRollover:[(CWFBackgroundScanConfiguration *)mergeCopy cacheRollover]| [(CWFBackgroundScanConfiguration *)self cacheRollover]];
  }

  if (([(CWFBackgroundScanConfiguration *)mergeCopy modifyMap]& 0x10) != 0)
  {
    scanFrequency = [(CWFBackgroundScanConfiguration *)self scanFrequency];
    v13 = scanFrequency >= [(CWFBackgroundScanConfiguration *)mergeCopy scanFrequency];
    selfCopy = mergeCopy;
    if (!v13)
    {
      selfCopy = self;
    }

    [(CWFBackgroundScanConfiguration *)self setScanFrequency:[(CWFBackgroundScanConfiguration *)selfCopy scanFrequency]];
  }

  if (([(CWFBackgroundScanConfiguration *)mergeCopy modifyMap]& 0x20) != 0)
  {
    lostNetworkScanCount = [(CWFBackgroundScanConfiguration *)self lostNetworkScanCount];
    v13 = lostNetworkScanCount >= [(CWFBackgroundScanConfiguration *)mergeCopy lostNetworkScanCount];
    selfCopy2 = mergeCopy;
    if (!v13)
    {
      selfCopy2 = self;
    }

    [(CWFBackgroundScanConfiguration *)self setLostNetworkScanCount:[(CWFBackgroundScanConfiguration *)selfCopy2 lostNetworkScanCount]];
  }
}

- (void)setChannels:(id)channels
{
  channelsCopy = channels;
  [(CWFBackgroundScanConfiguration *)self setModifyMap:[(CWFBackgroundScanConfiguration *)self modifyMap]| 1u];
  v5 = [channelsCopy copy];

  channels = self->_channels;
  self->_channels = v5;
}

- (void)setNetworks:(id)networks
{
  networksCopy = networks;
  [(CWFBackgroundScanConfiguration *)self setModifyMap:[(CWFBackgroundScanConfiguration *)self modifyMap]| 2u];
  v5 = [networksCopy copy];

  networks = self->_networks;
  self->_networks = v5;
}

- (NSString)description
{
  v19 = MEMORY[0x1E696AEC0];
  v3 = "";
  if (([(CWFBackgroundScanConfiguration *)self modifyMap]& 1) != 0)
  {
    v4 = "*";
  }

  else
  {
    v4 = "";
  }

  v18 = v4;
  channels = [(CWFBackgroundScanConfiguration *)self channels];
  if (([(CWFBackgroundScanConfiguration *)self modifyMap]& 2) != 0)
  {
    v6 = "*";
  }

  else
  {
    v6 = "";
  }

  v17 = v6;
  networks = [(CWFBackgroundScanConfiguration *)self networks];
  if (([(CWFBackgroundScanConfiguration *)self modifyMap]& 4) != 0)
  {
    v8 = "*";
  }

  else
  {
    v8 = "";
  }

  v16 = v8;
  cacheEnabled = [(CWFBackgroundScanConfiguration *)self cacheEnabled];
  if (([(CWFBackgroundScanConfiguration *)self modifyMap]& 8) != 0)
  {
    v10 = "*";
  }

  else
  {
    v10 = "";
  }

  cacheRollover = [(CWFBackgroundScanConfiguration *)self cacheRollover];
  if (([(CWFBackgroundScanConfiguration *)self modifyMap]& 0x10) != 0)
  {
    v12 = "*";
  }

  else
  {
    v12 = "";
  }

  scanFrequency = [(CWFBackgroundScanConfiguration *)self scanFrequency];
  if (([(CWFBackgroundScanConfiguration *)self modifyMap]& 0x20) != 0)
  {
    v3 = "*";
  }

  v14 = [v19 stringWithFormat:@"channels%s=%@, networks%s=%@, cache%s=%d, rollover%s=%d, freq%s=%lu, lostNetScan%s=%lu", v18, channels, v17, networks, v16, cacheEnabled, v10, cacheRollover, v12, scanFrequency, v3, -[CWFBackgroundScanConfiguration lostNetworkScanCount](self, "lostNetworkScanCount")];

  return v14;
}

- (BOOL)isEqualToBackgroundScanConfiguration:(id)configuration
{
  configurationCopy = configuration;
  channels = self->_channels;
  channels = [configurationCopy channels];
  if (channels == channels)
  {
    goto LABEL_7;
  }

  if (self->_channels)
  {
    channels2 = [configurationCopy channels];
    if (channels2)
    {
      v3 = channels2;
      v11 = self->_channels;
      channels3 = [configurationCopy channels];
      if (![(NSArray *)v11 isEqual:channels3])
      {
        v13 = 0;
LABEL_25:

        goto LABEL_26;
      }

      v24 = channels3;
LABEL_7:
      networks = self->_networks;
      networks = [configurationCopy networks];
      if (networks != networks)
      {
        if (!self->_networks)
        {
          goto LABEL_21;
        }

        networks2 = [configurationCopy networks];
        if (!networks2)
        {
          goto LABEL_19;
        }

        v4 = networks2;
        v17 = self->_networks;
        networks3 = [configurationCopy networks];
        if (![(NSArray *)v17 isEqual:networks3])
        {
          v13 = 0;
          channels3 = v24;
LABEL_16:

          goto LABEL_22;
        }
      }

      cacheEnabled = self->_cacheEnabled;
      if (cacheEnabled == [configurationCopy cacheEnabled])
      {
        cacheRollover = self->_cacheRollover;
        if (cacheRollover == [configurationCopy cacheRollover])
        {
          scanFrequency = self->_scanFrequency;
          if (scanFrequency == [configurationCopy scanFrequency])
          {
            lostNetworkScanCount = self->_lostNetworkScanCount;
            v13 = lostNetworkScanCount == [configurationCopy lostNetworkScanCount];
            v22 = networks == networks;
            channels3 = v24;
            if (v22)
            {
              goto LABEL_22;
            }

            goto LABEL_16;
          }
        }
      }

      if (networks != networks)
      {

LABEL_19:
        v13 = 0;
        channels3 = v24;
        if (channels == channels)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_21:
      v13 = 0;
      channels3 = v24;
LABEL_22:

      if (channels == channels)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  v13 = 0;
LABEL_26:

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFBackgroundScanConfiguration *)self isEqualToBackgroundScanConfiguration:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFBackgroundScanConfiguration allocWithZone:?]];
  [(CWFBackgroundScanConfiguration *)v4 setChannels:self->_channels];
  [(CWFBackgroundScanConfiguration *)v4 setNetworks:self->_networks];
  [(CWFBackgroundScanConfiguration *)v4 setCacheEnabled:self->_cacheEnabled];
  [(CWFBackgroundScanConfiguration *)v4 setCacheRollover:self->_cacheRollover];
  [(CWFBackgroundScanConfiguration *)v4 setScanFrequency:self->_scanFrequency];
  [(CWFBackgroundScanConfiguration *)v4 setLostNetworkScanCount:self->_lostNetworkScanCount];
  [(CWFBackgroundScanConfiguration *)v4 setModifyMap:*(&self->_cacheRollover + 1)];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  channels = self->_channels;
  coderCopy = coder;
  [coderCopy encodeObject:channels forKey:@"_channels"];
  [coderCopy encodeObject:self->_networks forKey:@"_networks"];
  [coderCopy encodeBool:self->_cacheEnabled forKey:@"_cacheEnabled"];
  [coderCopy encodeBool:self->_cacheRollover forKey:@"_cacheRollover"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_scanFrequency];
  [coderCopy encodeObject:v6 forKey:@"_scanFrequency"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_lostNetworkScanCount];
  [coderCopy encodeObject:v7 forKey:@"_lostNetworkScanCount"];

  v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_cacheRollover + 1 length:1];
  [coderCopy encodeObject:v8 forKey:@"_modifyMap"];
}

- (CWFBackgroundScanConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CWFBackgroundScanConfiguration;
  v5 = [(CWFBackgroundScanConfiguration *)&v20 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_channels"];
    channels = v5->_channels;
    v5->_channels = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"_networks"];
    networks = v5->_networks;
    v5->_networks = v14;

    v5->_cacheEnabled = [coderCopy decodeBoolForKey:@"_cacheEnabled"];
    v5->_cacheRollover = [coderCopy decodeBoolForKey:@"_cacheRollover"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_scanFrequency"];
    v5->_scanFrequency = [v16 unsignedIntegerValue];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_lostNetworkScanCount"];
    v5->_lostNetworkScanCount = [v17 unsignedIntegerValue];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_modifyMap"];
    [v18 getBytes:&v5->_cacheRollover + 1 length:1];
  }

  return v5;
}

@end