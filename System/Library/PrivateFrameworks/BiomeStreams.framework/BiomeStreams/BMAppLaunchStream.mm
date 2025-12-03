@interface BMAppLaunchStream
- (BMAppLaunchStream)init;
- (BMAppLaunchStream)initWithConfig:(id)config;
- (id)publisher;
@end

@implementation BMAppLaunchStream

- (BMAppLaunchStream)init
{
  v10.receiver = self;
  v10.super_class = BMAppLaunchStream;
  v2 = [(BMAppLaunchStream *)&v10 init];
  if (v2)
  {
    v3 = BMRootLibraryBridge();
    v4 = [v3 App];
    inFocus = [v4 InFocus];
    v6 = [inFocus storeStreamWithLegacyClass:objc_opt_class()];
    storeStream = v2->_storeStream;
    v2->_storeStream = v6;

    if (!v2->_storeStream)
    {
      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [BMAppLaunchStream init];
      }
    }
  }

  return v2;
}

- (BMAppLaunchStream)initWithConfig:(id)config
{
  configCopy = config;
  v12.receiver = self;
  v12.super_class = BMAppLaunchStream;
  v5 = [(BMAppLaunchStream *)&v12 init];
  if (v5)
  {
    v6 = [BMStoreStream alloc];
    identifier = [(BMAppLaunchStream *)v5 identifier];
    v8 = [(BMStoreStream *)v6 initWithStreamIdentifier:identifier storeConfig:configCopy streamType:2 eventDataClass:objc_opt_class() useCase:*MEMORY[0x1E698E928]];
    storeStream = v5->_storeStream;
    v5->_storeStream = v8;

    if (!v5->_storeStream)
    {
      v10 = __biome_log_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [BMAppLaunchStream init];
      }
    }
  }

  return v5;
}

- (id)publisher
{
  v3 = [BMDSLStreamPublisher alloc];
  identifier = [(BMAppLaunchStream *)self identifier];
  v5 = [(BMDSLStreamPublisher *)v3 initWithIdentifier:identifier streamType:1 eventDataClass:objc_opt_class()];

  return v5;
}

@end