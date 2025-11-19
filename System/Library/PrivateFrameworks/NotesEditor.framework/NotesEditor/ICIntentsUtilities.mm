@interface ICIntentsUtilities
+ (id)interactionForAppendToNote:(id)a3 withAppendedText:(id)a4;
+ (id)interactionForCreateNote:(id)a3;
+ (id)interactionForDeleteNote:(id)a3;
+ (id)interactionForSearchString:(id)a3;
+ (void)donateInteraction:(id)a3;
@end

@implementation ICIntentsUtilities

+ (id)interactionForCreateNote:(id)a3
{
  v3 = a3;
  v4 = [v3 contentIdentifier];
  v5 = [v3 title];
  v6 = objc_alloc(MEMORY[0x277CD3B30]);
  v7 = [objc_alloc(MEMORY[0x277CD4188]) initWithSpokenPhrase:v5];
  v8 = [v6 initWithTitle:v7 content:0 groupName:0];

  v9 = [objc_alloc(MEMORY[0x277CD3D58]) initWithIntent:v8 response:0];
  v10 = [v3 identifier];

  [v9 setGroupIdentifier:v10];
  v11 = os_log_create("com.apple.notes", "Intents");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ICIntentsUtilities interactionForCreateNote:v9];
  }

  return v9;
}

+ (id)interactionForAppendToNote:(id)a3 withAppendedText:(id)a4
{
  v27 = a4;
  v5 = a3;
  v6 = [v5 contentIdentifier];
  v7 = [v5 title];
  v8 = [v5 creationDate];
  v9 = [v5 modificationDate];
  v10 = [v5 folderName];
  v11 = objc_alloc(MEMORY[0x277CD3E00]);
  v31 = v7;
  v12 = [objc_alloc(MEMORY[0x277CD4188]) initWithSpokenPhrase:v7];
  v28 = v10;
  v13 = [objc_alloc(MEMORY[0x277CD4188]) initWithSpokenPhrase:v10];
  v14 = [MEMORY[0x277CBEA80] currentCalendar];
  v30 = v8;
  v15 = [v14 components:64 fromDate:v8];
  v16 = [MEMORY[0x277CBEA80] currentCalendar];
  v29 = v9;
  v17 = [v16 components:64 fromDate:v9];
  v18 = v6;
  v19 = [v11 initWithTitle:v12 contents:MEMORY[0x277CBEBF8] groupName:v13 createdDateComponents:v15 modifiedDateComponents:v17 identifier:v6];

  v20 = objc_alloc(MEMORY[0x277CD3A98]);
  v21 = [objc_alloc(MEMORY[0x277CD4250]) initWithText:v27];

  v22 = [v20 initWithTargetNote:v19 content:v21];
  v23 = [objc_alloc(MEMORY[0x277CD3D58]) initWithIntent:v22 response:0];
  v24 = [v5 identifier];

  [v23 setGroupIdentifier:v24];
  v25 = os_log_create("com.apple.notes", "Intents");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [ICIntentsUtilities interactionForAppendToNote:v23 withAppendedText:?];
  }

  return v23;
}

+ (id)interactionForSearchString:(id)a3
{
  v3 = MEMORY[0x277CD4058];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [objc_alloc(MEMORY[0x277CD4188]) initWithSpokenPhrase:v4];
  v7 = [v5 initWithTitle:v6 content:v4 itemType:1 status:0 location:0 locationSearchType:0 dateTime:0 dateSearchType:0 temporalEventTriggerTypes:1 taskPriority:0 notebookItemIdentifier:0];

  v8 = [objc_alloc(MEMORY[0x277CD3D58]) initWithIntent:v7 response:0];
  v9 = os_log_create("com.apple.notes", "Intents");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ICIntentsUtilities interactionForSearchString:v8];
  }

  return v8;
}

+ (id)interactionForDeleteNote:(id)a3
{
  v3 = a3;
  v4 = [v3 contentIdentifier];
  v5 = [v3 title];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v6 setObject:v4 forKeyedSubscript:@"identifier"];
  [v6 setObject:v5 forKeyedSubscript:@"title"];
  v7 = [objc_alloc(MEMORY[0x277CD3D30]) initWithDomain:@"Notes" verb:@"DeleteNote" parametersByName:v6];
  v8 = [objc_alloc(MEMORY[0x277CD3D58]) initWithIntent:v7 response:0];
  v9 = os_log_create("com.apple.notes", "Intents");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ICIntentsUtilities interactionForDeleteNote:v8];
  }

  if (v4)
  {
    v10 = MEMORY[0x277CD3D58];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__ICIntentsUtilities_interactionForDeleteNote___block_invoke;
    v13[3] = &unk_2781AE978;
    v14 = v4;
    [v10 deleteInteractionsWithGroupIdentifier:v14 completion:v13];
    v11 = v14;
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "Intents");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ICIntentsUtilities *)v3 interactionForDeleteNote:v11];
    }
  }

  return v8;
}

void __47__ICIntentsUtilities_interactionForDeleteNote___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Intents");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __47__ICIntentsUtilities_interactionForDeleteNote___block_invoke_cold_1(v3, a1, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __47__ICIntentsUtilities_interactionForDeleteNote___block_invoke_cold_2(a1, v5);
  }
}

+ (void)donateInteraction:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__ICIntentsUtilities_donateInteraction___block_invoke;
  v6[3] = &unk_2781AE978;
  v7 = v4;
  v5 = v4;
  [v3 donateInteractionWithCompletion:v6];
}

void __40__ICIntentsUtilities_donateInteraction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Intents");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __40__ICIntentsUtilities_donateInteraction___block_invoke_cold_1(a1, v3, v4);
    }
  }

  else if (v5)
  {
    __40__ICIntentsUtilities_donateInteraction___block_invoke_cold_2(a1, v4);
  }
}

+ (void)interactionForCreateNote:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)interactionForAppendToNote:(void *)a1 withAppendedText:.cold.1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)interactionForSearchString:(void *)a1 .cold.1(void *a1)
{
  v6 = [a1 identifier];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

+ (void)interactionForDeleteNote:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)interactionForDeleteNote:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 searchIndexingIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_2151A1000, a2, OS_LOG_TYPE_ERROR, "Received a note without contentIdentifier when creating a delete intent. Its searchIndexingIdentifier is %@", &v4, 0xCu);
}

void __47__ICIntentsUtilities_interactionForDeleteNote___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_2151A1000, log, OS_LOG_TYPE_ERROR, "Error deleting an interaction %@ for note %@", &v4, 0x16u);
}

void __47__ICIntentsUtilities_interactionForDeleteNote___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_2151A1000, a2, OS_LOG_TYPE_DEBUG, "Success deleting an interaction for note %@", &v3, 0xCu);
}

void __40__ICIntentsUtilities_donateInteraction___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_2151A1000, log, OS_LOG_TYPE_DEBUG, "Failed to donate interaction %@, error: %@", &v4, 0x16u);
}

void __40__ICIntentsUtilities_donateInteraction___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_2151A1000, a2, OS_LOG_TYPE_DEBUG, "Successfully donated interaction %@.", &v3, 0xCu);
}

@end