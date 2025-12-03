@interface DDCoreRecents
+ (void)addResultToRecents:(id)recents eventDate:(id)date subject:(id)subject weight:(id)weight metadata:(id)metadata userInitiated:(BOOL)initiated;
@end

@implementation DDCoreRecents

+ (void)addResultToRecents:(id)recents eventDate:(id)date subject:(id)subject weight:(id)weight metadata:(id)metadata userInitiated:(BOOL)initiated
{
  recentsCopy = recents;
  dateCopy = date;
  subjectCopy = subject;
  weightCopy = weight;
  metadataCopy = metadata;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __84__DDCoreRecents_addResultToRecents_eventDate_subject_weight_metadata_userInitiated___block_invoke;
  v23[3] = &unk_278291770;
  v24 = recentsCopy;
  v25 = dateCopy;
  v26 = subjectCopy;
  v27 = weightCopy;
  v28 = metadataCopy;
  initiatedCopy = initiated;
  v18 = metadataCopy;
  v19 = weightCopy;
  v20 = subjectCopy;
  v21 = dateCopy;
  v22 = recentsCopy;
  _os_activity_initiate(&dword_21AB70000, "Add Data Detectors result to Core Recents", OS_ACTIVITY_FLAG_DEFAULT, v23);
}

void __84__DDCoreRecents_addResultToRecents_eventDate_subject_weight_metadata_userInitiated___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.datadetectors.AddToRecentsService"];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_282C70950];
  [v2 setRemoteObjectInterface:v3];

  [v2 resume];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__DDCoreRecents_addResultToRecents_eventDate_subject_weight_metadata_userInitiated___block_invoke_2;
  v15[3] = &unk_278291748;
  v4 = v2;
  v16 = v4;
  v5 = [v4 remoteObjectProxyWithErrorHandler:v15];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __84__DDCoreRecents_addResultToRecents_eventDate_subject_weight_metadata_userInitiated___block_invoke_cold_1(v5);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__DDCoreRecents_addResultToRecents_eventDate_subject_weight_metadata_userInitiated___block_invoke_7;
  v13[3] = &unk_278290BF0;
  v14 = v4;
  v12 = v4;
  [v5 addResultToRecents:v6 eventDate:v7 subject:v8 weight:v9 metadata:v10 userInitiated:v11 completionBlock:v13];
}

void __84__DDCoreRecents_addResultToRecents_eventDate_subject_weight_metadata_userInitiated___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    __84__DDCoreRecents_addResultToRecents_eventDate_subject_weight_metadata_userInitiated___block_invoke_2_cold_1(v3);
  }

  [*(a1 + 32) invalidate];
}

uint64_t __84__DDCoreRecents_addResultToRecents_eventDate_subject_weight_metadata_userInitiated___block_invoke_7(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    return [*(a1 + 32) invalidate];
  }

  __84__DDCoreRecents_addResultToRecents_eventDate_subject_weight_metadata_userInitiated___block_invoke_7_cold_1();
  return [*(a1 + 32) invalidate];
}

void __84__DDCoreRecents_addResultToRecents_eventDate_subject_weight_metadata_userInitiated___block_invoke_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Got proxy %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __84__DDCoreRecents_addResultToRecents_eventDate_subject_weight_metadata_userInitiated___block_invoke_2_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Error caught while adding an address to the recents: %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end