@interface EKEvent
@end

@implementation EKEvent

void __55__EKEvent_Saving__fixInvalidatedVirtualConferenceURLs___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v7)
  {
    v11 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __55__EKEvent_Saving__fixInvalidatedVirtualConferenceURLs___block_invoke_cold_1(a1);
    }

    goto LABEL_7;
  }

  v10 = [v7 isEqual:*(a1 + 32)];
  v11 = +[CUIKLogSubsystem editingContext];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v12)
    {
      v13 = *(a1 + 32);
      *buf = 138412290;
      v23 = v13;
      _os_log_impl(&dword_1CAB19000, v11, OS_LOG_TYPE_INFO, "URL %@ is still valid.", buf, 0xCu);
    }

LABEL_7:

    goto LABEL_11;
  }

  if (v12)
  {
    v14 = *(a1 + 32);
    *buf = 138412546;
    v23 = v14;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_1CAB19000, v11, OS_LOG_TYPE_INFO, "Will replace URL %@ with %@.", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__EKEvent_Saving__fixInvalidatedVirtualConferenceURLs___block_invoke_279;
  block[3] = &unk_1E839A288;
  block[4] = *(a1 + 40);
  v18 = v8;
  v15 = v7;
  v16 = *(a1 + 48);
  v19 = v15;
  v21 = v16;
  v20 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);

LABEL_11:
}

void __55__EKEvent_Saving__fixInvalidatedVirtualConferenceURLs___block_invoke_279(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) eventStore];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 32)];
  v4 = [v2 objectsHaveChangesToCommit:v3];

  v5 = [*(a1 + 32) shallowCopyWithoutChanges];
  v6 = [v5 virtualConference];
  v7 = [v6 copy];
  if ([objc_opt_class() updateVirtualConference:v7 replacing:*(a1 + 40) with:*(a1 + 48)])
  {
    [v5 setVirtualConference:v7];
    v8 = [*(a1 + 32) eventStore];
    v9 = *(a1 + 64);
    v20 = 0;
    v10 = [v8 saveEvent:v5 span:v9 commit:v4 ^ 1u error:&v20];
    v11 = v20;

    if (v10)
    {
      [*(a1 + 32) postModifiedNotification];
    }

    else
    {
      v16 = +[CUIKLogSubsystem editingContext];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __55__EKEvent_Saving__fixInvalidatedVirtualConferenceURLs___block_invoke_279_cold_1();
      }

      v17 = MEMORY[0x1E69669E0];
      v18 = *(a1 + 48);
      v19 = [*(a1 + 32) eventStore];
      [v17 invalidateConferenceURLIfNeeded:v18 inEventStore:v19];
    }
  }

  else
  {
    v12 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 56);
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&dword_1CAB19000, v12, OS_LOG_TYPE_INFO, "Didn't find old URL %@ to update on event; just invalidating the new URL", buf, 0xCu);
    }

    v14 = MEMORY[0x1E69669E0];
    v15 = *(a1 + 48);
    v11 = [*(a1 + 32) eventStore];
    [v14 invalidateConferenceURLIfNeeded:v15 inEventStore:v11];
  }
}

void __55__EKEvent_Saving__fixInvalidatedVirtualConferenceURLs___block_invoke_cold_1(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1(&dword_1CAB19000, v1, v2, "Failed to create valid URL for old URL %@: %@", v3, DWORD2(v3));
}

void __55__EKEvent_Saving__fixInvalidatedVirtualConferenceURLs___block_invoke_279_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1CAB19000, v0, OS_LOG_TYPE_ERROR, "Error saving revalidated URL: %@", v1, 0xCu);
}

@end