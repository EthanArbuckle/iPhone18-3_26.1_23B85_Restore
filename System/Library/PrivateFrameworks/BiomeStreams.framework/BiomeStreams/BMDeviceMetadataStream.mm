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
    device = [v3 Device];
    metadata = [device Metadata];
    v6 = [metadata storeStreamWithLegacyClass:objc_opt_class()];
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
  identifier = [(BMDeviceMetadataStream *)self identifier];
  v5 = [(BMDSLStreamPublisher *)v3 initWithIdentifier:identifier streamType:1 eventDataClass:objc_opt_class()];

  return v5;
}

@end