@interface CKPendingConversation
+ (id)pendingConversationForHandle:(id)a3;
- (BOOL)isAppleConversation;
- (BOOL)isMakoConversation;
- (IMService)composeSendingService;
- (IMService)previousSendingService;
- (id)deviceIndependentID;
- (id)sendingService;
- (id)serviceReachabilityContextForRefreshContext:(id)a3;
- (void)refreshComposeSendingServiceForAddresses:(id)a3 context:(id)a4 withCompletionBlock:(id)a5;
- (void)refreshComposeSendingServiceForAddresses:(id)a3 withCompletionBlock:(id)a4;
- (void)refreshStatusForAddresses:(id)a3 context:(id)a4 withCompletionBlock:(id)a5;
- (void)refreshStatusForAddresses:(id)a3 withCompletionBlock:(id)a4;
@end

@implementation CKPendingConversation

- (id)sendingService
{
  v3 = [(CKConversation *)self chat];

  if (v3)
  {
    v11.receiver = self;
    v11.super_class = CKPendingConversation;
    v4 = [(CKConversation *)&v11 sendingService];
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = [(CKPendingConversation *)self composeSendingService];

    if (!v5 || ([(CKPendingConversation *)self composeSendingService], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_6:
      v6 = [(CKPendingConversation *)self previousSendingService];

      if (v6)
      {
        v4 = [(CKPendingConversation *)self previousSendingService];
      }

      else
      {
        v7 = MEMORY[0x1E69A5CA0];
        v8 = [(CKConversation *)self lastAddressedHandle];
        v9 = [(CKConversation *)self lastAddressedSIMID];
        LOBYTE(v7) = [v7 iMessageEnabledForSenderLastAddressedHandle:v8 simID:v9];

        if (v7)
        {
          [MEMORY[0x1E69A5C90] iMessageService];
        }

        else
        {
          [MEMORY[0x1E69A5C90] smsService];
        }
        v4 = ;
      }
    }
  }

  return v4;
}

- (id)serviceReachabilityContextForRefreshContext:(id)a3
{
  v4 = a3;
  v5 = [v4 customContext];

  if (v5)
  {
    v6 = [v4 customContext];
    v7 = [v6 copy];
  }

  else
  {
    v8 = [(CKConversation *)self chat];

    if (v8)
    {
      v6 = [MEMORY[0x1E69A5CA8] sharedController];
      v9 = [(CKConversation *)self chat];
      v7 = [v6 reachabilityContextForChat:v9];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E69A8240]);
      v6 = [(CKConversation *)self handles];
      if ([v6 count] <= 1)
      {
        v10 = 45;
      }

      else
      {
        v10 = 43;
      }

      [v7 setChatStyle:v10];
    }
  }

  v11 = [(CKConversation *)self lastAddressedHandle];
  v12 = [v11 _stripFZIDPrefix];
  [v7 setSenderLastAddressedHandle:v12];

  v13 = [(CKConversation *)self lastAddressedSIMID];
  [v7 setSenderLastAddressedSIMID:v13];

  v14 = [v4 customContext];
  if (v14 || ([(CKConversation *)self chat], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else if (IMBagBoolValueWithDefault())
  {
    [v7 setIsForPendingConversation:1];
  }

  if ([v4 isForPendingConversation] && IMBagBoolValueWithDefault())
  {
    [v7 setIsForPendingConversation:1];
  }

  v15 = [v7 preconditionsIgnoredForServices];
  v16 = [v15 mutableCopy];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v19 = v18;

  v20 = [v4 preconditionsIgnoredForServices];

  if (v20)
  {
    v21 = [v4 preconditionsIgnoredForServices];
    [v19 unionSet:v21];
  }

  v22 = [(CKPendingConversation *)self sendingService];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 internalName];
    [v19 addObject:v24];
  }

  v25 = [v19 copy];
  [v7 setPreconditionsIgnoredForServices:v25];

  return v7;
}

- (void)refreshStatusForAddresses:(id)a3 withCompletionBlock:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v9)
  {
    v10 = *v24;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(v8);
      }

      if (IMStringIsEmail())
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v12 = [(CKConversation *)self chat];
  [v12 shouldForceServerStatusRefresh];

  v13 = [(CKConversation *)self lastAddressedHandle];
  v14 = [v13 _stripFZIDPrefix];
  v15 = [v14 _bestGuessURI];

  v16 = [(CKConversation *)self lastAddressedSIMID];
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v28 = v15;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Calling IMChatCalculateServiceForSendingNewComposeMaybeForce with last addressed handle %@ simID %@", buf, 0x16u);
    }
  }

  v18 = [(CKConversation *)self chat];
  [v18 receivedResponseForChat];

  v19 = [(CKConversation *)self chat];
  [(CKConversation *)self forceMMS];
  v20 = [(CKConversation *)self chat];
  [v20 isDowngraded];
  v22 = v7;
  v21 = v7;
  IMChatCalculateServiceForSendingNewComposeMaybeForce();
}

uint64_t __71__CKPendingConversation_refreshStatusForAddresses_withCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4, a5, a6);
  }

  return result;
}

