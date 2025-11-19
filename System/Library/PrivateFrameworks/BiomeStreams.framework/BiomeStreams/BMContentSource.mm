@interface BMContentSource
- (void)sendEvent:(id)a3;
- (void)sendEvent:(id)a3 timestamp:(double)a4;
@end

@implementation BMContentSource

- (void)sendEvent:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [v4 isValidWithContext:0 error:&v9];
  v6 = v9;
  if (v5)
  {
    v8.receiver = self;
    v8.super_class = BMContentSource;
    [(BMStoreSource *)&v8 sendEvent:v4];
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

- (void)sendEvent:(id)a3 timestamp:(double)a4
{
  v6 = a3;
  v11 = 0;
  v7 = [v6 isValidWithContext:0 error:&v11];
  v8 = v11;
  if (v7)
  {
    v10.receiver = self;
    v10.super_class = BMContentSource;
    [(BMStoreSource *)&v10 sendEvent:v6 timestamp:a4];
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