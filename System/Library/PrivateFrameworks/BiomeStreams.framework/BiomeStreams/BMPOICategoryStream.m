@interface BMPOICategoryStream
- (BMPOICategoryStream)init;
- (id)publisher;
@end

@implementation BMPOICategoryStream

- (BMPOICategoryStream)init
{
  v11.receiver = self;
  v11.super_class = BMPOICategoryStream;
  v2 = [(BMPOICategoryStream *)&v11 init];
  if (v2)
  {
    v3 = BMRootLibraryBridge();
    v4 = [v3 Location];
    v5 = [v4 PointOfInterest];
    v6 = [v5 Category];
    v7 = [v6 storeStreamWithLegacyClass:objc_opt_class()];
    storeStream = v2->_storeStream;
    v2->_storeStream = v7;

    if (!v2->_storeStream)
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [BMPOICategoryStream init];
      }
    }
  }

  return v2;
}

- (id)publisher
{
  v3 = [BMDSLStreamPublisher alloc];
  v4 = [(BMPOICategoryStream *)self identifier];
  v5 = [(BMDSLStreamPublisher *)v3 initWithIdentifier:v4 streamType:1 eventDataClass:objc_opt_class()];

  return v5;
}

@end