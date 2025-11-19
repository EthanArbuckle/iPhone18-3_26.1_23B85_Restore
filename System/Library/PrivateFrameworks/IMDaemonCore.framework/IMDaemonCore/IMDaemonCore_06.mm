void sub_22B6A48F8(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 handler:a1[4] incomingSMSFilteringSettingsMessage:a1[5] fromToken:a1[6]];
        }

        else
        {
          v8 = IMLogHandleForCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v9 = NSStringFromSelector(sel_handler_incomingSMSFilteringSettingsMessage_fromToken_);
            *buf = 138412546;
            v16 = v9;
            v17 = 2112;
            v18 = v7;
            _os_log_debug_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "Can't find selector %@ in handler: %@", buf, 0x16u);
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_22B6A4BB0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v76 = *MEMORY[0x277D85DE8];
  v60 = a2;
  v58 = a3;
  v14 = a4;
  v15 = a5;
  v56 = a6;
  v57 = a7;
  v59 = a8;
  v16 = [v14 objectForKeyedSubscript:@"C"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_5:
    v18 = [v14 objectForKeyedSubscript:@"D"];
    v74 = 0;
    v19 = [IMDRelayGroupMutationMessage mutationMessageFromData:v18 error:&v74];
    v20 = v74;
    if (v20 || !v19)
    {
      v21 = v19;
      v19 = v20;
    }

    else
    {
      v21 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.ReceivedRelayGroupMutation", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v21, &state);
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Using Block relay group mutation", buf, 2u);
        }
      }

      v23 = [v19 service];
      v24 = [v60 _handlerForServiceName:v23];

      if (objc_opt_respondsToSelector())
      {
        v25 = objc_opt_class();
        v26 = sub_22B69C444(v25, v15, @"e");
        v27 = objc_opt_class();
        v28 = sub_22B69C444(v27, v15, @"H");
        v29 = objc_opt_class();
        v30 = sub_22B69C444(v29, v15, qword_27D8CC860);
        LOBYTE(v46) = 0;
        [v24 handler:v60 incomingGroupMutationMessage:v19 timeStamp:v26 storageContext:v28 fromToken:v59 fromID:v30 isInProxyMode:v46];
      }

      os_activity_scope_leave(&state);
    }

    goto LABEL_42;
  }

  v17 = [v16 intValue];
  switch(v17)
  {
    case 2:
      v18 = [v14 objectForKeyedSubscript:@"D"];
      v66 = 0;
      v21 = [IMDRelayServiceReachabilityResponse responseFromData:v18 error:&v66];
      v19 = v66;
      if (v19 || !v21)
      {
        goto LABEL_42;
      }

      v34 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.RelayReachabilityResponse", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v47 = v34;
      os_activity_scope_enter(v34, &state);
      v53 = [v15 objectForKey:@"U"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v35 = MEMORY[0x277CBEA90];
        v51 = [v15 objectForKey:@"U"];
        v36 = [v35 _IDSDataFromBase64String:v51];
      }

      else
      {
        v51 = [v15 objectForKey:@"U"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v49 = 0;
          v38 = 0;
          goto LABEL_36;
        }

        v36 = [v15 objectForKey:@"U"];
      }

      v38 = v36;
      v49 = isKindOfClass ^ 1;
LABEL_36:
      v42 = JWUUIDPushObjectToString();
      v43 = objc_opt_class();
      v44 = sub_22B69C444(v43, v15, qword_27D8CC860);
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = sub_22B6A58D4;
      v61[3] = &unk_278707BD8;
      v62 = v60;
      v19 = v21;
      v63 = v19;
      v64 = v59;
      v65 = v15;
      [v62 _calculateHandlersForMessage:v14 messageGUID:v42 fromIdentifier:v44 command:v58 completionBlock:v61];

      if (v49)
      {
      }

      if (isKindOfClass)
      {
      }

      goto LABEL_41;
    case 1:
      v18 = [v14 objectForKeyedSubscript:@"D"];
      v72 = 0;
      v21 = [IMDRelayServiceReachabilityRequest requestFromData:v18 error:&v72];
      v19 = v72;
      if (v19 || !v21)
      {
        goto LABEL_42;
      }

      v31 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.RelayReachabilityRequest", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v47 = v31;
      os_activity_scope_enter(v31, &state);
      v52 = [v15 objectForKey:@"U"];
      objc_opt_class();
      v54 = objc_opt_isKindOfClass();
      if (v54)
      {
        v32 = MEMORY[0x277CBEA90];
        v50 = [v15 objectForKey:@"U"];
        v33 = [v32 _IDSDataFromBase64String:v50];
      }

      else
      {
        v50 = [v15 objectForKey:@"U"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v48 = 0;
          v37 = 0;
          goto LABEL_30;
        }

        v33 = [v15 objectForKey:@"U"];
      }

      v37 = v33;
      v48 = v54 ^ 1;
LABEL_30:
      v39 = JWUUIDPushObjectToString();
      v40 = objc_opt_class();
      v41 = sub_22B69C444(v40, v15, qword_27D8CC860);
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = sub_22B6A547C;
      v67[3] = &unk_278707BD8;
      v68 = v60;
      v19 = v21;
      v69 = v19;
      v70 = v59;
      v71 = v15;
      [v68 _calculateHandlersForMessage:v14 messageGUID:v39 fromIdentifier:v41 command:v58 completionBlock:v67];

      if (v48)
      {
      }

      if (v54)
      {
      }

LABEL_41:
      os_activity_scope_leave(&state);
      v21 = v47;
LABEL_42:

      break;
    case 0:
      goto LABEL_5;
  }

  v45 = *MEMORY[0x277D85DE8];
}

void sub_22B6A547C(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = a2;
  v30 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v30)
  {
    v29 = *v33;
    *&v3 = 138412802;
    v22 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v32 + 1) + 8 * v4);
        if (objc_opt_respondsToSelector())
        {
          v6 = *(a1 + 32);
          v27 = *(a1 + 48);
          v28 = *(a1 + 40);
          v7 = objc_opt_class();
          v8 = sub_22B69C444(v7, *(a1 + 56), qword_27D8CC860);
          v9 = objc_opt_class();
          v10 = sub_22B69C444(v9, *(a1 + 56), qword_27D8CC858);
          v11 = [*(a1 + 56) objectForKey:{@"U", v22}];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v13 = MEMORY[0x277CBEA90];
            v14 = [*(a1 + 56) objectForKey:@"U"];
            v24 = [v13 _IDSDataFromBase64String:v14];
            v26 = v14;
            goto LABEL_14;
          }

          v16 = [*(a1 + 56) objectForKey:@"U"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [*(a1 + 56) objectForKey:@"U"];
            v31 = v16;
LABEL_14:
            v17 = isKindOfClass ^ 1;
          }

          else
          {
            v17 = 0;
            v31 = v16;
          }

          v18 = JWUUIDPushObjectToString();
          [v5 handler:v6 incomingReachabilityRequest:v28 fromToken:v27 fromIdentifier:v8 toIdentifier:v10 messageGUID:v18];

          if (v17)
          {
          }

          v19 = v31;
          if (isKindOfClass)
          {

            v19 = v26;
          }

          goto LABEL_21;
        }

        v15 = IMLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v20 = NSStringFromSelector(sel_handler_incomingReachabilityRequest_fromToken_fromIdentifier_toIdentifier_messageGUID_);
          *buf = 138412546;
          v37 = v20;
          v38 = 2112;
          v39 = v5;
          _os_log_debug_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEBUG, "Can't find selector %@ in handler: %@", buf, 0x16u);
        }

LABEL_21:
        ++v4;
      }

      while (v30 != v4);
      v30 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v30);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_22B6A58D4(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = a2;
  v26 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v26)
  {
    v25 = *v29;
    *&v3 = 138412802;
    v20 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v28 + 1) + 8 * v4);
        if (objc_opt_respondsToSelector())
        {
          v6 = *(a1 + 32);
          v7 = *(a1 + 40);
          v8 = *(a1 + 48);
          v9 = [*(a1 + 56) objectForKey:{@"U", v20}];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v11 = MEMORY[0x277CBEA90];
            v12 = [*(a1 + 56) objectForKey:@"U"];
            v22 = [v11 _IDSDataFromBase64String:v12];
            v24 = v12;
            goto LABEL_14;
          }

          v14 = [*(a1 + 56) objectForKey:@"U"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [*(a1 + 56) objectForKey:@"U"];
            v27 = v14;
LABEL_14:
            v15 = isKindOfClass ^ 1;
          }

          else
          {
            v15 = 0;
            v27 = v14;
          }

          v16 = JWUUIDPushObjectToString();
          [v5 handler:v6 incomingReachabilityResponse:v7 fromToken:v8 messageGUID:v16];

          if (v15)
          {
          }

          v17 = v27;
          if (isKindOfClass)
          {

            v17 = v24;
          }

          goto LABEL_21;
        }

        v13 = IMLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v18 = NSStringFromSelector(sel_handler_incomingReachabilityResponse_fromToken_messageGUID_);
          *buf = 138412546;
          v33 = v18;
          v34 = 2112;
          v35 = v5;
          _os_log_debug_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEBUG, "Can't find selector %@ in handler: %@", buf, 0x16u);
        }

LABEL_21:
        ++v4;
      }

      while (v26 != v4);
      v26 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v26);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_22B6A5D14()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v1 setObject:&unk_283F1AF48 forKey:IMDRelayLocalMessageTypeIncomingTextMessage];
  [v1 setObject:&unk_283F1AF68 forKey:IMDRelayLocalMessageTypeOutgoing];
  [v1 setObject:&unk_283F1AF88 forKey:IMDRelayLocalMessageTypeOutgoingDownload];
  [v1 setObject:&unk_283F1AFA8 forKey:IMDRelayLocalMessageTypeIncomingDownloadMessage];
  [v1 setObject:&unk_283F1AFC8 forKey:IMDRelayLocalMessageTypeSent];
  [v1 setObject:&unk_283F1AFE8 forKey:IMDRelayLocalMessageTypeRead];
  [v1 setObject:&unk_283F1B008 forKey:IMDRelayLocalMessageTypeRemoteRead];
  [v1 setObject:&unk_283F1B028 forKey:IMDRelayLocalMessageTypeError];
  [v1 setObject:&unk_283F1B048 forKey:IMDRelayLocalMessageTypeRemoteFileRequest];
  [v1 setObject:&unk_283F1B068 forKey:IMDRelayLocalMessageTypeRemoteFileResponse];
  v2 = qword_27D8D0030;
  qword_27D8D0030 = v1;

  objc_autoreleasePoolPop(v0);
}

void sub_22B6A5E80(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v29 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22B6A60B8;
  v25[3] = &unk_278707C78;
  v21 = v14;
  v26 = v21;
  v22 = v16;
  v27 = v22;
  v23 = v17;
  v28 = v23;
  [v21 _calculateHandlersForLocalMessage:v22 userInfo:v23 completionBlock:v25];

  v24 = *MEMORY[0x277D85DE8];
}

void sub_22B6A5FF0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v17;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Exception handling incomming local incoming dl push: %@", &buf, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x22B6A5F98);
  }

  _Unwind_Resume(a1);
}

void sub_22B6A60B8(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v6 = *v16;
    *&v5 = 138412802;
    v14 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v10 = *(a1 + 32);
          v9 = *(a1 + 40);
          v11 = objc_opt_class();
          v12 = sub_22B69C444(v11, *(a1 + 48), @"H");
          [v8 handler:v10 localIncommingMessage:v9 storageContext:{v12, v14, v15}];
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22B6A6310(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, char a9)
{
  v31 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_22B6A6550;
  v26[3] = &unk_278707CA0;
  v22 = v15;
  v27 = v22;
  v23 = v17;
  v28 = v23;
  v30 = a9;
  v24 = v18;
  v29 = v24;
  [v22 _calculateHandlersForLocalMessage:v23 userInfo:v24 completionBlock:v26];

  v25 = *MEMORY[0x277D85DE8];
}

void sub_22B6A6488(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v17;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Exception handling incomming local outgoing push: %@", &buf, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x22B6A6430);
  }

  _Unwind_Resume(a1);
}

void sub_22B6A6550(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v5 = *v17;
    *&v4 = 138412802;
    v14 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v9 = *(a1 + 32);
          v8 = *(a1 + 40);
          v10 = *(a1 + 56);
          v11 = objc_opt_class();
          v12 = sub_22B69C444(v11, *(a1 + 48), @"H");
          [v7 handler:v9 localOutgoingMessage:v8 isBeingReplayed:v10 storageContext:{v12, v14}];
        }

        ++v6;
      }

      while (v3 != v6);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22B6A67B8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, char a9)
{
  v33 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Using outDownloadMessageBlock", buf, 2u);
    }
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_22B6A6A68;
  v27[3] = &unk_278707CA0;
  v23 = v15;
  v28 = v23;
  v24 = v17;
  v29 = v24;
  v31 = a9;
  v25 = v18;
  v30 = v25;
  [v23 _calculateHandlersForLocalMessage:v24 userInfo:v25 completionBlock:v27];

  v26 = *MEMORY[0x277D85DE8];
}

void sub_22B6A6A68(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v5 = *v17;
    *&v4 = 138412802;
    v14 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v9 = *(a1 + 32);
          v8 = *(a1 + 40);
          v10 = *(a1 + 56);
          v11 = objc_opt_class();
          v12 = sub_22B69C444(v11, *(a1 + 48), @"H");
          [v7 handler:v9 localOutgoingDownloadMessage:v8 isBeingReplayed:v10 storageContext:{v12, v14}];
        }

        ++v6;
      }

      while (v3 != v6);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22B6A6CD0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v31 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Using localIncomingDownloadMessageBlock", buf, 2u);
    }
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_22B6A6F78;
  v26[3] = &unk_278707C78;
  v22 = v14;
  v27 = v22;
  v23 = v16;
  v28 = v23;
  v24 = v17;
  v29 = v24;
  [v22 _calculateHandlersForLocalMessage:v23 userInfo:v24 completionBlock:v26];

  v25 = *MEMORY[0x277D85DE8];
}

void sub_22B6A6F78(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v6 = *v16;
    *&v5 = 138412802;
    v14 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v10 = *(a1 + 32);
          v9 = *(a1 + 40);
          v11 = objc_opt_class();
          v12 = sub_22B69C444(v11, *(a1 + 48), @"H");
          [v8 handler:v10 localIncomingDownloadMessage:v9 storageContext:{v12, v14, v15}];
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22B6A71D0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v29 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22B6A7408;
  v25[3] = &unk_278707C78;
  v21 = v14;
  v26 = v21;
  v22 = v16;
  v27 = v22;
  v23 = v17;
  v28 = v23;
  [v21 _calculateHandlersForLocalMessage:v22 userInfo:v23 completionBlock:v25];

  v24 = *MEMORY[0x277D85DE8];
}

void sub_22B6A7340(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v17;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Exception handling incomming local sent message push: %@", &buf, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x22B6A72E8);
  }

  _Unwind_Resume(a1);
}

void sub_22B6A7408(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v16 = *v18;
    *&v4 = 138412802;
    v14 = v4;
    do
    {
      v5 = 0;
      do
      {
        if (*v18 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          v7 = *(a1 + 32);
          v8 = [*(a1 + 40) _stringForKey:{IMDRelayLocalMessageDictionaryGUIDKey, v14}];
          v9 = [*(a1 + 40) objectForKeyedSubscript:IMDRelayMessageDictionaryInterworkedKey];
          v10 = [v9 BOOLValue];
          v11 = objc_opt_class();
          v12 = sub_22B69C444(v11, *(a1 + 48), @"H");
          [v6 handler:v7 localMessageSent:v8 wasInterworked:v10 storageContext:v12];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22B6A76B8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v29 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22B6A78F0;
  v25[3] = &unk_278707C78;
  v21 = v14;
  v26 = v21;
  v22 = v16;
  v27 = v22;
  v23 = v17;
  v28 = v23;
  [v21 _calculateHandlersForLocalMessage:v22 userInfo:v23 completionBlock:v25];

  v24 = *MEMORY[0x277D85DE8];
}

void sub_22B6A7828(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v17;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Exception handling incomming local message read push: %@", &buf, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x22B6A77D0);
  }

  _Unwind_Resume(a1);
}

void sub_22B6A78F0(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v5 = *v18;
    *&v4 = 138412802;
    v15 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = *(a1 + 32);
          v9 = [*(a1 + 40) _stringForKey:{IMDRelayLocalMessageDictionaryGUIDKey, v15}];
          v10 = objc_opt_class();
          v11 = sub_22B69C444(v10, *(a1 + 48), @"e");
          v12 = objc_opt_class();
          v13 = sub_22B69C444(v12, *(a1 + 48), @"H");
          [v7 handler:v8 localMessageRead:v9 readByMe:1 timeStamp:v11 storageContext:v13];
        }

        ++v6;
      }

      while (v3 != v6);
      v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_22B6A7B9C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v29 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22B6A7DD4;
  v25[3] = &unk_278707C78;
  v21 = v14;
  v26 = v21;
  v22 = v16;
  v27 = v22;
  v23 = v17;
  v28 = v23;
  [v21 _calculateHandlersForLocalMessage:v22 userInfo:v23 completionBlock:v25];

  v24 = *MEMORY[0x277D85DE8];
}

void sub_22B6A7D0C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v17;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Exception handling incomming local message read push: %@", &buf, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x22B6A7CB4);
  }

  _Unwind_Resume(a1);
}

void sub_22B6A7DD4(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v5 = *v18;
    *&v4 = 138412802;
    v15 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = *(a1 + 32);
          v9 = [*(a1 + 40) _stringForKey:{IMDRelayLocalMessageDictionaryGUIDKey, v15}];
          v10 = objc_opt_class();
          v11 = sub_22B69C444(v10, *(a1 + 48), @"e");
          v12 = objc_opt_class();
          v13 = sub_22B69C444(v12, *(a1 + 48), @"H");
          [v7 handler:v8 localMessageRead:v9 readByMe:0 timeStamp:v11 storageContext:v13];
        }

        ++v6;
      }

      while (v3 != v6);
      v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_22B6A8080(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v29 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22B6A82B8;
  v25[3] = &unk_278707C78;
  v21 = v14;
  v26 = v21;
  v22 = v16;
  v27 = v22;
  v23 = v17;
  v28 = v23;
  [v21 _calculateHandlersForLocalMessage:v22 userInfo:v23 completionBlock:v25];

  v24 = *MEMORY[0x277D85DE8];
}

