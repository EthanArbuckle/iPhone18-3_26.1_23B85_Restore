@interface MapsSuggestionsSharedEventStore
+ (id)sharedEventStore;
@end

@implementation MapsSuggestionsSharedEventStore

+ (id)sharedEventStore
{
  if (sharedEventStore_s_onceToken != -1)
  {
    +[MapsSuggestionsSharedEventStore sharedEventStore];
  }

  v3 = sharedEventStore_s_eventStore;

  return v3;
}

void __51__MapsSuggestionsSharedEventStore_sharedEventStore__block_invoke()
{
  v0 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v0))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v0, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "EKEventStoreInit", "", buf, 2u);
  }

  v1 = objc_alloc_init(MEMORY[0x1E6966A18]);
  v2 = sharedEventStore_s_eventStore;
  sharedEventStore_s_eventStore = v1;

  v3 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "EKEventStoreInit", "", v4, 2u);
  }
}

@end