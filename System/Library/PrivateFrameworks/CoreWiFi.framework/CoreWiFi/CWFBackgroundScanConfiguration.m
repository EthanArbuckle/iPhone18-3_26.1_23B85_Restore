@interface CWFBackgroundScanConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToBackgroundScanConfiguration:(id)a3;
- (CWFBackgroundScanConfiguration)initWithCoder:(id)a3;
- (NSString)description;
- (id)JSONCompatibleKeyValueMap;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)merge:(id)a3;
- (void)setChannels:(id)a3;
- (void)setNetworks:(id)a3;
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
  v5 = [(CWFBackgroundScanConfiguration *)self networks];
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v30 + 1) + 8 * i) JSONCompatibleKeyValueMap];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  [v3 setObject:v4 forKeyedSubscript:@"networks"];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = [(CWFBackgroundScanConfiguration *)self channels];
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v26 + 1) + 8 * j) JSONCompatibleKeyValueMap];
        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
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

- (void)merge:(id)a3
{
  v17 = a3;
  if (([(CWFBackgroundScanConfiguration *)v17 modifyMap]& 2) != 0)
  {
    v4 = [MEMORY[0x1E695DFA0] orderedSet];
    v5 = [(CWFBackgroundScanConfiguration *)self networks];
    [v4 addObjectsFromArray:v5];

    v6 = [(CWFBackgroundScanConfiguration *)v17 networks];
    [v4 addObjectsFromArray:v6];

    v7 = [v4 array];
    [(CWFBackgroundScanConfiguration *)self setNetworks:v7];
  }

  if (([(CWFBackgroundScanConfiguration *)v17 modifyMap]& 1) != 0)
  {
    v8 = [MEMORY[0x1E695DFA0] orderedSet];
    v9 = [(CWFBackgroundScanConfiguration *)self channels];
    [v8 addObjectsFromArray:v9];

    v10 = [(CWFBackgroundScanConfiguration *)v17 channels];
    [v8 addObjectsFromArray:v10];

    v11 = [v8 array];
    [(CWFBackgroundScanConfiguration *)self setChannels:v11];
  }

  if (([(CWFBackgroundScanConfiguration *)v17 modifyMap]& 4) != 0)
  {
    [(CWFBackgroundScanConfiguration *)self setCacheEnabled:[(CWFBackgroundScanConfiguration *)v17 cacheEnabled]| [(CWFBackgroundScanConfiguration *)self cacheEnabled]];
  }

  if (([(CWFBackgroundScanConfiguration *)v17 modifyMap]& 8) != 0)
  {
    [(CWFBackgroundScanConfiguration *)self setCacheRollover:[(CWFBackgroundScanConfiguration *)v17 cacheRollover]| [(CWFBackgroundScanConfiguration *)self cacheRollover]];
  }

  if (([(CWFBackgroundScanConfiguration *)v17 modifyMap]& 0x10) != 0)
  {
    v12 = [(CWFBackgroundScanConfiguration *)self scanFrequency];
    v13 = v12 >= [(CWFBackgroundScanConfiguration *)v17 scanFrequency];
    v14 = v17;
    if (!v13)
    {
      v14 = self;
    }

    [(CWFBackgroundScanConfiguration *)self setScanFrequency:[(CWFBackgroundScanConfiguration *)v14 scanFrequency]];
  }

  if (([(CWFBackgroundScanConfiguration *)v17 modifyMap]& 0x20) != 0)
  {
    v15 = [(CWFBackgroundScanConfiguration *)self lostNetworkScanCount];
    v13 = v15 >= [(CWFBackgroundScanConfiguration *)v17 lostNetworkScanCount];
    v16 = v17;
    if (!v13)
    {
      v16 = self;
    }

    [(CWFBackgroundScanConfiguration *)self setLostNetworkScanCount:[(CWFBackgroundScanConfiguration *)v16 lostNetworkScanCount]];
  }
}

- (void)setChannels:(id)a3
{
  v4 = a3;
  [(CWFBackgroundScanConfiguration *)self setModifyMap:[(CWFBackgroundScanConfiguration *)self modifyMap]| 1u];
  v5 = [v4 copy];

  channels = self->_channels;
  self->_channels = v5;
}

