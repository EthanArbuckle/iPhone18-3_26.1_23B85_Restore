void sub_22B5AE4C4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5AE41CLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B5AE4E8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v70[4] = *MEMORY[0x277D85DE8];
  v50 = a2;
  v12 = a3;
  v52 = a4;
  v13 = a5;
  v51 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v48 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedPlayedReceipt", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v48, &state);
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_22B4D7710;
  v63 = sub_22B4D78E4;
  v47 = v14;
  v64 = v47;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v52 fromPushID];
      *buf = 138412290;
      v67 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for played receipt fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorPlayedReceipt", @"BlastDoor");
  v49 = v12;
  if (objc_opt_isKindOfClass())
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = [v52 fromToken];
  v20 = [v13 imdAccount];
  v21 = [IMDiMessageIDSDelegate isDefaultPairedDevice:v19 withAccount:v20];

  v22 = [[IMPlayedReceiptPipelineParameter alloc] initWithDefusedMessage:v18 idsTrustedData:v52 isFromDefaultPairedDevice:v21];
  if (v22)
  {
    v23 = [IMFindAccountProcessingPipelineComponent alloc];
    v24 = [v13 imdAccount];
    v25 = [(IMFindAccountProcessingPipelineComponent *)v23 initWithReceivingAccount:v24];

    v26 = [IMMessageFromStoragePipelineComponent alloc];
    v27 = [v13 storageController];
    v28 = [v13 broadcaster];
    v29 = [(IMMessageFromStoragePipelineComponent *)v26 initWithStorageProcessingType:0 storageController:v27 broadcaster:v28];

    v30 = [[IMPlayedReceiptProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v31 = [IMMessageFromStoragePipelineComponent alloc];
    v32 = [v13 storageController];
    v33 = [v13 broadcaster];
    v34 = [(IMMessageFromStoragePipelineComponent *)v31 initWithStorageProcessingType:1 storageController:v32 broadcaster:v33];

    v35 = MEMORY[0x277D18E00];
    v70[0] = v25;
    v70[1] = v29;
    v70[2] = v30;
    v70[3] = v34;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:4];
    v37 = [v35 pipelineFromComponents:v36];

    v38 = [v50 handler];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = sub_22B5AEAB0;
    v53[3] = &unk_278705998;
    v54 = v22;
    v55 = v13;
    v39 = v51;
    v40 = *(a1 + 32);
    v56 = v39;
    v57 = &v59;
    v58 = v40;
    [v38 handleMessagePlayedReceiptWithPipeline:v37 input:v54 completionBlock:v53];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = objc_opt_class();
        *buf = 138412546;
        v67 = v42;
        v68 = 2048;
        v69 = v49;
        v43 = v42;
        _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Failed getting blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v44 = [v13 service];
    [v44 sendAckForMessageWithContext:v51];

    v25 = v60[5];
    v60[5] = 0;
  }

  _Block_object_dispose(&v59, 8);
  os_activity_scope_leave(&state);

  v45 = *MEMORY[0x277D85DE8];
}

void sub_22B5AEA28(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5AE968);
  }

  _Block_object_dispose(&a25, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5AEAB0(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) GUID];
      v17 = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing played receipt: %@, %@", &v17, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) GUID];
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing and cleaning up: %@, ", &v17, 0xCu);
    }
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) service];
  [v10 _postReceivedMessageMetricsForInput:v11 withMessageContext:v12 toIDSService:v13];

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22B5AEC8C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5AEB70);
  }

  _Unwind_Resume(a1);
}

void sub_22B5AECC0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v68[4] = *MEMORY[0x277D85DE8];
  v47 = a2;
  v12 = a3;
  v50 = a4;
  v13 = a5;
  v48 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v46 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedDeliveredQuietlyReceipt", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v46, &state);
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_22B4D7710;
  v61 = sub_22B4D78E4;
  v45 = v14;
  v62 = v45;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v50 fromPushID];
      *buf = 138412290;
      v65 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for delivered quietly receipt fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorDeliveredQuietlyReceipt", @"BlastDoor");
  v49 = v12;
  isKindOfClass = objc_opt_isKindOfClass();
  v18 = v12;
  if ((isKindOfClass & 1) == 0)
  {
    v18 = 0;
  }

  v19 = v18;
  v20 = [[IMDeliveredQuietlyReceiptPipelineParameter alloc] initWithDefusedMessage:v19 idsTrustedData:v50];
  if (v20)
  {
    v21 = [IMFindAccountProcessingPipelineComponent alloc];
    v22 = [v13 imdAccount];
    v23 = [(IMFindAccountProcessingPipelineComponent *)v21 initWithReceivingAccount:v22];

    v24 = [IMMessageFromStoragePipelineComponent alloc];
    v25 = [v13 storageController];
    v26 = [v13 broadcaster];
    v27 = [(IMMessageFromStoragePipelineComponent *)v24 initWithStorageProcessingType:0 storageController:v25 broadcaster:v26];

    v28 = [[IMDeliveredQuietlyReceiptProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v29 = [IMMessageFromStoragePipelineComponent alloc];
    v30 = [v13 storageController];
    v31 = [v13 broadcaster];
    v32 = [(IMMessageFromStoragePipelineComponent *)v29 initWithStorageProcessingType:1 storageController:v30 broadcaster:v31];

    v33 = MEMORY[0x277D18E00];
    v68[0] = v23;
    v68[1] = v27;
    v68[2] = v28;
    v68[3] = v32;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:4];
    v35 = [v33 pipelineFromComponents:v34];

    v36 = [v47 handler];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = sub_22B5AF240;
    v51[3] = &unk_278705998;
    v52 = v20;
    v53 = v13;
    v37 = v48;
    v38 = *(a1 + 32);
    v54 = v37;
    v55 = &v57;
    v56 = v38;
    [v36 handleMessageDeliveredQuietlyReceiptWithPipeline:v35 input:v52 completionBlock:v51];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = objc_opt_class();
        *buf = 138412546;
        v65 = v40;
        v66 = 2048;
        v67 = v12;
        v41 = v40;
        _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Failed getting delivered quietly blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v42 = [v13 service];
    [v42 sendAckForMessageWithContext:v48];

    v23 = v58[5];
    v58[5] = 0;
  }

  _Block_object_dispose(&v57, 8);
  os_activity_scope_leave(&state);

  v43 = *MEMORY[0x277D85DE8];
}

void sub_22B5AF1BC(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5AF0FCLL);
  }

  _Block_object_dispose(&a25, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5AF240(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) GUID];
      v17 = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing delivered quietly receipt: %@, %@", &v17, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) GUID];
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing delivered quietly and cleaning up: %@, ", &v17, 0xCu);
    }
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) service];
  [v10 _postReceivedMessageMetricsForInput:v11 withMessageContext:v12 toIDSService:v13];

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22B5AF41C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5AF300);
  }

  _Unwind_Resume(a1);
}

void sub_22B5AF450(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v68[4] = *MEMORY[0x277D85DE8];
  v47 = a2;
  v12 = a3;
  v50 = a4;
  v13 = a5;
  v48 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v46 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedNotifyReceipt", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v46, &state);
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_22B4D7710;
  v61 = sub_22B4D78E4;
  v45 = v14;
  v62 = v45;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v50 fromPushID];
      *buf = 138412290;
      v65 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for notify recipient fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorNotifyRecipientCommand", @"BlastDoor");
  v49 = v12;
  isKindOfClass = objc_opt_isKindOfClass();
  v18 = v12;
  if ((isKindOfClass & 1) == 0)
  {
    v18 = 0;
  }

  v19 = v18;
  v20 = [[IMNotifyRecipientCommandPipelineParameter alloc] initWithDefusedMessage:v19 idsTrustedData:v50];
  if (v20)
  {
    v21 = [IMFindAccountProcessingPipelineComponent alloc];
    v22 = [v13 imdAccount];
    v23 = [(IMFindAccountProcessingPipelineComponent *)v21 initWithReceivingAccount:v22];

    v24 = [IMMessageFromStoragePipelineComponent alloc];
    v25 = [v13 storageController];
    v26 = [v13 broadcaster];
    v27 = [(IMMessageFromStoragePipelineComponent *)v24 initWithStorageProcessingType:0 storageController:v25 broadcaster:v26];

    v28 = [[IMNotifyRecipientCommandProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v29 = [IMMessageFromStoragePipelineComponent alloc];
    v30 = [v13 storageController];
    v31 = [v13 broadcaster];
    v32 = [(IMMessageFromStoragePipelineComponent *)v29 initWithStorageProcessingType:1 storageController:v30 broadcaster:v31];

    v33 = MEMORY[0x277D18E00];
    v68[0] = v23;
    v68[1] = v27;
    v68[2] = v28;
    v68[3] = v32;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:4];
    v35 = [v33 pipelineFromComponents:v34];

    v36 = [v47 handler];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = sub_22B5AF9D0;
    v51[3] = &unk_278705998;
    v52 = v20;
    v53 = v13;
    v37 = v48;
    v38 = *(a1 + 32);
    v54 = v37;
    v55 = &v57;
    v56 = v38;
    [v36 handleNotifyRecipientCommandWithPipeline:v35 input:v52 completionBlock:v51];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = objc_opt_class();
        *buf = 138412546;
        v65 = v40;
        v66 = 2048;
        v67 = v12;
        v41 = v40;
        _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Failed getting notify recipient blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v42 = [v13 service];
    [v42 sendAckForMessageWithContext:v48];

    v23 = v58[5];
    v58[5] = 0;
  }

  _Block_object_dispose(&v57, 8);
  os_activity_scope_leave(&state);

  v43 = *MEMORY[0x277D85DE8];
}

void sub_22B5AF94C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5AF88CLL);
  }

  _Block_object_dispose(&a25, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5AF9D0(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) GUID];
      v17 = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing notify recipient command: %@, %@", &v17, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) GUID];
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing notify recipient command and cleaning up: %@, ", &v17, 0xCu);
    }
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) service];
  [v10 _postReceivedMessageMetricsForInput:v11 withMessageContext:v12 toIDSService:v13];

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22B5AFBAC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5AFA90);
  }

  _Unwind_Resume(a1);
}

void sub_22B5AFBE0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v126[16] = *MEMORY[0x277D85DE8];
  v100 = a2;
  v98 = a3;
  v101 = a4;
  v99 = a5;
  v94 = a6;
  v12 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v91 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedMessage", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v91, &state);
  v113 = 0;
  v114 = &v113;
  v115 = 0x3032000000;
  v116 = sub_22B4D7710;
  v117 = sub_22B4D78E4;
  v90 = v12;
  v118 = v90;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v101 fromPushID];
      *buf = 138412290;
      v121 = v14;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Setting up pipeline for message fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorTextMessage", @"BlastDoor");
  isKindOfClass = objc_opt_isKindOfClass();
  v16 = v98;
  if ((isKindOfClass & 1) == 0)
  {
    v16 = 0;
  }

  v92 = v16;
  v17 = [v92 messageSubType];
  v18 = [v17 type];

  if (v18 <= 3)
  {
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v96 = [[IMAssociatedMessagePipelineParameter alloc] initWithBD:v92 idsTrustedData:v101];
        v21 = [IMAssociatedMessageProcessingPipelineComponent alloc];
      }

      else
      {
        v96 = [[IMBalloonPluginPipelineParameter alloc] initWithBD:v92 idsTrustedData:v101];
        v21 = [IMBalloonPluginProcessingPipelineComponent alloc];
      }

      v20 = [v100 messageStore];
      v93 = [(IMTextMessageProcessingPipelineComponent *)v21 initWithMessageStore:v20];
      goto LABEL_27;
    }

    if (!v18)
    {
      v96 = [[IMTypingIndicatorPipelineParameter alloc] initWithBD:v92 idsTrustedData:v101];
      v23 = [IMTypingIndicatorProcessingPipelineComponent alloc];
      v20 = [v100 messageStore];
      v93 = [(IMTextMessageProcessingPipelineComponent *)v23 initWithMessageStore:v20];
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v18 > 5)
  {
    switch(v18)
    {
      case 6:
        v96 = [[IMEmojiTapbackMessagePipelineParameter alloc] initWithBD:v92 idsTrustedData:v101];
        v24 = [IMEmojiTapbackMessageProcessingPipelineComponent alloc];
        v20 = [v100 messageStore];
        v93 = [(IMTextMessageProcessingPipelineComponent *)v24 initWithMessageStore:v20];
        goto LABEL_27;
      case 7:
        v96 = [[IMStickerTapbackMessagePipelineParameter alloc] initWithBD:v92 idsTrustedData:v101];
        v25 = [IMStickerTapbackMessageProcessingPipelineComponent alloc];
        v20 = [v100 messageStore];
        v93 = [(IMTextMessageProcessingPipelineComponent *)v25 initWithMessageStore:v20];
        goto LABEL_27;
      case 8:
        v96 = [[IMCustomAcknowledgementMessagePipelineParameter alloc] initWithBD:v92 idsTrustedData:v101];
        v19 = [IMCustomAcknowledgementMessageProcessingPipelineComponent alloc];
        v20 = [v100 messageStore];
        v93 = [(IMTextMessageProcessingPipelineComponent *)v19 initWithMessageStore:v20];
        goto LABEL_27;
    }

LABEL_26:
    v96 = [[IMTextMessagePipelineParameter alloc] initWithBD:v92 idsTrustedData:v101];
    v26 = [IMTextMessageProcessingPipelineComponent alloc];
    v20 = [v100 messageStore];
    v93 = [(IMTextMessageProcessingPipelineComponent *)v26 initWithMessageStore:v20];
    goto LABEL_27;
  }

  if (v18 == 4)
  {
    v96 = [[IMStickerMessagePipelineParameter alloc] initWithBD:v92 idsTrustedData:v101];
    v93 = [[IMStickerMessageProcessingPipelineComponent alloc] initWithPipelineResources:v99];
    goto LABEL_28;
  }

  v96 = [[IMTextMessagePipelineParameter alloc] initWithBD:v92 idsTrustedData:v101];
  v22 = [IMAudioMessageProcessingPipelineComponent alloc];
  v20 = [v100 messageStore];
  v93 = [(IMTextMessageProcessingPipelineComponent *)v22 initWithMessageStore:v20];
LABEL_27:

LABEL_28:
  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [(IMTextMessagePipelineParameter *)v96 GUID];
      *buf = 138412290;
      v121 = v28;
      _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "messageCreationComponent created for %@", buf, 0xCu);
    }
  }

  v97 = [v99 imdAccount];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v95 = [v97 session];
    if (objc_opt_respondsToSelector())
    {
      v29 = [v97 idsAccount];
      v30 = [v95 _pushHandlerForIDSAccount:v29];

      if ((!v30 || (objc_opt_respondsToSelector() & 1) == 0) && IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v121 = v30;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Push handler either nil or session did not respond to incomingMessage: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_49;
      }

      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v121 = v95;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Session either nil or did not respond to _pushHandlerForIDSAccount: %@", buf, 0xCu);
      }
    }

LABEL_49:
    if (v95)
    {
      goto LABEL_55;
    }

    goto LABEL_50;
  }

  if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v121 = v97;
      _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Account was not the right class: %@", buf, 0xCu);
    }
  }

LABEL_50:
  v33 = +[IMDServiceController sharedController];
  v34 = [v33 serviceWithName:*MEMORY[0x277D1A620]];

  v95 = [IMDServiceSession existingServiceSessionForService:v34];
  if (IMOSLoggingEnabled())
  {
    v35 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v121 = v95;
      _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Falling back to service session: %@", buf, 0xCu);
    }
  }

LABEL_55:
  if (v96 && v93)
  {
    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = [(IMTextMessagePipelineParameter *)v96 GUID];
        *buf = 138412290;
        v121 = v37;
        _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Going through new message processing path: %@, ", buf, 0xCu);
      }
    }

    v89 = objc_alloc_init(IMFilterMessagePipelineComponentContext);
    v87 = objc_alloc_init(IMDeferReplicatedMessagePipelineComponent);
    v38 = [IMFindAccountProcessingPipelineComponent alloc];
    v39 = [v99 imdAccount];
    v86 = [(IMFindAccountProcessingPipelineComponent *)v38 initWithReceivingAccount:v39];

    v40 = [IMSenderCapabilityPipelineComponent alloc];
    v41 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D18910]];
    v42 = [v101 fromToken];
    v85 = [(IMSenderCapabilityPipelineComponent *)v40 initWithRegistrationProperties:v41 pushToken:v42];

    v43 = [IMMessageFromStoragePipelineComponent alloc];
    v44 = [v100 messageFromStorageController];
    v45 = [v100 broadcaster];
    v84 = [(IMMessageFromStoragePipelineComponent *)v43 initWithStorageProcessingType:0 storageController:v44 broadcaster:v45];

    v46 = [IMFindChatProcessingPipelineComponent alloc];
    v47 = [v100 chatRegistry];
    v83 = [(IMFindChatProcessingPipelineComponent *)v46 initWithChatRegistry:v47];

    v82 = [[IMConvergeGroupProcessingPipelineComponent alloc] initWithIDSTrustedData:v101];
    v48 = [IMMessageLegacyProcessingPipelineComponent alloc];
    v49 = [v100 idsService];
    v81 = [(IMMessageLegacyProcessingPipelineComponent *)v48 initWithIDSTrustedData:v101 messageContext:v94 idsService:v49 filteringContext:v89];

    v80 = [[IMMessageMomentShareProcessingPipelineComponent alloc] initWithTrustedData:v101];
    v50 = [IMFilterMessagePipelineComponent alloc];
    v51 = [v99 messageStore];
    v79 = [(IMFilterMessagePipelineComponent *)v50 initWithMessageStore:v51 filteringContext:v89];

    v78 = [[IMJunkMessageProcessingPipelineComponent alloc] initWithIDSTrustedData:v101];
    v52 = [IMCheckInMessageProcessingPipelineComponent alloc];
    v53 = [v99 imdAccount];
    v77 = [(IMCheckInMessageProcessingPipelineComponent *)v52 initWithAccount:v53];

    v54 = [IMFamilySenderMessageProcessingPipelineComponent alloc];
    v55 = [v99 imdAccount];
    v56 = [(IMFamilySenderMessageProcessingPipelineComponent *)v54 initWithAccount:v55 idsTrustedData:v101];

    v57 = objc_alloc_init(IMResolveFallbackHashesProcessingPipelineComponent);
    v58 = objc_alloc_init(IMSeenAsOffGridProcessingPipelineComponent);
    v59 = objc_alloc_init(IMOverrideOffGridStatusPipelineComponent);
    v60 = objc_alloc(MEMORY[0x277CBEB18]);
    v126[0] = v87;
    v126[1] = v86;
    v126[2] = v85;
    v126[3] = v84;
    v126[4] = v83;
    v126[5] = v82;
    v126[6] = v57;
    v126[7] = v93;
    v126[8] = v56;
    v126[9] = v77;
    v126[10] = v59;
    v126[11] = v79;
    v126[12] = v81;
    v126[13] = v80;
    v126[14] = v78;
    v126[15] = v58;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:16];
    v62 = [v60 initWithArray:v61];

    v63 = [MEMORY[0x277D18E00] pipelineFromComponents:v62];
    v64 = [v100 handler];
    if (!v64 && IMOSLoggingEnabled())
    {
      v65 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v121 = v100;
        _os_log_impl(&dword_22B4CC000, v65, OS_LOG_TYPE_INFO, "Handler not found!!! %@, ", buf, 0xCu);
      }
    }

    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = sub_22B5B0CA8;
    v102[3] = &unk_278705A30;
    v103 = v100;
    v104 = v96;
    v66 = v94;
    v67 = *(a1 + 32);
    v105 = v66;
    v112 = v67;
    v106 = v99;
    v111 = &v113;
    v68 = v87;
    v107 = v68;
    v69 = v64;
    v108 = v69;
    v70 = v63;
    v109 = v70;
    v110 = v101;
    [v69 handleMessageWithPipeline:v70 input:v104 completionBlock:v102];

    v71 = v89;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v72 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        v73 = objc_opt_class();
        *buf = 138412802;
        v121 = v73;
        v122 = 2048;
        v123 = v98;
        v124 = 2112;
        v125 = v93;
        v74 = v73;
        _os_log_impl(&dword_22B4CC000, v72, OS_LOG_TYPE_INFO, "Failed getting blastdoor object from result: <%@ %p>, with messageCreationComponent: %@", buf, 0x20u);
      }
    }

    v75 = [v100 idsService];
    [v75 sendAckForMessageWithContext:v94];

    v71 = v114[5];
    v114[5] = 0;
  }

  _Block_object_dispose(&v113, 8);
  os_activity_scope_leave(&state);

  v76 = *MEMORY[0x277D85DE8];
}

