@interface BMHomeKitClientActionSetStream
- (BMHomeKitClientActionSetStream)init;
- (id)publisher;
@end

@implementation BMHomeKitClientActionSetStream

- (BMHomeKitClientActionSetStream)init
{
  v18.receiver = self;
  v18.super_class = BMHomeKitClientActionSetStream;
  v2 = [(BMHomeKitClientActionSetStream *)&v18 init];
  if (v2)
  {
    v3 = BMRootLibraryBridge();
    homeKit = [v3 HomeKit];
    client = [homeKit Client];
    actionSet = [client ActionSet];
    v7 = [actionSet storeStreamWithLegacyClass:objc_opt_class()];
    storeStream = v2->_storeStream;
    v2->_storeStream = v7;

    if (!v2->_storeStream)
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(BMHomeKitClientActionSetStream *)v9 init:v10];
      }
    }
  }

  return v2;
}

- (id)publisher
{
  v3 = [BMDSLStreamPublisher alloc];
  identifier = [(BMHomeKitClientActionSetStream *)self identifier];
  v5 = [(BMDSLStreamPublisher *)v3 initWithIdentifier:identifier streamType:1 eventDataClass:objc_opt_class()];

  return v5;
}

@end