- (void)setNetworks:(id)a3
{
  v4 = a3;
  [(CWFBackgroundScanConfiguration *)self setModifyMap:[(CWFBackgroundScanConfiguration *)self modifyMap]| 2u];
  v5 = [v4 copy];

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
  v5 = [(CWFBackgroundScanConfiguration *)self channels];
  if (([(CWFBackgroundScanConfiguration *)self modifyMap]& 2) != 0)
  {
    v6 = "*";
  }

  else
  {
    v6 = "";
  }

  v17 = v6;
  v7 = [(CWFBackgroundScanConfiguration *)self networks];
  if (([(CWFBackgroundScanConfiguration *)self modifyMap]& 4) != 0)
  {
    v8 = "*";
  }

  else
  {
    v8 = "";
  }

  v16 = v8;
  v9 = [(CWFBackgroundScanConfiguration *)self cacheEnabled];
  if (([(CWFBackgroundScanConfiguration *)self modifyMap]& 8) != 0)
  {
    v10 = "*";
  }

  else
  {
    v10 = "";
  }

  v11 = [(CWFBackgroundScanConfiguration *)self cacheRollover];
  if (([(CWFBackgroundScanConfiguration *)self modifyMap]& 0x10) != 0)
  {
    v12 = "*";
  }

  else
  {
    v12 = "";
  }

  v13 = [(CWFBackgroundScanConfiguration *)self scanFrequency];
  if (([(CWFBackgroundScanConfiguration *)self modifyMap]& 0x20) != 0)
  {
    v3 = "*";
  }

  v14 = [v19 stringWithFormat:@"channels%s=%@, networks%s=%@, cache%s=%d, rollover%s=%d, freq%s=%lu, lostNetScan%s=%lu", v18, v5, v17, v7, v16, v9, v10, v11, v12, v13, v3, -[CWFBackgroundScanConfiguration lostNetworkScanCount](self, "lostNetworkScanCount")];

  return v14;
}

- (BOOL)isEqualToBackgroundScanConfiguration:(id)a3
{
  v7 = a3;
  channels = self->_channels;
  v9 = [v7 channels];
  if (channels == v9)
  {
    goto LABEL_7;
  }

  if (self->_channels)
  {
    v10 = [v7 channels];
    if (v10)
    {
      v3 = v10;
      v11 = self->_channels;
      v12 = [v7 channels];
      if (![(NSArray *)v11 isEqual:v12])
      {
        v13 = 0;
LABEL_25:

        goto LABEL_26;
      }

      v24 = v12;
LABEL_7:
      networks = self->_networks;
      v15 = [v7 networks];
      if (networks != v15)
      {
        if (!self->_networks)
        {
          goto LABEL_21;
        }

        v16 = [v7 networks];
        if (!v16)
        {
          goto LABEL_19;
        }

        v4 = v16;
        v17 = self->_networks;
        v5 = [v7 networks];
        if (![(NSArray *)v17 isEqual:v5])
        {
          v13 = 0;
          v12 = v24;
LABEL_16:

          goto LABEL_22;
        }
      }

      cacheEnabled = self->_cacheEnabled;
      if (cacheEnabled == [v7 cacheEnabled])
      {
        cacheRollover = self->_cacheRollover;
        if (cacheRollover == [v7 cacheRollover])
        {
          scanFrequency = self->_scanFrequency;
          if (scanFrequency == [v7 scanFrequency])
          {
            lostNetworkScanCount = self->_lostNetworkScanCount;
            v13 = lostNetworkScanCount == [v7 lostNetworkScanCount];
            v22 = networks == v15;
            v12 = v24;
            if (v22)
            {
              goto LABEL_22;
            }

            goto LABEL_16;
          }
        }
      }

      if (networks != v15)
      {

LABEL_19:
        v13 = 0;
        v12 = v24;
        if (channels == v9)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_21:
      v13 = 0;
      v12 = v24;
LABEL_22:

      if (channels == v9)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFBackgroundScanConfiguration *)self isEqualToBackgroundScanConfiguration:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  channels = self->_channels;
  v5 = a3;
  [v5 encodeObject:channels forKey:@"_channels"];
  [v5 encodeObject:self->_networks forKey:@"_networks"];
  [v5 encodeBool:self->_cacheEnabled forKey:@"_cacheEnabled"];
  [v5 encodeBool:self->_cacheRollover forKey:@"_cacheRollover"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_scanFrequency];
  [v5 encodeObject:v6 forKey:@"_scanFrequency"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_lostNetworkScanCount];
  [v5 encodeObject:v7 forKey:@"_lostNetworkScanCount"];

  v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_cacheRollover + 1 length:1];
  [v5 encodeObject:v8 forKey:@"_modifyMap"];
}

- (CWFBackgroundScanConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CWFBackgroundScanConfiguration;
  v5 = [(CWFBackgroundScanConfiguration *)&v20 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_channels"];
    channels = v5->_channels;
    v5->_channels = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"_networks"];
    networks = v5->_networks;
    v5->_networks = v14;

    v5->_cacheEnabled = [v4 decodeBoolForKey:@"_cacheEnabled"];
    v5->_cacheRollover = [v4 decodeBoolForKey:@"_cacheRollover"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_scanFrequency"];
    v5->_scanFrequency = [v16 unsignedIntegerValue];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_lostNetworkScanCount"];
    v5->_lostNetworkScanCount = [v17 unsignedIntegerValue];

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_modifyMap"];
    [v18 getBytes:&v5->_cacheRollover + 1 length:1];
  }

  return v5;
}

@end