@interface BMSiriIntentEventsStream
- (BMSiriIntentEventsStream)init;
- (id)publisher;
@end

@implementation BMSiriIntentEventsStream

- (BMSiriIntentEventsStream)init
{
  v11.receiver = self;
  v11.super_class = BMSiriIntentEventsStream;
  v2 = [(BMSiriIntentEventsStream *)&v11 init];
  if (v2)
  {
    v3 = BMRootLibraryBridge();
    v4 = [v3 Siri];
    v5 = [v4 Remembers];
    v6 = [v5 Intent];
    v7 = [v6 storeStreamWithLegacyClass:objc_opt_class()];
    storeStream = v2->_storeStream;
    v2->_storeStream = v7;

    if (!v2->_storeStream)
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(BMSiriIntentEventsStream *)v9 init];
      }
    }
  }

  return v2;
}

- (id)publisher
{
  v3 = [BMDSLStreamPublisher alloc];
  v4 = [(BMSiriIntentEventsStream *)self identifier];
  v5 = [(BMDSLStreamPublisher *)v3 initWithIdentifier:v4 streamType:1 eventDataClass:objc_opt_class()];

  return v5;
}

@end