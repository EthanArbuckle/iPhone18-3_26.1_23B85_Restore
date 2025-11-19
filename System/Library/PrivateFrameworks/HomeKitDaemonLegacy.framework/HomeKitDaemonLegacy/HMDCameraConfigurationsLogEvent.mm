@interface HMDCameraConfigurationsLogEvent
- (HMDCameraConfigurationsLogEvent)initWithHomes:(id)a3;
@end

@implementation HMDCameraConfigurationsLogEvent

- (HMDCameraConfigurationsLogEvent)initWithHomes:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HMDCameraConfigurationsLogEvent;
  v5 = [(HMMLogEvent *)&v23 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          v13 = [HMDCameraHomeSettingsConfiguration alloc];
          v14 = [(HMDCameraHomeSettingsConfiguration *)v13 initWithHome:v12, v19];
          [v6 addObject:v14];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v9);
    }

    v15 = [MEMORY[0x277CBEA60] arrayWithArray:v6];
    homeSettingsConfigurations = v5->_homeSettingsConfigurations;
    v5->_homeSettingsConfigurations = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

@end