@interface BMHomeKitClientAccessoryControlStream
- (BMHomeKitClientAccessoryControlStream)init;
- (id)publisher;
@end

@implementation BMHomeKitClientAccessoryControlStream

- (BMHomeKitClientAccessoryControlStream)init
{
  v18.receiver = self;
  v18.super_class = BMHomeKitClientAccessoryControlStream;
  v2 = [(BMHomeKitClientAccessoryControlStream *)&v18 init];
  if (v2)
  {
    v3 = BMRootLibraryBridge();
    v4 = [v3 HomeKit];
    v5 = [v4 Client];
    v6 = [v5 AccessoryControl];
    v7 = [v6 storeStreamWithLegacyClass:objc_opt_class()];
    storeStream = v2->_storeStream;
    v2->_storeStream = v7;

    if (!v2->_storeStream)
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(BMHomeKitClientAccessoryControlStream *)v9 init:v10];
      }
    }
  }

  return v2;
}

- (id)publisher
{
  v3 = [BMDSLStreamPublisher alloc];
  v4 = [(BMHomeKitClientAccessoryControlStream *)self identifier];
  v5 = [(BMDSLStreamPublisher *)v3 initWithIdentifier:v4 streamType:1 eventDataClass:objc_opt_class()];

  return v5;
}

@end