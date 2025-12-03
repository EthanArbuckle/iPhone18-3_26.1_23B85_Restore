@interface BMTestStream
- (BMTestStream)init;
@end

@implementation BMTestStream

- (BMTestStream)init
{
  v10.receiver = self;
  v10.super_class = BMTestStream;
  v2 = [(BMTestStream *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E698F130] newPublicStreamDefaultConfigurationWithProtectionClass:3];
    v4 = [BMStoreStream alloc];
    identifier = [(BMTestStream *)v2 identifier];
    v6 = [(BMStoreStream *)v4 initWithStreamIdentifier:identifier storeConfig:v3 streamType:2 eventDataClass:objc_opt_class() useCase:*MEMORY[0x1E698E928]];
    storeStream = v2->_storeStream;
    v2->_storeStream = v6;

    if (!v2->_storeStream)
    {
      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(BMTestStream *)v8 init];
      }
    }
  }

  return v2;
}

@end