void sub_22B6A81F0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v17;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Exception handling incoming local message error push: %@", &buf, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x22B6A8198);
  }

  _Unwind_Resume(a1);
}

void sub_22B6A82B8(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v6 = *v16;
    *&v5 = 138412802;
    v14 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v9 = *(a1 + 32);
          v10 = [*(a1 + 40) _stringForKey:{IMDRelayLocalMessageDictionaryGUIDKey, v14, v15}];
          v11 = objc_opt_class();
          v12 = sub_22B69C444(v11, *(a1 + 48), @"H");
          [v8 handler:v9 localMessageError:v10 storageContext:v12];
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22B6A852C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v31 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Using block local remote file request", buf, 2u);
    }
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_22B6A87D4;
  v26[3] = &unk_278707C78;
  v22 = v14;
  v27 = v22;
  v23 = v16;
  v28 = v23;
  v24 = v17;
  v29 = v24;
  [v22 _calculateHandlersForLocalMessage:v23 userInfo:v24 completionBlock:v26];

  v25 = *MEMORY[0x277D85DE8];
}

void sub_22B6A87D4(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v6 = *v16;
    *&v5 = 138412802;
    v14 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v10 = *(a1 + 32);
          v9 = *(a1 + 40);
          v11 = objc_opt_class();
          v12 = sub_22B69C444(v11, *(a1 + 48), @"H");
          [v8 handler:v10 localFileRequest:v9 storageContext:{v12, v14, v15}];
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22B6A8A2C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v31 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Using block local remote file response", buf, 2u);
    }
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_22B6A8CD4;
  v26[3] = &unk_278707C78;
  v22 = v14;
  v27 = v22;
  v23 = v16;
  v28 = v23;
  v24 = v17;
  v29 = v24;
  [v22 _calculateHandlersForLocalMessage:v23 userInfo:v24 completionBlock:v26];

  v25 = *MEMORY[0x277D85DE8];
}

void sub_22B6A8CD4(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v6 = *v16;
    *&v5 = 138412802;
    v14 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v10 = *(a1 + 32);
          v9 = *(a1 + 40);
          v11 = objc_opt_class();
          v12 = sub_22B69C444(v11, *(a1 + 48), @"H");
          [v8 handler:v10 localFileResponse:v9 storageContext:{v12, v14, v15}];
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22B6AB4DC()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = IMDRelayLocalMessageTypeOutgoing;
  v3[1] = IMDRelayLocalMessageTypeOutgoingDownload;
  v4[0] = IMDRelayLocalMessageDictionaryOutgoingDictKey;
  v4[1] = IMDRelayLocalMessageDictionaryOutgoingDictKey;
  v3[2] = IMDRelayLocalMessageTypeIncomingTextMessage;
  v3[3] = IMDRelayLocalMessageTypeIncomingDownloadMessage;
  v4[2] = IMDRelayLocalMessageDictionaryIncomingDictKey;
  v4[3] = IMDRelayLocalMessageDictionaryIncomingDictKey;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = qword_27D8D0040;
  qword_27D8D0040 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B6AC03C(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![v3 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = *(a1 + 32);
    v9 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
LABEL_13:
      v12 = 0;
      v13 = v3;
      while (1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v3 = [*(a1 + 40) _cachedListenersForGUID:*(*(&v19 + 1) + 8 * v12)];

        if ([v3 count])
        {
          break;
        }

        ++v12;
        v13 = v3;
        if (v10 == v12)
        {
          v10 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
          if (v10)
          {
            goto LABEL_13;
          }

          goto LABEL_19;
        }
      }
    }

    goto LABEL_19;
  }

  if ((*(a1 + 56) & 8) != 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(a1 + 40) _cacheListeners:v3 forGUID:{*(*(&v15 + 1) + 8 * i), v15}];
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v6);
    }

LABEL_19:
  }

  (*(*(a1 + 48) + 16))();

  v14 = *MEMORY[0x277D85DE8];
}

void sub_22B6AC230(uint64_t a1, void *a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 bestResult];
  v6 = [v5 service];
  v7 = [v4 _handlerForServiceName:v6];

  if (v7)
  {
    goto LABEL_2;
  }

  v9 = [MEMORY[0x277D1A900] sharedManager];
  v10 = [v9 isMessagesTheDefaultTextApp];

  if (v10)
  {
    v7 = 0;
  }

  else
  {
    v14 = [*(a1 + 40) objectForKey:IMDRelayMessageItemDictionary];
    v15 = [v14 objectForKey:IMDRelayMessageItemDictionaryServiceKey];

    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = v15;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "No service found to handle relay request, but we are no longer the default text app, routing to %@", &v18, 0xCu);
      }
    }

    v7 = [*(a1 + 32) _handlerForServiceName:v15];
    if (v7)
    {

LABEL_2:
      v24[0] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      goto LABEL_6;
    }

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = v15;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "No handler found for original message service %@, using SMS handler instead", &v18, 0xCu);
      }
    }

    v7 = [*(a1 + 32) _handlerForServiceName:*MEMORY[0x277D1A610]];

    if (v7)
    {
      goto LABEL_2;
    }
  }

  v8 = 0;
LABEL_6:
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 40);
      v18 = 138412803;
      v19 = v7;
      v20 = 2117;
      v21 = v12;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Routing outgoing payload to %@ as it is the most optimal path. payload=%{sensitive}@ reachability results=%@", &v18, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22B6AC7AC()
{
  v8[10] = *MEMORY[0x277D85DE8];
  v7[0] = IMDRelayLocalMessageTypeIncomingTextMessage;
  v7[1] = IMDRelayLocalMessageTypeIncomingDownloadMessage;
  v8[0] = &unk_283F4ECC0;
  v8[1] = &unk_283F4ECC0;
  v7[2] = IMDRelayLocalMessageTypeOutgoing;
  v7[3] = IMDRelayLocalMessageTypeOutgoingDownload;
  v8[2] = &unk_283F4ECC0;
  v8[3] = &unk_283F4ECC0;
  v7[4] = IMDRelayLocalMessageTypeSent;
  v7[5] = IMDRelayLocalMessageTypeRead;
  v8[4] = &unk_283F4ECD8;
  v8[5] = &unk_283F4ECD8;
  v7[6] = IMDRelayLocalMessageTypeRemoteRead;
  v7[7] = IMDRelayLocalMessageTypeError;
  v8[6] = &unk_283F4ECD8;
  v8[7] = &unk_283F4ECD8;
  v7[8] = IMDRelayLocalMessageTypeDelivered;
  v7[9] = IMDRelayLocalMessageTypeRemoteFileRequest;
  v8[8] = &unk_283F4ECD8;
  v8[9] = &unk_283F4ECD8;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:10];
  v1 = qword_27D8D0050;
  qword_27D8D0050 = v0;

  v5[0] = IMDRelayLocalMessageTypeOutgoing;
  v5[1] = IMDRelayLocalMessageTypeOutgoingDownload;
  v6[0] = &unk_283F4ECF0;
  v6[1] = &unk_283F4ECF0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = qword_27D8D0058;
  qword_27D8D0058 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

void sub_22B6ACA04()
{
  v4[5] = *MEMORY[0x277D85DE8];
  v3[0] = IMDRelayLocalMessageTypeSent;
  v3[1] = IMDRelayLocalMessageTypeIncomingTextMessage;
  v4[0] = &unk_283F4ED08;
  v4[1] = &unk_283F4ED20;
  v3[2] = IMDRelayLocalMessageTypeOutgoing;
  v3[3] = IMDRelayLocalMessageTypeIncomingDownloadMessage;
  v4[2] = &unk_283F4ED20;
  v4[3] = &unk_283F4ED20;
  v3[4] = IMDRelayLocalMessageTypeOutgoingDownload;
  v4[4] = &unk_283F4ED20;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = qword_27D8D0068;
  qword_27D8D0068 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void sub_22B6ACBC8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v80 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v53 = a6;
  v14 = a7;
  if ([v12 length])
  {
    v15 = [v11 filename];
    v16 = IMUTITypeForFilename();

    if (IMIsSupportedUTIType())
    {
      v17 = v16;
      if ([v53 isTrustedSender])
      {
        v18 = 1;
      }

      else
      {
        v20 = [MEMORY[0x277D1AB30] UTITypes];
        v21 = [v20 containsObject:v17];

        v18 = v21 ^ 1;
      }
    }

    else
    {
      v18 = 0;
    }

    v22 = [v11 isFromMomentShare];
    v73 = 0u;
    v74 = 0u;
    IMClientPreviewConstraints();
    v75 = [v11 isSticker];
    *(&v75 + 2) = [v11 isAdaptiveImageGlyph];
    BYTE1(v75) = 1;
    if ([v13 hasPrefix:*MEMORY[0x277D19720]])
    {
      v23 = [v11 type];
      if ([v23 length])
      {
        v24 = MEMORY[0x277CE1CB8];
        v25 = [v11 type];
        v26 = [v24 typeWithIdentifier:v25];
        LODWORD(v24) = [v26 conformsToType:*MEMORY[0x277CE1DB0]];

        if (v24)
        {
          v27 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
          v28 = [MEMORY[0x277D1ADE0] sharedInstance];
          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = sub_22B6AD650;
          v69[3] = &unk_278704418;
          v70 = v13;
          v71 = v11;
          v72 = v14;
          *buf = v73;
          *&buf[16] = v74;
          *v79 = v75;
          [v28 replaceTransferWithSafeTransfer:v27 constraints:buf completionBlock:v69];

LABEL_38:
          goto LABEL_39;
        }
      }

      else
      {
      }

LABEL_37:
      v27 = [v11 guid];
      (*(v14 + 2))(v14, v27, 1, 0, 0.0, 0.0);
      goto LABEL_38;
    }

    if (!v18 || (*&v73 <= 0.0 ? (v29 = 1) : (v29 = v22), (v29 & 1) != 0 || ([v11 isAuxVideo] & 1) != 0))
    {
      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = [v11 isAuxVideo];
          v32 = @"NO";
          if (v22)
          {
            v33 = @"YES";
          }

          else
          {
            v33 = @"NO";
          }

          if (v18)
          {
            v34 = @"YES";
          }

          else
          {
            v34 = @"NO";
          }

          *buf = 138412802;
          *&buf[4] = v34;
          *&buf[12] = 2112;
          *&buf[14] = v33;
          if (v31)
          {
            v32 = @"YES";
          }

          *&buf[22] = 2112;
          *&buf[24] = v32;
          _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Not pregenerating preview, utiSupported %@ isCMM %@ aux Video %@, calling completion directly", buf, 0x20u);
        }
      }

      if (!v14)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v27 = IMPreviewExtension();
    if ([v11 isSticker])
    {
      v36 = [v11 stickerUserInfo];
      [v11 isAdaptiveImageGlyph];
      v52 = IMSharedHelperCachePathForStickerWithProperties();
    }

    else
    {
      [v11 guid];
      [v11 filename];
      [v11 mimeType];
      v52 = IMDCopyAttachmentPersistentPath();
    }

    if (![v52 length])
    {
      v37 = IMLogHandleForCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D8FD8(v11);
      }

      if (v14)
      {
        v51 = [v11 guid];
        (*(v14 + 2))(v14, v51, 1, 0, 0.0, 0.0);
      }

      goto LABEL_72;
    }

    v50 = [MEMORY[0x277CBEBC0] fileURLWithPath:v52];
    if ([v11 isAdaptiveImageGlyph])
    {
      IMAttachmentEmojiImagePreviewFileURL();
    }

    else
    {
      IMAttachmentPreviewFileURL();
    }
    v49 = ;
    v48 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 138413314;
        *&buf[4] = v48;
        *&buf[12] = 2112;
        *&buf[14] = v50;
        *&buf[22] = 2112;
        *&buf[24] = v49;
        *v79 = 2048;
        *&v79[2] = v73;
        *&v79[10] = 2048;
        *&v79[12] = *(&v74 + 1);
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Generating preview OOP with tmpURL %@ finalURL %@ previewURL %@ maxWidth %f scale %f", buf, 0x34u);
      }
    }

    if (v49)
    {
      v47 = objc_alloc_init(MEMORY[0x277D1ACA0]);
      [v47 emitPreviewGenerationBeginFromUTI:v16];
      v65 = 0;
      v66 = &v65;
      v67 = 0x2020000000;
      v68 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3010000000;
      *v79 = 0;
      *&v79[8] = 0;
      *&buf[24] = "";
      v59 = 0;
      v60 = &v59;
      v61 = 0x3032000000;
      v62 = sub_22B4D77D0;
      v63 = sub_22B4D794C;
      v64 = 0;
      v39 = [MEMORY[0x277D1ADE0] sharedInstance];
      v40 = [v11 guid];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = sub_22B6AD894;
      v54[3] = &unk_278707D18;
      v56 = &v65;
      v57 = &v59;
      v55 = v49;
      v58 = buf;
      v76[0] = v73;
      v76[1] = v74;
      v77 = v75;
      LOBYTE(v46) = 1;
      v41 = v55;
      [v39 generatePreview:v48 previewURL:v54 senderContext:v46 constraints:? balloonBundleID:? transferGUID:? completionBlock:? blockUntilReply:?];

      [v47 emitPreviewGenerationEndFromUTI:v16];
      if (IMOSLoggingEnabled())
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          LODWORD(v76[0]) = 138412290;
          *(v76 + 4) = v41;
          _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "persistedPreviewURL: %@", v76, 0xCu);
        }
      }

      v43 = [MEMORY[0x277D1A950] sharedManager];
      [v43 checkPreviewSensitivityIfNeededFor:v11 attachmentURL:v48 persistedPreviewURL:v41 isFromMe:{objc_msgSend(v53, "isFromMe")}];
      if (v14)
      {
        v44 = [v11 guid];
        (*(v14 + 2))(v14, v44, *(v66 + 24), v60[5], *(*&buf[8] + 32), *(*&buf[8] + 40));
      }

      _Block_object_dispose(&v59, 8);
      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v65, 8);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v45 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_INFO, "Not pregenerating preview, no persistedPreviewURL", buf, 2u);
        }
      }

      if (!v14)
      {
        goto LABEL_71;
      }

      v47 = [v11 guid];
      (*(v14 + 2))(v14, v47, 1, 0, 0.0, 0.0);
    }

LABEL_71:
LABEL_72:

    goto LABEL_38;
  }

  v19 = IMLogHandleForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D9064(v11);
  }

  if (v14)
  {
    v16 = [v11 guid];
    (*(v14 + 2))(v14, v16, 1, 0, 0.0, 0.0);
LABEL_39:
  }

  v35 = *MEMORY[0x277D85DE8];
}

void sub_22B6AD650(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = IMOSLoggingEnabled();
  if (a2)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v9 = [*(a1 + 40) guid];
        *buf = 138412546;
        v19 = v8;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Replaced iMessage app template image with BlastDoor copy for %@ and transfer %@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (v6)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        v12 = [*(a1 + 40) guid];
        *buf = 138412546;
        v19 = v11;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Failed replacing iMessage app template image with BlastDoor copy for %@ and transfer %@", buf, 0x16u);
      }
    }

    v13 = [MEMORY[0x277CCACA8] stringGUID];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"iMessageApp-TemplateLayoutImage"];
    [IMBlastdoor sendBlastDoorError:v5 guid:v13 messageTypeString:v14 senderURI:0 senderToken:0 messageContext:0 payloadAttachmentURL:0];
  }

  v15 = *(a1 + 48);
  v16 = [*(a1 + 40) guid];
  (*(v15 + 16))(v15, v16, a2, v5, 0.0, 0.0);

  v17 = *MEMORY[0x277D85DE8];
}

void sub_22B6AD860(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6AD790);
  }

  _Unwind_Resume(a1);
}

void sub_22B6AD894(void *a1, char a2, void *a3, double a4, double a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a3;
  *(*(a1[5] + 8) + 24) = a2;
  v10 = [v9 copy];
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(*(a1[6] + 8) + 40);
      *buf = 138412290;
      v32 = v14;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "IMTranscoderAgent OOP generation completed with error %@", buf, 0xCu);
    }
  }

  if (v9)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2;
  }

  v16 = [MEMORY[0x277D1AAA8] sharedInstance];
  v17 = v16;
  if ((v15 & 1) == 0)
  {
    [v16 trackEvent:*MEMORY[0x277D1A1E8]];

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v32 = v9;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "OOP preview generation failed in imagent with error %@", buf, 0xCu);
      }
    }

    v23 = [v9 domain];
    if (([v23 isEqual:*MEMORY[0x277D19CE0]] & 1) == 0)
    {
      v24 = [v9 domain];
      if (![v24 containsString:@"com.apple.BlastDoor"])
      {
        v28 = [v9 domain];
        v29 = [v28 containsString:@"BlastDoor.Explosion"];

        if ((v29 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

LABEL_22:
    v25 = [MEMORY[0x277CCACA8] stringGUID];
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", &unk_283F4ED38];
    [IMBlastdoor sendBlastDoorError:v9 guid:v25 messageTypeString:v26 senderURI:0 senderToken:0 messageContext:0 payloadAttachmentURL:0];

    goto LABEL_23;
  }

  [v16 trackEvent:*MEMORY[0x277D1A1F0]];

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v30 = a4;
      *&v30[1] = a5;
      v19 = [MEMORY[0x277CCAE60] valueWithBytes:v30 objCType:"{CGSize=dd}"];
      v20 = a1[4];
      *buf = 138412546;
      v32 = v19;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Storing size value %@ for previewURL %@", buf, 0x16u);
    }
  }

  v21 = *(a1[7] + 8);
  *(v21 + 32) = a4;
  *(v21 + 40) = a5;
LABEL_23:

  v27 = *MEMORY[0x277D85DE8];
}

void sub_22B6ADC30(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15)
{
  v34 = a3;
  v20 = a4;
  v21 = a5;
  v40 = a6;
  v39 = a7;
  v38 = a8;
  v37 = a9;
  v36 = a10;
  v22 = v21;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  v26 = a15;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3010000000;
  v52 = 0;
  v53 = 0;
  v51 = "";
  v27 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.AttachmentDownload", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v27, v49 + 2);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B6ADEB4;
  aBlock[3] = &unk_278707D68;
  v28 = v20;
  v42 = v28;
  v47 = &v48;
  v29 = v26;
  v46 = v29;
  v43 = a1;
  v30 = v23;
  v44 = v30;
  v31 = v24;
  v45 = v31;
  v32 = _Block_copy(aBlock);
  v33 = [a1 transferServicesController];
  [v33 receiveFileTransfer:v34 topic:v22 path:v40 requestURLString:v39 ownerID:v38 signature:v37 decryptionKey:v36 fileSize:a11 progressBlock:v25 completionBlock:v32];

  _Block_object_dispose(&v48, 8);
}