void sub_22B5B0CA8(uint64_t a1, char a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [*(a1 + 32) idsService];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 40) GUID];
      v9 = *(a1 + 48);
      *buf = 138412802;
      v36 = v8;
      v37 = 2112;
      v38 = v6;
      v39 = 2112;
      v40 = v9;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing and cleaning up text message: %@ on service %@ with context %@", buf, 0x20u);
    }
  }

  [v6 sendAckForMessageWithContext:*(a1 + 48)];
  v10 = *(a1 + 104);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 56) service];
  [v10 _postReceivedMessageMetricsForInput:v11 withMessageContext:v12 toIDSService:v13];

  v14 = *(*(a1 + 96) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  if ((a2 & 1) == 0)
  {
    v16 = [v5 domain];
    if ([v16 isEqualToString:*MEMORY[0x277D18DF8]])
    {
      v17 = [v5 code] == 18;

      if (v17)
      {
        v18 = +[IMPendingReplicatedMessageCache sharedCache];
        v19 = [*(a1 + 40) GUID];
        v20 = [*(a1 + 40) replicatedFallbackGUIDs];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = sub_22B5B1058;
        v26[3] = &unk_278705A08;
        v27 = *(a1 + 40);
        v28 = v6;
        v29 = *(a1 + 48);
        v30 = *(a1 + 64);
        v31 = *(a1 + 72);
        v32 = *(a1 + 80);
        v33 = *(a1 + 32);
        v34 = *(a1 + 88);
        [v18 addPendingMessageWithGUID:v19 replicatedFallbackGUIDs:v20 releaseBlock:v26];

        v21 = v27;
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
    }

    if (([*(a1 + 32) runningInAutomation] & 1) == 0)
    {
      v21 = [*(a1 + 40) GUID];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", &unk_283F4E810];
      v23 = [*(a1 + 88) fromIdentifier];
      v24 = [*(a1 + 88) fromToken];
      [IMBlastdoor sendBlastDoorError:v5 guid:v21 messageTypeString:v22 senderURI:v23 senderToken:v24 messageContext:*(a1 + 48) payloadAttachmentURL:0];

      goto LABEL_12;
    }
  }

LABEL_13:

  v25 = *MEMORY[0x277D85DE8];
}

void sub_22B5B1058(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [*(a1 + 32) GUID];
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      *buf = 138412802;
      v26 = v11;
      v27 = 2112;
      v28 = v12;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Reprocessing pending message: %@ on service %@ with context %@", buf, 0x20u);
    }
  }

  [*(a1 + 56) setSkipDeferral:1];
  [*(a1 + 56) setReplicationSourceServiceNameOverride:v7];
  [*(a1 + 32) setChat:v8];
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v16 = *(a1 + 32);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22B5B1284;
  v19[3] = &unk_2787059E0;
  v20 = v16;
  v21 = *(a1 + 80);
  v22 = *(a1 + 88);
  v23 = *(a1 + 48);
  v24 = v9;
  v17 = v9;
  [v14 handleMessageWithPipeline:v15 input:v20 completionBlock:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void sub_22B5B1284(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) GUID];
      v8 = @"NO";
      *buf = 138412802;
      v16 = v7;
      v17 = 2112;
      if (a2)
      {
        v8 = @"YES";
      }

      v18 = v8;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Finished reprocessing pending message: %@ success: %@ error: %@", buf, 0x20u);
    }
  }

  if ((a2 & 1) == 0 && ([*(a1 + 40) runningInAutomation] & 1) == 0)
  {
    v9 = [*(a1 + 32) GUID];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", &unk_283F4E810];
    v11 = [*(a1 + 48) fromIdentifier];
    v12 = [*(a1 + 48) fromToken];
    [IMBlastdoor sendBlastDoorError:v5 guid:v9 messageTypeString:v10 senderURI:v11 senderToken:v12 messageContext:*(a1 + 56) payloadAttachmentURL:0];
  }

  v13 = *(a1 + 64);
  if (v13)
  {
    (*(v13 + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_22B5B147C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v57 = *MEMORY[0x277D85DE8];
  v39 = a2;
  v12 = a3;
  v40 = a4;
  v13 = a5;
  v37 = a6;
  v38 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v36 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedSyndicationAction", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v36, &state);
  MEMORY[0x231897B40](@"BlastDoorSyndicationAction", @"BlastDoor");
  if (objc_opt_isKindOfClass())
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  if (v15)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v40 fromPushID];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v17;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Setting up pipeline for SyndicatedAction fromID: %@, ", &buf, 0xCu);
      }
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v53 = 0x3032000000;
    v54 = sub_22B4D7710;
    v55 = sub_22B4D78E4;
    v56 = v38;
    v18 = [[IMSyndicationActionPipelineParameter alloc] initWithDefusedSyndicationAction:v15 idsTrustedData:v40 pipelineResources:v13];
    if (v18)
    {
      v19 = [IMFindAccountProcessingPipelineComponent alloc];
      v20 = [v13 imdAccount];
      v21 = [(IMFindAccountProcessingPipelineComponent *)v19 initWithReceivingAccount:v20];

      v22 = [IMFindChatProcessingPipelineComponent alloc];
      v23 = [v39 chatRegistry];
      v24 = [(IMFindChatProcessingPipelineComponent *)v22 initWithChatRegistry:v23];

      v25 = [[IMSyndicationActionProcessingPipelineComponent alloc] initWithPipelineResources:v13];
      v26 = MEMORY[0x277D18E00];
      v51[0] = v21;
      v51[1] = v24;
      v51[2] = v25;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:3];
      v28 = [v26 pipelineFromComponents:v27];

      v29 = [v39 handler];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = sub_22B5B19A8;
      v41[3] = &unk_278705A78;
      v42 = v18;
      v43 = v13;
      v44 = v37;
      p_buf = &buf;
      [v29 handleSyndicatedActionWithPipeline:v28 input:v42 completionBlock:v41];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = objc_opt_class();
          *v47 = 138412546;
          v48 = v32;
          v49 = 2048;
          v50 = v12;
          v33 = v32;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Failed getting SyndicationAction blastdoor object from result: <%@ %p>, ", v47, 0x16u);
        }
      }

      v34 = [v13 service];
      [v34 sendAckForMessageWithContext:v37];

      v21 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = 0;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v30 = IMLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D47C4(v30);
    }
  }

  os_activity_scope_leave(&state);
  v35 = *MEMORY[0x277D85DE8];
}

void sub_22B5B1920(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5B1864);
  }

  _Block_object_dispose((v23 - 144), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5B19A8(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) syndicationAction];
      v13 = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing SyndicationAction: %@, %@", &v13, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) syndicationAction];
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing and cleaning up: %@, ", &v13, 0xCu);
    }
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = *MEMORY[0x277D85DE8];
}

void sub_22B5B1B38(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5B1A60);
  }

  _Unwind_Resume(a1);
}

void sub_22B5B1B6C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v68[4] = *MEMORY[0x277D85DE8];
  v47 = a2;
  v12 = a3;
  v50 = a4;
  v13 = a5;
  v48 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v46 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedNotifyReceipt", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v46, &state);
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_22B4D7710;
  v61 = sub_22B4D78E4;
  v45 = v14;
  v62 = v45;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v50 fromPushID];
      *buf = 138412290;
      v65 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for edited message received fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorEditMessageCommand", @"BlastDoor");
  v49 = v12;
  isKindOfClass = objc_opt_isKindOfClass();
  v18 = v12;
  if ((isKindOfClass & 1) == 0)
  {
    v18 = 0;
  }

  v19 = v18;
  v20 = [[IMEditMessageCommandPipelineParameter alloc] initWithDefusedMessage:v19 idsTrustedData:v50];
  if (v20)
  {
    v21 = [IMFindAccountProcessingPipelineComponent alloc];
    v22 = [v13 imdAccount];
    v23 = [(IMFindAccountProcessingPipelineComponent *)v21 initWithReceivingAccount:v22];

    v24 = [IMMessageFromStoragePipelineComponent alloc];
    v25 = [v13 storageController];
    v26 = [v13 broadcaster];
    v27 = [(IMMessageFromStoragePipelineComponent *)v24 initWithStorageProcessingType:0 storageController:v25 broadcaster:v26];

    v28 = [[IMEditMessageCommandProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v29 = [IMMessageFromStoragePipelineComponent alloc];
    v30 = [v13 storageController];
    v31 = [v13 broadcaster];
    v32 = [(IMMessageFromStoragePipelineComponent *)v29 initWithStorageProcessingType:1 storageController:v30 broadcaster:v31];

    v33 = MEMORY[0x277D18E00];
    v68[0] = v23;
    v68[1] = v27;
    v68[2] = v28;
    v68[3] = v32;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:4];
    v35 = [v33 pipelineFromComponents:v34];

    v36 = [v47 handler];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = sub_22B5B20EC;
    v51[3] = &unk_278705998;
    v52 = v20;
    v53 = v13;
    v37 = v48;
    v38 = *(a1 + 32);
    v54 = v37;
    v55 = &v57;
    v56 = v38;
    [v36 handleEditMessageCommandWithPipeline:v35 input:v52 completionBlock:v51];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = objc_opt_class();
        *buf = 138412546;
        v65 = v40;
        v66 = 2048;
        v67 = v12;
        v41 = v40;
        _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Failed getting edit message blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v42 = [v13 service];
    [v42 sendAckForMessageWithContext:v48];

    v23 = v58[5];
    v58[5] = 0;
  }

  _Block_object_dispose(&v57, 8);
  os_activity_scope_leave(&state);

  v43 = *MEMORY[0x277D85DE8];
}

void sub_22B5B2068(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5B1FA8);
  }

  _Block_object_dispose(&a25, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5B20EC(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) editCommandGUID];
      v17 = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing edit message command: %@, %@", &v17, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) editCommandGUID];
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing edit message command and cleaning up: %@", &v17, 0xCu);
    }
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) service];
  [v10 _postReceivedMessageMetricsForInput:v11 withMessageContext:v12 toIDSService:v13];

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22B5B22C8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5B21ACLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B5B22FC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v67[4] = *MEMORY[0x277D85DE8];
  v47 = a2;
  v12 = a3;
  v49 = a4;
  v13 = a5;
  v48 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v45 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedNotifyReceipt", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v45, &state);
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_22B4D7710;
  v60 = sub_22B4D78E4;
  v44 = v14;
  v61 = v44;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v49 fromPushID];
      *buf = 138412290;
      v64 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for junk recovery received fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorRecoverJunkCommand", @"BlastDoor");
  v46 = v12;
  if (objc_opt_isKindOfClass())
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = [[IMRecoverJunkCommandPipelineParameter alloc] initWithDefusedMessage:v18 idsTrustedData:v49];
  if (v19)
  {
    v20 = [IMFindAccountProcessingPipelineComponent alloc];
    v21 = [v13 imdAccount];
    v22 = [(IMFindAccountProcessingPipelineComponent *)v20 initWithReceivingAccount:v21];

    v23 = [IMMessageFromStoragePipelineComponent alloc];
    v24 = [v13 storageController];
    v25 = [v13 broadcaster];
    v26 = [(IMMessageFromStoragePipelineComponent *)v23 initWithStorageProcessingType:0 storageController:v24 broadcaster:v25];

    v27 = [[IMRecoverJunkCommandProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v28 = [IMMessageFromStoragePipelineComponent alloc];
    v29 = [v13 storageController];
    v30 = [v13 broadcaster];
    v31 = [(IMMessageFromStoragePipelineComponent *)v28 initWithStorageProcessingType:1 storageController:v29 broadcaster:v30];

    v32 = MEMORY[0x277D18E00];
    v67[0] = v22;
    v67[1] = v26;
    v67[2] = v27;
    v67[3] = v31;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:4];
    v34 = [v32 pipelineFromComponents:v33];

    v35 = [v47 handler];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_22B5B287C;
    v50[3] = &unk_278705998;
    v51 = v19;
    v52 = v13;
    v36 = v48;
    v37 = *(a1 + 32);
    v53 = v36;
    v54 = &v56;
    v55 = v37;
    [v35 handleRecoverJunkCommandWithPipeline:v34 input:v51 completionBlock:v50];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = objc_opt_class();
        *buf = 138412546;
        v64 = v39;
        v65 = 2048;
        v66 = v12;
        v40 = v39;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Failed getting recover junk command blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v41 = [v13 service];
    [v41 sendAckForMessageWithContext:v48];

    v22 = v57[5];
    v57[5] = 0;
  }

  _Block_object_dispose(&v56, 8);
  os_activity_scope_leave(&state);

  v42 = *MEMORY[0x277D85DE8];
}

void sub_22B5B27F4(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5B2734);
  }

  _Block_object_dispose(&a25, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5B287C(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) GUID];
      v17 = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing recover junk command: %@, %@", &v17, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) GUID];
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing recover junk command and cleaning up: %@", &v17, 0xCu);
    }
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) service];
  [v10 _postReceivedMessageMetricsForInput:v11 withMessageContext:v12 toIDSService:v13];

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22B5B2A58(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5B293CLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B5B2A8C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v67[4] = *MEMORY[0x277D85DE8];
  v47 = a2;
  v12 = a3;
  v49 = a4;
  v13 = a5;
  v48 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v45 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedNotifyReceipt", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v45, &state);
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_22B4D7710;
  v60 = sub_22B4D78E4;
  v44 = v14;
  v61 = v44;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v49 fromPushID];
      *buf = 138412290;
      v64 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for sticker reposition received fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorRepositionStickerCommand", @"BlastDoor");
  v46 = v12;
  if (objc_opt_isKindOfClass())
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = [[IMRepositionStickerCommandPipelineParameter alloc] initWithDefusedMessage:v18 idsTrustedData:v49];
  if (v19)
  {
    v20 = [IMFindAccountProcessingPipelineComponent alloc];
    v21 = [v13 imdAccount];
    v22 = [(IMFindAccountProcessingPipelineComponent *)v20 initWithReceivingAccount:v21];

    v23 = [IMMessageFromStoragePipelineComponent alloc];
    v24 = [v13 storageController];
    v25 = [v13 broadcaster];
    v26 = [(IMMessageFromStoragePipelineComponent *)v23 initWithStorageProcessingType:0 storageController:v24 broadcaster:v25];

    v27 = [[IMRepositionStickerProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v28 = [IMMessageFromStoragePipelineComponent alloc];
    v29 = [v13 storageController];
    v30 = [v13 broadcaster];
    v31 = [(IMMessageFromStoragePipelineComponent *)v28 initWithStorageProcessingType:1 storageController:v29 broadcaster:v30];

    v32 = MEMORY[0x277D18E00];
    v67[0] = v22;
    v67[1] = v26;
    v67[2] = v27;
    v67[3] = v31;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:4];
    v34 = [v32 pipelineFromComponents:v33];

    v35 = [v47 handler];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_22B5B300C;
    v50[3] = &unk_278705998;
    v51 = v19;
    v52 = v13;
    v36 = v48;
    v37 = *(a1 + 32);
    v53 = v36;
    v54 = &v56;
    v55 = v37;
    [v35 handleRepositionStickerCommandWithPipeline:v34 input:v51 completionBlock:v50];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = objc_opt_class();
        *buf = 138412546;
        v64 = v39;
        v65 = 2048;
        v66 = v12;
        v40 = v39;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Failed getting command blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v41 = [v13 service];
    [v41 sendAckForMessageWithContext:v48];

    v22 = v57[5];
    v57[5] = 0;
  }

  _Block_object_dispose(&v56, 8);
  os_activity_scope_leave(&state);

  v42 = *MEMORY[0x277D85DE8];
}

void sub_22B5B2F84(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5B2EC4);
  }

  _Block_object_dispose(&a25, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5B300C(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) GUID];
      v17 = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing reposition sticker command: %@, %@", &v17, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) GUID];
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing command and cleaning up: %@", &v17, 0xCu);
    }
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) service];
  [v10 _postReceivedMessageMetricsForInput:v11 withMessageContext:v12 toIDSService:v13];

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22B5B31E8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5B30CCLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B5B321C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v32 = a2;
  v12 = a3;
  v34 = a4;
  v13 = a5;
  v33 = a6;
  v14 = a7;
  v15 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedNotifyReceipt", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_22B4D7710;
  v44 = sub_22B4D78E4;
  v16 = v14;
  v45 = v16;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v34 fromPushID];
      *buf = 138412290;
      v48 = v18;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Setting up pipeline for scheduled message update fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorScheduledMessageUpdate", @"BlastDoor");
  if (objc_opt_isKindOfClass())
  {
    v19 = v12;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  v21 = [[IMScheduledMessageUpdatePipelineParameter alloc] initWithDefusedMessage:v20 idsTrustedData:v34];
  if (v21)
  {
    v22 = [[IMScheduledMessageUpdateProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v23 = MEMORY[0x277D18E00];
    v51[0] = v22;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
    v25 = [v23 pipelineFromComponents:v24];

    v26 = [v32 handler];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_22B5B368C;
    v35[3] = &unk_278705A78;
    v36 = v21;
    v37 = v13;
    v38 = v33;
    v39 = &v40;
    [v26 handleScheduledMessageUpdateCommandWithPipeline:v25 input:v36 completionBlock:v35];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = objc_opt_class();
        *buf = 138412546;
        v48 = v28;
        v49 = 2048;
        v50 = v12;
        v29 = v28;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Failed getting command blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v30 = [v13 service];
    [v30 sendAckForMessageWithContext:v33];

    v22 = v41[5];
    v41[5] = 0;
  }

  _Block_object_dispose(&v40, 8);
  os_activity_scope_leave(&state);

  v31 = *MEMORY[0x277D85DE8];
}

void sub_22B5B3610(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5B355CLL);
  }

  _Block_object_dispose(&a21, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5B368C(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) GUID];
      v13 = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing scheduled message update command: %@, %@", &v13, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) GUID];
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing command and cleaning up: %@", &v13, 0xCu);
    }
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = *MEMORY[0x277D85DE8];
}

