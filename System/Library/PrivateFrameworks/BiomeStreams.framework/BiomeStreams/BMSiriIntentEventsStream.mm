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
    siri = [v3 Siri];
    remembers = [siri Remembers];
    intent = [remembers Intent];
    v7 = [intent storeStreamWithLegacyClass:objc_opt_class()];
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
  identifier = [(BMSiriIntentEventsStream *)self identifier];
  v5 = [(BMDSLStreamPublisher *)v3 initWithIdentifier:identifier streamType:1 eventDataClass:objc_opt_class()];

  return v5;
}

@end