- (void)refreshStatusForAddresses:(id)a3 context:(id)a4 withCompletionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CKPendingConversation *)self serviceReachabilityContextForRefreshContext:v9];
  objc_initWeak(&location, self);
  v12 = [v9 availabilities];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__CKPendingConversation_refreshStatusForAddresses_context_withCompletionBlock___block_invoke;
  v16[3] = &unk_1E72F8150;
  v13 = v10;
  v19 = v13;
  objc_copyWeak(&v20, &location);
  v14 = v9;
  v17 = v14;
  v15 = v8;
  v18 = v15;
  [v12 refreshAvailabilityForRecipients:v15 context:v11 resultHandler:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __79__CKPendingConversation_refreshStatusForAddresses_context_withCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  if (*(a1 + 48))
  {
    v11 = [MEMORY[0x1E69A5C90] serviceWithName:v9];
    if (!v11)
    {
      v11 = [MEMORY[0x1E69A5C90] smsService];
    }

    v12 = [v11 __ck_isRCS];
    v13 = [v11 __ck_isMadrid] | v12;
    v27 = a5;
    if (v12)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v14 = [v10 resultsForServiceName:v9];
      v15 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v33;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v33 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v13 &= [*(*(&v32 + 1) + 8 * i) allSupportEncryption];
          }

          v16 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v16);
      }
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = [v10 resultsByAccountID];
    v20 = [v19 allValues];

    v21 = [v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v21)
    {
      v22 = *v29;
      while (2)
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v20);
          }

          if ([*(*(&v28 + 1) + 8 * j) didCheckServer])
          {
            v21 = 1;
            goto LABEL_23;
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained setSendingServiceEncrypted:v13 & 1];

    v25 = [*(a1 + 32) availabilities];
    v26 = [v25 availabilitiesForRecipients:*(a1 + 40) service:v9];

    (*(*(a1 + 48) + 16))(*(a1 + 48), v11, v26, v21, a4, [v10 isFinal], v27);
  }
}

- (void)refreshComposeSendingServiceForAddresses:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__CKPendingConversation_refreshComposeSendingServiceForAddresses_withCompletionBlock___block_invoke;
  v8[3] = &unk_1E72F8178;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(CKPendingConversation *)self refreshStatusForAddresses:a3 withCompletionBlock:v8];
}

void __86__CKPendingConversation_refreshComposeSendingServiceForAddresses_withCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = [*(a1 + 32) composeSendingService];

  if (v11 != v9)
  {
    [*(a1 + 32) setComposeSendingService:v9];
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v9 name];
        v16 = 138412290;
        v17 = v13;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "[Event] Updated composeSendingService to [%@] on CKPendingConversation.", &v16, 0xCu);
      }
    }

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 postNotificationName:@"CKConversationPreferredServiceChangedNotification" object:*(a1 + 32) userInfo:0];
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, v9, v10, a4, a5);
  }
}

- (void)refreshComposeSendingServiceForAddresses:(id)a3 context:(id)a4 withCompletionBlock:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __94__CKPendingConversation_refreshComposeSendingServiceForAddresses_context_withCompletionBlock___block_invoke;
  v10[3] = &unk_1E72EC5B8;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [(CKPendingConversation *)self refreshStatusForAddresses:a3 context:a4 withCompletionBlock:v10];
}

void __94__CKPendingConversation_refreshComposeSendingServiceForAddresses_context_withCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v15 = [*(a1 + 32) composeSendingService];

  if (v15 != v13)
  {
    [*(a1 + 32) setComposeSendingService:v13];
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v13 name];
        v20 = 138412290;
        v21 = v17;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "[Event] Updated composeSendingService to [%@] on CKPendingConversation.", &v20, 0xCu);
      }
    }

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 postNotificationName:@"CKConversationPreferredServiceChangedNotification" object:*(a1 + 32) userInfo:0];
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    (*(v19 + 16))(v19, v13, v14, a4, a5, a6, a7);
  }
}

- (id)deviceIndependentID
{
  v8.receiver = self;
  v8.super_class = CKPendingConversation;
  v3 = [(CKConversation *)&v8 deviceIndependentID];
  if (!v3)
  {
    v4 = [(CKConversation *)self recipients];
    if ([v4 count] == 1)
    {
      v5 = [v4 firstObject];
      v6 = [v5 defaultIMHandle];
      v3 = [v6 ID];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

+ (id)pendingConversationForHandle:(id)a3
{
  v3 = a3;
  v4 = [CKPendingConversation alloc];
  v5 = [MEMORY[0x1E69A5AE0] pendingChatForHandle:v3];

  v6 = [(CKConversation *)v4 initWithChat:v5];
  [(CKPendingConversation *)v6 setPendingChat:1];

  return v6;
}

- (BOOL)isAppleConversation
{
  v2 = [(CKConversation *)self businessHandle];
  v3 = [v2 isApple];

  return v3;
}

- (BOOL)isMakoConversation
{
  v2 = [(CKConversation *)self businessHandle];
  v3 = [v2 isMako];

  return v3;
}

- (IMService)previousSendingService
{
  WeakRetained = objc_loadWeakRetained(&self->_previousSendingService);

  return WeakRetained;
}

- (IMService)composeSendingService
{
  WeakRetained = objc_loadWeakRetained(&self->_composeSendingService);

  return WeakRetained;
}

@end