void sub_22B6ADEB4(uint64_t a1, void *a2, void *a3, int a4, void *a5, void *a6)
{
  v35 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = +[IMDFileTransferCenter sharedInstance];
  v16 = [v15 transferForGUID:*(a1 + 32)];

  if (a4)
  {
    aBlock = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = sub_22B6AE1B4;
    v27 = &unk_278707D40;
    v23 = *(a1 + 64);
    v17 = v23;
    v31 = v23;
    v28 = v11;
    v18 = v12;
    v29 = v18;
    v32 = 1;
    v30 = v14;
    v19 = _Block_copy(&aBlock);
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v34 = v16;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "receiveFileTransfer: completed, will generate preview for transfer %@", buf, 0xCu);
      }
    }

    [*(a1 + 40) generatePreviewForTransfer:v16 attachmentPath:v18 balloonBundleID:*(a1 + 48) senderContext:*(a1 + 56) completionBlock:{v19, v23, aBlock, v25, v26, v27}];
  }

  else if (*(a1 + 64))
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v34 = @"NO";
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Not pregenerating preview: downloadSucceeded %@", buf, 0xCu);
      }
    }

    os_activity_scope_leave((*(*(a1 + 72) + 8) + 32));
    (*(*(a1 + 64) + 16))(0.0, 0.0);
  }

  else
  {
    os_activity_scope_leave((*(*(a1 + 72) + 8) + 32));
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_22B6AE1B4(uint64_t a1, void *a2, int a3, void *a4, double a5, double a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a4;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = @"NO";
      if (a3)
      {
        v14 = @"YES";
      }

      v20 = 138412546;
      v21 = v14;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Generated preview, success %@ error %@", &v20, 0x16u);
    }
  }

  os_activity_scope_leave((*(*(a1 + 64) + 8) + 32));
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 72);
  v18 = *(a1 + 48);
  (*(*(a1 + 56) + 16))(a5, a6);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_22B6AF170(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B6AF160);
  }

  _Unwind_Resume(exc_buf);
}

uint64_t sub_22B6AF1E0(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Finished Sync", v4, 2u);
    }
  }

  return [*(*(*(a1 + 32) + 8) + 40) _scheduleNextEvaluation];
}

uint64_t sub_22B6AF454()
{
  qword_281421058 = objc_alloc_init(IMDCKChatSyncController);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B6AF670(uint64_t result)
{
  if (!*(*(result + 32) + 72))
  {
    v1 = result;
    v2 = +[IMDChatRegistry sharedInstance];
    v3 = *(v1 + 32);
    v4 = *(v3 + 72);
    *(v3 + 72) = v2;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

uint64_t sub_22B6AF7E0(uint64_t a1)
{
  v2 = +[IMDChatStore sharedInstance];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void sub_22B6AFC64(uint64_t a1)
{
  v5 = [*(a1 + 32) chatRegistry];
  v2 = [v5 chatsToUploadToCloudKitWithLimit:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_22B6AFE78(uint64_t a1)
{
  v2 = [*(a1 + 32) chatRegistry];
  [v2 updateChatUsingSyncData:*(a1 + 40)];

  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 49);

  return MEMORY[0x2821F9670](v3, sel_countRecordOnRead_didSucceed_);
}

void sub_22B6AFF94(uint64_t a1)
{
  v2 = [*(a1 + 32) chatRegistry];
  [v2 resolveChatConflictUsingSyncData:*(a1 + 40) localGUID:*(a1 + 48)];
}

void sub_22B6B0080(uint64_t a1)
{
  v2 = [*(a1 + 32) chatRegistry];
  [v2 markChatAsDeferredForSyncingUsingSyncData:*(a1 + 40)];
}

void sub_22B6B0278(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Error creating chat zone %@", &v8, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B6B0574(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    if ([v2 code] != 12 && objc_msgSend(*(a1 + 32), "code") != 26 && objc_msgSend(*(a1 + 32), "code") != 11)
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = *(a1 + 32);
          v18 = *(a1 + 40);
          v30 = 138412546;
          v31 = v17;
          v32 = 2112;
          v33 = v18;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Error %@ while writing up record %@ ", &v30, 0x16u);
        }
      }

      v19 = [*(a1 + 48) ckUtilities];
      v20 = [v19 extractServerRecordFromCKServerErrorRecordChanged:*(a1 + 32)];

      if (v20)
      {
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v30 = 138412290;
            v31 = v20;
            _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Extracted record from server error%@ ", &v30, 0xCu);
          }
        }

        v22 = [v20 recordType];
        v23 = [v22 isEqualToString:@"chatLockRecordType"];

        v24 = *(a1 + 48);
        if (v23)
        {
          [*(a1 + 48) setLockRecord:v20];
        }

        else
        {
          v25 = *(a1 + 56);
          v26 = [*(a1 + 40) recordID];
          v27 = [v26 recordName];
          v28 = [v25 objectForKey:v27];
          [v24 _resolveChatConflictUsingCKRecord:v20 localGUID:v28];
        }
      }

      goto LABEL_36;
    }

    v3 = [*(a1 + 40) recordType];
    v4 = [v3 isEqualToString:@"chatLockRecordType"];

    if (v4)
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v6 = *(a1 + 32);
          v30 = 138412290;
          v31 = v6;
          _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "We got back error [%@] on the lock record, setting the lock record to nil to re-generate on next sync", &v30, 0xCu);
        }
      }

      [*(a1 + 48) setLockRecord:0];
LABEL_36:
      v29 = *MEMORY[0x277D85DE8];
      return;
    }

    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = *MEMORY[0x277D85DE8];

    MEMORY[0x2821F9670](v10, sel__markChatAsDefferedForSyncingUsingRecord_);
  }

  else
  {
    v7 = [*(a1 + 40) recordType];
    v8 = [v7 isEqualToString:@"chatLockRecordType"];

    if (v8)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(v30) = 0;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "We are setting the lock record on the callback for processing records", &v30, 2u);
        }
      }

      [*(a1 + 48) setLockRecord:*(a1 + 40)];
      goto LABEL_36;
    }

    v14 = *(a1 + 40);
    v13 = *(a1 + 48);
    v15 = *MEMORY[0x277D85DE8];

    [v13 _updateChatUsingCKRecord:v14 onRead:0 didSucceed:1 dispatchToMain:1];
  }
}

void sub_22B6B146C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19CF8] code:4 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_22B6B1B9C(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) recordType];
  v3 = [v2 isEqualToString:@"chatLockRecordType"];

  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        v16 = 138412290;
        v17 = v6;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "** We got the lock record %@ **", &v16, 0xCu);
      }
    }

    [*(a1 + 40) setLockRecord:*(a1 + 32)];
  }

  else
  {
    if (v4)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [*(a1 + 32) recordID];
        v9 = [*(a1 + 32) _stringForKey:@"guid"];
        v16 = 138412546;
        v17 = v8;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "_processRecordChanged changed recordID:%@ for ChatGUID %@", &v16, 0x16u);
      }
    }

    v11 = *(a1 + 40);
    v10 = (a1 + 40);
    v12 = v10 - 1;
    [v11 _updateChatUsingCKRecord:*(v10 - 1) onRead:1 didSucceed:1 dispatchToMain:1];
    [*v10 setFetchedChatsDuringLastSync:1];
    v13 = [*(v10 - 1) _assetForKey:@"gp"];
    [MEMORY[0x277D1A9C0] cleanUpAsset:v13];
    v14 = [*v12 _assetForKey:@"traba"];
    [MEMORY[0x277D1A9C0] cleanUpAsset:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B6B1E70(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Resetting the sync token to nil", v4, 2u);
    }
  }

  return [*(a1 + 32) setLatestSyncToken:0];
}

void sub_22B6B23B8(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B6B22C8);
  }

  _Block_object_dispose((v2 - 176), 8);
  _Unwind_Resume(exc_buf);
}

void sub_22B6B2418(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Fetched record %@", &v9, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  objc_sync_enter(v5);
  if (v3)
  {
    v6 = *(*(a1 + 48) + 8);
    if ((*(v6 + 24) & 1) == 0)
    {
      *(v6 + 24) = 1;
      v7 = *(a1 + 40);
      if (v7)
      {
        (*(v7 + 16))(v7, 1, 0);
      }
    }
  }

  objc_sync_exit(v5);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22B6B256C(uint64_t a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      v17 = *(*(*(a1 + 72) + 8) + 24);
      v24 = 138412802;
      v25 = v16;
      v26 = 2112;
      v27 = v14;
      v28 = 1024;
      v29 = v17;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Completed query %@ with error: %@, foundRecord: %d", &v24, 0x1Cu);
    }
  }

  v18 = *(a1 + 40);
  objc_sync_enter(v18);
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    if (a5)
    {
      v19 = *(a1 + 80);
      if (v19 >= 20)
      {
        v20 = 200;
      }

      else
      {
        v20 = (10 * v19);
      }

      [*(a1 + 48) _anyChatExistsOnServerWithResultsLimit:v20 changeToken:v12 activity:*(a1 + 56) completion:*(a1 + 64)];
    }

    else if (*(a1 + 64))
    {
      v21 = v14;
      if (!v21)
      {
        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19CF8] code:4 userInfo:0];
      }

      v22 = v21;
      (*(*(a1 + 64) + 16))();
    }
  }

  objc_sync_exit(v18);

  v23 = *MEMORY[0x277D85DE8];
}

void sub_22B6B2834(uint64_t a1)
{
  v2 = [*(a1 + 32) recordZoneManager];
  [v2 deleteChatZone];

  v3 = [*(a1 + 32) recordZoneManager];
  [v3 deleteChat1Zone];
}

void sub_22B6B2BA0(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  *(*(*(a1 + 48) + 8) + 24) = a2 == 4;
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    goto LABEL_2;
  }

  if (!v5)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_2;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Not eligible for truth zone", &v12, 2u);
    }

    goto LABEL_14;
  }

  v8 = [*(a1 + 32) syncState];
  *(*(*(a1 + 48) + 8) + 24) = [v8 isEligibleForTruthZone];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Received error checking eligibility: %@", &v12, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Returning cached value: %@", &v12, 0xCu);
    }

LABEL_14:
  }

LABEL_2:
  dispatch_semaphore_signal(*(a1 + 40));

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B6B35EC(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v7 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v15 = v6;
            _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Deleted chat with recordID %@", buf, 0xCu);
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v3);
  }

  v8 = [*(a1 + 40) chatRegistry];
  [v8 clearPendingDeleteTable];

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22B6B3A04(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 || !v6)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Failed to filter record IDs for chat deletion sync, error: %@", &v10, 0xCu);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) _deleteChatRecordsWithRecordIDs:v6 completion:*(a1 + 40)];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22B6B3CBC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "***** WE should not get record completion block in delete operation", v7, 2u);
    }
  }
}

void sub_22B6B3D70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  [*(a1 + 32) _handleChatDeletionCompletionForRecordIDs:a3 error:v6];
  if (*(a1 + 40))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_22B6B3E40;
    v7[3] = &unk_2787028B0;
    v9 = *(a1 + 40);
    v8 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

void sub_22B6B4038(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v20 = [v5 count];
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Completed chat record fetch with %llu results, error: %@", buf, 0x16u);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = sub_22B6B41FC;
  v16 = &unk_278707E80;
  v17 = *(a1 + 32);
  v18 = v8;
  v9 = v8;
  [v5 enumerateKeysAndObjectsUsingBlock:&v13];
  v10 = *(a1 + 40);
  v11 = [v9 copy];
  (*(v10 + 16))(v10, v6, v11);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_22B6B41FC(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 modificationDate];
  v8 = v7;
  if (v7 && ([v7 earlierDate:*(a1 + 32)], v9 = objc_claimAutoreleasedReturnValue(), v9, v9 == v8))
  {
    [*(a1 + 40) addObject:v5];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        v14 = 138412802;
        v15 = v5;
        v16 = 2112;
        v17 = v8;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Including chat with record ID %@ modification date %@ since it is before %@", &v14, 0x20u);
      }

      goto LABEL_10;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v14 = 138412802;
      v15 = v5;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Filtering out chat with record ID %@ modification date %@ since it is after %@", &v14, 0x20u);
    }

LABEL_10:
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22B6B456C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 path];
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [v11 fileExistsAtPath:v10];

  if (v12)
  {
    v13 = IMCommSafetyContentAttachmentTypeForURL();
    if (v13 != 2)
    {
      v14 = v13;
      v15 = v9;
      v16 = v15;
      if (v14)
      {
        goto LABEL_19;
      }

      if ([v8 isAdaptiveImageGlyph])
      {
        v16 = IMAttachmentEmojiImagePreviewFileURL();
        v18 = v15;
      }

      else
      {
        v18 = IMPreviewExtension();
        v16 = IMAttachmentPreviewFileURL();
      }

      if (v16)
      {
        v19 = [v16 path];
        v20 = [MEMORY[0x277CCAA00] defaultManager];
        v21 = [v20 fileExistsAtPath:v19];

        if (v21)
        {
LABEL_19:
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *v22 = 0;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Checking sensitivity for existing attachment preview", v22, 2u);
            }
          }

          [a1 checkPreviewSensitivityIfNeededFor:v8 attachmentURL:v15 persistedPreviewURL:v16 isFromMe:a5];
        }
      }
    }
  }
}

void sub_22B6B474C(void *a1, uint64_t a2, void *a3, void *a4, void *a5, int a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x277D1A958] sharedManager];
  v14 = v13;
  if (a6)
  {
    v15 = [v13 checksForSensitivityOnSend];

    if ((v15 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v16 = [v13 checksForSensitivityOnReceive];

    if (!v16)
    {
      goto LABEL_19;
    }
  }

  if ([a1 _shouldForceSensitivityResult])
  {
    if (a6)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    [v10 setCommSafetySensitive:v17];
  }

  else
  {
    v18 = dispatch_group_create();
    dispatch_group_enter(v18);
    v19 = IMCommSafetyContentAttachmentTypeForURL();
    if (v19 == 1)
    {
      v20 = v11;
    }

    else
    {
      v20 = v12;
    }

    v21 = v20;
    v22 = [MEMORY[0x277D1A950] sharedManager];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_22B6B497C;
    v27[3] = &unk_278707EA8;
    v30 = a6;
    v28 = v10;
    v23 = v18;
    v29 = v23;
    [v22 isSensitiveContent:v21 contentAttachmentType:v19 useBlastDoor:1 withChatID:0 completionHandler:v27];
    v24 = dispatch_time(0, 30000000000);
    if (dispatch_group_wait(v23, v24) && IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *v26 = 0;
        _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Timed out waiting for sensitive image check", v26, 2u);
      }
    }
  }

LABEL_19:
}

void sub_22B6B497C(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v5;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Received CommSafety response from Media-Analysis-Daemon with error %@", &v13, 0xCu);
      }
    }
  }

  else
  {
    if (a2)
    {
      if (*(a1 + 48))
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = [MEMORY[0x277D1A980] sharedInstance];
    [v8 logPrivatizedImageReceivedEvent:a2];

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [MEMORY[0x277CCABB0] numberWithBool:a2];
        v11 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
        v13 = 138412546;
        v14 = v10;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Received CommSafety response from Media-Analysis-Daemon with result %@, %@", &v13, 0x16u);
      }
    }

    [*(a1 + 32) setCommSafetySensitive:v7];
  }

  dispatch_group_leave(*(a1 + 40));

  v12 = *MEMORY[0x277D85DE8];
}

void sub_22B6B5A24(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6B5978);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22B6B5CB0()
{
  qword_281421218 = objc_alloc_init(IMDCollaborationNoticeController);

  return MEMORY[0x2821F96F8]();
}

void sub_22B6B6050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22B6B6068(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(*(a1 + 32) + 16)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B6B619C(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  return MEMORY[0x2821F96F8]();
}

void sub_22B6B6884(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKeyedSubscript:a2];
  v5 = v3;
  if (v3)
  {
    [v2 unionSet:v3];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
    [v2 unionSet:v4];
  }
}

uint64_t sub_22B6B690C(uint64_t a1, void *a2)
{
  v3 = [a2 metadata];
  v4 = [v3 targetChatGUIDs];

  if ([v4 count])
  {
    v5 = [v4 intersectsSet:*(a1 + 32)];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_22B6B6D10(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B6B6DC8;
  v6[3] = &unk_2787073E8;
  v9 = *(a1 + 48);
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void sub_22B6B6DC8(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) broadcastNoticesDidChangeForChatGUIDs:*(a1 + 40)];
  }

  v2 = [*(a1 + 32) noticeDispatcher];
  v3 = [*(a1 + 48) guidString];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v2 reflectDismissalForNoticeGUIDs:v4];

  v5 = *MEMORY[0x277D85DE8];
}

void sub_22B6B7344(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D9244();
    }
  }

  else
  {
    v8 = MEMORY[0x277CC1E48];
    v9 = *(a1 + 32);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_22B6B74BC;
    v17[3] = &unk_278707F20;
    v10 = v9;
    v11 = *(a1 + 72);
    v18 = v10;
    v22 = v11;
    v19 = v5;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    *&v14 = *(a1 + 56);
    *(&v14 + 1) = *(a1 + 64);
    *&v15 = v12;
    *(&v15 + 1) = v13;
    v20 = v15;
    v21 = v14;
    [v8 getAppLinkWithURL:v10 completionHandler:v17];

    v16 = v18;
  }
}