void sub_22B5B381C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5B3744);
  }

  _Unwind_Resume(a1);
}

void sub_22B5B3850(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v68[4] = *MEMORY[0x277D85DE8];
  v49 = a2;
  v12 = a3;
  v48 = a4;
  v13 = a5;
  v47 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v45 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedCrossServiceAssociationMessage", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v45, &state);
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_22B4D7710;
  v61 = sub_22B4D78E4;
  v44 = v14;
  v62 = v44;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v48 fromPushID];
      *buf = 138412290;
      v65 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for iml to im association update fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorCrossServiceAssociationMessage", @"BlastDoor");
  v46 = v12;
  if (objc_opt_isKindOfClass())
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = [[IMCrossServiceAssociationMessagePipelineParameter alloc] initWithDefusedMessage:v18 idsTrustedData:v48];
  if (v19)
  {
    v20 = [IMFindAccountProcessingPipelineComponent alloc];
    v21 = [v13 imdAccount];
    v22 = [(IMFindAccountProcessingPipelineComponent *)v20 initWithReceivingAccount:v21];

    v23 = [IMFindChatProcessingPipelineComponent alloc];
    v24 = [v13 chatRegistry];
    v25 = [(IMFindChatProcessingPipelineComponent *)v23 initWithChatRegistry:v24];

    v26 = [IMMessageFromStoragePipelineComponent alloc];
    v27 = [v13 storageController];
    v28 = [v13 broadcaster];
    v29 = [(IMMessageFromStoragePipelineComponent *)v26 initWithStorageProcessingType:0 storageController:v27 broadcaster:v28];

    v30 = [[IMCrossServiceAssociationMessageProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v31 = MEMORY[0x277D18E00];
    v68[0] = v22;
    v68[1] = v25;
    v68[2] = v29;
    v68[3] = v30;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:4];
    v33 = [v31 pipelineFromComponents:v32];

    v34 = [v49 handler];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_22B5B3E04;
    v50[3] = &unk_278705970;
    v51 = v19;
    v52 = v49;
    v53 = v13;
    v35 = v47;
    v36 = *(a1 + 32);
    v54 = v35;
    v55 = &v57;
    v56 = v36;
    [v34 handleCrossServiceAssociationCommandWithPipeline:v33 input:v51 completionBlock:v50];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = objc_opt_class();
        *buf = 138412546;
        v65 = v38;
        v66 = 2048;
        v67 = v12;
        v39 = v38;
        _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Failed getting command blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    if (([v49 runningInAutomation] & 1) == 0)
    {
      v40 = [v13 service];
      [v40 sendAckForMessageWithContext:v47];

      v41 = [v13 service];
      im_sendCertifiedDeliveryReceiptIfPossible();
    }

    v22 = v58[5];
    v58[5] = 0;
  }

  _Block_object_dispose(&v57, 8);
  os_activity_scope_leave(&state);

  v42 = *MEMORY[0x277D85DE8];
}

void sub_22B5B3D7C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5B3C84);
  }

  _Block_object_dispose(&a27, 8);
  os_activity_scope_leave((v27 - 176));
  _Unwind_Resume(exc_buf);
}

void sub_22B5B3E04(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) GUID];
      v20 = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing iml to im association command: %@, %@", &v20, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) GUID];
      v20 = 138412290;
      v21 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing command and cleaning up: %@", &v20, 0xCu);
    }
  }

  if (([*(a1 + 40) runningInAutomation] & 1) == 0)
  {
    v9 = [*(a1 + 48) service];
    [v9 sendAckForMessageWithContext:*(a1 + 56)];

    v10 = [*(a1 + 48) service];
    v11 = *(a1 + 56);
    v12 = [*(a1 + 32) GUID];
    im_sendCertifiedDeliveryReceiptIfPossible();

    v13 = *(a1 + 72);
    v14 = *(a1 + 32);
    v15 = *(a1 + 56);
    v16 = [*(a1 + 48) service];
    [v13 _postReceivedMessageMetricsForInput:v14 withMessageContext:v15 toIDSService:v16];
  }

  v17 = *(*(a1 + 64) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;

  v19 = *MEMORY[0x277D85DE8];
}

void sub_22B5B4038(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5B3EC4);
  }

  _Unwind_Resume(a1);
}

void sub_22B5B406C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v55 = *MEMORY[0x277D85DE8];
  v35 = a2;
  v12 = a3;
  v37 = a4;
  v13 = a5;
  v36 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v34 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageTranscriptBackgroundRequest", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v34, &state);
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_22B4D7710;
  v47 = sub_22B4D78E4;
  v15 = v14;
  v48 = v15;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v37 fromPushID];
      *buf = 138412546;
      v52 = v17;
      v53 = 2112;
      v54 = v12;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Setting up pipeline for transcript background command received fromID: %@, result: %@", buf, 0x16u);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorTranscriptBackgroundCommand", @"BlastDoor");
  if (objc_opt_isKindOfClass())
  {
    v18 = v12;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  v20 = [[IMTranscriptBackgroundCommandPipelineParameter alloc] initWithDefusedMessage:v19 idsTrustedData:v37];
  if (v20)
  {
    v21 = [IMFindAccountProcessingPipelineComponent alloc];
    v22 = [v13 imdAccount];
    v23 = [(IMFindAccountProcessingPipelineComponent *)v21 initWithReceivingAccount:v22];

    v24 = [[IMTranscriptBackgroundCommandProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v25 = MEMORY[0x277D18E00];
    v50[0] = v23;
    v50[1] = v24;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
    v27 = [v25 pipelineFromComponents:v26];

    v28 = [v35 handler];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_22B5B4528;
    v38[3] = &unk_278705A78;
    v39 = v20;
    v40 = v13;
    v41 = v36;
    v42 = &v43;
    [v28 handleTranscriptBackgroundCommandWithPipeline:v27 input:v39 completionBlock:v38];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = objc_opt_class();
        *buf = 138412546;
        v52 = v30;
        v53 = 2048;
        v54 = v12;
        v31 = v30;
        _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Failed getting transcript background command blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v32 = [v13 service];
    [v32 sendAckForMessageWithContext:v36];

    v23 = v44[5];
    v44[5] = 0;
  }

  _Block_object_dispose(&v43, 8);
  os_activity_scope_leave(&state);

  v33 = *MEMORY[0x277D85DE8];
}

void sub_22B5B44A8(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5B43F0);
  }

  _Block_object_dispose(&a21, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5B4528(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing transcript background command: %@.", &v12, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Ack'ing transcript background command and cleaning up: %@", &v12, 0xCu);
    }
  }

  v8 = [*(a1 + 40) service];
  [v8 sendAckForMessageWithContext:*(a1 + 48)];

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22B5B46B4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v67[4] = *MEMORY[0x277D85DE8];
  v47 = a2;
  v12 = a3;
  v49 = a4;
  v13 = a5;
  v48 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v45 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.acceptChatRequest", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v45, &state);
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_22B4D7710;
  v60 = sub_22B4D78E4;
  v44 = v14;
  v61 = v44;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v49 fromPushID];
      *buf = 138412290;
      v64 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for accept chat command received fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorAcceptChatCommand", @"BlastDoor");
  v46 = v12;
  if (objc_opt_isKindOfClass())
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = [[IMAcceptChatCommandPipelineParameter alloc] initWithDefusedMessage:v18 idsTrustedData:v49];
  if (v19)
  {
    v20 = [IMFindAccountProcessingPipelineComponent alloc];
    v21 = [v13 imdAccount];
    v22 = [(IMFindAccountProcessingPipelineComponent *)v20 initWithReceivingAccount:v21];

    v23 = [IMMessageFromStoragePipelineComponent alloc];
    v24 = [v13 storageController];
    v25 = [v13 broadcaster];
    v26 = [(IMMessageFromStoragePipelineComponent *)v23 initWithStorageProcessingType:0 storageController:v24 broadcaster:v25];

    v27 = [[IMAcceptChatCommandProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v28 = [IMMessageFromStoragePipelineComponent alloc];
    v29 = [v13 storageController];
    v30 = [v13 broadcaster];
    v31 = [(IMMessageFromStoragePipelineComponent *)v28 initWithStorageProcessingType:1 storageController:v29 broadcaster:v30];

    v32 = MEMORY[0x277D18E00];
    v67[0] = v22;
    v67[1] = v26;
    v67[2] = v27;
    v67[3] = v31;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:4];
    v34 = [v32 pipelineFromComponents:v33];

    v35 = [v47 handler];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_22B5B4C34;
    v50[3] = &unk_278705998;
    v51 = v19;
    v52 = v13;
    v36 = v48;
    v37 = *(a1 + 32);
    v53 = v36;
    v54 = &v56;
    v55 = v37;
    [v35 handleAcceptChatCommandWithPipeline:v34 input:v51 completionBlock:v50];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = objc_opt_class();
        *buf = 138412546;
        v64 = v39;
        v65 = 2048;
        v66 = v12;
        v40 = v39;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Failed getting accept chat command blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v41 = [v13 service];
    [v41 sendAckForMessageWithContext:v48];

    v22 = v57[5];
    v57[5] = 0;
  }

  _Block_object_dispose(&v56, 8);
  os_activity_scope_leave(&state);

  v42 = *MEMORY[0x277D85DE8];
}

void sub_22B5B4BAC(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5B4AECLL);
  }

  _Block_object_dispose(&a25, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5B4C34(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) GUID];
      v17 = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing accept chat command: %@, %@", &v17, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) GUID];
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing accept chat command and cleaning up: %@", &v17, 0xCu);
    }
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) service];
  [v10 _postReceivedMessageMetricsForInput:v11 withMessageContext:v12 toIDSService:v13];

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22B5B4E10(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5B4CF4);
  }

  _Unwind_Resume(a1);
}

void sub_22B5B4E44(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v67[4] = *MEMORY[0x277D85DE8];
  v47 = a2;
  v12 = a3;
  v49 = a4;
  v13 = a5;
  v48 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v45 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.junkChatRequest", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v45, &state);
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_22B4D7710;
  v60 = sub_22B4D78E4;
  v44 = v14;
  v61 = v44;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v49 fromPushID];
      *buf = 138412290;
      v64 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for junk chat command received fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorJunkChatCommand", @"BlastDoor");
  v46 = v12;
  if (objc_opt_isKindOfClass())
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = [[IMJunkChatCommandPipelineParameter alloc] initWithDefusedMessage:v18 idsTrustedData:v49];
  if (v19)
  {
    v20 = [IMFindAccountProcessingPipelineComponent alloc];
    v21 = [v13 imdAccount];
    v22 = [(IMFindAccountProcessingPipelineComponent *)v20 initWithReceivingAccount:v21];

    v23 = [IMMessageFromStoragePipelineComponent alloc];
    v24 = [v13 storageController];
    v25 = [v13 broadcaster];
    v26 = [(IMMessageFromStoragePipelineComponent *)v23 initWithStorageProcessingType:0 storageController:v24 broadcaster:v25];

    v27 = [[IMJunkChatCommandProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v28 = [IMMessageFromStoragePipelineComponent alloc];
    v29 = [v13 storageController];
    v30 = [v13 broadcaster];
    v31 = [(IMMessageFromStoragePipelineComponent *)v28 initWithStorageProcessingType:1 storageController:v29 broadcaster:v30];

    v32 = MEMORY[0x277D18E00];
    v67[0] = v22;
    v67[1] = v26;
    v67[2] = v27;
    v67[3] = v31;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:4];
    v34 = [v32 pipelineFromComponents:v33];

    v35 = [v47 handler];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_22B5B53C4;
    v50[3] = &unk_278705998;
    v51 = v19;
    v52 = v13;
    v36 = v48;
    v37 = *(a1 + 32);
    v53 = v36;
    v54 = &v56;
    v55 = v37;
    [v35 handleJunkChatCommandWithPipeline:v34 input:v51 completionBlock:v50];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = objc_opt_class();
        *buf = 138412546;
        v64 = v39;
        v65 = 2048;
        v66 = v12;
        v40 = v39;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Failed getting junk chat command blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v41 = [v13 service];
    [v41 sendAckForMessageWithContext:v48];

    v22 = v57[5];
    v57[5] = 0;
  }

  _Block_object_dispose(&v56, 8);
  os_activity_scope_leave(&state);

  v42 = *MEMORY[0x277D85DE8];
}

void sub_22B5B533C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5B527CLL);
  }

  _Block_object_dispose(&a25, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5B53C4(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) GUID];
      v17 = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing junk chat command: %@, %@", &v17, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) GUID];
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing junk chat command and cleaning up: %@", &v17, 0xCu);
    }
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) service];
  [v10 _postReceivedMessageMetricsForInput:v11 withMessageContext:v12 toIDSService:v13];

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22B5B55A0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5B5484);
  }

  _Unwind_Resume(a1);
}

void sub_22B5B55D4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v67[4] = *MEMORY[0x277D85DE8];
  v47 = a2;
  v12 = a3;
  v49 = a4;
  v13 = a5;
  v48 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v45 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.markAsReviewedRequest", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v45, &state);
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_22B4D7710;
  v60 = sub_22B4D78E4;
  v44 = v14;
  v61 = v44;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v49 fromPushID];
      *buf = 138412290;
      v64 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for mark as reviewed command received fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorMarkAsReviewedCommand", @"BlastDoor");
  v46 = v12;
  if (objc_opt_isKindOfClass())
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = [[IMMarkAsReviewedCommandPipelineParameter alloc] initWithDefusedMessage:v18 idsTrustedData:v49];
  if (v19)
  {
    v20 = [IMFindAccountProcessingPipelineComponent alloc];
    v21 = [v13 imdAccount];
    v22 = [(IMFindAccountProcessingPipelineComponent *)v20 initWithReceivingAccount:v21];

    v23 = [IMMessageFromStoragePipelineComponent alloc];
    v24 = [v13 storageController];
    v25 = [v13 broadcaster];
    v26 = [(IMMessageFromStoragePipelineComponent *)v23 initWithStorageProcessingType:0 storageController:v24 broadcaster:v25];

    v27 = [[IMMarkAsReviewedCommandProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v28 = [IMMessageFromStoragePipelineComponent alloc];
    v29 = [v13 storageController];
    v30 = [v13 broadcaster];
    v31 = [(IMMessageFromStoragePipelineComponent *)v28 initWithStorageProcessingType:1 storageController:v29 broadcaster:v30];

    v32 = MEMORY[0x277D18E00];
    v67[0] = v22;
    v67[1] = v26;
    v67[2] = v27;
    v67[3] = v31;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:4];
    v34 = [v32 pipelineFromComponents:v33];

    v35 = [v47 handler];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_22B5B5B54;
    v50[3] = &unk_278705998;
    v51 = v19;
    v52 = v13;
    v36 = v48;
    v37 = *(a1 + 32);
    v53 = v36;
    v54 = &v56;
    v55 = v37;
    [v35 handleMarkAsReviewedCommandWithPipeline:v34 input:v51 completionBlock:v50];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = objc_opt_class();
        *buf = 138412546;
        v64 = v39;
        v65 = 2048;
        v66 = v12;
        v40 = v39;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Failed getting mark as reviewed command blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v41 = [v13 service];
    [v41 sendAckForMessageWithContext:v48];

    v22 = v57[5];
    v57[5] = 0;
  }

  _Block_object_dispose(&v56, 8);
  os_activity_scope_leave(&state);

  v42 = *MEMORY[0x277D85DE8];
}

void sub_22B5B5ACC(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5B5A0CLL);
  }

  _Block_object_dispose(&a25, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5B5B54(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) GUID];
      v17 = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing mark as reviewed command: %@, %@", &v17, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) GUID];
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing mark as reviewed command and cleaning up: %@", &v17, 0xCu);
    }
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) service];
  [v10 _postReceivedMessageMetricsForInput:v11 withMessageContext:v12 toIDSService:v13];

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22B5B5D30(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5B5C14);
  }

  _Unwind_Resume(a1);
}

