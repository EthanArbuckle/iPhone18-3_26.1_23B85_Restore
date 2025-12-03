@interface BMContextualActionsStream
- (BMContextualActionsStream)init;
@end

@implementation BMContextualActionsStream

- (BMContextualActionsStream)init
{
  v10.receiver = self;
  v10.super_class = BMContextualActionsStream;
  v2 = [(BMContextualActionsStream *)&v10 init];
  if (v2)
  {
    v3 = BMRootLibraryBridge();
    v4 = [v3 App];
    contextualActions = [v4 ContextualActions];
    v6 = [contextualActions storeStreamWithLegacyClass:objc_opt_class()];
    storeStream = v2->_storeStream;
    v2->_storeStream = v6;

    if (!v2->_storeStream)
    {
      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [BMContextualActionsStream init];
      }
    }
  }

  return v2;
}

@end