void sub_22B6B74BC(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v29 = a3;
  if (!v5 || v29)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D92B8(a1);
    }
  }

  v7 = [v5 targetApplicationRecord];
  v8 = [v7 bundleIdentifier];

  if (![v8 length])
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D932C(v5, a1);
    }
  }

  if ([v8 isEqualToString:@"com.apple.CloudKit.ShareBear"])
  {
    v28 = objc_alloc_init(MEMORY[0x277D1AC78]);
    [v28 bundleIDsForCollaborationURL:*(a1 + 32)];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v10 = v31 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v11)
    {
      v12 = *v31;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          v15 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v14 allowPlaceholder:0 error:0];
          if (v15)
          {
            v16 = v14;

            v8 = v16;
            goto LABEL_21;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:

    if ([v8 isEqualToString:@"com.apple.CloudKit.ShareBear"])
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = *(a1 + 32);
          *buf = 138412290;
          v35 = v18;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Could not find an app record for the notice URL: %@", buf, 0xCu);
        }
      }

      v19 = [v10 firstObject];

      v8 = v19;
    }
  }

  v20 = MEMORY[0x277D1A940];
  v21 = *(a1 + 80);
  v22 = *(a1 + 32);
  v23 = [*(a1 + 40) title];
  v24 = [*(a1 + 40) contentType];
  v25 = [v20 metadataWithType:v21 bundleIdentifier:v8 contentURL:v22 contentTitle:v23 contentType:v24 messageGUID:0];

  v26 = [MEMORY[0x277D1A938] noticeWithGUIDString:*(a1 + 48) sender:*(a1 + 56) metadata:v25 date:*(a1 + 64) dateViewed:0];
  [*(a1 + 72) _processNotice:v26];

  v27 = *MEMORY[0x277D85DE8];
}

void sub_22B6B78E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22B6B7984;
  v5[3] = &unk_278702FA0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void sub_22B6B7A64(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22B6B7B00;
  v5[3] = &unk_278702FA0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void sub_22B6B7DA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6B7E9C;
  block[3] = &unk_2787051F0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v3;
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_22B6B7E9C(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) addObject:*(a1 + 40)];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 48);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [*(a1 + 56) objectForKeyedSubscript:{v7, v12}];

        v9 = *(a1 + 56);
        if (v8)
        {
          v10 = [*(a1 + 56) objectForKeyedSubscript:v7];
          [v10 addObject:*(a1 + 40)];
        }

        else
        {
          v10 = [MEMORY[0x277CBEB58] setWithObject:*(a1 + 40)];
          [v9 setValue:v10 forKey:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  dispatch_group_leave(*(a1 + 64));
  v11 = *MEMORY[0x277D85DE8];
}

void sub_22B6B8018(id *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] highlightURLs];
  v3 = [v2 mutableCopy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a1[5];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 removeObject:{*(*(&v16 + 1) + 8 * v8++), v16}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v9 = [v3 allObjects];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [a1[4] noticeStore];
    v12 = [v3 allObjects];
    [v11 deleteNoticesForURLs:v12];
  }

  v13 = [a1[5] copy];
  [a1[4] setHighlightURLs:v13];

  v14 = [a1[6] copy];
  [a1[4] setHighlightURLsForChatGUID:v14];

  [a1[4] setHasPopulatedHighlightTracking:1];
  v15 = *MEMORY[0x277D85DE8];
}

void sub_22B6B8594(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] collaborationNoticeDispatcherQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6B8670;
  block[3] = &unk_2787038F8;
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_22B6B8670(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) addObjectsFromArray:*(a1 + 32)];
  }

  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void sub_22B6B86B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) allObjects];
  [v1 broadcastNoticesDidChangeForChatGUIDs:v2];
}

void sub_22B6B8A64(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) broadcastNoticesDidChangeForChatGUIDs:a2];
  v3 = [*(a1 + 32) noticeDispatcher];
  [v3 reflectDismissalForNoticeGUIDs:*(a1 + 40)];
}

void sub_22B6B8BB4(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] array];
  if (a2)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [*(a1 + 32) attributions];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * i) conversationIdentifier];
          v11 = v10;
          if (v10)
          {
            if (![v10 length])
            {
              v12 = IMLogHandleForCategory();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                sub_22B7D94D4();
              }

              goto LABEL_18;
            }

            [v4 addObject:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D9540();
    }
  }

LABEL_18:

  (*(*(a1 + 40) + 16))();
  v13 = *MEMORY[0x277D85DE8];
}

void sub_22B6B9048(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D95A8(a1);
    }

    (*(a1[7] + 2))();
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D1AC78]);
    v9 = [a1[5] highlightCenter];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_22B6B919C;
    v11[3] = &unk_278707FE8;
    v12 = a1[6];
    v13 = a1[7];
    [v8 fetchAttributionsForHighlight:v9 highlight:v5 completionBlock:v11];
  }
}

void sub_22B6B919C(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a2 attributions];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v14 + 1) + 8 * i) conversationIdentifier];
        v9 = v8;
        if (v8)
        {
          if (![v8 length])
          {
            v10 = IMLogHandleForCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              sub_22B7D94D4();
            }

            goto LABEL_15;
          }

          [*(a1 + 32) addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) copy];
  (*(v11 + 16))(v11, v12);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22B6B99E0(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v7 localizedDescription];
        *buf = 138412546;
        v22 = v5;
        v23 = 2112;
        v24 = v13;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Could not get collaborationHighlight: %@, error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D1AC78]);
    v9 = [*(a1 + 32) highlightCenter];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_22B6B9BCC;
    v15[3] = &unk_278708088;
    v10 = *(a1 + 40);
    v20 = *(a1 + 64);
    v11 = *(a1 + 32);
    v16 = v10;
    v17 = v11;
    v18 = v5;
    v19 = *(a1 + 48);
    [v8 fetchAttributionsForHighlight:v9 highlight:v18 completionBlock:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_22B6B9BCC(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = [v3 attributions];
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v5)
  {
    v6 = *v33;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v33 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v32 + 1) + 8 * v7);
      if ([v8 isGroupConversation])
      {
        v9 = [*(a1 + 32) guid];
        v10 = [v8 conversationIdentifier];
        v11 = [v9 isEqualToString:v10];

        if (v11)
        {
          break;
        }
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v32 objects:v38 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }
    }

    v5 = [v8 uniqueIdentifier];
    v12 = [v8 collaborationMetadata];
    v13 = [v12 containerSetupInfo];

    if (v13)
    {
      goto LABEL_17;
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v37 = v5;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "containerSetupInfo is nil for messageGUID: %@", buf, 0xCu);
      }
    }
  }

LABEL_16:
  v13 = 0;
LABEL_17:

  if (*(a1 + 72) == 8 && ([*(a1 + 40) _highlightEligibleForSuggestAddingUser:*(a1 + 48)] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v37) = 90;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Collaboration highlight is older than %d days, ineligible for add notice.", buf, 8u);
      }
    }
  }

  else
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_22B6B9F30;
    v25[3] = &unk_278708060;
    v25[4] = v16;
    v17 = v13;
    v18 = *(a1 + 72);
    v26 = v17;
    v31 = v18;
    v24 = *(a1 + 32);
    v19 = v24.i64[0];
    v27 = vextq_s8(v24, v24, 8uLL);
    v20 = *(a1 + 48);
    v21 = *(a1 + 64);
    v28 = v20;
    v29 = v21;
    v30 = v5;
    [v15 _isShareBearURL:v16 completionHandler:v25];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_22B6B9F30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "CloudKit/iCloud Drive collaboration", buf, 2u);
      }
    }

    v4 = MEMORY[0x231897B40](@"CSCloudSharing", @"CloudSharing");
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22B6BA128;
    v13[3] = &unk_278708038;
    v18 = *(a1 + 88);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v13[4] = v5;
    v13[5] = v7;
    v14 = v8;
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    v11 = *(a1 + 80);
    v15 = v9;
    v16 = v10;
    v17 = v11;
    [v4 ckMetadataFromShareURL:v5 containerSetupInfo:v6 completionHandler:v13];
  }

  else
  {
    [*(a1 + 48) _generateParticipantChangeNoticesForChat:*(a1 + 56) highlight:*(a1 + 64) participant:*(a1 + 72) noticeType:*(a1 + 88) checkedPrivileges:0 messageGUID:*(a1 + 80)];
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "3rd party collaboration", buf, 2u);
      }
    }
  }
}

void sub_22B6BA128(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D961C();
    }

    goto LABEL_29;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v18 = 138412290;
      v19 = v9;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Checking permissions for URL: %@", &v18, 0xCu);
    }
  }

  v10 = [v5 share];
  if ([v10 publicPermission] == 2)
  {
  }

  else
  {
    v12 = [v5 share];
    v13 = [v12 publicPermission] == 3;

    if (!v13)
    {
      goto LABEL_22;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Public share, show public sharing banner", &v18, 2u);
    }
  }

  if (*(a1 + 80) == 9)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Not displaying remove banner for public sharing", &v18, 2u);
      }

LABEL_21:

      goto LABEL_29;
    }

    goto LABEL_29;
  }

LABEL_22:
  if ([v5 participantRole] != 1 && objc_msgSend(v5, "participantRole") != 2)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_29;
    }

    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Does not have admin rights to add/remove from the share", &v18, 2u);
    }

    goto LABEL_21;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Has admin rights to add/remove from the share", &v18, 2u);
    }
  }

  [*(a1 + 40) _generateParticipantChangeNoticesForChat:*(a1 + 48) highlight:*(a1 + 56) participant:*(a1 + 64) noticeType:*(a1 + 80) checkedPrivileges:1 messageGUID:*(a1 + 72)];
LABEL_29:

  v17 = *MEMORY[0x277D85DE8];
}

void sub_22B6BA660(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v46 = v4;
  v47 = a3;
  if (v47)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [*(a1 + 32) URL];
        *buf = 138412546;
        v50 = v6;
        v51 = 2112;
        v52 = v47;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Could not get appLink from url: %@ with error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v7 = [v4 targetApplicationRecord];
    v45 = [v7 bundleIdentifier];

    v8 = v45;
    if (![v45 length])
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D9688(a1);
      }

      v8 = v45;
    }

    if ([v8 isEqualToString:@"com.apple.CloudKit.ShareBear"])
    {
      v10 = [MEMORY[0x277D1AC40] sharedManager];
      v11 = [*(a1 + 32) URL];
      v12 = [v10 lsAppRecordForShareBearURL:v11];

      if (v12)
      {
        v13 = [v12 bundleIdentifier];
        v14 = [v13 length] == 0;

        if (!v14)
        {
          v15 = [v12 bundleIdentifier];

          v45 = v15;
        }
      }
    }

    v16 = objc_alloc(MEMORY[0x277CBEB98]);
    v17 = [*(a1 + 40) participantHandles];
    v42 = [v16 initWithArray:v17];

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v50 = v45;
        v51 = 2112;
        v52 = v42;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Bundle identifier for notice: %@ with participants: %@", buf, 0x16u);
      }
    }

    v43 = MEMORY[0x277D1A940];
    v19 = *(a1 + 72);
    v20 = [*(a1 + 32) URL];
    v21 = [*(a1 + 32) title];
    v22 = [*(a1 + 32) contentType];
    v23 = *(a1 + 48);
    v24 = MEMORY[0x277CBEB98];
    v25 = [*(a1 + 40) guid];
    v26 = [v24 setWithObject:v25];
    v44 = [v43 metadataWithType:v19 bundleIdentifier:v45 contentURL:v20 contentTitle:v21 contentType:v22 messageGUID:v23 targetChatGUIDs:v26];

    if (*(a1 + 72) == 8)
    {
      v27 = @"add";
    }

    else
    {
      v27 = @"remove";
    }

    v28 = v27;
    v29 = MEMORY[0x277CCACA8];
    v30 = [*(a1 + 56) ID];
    v31 = [*(a1 + 40) groupID];
    v32 = [*(a1 + 32) URL];
    v33 = [v29 stringWithFormat:@"%@:%@/%@/%@", v28, v30, v31, v32];

    v34 = [v33 dataUsingEncoding:4];
    v35 = IMSharedHelperMD5OfData();

    v36 = MEMORY[0x277D1A938];
    v37 = [*(a1 + 56) ID];
    v38 = [MEMORY[0x277CBEAA8] date];
    v39 = [v36 noticeWithGUIDString:v35 sender:v37 metadata:v44 date:v38 dateViewed:0];

    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v50 = v39;
        _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Sending notice to process: %@", buf, 0xCu);
      }
    }

    [*(a1 + 64) _processNotice:v39];
  }

  v41 = *MEMORY[0x277D85DE8];
}

void sub_22B6BAF58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D92B8(a1);
    }
  }

  v9 = [v5 targetApplicationRecord];
  v10 = [v9 bundleIdentifier];

  LODWORD(v9) = [v10 isEqualToString:@"com.apple.CloudKit.ShareBear"];
  v11 = IMOSLoggingEnabled();
  if (v9)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v16 = 0;
        v13 = "ShareBear identifier: CloudKit or iCloud Drive app";
        v14 = &v16;
LABEL_13:
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, v13, v14, 2u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else if (v11)
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 0;
      v13 = "Share URL is coming from a 3rd party app";
      v14 = &v15;
      goto LABEL_13;
    }

LABEL_14:
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

IMDStickerRegistry *sub_22B6BB134()
{
  result = objc_alloc_init(IMDStickerRegistry);
  qword_281421060 = result;
  return result;
}

uint64_t sub_22B6BB904(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a5 && [a2 count])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = a1[4];
        v14 = 138412546;
        v15 = v9;
        v16 = 2112;
        v17 = [a2 objectAtIndexedSubscript:0];
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Received transcoded output from balloon bundle id %@ path %@", &v14, 0x16u);
      }
    }

    [objc_msgSend(a2 objectAtIndexedSubscript:{0), "path"}];
    v10 = a1[5];
    result = (*(a1[6] + 16))();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = 138412546;
        v15 = a4;
        v16 = 2112;
        v17 = a2;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "IMDStickerRegistry. Failed retrieving sticker me-sticker with error %@, outputURLS %@", &v14, 0x16u);
      }
    }

    result = (*(a1[6] + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

id SMSSafeMimeTypeForMimeType(void *a1)
{
  v1 = qword_27D8D0088;
  v2 = a1;
  if (v1 != -1)
  {
    sub_22B7D9730();
  }

  v3 = [v2 lowercaseString];

  if ([v3 length])
  {
    v4 = [qword_27D8D0080 objectForKey:v3];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v3;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_22B6BBB84()
{
  qword_27D8D0080 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"text/x-vcalendar", @"text/x-vcalendar", @"text/vcalendar", @"text/x-vcalendar", @"text/x-calendar", @"text/x-vcalendar", @"text/calendar", @"text/x-vcard", @"text/x-vlocation", @"text/x-vcard", @"text/x-location", @"text/x-vcard", @"text/x-vcard", @"text/x-vcard", @"text/vcard", @"text/plain", @"text/plain", @"image/jpeg", @"image/jpg", @"image/x-bmp", @"image/bmp", @"image/x-bmp", @"image/x-bmp", @"audio/x-aac", @"audio/x-aac", @"audio/x-aac", @"audio/aac", @"video/3gpp", @"video/3gp", @"video/3gpp", @"video/3gpp", 0}];

  return MEMORY[0x2821F96F8]();
}

id CreateSMILStringForMessageParts(void *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v29 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (qword_27D8D0098 != -1)
  {
    sub_22B7D9744();
  }

  [v29 appendString:qword_27D8D0090];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = MarcoLoggingStringForMessageData();
      *buf = 138412290;
      v36 = v3;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Generating SMIL for pieces: %@", buf, 0xCu);
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v1;
  v4 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v4)
  {

    goto LABEL_34;
  }

  v28 = 0;
  v5 = 0;
  v6 = 1;
  v7 = *v31;
  do
  {
    v8 = 0;
    do
    {
      if (*v31 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v30 + 1) + 8 * v8);
      v10 = [v9 objectForKey:@"Type"];
      v11 = SMSSafeMimeTypeForMimeType(v10);

      v12 = [v9 objectForKey:@"Path"];
      v13 = [v12 lastPathComponent];

      v14 = [v9 objectForKey:@"Tag"];
      v15 = [v14 isEqualToString:@"text"];
      v6 |= v5;
      if (v15)
      {
        v16 = 0;
        v17 = @"Text";
      }

      else
      {
        if ([v11 isEqualToString:@"vcard"])
        {
          goto LABEL_27;
        }

        if ([v14 isEqualToString:@"img"])
        {
          v16 = 0;
        }

        else
        {
          v18 = [v14 isEqualToString:@"video"];
          v19 = [v9 objectForKey:@"Duration"];
          v16 = [v19 intValue];

          if ((v18 & 1) == 0)
          {
            v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ src=%@/>\n", v14, v13];
LABEL_20:
            if (v28)
            {
              [v29 appendString:@"</par>\n"];
            }

            if (v16)
            {
              v21 = v16;
            }

            else
            {
              v21 = 10;
            }

            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"<par dur=%ds>\n", v21];
            [v29 appendString:v22];

            v28 = 1;
            goto LABEL_26;
          }
        }

        v6 = 1;
        v17 = @"Image";
      }

      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ src=%@ region=%@/>\n", v14, v13, v17];
      if (v6)
      {
        goto LABEL_20;
      }

LABEL_26:
      [v29 appendString:v20];

      v6 = 0;
      v5 = v15;
LABEL_27:

      ++v8;
    }

    while (v4 != v8);
    v23 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    v4 = v23;
  }

  while (v23);

  if (v28)
  {
    [v29 appendString:@"</par>\n"];
  }

LABEL_34:
  if (qword_27D8D00A8 != -1)
  {
    sub_22B7D9758();
  }

  [v29 appendString:qword_27D8D00A0];
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = v29;
      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "proposed smil: %@", buf, 0xCu);
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v29;
}

void sub_22B6BC130()
{
  v0 = qword_27D8D0090;
  qword_27D8D0090 = @"<smil>\n<head>\n<layout>\n <root-layout/>\n<region id=Text top=70% left=0% height=30% width=100% fit=scroll/>\n<region id=Image top=0% left=0% height=70% width=100% fit=meet/>\n</layout>\n</head>\n<body>\n";
}

void sub_22B6BC148()
{
  v0 = qword_27D8D00A0;
  qword_27D8D00A0 = @"</body>\n</smil>\n";
}

uint64_t sub_22B6BC1A4()
{
  qword_281421068 = objc_alloc_init(IMDRecentsController);

  return MEMORY[0x2821F96F8]();
}

void sub_22B6BC488(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  if (sub_22B6BC520(a3))
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v5 addObject:v9];
  }
}

BOOL sub_22B6BC520(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 timeIntervalSinceNow];
    v4 = v3 < 0.0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_22B6BC56C(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  if (sub_22B6BC520(a3))
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v5 addObject:v9];
  }
}

id sub_22B6BCB90(void *a1)
{
  v1 = [a1 recordID];
  v2 = [v1 recordName];

  return v2;
}

id sub_22B6BCBE8(void *a1)
{
  v1 = [a1 _dataForKey:?];
  v2 = JWDecodeDictionary();

  return v2;
}

