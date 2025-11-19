@interface DUFileUpdateSpotlightReceiver
- (void)addOrUpdateSearchableItems:(id)a3 bundleID:(id)a4;
@end

@implementation DUFileUpdateSpotlightReceiver

- (void)addOrUpdateSearchableItems:(id)a3 bundleID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (+[_TtC27DocumentUnderstandingClient38DocumentUnderstandingFeatureFlagReader isSearchAndOrganizationDocumentIngestEnabled])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DocumentUnderstanding: calling by XPC into textunderstandingd for DUFileUpdateSpotlightReceiver", v13, 2u);
    }

    if ([v5 count])
    {
      v7 = 0;
      while (1)
      {
        v8 = [v5 objectAtIndexedSubscript:v7];
        v9 = [v8 attributeSet];
        v10 = [v9 fileProviderID];
        if (![v10 length])
        {
          goto LABEL_9;
        }

        v11 = [v9 fileItemID];
        v12 = [v11 length];

        if (v12)
        {
          break;
        }

LABEL_10:

        if (++v7 >= [v5 count])
        {
          goto LABEL_14;
        }
      }

      v10 = +[DUXPCClient sharedInstance];
      [v10 addOrUpdateSearchableItems:v5 bundleID:v6 completion:&unk_285CF06F0];
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