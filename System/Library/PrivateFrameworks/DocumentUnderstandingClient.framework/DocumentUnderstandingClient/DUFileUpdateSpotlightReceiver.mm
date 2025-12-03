@interface DUFileUpdateSpotlightReceiver
- (void)addOrUpdateSearchableItems:(id)items bundleID:(id)d;
@end

@implementation DUFileUpdateSpotlightReceiver

- (void)addOrUpdateSearchableItems:(id)items bundleID:(id)d
{
  itemsCopy = items;
  dCopy = d;
  if (+[_TtC27DocumentUnderstandingClient38DocumentUnderstandingFeatureFlagReader isSearchAndOrganizationDocumentIngestEnabled])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DocumentUnderstanding: calling by XPC into textunderstandingd for DUFileUpdateSpotlightReceiver", v13, 2u);
    }

    if ([itemsCopy count])
    {
      v7 = 0;
      while (1)
      {
        v8 = [itemsCopy objectAtIndexedSubscript:v7];
        attributeSet = [v8 attributeSet];
        fileProviderID = [attributeSet fileProviderID];
        if (![fileProviderID length])
        {
          goto LABEL_9;
        }

        fileItemID = [attributeSet fileItemID];
        v12 = [fileItemID length];

        if (v12)
        {
          break;
        }

LABEL_10:

        if (++v7 >= [itemsCopy count])
        {
          goto LABEL_14;
        }
      }

      fileProviderID = +[DUXPCClient sharedInstance];
      [fileProviderID addOrUpdateSearchableItems:itemsCopy bundleID:dCopy completion:&unk_285CF06F0];
LABEL_9:

      goto LABEL_10;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "DocumentUnderstanding: Ingest disabled, skipping XPC call to textunderstandingd", buf, 2u);
  }

LABEL_14:
}

@end