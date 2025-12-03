@interface BMGroupActivitySessionStream
- (BMGroupActivitySessionStream)init;
- (id)publisher;
@end

@implementation BMGroupActivitySessionStream

- (BMGroupActivitySessionStream)init
{
  v10.receiver = self;
  v10.super_class = BMGroupActivitySessionStream;
  v2 = [(BMGroupActivitySessionStream *)&v10 init];
  if (v2)
  {
    v3 = BMRootLibraryBridge();
    sharePlay = [v3 SharePlay];
    groupActivitySession = [sharePlay GroupActivitySession];
    v6 = [groupActivitySession storeStreamWithLegacyClass:objc_opt_class()];
    storeStream = v2->_storeStream;
    v2->_storeStream = v6;

    if (!v2->_storeStream)
    {
      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(BMGroupActivitySessionStream *)v8 init];
      }
    }
  }

  return v2;
}

- (id)publisher
{
  v3 = [BMDSLStreamPublisher alloc];
  identifier = [(BMGroupActivitySessionStream *)self identifier];
  v5 = [(BMDSLStreamPublisher *)v3 initWithIdentifier:identifier streamType:1 eventDataClass:objc_opt_class()];

  return v5;
}

@end