void sub_22B5B5E34(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v97[7] = *MEMORY[0x277D85DE8];
  v75 = a2;
  v73 = a3;
  v74 = a4;
  v72 = a5;
  v69 = a6;
  v13 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v65 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedMessage", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v65, &state);
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = sub_22B4D7710;
  v88 = sub_22B4D78E4;
  v64 = v13;
  v89 = v64;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v74 fromPushID];
      *buf = 138412290;
      v92 = v15;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Setting up pipeline for basic message fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorBasicTextMessage", @"BlastDoor");
  isKindOfClass = objc_opt_isKindOfClass();
  v17 = v73;
  if ((isKindOfClass & 1) == 0)
  {
    v17 = 0;
  }

  v67 = v17;
  v18 = [v67 messageSubType];
  v19 = [v18 type];

  if (v19 <= 2)
  {
    if (!v19)
    {
      v20 = [[IMTypingIndicatorPipelineParameter alloc] initWithBDBasic:v67 idsTrustedData:v74];
      v24 = [IMTypingIndicatorProcessingPipelineComponent alloc];
      v22 = [v75 messageStore];
      v68 = [(IMTextMessageProcessingPipelineComponent *)v24 initWithMessageStore:v22];
      goto LABEL_19;
    }

    if (v19 == 2)
    {
      v20 = [[IMAssociatedMessagePipelineParameter alloc] initWithBDBasic:v67 idsTrustedData:v74];
      v21 = [IMAssociatedMessageProcessingPipelineComponent alloc];
      v22 = [v75 messageStore];
      v68 = [(IMTextMessageProcessingPipelineComponent *)v21 initWithMessageStore:v22];
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v19 == 3)
  {
    v20 = [[IMTypingIndicatorPipelineParameter alloc] initWithBDBasic:v67 idsTrustedData:v74];
    v25 = [IMAudioMessageProcessingPipelineComponent alloc];
    v22 = [v75 messageStore];
    v68 = [(IMTextMessageProcessingPipelineComponent *)v25 initWithMessageStore:v22];
    goto LABEL_19;
  }

  if (v19 != 4)
  {
    if (v19 == 5)
    {
      v20 = [[IMEmojiTapbackMessagePipelineParameter alloc] initWithBDBasic:v67 idsTrustedData:v74];
      v23 = [IMEmojiTapbackMessageProcessingPipelineComponent alloc];
      v22 = [v75 messageStore];
      v68 = [(IMTextMessageProcessingPipelineComponent *)v23 initWithMessageStore:v22];
      goto LABEL_19;
    }

LABEL_17:
    v20 = [[IMTextMessagePipelineParameter alloc] initWithBDBasic:v67 idsTrustedData:v74];
    v26 = [IMTextMessageProcessingPipelineComponent alloc];
    v22 = [v75 messageStore];
    v68 = [(IMTextMessageProcessingPipelineComponent *)v26 initWithMessageStore:v22];
    goto LABEL_19;
  }

  v20 = [[IMTextMessagePipelineParameter alloc] initWithBDBasic:v67 idsTrustedData:v74];
  [(IMTextMessagePipelineParameter *)v20 setWasDetonated:1];
  v27 = [IMTextMessageProcessingPipelineComponent alloc];
  v22 = [v75 messageStore];
  v68 = [(IMTextMessageProcessingPipelineComponent *)v27 initWithMessageStore:v22];
LABEL_19:

  v71 = [v72 imdAccount];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v92 = v71;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Account was not the right class: %@", buf, 0xCu);
      }
    }

    v66 = 0;
    goto LABEL_38;
  }

  v70 = [v71 session];
  if (objc_opt_respondsToSelector())
  {
    v28 = [v71 idsAccount];
    v66 = [v70 _pushHandlerForIDSAccount:v28];

    if ((!v66 || (objc_opt_respondsToSelector() & 1) == 0) && IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v92 = v66;
        _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Push handler either nil or session did not respond to incomingMessage: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v92 = v70;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Session either nil or did not respond to _pushHandlerForIDSAccount: %@", buf, 0xCu);
      }
    }

    v66 = 0;
  }

  if (!v70)
  {
LABEL_38:
    v32 = +[IMDServiceController sharedController];
    v33 = [v32 serviceWithName:*MEMORY[0x277D1A620]];

    v70 = [IMDServiceSession existingServiceSessionForService:v33];
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v92 = v70;
        _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Falling back to service session: %@", buf, 0xCu);
      }
    }
  }

  if (v20 && v68)
  {
    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = [(IMTextMessagePipelineParameter *)v20 GUID];
        *buf = 138412290;
        v92 = v36;
        _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Going through new message processing path: %@, ", buf, 0xCu);
      }
    }

    v63 = objc_alloc_init(IMFilterMessagePipelineComponentContext);
    v37 = [IMFindAccountProcessingPipelineComponent alloc];
    v38 = [v72 imdAccount];
    v39 = [(IMFindAccountProcessingPipelineComponent *)v37 initWithReceivingAccount:v38];

    v40 = [IMMessageFromStoragePipelineComponent alloc];
    v41 = [v75 messageFromStorageController];
    v42 = [v75 broadcaster];
    v62 = [(IMMessageFromStoragePipelineComponent *)v40 initWithStorageProcessingType:0 storageController:v41 broadcaster:v42];

    v43 = [IMFindChatProcessingPipelineComponent alloc];
    v44 = [v75 chatRegistry];
    v61 = [(IMFindChatProcessingPipelineComponent *)v43 initWithChatRegistry:v44];

    v45 = [[IMConvergeGroupProcessingPipelineComponent alloc] initWithIDSTrustedData:v74];
    v46 = [IMMessageLegacyProcessingPipelineComponent alloc];
    v47 = [v75 idsService];
    v48 = [(IMMessageLegacyProcessingPipelineComponent *)v46 initWithIDSTrustedData:v74 messageContext:v69 idsService:v47 filteringContext:v63];

    v49 = objc_alloc_init(IMResolveFallbackHashesProcessingPipelineComponent);
    v97[0] = v39;
    v97[1] = v62;
    v97[2] = v61;
    v97[3] = v45;
    v97[4] = v49;
    v97[5] = v68;
    v97[6] = v48;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:7];
    v51 = [MEMORY[0x277D18E00] pipelineFromComponents:v50];
    v52 = [v75 handler];
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = sub_22B5B6A94;
    v76[3] = &unk_278705AA0;
    v77 = v20;
    v78 = v75;
    v53 = v69;
    v54 = *(a1 + 32);
    v79 = v53;
    v83 = v54;
    v80 = v72;
    v82 = &v84;
    v81 = v74;
    [v52 handleMessageWithPipeline:v51 input:v77 completionBlock:v76];

    v55 = v63;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v56 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v57 = objc_opt_class();
        *buf = 138412802;
        v92 = v57;
        v93 = 2048;
        v94 = v73;
        v95 = 2112;
        v96 = v68;
        v58 = v57;
        _os_log_impl(&dword_22B4CC000, v56, OS_LOG_TYPE_INFO, "Failed getting blastdoor object from result: <%@ %p>, with messageCreationComponent: %@", buf, 0x20u);
      }
    }

    v59 = [v75 idsService];
    [v59 sendAckForMessageWithContext:v69];

    v55 = v85[5];
    v85[5] = 0;
  }

  _Block_object_dispose(&v84, 8);
  os_activity_scope_leave(&state);

  v60 = *MEMORY[0x277D85DE8];
}

void sub_22B5B6A94(uint64_t a1, char a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) GUID];
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Ack'ing and cleaning up: %@, ", buf, 0xCu);
    }
  }

  v8 = [*(a1 + 40) idsService];
  [v8 sendAckForMessageWithContext:*(a1 + 48)];

  v9 = *(a1 + 80);
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v12 = [*(a1 + 56) service];
  [v9 _postReceivedMessageMetricsForInput:v10 withMessageContext:v11 toIDSService:v12];

  v13 = *(*(a1 + 72) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = 0;

  if ((a2 & 1) == 0 && ([*(a1 + 40) runningInAutomation] & 1) == 0)
  {
    v15 = [*(a1 + 32) GUID];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", &unk_283F4E810];
    v17 = [*(a1 + 64) fromIdentifier];
    v18 = [*(a1 + 64) fromToken];
    [IMBlastdoor sendBlastDoorError:v5 guid:v15 messageTypeString:v16 senderURI:v17 senderToken:v18 messageContext:*(a1 + 48) payloadAttachmentURL:0];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_22B5B7E38(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5B7ABCLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_22B5B8224(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5B8188);
  }

  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

id sub_22B5B8EF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKey:v5];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    if (v6)
    {
      v8 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_22B7D4808(v5, a1, v8);
      }
    }

    v7 = 0;
  }

  return v7;
}

void sub_22B5B8FB4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([*(a1 + 32) command] != a2 && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      *buf = 134218242;
      v43 = a2;
      v44 = 2112;
      v45 = v10;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "<Warning> Incoming command doesn't match BlastDoor command (%ld), trustedData: %@", buf, 0x16u);
    }
  }

  if (!v7)
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = @"NO";
        v27 = *(a1 + 48);
        *buf = 134218754;
        if (!v8)
        {
          v26 = @"YES";
        }

        v43 = a2;
        v44 = 2112;
        v45 = v26;
        v46 = 2112;
        v47 = v8;
        v48 = 2112;
        v49 = v27;
        _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "BlastDoor processing for command %ld was successful (%@) with error (%@) while processing GUID (%@)", buf, 0x2Au);
      }
    }

    v28 = [v8 userInfo];
    v29 = [v28 objectForKeyedSubscript:@"explosionDomain"];
    if ([v29 isEqualToString:@"com.apple.BlastDoor.MessagesBlastDoorInterface"])
    {
      v30 = [v8 userInfo];
      v31 = [v30 objectForKeyedSubscript:@"explosionErrorType"];
      v32 = [v31 isEqualToString:@"UnsupportedAirlockMessageType"];

      if (v32)
      {
        if (IMOSLoggingEnabled())
        {
          v33 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = *(a1 + 48);
            *buf = 134218242;
            v43 = a2;
            v44 = 2112;
            v45 = v34;
            _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "BlastDoor (Airlock) processing for command %ld was skipped because it is unsupported while processing GUID (%@)", buf, 0x16u);
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
    }

    if (([*(a1 + 56) runningInAutomation] & 1) == 0)
    {
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld-%@.data", a2, *(a1 + 48)];
      v36 = [MEMORY[0x277D1AA18] writeMessagePayloadToTemporaryDirectory:*(a1 + 88) fileName:v35];
      v37 = *(a1 + 48);
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a2];
      v39 = [*(a1 + 32) fromIdentifier];
      v40 = [*(a1 + 32) fromToken];
      [IMBlastdoor sendBlastDoorError:v8 guid:v37 messageTypeString:v38 senderURI:v39 senderToken:v40 messageContext:*(a1 + 72) payloadAttachmentURL:v36];
    }

    goto LABEL_40;
  }

  if (a2 == 100)
  {
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 96);
    im_sendMessageCheckpointIfNecessary();
  }

  v14 = +[IMDiMessageIDSDelegate commandHandlerRegistry];
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v16 = [v14 objectForKey:v15];

  v17 = IMOSLoggingEnabled();
  if (!v16)
  {
    if (v17)
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = *(a1 + 48);
        *buf = 134218242;
        v43 = a2;
        v44 = 2112;
        v45 = v24;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Failure to find BlastDoor handler block for command %ld while processing GUID (%@)", buf, 0x16u);
      }
    }

LABEL_40:
    [*(a1 + 40) sendAckForMessageWithContext:*(a1 + 72)];
    v16 = 0;
    goto LABEL_41;
  }

  if (v17)
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 48);
      *buf = 134218242;
      v43 = a2;
      v44 = 2112;
      v45 = v19;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "About to execute block for command %ld for GUID (%@)", buf, 0x16u);
    }
  }

  (v16)[2](v16, *(a1 + 56), v7, *(a1 + 32), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = @"NO";
      v22 = *(a1 + 48);
      *buf = 134218498;
      if (!v8)
      {
        v21 = @"YES";
      }

      v43 = a2;
      v44 = 2112;
      v45 = v21;
      v46 = 2112;
      v47 = v22;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "BlastDoor processing for command %ld was successful (%@) while processing GUID (%@)", buf, 0x20u);
    }
  }

LABEL_41:
  [*(a1 + 56) setRunningInAutomation:0];

  v41 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B5B9818()
{
  qword_281420FC8 = objc_alloc_init(IMDNotificationResponseUtilities);

  return MEMORY[0x2821F96F8]();
}

void sub_22B5BA030(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) notification];
    v4 = [v3 request];
    v5 = [v4 content];
    v12 = [v5 userInfo];

    v6 = [v12 objectForKeyedSubscript:@"CKBBContextKeyMessageGUID"];
    v7 = [v12 objectForKeyedSubscript:@"CKBBContextKeyChatGUIDs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 firstObject];
      v9 = v8;
      if (v6 && v8)
      {
        [*(a1 + 40) _markMessageAsRead:v6 inChat:v8 withCompletionHandler:*(a1 + 48)];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = *(a1 + 48);
    v11 = *(*(a1 + 48) + 16);

    v11();
  }
}

void sub_22B5BA170(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) notification];
    v4 = [v3 request];
    v5 = [v4 content];
    v12 = [v5 userInfo];

    v6 = [v12 objectForKeyedSubscript:@"CKBBContextKeyMessageGUID"];
    v7 = [v12 objectForKeyedSubscript:@"CKBBContextKeyChatGUIDs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 firstObject];
      v9 = v8;
      if (v6 && v8)
      {
        [*(a1 + 40) _markMessageAsRead:v6 inChat:v8 withCompletionHandler:*(a1 + 48)];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = *(a1 + 48);
    v11 = *(*(a1 + 48) + 16);

    v11();
  }
}

void sub_22B5BA2B0(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) notification];
    v4 = [v3 request];
    v5 = [v4 content];
    v12 = [v5 userInfo];

    v6 = [v12 objectForKeyedSubscript:@"CKBBContextKeyMessageGUID"];
    v7 = [v12 objectForKeyedSubscript:@"CKBBContextKeyChatGUIDs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 firstObject];
      v9 = v8;
      if (v6 && v8)
      {
        [*(a1 + 40) _markMessageAsRead:v6 inChat:v8 withCompletionHandler:*(a1 + 48)];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = *(a1 + 48);
    v11 = *(*(a1 + 48) + 16);

    v11();
  }
}

void sub_22B5BA3F0(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) notification];
    v4 = [v3 request];
    v5 = [v4 content];
    v12 = [v5 userInfo];

    v6 = [v12 objectForKeyedSubscript:@"CKBBContextKeyMessageGUID"];
    v7 = [v12 objectForKeyedSubscript:@"CKBBContextKeyChatGUIDs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 firstObject];
      v9 = v8;
      if (v6 && v8)
      {
        [*(a1 + 40) _markMessageAsRead:v6 inChat:v8 withCompletionHandler:*(a1 + 48)];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = *(a1 + 48);
    v11 = *(*(a1 + 48) + 16);

    v11();
  }
}

id sub_22B5BAFD0(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = *MEMORY[0x277D19940];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", v9, *(*(&v15 + 1) + 8 * i), v15];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t sub_22B5BB24C()
{
  qword_281421208 = objc_alloc_init(IMDServiceController);

  return MEMORY[0x2821F96F8]();
}

void sub_22B5BB8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5BB8D4(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([v7 replicationSourceID] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_22B5BBA80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 supportsCapability:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v4];
  }
}

void *sub_22B5BCFEC(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(*(a1 + 32) + 24);
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Listener Client %d connection invalidated", v6, 8u);
    }
  }

  [*(a1 + 32) _clearConnection];
  result = *(a1 + 40);
  if (result)
  {
    result = [result connectionClosed:*(*(a1 + 32) + 24)];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_22B5BD0DC(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(*(a1 + 32) + 24);
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Listener Client %d connection interrupted", v6, 8u);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = [result connectionClosed:*(*(a1 + 32) + 24)];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22B5BD1C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = *(a1 + 32);
  v7 = v6[2];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B5BD270;
  v9[3] = &unk_278702FA0;
  v10 = v6;
  v11 = v5;
  v8 = v5;
  dispatch_async(v7, v9);
}

void sub_22B5BD270(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 72) & 1) == 0)
  {
    *(v2 + 72) = 1;
    dispatch_group_leave(*(*(a1 + 32) + 80));
  }

  v3 = [*(a1 + 40) state];
  v4 = [v3 taskState] == 4;

  v5 = [*(a1 + 40) state];
  v6 = [v5 endowmentNamespaces];
  v7 = [v6 containsObject:@"com.apple.frontboard.visibility"] ^ 1;

  *(*(a1 + 32) + 88) = v4 & v7;
}

void sub_22B5BD320(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = a1[4];
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v7 count:1];
  [v4 setPredicates:{v5, v7, v8}];

  [v4 setStateDescriptor:a1[5]];
  [v4 setUpdateHandler:a1[6]];

  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B5BD65C(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      v2 = [*(a1 + 32) description];
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v2;
      _os_log_impl(&dword_22B4CC000, v1, OS_LOG_TYPE_INFO, "requestBackgroundMessagingAuthorizationForRecipients:%@", buf, 0xCu);
    }
  }

  v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = *(a1 + 32);
  v46 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v46)
  {
    v45 = *v50;
    v39 = *MEMORY[0x277CBD000];
    v37 = *MEMORY[0x277CBD090];
    v38 = *MEMORY[0x277CBCFF8];
    v44 = *MEMORY[0x277CBF188];
    v42 = *MEMORY[0x277CBF218];
    v43 = *MEMORY[0x277CBF198];
    v41 = *MEMORY[0x277CBF1E8];
    allocator = *MEMORY[0x277CBECE8];
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v50 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v49 + 1) + 8 * i);
        error = 0;
        buf[0] = 0;
        v5 = [MEMORY[0x277CBEB38] dictionary];
        v6 = *(a1 + 40);
        v7 = [v4 phoneNumber];
        v8 = [v6 _formattedPhoneNumberForNumber:v7];

        v9 = [v4 phoneNumber];
        v10 = IMDCNFullNameAndOrganizationNameForHandleID();

        if (!v10)
        {
          goto LABEL_13;
        }

        v11 = objc_alloc_init(MEMORY[0x277CBDB38]);
        v12 = [v10 objectForKey:v39];
        [v11 setGivenName:v12];

        v13 = [v10 objectForKey:v38];
        [v11 setFamilyName:v13];

        v14 = [v10 objectForKey:v37];
        [v11 setOrganizationName:v14];

        v15 = [MEMORY[0x277D1A968] displayNameWithCNNickNameOrFullNameOrCompanyNameOrAbbreviatedForContact:v11];

        if (v15)
        {
          [v4 setDisplayName:v15];
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%@)", v15, v8];
          v17 = MEMORY[0x277CCACA8];
          v18 = IMSharedUtilitiesFrameworkBundle();
          v19 = [v18 localizedStringForKey:@"CMAPI_AUTH_BODY" value:&stru_283F23018 table:@"IMSharedUtilities"];
          v20 = [v17 localizedStringWithFormat:v19, *(*(a1 + 40) + 40), v16];
          [v5 setObject:v20 forKey:v44];
        }

        else
        {
LABEL_13:
          v21 = MEMORY[0x277CCACA8];
          v15 = IMSharedUtilitiesFrameworkBundle();
          v16 = [v15 localizedStringForKey:@"CMAPI_AUTH_BODY" value:&stru_283F23018 table:@"IMSharedUtilities"];
          v18 = [v21 localizedStringWithFormat:v16, *(*(a1 + 40) + 40), v8];
          [v5 setObject:v18 forKey:v44];
        }

        [v5 setObject:*(*(a1 + 40) + 48) forKey:v43];
        v22 = MEMORY[0x277CCACA8];
        v23 = IMSharedUtilitiesFrameworkBundle();
        v24 = [v23 localizedStringForKey:@"CMAPI_AUTH_CANCEL" value:&stru_283F23018 table:@"IMSharedUtilities"];
        v25 = [v22 localizedStringWithFormat:v24, 0];
        [v5 setObject:v25 forKey:v42];

        v26 = MEMORY[0x277CCACA8];
        v27 = IMSharedUtilitiesFrameworkBundle();
        v28 = [v27 localizedStringForKey:@"CMAPI_AUTH_ALLOW" value:&stru_283F23018 table:@"IMSharedUtilities"];
        v29 = [v26 localizedStringWithFormat:v28, 0];
        [v5 setObject:v29 forKey:v41];

        v30 = CFUserNotificationCreate(allocator, 0.0, 0, &error, v5);
        v31 = v30;
        if (v30)
        {
          if (CFUserNotificationReceiveResponse(v30, 0.0, buf))
          {
            CFUserNotificationCancel(v31);
            CFRelease(v31);
            CFUserNotificationCancel(0);
            goto LABEL_23;
          }

          if (buf[0])
          {
            if (buf[0] == 2)
            {
              v32 = &unk_283F4E930;
              goto LABEL_21;
            }
          }

          else
          {
            v32 = &unk_283F4E918;
LABEL_21:
            [v35 setObject:v32 forKey:v4];
          }

          CFUserNotificationCancel(v31);
          CFRelease(v31);
        }

LABEL_23:
      }

      v46 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v46);
  }

  [MEMORY[0x277D1A8C8] saveRecipients:v35 forBundleID:*(*(a1 + 40) + 32)];
  v33 = *(a1 + 48);
  if (v33)
  {
    (*(v33 + 16))(v33, v35, 0);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void sub_22B5BDD58(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      v2 = [*(a1 + 32) description];
      *buf = 138412290;
      v24 = v2;
      _os_log_impl(&dword_22B4CC000, v1, OS_LOG_TYPE_INFO, "checkAuthorizationStatusForRecipients:%@", buf, 0xCu);
    }
  }

  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277D1A8C8] recipientsForBundleID:*(*(a1 + 40) + 32)];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v4 objectForKey:v9];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = &unk_283F4E948;
        }

        v13 = v12;

        v14 = [v9 copy];
        [v3 setObject:v13 forKey:v14];
      }

      v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))(v15, v3, 0);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22B5BE094(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = [*(a1 + 40) description];
      v23 = 138412546;
      v24 = v3;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "sendBackgroundMessage:%@ recipient:%@", &v23, 0x16u);
    }
  }

  v5 = *(a1 + 48);
  if (*(v5 + 88))
  {
    v6 = [MEMORY[0x277D1A8C8] recipientsForBundleID:*(v5 + 32)];
    v7 = [v6 objectForKey:*(a1 + 40)];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 integerValue] == 2;
      v10 = [*(a1 + 48) _shouldThrottleMessageToRecipient:*(a1 + 40)];
      if (v9)
      {
        if (v10)
        {
          v11 = IMLogHandleForCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_22B7D4920(a1 + 48);
          }

          if (!*(a1 + 56))
          {
            goto LABEL_24;
          }

          v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MSCriticalMessagingErrorDomain" code:4 userInfo:0];
          (*(*(a1 + 56) + 16))();
        }

        else
        {
          v16 = a1 + 48;
          v15 = *(a1 + 48);
          v17 = [*(a1 + 32) messageText];
          v18 = (a1 + 40);
          v19 = [*(a1 + 40) phoneNumber];
          [v15 _sendMessageText:v17 toHandle:v19 onService:@"SMS" completion:*(a1 + 56)];

          v20 = *(*(a1 + 48) + 96);
          v21 = *(*v16 + 32);
          v12 = [*v18 phoneNumber];
          [v20 recordMessageSentFromAppWithBundleID:v21 toRecipientHandle:v12];
        }

