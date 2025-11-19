@interface MSPSenderVirtualLiveStrategy
- (MSPSenderVirtualLiveStrategy)initWithGroupSession:(id)a3;
- (void)fetchCapabilitiesForParticipants:(id)a3 completion:(id)a4;
@end

@implementation MSPSenderVirtualLiveStrategy

- (MSPSenderVirtualLiveStrategy)initWithGroupSession:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D0EC70] sharedPlatform];
  v6 = [v5 isInternalInstall];

  if (v6)
  {
    v10.receiver = self;
    v10.super_class = MSPSenderVirtualLiveStrategy;
    v7 = [(MSPSenderLiveStrategy *)&v10 initWithGroupSession:v4];
    if (v7)
    {
      v7->super.super.super._loggingOnly = 1;
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)fetchCapabilitiesForParticipants:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = MSPSharedTripVirtualReceiverHandleGetReceiverCapabilities(v13);
        [v7 setObject:v14 forKeyedSubscript:{v13, v17}];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = [v7 copy];
  v6[2](v6, v15);

  v16 = *MEMORY[0x277D85DE8];
}

@end