@interface FSFBiomeFeatureStore
+ (id)singletonInstance;
- (BOOL)deleteAllStreams;
- (BOOL)deleteStream:(id)a3;
- (FSFBiomeFeatureStore)init;
- (id)getStream:(id)a3;
@end

@implementation FSFBiomeFeatureStore

+ (id)singletonInstance
{
  if (+[FSFUtils isSupportedPlatform])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__FSFBiomeFeatureStore_singletonInstance__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (singletonInstance_onceToken != -1)
    {
      dispatch_once(&singletonInstance_onceToken, block);
    }

    v3 = singletonInstance_sharedInstance;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"This method is not implemented for the current platform"];
    v3 = 0;
  }

  return v3;
}

uint64_t __41__FSFBiomeFeatureStore_singletonInstance__block_invoke(uint64_t a1)
{
  singletonInstance_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (FSFBiomeFeatureStore)init
{
  v6.receiver = self;
  v6.super_class = FSFBiomeFeatureStore;
  v2 = [(FSFBiomeFeatureStore *)&v6 init];
  if (v2)
  {
    v3 = +[FSFUtils biomeStoreConfig];
    config = v2->_config;
    v2->_config = v3;
  }

  return v2;
}

- (id)getStream:(id)a3
{
  v4 = a3;
  v5 = [[FSFBiomeFeatureStoreStream alloc] initWithConfig:self->_config streamId:v4];

  return v5;
}

- (BOOL)deleteStream:(id)a3
{
  v4 = a3;
  v5 = +[FSFUtils availableStreams];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [[FSFBiomeFeatureStoreStream alloc] initWithConfig:self->_config streamId:v4];
    v8 = [(FSFBiomeFeatureStoreStream *)v7 deleteCurrentStream];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [FSFBiomeFeatureStore deleteStream:];
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)deleteAllStreams
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = +[FSFUtils availableStreams];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v7 &= [(FSFBiomeFeatureStore *)self deleteStream:*(*(&v11 + 1) + 8 * i)];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

@end