LABEL_23:

LABEL_24:
        goto LABEL_25;
      }
    }

    else
    {
      [*(a1 + 48) _shouldThrottleMessageToRecipient:*(a1 + 40)];
    }

    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D4988(a1 + 48);
    }

    if (!*(a1 + 56))
    {
      goto LABEL_24;
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MSCriticalMessagingErrorDomain" code:3 userInfo:0];
    (*(*(a1 + 56) + 16))();
    goto LABEL_23;
  }

  v13 = IMLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D48B8(a1 + 48);
  }

  if (*(a1 + 56))
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MSCriticalMessagingErrorDomain" code:2 userInfo:0];
    (*(*(a1 + 56) + 16))();
LABEL_25:
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_22B5BEC68(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D4AC8(a1, v3, v4);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) identifier];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Finished posting notification: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B5BEE6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 32);
  return result;
}

void sub_22B5BF3BC(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277D1A970] sharedInstance];
  [v4 postCoreAutomationNotificationFinishedTapToDownload:*(a1 + 32) downloadedFromCloudKitSuccessfully:a2];
}

void sub_22B5BF41C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) fallbackToDownloadIfPossible:*(a1 + 40) transfer:*(a1 + 48)];
  }

  if (IMIsRunningInAutomation())
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_22B5BF8CC(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v3 containsObject:{v9, v13}])
        {
          v10 = *(a1 + 40);
          v11 = [v9 guid];
          [v10 fallbackToDownloadIfPossible:v11 transfer:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B5BFCB4()
{
  qword_281420FD0 = objc_alloc_init(IMDNicknameController);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B5C03CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"date"];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v3 objectForKey:@"date"];
    [v7 timeIntervalSinceNow];
    if (v8 <= -1209600.0)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a1 + 32) ^ 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_22B5C0DD0(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (a2)
      {
        v7 = @"YES";
      }

      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "We successfully reuploaded our local nickname %@ %@", &v13, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (a2)
  {
    v10 = [WeakRetained defaults];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
    [v10 setValue:v11 forDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A418]];
  }

  else
  {
    [WeakRetained _tryToReuploadPersonalNicknameWithRetryCount:*(a1 + 48) + 1 reuploadVersion:*(a1 + 40)];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_22B5C1240(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = MessageDictionaryNicknameRequestPersonalNicknameInfoKey;
  v13[0] = MEMORY[0x277CBEC38];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  if ([*(a1 + 32) _sendMessageDictionary:v2 toDevice:0])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Successfully sent request to peers for nickname info", &v10, 2u);
      }
    }

    v4 = [*(a1 + 32) defaults];
    [v4 setValue:MEMORY[0x277CBEC38] forDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A410]];
  }

  else
  {
    v5 = *(a1 + 40) < 5uLL;
    v6 = IMOSLoggingEnabled();
    if (v5)
    {
      if (v6)
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v10 = 138412290;
          v11 = &unk_283F4EF78;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "We did not have the IDSDevices to send the request to, going to try again in %@", &v10, 0xCu);
        }
      }

      [*(a1 + 32) _retryPeerRequestWithRetry:*(a1 + 40) + 1];
    }

    else if (v6)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "We do not have enough retries to get nickname info, not trying again", &v10, 2u);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22B5C197C(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 9) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v4 = 138412290;
        v5 = &unk_283F4EF78;
        _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Nickname is still uploading after time out %@ setting upload to done", &v4, 0xCu);
      }
    }

    *(*(a1 + 32) + 9) = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_22B5C2150(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_22B5C21DC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_22B5C21F4(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v17 = a3;
  v45 = a4;
  v46 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v24 = [v17 description];
    [WeakRetained _showDebugAlertWithHeader:@"Successfully Uploaded Personal Nickname" message:v24];

    v25 = _iMessageTelemetryLogHandle();
    if (os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22B4CC000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AUTOMATION_HOOK_SNAPUploadComplete", "SNAP upload via modern API completed", buf, 2u);
    }

    v26 = objc_loadWeakRetained((a1 + 40));
    [v26 setPersonalNickname:v17];

    v27 = objc_loadWeakRetained((a1 + 40));
    [v27 _resetHandleSharingList];

    v28 = objc_loadWeakRetained((a1 + 40));
    v29 = [v28 personalNickname];
    v30 = v45;
    [v28 _storePublicNickname:v29 nicknameLocation:v45 encryptionKey:v46 wallpaperDataTag:v18 wallpaperLowResDataTag:v19 wallpaperMetadataTag:v20 avatarRecipeDataTag:v21];

    v31 = objc_loadWeakRetained((a1 + 40));
    [v31 _endNicknameUpload];

    v32 = [MEMORY[0x277CCAB98] defaultCenter];
    [v32 postNotificationName:IMDMeCardUpdatedNotification object:0 userInfo:0];

    v33 = objc_loadWeakRetained((a1 + 40));
    [v33 sendPersonalNicknameRecordIDAndVersionToAllPeers];

    v34 = *(a1 + 32);
    if (v34)
    {
      v35 = *(v34 + 16);
LABEL_12:
      v35();
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *v47 = 0;
        _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Unable to store in Public Database, aborting fanout to other devices", v47, 2u);
      }
    }

    v37 = objc_loadWeakRetained((a1 + 40));
    v38 = MEMORY[0x277CCACA8];
    v39 = v37;
    v40 = [v39 personalNickname];
    v41 = [v38 stringWithFormat:@"Error: %@\n Fallback nickname: %@", v22, v40];
    [v39 _showDebugAlertWithHeader:@"Failed Uploading Personal Nickname" message:v41];

    v42 = objc_loadWeakRetained((a1 + 40));
    v43 = [v42 personalNickname];
    [v42 setPersonalNickname:v43];

    v44 = *(a1 + 32);
    v30 = v45;
    if (v44)
    {
      v35 = *(v44 + 16);
      goto LABEL_12;
    }
  }
}

void sub_22B5C255C(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v24 = [v16 description];
    [WeakRetained _showDebugAlertWithHeader:@"Successfully Uploaded Personal Nickname" message:v24];

    v25 = _iMessageTelemetryLogHandle();
    if (os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22B4CC000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AUTOMATION_HOOK_SNAPUploadComplete", "SNAP upload via legacy API completed", buf, 2u);
    }

    v26 = objc_loadWeakRetained((a1 + 40));
    [v26 setPersonalNickname:v16];

    v27 = objc_loadWeakRetained((a1 + 40));
    [v27 _resetHandleSharingList];

    v28 = objc_loadWeakRetained((a1 + 40));
    v29 = [v28 personalNickname];
    [v28 _storePublicNickname:v29 nicknameLocation:v17 encryptionKey:v18 wallpaperDataTag:v19 wallpaperLowResDataTag:v20 wallpaperMetadataTag:v21 avatarRecipeDataTag:0];

    v30 = objc_loadWeakRetained((a1 + 40));
    [v30 _endNicknameUpload];

    v31 = [MEMORY[0x277CCAB98] defaultCenter];
    [v31 postNotificationName:IMDMeCardUpdatedNotification object:0 userInfo:0];

    v32 = objc_loadWeakRetained((a1 + 40));
    [v32 sendPersonalNicknameRecordIDAndVersionToAllPeers];

    v33 = *(a1 + 32);
    if (v33)
    {
      v34 = *(v33 + 16);
LABEL_12:
      v34();
    }
  }

  else
  {
    v44 = v17;
    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *v45 = 0;
        _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Unable to store in Public Database, aborting fanout to other devices", v45, 2u);
      }
    }

    v36 = objc_loadWeakRetained((a1 + 40));
    v37 = MEMORY[0x277CCACA8];
    v38 = v36;
    v39 = [v38 personalNickname];
    v40 = [v37 stringWithFormat:@"Error: %@\n Fallback nickname: %@", v22, v39];
    [v38 _showDebugAlertWithHeader:@"Failed Uploading Personal Nickname" message:v40];

    v41 = objc_loadWeakRetained((a1 + 40));
    v42 = [v41 personalNickname];
    [v41 setPersonalNickname:v42];

    v43 = *(a1 + 32);
    v17 = v44;
    if (v43)
    {
      v34 = *(v43 + 16);
      goto LABEL_12;
    }
  }
}

void sub_22B5C3328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_22B5C3384(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_22B5C339C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = IMOSLoggingEnabled();
  if (v11)
  {
    if (v16)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v26 = v11;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Got personal nickname from IMTransferAgent: %@", buf, 0xCu);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v19 = [v11 description];
    [WeakRetained _showDebugAlertWithHeader:@"Fetched Personal Nickname" message:v19];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (v16)
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *(a1 + 32);
        *buf = 138412546;
        v26 = v15;
        v27 = 2112;
        v28 = v21;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Failed to fetch public nickname {error: %@, recordName: %@}", buf, 0x16u);
      }
    }

    v22 = objc_loadWeakRetained((a1 + 56));
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"recordID: %@\ndecryptionKey: %@\nerror: %@", *(a1 + 32), *(a1 + 40), v15];
    [v22 _showDebugAlertWithHeader:@"Failed Personal Nickname Fetch" message:v23];

    (*(*(a1 + 48) + 16))();
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_22B5C3904(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) stopTimingForKey:@"Nickname Download"];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      [*(a1 + 32) totalTimeForKey:@"Nickname Download"];
      *buf = 134217984;
      v17 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Public Nickname fetched or failed in time: %f", buf, 0xCu);
    }
  }

  if (!v5)
  {
    if (v6)
    {
      v9 = [v6 domain];
      v10 = [v9 lowercaseString];
      v11 = [v10 containsString:@"blastdoor"];

      if (v11)
      {
        v12 = [MEMORY[0x277CCACA8] stringGUID];
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", &unk_283F4E990];
        [IMBlastdoor sendBlastDoorError:v6 guid:v12 messageTypeString:v13 senderURI:0 senderToken:0 messageContext:0 payloadAttachmentURL:0];
      }
    }
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    (*(v14 + 16))(v14, v5, *(a1 + 40), *(a1 + 48), *(a1 + 56), v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_22B5C3AF4(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) stopTimingForKey:@"Nickname Download"];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      [*(a1 + 32) totalTimeForKey:@"Nickname Download"];
      *buf = 134217984;
      v17 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Public Nickname fetched or failed in time: %f", buf, 0xCu);
    }
  }

  if (!v5)
  {
    if (v6)
    {
      v9 = [v6 domain];
      v10 = [v9 lowercaseString];
      v11 = [v10 containsString:@"blastdoor"];

      if (v11)
      {
        v12 = [MEMORY[0x277CCACA8] stringGUID];
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", &unk_283F4E990];
        [IMBlastdoor sendBlastDoorError:v6 guid:v12 messageTypeString:v13 senderURI:0 senderToken:0 messageContext:0 payloadAttachmentURL:0];
      }
    }
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    (*(v14 + 16))(v14, v5, *(a1 + 40), *(a1 + 48), *(a1 + 56), v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

BOOL sub_22B5C4748(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = +[IMDChatRegistry sharedInstance];
  v3 = [v2 allExistingChatsWithIdentifier:*(a1 + 32)];

  v4 = [v3 count];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v4)
      {
        v6 = @"YES";
      }

      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Has messages history with sender:%@", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4 != 0;
}

BOOL sub_22B5C4878(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _appearsToBePhoneNumber];
  v3 = objc_alloc(MEMORY[0x277CF7D30]);
  if (v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  v5 = [v3 initWithType:v4 value:*(a1 + 32)];
  v6 = [MEMORY[0x277CF7D48] predicateForCallsWithRemoteParticipantHandle:v5];
  v7 = [*(a1 + 40) callHistoryManager];
  v8 = [v7 countCallsWithPredicate:v6];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      if (v8)
      {
        v10 = @"YES";
      }

      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Has call history with sender:%@", &v13, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8 != 0;
}

void sub_22B5C49E0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v31 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v11)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fetched Nickname for %@", *(a1 + 32)];
    v18 = [v11 description];
    [WeakRetained _showDebugAlertWithHeader:v17 message:v18];

    v19 = [*(a1 + 40) _stripFZIDPrefix];
    v20 = objc_loadWeakRetained((a1 + 64));
    [v20 saveNicknameForRecordID:*(a1 + 48) handleID:v19 userNickname:v11];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = *(a1 + 48);
        *buf = 138412546;
        v28 = v22;
        v29 = 2112;
        v30 = v15;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Nicknames - Failed getting nickname for record ID %@ from transfer agent with error %@", buf, 0x16u);
      }
    }

    v23 = objc_loadWeakRetained((a1 + 64));
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed Nickname Fetch for %@", *(a1 + 32)];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"recordID: %@\nerror:%@", *(a1 + 48), v15];
    [v23 _showDebugAlertWithHeader:v24 message:v25];

    (*(*(a1 + 56) + 16))();
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_22B5C4E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22B5C4E90(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = IMOSLoggingEnabled();
  if (a2)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Transfer agent succeeded in deleting public nickname from CloudKit", buf, 2u);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _deletePublicNicknameLocationAndKey];

    v9 = objc_loadWeakRetained((a1 + 40));
    [v9 setPersonalNickname:0];

    v10 = objc_loadWeakRetained((a1 + 40));
    [v10 _resetHandleSharingList];

    if (*(a1 + 48) == 1)
    {
      v11 = objc_loadWeakRetained((a1 + 40));
      [v11 sendPersonalNicknameRecordIDAndVersionToAllPeers];
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = *(v12 + 16);
LABEL_16:
      v13();
    }
  }

  else
  {
    if (v6)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Did not succeed in deleting public nickname from CloudKit!", v16, 2u);
      }
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      v13 = *(v15 + 16);
      goto LABEL_16;
    }
  }
}

void sub_22B5C71B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  objc_destroyWeak(va);
  objc_destroyWeak((v17 - 88));
  _Unwind_Resume(a1);
}

void sub_22B5C71D0(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D4B80();
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Finished personal nickname fetch with nickname: %@, updating key store", buf, 0xCu);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 80));
    [WeakRetained _deletePendingNicknameForUpload];

    v10 = objc_loadWeakRetained((a1 + 80));
    [v10 setPersonalNickname:v5];

    v7 = objc_loadWeakRetained((a1 + 80));
    [v7 _storePublicNickname:v5 nicknameLocation:*(a1 + 32) encryptionKey:*(a1 + 40) wallpaperDataTag:*(a1 + 48) wallpaperLowResDataTag:*(a1 + 56) wallpaperMetadataTag:*(a1 + 64) avatarRecipeDataTag:*(a1 + 72)];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22B5CAB24(uint64_t a1, void *a2)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 objectForKey:@"NicknameServiceDevices"];
    if ([*(a1 + 32) _appearsToBePhoneNumber])
    {
      v5 = IDSCopyIDForPhoneNumber();
    }

    else
    {
      if (![*(a1 + 32) _appearsToBeEmail])
      {
        v8 = IMLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D4D04((a1 + 32), v8, v9, v10, v11, v12, v13, v14);
        }

        v7 = 0;
        goto LABEL_14;
      }

      v5 = MEMORY[0x231896500](*(a1 + 32));
    }

    v7 = v5;
LABEL_14:
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v16 = [*(*(a1 + 40) + 16) firstName];
    if (v16)
    {
      CFDictionarySetValue(v15, @"FirstName", v16);
    }

    v17 = [*(*(a1 + 40) + 16) lastName];
    if (v17)
    {
      CFDictionarySetValue(v15, @"LastName", v17);
    }

    if (qword_27D8CC180)
    {
      CFDictionarySetValue(v15, qword_27D8CC170, qword_27D8CC180);
    }

    v18 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:1];
    if (v18)
    {
      CFDictionarySetValue(v15, @"UpdateInfoIncluded", v18);
    }

    v38[0] = *MEMORY[0x277D18650];
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
    v38[1] = *MEMORY[0x277D18570];
    v39[0] = v19;
    v39[1] = MEMORY[0x277CBEC38];
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
    v21 = [v20 mutableCopy];

    if (v7)
    {
      [v21 setObject:v7 forKeyedSubscript:*MEMORY[0x277D185E0]];
    }

    if (v15 && [v4 count])
    {
      v22 = MEMORY[0x277D1AA08];
      v23 = *(*(a1 + 40) + 168);
      v24 = [v21 copy];
      v32 = 0;
      v33 = 0;
      v25 = [v22 service:v23 sendMessage:v15 toDestinations:v4 priority:300 options:v24 identifier:&v33 error:&v32];
      v26 = v33;
      v27 = v32;

      if (v27)
      {
        v28 = 0;
      }

      else
      {
        v28 = v25;
      }

      if (v28 == 1)
      {
        if (IMOSLoggingEnabled())
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v35 = v26;
            v36 = 2112;
            v37 = v4;
            _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Successfully sent name only to message (%@) to destinations %@", buf, 0x16u);
          }
        }
      }

      else
      {
        v30 = IMLogHandleForCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D4C24();
        }
      }
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_39;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "devices are nil or empty from IDS so just returning", buf, 2u);
    }
  }

LABEL_39:

  v31 = *MEMORY[0x277D85DE8];
}

void sub_22B5CB414(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [a2 allValues];
  v3 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v17 = *v23;
    do
    {
      v5 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * v5);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v19;
          do
          {
            v11 = 0;
            do
            {
              if (*v19 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(a1 + 32);
              v13 = [*(*(&v18 + 1) + 8 * v11) destinationURIs];
              v14 = [v13 allObjects];
              [v12 addObjectsFromArray:v14];

              ++v11;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v9);
        }

        ++v5;
      }

      while (v5 != v4);
      v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v4);
  }

  dispatch_group_leave(*(a1 + 40));
  v15 = *MEMORY[0x277D85DE8];
}

void sub_22B5CB5DC(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [a2 allValues];
  v3 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v17 = *v23;
    do
    {
      v5 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * v5);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v19;
          do
          {
            v11 = 0;
            do
            {
              if (*v19 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(a1 + 32);
              v13 = [*(*(&v18 + 1) + 8 * v11) destinationURIs];
              v14 = [v13 allObjects];
              [v12 addObjectsFromArray:v14];

              ++v11;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v9);
        }

        ++v5;
      }

      while (v5 != v4);
      v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v4);
  }

  dispatch_group_leave(*(a1 + 40));
  v15 = *MEMORY[0x277D85DE8];
}

