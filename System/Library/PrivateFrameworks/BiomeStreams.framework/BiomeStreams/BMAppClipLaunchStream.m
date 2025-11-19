@interface BMAppClipLaunchStream
- (BMAppClipLaunchStream)init;
- (id)publisher;
- (id)source;
@end

@implementation BMAppClipLaunchStream

- (BMAppClipLaunchStream)init
{
  v11.receiver = self;
  v11.super_class = BMAppClipLaunchStream;
  v2 = [(BMAppClipLaunchStream *)&v11 init];
  if (v2)
  {
    v3 = BMRootLibraryBridge();
    v4 = [v3 App];
    v5 = [v4 Clip];
    v6 = [v5 InFocus];
    v7 = [v6 storeStreamWithLegacyClass:objc_opt_class()];
    storeStream = v2->_storeStream;
    v2->_storeStream = v7;

    if (!v2->_storeStream)
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [BMAppClipLaunchStream init];
      }
    }
  }

  return v2;
}

- (id)source
{
  v3 = [BMAppClipLaunchSource alloc];
  v4 = [(BMStoreStream *)self->_storeStream source];
  v5 = [(BMAppClipLaunchSource *)v3 initWithStoreSource:v4];

  return v5;
}

- (id)publisher
{
  v3 = [BMDSLStreamPublisher alloc];
  v4 = [(BMAppClipLaunchStream *)self identifier];
  v5 = [(BMDSLStreamPublisher *)v3 initWithIdentifier:v4 streamType:1 eventDataClass:objc_opt_class()];

  return v5;
}

@end