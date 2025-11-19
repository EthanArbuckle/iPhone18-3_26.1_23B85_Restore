@interface DTGPUCounterProfile
- (DTGPUCounterProfile)initWithProfile:(unint64_t)a3 device:(id)a4;
- (id)counterProfileForHost;
@end

@implementation DTGPUCounterProfile

- (DTGPUCounterProfile)initWithProfile:(unint64_t)a3 device:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = DTGPUCounterProfile;
  v8 = [(DTGPUCounterProfile *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_profile = a3;
    v10 = objc_opt_new();
    counters = v9->_counters;
    v9->_counters = v10;

    objc_storeStrong(&v9->_device, a4);
  }

  return v9;
}

- (id)counterProfileForHost
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_counters;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v20 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v13 + 1) + 8 * i) infoArray];
        [v3 addObject:v8];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v20 count:16];
    }

    while (v5);
  }

  v17 = &unk_285A36DB0;
  v18 = v3;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v19 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end