void sub_22B5CB7A4(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D4D74();
    }
  }

  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) minusSet:*(a1 + 40)];
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 40) count];
      v6 = *(a1 + 40);
      *buf = 134218242;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Found %lu newServiceURIs: %@", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) count];
      v9 = *(a1 + 32);
      *buf = 134218242;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Found %lu iMessageServiceURIs: %@", buf, 0x16u);
    }
  }

  v14[0] = @"NicknameServiceDevices";
  v14[1] = @"iMessageServiceDevices";
  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  v15[0] = *(a1 + 40);
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  (*(v10 + 16))(v10, v12);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22B5CB984(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5CB900);
  }

  _Unwind_Resume(a1);
}

void sub_22B5CBDC8(uint64_t a1, void *a2)
{
  v54[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = [*(a1 + 32) copy];
    v5 = *(a1 + 72);
    v6 = [v3 objectForKey:@"NicknameServiceDevices"];
    v7 = v6;
    if (v5)
    {
      v8 = [v6 mutableCopy];

      v9 = [v3 objectForKey:@"iMessageServiceDevices"];
      [v8 minusSet:v9];

      v7 = v8;
    }

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v52 = v7;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Will attempt to send to newServiceURIs: %@", buf, 0xCu);
      }
    }

    v11 = +[IMDChatRegistry sharedInstance];
    v48 = [v11 existingChatWithGUID:*(a1 + 40)];

    if (*(a1 + 32) || !v48)
    {
      v12 = v4;
    }

    else
    {
      v12 = [v48 lastAddressedLocalHandle];

      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v52 = v12;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Replaced from handle with: %@", buf, 0xCu);
        }
      }
    }

    if ([v12 _appearsToBeEmail])
    {
      v15 = MEMORY[0x231896500](v12);
    }

    else
    {
      v15 = IDSCopyIDForPhoneNumber();
    }

    v16 = v15;
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v52 = v16;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "From IDS handle: %@", buf, 0xCu);
      }
    }

    if (qword_27D8CC178)
    {
      CFDictionarySetValue(*(a1 + 48), qword_27D8CC170, qword_27D8CC178);
    }

    v53[0] = *MEMORY[0x277D18650];
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
    v53[1] = *MEMORY[0x277D18570];
    v54[0] = v18;
    v54[1] = MEMORY[0x277CBEC38];
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
    v20 = [v19 mutableCopy];

    if (v16)
    {
      [v20 setObject:v16 forKeyedSubscript:*MEMORY[0x277D185E0]];
    }

    if (*(a1 + 48) && [v7 count])
    {
      v21 = MEMORY[0x277D1AA08];
      v22 = *(a1 + 48);
      v23 = *(*(a1 + 56) + 168);
      v24 = [v20 copy];
      v49 = 0;
      v50 = 0;
      v25 = [v21 service:v23 sendMessage:v22 toDestinations:v7 priority:300 options:v24 identifier:&v50 error:&v49];
      v47 = v50;
      v26 = v49;

      if (v26)
      {
        v27 = 0;
      }

      else
      {
        v27 = v25;
      }

      if (v27 == 1)
      {
        if (IMOSLoggingEnabled())
        {
          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *v52 = v47;
            *&v52[8] = 2112;
            *&v52[10] = v7;
            _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Successfully sent personal nickname to message (%@) to destinations %@", buf, 0x16u);
          }
        }

        v29 = _iMessageTelemetryLogHandle();
        if (os_signpost_enabled(v29))
        {
          v30 = [*(a1 + 64) count];
          *buf = 134217984;
          *v52 = v30;
          _os_signpost_emit_with_name_impl(&dword_22B4CC000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AUTOMATION_HOOK_SNAPNotificationSent", "SNAP sent to %lu recipients", buf, 0xCu);
        }

        v26 = 0;
      }

      else
      {
        v33 = IMLogHandleForCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D4C24();
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = *(a1 + 48) != 0;
          *buf = 67109378;
          *v52 = v32;
          *&v52[4] = 2112;
          *&v52[6] = v7;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Skipping new service nickname send. Have info to send: %i, NewServiceURIs: %@", buf, 0x12u);
        }
      }

      v26 = 0;
      v47 = 0;
    }

    v34 = [MEMORY[0x277D18A10] sharedInstanceForBagType:0];
    v35 = [v34 objectForKey:@"enable-snap-v2-back-compat"];
    v36 = [v35 BOOLValue];

    if (v36 && (*(a1 + 73) & 1) == 0)
    {
      v39 = [v3 objectForKey:@"iMessageServiceDevices"];
      v40 = +[IMDAccountController sharedAccountController];
      v46 = [v40 anySessionForServiceName:*MEMORY[0x277D1A620]];

      v41 = IMOSLoggingEnabled();
      if (v46)
      {
        if (v41)
        {
          v42 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *v52 = v39;
            _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "Sending nickname info to destinations %@", buf, 0xCu);
          }
        }

        if ([v39 count])
        {
          v43 = [v39 allObjects];
          [v46 sendNicknameInfoToURIs:v43 chatGUID:*(a1 + 40)];
        }
      }

      else if (v41)
      {
        v44 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "We didn't have a session to send the nickname info over", buf, 2u);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = *(a1 + 73);
        *buf = 67109376;
        *v52 = v36;
        *&v52[4] = 1024;
        *&v52[6] = v38;
        _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Skipping iMessage nickname send. isEnabled: %i, onlyUseNicknameSendingService: %i", buf, 0xEu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "devices are nil or empty from IDS so just returning", buf, 2u);
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

void sub_22B5CD4CC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a4;
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Failed to download nickname with error: %@", &v12, 0xCu);
      }

LABEL_9:
    }
  }

  else if (v7)
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v5 firstName];
      v10 = [v5 lastName];
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Successfully downloaded and saved nickname for %@ %@.", &v12, 0x16u);
    }

    goto LABEL_9;
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22B5CD640(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5CD604);
  }

  _Unwind_Resume(a1);
}

void sub_22B5CE8A8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5CE7B0);
  }

  _Unwind_Resume(a1);
}

void sub_22B5D2188(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5D20C8);
  }

  _Unwind_Resume(a1);
}

void sub_22B5D28EC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5D2804);
  }

  _Unwind_Resume(a1);
}

void sub_22B5D4410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22B5D4464(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D53C8();
    }
  }

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setPersonalNickname:v5];
  }
}

void sub_22B5D9298(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 32);
  v4 = [*(a1 + 48) sender];
  LOBYTE(v2) = [v3 shouldSkipTrustKitDecisioningForChat:v2 sender:v4];

  v5 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "TrustKit query filtering skipped", buf, 2u);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B5D9B1C;
    block[3] = &unk_278702FA0;
    v25 = *(a1 + 56);
    v26 = *(a1 + 64);
    dispatch_async(MEMORY[0x277D85CD0], block);

    v7 = v25;
  }

  else
  {
    if (v5)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Performing TrustKit Check", buf, 2u);
      }
    }

    v9 = *(*(a1 + 32) + 32);
    v10 = [*(a1 + 48) sender];
    v11 = [*(a1 + 48) service];
    v12 = [*(a1 + 48) rcsAdvisedAction];
    v13 = [*(a1 + 48) body];
    v14 = [*(a1 + 48) countryCode];
    v15 = [*(a1 + 48) messageContainsOneTimeCode];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_22B5D9618;
    v27[3] = &unk_278705EA0;
    v23 = *(a1 + 32);
    v16 = *(&v23 + 1);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    *&v19 = v17;
    *(&v19 + 1) = v18;
    v28 = v23;
    v29 = v19;
    v30 = *(a1 + 64);
    LOBYTE(v22) = v15;
    [v9 requestDecisionForSender:v10 service:v11 trustIndicator:v12 messageBody:v13 countryCode:v14 requestReason:0 containsOneTimeCode:v22 completionHandler:v27];

    v7 = *(&v28 + 1);
  }

  if ([*(*(a1 + 32) + 24) wasContextUsed])
  {
    [*(*(a1 + 32) + 24) setShouldTrackForRequery:1];
  }

  else
  {
    v20 = +[IMDSpamCheckRequeryTracker sharedTracker];
    v21 = [*(a1 + 48) guid];
    [v20 startTrackingMessageGUID:v21 chat:*(a1 + 40)];
  }
}

void sub_22B5D9618(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Finished TrustKit Check", buf, 2u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5D9780;
  block[3] = &unk_278705E78;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v16 = a2;
  block[4] = v7;
  v11 = v8;
  v12 = *(a1 + 48);
  v13 = v5;
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t sub_22B5D9780(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 80) == 2)
  {
    v2 = [*(*(a1 + 32) + 24) wasContextUsed];
    v3 = +[IMDAccountController sharedAccountController];
    v4 = [v3 activeAccountsAreEligibleForHawking];

    v5 = [MEMORY[0x277D1AC58] isBlackholeEnabledForEligibleAccounts:v4];
    if (v2)
    {
      v6 = *(*(a1 + 32) + 24);
      if (v5)
      {
        [*(*(a1 + 32) + 24) setIsBlackholed:1];
        v7 = 7;
        [*(*(a1 + 32) + 24) setSpamDetectionSource:7];
        if (IMOSLoggingEnabled())
        {
          v8 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v9 = *(a1 + 48);
            v21 = 138412290;
            v22 = v9;
            _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Message marked as blackholed by TrustKit: %@", &v21, 0xCu);
          }

LABEL_12:

          v7 = 7;
          goto LABEL_22;
        }

        goto LABEL_22;
      }

      v7 = 1;
      [*(*(a1 + 32) + 24) setSpamDetectionSource:1];
      [*(*(a1 + 32) + 24) setIsFiltered:2];
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_22;
      }

      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 48);
        v21 = 138412290;
        v22 = v13;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Message marked as junk by TrustKit: %@", &v21, 0xCu);
      }
    }

    else
    {
      v10 = *(a1 + 40);
      if (v5)
      {
        [*(a1 + 40) updateIsBlackholed:1];
        v7 = 7;
        [*(a1 + 40) setSpamDetectionSource:7];
        if (IMOSLoggingEnabled())
        {
          v8 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v11 = *(a1 + 40);
            v21 = 138412290;
            v22 = v11;
            _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Chat marked as blackholed by TrustKit: %@", &v21, 0xCu);
          }

          goto LABEL_12;
        }

LABEL_22:
        v17 = +[IMDSpamFilteringHelper sharedHelper];
        [v17 presentDebugUI];

        v18 = +[IMDSpamFilteringHelper sharedHelper];
        [v18 recordJunkMetricsForSpamDetectionSource:v7 service:*MEMORY[0x277D1A620]];

        goto LABEL_23;
      }

      [*(a1 + 40) setSpamDetectionSource:1];
      v14 = *(a1 + 40);
      v15 = [*(a1 + 48) guid];
      [v14 setSpamDetectedMessage:v15];

      [*(a1 + 40) updateIsFiltered:2];
      if (!IMOSLoggingEnabled())
      {
LABEL_21:
        v7 = 1;
        goto LABEL_22;
      }

      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 40);
        v21 = 138412290;
        v22 = v16;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Chat marked as junk by TrustKit: %@", &v21, 0xCu);
      }
    }

    goto LABEL_21;
  }

LABEL_23:
  if (*(a1 + 56))
  {
    [*(a1 + 48) setSpamModelMetadata:?];
  }

  result = [*(a1 + 64) fullfillWithValue:*(a1 + 72)];
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22B5D9B28(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Finished CTS Check", buf, 2u);
    }
  }

  if (a2 == 8)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "This sender is a contact, not asking for junk", buf, 2u);
      }
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_22B5DA144;
    v9[3] = &unk_278702FA0;
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }

  else if (a2 == 1)
  {
    if ([*(*(a1 + 32) + 24) wasContextUsed])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B5D9FF8;
      block[3] = &unk_278705748;
      block[4] = *(a1 + 32);
      v13 = *(a1 + 64);
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = *(a1 + 40);
          *buf = 138412290;
          v21 = v7;
          _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "CTS says chat is junk: %@", buf, 0xCu);
        }
      }

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_22B5D9EBC;
      v16[3] = &unk_2787038F8;
      v17 = *(a1 + 40);
      v18 = *(a1 + 48);
      v19 = *(a1 + 56);
      dispatch_async(MEMORY[0x277D85CD0], v16);
    }
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B5D9EBC(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[IMDSpamFilteringHelper sharedHelper];
  [v2 presentDebugUI];

  v3 = +[IMDSpamFilteringHelper sharedHelper];
  [v3 recordJunkMetricsForSpamDetectionSource:3 service:*MEMORY[0x277D1A620]];

  [*(a1 + 32) setSpamDetectionSource:3];
  [*(a1 + 32) updateIsFiltered:2];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Chat marked as Junk by CTS: %@", &v8, 0xCu);
    }
  }

  result = [*(a1 + 40) fullfillWithValue:*(a1 + 48)];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B5D9FF8(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[IMDSpamFilteringHelper sharedHelper];
  [v2 presentDebugUI];

  v3 = +[IMDSpamFilteringHelper sharedHelper];
  [v3 recordJunkMetricsForSpamDetectionSource:3 service:*MEMORY[0x277D1A620]];

  [*(*(a1 + 32) + 24) setSpamDetectionSource:3];
  [*(*(a1 + 32) + 24) setIsFiltered:2];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Message marked as Junk by CTS: %@", &v8, 0xCu);
    }
  }

  result = [*(a1 + 48) fullfillWithValue:*(a1 + 56)];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22B5DA830(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"NO";
      v6 = *(a1 + 32);
      if (a2)
      {
        v5 = @"YES";
      }

      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Resolved inconsistent GUID to %@ with success: %@", &v9, 0x16u);
    }
  }

  if (a2)
  {
    [*(a1 + 40) setGuid:*(a1 + 32)];
    v7 = +[IMDChatStore sharedInstance];
    [v7 storeChat:*(a1 + 48)];
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B5DACE4()
{
  qword_281420FD8 = objc_alloc_init(IMDMessageStore);

  return MEMORY[0x2821F96F8]();
}

void sub_22B5DB010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22B5DB030(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rebuildUnreadMessageCountForGUIDs:0];
}

uint64_t sub_22B5DB210()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&dword_22B4CC000, v0, OS_LOG_TYPE_INFO, "Registering for the DB reconnect notification.", v2, 2u);
    }
  }

  return IMDRegisterReconnectBlockWithIdentifier();
}

void sub_22B5DB2B4()
{
  v0 = [MEMORY[0x277D19268] sharedInstance];
  v1 = [v0 isInternalInstall];

  if (v1)
  {
    v2 = [MEMORY[0x277D192D0] userNotificationWithIdentifier:@"com.apple.csdbpersistence-mandatory-db-reconnect" title:@"Messages DB Error" message:@"INTERNAL: A serious issue has been encountered while migrating your Messages database.  Logs files have been written detailing the problem defaultButton:please sync them off of your device as soon as possible and file a radar." alternateButton:@"OK" otherButton:{0, 0}];
    v3 = [MEMORY[0x277D192D8] sharedInstance];
    [v3 addUserNotification:v2 listener:0];

    if (qword_27D8CFF00 != -1)
    {
      sub_22B7D5A8C();
    }

    off_27D8CFEF8(0, @"imd-reconnection-log-dump", 12);
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Got a mandatory DB reconnect notification, I will now exit.", v6, 2u);
    }
  }

  v5 = dispatch_time(0, 2000000000);
  dispatch_after(v5, MEMORY[0x277D85CD0], &unk_283F1A1C8);
}

void *sub_22B5DB424()
{
  result = MEMORY[0x231897B50]("MarcoAction", @"Marco");
  off_27D8CFEF8 = result;
  return result;
}

uint64_t sub_22B5DB468()
{
  v0 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_22B4CC000, v0, OS_LOG_TYPE_DEFAULT, "  => Posting database full", v2, 2u);
  }

  return +[IMDMessageStore databaseFull];
}

void sub_22B5DB610(uint64_t a1)
{
  v1 = [*(a1 + 32) unreadCountController];
  [v1 recalculate];
}

void sub_22B5DC120(int a1, int a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = sub_22B5EDFB4;
  v10 = &unk_278706198;
  v11 = &v13;
  LOBYTE(v12) = a2;
  if (qword_281421438 != -1)
  {
    dispatch_once(&qword_281421438, &v7);
  }

  if (a1 != a2 || (v14[3] & 1) != 0)
  {
    if (qword_281421440)
    {
      v4 = MEMORY[0x277CBED28];
      if (!a2)
      {
        v4 = MEMORY[0x277CBED10];
      }

      v5 = *MEMORY[0x277CBF010];
      CFPreferencesSetValue(qword_281421440, *v4, @"com.apple.MobileSMS", @"mobile", *MEMORY[0x277CBF010]);
      CFPreferencesSynchronize(@"com.apple.MobileSMS", @"mobile", v5);
    }

    if (qword_281421448)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, qword_281421448, 0, 0, 0);
    }

    if (a2)
    {
      [IMDMessageStore databaseFull:v7];
    }

    else
    {
      [IMDMessageStore databaseNoLongerFull:v7];
    }
  }

  _Block_object_dispose(&v13, 8);
}

