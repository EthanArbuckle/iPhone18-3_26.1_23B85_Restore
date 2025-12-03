@interface BMBacklightStream
- (BMBacklightStream)init;
- (id)publisher;
@end

@implementation BMBacklightStream

- (BMBacklightStream)init
{
  v11.receiver = self;
  v11.super_class = BMBacklightStream;
  v2 = [(BMBacklightStream *)&v11 init];
  if (v2)
  {
    v3 = BMRootLibraryBridge();
    device = [v3 Device];
    display = [device Display];
    backlight = [display Backlight];
    v7 = [backlight storeStreamWithLegacyClass:objc_opt_class()];
    storeStream = v2->_storeStream;
    v2->_storeStream = v7;

    if (!v2->_storeStream)
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(BMBacklightStream *)v9 init];
      }
    }
  }

  return v2;
}

- (id)publisher
{
  v3 = [BMDSLStreamPublisher alloc];
  identifier = [(BMBacklightStream *)self identifier];
  v5 = [(BMDSLStreamPublisher *)v3 initWithIdentifier:identifier streamType:1 eventDataClass:objc_opt_class()];

  return v5;
}

@end