id sub_22B6BCC38(void *a1)
{
  v1 = [a1 _arrayForKey:?];
  v2 = [v1 __imArrayByApplyingBlock:&unk_283F1B228];

  return v2;
}

id sub_22B6BCC94(void *a1)
{
  v1 = [a1 _assetForKey:?];
  v2 = [v1 fileURL];

  return v2;
}

void sub_22B6BD1AC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6BD160);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22B6BD9A4()
{
  qword_281421070 = objc_alloc_init(IMDCKUpdateSyncController);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B6BDB74(uint64_t a1)
{
  v2 = [*(a1 + 32) recordZoneManager];
  [v2 deleteUpdateZone];

  v3 = *(a1 + 32);

  return [v3 clearLocalSyncState:3];
}

uint64_t sub_22B6BDD34(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Resetting the sync token to nil", v4, 2u);
    }
  }

  return [*(a1 + 32) setLatestSyncToken:0];
}

uint64_t sub_22B6BE26C(void *a1)
{
  v1 = a1[5];
  v3 = a1[6];
  v2 = a1[7];
  return MEMORY[0x2821F9670](a1[4], sel__onReadComplete_error_activity_completion_);
}

void sub_22B6BE410(uint64_t a1)
{
  v2 = +[IMDChatRegistry sharedInstance];
  [v2 handleMessageUpdate:*(a1 + 32)];
}

void sub_22B6BEC90(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Attempting to create update zone", buf, 2u);
    }
  }

  if ([*(a1 + 32) _zoneCreated])
  {
    v3 = 0;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "** Failed to create update zone **", v7, 2u);
      }
    }

    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:IMDCKUpdateSyncControllerErrorDomain code:1 userInfo:0];
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_22B6BEF9C(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Error creating update zone %@", &v8, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B6BF214(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (a2 && (v5 = [IMDCKUpdateSyncController stepAfter:*(a1 + 56)]) != 0)
  {
    [*(a1 + 32) _writeUpdatesWithType:*(a1 + 64) updateStep:v5 activity:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, a2, v7);
    }
  }
}

void sub_22B6BF550(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22B6BF618;
  v10[3] = &unk_278708220;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

uint64_t sub_22B6BF618(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = *(*(a1[7] + 8) + 40);
  return MEMORY[0x2821F9670](a1[4], sel__onRecordT1Write_error_recordNameToRowIDMap_);
}

void sub_22B6BF630(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B6BF6FC;
  v9[3] = &unk_278708248;
  v6 = *(a1 + 64);
  v13 = *(a1 + 56);
  v14 = v6;
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v12 = *(a1 + 48);
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t sub_22B6BF6FC(uint64_t a1)
{
  [*(*(*(a1 + 64) + 8) + 40) count];
  [*(a1 + 32) _numberOfRecordsToFetchPerBatch];
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);

  return MEMORY[0x2821F9670](v3, sel__onWriteT1Complete_error_shouldWriteMore_activity_completion_);
}

void sub_22B6BFF30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22B6BFFF8;
  v10[3] = &unk_278708220;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

uint64_t sub_22B6BFFF8(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = *(*(a1[7] + 8) + 40);
  return MEMORY[0x2821F9670](a1[4], sel__onRecordT2Write_error_recordNameToItemMap_);
}

void sub_22B6C0010(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B6C00DC;
  v9[3] = &unk_278708248;
  v6 = *(a1 + 64);
  v13 = *(a1 + 56);
  v14 = v6;
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v12 = *(a1 + 48);
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t sub_22B6C00DC(uint64_t a1)
{
  [*(*(*(a1 + 64) + 8) + 40) count];
  [*(a1 + 32) _numberOfRecordsToFetchPerBatch];
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);

  return MEMORY[0x2821F9670](v3, sel__onWriteT2Complete_error_shouldWriteMore_activity_completion_);
}

void sub_22B6C0F10(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = +[IMDChatRegistry sharedInstance];
  v3 = [v2 messagesPendingUpdateT1ToCloudKitWithLimit:{objc_msgSend(*(a1 + 32), "_numberOfRecordsToFetchPerBatch")}];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v4)
  {
    v6 = *v27;
    *&v5 = 138412290;
    v24 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * v7);
        v9 = MEMORY[0x277D1AA28];
        v10 = +[IMDRecordZoneManager sharedInstance];
        v11 = [v10 updateRecordZoneID];
        v12 = +[IMDCKRecordSaltManager sharedInstance];
        v13 = [v12 cachedSalt];
        v14 = [v9 createCKRecordForUpdateT1:v8 zoneID:v11 salt:v13];

        if (v14)
        {
          v15 = *(a1 + 40);
          v16 = [v8 objectForKey:@"ROWID"];
          v17 = [v14 recordID];
          v18 = [v17 recordName];
          [v15 setObject:v16 forKey:v18];

          [*(a1 + 48) addObject:v14];
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = v24;
              v31 = v8;
              _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "**** T1 Update item [%@] could not be converted to CKRecord, marking it as clean and moving on.", buf, 0xCu);
            }
          }

          v20 = [v8 objectForKey:@"ROWID"];
          v21 = [v20 longLongValue];

          v22 = +[IMDMessageStore sharedInstance];
          [v22 markMessageAsCleanWithROWID:v21];
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v4);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_22B6C14FC(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = +[IMDChatRegistry sharedInstance];
  v3 = [v2 messagesPendingUpdateT2ToCloudKitWithLimit:{objc_msgSend(*(a1 + 32), "_numberOfRecordsToFetchPerBatch")}];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v4)
  {
    v6 = *v23;
    *&v5 = 138412290;
    v20 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v9 = MEMORY[0x277D1AA28];
        v10 = +[IMDRecordZoneManager sharedInstance];
        v11 = [v10 updateRecordZoneID];
        v12 = +[IMDCKRecordSaltManager sharedInstance];
        v13 = [v12 cachedSalt];
        v14 = [v9 createCKRecordForUpdateT2:v8 zoneID:v11 salt:v13];

        if (v14)
        {
          v15 = *(a1 + 40);
          v16 = [v14 recordID];
          v17 = [v16 recordName];
          [v15 setObject:v8 forKey:v17];

          [*(a1 + 48) addObject:v14];
        }

        else if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = v20;
            v27 = v8;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "**** T2 Update item [%@] could not be converted to CKRecord.", buf, 0xCu);
          }
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v4);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_22B6C1BB0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (xpc_activity_get_state(v4) == 4)
    {
      v6 = IMLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D9824(v6);
      }
    }

    else
    {
      [a1 setXPCActivity:v5];
    }
  }
}

void sub_22B6C1DAC(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = IMDTelephonyServiceLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (v8)
    {
      v24 = *(a1 + 32);
      *buf = 138412802;
      v33 = v24;
      v34 = 1024;
      v35 = v6 == 0;
      v36 = 2112;
      v37 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "BlastDoor finished processing SMS/MMS message with GUID (%@). Success = (%{BOOL}d), error = (%@).", buf, 0x1Cu);
    }

    v13 = [*(a1 + 48) objectForKey:IMDCTMessageDictionaryTypeKey];
    v23 = [*(a1 + 48) objectForKey:IMDCTMessageDictionarySenderKey];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@.smsdata", v13, *(a1 + 32)];
    v26 = [MEMORY[0x277D1AA18] writeMessagePayloadToTemporaryDirectory:*(a1 + 48) fileName:v25];
    [IMBlastdoor sendBlastDoorError:v6 guid:*(a1 + 32) messageTypeString:v13 senderURI:v23 senderToken:0 messageContext:0 payloadAttachmentURL:v26];
    v27 = *(a1 + 64);
    if (v27)
    {
      (*(v27 + 16))(v27, 0, 0, 0);
    }

    goto LABEL_11;
  }

  if (v8)
  {
    v9 = *(a1 + 32);
    *buf = 138412546;
    v33 = v9;
    v34 = 1024;
    v35 = v6 == 0;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "BlastDoor finished processing SMS/MMS message with GUID (%@). Success = (%{BOOL}d).", buf, 0x12u);
  }

  MEMORY[0x231897B40](@"BlastDoorSMSMessage", @"BlastDoor");
  if (objc_opt_isKindOfClass())
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = v5;
    v13 = [v10 _messageDictionaryToRelayWithIncomingMessageDictionary:v11 smsMessage:v12];
    v14 = [*(a1 + 40) relayController];
    v15 = [v12 GUID];
    v16 = [*(a1 + 40) service];
    v17 = [v16 internalName];
    [v14 _prepareSMSRelayBlockForMessageDictionary:v13 messageGUID:v15 serviceName:v17];

    v18 = *(a1 + 40);
    v19 = *(a1 + 56);
    v20 = *(a1 + 72);
    v21 = [v18 service];
    v22 = [v21 internalName];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_22B6C213C;
    v29[3] = &unk_278708270;
    v30 = *(a1 + 32);
    v31 = *(a1 + 64);
    [v18 _releasePendingMessagesAndProcessReceivedSMSMessage:v12 storageContext:v19 receivedViaRelay:v20 serviceName:v22 completionBlock:v29];

    v23 = v30;
LABEL_11:
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_22B6C213C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = IMDTelephonyServiceLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v12 = 138412802;
    v13 = v9;
    v14 = 2112;
    v15 = v7;
    v16 = 1024;
    v17 = a2;
    _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "_processReceivedSMSMessage for original GUID (%@) parsed GUID (%@) returned (%{BOOL}d).", &v12, 0x1Cu);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v7, a4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B6C2398(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 72);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  return MEMORY[0x2821F9670](*(a1 + 32), sel__processReceivedSMSMessage_storageContext_receivedViaRelay_serviceName_completionBlock_);
}

void sub_22B6C77B4(uint64_t a1, char a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = [*(a1 + 48) accountID];
  v12 = [*(a1 + 56) sender];
  [v10 assignTransfer:v9 toAccount:v11 otherPerson:v12];

  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = [v7 path];
  [v13 acceptTransfer:v14 path:v15];

  v16 = +[IMDFileTransferCenter sharedInstance];
  v17 = [v16 transferForGUID:*(a1 + 40)];
  v18 = *(*(a1 + 72) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  [*(a1 + 64) addObject:*(*(*(a1 + 72) + 8) + 40)];
  if (a2)
  {
    v20 = [MEMORY[0x277CCAA00] defaultManager];
    v21 = [v7 path];
    v22 = [v20 fileExistsAtPath:v21];

    if (v22)
    {
      v23 = *(*(*(a1 + 72) + 8) + 40);
      if (v23)
      {
        [v23 _setLocalURL:v7];
        v24 = IMDTelephonyServiceLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v36 = 138412290;
          v37 = v7;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_DEFAULT, "Set transfer local url to: %@", &v36, 0xCu);
        }

        v25 = IMDTelephonyServiceLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(*(*(a1 + 72) + 8) + 40);
          v36 = 138412290;
          v37 = v26;
          _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_DEFAULT, "  => Start finalizing file transfer: %@", &v36, 0xCu);
        }

        [*(a1 + 32) startFinalizingTransfer:*(a1 + 40)];
        goto LABEL_29;
      }

      [*(a1 + 32) failTransfer:*(a1 + 40) error:0];
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_29;
      }

      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v34 = *(a1 + 40);
        v36 = 138412290;
        v37 = v34;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "No file transfer generated for guid: %@", &v36, 0xCu);
      }
    }

    else
    {
      [*(a1 + 32) failTransfer:*(a1 + 40) error:0];
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_29;
      }

      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v33 = *(a1 + 40);
        v36 = 138412290;
        v37 = v33;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Could not locate file for transfer: %@", &v36, 0xCu);
      }
    }

LABEL_28:

    goto LABEL_29;
  }

  v27 = [v8 domain];
  if (![v27 isEqualToString:*MEMORY[0x277D19E58]])
  {

    goto LABEL_17;
  }

  v28 = [v8 code];

  if (v28 != 28)
  {
LABEL_17:
    [*(a1 + 32) failTransfer:*(a1 + 40) error:v8];
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_29;
    }

    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = *(a1 + 40);
      v36 = 138412290;
      v37 = v32;
      _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Could not locate file for transfer: %@", &v36, 0xCu);
    }

    goto LABEL_28;
  }

  if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = *(a1 + 40);
      v36 = 138412290;
      v37 = v30;
      _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Transfer rejected: %@", &v36, 0xCu);
    }
  }

  [*(a1 + 32) rejectTransfer:*(a1 + 40)];
LABEL_29:

  v35 = *MEMORY[0x277D85DE8];
}

void sub_22B6C7C58(void *a1, int a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "MMS safe render generation complete.", buf, 2u);
    }
  }

  if (v8 && IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = a1[4];
      *buf = 138412546;
      v24 = v11;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Error decontaminating MMS transfer: %@ error: %@", buf, 0x16u);
    }
  }

  if (a2 && ([a1[5] isEqual:v7] & 1) != 0)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = a1[5];
        *buf = 138412290;
        v24 = v13;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Generating safe render succeeded, but still using the original path since we cannot transcode the entire asset: %@", buf, 0xCu);
      }
    }

    v14 = 0;
  }

  else
  {
    v15 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = a1[5];
    v22 = 0;
    v17 = [v15 removeItemAtURL:v16 error:&v22];
    v14 = v22;

    if ((v17 & 1) == 0 && IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = a1[5];
        *buf = 138412546;
        v24 = v19;
        v25 = 2112;
        v26 = v14;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Error removing MMS transfer: %@ error: %@", buf, 0x16u);
      }
    }

    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19E58] code:28 userInfo:0];

    v8 = v20;
  }

  (*(a1[6] + 16))();

  v21 = *MEMORY[0x277D85DE8];
}

void sub_22B6C7F80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v51 = *MEMORY[0x277D85DE8];
  v13 = a5;
  v14 = a6;
  v15 = *(a1 + 32);
  v16 = a4;
  [v15 setCategory:a2];
  [*(a1 + 32) setSubCategory:a3];
  [*(a1 + 32) setSpamExtensionName:v16];

  v17 = [*(a1 + 40) findChatAndLinkMessage:*(*(*(a1 + 56) + 8) + 40) context:*(a1 + 32)];
  v18 = [v17 chatIdentifier];
  v19 = [MEMORY[0x277D1AA78] sharedInstance];
  [v19 sendNotificationMessageIfNeededForIncomingMessageFromChatIdentifier:v18];

  v20 = [*(a1 + 40) tapbackInterpreter];
  v21 = [v20 interpretMessageItem:*(*(*(a1 + 56) + 8) + 40) inChat:v17];
  v22 = *(*(a1 + 56) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

  if (*(a1 + 64) >= 1)
  {
    v24 = IMDTelephonyServiceLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 64);
      *buf = 67109120;
      v50 = v25;
      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_DEFAULT, " => This is a replace message for ID: %d", buf, 8u);
    }

    [*(a1 + 40) didReceiveReplaceMessageID:*(a1 + 64) forChat:v18 style:{objc_msgSend(*(a1 + 32), "style")}];
  }

  v26 = [*(a1 + 32) senderUnformatted];

  if (v26)
  {
    v27 = [*(a1 + 32) senderUnformatted];
    [*(*(*(a1 + 56) + 8) + 40) setOriginalUnformattedID:v27];
  }

  v28 = [*(a1 + 32) displayName];

  if (v17 && v28)
  {
    v29 = [*(a1 + 32) displayName];
    [v17 setDisplayName:v29];
  }

  if (v13)
  {
    [*(*(*(a1 + 56) + 8) + 40) setSpamModelMetadata:v13];
  }

  if (v14)
  {
    v30 = [*(a1 + 40) filteringController];
    [v30 recordFilteringMetricsForMessageItem:*(*(*(a1 + 56) + 8) + 40) filteredToChat:v17 filterExtensionMetadata:v14];
  }

  if (a2 == 2)
  {
    [v17 setSpamDetectionSource:a7];
    [v17 setSpamDetectedMessage:*(a1 + 48)];
    if ((*(a1 + 68) & 1) == 0)
    {
      v31 = +[IMDSpamFilteringHelper sharedHelper];
      [v31 presentDebugUI];

      v32 = +[IMDSpamFilteringHelper sharedHelper];
      [v32 recordJunkMetricsForSpamDetectionSource:a7 service:*MEMORY[0x277D1A610]];
    }
  }

  v33 = +[IMDSpamCheckRequeryTracker sharedTracker];
  v34 = [*(*(*(a1 + 56) + 8) + 40) guid];
  [v33 startTrackingMessageGUID:v34 chat:v17];

  [*(a1 + 40) didReceiveMessage:*(*(*(a1 + 56) + 8) + 40) forChat:v18 style:objc_msgSend(*(a1 + 32) fromIDSID:{"style"), 0}];
  v41 = MEMORY[0x277D85DD0];
  v42 = 3221225472;
  v43 = sub_22B6C83E4;
  v44 = &unk_278708360;
  v35 = *(a1 + 56);
  v45 = *(a1 + 40);
  v48 = v35;
  v36 = v18;
  v46 = v36;
  v47 = *(a1 + 32);
  [v17 shouldSatelliteRelayIncomingSMSMessagesWithCompletion:&v41];
  LOBYTE(v34) = *(a1 + 68);
  v37 = [*(a1 + 40) relayController];
  v38 = v37;
  v39 = *(a1 + 48);
  if (v34)
  {
    [v37 _clearSMSRelayMapForMessageWithGUID:v39];
  }

  else
  {
    [v37 _executeSMSRelayBlockForMessageWithGUID:v39 category:objc_msgSend(v17 subCategory:{"isFiltered") & 0xF, objc_msgSend(v17, "isFiltered") >> 4}];
  }

  v40 = *MEMORY[0x277D85DE8];
}

void sub_22B6C83E4(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B6C84A4;
    block[3] = &unk_278708338;
    v3 = *(a1 + 56);
    v6 = *(a1 + 32);
    v4 = *(&v6 + 1);
    *&v5 = *(a1 + 48);
    *(&v5 + 1) = v3;
    v8 = v6;
    v9 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void sub_22B6C84A4(uint64_t a1)
{
  v2 = [*(a1 + 32) networkMonitor];
  v3 = [v2 immediatelyReachable];

  if (v3)
  {
    v4 = +[IMDAccountController sharedInstance];
    v5 = [v4 anySessionForServiceName:*MEMORY[0x277D1A628]];

    [v5 sendIncomingRelayMessage:*(*(*(a1 + 56) + 8) + 40) toChat:*(a1 + 40) style:{objc_msgSend(*(a1 + 48), "style")}];
  }
}

void sub_22B6CA74C(IMDServiceSession *self, SEL a2, id a3, id a4, id a5, unsigned __int8 a6, id a7)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "/*-------calling into downloadTranslationAssetsForLanguageCodes from legacy service session, please file a radar-------*/", v15, 2u);
    }
  }
}