void sub_22B5DC294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5DC714(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5DC6BCLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B5DD724(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5CC8(a1);
    }
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Deleted %@ from index", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B5DD818(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5D34(a1);
    }
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Added %@ to index", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void *IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(uint64_t a1, void *a2)
{
  v217 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = IMDCreateIMItemFromIMDMessageRecordRefCopyAttachmentsIfNeededWithAccountLookup();
  v4 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
    if (qword_27D8CFF20 != -1)
    {
      sub_22B7D5DA0();
    }

    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v90 = NSStringFromClass(v7);
      v8 = [v5 isFromMe];
      v89 = [v5 sender];
      v88 = [v5 service];
      v9 = [v5 encrypted];
      v86 = [v5 handle];
      v87 = [v5 destinationCallerID];
      v85 = [v5 unformattedID];
      v84 = [v5 countryCode];
      v83 = [v5 roomName];
      v10 = [v5 flags];
      v11 = off_27D8CFF18;
      v74 = [v5 subject];
      v82 = v11();
      v12 = off_27D8CFF18;
      v73 = [v5 body];
      v72 = [v73 string];
      v81 = v12();
      v59 = [v5 messageID];
      v80 = [v5 guid];
      v54 = [v5 sortID];
      v71 = [v5 time];
      [v71 timeIntervalSinceReferenceDate];
      v14 = v13;
      v70 = [v5 timeDelivered];
      [v70 timeIntervalSinceReferenceDate];
      v16 = v15;
      v69 = [v5 timeRead];
      [v69 timeIntervalSinceReferenceDate];
      v18 = v17;
      v68 = [v5 timePlayed];
      [v68 timeIntervalSinceReferenceDate];
      v20 = v19;
      v79 = [v5 fileTransferGUIDs];
      v55 = [v5 isEmpty];
      v53 = [v5 isFinished];
      v61 = [v5 isSent];
      LODWORD(v11) = [v5 isRead];
      v67 = [v5 isDelivered];
      v66 = [v5 scheduleType];
      v65 = [v5 scheduleState];
      v64 = [v5 isAudioMessage];
      v63 = [v5 isPlayed];
      v62 = [v5 isFromMe];
      v60 = [v5 hasDataDetectorResults];
      v58 = [v5 wasDataDetected];
      v57 = [v5 wasDowngraded];
      v56 = [v5 isEmote];
      v52 = [v5 isExpirable];
      v51 = [v5 expireState];
      v78 = [v5 balloonBundleID];
      v77 = [v5 expressiveSendStyleID];
      v76 = [v5 timeExpressiveSendPlayed];
      v75 = [v5 bizIntent];
      v49 = [v5 locale];
      v47 = [v5 biaReferenceID];
      v46 = [v5 errorCode];
      v45 = [v5 cloudKitSyncState];
      v44 = [v5 isCorrupt];
      v43 = [v5 shouldSendMeCard];
      v41 = [v5 isSpam];
      v40 = [v5 hasUnseenMention];
      v39 = [v5 threadIdentifier];
      v38 = [v5 threadOriginator];
      v37 = [v5 replyCountsByPart];
      v35 = [v5 isStewie];
      v34 = [v5 stewieConversationID];
      v50 = [v5 syndicationRanges];
      v32 = [v50 componentsJoinedByString:{@", "}];
      v48 = [v5 syncedSyndicationRanges];
      v31 = [v48 componentsJoinedByString:{@", "}];
      v42 = [v5 dateEdited];
      [v42 timeIntervalSinceReferenceDate];
      v22 = v21;
      v36 = [v5 dateRecovered];
      [v36 timeIntervalSinceReferenceDate];
      v24 = v23;
      v33 = [v5 groupActivity];
      v29 = [v5 wasDetonated];
      v28 = [v5 isSOS];
      v27 = [v5 isCritical];
      v30 = [v5 fallbackHash];
      v94 = v8;
      v100 = v9;
      v112 = v10;
      v118 = v59;
      v122 = v54;
      *buf = 138428162;
      v92 = v90;
      v134 = v55;
      v93 = 1024;
      v136 = v53;
      v95 = 2112;
      v96 = v89;
      v97 = 2112;
      v98 = v88;
      v99 = 1024;
      v101 = 2112;
      v102 = v86;
      v103 = 2112;
      v104 = v87;
      v105 = 2112;
      v106 = v85;
      v107 = 2112;
      v108 = v84;
      v109 = 2112;
      v110 = v83;
      v138 = v61;
      v111 = 2048;
      v113 = 2112;
      v114 = v82;
      v115 = 2112;
      v116 = v81;
      v117 = 2048;
      v119 = 2112;
      v120 = v80;
      v121 = 2048;
      v123 = 2048;
      v124 = v14;
      v125 = 2048;
      v126 = v16;
      v127 = 2048;
      v128 = v18;
      v129 = 2048;
      v130 = v20;
      v131 = 2112;
      v132 = v79;
      v133 = 1024;
      v135 = 1024;
      v137 = 1024;
      v139 = 1024;
      v140 = v11;
      v141 = 1024;
      v142 = v67;
      v143 = 2048;
      v144 = v66;
      v145 = 2048;
      v146 = v65;
      v147 = 1024;
      v148 = v64;
      v149 = 1024;
      v150 = v63;
      v151 = 1024;
      v152 = v62;
      v153 = 1024;
      v154 = v60;
      v155 = 1024;
      v156 = v58;
      v157 = 1024;
      v158 = v57;
      v159 = 1024;
      v160 = v56;
      v161 = 1024;
      v162 = v52;
      v163 = 1024;
      v164 = v51;
      v165 = 2112;
      v166 = v78;
      v167 = 2112;
      v168 = v77;
      v169 = 2112;
      v170 = v76;
      v171 = 2112;
      v172 = v75;
      v173 = 2112;
      v174 = v49;
      v175 = 2112;
      v176 = v47;
      v177 = 1024;
      v178 = v46;
      v179 = 2048;
      v180 = v45;
      v181 = 1024;
      v182 = v44;
      v183 = 1024;
      v184 = v43;
      v185 = 1024;
      v186 = v41;
      v187 = 1024;
      v188 = v40;
      v189 = 2112;
      v190 = v39;
      v191 = 2112;
      v192 = v38;
      v193 = 2112;
      v194 = v37;
      v195 = 1024;
      v196 = v35;
      v197 = 2048;
      v198 = v34;
      v199 = 2112;
      v200 = v32;
      v201 = 2112;
      v202 = v31;
      v203 = 2048;
      v204 = v22;
      v205 = 2048;
      v206 = v24;
      v207 = 1024;
      v208 = v33 != 0;
      v209 = 1024;
      v210 = v29;
      v211 = 1024;
      v212 = v28;
      v213 = 1024;
      v214 = v27;
      v215 = 2048;
      v216 = [v30 length];
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Built IMItem from IMDMessageRecordRef: %@[outgoing: %{BOOL}d sender=%@; service=%@; encrypted=%{BOOL}d; handle=%@; destinationCallerID= %@, unformatted=%@; country=%@; roomName='%@'; flags=0x%llx; subject='%@' text='%@' messageID: %lld GUID:'%@' sortID: %lu date:'%f' date-delivered:'%f' date-read:'%f' date-played:'%f' transfer guids: '%@' empty: %{BOOL}d finished: %{BOOL}d sent: %{BOOL}d read: %{BOOL}d delivered: %{BOOL}d scheduleType: %lu, scheduleState: %lu, audio: %{BOOL}d played: %{BOOL}d from-me: %{BOOL}d DD results: %{BOOL}d DD Scanned: %{BOOL}d Downgraded: %{BOOL}d emote: %{BOOL}d expirable: %{BOOL}d expire-state: %d balloon-bundle-id: %@ expressive-send-style-id: %@ time-expressive-send-played: %@ bizIntent: %@ locale: %@ biaReferenceID: %@ error: %d sync-state %lli corrupt: %{BOOL}d shouldSendMeCard: %{BOOL}d isSpam: %{BOOL}d hasUnseenMention: %{BOOL}d threadIdentifier: %@, threadOriginator: %@, replyCountsByPart: %@, isChoros: %{BOOL}d, chorosConversationID: %ld, syndicationRanges: %@, syncedSyndicationRanges: %@, dateEdited: '%f', dateRecovered: '%f', hasGroupActivity: %{BOOL}d, wasDetonated: %{BOOL}d, isSOS: %{BOOL}d, isCritical %{BOOL}d, fallbackHash (len): %llu]", buf, 0x210u);
    }
  }

  objc_autoreleasePoolPop(v4);

  v25 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_22B5E0468(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(*(*(&v10 + 1) + 8 * v7), 0);
        if (AttachmentIfNeededRef)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [*(a1 + 32) addObject:AttachmentIfNeededRef];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22B5E2E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5E2EA0(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 firstObject];

  v4 = v7;
  if (v3)
  {
    v5 = [v7 firstObject];
    AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v5, 0);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), AttachmentIfNeededRef);
    }

    v4 = v7;
  }
}

void sub_22B5E31D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5E31F4(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = v3;
  v7 = [v3 reverseObjectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (![v12 itemType])
        {
          AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v12, 0);
          if (AttachmentIfNeededRef)
          {
            [*(*(*(a1 + 32) + 8) + 40) addObject:AttachmentIfNeededRef];
          }

          else
          {
            v14 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              if (v12)
              {
                v15 = @"non-nil";
              }

              else
              {
                v15 = @"nil";
              }

              if (v12)
              {
                v16 = [v12 itemType];
              }

              else
              {
                v16 = 0;
              }

              *buf = 138412546;
              v24 = v15;
              v25 = 2048;
              v26 = v16;
              _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Could not fetch IMMessageItem from IMDMessageRecord with item (%@) and type %lld", buf, 0x16u);
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_22B5E35FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5E3CC4(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [a2 reverseObjectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        if (![v8 itemType])
        {
          v9 = [v8 associatedMessageGUID];

          if (!v9)
          {
            v10 = [v8 guid];
            v11 = [v8 date];
            v12 = [v8 partCount];
            if (v10)
            {
              v13 = v11 == 0;
            }

            else
            {
              v13 = 1;
            }

            if (!v13)
            {
              v14 = [objc_alloc(MEMORY[0x277D1AA68]) initWithGUID:v10 date:v11 messagePartCount:v12];
              [*(a1 + 32) addObject:v14];
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_22B5E40D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5E40FC(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a2 reverseObjectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * v7) date];
        v9 = v8;
        if (v8)
        {
          v10 = *(*(a1 + 32) + 8);
          if (*(v10 + 40))
          {
            if ([v8 compare:?] != -1)
            {
              goto LABEL_11;
            }

            v10 = *(*(a1 + 32) + 8);
          }

          objc_storeStrong((v10 + 40), v9);
        }

LABEL_11:

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22B5E434C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5E4364(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    obj = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(a2, 0);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![obj type])
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
    }
  }
}

void sub_22B5E45F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5E4610(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = a2;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        if ([v7 itemType] == 6)
        {
          AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v7, 0);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [AttachmentIfNeededRef type] == 6)
          {
            v10 = *(*(a1 + 32) + 8);
            v11 = *(v10 + 40);
            *(v10 + 40) = AttachmentIfNeededRef;

            goto LABEL_16;
          }

          v9 = IMLogHandleForCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v19 = v7;
            v20 = 2112;
            v21 = AttachmentIfNeededRef;
            _os_log_error_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_ERROR, "Record of itemType TUConversation did not recover as IMTUConversationItem record: %@ recovered as: %@", buf, 0x16u);
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B5E4DFC()
{
  qword_281421388 = objc_alloc_init(MEMORY[0x277CBEB58]);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B5E6F18(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 88);
  if ((*(a1 + 80) - v3) >= 0x3E8)
  {
    LODWORD(v4) = 1000;
  }

  else
  {
    v4 = *(a1 + 80) - v3;
  }

  v5 = [*(a1 + 32) subarrayWithRange:?];
  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 96);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    *buf = 67109890;
    v30 = v7;
    v31 = 2112;
    v32 = v8;
    v33 = 2112;
    v34 = v9;
    v35 = 1024;
    v36 = v4;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Deleting batch %d of messages for chatIdentifiers %@ onServices %@. %d messages will be deleted.", buf, 0x22u);
  }

  IsFull = IMDSMSRecordIsFull();
  v11 = [MEMORY[0x277D1AA10] sharedInstance];
  [v11 deleteInteractionsWithMessageGUIDs:v5];

  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  IMDMessageRecordDeleteMessagesWithGUIDsChatIdentifiersOnServices();
  v14 = +[IMDBroadcastController sharedProvider];
  v15 = [v14 broadcasterForChatListeners];
  [v15 historicalMessageGUIDsDeleted:v5 chatGUIDs:*(a1 + 56) queryID:0];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = v5;
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [IMDMessageStore _updateCacheForMessageGUID:*(*(&v24 + 1) + 8 * i) fromMessage:0 toMessage:0 updateLastMessage:1 calculateUnreadCount:1, v24];
      }

      v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v18);
  }

  v21 = IMDSMSRecordIsFull() != 0;
  [*(a1 + 64) updateStampForGUIDs:*(a1 + 56)];
  sub_22B5DC120(IsFull != 0, v21);

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 64) _deleteMessagesWithGUIDs:*(a1 + 32) chatIdentifiers:*(a1 + 40) style:*(a1 + 104) onServices:*(a1 + 48) batchNumber:*(a1 + 96) + 1 completion:*(a1 + 72)];
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22B5E7620(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CF1B58] readMessageStream];
  v3 = [v2 source];

  v4 = [objc_alloc(MEMORY[0x277CF1A68]) initMarkUnreadWithIDSHandle:*(a1 + 32)];
  [v3 sendEvent:v4];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Donating Unread Message Event to Stream for %@.", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B5E8B58(uint64_t a1)
{
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_DEFAULT, "Scheduling a suppress DB invalidation timer", v6, 2u);
  }

  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel__suppressDBUpdateTimerFired selector:0 userInfo:0 repeats:60.0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_22B5E9474(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109378;
    v5[1] = v2 == 0;
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "Updated message GUID successfully: %{BOOL}d error: %@", v5, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B5E9BC4(uint64_t a1)
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel__clearExpiredTimeSensitiveMessages object:0];
  v2 = *(a1 + 32);

  return [v2 performSelector:sel__clearExpiredTimeSensitiveMessages withObject:0 afterDelay:0.0];
}

void sub_22B5E9CB0(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109378;
    v5[1] = v2 != 0;
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "Cleared expired time sensitive messages successfully: %{BOOL}d error: %@", v5, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_22B5E9E98()
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v0 = [v2 dateFromString:@"2025-07-01"];
  [v0 timeIntervalSinceNow];
  byte_27D8CFF08 = v1 > 0.0;
}

void sub_22B5EB2C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    [*(a1 + 32) addObject:v3];
  }
}

uint64_t sub_22B5EC3A4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) addEditHistoryToMessage:*(*(*(a1 + 48) + 8) + 40) editedPartIndex:a2 editType:*(a1 + 56) previousMessage:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void sub_22B5EC738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22B5EC764(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"p:%ld/%@", a2, *(a1 + 32)];
  v16 = WeakRetained;
  v6 = [WeakRetained messagesWithAssociatedGUID:v5 shouldLoadAttachments:0];
  v7 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v23 = [v6 count];
    v24 = 2048;
    v25 = a2;
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Found %ld associated message items for retracted message part %ld in edited message %@", buf, 0x20u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) guid];
        v14 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v23 = v13;
          v24 = 2112;
          v25 = v5;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Associated message item %@ refers to messagePartGUID %@ that was retracted. Deleting the associated message item.", buf, 0x16u);
        }

        [*(a1 + 40) addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B5ED23C(uint64_t a1, void *a2)
{
  v3 = [a2 balloonBundleID];
  v4 = [*(a1 + 32) balloonBundleID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id sub_22B5EDE1C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v6)
  {
    v10 = +[IMDAccountController sharedAccountController];
    v11 = [v10 accountForAccountID:v6];
LABEL_9:

    goto LABEL_10;
  }

  if (v7 && v8)
  {
    v12 = +[IMDServiceController sharedController];
    v10 = [v12 serviceWithName:v9];

    v13 = +[IMDAccountController sharedAccountController];
    v14 = [v13 accountsForLoginID:v7 onService:v10];
LABEL_8:
    v16 = v14;
    v11 = [v14 lastObject];

    goto LABEL_9;
  }

  if (v8)
  {
    v15 = +[IMDServiceController sharedController];
    v10 = [v15 serviceWithName:v9];

    v13 = +[IMDAccountController sharedAccountController];
    v14 = [v13 accountsForService:v10];
    goto LABEL_8;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

void *sub_22B5EDF84()
{
  result = MEMORY[0x231897B50]("MarcoLoggingStringForMessageData", @"Marco");
  off_27D8CFF18 = result;
  return result;
}

void sub_22B5EDFB4(uint64_t a1)
{
  if (!qword_281421448)
  {
    v2 = MEMORY[0x231897B50]("kCTMessageDatabaseFullNotification", @"CoreTelephony");
    if (v2)
    {
      v3 = *v2;
    }

    else
    {
      v3 = 0;
    }

    objc_storeStrong(&qword_281421448, v3);
  }

  v4 = qword_281421440;
  if (qword_281421440 || ((v5 = MEMORY[0x231897B50]("kCTMessageDatabaseFullPreference", @"CoreTelephony")) == 0 ? (v6 = 0) : (v6 = *v5), objc_storeStrong(&qword_281421440, v6), (v4 = qword_281421440) != 0))
  {
    v7 = CFPreferencesCopyValue(v4, @"com.apple.MobileSMS", @"mobile", *MEMORY[0x277CBF010]);
    if (v7)
    {
      v8 = v7;
      v9 = CFGetTypeID(v7);
      v10 = v9 == CFBooleanGetTypeID() && CFBooleanGetValue(v8) != 0;
      CFRelease(v8);
    }

    else
    {
      v10 = 0;
    }

    *(*(*(a1 + 32) + 8) + 24) = v10 != *(a1 + 40);
  }
}

uint64_t sub_22B5EE120()
{
  qword_281420FE0 = objc_alloc_init(IMDPhotosSyndicationLibraryChangeListener);

  return MEMORY[0x2821F96F8]();
}

void sub_22B5EE804(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = [*(a1 + 32) analysisFetchOptions];
  v2 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v14];
  if ([v2 count])
  {
    v3 = 0;
    while (1)
    {
      v4 = [v2 objectAtIndexedSubscript:v3];
      v5 = [*(a1 + 40) changeDetailsForObject:v4];
      if (v5)
      {
        break;
      }

LABEL_18:

      if (++v3 >= [v2 count])
      {
        goto LABEL_19;
      }
    }

    v6 = [v4 curationProperties];
    v7 = [v6 syndicationIdentifier];

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        v16 = v3;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Asset at index %lu had changes! syndicationIdentifier: %@", buf, 0x16u);
      }
    }

    v9 = +[IMDFileTransferCenter sharedInstance];
    v10 = [v9 transferForGUID:v7];

    v11 = IMOSLoggingEnabled();
    if (v10)
    {
      if (v11)
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v16 = v10;
          v17 = 2112;
          v18 = v4;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Ingesting new analysis data. transfer %@, asset: %@", buf, 0x16u);
        }

LABEL_16:
      }
    }

    else if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v16 = v7;
        v17 = 2112;
        v18 = v4;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "A syndication library change was received for a particular asset, but a corresponding file transfer was not found using the asset's syndicationIdentifier. syndicationIdentifier: %@, asset: %@", buf, 0x16u);
      }

      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_19:

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22B5EFAA8(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = a2;
  pthread_mutex_lock(&stru_27D8CC2C0);
  v5 = geteuid();
  if (!v5)
  {
    v5 = getuid();
  }

  if (qword_27D8CFF28)
  {
    Value = CFDictionaryGetValue(qword_27D8CFF28, v5);
    if (Value)
    {
      goto LABEL_13;
    }
  }

  else
  {
    qword_27D8CFF28 = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  }

  pw_dir = getenv("IPHONE_SHARED_RESOURCES_DIRECTORY");
  if (pw_dir || (v8 = getpwuid(v5)) != 0 && (pw_dir = v8->pw_dir) != 0)
  {
    Value = CFStringCreateWithFileSystemRepresentation(0, pw_dir);
    if (Value)
    {
      CFDictionarySetValue(qword_27D8CFF28, v5, Value);
      CFRelease(Value);
    }
  }

  else
  {
    Value = 0;
  }

LABEL_13:
  pthread_mutex_unlock(&stru_27D8CC2C0);
  v9 = CFStringCreateWithFormat(0, 0, @"%@/Library/Preferences/%@", Value, @"com.apple.MobileSMS");
  CFRelease(v9);
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Refresh: User setting for MMS changed", buf, 2u);
    }
  }

  [v4 updateMMSCapability];

  objc_autoreleasePoolPop(v3);
}

void sub_22B5EFC50(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = a2;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Refresh: CT MMS info changed", v6, 2u);
    }
  }

  [v4 updateMMSCapability];

  objc_autoreleasePoolPop(v3);
}

id _IMDHashParticipants(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 arrayByApplyingSelector:sel_ID];
  v5 = [v4 mutableCopy];

  if (![v3 length])
  {
    v6 = [MEMORY[0x277CCACA8] stringGUID];

    v3 = v6;
  }

  if (v5)
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    CFArrayAppendValue(v5, v3);
  }

  [(__CFArray *)v5 sortUsingSelector:sel_caseInsensitiveCompare_];
  v8 = [(__CFArray *)v5 componentsJoinedByString:@", "];
  v9 = [v8 dataUsingEncoding:4];
  v10 = [v9 SHA1HexString];

  return v10;
}

