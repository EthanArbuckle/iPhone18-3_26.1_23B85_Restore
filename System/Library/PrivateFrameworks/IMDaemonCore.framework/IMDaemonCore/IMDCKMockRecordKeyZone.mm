@interface IMDCKMockRecordKeyZone
- (BOOL)_operationIsCloudKitMetricsOperation:(id)operation;
- (void)_handleFetchingExitRecordOperation:(id)operation;
- (void)_handleWritingCloudKitMetrics:(id)metrics;
- (void)handleOperation:(id)operation;
@end

@implementation IMDCKMockRecordKeyZone

- (BOOL)_operationIsCloudKitMetricsOperation:(id)operation
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  recordsToSave = [operation recordsToSave];
  v4 = [recordsToSave countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(recordsToSave);
        }

        if ([objc_msgSend(objc_msgSend(*(*(&v10 + 1) + 8 * v7) "recordID")])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [recordsToSave countByEnumeratingWithState:&v10 objects:v14 count:16];
      v5 = v4;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)handleOperation:(id)operation
{
  v11 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      operationCopy = operation;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Dispatching operation %@", buf, 0xCu);
    }
  }

  queue = [(IMDCKMockRecordZone *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B558D80;
  v8[3] = &unk_2787043C8;
  v8[4] = operation;
  v8[5] = self;
  dispatch_async(queue, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleWritingCloudKitMetrics:(id)metrics
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Mocking writing up Cloudkit metrics", v6, 2u);
    }
  }

  modifyRecordsCompletionBlock = [metrics modifyRecordsCompletionBlock];
  (*(modifyRecordsCompletionBlock + 16))(modifyRecordsCompletionBlock, 0, 0, 0);
}

- (void)_handleFetchingExitRecordOperation:(id)operation
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Mock fetching exit record", buf, 2u);
    }
  }

  v5 = [objc_msgSend(operation "recordIDs")];
  v6 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"Exit" recordID:v5];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v6, v5, 0}];
  fetchRecordsCompletionBlock = [operation fetchRecordsCompletionBlock];
  (*(fetchRecordsCompletionBlock + 16))(fetchRecordsCompletionBlock, v7, 0);
}

@end