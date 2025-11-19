@interface DUDocumentHarvesting
- (void)addSerializedDocument:(id)a3 documentType:(int64_t)a4;
@end

@implementation DUDocumentHarvesting

- (void)addSerializedDocument:(id)a3 documentType:(int64_t)a4
{
  v5 = a3;
  if (!+[_TtC27DocumentUnderstandingClient38DocumentUnderstandingFeatureFlagReader isSearchAndOrganizationDocumentIngestEnabled])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v11 = 0;
    v7 = MEMORY[0x277D86220];
    v8 = "DocumentUnderstanding: Ingest disabled, skipping XPC call to textunderstandingd from ProactiveHarvesting";
    v9 = &v11;
LABEL_9:
    _os_log_debug_impl(&dword_249D14000, v7, OS_LOG_TYPE_DEBUG, v8, v9, 2u);
    goto LABEL_7;
  }

  if (!+[_TtC27DocumentUnderstandingClient38DocumentUnderstandingFeatureFlagReader isIndexNonfileDocumentsEnabled])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v10 = 0;
    v7 = MEMORY[0x277D86220];
    v8 = "DocumentUnderstanding: Non-file ingest disabled, skipping xpc to textunderstandingd from ProactiveHarvesting";
    v9 = &v10;
    goto LABEL_9;
  }

  v6 = +[DUXPCClient sharedInstance];
  [v6 addSerializedDocument:v5 documentType:a4 completion:&unk_285CF06D0];

LABEL_7:
}

@end