id sub_22B5F6F64(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 CNContactID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 ID];
  }

  v6 = v5;

  return v6;
}

void sub_22B5FCC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5FCC80(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 32);
        v6 = [*(a1 + 40) guid];
        v7 = *(a1 + 48);
        v10 = 138412802;
        v11 = v5;
        v12 = 2112;
        v13 = v6;
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEBUG, "Failed to unassign identifier %@ from chat record with guid %@ for domain %@", &v10, 0x20u);
      }
    }

    v8 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v8 forceAutoBugCaptureWithSubType:@"UnassignIdentifier" errorPayload:v3 type:@"ChatLookupFailure" context:@"No Context"];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22B5FCF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5FCF74(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(*(a1 + 32) + 120);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:v10];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 arrayByAddingObjectsFromArray:v6];

    v6 = v9;
  }

  [*(*(a1 + 32) + 120) setObject:v6 forKeyedSubscript:v10];

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

id SMSCopySanitizedContentLocation(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"cid:"])
  {
    v2 = [v1 mutableCopy];
    [v2 replaceOccurrencesOfString:@"cid:" withString:&stru_283F23018 options:2 range:{0, objc_msgSend(@"cid:", "length")}];
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

void *SMSCopySanitizedContentID(void *a1)
{
  v1 = [a1 mutableCopy];
  if ([v1 hasPrefix:@"<"])
  {
    [v1 replaceOccurrencesOfString:@"<" withString:&stru_283F23018 options:2 range:{0, 1}];
  }

  if ([v1 hasSuffix:@">"])
  {
    [v1 replaceOccurrencesOfString:@">" withString:&stru_283F23018 options:2 range:{objc_msgSend(v1, "length") - 1, 1}];
  }

  return v1;
}

uint64_t sub_22B5FE164()
{
  qword_281421288 = os_log_create("com.apple.Messages", "IMBalloonPluginPipelineParameter");

  return MEMORY[0x2821F96F8]();
}

void sub_22B5FE838(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t sub_22B5FE898()
{
  qword_281420FE8 = objc_alloc_init(IMDCKRecordSaltManager);

  return MEMORY[0x2821F96F8]();
}

void sub_22B5FEB3C(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22B5FED50;
    v13[3] = &unk_2787037B8;
    v9 = v5;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v14[0] = v9;
    v14[1] = v10;
    v15 = v11;
    dispatch_async(MEMORY[0x277D85CD0], v13);

    v8 = v14;
    goto LABEL_9;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "*** Error fetching user ID %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) setCachedSalt:0];
  if (*(a1 + 40))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B5FED38;
    block[3] = &unk_2787028B0;
    v18 = *(a1 + 40);
    v17 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v8 = &v18;
LABEL_9:
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_22B5FED50(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) recordName];
  if ([v2 length])
  {
    [*(a1 + 40) setCachedSalt:v2];
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = [*(a1 + 40) cachedSalt];
        v10 = 138412290;
        v11 = v4;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Cached salt : %@", &v10, 0xCu);
      }
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5, 1, 0);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "** Fetched salt was 0 length **", &v10, 2u);
      }
    }

    [*(a1 + 40) setCachedSalt:0];
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMDCKRecordSaltManager" code:1 userInfo:0];
      (*(v7 + 16))(v7, 0, v8);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22B5FF1F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = objc_alloc(MEMORY[0x277CCA9B8]);
    if (*(a1 + 40))
    {
      v4 = 5;
    }

    else
    {
      v4 = 6;
    }

    v5 = [v3 initWithDomain:*MEMORY[0x277D19D08] code:v4 userInfo:0];
    (*(v1 + 16))(v1, 0, v5);
  }
}

void sub_22B5FF290(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_22B5FF320;
  v2[3] = &unk_278702EA0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _fetchLatestSaltFromCloudKitAndPersistWithCompletion:v2];
}

void sub_22B5FF320(uint64_t a1, char a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) cachedSalt];
      *buf = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Fetched salt %@, error %@", buf, 0x16u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5FF4AC;
  block[3] = &unk_278703FA8;
  v8 = *(a1 + 40);
  v14 = a2;
  v12 = v5;
  v13 = v8;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B5FF4AC(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

void sub_22B5FF584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v8 = IMDChatLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 138413058;
      v12 = a3;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = a2;
      v17 = 2112;
      v18 = a4;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Attempt to update domain identifiers from CKRecord failed: Failed to assign new identifier %@ to chat record with GUID %@ for domain %@ : %@", &v11, 0x2Au);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_22B5FF660(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = IMDChatLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = a2;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Attempt to add service name of chat into chat services failed for chat with guid %@: %@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B5FF71C()
{
  qword_281420FF0 = objc_alloc_init(IMDChatRegistry);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B5FFC74(uint64_t a1)
{
  v2 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_DEFAULT, "Deleted history automatically, re-syncing chats", v4, 2u);
  }

  return [*(a1 + 32) _forceReloadChats:1];
}

uint64_t sub_22B5FFCEC(uint64_t a1)
{
  v2 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_DEFAULT, "Last addressed handle/simIDs of chats got modified, force reloading chats", v4, 2u);
  }

  return [*(a1 + 32) _forceReloadChats:1];
}

uint64_t sub_22B5FFD64(uint64_t a1)
{
  v2 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_DEFAULT, "Looks like we passed first unlock before chat registry was initialized. Doing first-unlock tasks", v4, 2u);
  }

  return [*(a1 + 32) _performPostUnlockHousekeeping];
}

BOOL sub_22B600F70(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) allExistingChatsWithIdentifier:a2];
  v3 = [v2 count] != 0;

  return v3;
}

void sub_22B6018A8(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _addChatsFromCacheMisses:a2 preferExistingChats:1];
  (*(*(a1 + 40) + 16))();
}

id sub_22B603220(uint64_t a1, void *a2)
{
  v2 = [a2 ID];
  v3 = [v2 im_stripCategoryLabel];

  return v3;
}

void sub_22B603E04(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B603CD8);
  }

  _Block_object_dispose(&v3, 8);
  _Block_object_dispose(&v4, 8);
  _Block_object_dispose(&v5, 8);
  _Unwind_Resume(exc_buf);
}

void sub_22B603E74(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if ([v4 style] == 43)
  {
    v5 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v6 = [v5 isOneChatEnabled];

    if (v6 & 1) != 0 || ([v4 serviceName], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", *(a1 + 32)), v7, (v8))
    {
      v9 = *(a1 + 40);
      v10 = [v4 participants];
      v11 = [v9 _participantIDSetFromHandles:v10 toIdentifier:*(a1 + 48)];

      if ([*(a1 + 56) isEqualToSet:v11])
      {
        if (*(*(*(a1 + 72) + 8) + 24) == 1 && ![v4 isNewerThan:*(*(*(a1 + 80) + 8) + 40)])
        {
          goto LABEL_21;
        }

        v12 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138412290;
          v23 = v4;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, " ==> Found exact match based on groupID and participants: %@", &v22, 0xCu);
        }

        *(*(*(a1 + 72) + 8) + 24) = 1;
        v13 = a1 + 80;
      }

      else
      {
        v13 = a1 + 80;
        if (*(*(*(a1 + 80) + 8) + 40) && ((*(*(*(a1 + 72) + 8) + 24) & 1) != 0 || ![v4 isNewerThan:?]))
        {
          goto LABEL_21;
        }

        v15 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138412290;
          v23 = v4;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, " ==> Found a newer chat based on groupID: %@", &v22, 0xCu);
        }
      }

      objc_storeStrong((*(*v13 + 8) + 40), a2);
LABEL_21:

      goto LABEL_22;
    }

    v17 = *(*(a1 + 64) + 8);
    if (*(v17 + 40))
    {
      if (![v4 isNewerThan:?])
      {
        v14 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v4 guid];
          v21 = [v4 serviceName];
          v22 = 138412546;
          v23 = v20;
          v24 = 2112;
          v25 = v21;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, " ==> Ignoring %@, has incorrect service: %@", &v22, 0x16u);
        }

        goto LABEL_31;
      }

      v17 = *(*(a1 + 64) + 8);
    }

    objc_storeStrong((v17 + 40), a2);
    v14 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v4 guid];
      v19 = [v4 serviceName];
      v22 = 138412546;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, " ==> Fallback %@, has incorrect service: %@", &v22, 0x16u);
    }

LABEL_31:

    goto LABEL_22;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = v4;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, " ==> ERROR sanity check failed: ChatRegistry returned chat that did not match inputs: %@", &v22, 0xCu);
    }

    goto LABEL_31;
  }

LABEL_22:

  v16 = *MEMORY[0x277D85DE8];
}

id sub_22B604DAC()
{
  v0 = IMChatCanonicalIDSIDsForAddress();
  v1 = [v0 _stripFZIDPrefix];
  v2 = [v1 im_stripCategoryLabel];

  return v2;
}

id sub_22B604E14(uint64_t a1, void *a2)
{
  v2 = [a2 ID];
  v3 = [v2 im_stripCategoryLabel];

  return v3;
}

id sub_22B605278()
{
  v0 = IMChatCanonicalIDSIDsForAddress();
  v1 = [v0 _stripFZIDPrefix];

  return v1;
}

void sub_22B605AA4(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B6058B0);
  }

  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(exc_buf);
}

uint64_t sub_22B605B00(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void sub_22B6071AC(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 count])
  {
    v3 = [v5 firstObject];
    v4 = [v3 date];
    [*(a1 + 32) setLastMessageTimeStampOnLoad:{objc_msgSend(v4, "__im_nanosecondTimeInterval")}];
  }
}

id sub_22B607528(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v5 = [v3 guid];
  v6 = [v4 objectForKey:v5];

  v7 = IMChatRegistryLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = [v3 guid];
      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Adding cache missed chat but existing chat found with GUID %@, preferring existing chat", &v15, 0xCu);
    }

    v10 = v6;
  }

  else
  {
    if (v8)
    {
      v11 = [v3 guid];
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Adding cache missed chat, no existing chat found with GUID %@", &v15, 0xCu);
    }

    [*(a1 + 32) addChat:v3 firstLoad:0 store:0];
    v10 = v3;
  }

  v12 = v10;

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id sub_22B609310(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v14 + 1) + 8 * i);
          v9 = [v8 ID];
          v10 = [v9 length];

          if (v10)
          {
            v11 = [v8 ID];
            [v2 addObject:v11];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_22B6096B0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory("Chat");
      v4 = objc_claimAutoreleasedReturnValue(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = 138412290;
        v6 = v2;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "*********** Caught exception while fixing up chat participants on client connection %@ **********", &v5, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x22B609668);
  }

  _Unwind_Resume(a1);
}

void sub_22B60A86C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40) == 1 && (*(v2 + 42) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Setting up observer for loaded notification...", buf, 2u);
      }
    }

    *buf = 0;
    v15 = buf;
    v16 = 0x3032000000;
    v17 = sub_22B4D7740;
    v18 = sub_22B4D78FC;
    v19 = 0;
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = [MEMORY[0x277CCABD8] mainQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_22B60AA64;
    v11[3] = &unk_2787063E8;
    v8 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v13 = buf;
    v12 = v8;
    v9 = [v6 addObserverForName:@"__kIMDChatsLoadedNotification" object:0 queue:v7 usingBlock:v11];
    v10 = *(v15 + 5);
    *(v15 + 5) = v9;

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void sub_22B60AA64(void *a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Notified that chats were loaded", buf, 2u);
    }
  }

  v5 = *(a1[4] + 42);
  v6 = IMOSLoggingEnabled();
  if (v5 == 1)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Chats are done loading! Calling completionHandler", v11, 2u);
      }
    }

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 removeObserver:*(*(a1[6] + 8) + 40)];

    (*(a1[5] + 16))();
  }

  else if (v6)
  {
    v9 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Chats aren't done loading, this is likely because of first unlock. Continuing to wait", v10, 2u);
    }
  }
}

void sub_22B60C0EC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v5 = objc_begin_catch(exception_object);
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *(v4 - 96) = 138412290;
        *(v3 + 4) = v5;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Unable to add IMDHandle to _idToHandlesMap due to exception %@ -- nilling idToHandlesMap", (v4 - 96), 0xCu);
      }
    }

    [*(v2 + 56) removeAllObjects];

    objc_end_catch();
    JUMPOUT(0x22B60C0B0);
  }

  _Unwind_Resume(exception_object);
}

void sub_22B60C988(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Done fetching latest salt after unlock, fetched %{BOOL}d error %@", v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_22B60CA9C()
{
  v24[1] = *MEMORY[0x277D85DE8];
  v17 = [MEMORY[0x277D1ACB8] sharedInstance];
  if ([v17 isUnderFirstDataProtectionLock])
  {
    v0 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v1 = IMGetDomainBoolForKey();

    if ((v1 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v2 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Making all attachments class C", buf, 2u);
        }
      }

      v3 = [MEMORY[0x277CCAA00] defaultManager];
      v4 = [v3 enumeratorAtPath:@"/var/mobile/Library/SMS/Attachments"];

      v5 = [v4 nextObject];
      if (v5)
      {
        v6 = *MEMORY[0x277CCA1B0];
        v7 = *MEMORY[0x277CCA1A0];
        do
        {
          v8 = objc_autoreleasePoolPush();
          v9 = [MEMORY[0x277CCAA00] defaultManager];
          v23 = v6;
          v24[0] = v7;
          v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
          v11 = [@"/var/mobile/Library/SMS/Attachments" stringByAppendingPathComponent:v5];
          v18 = 0;
          v12 = [v9 setAttributes:v10 ofItemAtPath:v11 error:&v18];
          v13 = v18;

          if ((v12 & 1) == 0 && IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v20 = v5;
              v21 = 2112;
              v22 = v13;
              _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Failed making file class C: %@ with error %@", buf, 0x16u);
            }
          }

          objc_autoreleasePoolPop(v8);
          v15 = [v4 nextObject];

          v5 = v15;
        }

        while (v15);
      }

      IMSetDomainBoolForKey();
    }

    v16 = *MEMORY[0x277D85DE8];
  }
}

void sub_22B60E534(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B60E4E4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22B60EFC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v5 firstObject];
  v9 = [v6 firstObject];
  v10 = *(a1 + 32);
  v11 = [v8 pinningIdentifier];
  v12 = [v10 containsObject:v11];

  v13 = *(a1 + 32);
  v14 = [v9 pinningIdentifier];
  v15 = [v13 containsObject:v14];

  if (!v12 || v15)
  {
    if (v12 & 1 | ((v15 & 1) == 0))
    {
      v16 = [v8 compareBySequenceNumberAndDateDescending:v9];
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = -1;
  }

  objc_autoreleasePoolPop(v7);
  return v16;
}

uint64_t sub_22B60F0D0(uint64_t a1, void *a2)
{
  v2 = a2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = objc_autoreleasePoolPush();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B60F1B4;
  v6[3] = &unk_2787064F8;
  v6[4] = &v7;
  [v2 enumerateObjectsUsingBlock:v6];
  objc_autoreleasePoolPop(v3);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_22B60F19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22B60F1B4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 unreadCount];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_22B60F2C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 sortedArrayUsingComparator:&unk_283F1A5C8];
  [*(a1 + 32) setObject:v6 forKey:v5];
}

void sub_22B60F774(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B60F6FCLL);
  }

  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(exc_buf);
}

void sub_22B60F7B4(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) repairInconsistentMergedChatsIfNecessary:v5];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    v11 = *MEMORY[0x277D198D8];
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        v15 = [v13 copyDictionaryRepresentation:{1, v17}];
        if (v15)
        {
          if ([v6 count])
          {
            [v15 setObject:v6 forKeyedSubscript:v11];
          }

          [*(*(*(a1 + 40) + 8) + 40) addObject:v15];
        }

        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22B60FF2C(uint64_t a1, void *a2, _BYTE *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(a1 + 32) count] < *(a1 + 40))
  {
    v6 = [v5 _ckUniqueID];
    if (v6)
    {
      v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
      if (v7)
      {
        v8 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412290;
          v19 = v6;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "We already have a chat to upload for groupID: %@ so we need to compare last message time's", &v18, 0xCu);
        }

        v9 = [v5 isOlderThan:v7];
        v10 = IMChatRegistryLogHandle();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        if (v9)
        {
          if (v11)
          {
            v12 = [v7 guid];
            v13 = [v5 guid];
            v18 = 138412546;
            v19 = v12;
            v20 = 2112;
            v21 = v13;
            _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "The current chat we have stored has a last message that is later than it's sibling so we don't want to write it to CloudKit and want to replace it with it's sibling. Current GUID: %@ Sibling GUID: %@", &v18, 0x16u);
          }

          [v5 updateCloudKitSyncState:1];
          goto LABEL_19;
        }

        if (v11)
        {
          v15 = [v7 guid];
          v16 = [v5 guid];
          v18 = 138412546;
          v19 = v15;
          v20 = 2112;
          v21 = v16;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "We are going to replace the current chat: %@ with: %@ so we should mark it as modified so we don't modify it twice", &v18, 0x16u);
        }

        [v7 updateCloudKitSyncState:1];
      }

      [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_20:

        goto LABEL_21;
      }

      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v14 = NSStringFromSelector(*(a1 + 48));
        v18 = 138412546;
        v19 = v14;
        v20 = 2112;
        v21 = v5;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "%@: Chat's _ckUniqueID is nil: %@", &v18, 0x16u);
      }
    }

LABEL_19:

    goto LABEL_20;
  }

  *a3 = 1;
LABEL_21:

  v17 = *MEMORY[0x277D85DE8];
}

void sub_22B6106A0(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) service];
      v6 = [*(a1 + 32) guid];
      v8 = 138412802;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Failed to update chat services table with service %@ for chat with guid %@ error: %@", &v8, 0x20u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B6107C4(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) serviceName];
      v6 = [*(a1 + 32) guid];
      v8 = 138412802;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Failed to add sync chat slice with service %@ for chat with guid %@ error: %@", &v8, 0x20u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B612360(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Marking existing chat %@ as needing sync from deferred state ", &v5, 0xCu);
    }
  }

  [v2 updateCloudKitSyncState:0];

  v4 = *MEMORY[0x277D85DE8];
}

void sub_22B6137A4(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 138412546;
      v10 = v5;
      v11 = 2048;
      v12 = a3;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Found GUID for attachment part, associating with attachment: %@ at part id %lu", &v9, 0x16u);
    }
  }

  v7 = *(a1 + 32);
  IMDMessageRecordAssociateMessageWithGUIDToAttachmentWithGUID();

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B615110()
{
  result = IMSharedHelperContactsBasedMergingEnabled();
  byte_2814213C9 = result;
  return result;
}

void sub_22B616A0C(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Accepted contacts changed.", v4, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performCheckForContactChangesWithChangeType:1];
}

void sub_22B616D18(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Computed chats to merge. Broadcasting to clients", buf, 2u);
      }
    }

    v9 = +[IMDBroadcastController sharedProvider];
    v10 = [v9 broadcasterForChatListeners];
    [v10 chatsNeedRemerging:v4 groupedChats:v5];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "No chats to merge/un-merge. NOT Broadcasting to clients", v11, 2u);
    }
  }

LABEL_8:
}