uint64_t sub_22B6CC440(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Initial sync device Not writing up messages", v5, 2u);
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, 1, 0);
  }

  return [*(a1 + 32) _noteSyncEnded];
}

void sub_22B6CD1A0(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86430]);
  if (string)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    v6 = xpc_dictionary_get_value(v3, "UserInfo");
    if (v6)
    {
      v7 = _CFXPCCreateCFObjectFromXPCObject();
    }

    else
    {
      v7 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        *v12 = 138412802;
        *&v12[4] = objc_opt_class();
        *&v12[12] = 2112;
        *&v12[14] = v5;
        *&v12[22] = 2112;
        v13 = v7;
        v10 = *&v12[4];
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "%@ received event with name %@ and user info %@.", v12, 0x20u);
      }
    }

    [*(a1 + 32) didReceiveEventWithName:v5 userInfo:{v7, *v12, *&v12[16], v13}];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_22B6CD40C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  v4 = v2;
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = MEMORY[0x277D85CD0];
  }

  [v2 setObject:v3 forKey:*(a1 + 48)];
}

void sub_22B6CD524(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_22B6CD6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B6CD6BC(uint64_t a1)
{
  v5 = [*(a1 + 32) delegateToQueue];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_22B6CD800(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = [*(a1 + 32) delegateToQueue];
        v9 = [v8 objectForKey:v7];

        if (v9)
        {
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = sub_22B6CD9B4;
          v13[3] = &unk_278705748;
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          v13[4] = v7;
          v13[5] = v10;
          v14 = v11;
          v15 = *(a1 + 48);
          dispatch_async(v9, v13);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B6CD9B4(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[7];
  return MEMORY[0x2821F9670](a1[4], sel_eventStreamHandler_didReceiveEventWithName_userInfo_);
}

uint64_t sub_22B6CDAE0()
{
  qword_281420ED0 = objc_alloc_init(IMDOffGridAvailabilityTracker);

  return MEMORY[0x2821F96F8]();
}

void sub_22B6CE020(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTracker];
}

void sub_22B6CE238(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 handle];
  v5 = [v3 expirationDate];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B6CE304;
  v8[3] = &unk_278707AA8;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [v7 isOffGridModeWithCompletion:v8];
}

void sub_22B6CE304(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6CE3B0;
  block[3] = &unk_278706650;
  v5 = *(a1 + 32);
  v7 = a2;
  v6 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_22B6CE3B0(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) ID];
      v4 = v3;
      v5 = @"NO";
      if (*(a1 + 48))
      {
        v5 = @"YES";
      }

      v19 = 138412546;
      v20 = v3;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Handle %@ is off grid %@", &v19, 0x16u);
    }
  }

  if (*(a1 + 48) == 1)
  {
    v6 = +[IMDAccountController sharedInstance];
    v7 = [v6 anySessionForServiceName:*MEMORY[0x277D1A620]];

    v9 = *(a1 + 32);
    v8 = a1 + 32;
    v10 = *(v8 + 16);
    v11 = [v9 ID];
    [v7 didReceiveOffGridStatus:v10 & 1 forID:v11 messageGUID:0 account:0];

    v12 = +[IMDOffGridAvailabilityTracker sharedTracker];
    [v12 stopTrackingHandle:*v8];

LABEL_15:
    goto LABEL_16;
  }

  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = [v13 earlierDate:*(a1 + 40)];
  v15 = v14 == *(a1 + 40);

  if (v15)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [*(a1 + 32) ID];
        v19 = 138412290;
        v20 = v17;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Handle %@ is expiring from tracking", &v19, 0xCu);
      }
    }

    v7 = +[IMDOffGridAvailabilityTracker sharedTracker];
    [v7 stopTrackingHandle:*(a1 + 32)];
    goto LABEL_15;
  }

LABEL_16:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_22B6CED44(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"NO";
        if (!v7)
        {
          v10 = @"YES";
        }

        v14 = 138412290;
        v15 = v10;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "BlastDoor finished processing SMSFIlteringSettingsMessage. Success = (%@).", &v14, 0xCu);
      }
    }

    MEMORY[0x231897B40](@"BlastDoorSMSFilteringSettingsMessage", @"BlastDoor");
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) _processReceivedSMSFilteringSettingsMessage:v6 deviceID:*(a1 + 40)];
    }
  }

  else if (v8)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = @"NO";
      if (!v7)
      {
        v12 = @"YES";
      }

      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "BlastDoor finished processing SMSFilteringSettingsMessage. Success = (%@), error = (%@).", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22B6CF118()
{
  v0 = [IMDFilteringController alloc];
  v6 = +[IMDIdentityLookupDecisioningManager sharedManager];
  v1 = +[IMDTrustKitDecisioningManager sharedManager];
  v2 = +[IMDCommunicationTrustManager sharedManager];
  v3 = +[IMDRelayPushHandler sharedInstance];
  v4 = [(IMDFilteringController *)v0 initWithIdentityLookupDecisioningManager:v6 trustKitDecisioningManager:v1 communicationTrustManager:v2 relayPushHandler:v3];
  v5 = qword_281420F40;
  qword_281420F40 = v4;
}

void sub_22B6CF410()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"FirstPartyTextMessageFilterAvailableChangedNotification", 0, 0, 1u);
}

void sub_22B6CF44C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_autoreleasePoolPush();
  v8 = a2;
  v9 = a5;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "handleThirdPartyFilterUnregistered", buf, 2u);
    }
  }

  v13 = v8;
  v14 = v9;
  v11 = v9;
  v12 = v8;
  im_dispatch_after();

  objc_autoreleasePoolPop(v7);
}

void sub_22B6CF588(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_autoreleasePoolPush();
  v8 = a2;
  v9 = a5;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "handleThirdPartyFilterUnregistered", buf, 2u);
    }
  }

  v13 = v8;
  v14 = v9;
  v11 = v9;
  v12 = v8;
  im_dispatch_after();

  objc_autoreleasePoolPop(v7);
}

void sub_22B6CF6C4(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = a2;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "handleChangeOfFilterParamsStatus", v6, 2u);
    }
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:v4 selector:sel__checkAndUpdateFilterParamsForFilterExtension object:0];
  [v4 performSelector:sel__checkAndUpdateFilterParamsForFilterExtension withObject:0 afterDelay:0.0];

  objc_autoreleasePoolPop(v3);
}

void sub_22B6CF7B0(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = a2;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "handleSIMSubscriptionsChanged", buf, 2u);
    }
  }

  v7 = v4;
  v6 = v4;
  im_dispatch_after();

  objc_autoreleasePoolPop(v3);
}

void sub_22B6D0158(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6CFFC8);
  }

  _Unwind_Resume(a1);
}

void sub_22B6D0B94(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = IMOSLoggingEnabled();
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      *buf = 138412546;
      v22 = v12;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Performed spam extension capabilities query request for: %@ and received error: %@", buf, 0x16u);
    }
  }

  else
  {
    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Spam extension query response received: %@, %@", buf, 0x16u);
    }
  }

LABEL_10:
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [MEMORY[0x277D1AB60] executeCompletionBlockForFilterParamsUpdate:v7 promo:v8];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B6D0E1C;
    block[3] = &unk_278702FF0;
    block[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22B6D0EBC;
    v16[3] = &unk_2787038F8;
    v17 = v7;
    v13 = v8;
    v14 = *(a1 + 40);
    v18 = v13;
    v19 = v14;
    dispatch_async(MEMORY[0x277D85CD0], v16);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B6D0E1C(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Performed spam extension capabilities query request. Relaying updated sms filter settings", v4, 2u);
    }
  }

  return [*(a1 + 32) _relaySMSFilteringSettingsForFilterState:1];
}

void sub_22B6D0EBC(void *a1)
{
  [MEMORY[0x277D1AB60] executeCompletionBlockForFilterParamsUpdate:a1[4] promo:a1[5]];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6D0F50;
  block[3] = &unk_278702FF0;
  block[4] = a1[6];
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t sub_22B6D0F50(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Performed spam extension capabilities query request. Relaying updated sms filter settings", v4, 2u);
    }
  }

  return [*(a1 + 32) _relaySMSFilteringSettingsForFilterState:1];
}

void sub_22B6D15C4(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        *buf = 138412546;
        *&buf[4] = v9;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Performed spam extension query request for: %@ and received error: %@", buf, 0x16u);
      }
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "code")}];
    [v7 setObject:v10 forKeyedSubscript:*MEMORY[0x277D1A190]];

    v11 = 0;
    v12 = 0;
    v13 = 1;
    goto LABEL_33;
  }

  v13 = [v5 action];
  v11 = [MEMORY[0x277D1AB60] localizeSubAction:{objc_msgSend(v5, "subAction")}];
  if (v11)
  {
    if ([MEMORY[0x277D1AB60] isValidSubAction:v13 subAction:v11])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v35) = 0;
      if (*(a1 + 56) == 1)
      {
        LOBYTE(v35) = 1;
LABEL_17:
        _Block_object_dispose(buf, 8);
        goto LABEL_18;
      }

      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v14 = [MEMORY[0x277D1AB70] isValidActiveFilterAction:v13 subAction:v11];
        *(*&buf[8] + 24) = v14 & 1;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      else
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_22B6D1A80;
        block[3] = &unk_278708470;
        block[4] = buf;
        block[5] = v13;
        block[6] = v11;
        dispatch_sync(MEMORY[0x277D85CD0], block);
        if (*(*&buf[8] + 24))
        {
          goto LABEL_17;
        }
      }

      v11 = 0;
      goto LABEL_17;
    }

    v11 = 0;
  }

LABEL_18:
  if (*(a1 + 56) == 1)
  {
    v15 = [v5 error];
    v16 = v15;
    if (v15)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "code")}];
      [v7 setObject:v17 forKeyedSubscript:*MEMORY[0x277D1A190]];
    }

    v18 = [v5 version];
    if (v18)
    {
      [v7 setObject:v18 forKeyedSubscript:*MEMORY[0x277D1A1A0]];
    }
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 32);
      v20 = *(a1 + 40);
      *buf = 138413058;
      *&buf[4] = v20;
      *&buf[12] = 2112;
      *&buf[14] = v21;
      *&buf[22] = 2048;
      v35 = v13;
      v36 = 2048;
      v37 = v11;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Performed spam extension query request on guid: %@ for: %@ and received response actionResponse: %ld, subActionResponse: %ld", buf, 0x2Au);
    }
  }

  if (v13 == 2)
  {
    if (*(a1 + 56))
    {
      v12 = 4;
    }

    else
    {
      v12 = 5;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_33:
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_22B6D1ABC;
  v26[3] = &unk_278708498;
  v25 = *(a1 + 40);
  v22 = v25.i64[0];
  v27 = vextq_s8(v25, v25, 8uLL);
  v28 = v7;
  v29 = v13;
  v32 = *(a1 + 57);
  v30 = v11;
  v31 = v12;
  v23 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v26);

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B6D1A80(void *a1)
{
  result = [MEMORY[0x277D1AB70] isValidActiveFilterAction:a1[5] subAction:a1[6]];
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_22B6D1E90(uint64_t a1)
{
  if ((*(*(a1 + 32) + 8) & 1) == 0)
  {
    if ([*(a1 + 40) isEqualToString:*(a1 + 48)])
    {
      [*(a1 + 32) _disableSpamFilteringAndRelay];
      if (IMOSLoggingEnabled())
      {
        v2 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          *v3 = 0;
          _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Spam filter state changed to None", v3, 2u);
        }
      }
    }
  }

  *(*(a1 + 32) + 8) = 0;
}

void sub_22B6D3BD4(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B6D3F34;
  aBlock[3] = &unk_2787084E8;
  v18 = *(a1 + 112);
  v4 = v3;
  v17 = v4;
  v5 = _Block_copy(aBlock);
  if ([MEMORY[0x277D1AB70] supportsIncomingSMSRelayFiltering])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Device is iPad. Checking if we need to update filterCapbilities from relayed message", buf, 2u);
      }
    }

    if ([*(a1 + 32) length] && (v7 = *(a1 + 40)) != 0)
    {
      v8 = [v7 filterExtensionName];
      v9 = [*(a1 + 40) smsFilterCapabilitiesOptions];
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = *(a1 + 32);
          *buf = 138412802;
          v20 = v8;
          v21 = 2048;
          v22 = v9;
          v23 = 2112;
          v24 = v11;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Received filterExtensionName: %@, smsFilterCapabilitiesOptions: %lu from deviceID:%@. Checking if we need to update filterCapabilities", buf, 0x20u);
        }
      }

      [*(a1 + 48) _checkAndUpdateSMSFilteringSettingsForDeviceID:*(a1 + 32) smsFilterCapabilitiesOptions:v9 filterExtensionName:v8];
    }

    else if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        *buf = 138412290;
        v20 = v13;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Received invalid deviceID:%@. Not checking if we need to update filterCapabilities", buf, 0xCu);
      }
    }

    [*(a1 + 48) _categorizeRelayMessageWithCategory:*(a1 + 136) subCategory:*(a1 + 144) deviceID:*(a1 + 32) completion:v5];
  }

  else if ([*(a1 + 48) _shouldCheckChatForSMSSpam:*(a1 + 56) participants:*(a1 + 64) sender:*(a1 + 72) chat:*(a1 + 80) fallbackFilterCategory:*(*(a1 + 120) + 8) + 24 fallbackFilterSubCategory:*(*(a1 + 128) + 8) + 24])
  {
    **(a1 + 152) = 1;
    LOBYTE(v15) = *(a1 + 161);
    [*(a1 + 48) _smsSpamCheck:v5 withMessageBody:*(a1 + 88) withGuid:*(a1 + 96) sender:*(a1 + 72) receiverISOCountryCode:*(a1 + 104) receivedViaRelay:*(a1 + 160) containsOneTimeCode:v15];
  }

  else
  {
    (*(v5 + 2))(v5, *(*(*(a1 + 120) + 8) + 24), *(*(*(a1 + 128) + 8) + 24), 0, v4, 0, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_22B6D3FA4(uint64_t a1, uint64_t a2)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B6D4084;
  v8[3] = &unk_278708560;
  v12 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  v11 = *(a1 + 64);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = v4;
  *&v7 = v3;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

uint64_t sub_22B6D4084(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  v3 = IMOSLoggingEnabled();
  if (v2 == 8)
  {
    if (v3)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "This sender is a contact, not asking for junk", &v17, 2u);
      }
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    v10 = *(*(*(a1 + 56) + 8) + 24);
    v11 = *(*(*(a1 + 64) + 8) + 24);
    result = (*(*(a1 + 40) + 16))();
  }

  else if (v2 == 1)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [*(a1 + 32) guid];
        v17 = 138412290;
        v18 = v5;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "CTS marked chat as Junk: %@", &v17, 0xCu);
      }
    }

    [*(a1 + 32) setSpamDetectionSource:3];
    [*(a1 + 32) updateIsFiltered:2];
    *(*(*(a1 + 56) + 8) + 24) = 2;
    v6 = *(*(*(a1 + 56) + 8) + 24);
    v7 = *(*(*(a1 + 64) + 8) + 24);
    result = (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v3)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 72);
        v14 = [*(a1 + 32) guid];
        v17 = 134218242;
        v18 = v13;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "CTS chat is %ld for chat: %@", &v17, 0x16u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Calling Trust Kit next", &v17, 2u);
      }
    }

    result = (*(*(a1 + 48) + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22B6D4344(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6D42B0);
  }

  _Unwind_Resume(a1);
}

void sub_22B6D48CC(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = +[IMDMessageStore sharedInstance];
  v4 = [v3 messageWithGUID:v18];

  if (v4)
  {
    v5 = [v4 service];
    if ([v5 isEqualToString:*MEMORY[0x277D1A620]])
    {

LABEL_5:
      v10 = *(a1 + 32);
      v11 = [v4 service];
      v12 = [v10 valueForKey:v11];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = [MEMORY[0x277CBEB18] array];
      }

      v15 = v14;

      [v15 addObject:v18];
      v16 = *(a1 + 32);
      v17 = [v4 service];
      [v16 setObject:v15 forKeyedSubscript:v17];

      goto LABEL_9;
    }

    v6 = +[IMDServiceController sharedController];
    v7 = [v4 service];
    v8 = [v6 serviceWithName:v7];
    v9 = [v8 supportsRelay];

    if (v9)
    {
      goto LABEL_5;
    }
  }

LABEL_9:
}

void sub_22B6D6704(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v28 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = *(a1 + 32);
  v24 = *(v23 + 200);
  if (v24 != v20)
  {
    *(v23 + 200) = 0;

    if ([v20 length])
    {
      v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v20];
      v26 = *(a1 + 32);
      v27 = *(v26 + 200);
      *(v26 + 200) = v25;
    }
  }

  [*(a1 + 32) _login_usernameAndPasswordReadyWithAccount:*(a1 + 40)];
}

void sub_22B6D6F38(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6D6DA8);
  }

  _Unwind_Resume(a1);
}

void sub_22B6D6F88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9, unsigned __int8 a10, char a11)
{
  v24 = a3;
  v13 = a7;
  v14 = *(a1 + 32);
  v15 = *(v14 + 120);
  *(v14 + 120) = 0;

  if (*(*(a1 + 32) + 140) == 1)
  {
    if (a9)
    {
      [*(a1 + 40) setLoginStatus:0 message:0];
      [*(a1 + 32) disallowReconnection];
    }

    else if ([v13 length] && objc_msgSend(v24, "length"))
    {
      if (([v24 isEqualToString:*(*(a1 + 32) + 112)] & 1) == 0)
      {
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v24, *MEMORY[0x277D19420], 0}];
        [*(a1 + 40) writeAccountDefaults:v16];
      }

      if (*(*(a1 + 32) + 200) != v13)
      {
        v17 = [v13 copy];
        v18 = *(a1 + 32);
        v19 = *(v18 + 200);
        *(v18 + 200) = v17;
      }

      v20 = +[IMDDaemonPropertyManager sharedManager];
      v21 = [MEMORY[0x277CCABB0] numberWithBool:a10];
      [v20 setValue:v21 ofPersistentProperty:@"RememberPassword"];

      *(*(a1 + 32) + 141) = 1;
      *(*(a1 + 32) + 141) = a10;
      [*(a1 + 32) _login_checkUsernameAndPasswordWithAccount:*(a1 + 40)];
    }

    else
    {
      if (a11)
      {
        v22 = [*(a1 + 32) broadcaster];
        v23 = [*(a1 + 40) accountID];
        [v22 showForgotPasswordNotificationForAccount:v23];
      }

      [*(a1 + 40) setLoginStatus:0 message:0];
      [*(a1 + 32) autoReconnectWithAccount:*(a1 + 40)];
    }
  }
}

