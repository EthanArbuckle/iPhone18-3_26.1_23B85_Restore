@interface HMDWatchConfiguration
- (HMDWatchConfiguration)initWithUniqueID:(id)a3;
- (id)description;
- (void)setConfigVersion:(id)a3 forHome:(id)a4;
- (void)setHomeConfiguration:(id)a3;
@end

@implementation HMDWatchConfiguration

- (void)setConfigVersion:(id)a3 forHome:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDWatchConfiguration *)self homeConfig];
  v10 = [v8 mutableCopy];

  [v10 setObject:v7 forKeyedSubscript:v6];
  v9 = [v10 copy];
  [(HMDWatchConfiguration *)self setHomeConfig:v9];
}

- (void)setHomeConfiguration:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = objc_alloc(MEMORY[0x277CCAD78]);
          v13 = [v12 initWithUUIDString:{v11, v17}];
          v14 = [v6 objectForKeyedSubscript:v11];
          [v5 setObject:v14 forKeyedSubscript:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v15 = [v5 copy];
    [(HMDWatchConfiguration *)self setHomeConfig:v15];
  }

  else
  {
    v5 = [MEMORY[0x277CBEAC0] dictionary];
    [(HMDWatchConfiguration *)self setHomeConfig:v5];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(HMDWatchConfiguration *)self uniqueId];
  v5 = [(HMDWatchConfiguration *)self metadataConfig];
  v6 = [(HMDWatchConfiguration *)self homeConfig];
  v7 = [v3 initWithFormat:@"<HMDWatchConfiguration: Watch ID: %@, Metadata Config: %@, Homedata Config: %@>", v4, v5, v6];

  return v7;
}

- (HMDWatchConfiguration)initWithUniqueID:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HMDWatchConfiguration;
  v5 = [(HMDWatchConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    uniqueId = v5->_uniqueId;
    v5->_uniqueId = v6;

    v8 = [MEMORY[0x277CBEAC0] dictionary];
    homeConfig = v5->_homeConfig;
    v5->_homeConfig = v8;
  }

  return v5;
}

@end