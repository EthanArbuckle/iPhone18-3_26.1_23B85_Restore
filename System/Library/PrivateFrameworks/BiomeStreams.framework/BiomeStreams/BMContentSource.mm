@interface BMContentSource
- (void)sendEvent:(id)event;
- (void)sendEvent:(id)event timestamp:(double)timestamp;
@end

@implementation BMContentSource

- (void)sendEvent:(id)event
{
  eventCopy = event;
  v9 = 0;
  v5 = [eventCopy isValidWithContext:0 error:&v9];
  v6 = v9;
  if (v5)
  {
    v8.receiver = self;
    v8.super_class = BMContentSource;
    [(BMStoreSource *)&v8 sendEvent:eventCopy];
  }

  else
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(BMContentSource *)v6 sendEvent:v7];
    }
  }
}

- (void)sendEvent:(id)event timestamp:(double)timestamp
{
  eventCopy = event;
  v11 = 0;
  v7 = [eventCopy isValidWithContext:0 error:&v11];
  v8 = v11;
  if (v7)
  {
    v10.receiver = self;
    v10.super_class = BMContentSource;
    [(BMStoreSource *)&v10 sendEvent:eventCopy timestamp:timestamp];
  }

  else
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(BMContentSource *)v8 sendEvent:v9];
    }
  }
}

@end