void sub_22B6D7CF8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6D7CB0);
  }

  _Unwind_Resume(a1);
}

void sub_22B6D94F8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6D9444);
  }

  _Unwind_Resume(a1);
}

void sub_22B6D9B00(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6D9AE8);
  }

  _Unwind_Resume(a1);
}

id sub_22B6DC37C(uint64_t a1, void *a2)
{
  v2 = [a2 handleInfo];
  v3 = JWEncodeDictionary();

  return v3;
}

IMDHandle *sub_22B6DD5C8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [IMDHandle alloc];
  v4 = [v2 objectForKey:*MEMORY[0x277D193A8]];
  v5 = [v2 objectForKey:*MEMORY[0x277D193C0]];
  v6 = [v2 objectForKey:*MEMORY[0x277D193A0]];

  v7 = [(IMDHandle *)v3 initWithID:v4 unformattedID:v5 countryCode:v6 personCentricID:0];

  return v7;
}

void sub_22B6DD878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B6DD898(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = a1[4];
        v6 = a1[5];
        v8 = 138412802;
        v9 = v5;
        v10 = 2112;
        v11 = v6;
        v12 = 2112;
        v13 = v3;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Failed to add sync chat slice with service %@ for chat with guid %@ error: %@", &v8, 0x20u);
      }
    }
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B6DDB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B6DDB5C(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = a1[4];
        v6 = a1[5];
        v8 = 138412802;
        v9 = v5;
        v10 = 2112;
        v11 = v6;
        v12 = 2112;
        v13 = v3;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Failed to add service %@ to chat with guid %@ error: %@", &v8, 0x20u);
      }
    }
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B6DE3D0()
{
  qword_281421078 = objc_alloc_init(IMDBadgeUtilities);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B6DE778(uint64_t a1, void *a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Rebuild unread message count", v5, 2u);
    }
  }

  return [a2 _rebuildUnreadMessageCount];
}

void sub_22B6DE9D0(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);
  v4 = IMOSLoggingEnabled();
  if (v3 == v2)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Not updating badge for unread count change.", v10, 2u);
      }
    }
  }

  else
  {
    if (v4)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 40);
        v8 = *(*(a1 + 32) + 24);
        v10[0] = 67109376;
        v10[1] = v8;
        v11 = 1024;
        v12 = v7;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Unread count changed from %d to %d", v10, 0xEu);
      }
    }

    *(*(a1 + 32) + 24) = *(a1 + 40);
    [*(a1 + 32) _updateBadge];
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B6DEC68(uint64_t result)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(*(result + 32) + 32) != *(result + 40))
  {
    v1 = result;
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(v1 + 40);
        v4 = *(*(v1 + 32) + 32);
        v8 = 134218240;
        v9 = v4;
        v10 = 2048;
        v11 = v3;
        _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Failed message date changed from %lld to %lld", &v8, 0x16u);
      }
    }

    v6 = *(v1 + 32);
    v5 = v1 + 32;
    [v6 _cacheFailureDate:*(v5 + 8)];
    [*v5 _compareLastFailureDateAndUpdateBadge:*(v5 + 8)];
    result = [*v5 _stopSuppressingSound];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B6DEEA0(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v3 = [*(a1 + 32) pendingSatelliteMessagesPerService];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];

  v4 = *(a1 + 32);

  return [v4 _updateBadge];
}

uint64_t sub_22B6DEF18(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 integerValue];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

void sub_22B6DF064(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Notification Center post badge number with error: [%@]", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_22B6DF2B8(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Notification Center post badge string with error: [%@]", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_22B6DF38C()
{
  v0 = CFPreferencesCopyAppValue(@"StoreDemoMode", @"com.apple.demo-settings");
  byte_2814212F0 = [v0 BOOLValue];
}

void sub_22B6DF4F8(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), sub_22B6DF5E8, @"com.apple.IMSharedUtilities.IMUserLoginIntentChangedInternal", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v3, *(a1 + 32), sub_22B6DF5E8, @"__kIMDBadgeUtilitiesLoginStatusChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v4, *(a1 + 32), sub_22B6DF5E8, @"__kIMDBadgeUtilitiesOperationalAccountsChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6DF684;
  block[3] = &unk_278702FF0;
  block[4] = v5;
  dispatch_async(v6, block);
}

uint64_t sub_22B6DF5E8(uint64_t a1, void *a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Unexpected log out dependent value changed", v5, 2u);
    }
  }

  return [a2 checkIfUnexpectedlyLoggedOut];
}

uint64_t sub_22B6DF684(uint64_t a1)
{
  result = [*(a1 + 32) _checkIfUnexpectedlyLoggedOut];
  *(*(a1 + 32) + 18) = 1;
  return result;
}

uint64_t sub_22B6DF6B8(uint64_t a1)
{
  result = [*(a1 + 32) _isUnexpectedlyLoggedOut];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_22B6DFD94(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [a1 remoteMembers];
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Filtering down participant list %@ to remove associated members", &v8, 0xCu);
    }
  }

  v4 = [a1 remoteMembers];
  v5 = [v4 __imSetByApplyingBlock:&unk_283F1B3C8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id sub_22B6DFEBC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 association];
  v4 = v3;
  if (v3 && ![v3 isPrimary])
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

void sub_22B6E0028(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "TUConversation registered", buf, 2u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6E0118;
  block[3] = &unk_278702FF0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_22B6E0118(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationManager];
  [v2 addDelegate:*(a1 + 32) queue:MEMORY[0x277D85CD0]];

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Completed conversation manager setup for imagent", v4, 2u);
    }
  }
}

void sub_22B6E0AE4(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B6E0A58);
  }

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(exc_buf);
}

void sub_22B6E0B84(uint64_t a1, void *a2)
{
  v13 = a2;
  v4 = [v13 serviceName];
  v5 = [v4 isEqualToString:*MEMORY[0x277D1A620]];

  v6 = v13;
  if (v5)
  {
    v7 = *(*(a1 + 32) + 8);
    v10 = *(v7 + 40);
    v8 = (v7 + 40);
    v9 = v10;
    if (v10)
    {
      v11 = [v9 lastMessageTimeStampOnLoad];
      v12 = v11 < [v13 lastMessageTimeStampOnLoad];
      v6 = v13;
      if (!v12)
      {
        goto LABEL_7;
      }

      v8 = (*(*(a1 + 32) + 8) + 40);
    }

    objc_storeStrong(v8, a2);
    v6 = v13;
  }

LABEL_7:
}

id sub_22B6E0C44(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D6EEE8];
  v3 = [a2 ID];
  v4 = [v2 normalizedHandleWithDestinationID:v3];

  return v4;
}

void sub_22B6E1294(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B6E1204);
  }

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(exc_buf);
}

void sub_22B6E131C(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v6 = [v10 messagesGroupUUID];
  v7 = [v6 UUIDString];
  v8 = [*(a1 + 32) groupID];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

id sub_22B6E13E4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D6EEE8];
  v3 = [a2 ID];
  v4 = [v2 normalizedHandleWithDestinationID:v3];

  return v4;
}

id sub_22B6E2028(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 isLightweightMember])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v2;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "This is a lightweight member - skipping: %@", &v9, 0xCu);
      }
    }

    v4 = 0;
  }

  else
  {
    v5 = [v2 handle];
    v6 = [v5 value];
    v4 = IMChatCanonicalIDSIDsForAddress();
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

void sub_22B6E2158(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v23 = a2;
  obj = [v23 allKeys];
  v2 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v2)
  {
    v4 = *v25;
    v20 = *MEMORY[0x277D193A8];
    *&v3 = 138412290;
    v19 = v3;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v25 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v24 + 1) + 8 * i);
        v7 = [v23 objectForKeyedSubscript:{v6, v19}];
        v8 = [v7 integerValue];

        v9 = IMOSLoggingEnabled();
        if (v8 == 1)
        {
          if (v9)
          {
            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *buf = v19;
              v32 = v6;
              _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Destination is registered for iMessage, adding to group: %@", buf, 0xCu);
            }
          }

          v11 = *(a1 + 32);
          v28 = v20;
          v12 = [v6 _stripFZIDPrefix];
          v29 = v12;
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          v30 = v13;
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
          v15 = [*(a1 + 40) guid];
          v16 = [*(a1 + 40) chatIdentifier];
          [v11 invitePersonInfo:v14 withMessage:0 toChatID:v15 identifier:v16 style:{objc_msgSend(*(a1 + 40), "style")}];
        }

        else if (v9)
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = v19;
            v32 = v6;
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Destination is NOT registered for iMessage, skipping adding to group: %@", buf, 0xCu);
          }
        }
      }

      v2 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v2);
  }

  v18 = *MEMORY[0x277D85DE8];
}

id sub_22B6E29EC(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 isLightweightMember])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v2;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "This is a lightweight member - skipping: %@", &v9, 0xCu);
      }
    }

    v4 = 0;
  }

  else
  {
    v5 = [v2 handle];
    v6 = [v5 value];
    v4 = IMChatCanonicalIDSIDsForAddress();
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

void sub_22B6E3304(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 encryptedValuesByKey];
  [v8 setObject:v7 forKeyedSubscript:v6];
}

void sub_22B6E3380(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_283F23018;
  }

  v6 = v5;
  [a1 _setValue:? forKey:?];
}

void sub_22B6E33E4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &unk_283F4ED68;
  }

  v6 = v5;
  [a1 _setValue:? forKey:?];
}

void sub_22B6E3448(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  if (!v6)
  {
    v6 = &unk_283F4ED68;
  }

  v9 = v6;
  v7 = a4;
  v8 = [a1 valuesByKey];
  [v8 setObject:v9 forKeyedSubscript:v7];
}

void sub_22B6E34CC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v6 = a4;
  v7 = v9;
  v8 = v6;
  if (!v9)
  {
    v7 = [MEMORY[0x277CBEA90] data];
  }

  v10 = v7;
  [a1 _setValue:v7 forKey:v8];
}

void sub_22B6E3550(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;
  [a1 _setValue:? forKey:?];
}

void *sub_22B6E35B4(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    return [a1 setObject:? forKey:?];
  }

  return a1;
}

void sub_22B6E35C0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v6 = a4;
  v7 = v9;
  if (!v9)
  {
    v7 = [MEMORY[0x277CBEAA8] date];
  }

  v10 = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v7, "__im_nanosecondTimeInterval")}];
  [a1 _setCKRecordNumber:v8 forKey:v6];
}

id sub_22B6E366C(void *a1)
{
  v1 = MEMORY[0x277CBEAA8];
  v2 = [a1 _numberForKey:?];
  v3 = [v1 __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{objc_msgSend(v2, "longLongValue")}];

  return v3;
}

id sub_22B6E36CC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [a1 encryptedValuesByKey];
    v6 = [v5 objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_22B6E374C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [a1 _valueForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_22B6E37B0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [a1 _valueForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_22B6E3814(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [a1 _valueForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_22B6E3878(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [a1 objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_22B6E38DC(void *a1)
{
  v2 = [a1 _dataForKey:@"msgProto4"];
  v3 = [MEMORY[0x277D1AA28] protobufForCompressedDataP4:v2];
  v4 = v3;
  if (!v3 || ![v3 hasActualParentChatId] || (objc_msgSend(v4, "actualParentChatId"), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [a1 _stringForKey:@"chatID"];
  }

  return v5;
}

void sub_22B6E41FC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t sub_22B6E43EC(void *a1)
{
  if (![a1 isSubService] || (v2 = objc_msgSend(objc_msgSend(a1, "mainService"), "serviceProperties"), (result = objc_msgSend(v2, "objectForKey:", *MEMORY[0x277D1A678])) == 0))
  {
    v4 = [a1 serviceProperties];
    v5 = [v4 objectForKey:*MEMORY[0x277D1A670]];

    return [v5 firstObject];
  }

  return result;
}

uint64_t sub_22B6E60C8(uint64_t a1)
{
  [+[IMDAccountController sharedAccountController](IMDAccountController "sharedAccountController")];
  v1 = [(IMLocalDaemonProtocol *)+[IMDLocalDaemon sharedDaemon](IMDLocalDaemon parentalControls];

  return MEMORY[0x2821F9670](v1, sel_updateAccountActivation);
}

uint64_t sub_22B6E62A4()
{
  qword_281420F48 = objc_alloc_init(IMDRelayServiceReachabilityController);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B6E64B8(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x2821F9670](a1[4], sel__calculateReachabilityWithRequest_responseHandler_);
}

void sub_22B6E6860(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6E6800);
  }

  _Unwind_Resume(a1);
}

void sub_22B6E69B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) result];
  [v2 _handleReachabilityResult:v3 messageID:*(a1 + 48) fromToken:*(a1 + 56)];
}

void sub_22B6E73D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6E74BC;
  block[3] = &unk_2787038F8;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 32);
  v7 = v5;
  v8 = v6;
  v9 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t sub_22B6E7C20()
{
  qword_281420F50 = objc_alloc_init(IMDRelayServiceController);

  return MEMORY[0x2821F96F8]();
}

void sub_22B6E8B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22B6E8B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = [*(a1 + 32) mutableCopy];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v10 setObject:v6 forKeyedSubscript:IMDRelaySpamCategoryKey];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v10 setObject:v7 forKeyedSubscript:IMDRelaySpamSubCategoryKey];

  v8 = [MEMORY[0x277D1A8F8] shouldUploadToMMCS:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained relayDictionaryToPeers:v10 requiresUpload:v8 serviceName:*(a1 + 40) requiredCapabilities:0];
}

void sub_22B6EA5A4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6EA42CLL);
  }

  _Unwind_Resume(a1);
}

void *sub_22B6ECC3C(uint64_t a1, void *a2)
{
  if ([a2 objectForKey:*MEMORY[0x277D18A88]])
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B6ECF98(uint64_t a1, void *a2)
{
  v2 = [objc_msgSend(a2 "trimmedString")];
  if (!MEMORY[0x231897A50]())
  {
    return v2;
  }

  return IMCanonicalizeFormattedString();
}

uint64_t sub_22B6EE988(uint64_t a1, void *a2)
{
  if ([a2 isEqualToIgnoringCase:*MEMORY[0x277D18AB8]])
  {
    return 0;
  }

  return [a2 _stripFZIDPrefix];
}

uint64_t sub_22B6EEA68()
{
  v0 = objc_alloc(MEMORY[0x277D18778]);
  qword_281421310 = [v0 initWithService:*MEMORY[0x277D186B0]];
  v1 = objc_alloc(MEMORY[0x277D18778]);
  result = [v1 initWithService:*MEMORY[0x277D186B8]];
  qword_281421318 = result;
  return result;
}

uint64_t sub_22B6EF65C(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = [a2 objectForKey:IMDRelayMessageDictionaryRecipientIDKey];
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Found Recipient %@", &v6, 0xCu);
    }
  }

  result = [a2 objectForKey:IMDRelayMessageDictionaryRecipientIDKey];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B6EF7A0()
{
  qword_27D8D00B0 = objc_alloc_init(IMDLiteMessageCompressor);

  return MEMORY[0x2821F96F8]();
}

uint64_t IMDServiceSession.deleteAllData()()
{
  sub_22B7DBA18();
  *(v0 + 16) = sub_22B7DBA08();
  v2 = sub_22B7DB9C8();

  return MEMORY[0x2822009F8](sub_22B6EF8FC, v2, v1);
}

uint64_t sub_22B6EF8FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B6EFAD0(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_22B7DBA18();
  v1[4] = sub_22B7DBA08();
  v3 = sub_22B7DB9C8();

  return MEMORY[0x2822009F8](sub_22B6EFB6C, v3, v2);
}

uint64_t sub_22B6EFB6C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v0[6] = sub_22B7DBA08();
  v5 = sub_22B7DB9C8();

  return MEMORY[0x2822009F8](sub_22B6EFC0C, v5, v4);
}

uint64_t sub_22B6EFC0C()
{
  v2 = v0[5];
  v1 = v0[6];

  v2[2](v2);
  _Block_release(v2);
  v3 = v0[1];

  return v3();
}

uint64_t IMDServiceSession.shouldDisplayGroupNameAndPhoto(with:handles:)()
{
  sub_22B7DAF08();
  sub_22B6EFD80();
  return sub_22B7DAEF8() & 1;
}

id sub_22B6EFCF4(void **a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v1 ID];
  v4 = [v2 _hasSavedContactCardForHandle_];

  return v4;
}

unint64_t sub_22B6EFD80()
{
  result = qword_28141EFD0;
  if (!qword_28141EFD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28141EFD0);
  }

  return result;
}

