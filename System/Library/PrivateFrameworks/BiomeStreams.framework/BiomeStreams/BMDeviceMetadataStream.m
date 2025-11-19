@interface BMDeviceMetadataStream
- (BMDeviceMetadataStream)init;
- (id)publisher;
@end

@implementation BMDeviceMetadataStream

- (BMDeviceMetadataStream)init
{
  v10.receiver = self;
  v10.super_class = BMDeviceMetadataStream;
  v2 = [(BMDeviceMetadataStream *)&v10 init];
  if (v2)
  {
    v3 = BMRootLibraryBridge();
    v4 = [v3 Device];
    v5 = [v4 Metadata];
    v6 = [v5 storeStreamWithLegacyClass:objc_opt_class()];
    storeStream = v2->_storeStream;
    v2->_storeStream = v6;

    if (!v2->_storeStream)
    {
      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(BMDeviceMetadataStream *)v8 init];
      }
    }
  }

  return v2;
}

- (id)publisher
{
  v3 = [BMDSLStreamPublisher alloc];
  v4 = [(BMDeviceMetadataStream *)self identifier];
  v5 = [(BMDSLStreamPublisher *)v3 initWithIdentifier:v4 streamType:1 eventDataClass:objc_opt_class()];

  return v5;
}

@end