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
    location = [v3 Location];
    pointOfInterest = [location PointOfInterest];
    category = [pointOfInterest Category];
    v7 = [category storeStreamWithLegacyClass:objc_opt_class()];
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
  identifier = [(BMPOICategoryStream *)self identifier];
  v5 = [(BMDSLStreamPublisher *)v3 initWithIdentifier:identifier streamType:1 eventDataClass:objc_opt_class()];

  return v5;
}

@end