double sub_22B6EFE5C@<D0>(uint64_t a1@<X1>, void *a2@<X3>, _OWORD *a3@<X8>)
{
  v3 = a2;
  if (a1)
  {
    v5 = sub_22B7DB678();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (a2)
  {
LABEL_3:
    v3 = sub_22B7DB678();
  }

LABEL_4:
  v6 = IMGetCachedDomainValueForKey();

  if (v6)
  {
    sub_22B7DC118();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_22B6EFF18(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a4;
  if (a2)
  {
    v7 = sub_22B7DB678();
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a4)
  {
LABEL_3:
    v6 = sub_22B7DB678();
  }

LABEL_4:
  sub_22B6F0E88(a5, v15);
  v8 = v16;
  if (v16)
  {
    v9 = sub_22B4D2BCC(v15, v16);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x28223BE20](v9);
    v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    sub_22B7DC508();
    (*(v10 + 8))(v13, v8);
    sub_22B4CFB78(v15);
  }

  IMSetDomainValueForKey();

  return swift_unknownObjectRelease();
}

uint64_t default argument 1 of IMDPersistentTaskCriticalLimiter.init(delegate:defaults:)()
{
  type metadata accessor for IMDPersistentTaskCriticalLimiter.Defaults();
  result = swift_allocObject();
  *(result + 16) = sub_22B6EFF14;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 32) = sub_22B6F0098;
  *(result + 56) = 1;
  *(result + 64) = 0;
  *(result + 72) = 1;
  *(result + 80) = 0;
  *(result + 88) = 256;
  return result;
}

uint64_t sub_22B6F010C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for FileCreateFlags(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FileCreateFlags(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void *sub_22B6F0264@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_22B6F0290@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_22B6F0350(uint64_t a1, id *a2)
{
  result = sub_22B7DB688();
  *a2 = 0;
  return result;
}

uint64_t sub_22B6F03C8(uint64_t a1, id *a2)
{
  v3 = sub_22B7DB698();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22B6F0448@<X0>(uint64_t *a1@<X8>)
{
  sub_22B7DB6A8();
  v2 = sub_22B7DB678();

  *a1 = v2;
  return result;
}

uint64_t sub_22B6F048C()
{
  v1 = *v0;
  v2 = sub_22B7DB6A8();
  v3 = MEMORY[0x2318951E0](v2);

  return v3;
}

uint64_t sub_22B6F04C8()
{
  v1 = *v0;
  sub_22B7DB6A8();
  sub_22B7DB758();
}

uint64_t sub_22B6F051C()
{
  v1 = *v0;
  sub_22B7DB6A8();
  sub_22B7DC668();
  sub_22B7DB758();
  v2 = sub_22B7DC6B8();

  return v2;
}

uint64_t sub_22B6F0590()
{
  v1 = *v0;
  sub_22B7DC668();
  MEMORY[0x231895FF0](v1);
  return sub_22B7DC6B8();
}

uint64_t sub_22B6F05D8()
{
  v1 = *v0;
  sub_22B7DC668();
  MEMORY[0x231895FF0](v1);
  return sub_22B7DC6B8();
}

uint64_t sub_22B6F061C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_22B6F0A9C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_22B6F06EC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22B6F0854(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_22B7DB6A8();
  v6 = v5;
  if (v4 == sub_22B7DB6A8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22B7DC518();
  }

  return v9 & 1;
}

uint64_t sub_22B6F08DC(uint64_t a1)
{
  v2 = sub_22B6F06EC(&qword_27D8CCE78, type metadata accessor for URLResourceKey);
  v3 = sub_22B6F06EC(&unk_27D8CCE80, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22B6F0998@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22B7DB678();

  *a2 = v5;
  return result;
}

uint64_t sub_22B6F09E0(uint64_t a1)
{
  v2 = sub_22B6F06EC(&qword_27D8CCE68, type metadata accessor for Key);
  v3 = sub_22B6F06EC(&qword_27D8CCE70, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22B6F0A9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_22B6F0AD4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22B6F0B1C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B6F12E8;

  return sub_22B6EFAD0(v2);
}

uint64_t sub_22B6F0BC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22B6F12E8;

  return sub_22B7C0D2C(v2, v3, v5);
}

uint64_t sub_22B6F0C88()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B6F0CC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B6F0D94;

  return sub_22B7C0E14(a1, v4, v5, v7);
}

uint64_t sub_22B6F0D94()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B6F0E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&unk_27D8CCDC0, &qword_22B7F9580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_22B6F0F0C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22B6F0F18(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B6F0F38(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for CacheStats(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CacheStats(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CacheStats(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_22B6F10BC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_22B6F1320()
{
  v1 = v0[1];
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!v1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v2 = *v0;
  if (sub_22B7DB1C8())
  {
    return;
  }

  sub_22B7DB1D8();
  v3 = v0[2];
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v0[2] = v5;
}

__n128 sub_22B6F1388(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22B6F139C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B6F13E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B6F1434()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8D4868);
  sub_22B4CFA74(v0, qword_27D8D4868);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

id sub_22B6F14A0()
{
  result = [objc_allocWithZone(IMDCommunicationTrustManager) init];
  qword_27D8D4880 = result;
  return result;
}

IMDCommunicationTrustManager __swiftcall IMDCommunicationTrustManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_22B6F16F0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_22B7DB6A8();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_22B6F17D8;

  return (sub_22B6F1AC4)(v5, v7);
}

uint64_t sub_22B6F17D8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v6)
  {
    v9 = *(v3 + 24);
    v9[2](v9, a1);
    _Block_release(v9);
  }

  v10 = *(v8 + 8);

  return v10();
}

unint64_t type metadata accessor for IMDCommunicationTrustManager()
{
  result = qword_27D8CD5B8;
  if (!qword_27D8CD5B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8CD5B8);
  }

  return result;
}

uint64_t sub_22B6F1A10()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B6F12E8;

  return sub_22B6F16F0(v2, v3, v4);
}

uint64_t sub_22B6F1AC4(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = *(*(sub_22B6F0AD4(&qword_27D8CD5C8, &qword_22B7F9398) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v4 = sub_22B7DB1E8();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = sub_22B7DB208();
  v2[12] = v7;
  v8 = *(v7 - 8);
  v2[13] = v8;
  v9 = *(v8 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B6F1C18, 0, 0);
}

uint64_t sub_22B6F1C18()
{
  v1 = v0[7];
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0[6] & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = v0[14];
    v4 = v0[8];
    (*(v0[10] + 104))(v0[11], *MEMORY[0x277CD4738], v0[9]);

    sub_22B7DB1F8();
    sub_22B7DB1A8();
    v0[15] = sub_22B7DB198();
    v5 = sub_22B7DB168();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = *(MEMORY[0x277CFB9A8] + 4);
    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_22B6F1E94;
    v8 = v0[14];
    v9 = v0[8];

    return MEMORY[0x28214E8B0](v8, v9);
  }

  else
  {
    if (qword_27D8CCBF0 != -1)
    {
      swift_once();
    }

    v10 = sub_22B7DB2B8();
    sub_22B4CFA74(v10, qword_27D8D4868);
    v11 = sub_22B7DB298();
    v12 = sub_22B7DBC98();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22B4CC000, v11, v12, "No sender provided", v13, 2u);
      MEMORY[0x231898D60](v13, -1, -1);
    }

    v14 = v0[14];
    v15 = v0[11];
    v16 = v0[8];

    v17 = v0[1];

    return v17(4);
  }
}

uint64_t sub_22B6F1E94(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v5 = *(*v2 + 120);
  v6 = *(*v2 + 64);
  v9 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  sub_22B6F248C(v6);

  if (v1)
  {
    v7 = sub_22B6F2230;
  }

  else
  {
    v7 = sub_22B6F1FE8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B6F1FE8()
{
  v26 = v0;
  if (qword_27D8CCBF0 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_27D8D4868);

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBC78();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[17];
    v6 = v0[13];
    v23 = v0[12];
    v24 = v0[14];
    v8 = v0[6];
    v7 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315394;
    v11 = sub_22B7DB178();
    v13 = sub_22B4CFAAC(v11, v12, &v25);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_22B4CFAAC(v8, v7, &v25);
    _os_log_impl(&dword_22B4CC000, v3, v4, "Successfully fetched trust score: %s for sender: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v10, -1, -1);
    MEMORY[0x231898D60](v9, -1, -1);

    (*(v6 + 8))(v24, v23);
  }

  else
  {
    v15 = v0[13];
    v14 = v0[14];
    v16 = v0[12];

    (*(v15 + 8))(v14, v16);
  }

  if (v0[17] >= 0xAuLL)
  {
    v17 = 4;
  }

  else
  {
    v17 = v0[17];
  }

  v18 = v0[14];
  v19 = v0[11];
  v20 = v0[8];

  v21 = v0[1];

  return v21(v17);
}

uint64_t sub_22B6F2230()
{
  v29 = v0;
  if (qword_27D8CCBF0 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[7];
  v3 = sub_22B7DB2B8();
  sub_22B4CFA74(v3, qword_27D8D4868);

  v4 = v1;
  v5 = sub_22B7DB298();
  v6 = sub_22B7DBC98();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[18];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v7)
  {
    v27 = v0[14];
    v13 = v0[6];
    v12 = v0[7];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_22B4CFAAC(v13, v12, &v28);
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v17 = v0[2];
    v16 = v0[3];
    v18 = v0[4];
    v19 = sub_22B7DC5C8();
    v21 = sub_22B4CFAAC(v19, v20, &v28);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_22B4CC000, v5, v6, "Failed to determinate trust score for: %s with error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v15, -1, -1);
    MEMORY[0x231898D60](v14, -1, -1);

    (*(v10 + 8))(v27, v11);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v22 = v0[14];
  v23 = v0[11];
  v24 = v0[8];

  v25 = v0[1];

  return v25(4);
}

uint64_t sub_22B6F248C(uint64_t a1)
{
  v2 = sub_22B6F0AD4(&qword_27D8CD5C8, &qword_22B7F9398);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_22B6F24F4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_22B6F2558()
{
  if (*(v0 + 56))
  {
    v1 = sub_22B7DB678();
    IMBagDoubleValueWithDefault();
    v3 = v2;

    *(v0 + 48) = v3;
    *(v0 + 56) = 0;
  }

  else
  {
    v4 = *(v0 + 48);
  }
}

void sub_22B6F25D0()
{
  if (*(v0 + 72))
  {
    v1 = sub_22B7DB678();
    IMBagDoubleValueWithDefault();
    v3 = v2;

    *(v0 + 64) = v3;
    *(v0 + 72) = 0;
  }

  else
  {
    v4 = *(v0 + 64);
  }
}

id sub_22B6F2648()
{
  if (*(v0 + 89))
  {
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v2 = result;
      v3 = [result isInternalInstall];

      if (v3)
      {
        v4 = sub_22B7DB678();
        IMBagDoubleValueWithDefault();
        v6 = v5;

        result = v6;
      }

      else
      {
        result = 0;
      }

      *(v0 + 80) = result;
      *(v0 + 88) = v3 ^ 1;
      *(v0 + 89) = 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    result = *(v0 + 80);
    v7 = *(v0 + 88) & 1;
  }

  return result;
}

uint64_t sub_22B6F2724@<X0>(char *a1@<X8>)
{
  v3 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = sub_22B7DA968();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 16);
  v12 = *(v1 + 24);
  v20 = 0;
  v21 = 0xE000000000000000;

  sub_22B7DC2E8();

  v20 = sub_22B7DBF38();
  v21 = v14;
  MEMORY[0x231895140](0xD000000000000024, 0x800000022B80E320);
  v13(v22, 0xD000000000000011, 0x800000022B80E290, v20, v21);

  if (!v22[3])
  {
    sub_22B4D0D64(v22, &unk_27D8CCDC0, &qword_22B7F9580);
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_6;
  }

  v15 = swift_dynamicCast();
  (*(v8 + 56))(v6, v15 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_6:
    sub_22B4D0D64(v6, &unk_27D8CF790, &qword_22B7F9578);
    v18 = 1;
    goto LABEL_7;
  }

  v16 = *(v8 + 32);
  v16(v11, v6, v7);
  sub_22B6FC35C(&qword_281420E88);
  result = sub_22B7DB658();
  if (result)
  {
    v16(a1, v11, v7);
    v18 = 0;
LABEL_7:
    v19 = sub_22B6F0AD4(&qword_27D8CD5D8, &qword_22B7F9530);
    return (*(*(v19 - 8) + 56))(a1, v18, 1, v19);
  }

  __break(1u);
  return result;
}

uint64_t sub_22B6F2A58(uint64_t a1)
{
  v3 = sub_22B6F0AD4(&qword_27D8CD5D0, &qword_22B7F9518);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v8 = *(v1 + 32);
  v7 = *(v1 + 40);
  *&v15 = 0;
  *(&v15 + 1) = 0xE000000000000000;

  sub_22B7DC2E8();

  *&v15 = sub_22B7DBF38();
  *(&v15 + 1) = v9;
  MEMORY[0x231895140](0xD000000000000024, 0x800000022B80E320);
  v10 = v15;
  sub_22B4D7E58(a1, v6, &qword_27D8CD5D0, &qword_22B7F9518);
  v11 = sub_22B6F0AD4(&qword_27D8CD5D8, &qword_22B7F9530);
  if ((*(*(v11 - 8) + 48))(v6, 1, v11) == 1)
  {
    sub_22B4D0D64(v6, &qword_27D8CD5D0, &qword_22B7F9518);
    v15 = 0u;
    v16 = 0u;
  }

  else
  {
    v12 = sub_22B7DA968();
    *(&v16 + 1) = v12;
    v13 = sub_22B6FC8CC(&v15);
    (*(*(v12 - 8) + 16))(v13, v6, v12);
    sub_22B4D0D64(v6, &qword_27D8CD5D8, &qword_22B7F9530);
  }

  v8(0xD000000000000011, 0x800000022B80E290, v10, *(&v10 + 1), &v15);

  sub_22B4D0D64(a1, &qword_27D8CD5D0, &qword_22B7F9518);
  return sub_22B4D0D64(&v15, &unk_27D8CCDC0, &qword_22B7F9580);
}

uint64_t sub_22B6F2CA8()
{
  v55 = sub_22B6F0AD4(&qword_27D8CD5F8, &qword_22B7FBAC0);
  v1 = *(*(v55 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v55);
  v53 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v54 = &v42 - v4;
  v5 = sub_22B7DA968();
  v6 = *(v5 - 8);
  v56 = v5;
  v57 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v60 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v12 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = *(v51 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v50 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  v18 = *(v0 + 16);
  v19 = *(v0 + 24);
  v61 = 0;
  v62 = 0xE000000000000000;

  sub_22B7DC2E8();

  v61 = sub_22B7DBF38();
  v62 = v20;
  MEMORY[0x231895140](0xD000000000000025, 0x800000022B80E2F0);
  v18(v63, 0xD000000000000011, 0x800000022B80E290, v61, v62);

  if (!v63[3])
  {
    sub_22B4D0D64(v63, &unk_27D8CCDC0, &qword_22B7F9580);
    return MEMORY[0x277D84F90];
  }

  sub_22B6F0AD4(&qword_27D8CD5F0, &unk_22B7F9590);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v22 = v61;
  v23 = *(v61 + 16);
  if (!v23)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_17:

    return v26;
  }

  v24 = 0;
  v25 = v61 + 32;
  v49 = v57 + 16;
  v44 = (v57 + 32);
  v42 = (v57 + 8);
  v26 = MEMORY[0x277D84F90];
  v47 = v61;
  v48 = v11;
  v46 = v23;
  v45 = v61 + 32;
  v43 = v17;
  while (v24 < *(v22 + 16))
  {
    v27 = *(v25 + 8 * v24);
    if (*(v27 + 16) == 2)
    {
      v59 = v26;
      v29 = v56;
      v28 = v57;
      v30 = v27 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
      v31 = *(v57 + 16);
      v31(v11, v30, v56);
      v31(v60, v30 + *(v28 + 72), v29);
      sub_22B6FC35C(&qword_281420E90);
      result = sub_22B7DB618();
      if ((result & 1) == 0)
      {
        goto LABEL_20;
      }

      v32 = *v44;
      v33 = v54;
      (*v44)(v54, v11, v29);
      v34 = v29;
      v35 = v55;
      v32((v33 + *(v55 + 48)), v60, v29);
      v36 = v53;
      sub_22B4D7E58(v33, v53, &qword_27D8CD5F8, &qword_22B7FBAC0);
      v58 = *(v35 + 48);
      v37 = v50;
      v32(v50, v36, v29);
      v38 = *v42;
      (*v42)(v36 + v58, v34);
      sub_22B6FC80C(v33, v36, &qword_27D8CD5F8, &qword_22B7FBAC0);
      v32((v37 + *(v52 + 36)), (v36 + *(v35 + 48)), v34);
      v38(v36, v34);
      v39 = v43;
      sub_22B6FC80C(v37, v43, &unk_27D8CEEC0, &qword_22B7FA060);
      v26 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_22B71B35C(0, v26[2] + 1, 1, v26);
      }

      v41 = v26[2];
      v40 = v26[3];
      v22 = v47;
      v11 = v48;
      v23 = v46;
      if (v41 >= v40 >> 1)
      {
        v26 = sub_22B71B35C(v40 > 1, v41 + 1, 1, v26);
      }

      v26[2] = v41 + 1;
      result = sub_22B6FC80C(v39, v26 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v41, &unk_27D8CEEC0, &qword_22B7FA060);
      v25 = v45;
    }

    if (v23 == ++v24)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22B6F32AC(uint64_t a1, uint64_t a2)
{
  v34 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v34);
  v8 = v29 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v30 = v2;
    v31 = a2;
    v35 = MEMORY[0x277D84F90];
    sub_22B7AB674(0, v9, 0);
    v10 = v35;
    v11 = *(v5 + 80);
    v29[1] = a1;
    v12 = a1 + ((v11 + 32) & ~v11);
    v33 = *(v5 + 72);
    v32 = xmmword_22B7F93A0;
    do
    {
      sub_22B4D7E58(v12, v8, &unk_27D8CEEC0, &qword_22B7FA060);
      sub_22B6F0AD4(&qword_27D8CD5E8, &qword_22B7F9588);
      v13 = sub_22B7DA968();
      v14 = *(v13 - 8);
      v15 = *(v14 + 72);
      v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = v32;
      v18 = v17 + v16;
      v19 = *(v14 + 16);
      v19(v18, v8, v13);
      v19(v18 + v15, &v8[*(v34 + 36)], v13);
      sub_22B4D0D64(v8, &unk_27D8CEEC0, &qword_22B7FA060);
      v35 = v10;
      v21 = *(v10 + 16);
      v20 = *(v10 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22B7AB674((v20 > 1), v21 + 1, 1);
        v10 = v35;
      }

      *(v10 + 16) = v21 + 1;
      *(v10 + 8 * v21 + 32) = v17;
      v12 += v33;
      --v9;
    }

    while (v9);

    v2 = v30;
  }

  else
  {

    v10 = 0;
  }

  v23 = *(v2 + 32);
  v22 = *(v2 + 40);
  v35 = 0;
  v36 = 0xE000000000000000;

  sub_22B7DC2E8();

  v35 = sub_22B7DBF38();
  v36 = v24;
  MEMORY[0x231895140](0xD000000000000025, 0x800000022B80E2F0);
  v25 = v35;
  v26 = v36;
  if (v10)
  {
    v27 = sub_22B6F0AD4(&qword_27D8CD5F0, &unk_22B7F9590);
  }

  else
  {
    v27 = 0;
    v36 = 0;
    v37 = 0;
  }

  v35 = v10;
  v38 = v27;
  v23(0xD000000000000011, 0x800000022B80E290, v25, v26, &v35);

  return sub_22B4D0D64(&v35, &unk_27D8CCDC0, &qword_22B7F9580);
}