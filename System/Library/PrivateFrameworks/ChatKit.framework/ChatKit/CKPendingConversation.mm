@interface CKPendingConversation
+ (id)pendingConversationForHandle:(id)handle;
- (BOOL)isAppleConversation;
- (BOOL)isMakoConversation;
- (IMService)composeSendingService;
- (IMService)previousSendingService;
- (id)deviceIndependentID;
- (id)sendingService;
- (id)serviceReachabilityContextForRefreshContext:(id)context;
- (void)refreshComposeSendingServiceForAddresses:(id)addresses context:(id)context withCompletionBlock:(id)block;
- (void)refreshComposeSendingServiceForAddresses:(id)addresses withCompletionBlock:(id)block;
- (void)refreshStatusForAddresses:(id)addresses context:(id)context withCompletionBlock:(id)block;
- (void)refreshStatusForAddresses:(id)addresses withCompletionBlock:(id)block;
@end

@implementation CKPendingConversation

- (id)sendingService
{
  chat = [(CKConversation *)self chat];

  if (chat)
  {
    v11.receiver = self;
    v11.super_class = CKPendingConversation;
    sendingService = [(CKConversation *)&v11 sendingService];
    if (!sendingService)
    {
      goto LABEL_6;
    }
  }

  else
  {
    composeSendingService = [(CKPendingConversation *)self composeSendingService];

    if (!composeSendingService || ([(CKPendingConversation *)self composeSendingService], (sendingService = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_6:
      previousSendingService = [(CKPendingConversation *)self previousSendingService];

      if (previousSendingService)
      {
        sendingService = [(CKPendingConversation *)self previousSendingService];
      }

      else
      {
        v7 = MEMORY[0x1E69A5CA0];
        lastAddressedHandle = [(CKConversation *)self lastAddressedHandle];
        lastAddressedSIMID = [(CKConversation *)self lastAddressedSIMID];
        LOBYTE(v7) = [v7 iMessageEnabledForSenderLastAddressedHandle:lastAddressedHandle simID:lastAddressedSIMID];

        if (v7)
        {
          [MEMORY[0x1E69A5C90] iMessageService];
        }

        else
        {
          [MEMORY[0x1E69A5C90] smsService];
        }
        sendingService = ;
      }
    }
  }

  return sendingService;
}

- (id)serviceReachabilityContextForRefreshContext:(id)context
{
  contextCopy = context;
  customContext = [contextCopy customContext];

  if (customContext)
  {
    customContext2 = [contextCopy customContext];
    v7 = [customContext2 copy];
  }

  else
  {
    chat = [(CKConversation *)self chat];

    if (chat)
    {
      customContext2 = [MEMORY[0x1E69A5CA8] sharedController];
      chat2 = [(CKConversation *)self chat];
      v7 = [customContext2 reachabilityContextForChat:chat2];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E69A8240]);
      customContext2 = [(CKConversation *)self handles];
      if ([customContext2 count] <= 1)
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

  lastAddressedHandle = [(CKConversation *)self lastAddressedHandle];
  _stripFZIDPrefix = [lastAddressedHandle _stripFZIDPrefix];
  [v7 setSenderLastAddressedHandle:_stripFZIDPrefix];

  lastAddressedSIMID = [(CKConversation *)self lastAddressedSIMID];
  [v7 setSenderLastAddressedSIMID:lastAddressedSIMID];

  customContext3 = [contextCopy customContext];
  if (customContext3 || ([(CKConversation *)self chat], (customContext3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else if (IMBagBoolValueWithDefault())
  {
    [v7 setIsForPendingConversation:1];
  }

  if ([contextCopy isForPendingConversation] && IMBagBoolValueWithDefault())
  {
    [v7 setIsForPendingConversation:1];
  }

  preconditionsIgnoredForServices = [v7 preconditionsIgnoredForServices];
  v16 = [preconditionsIgnoredForServices mutableCopy];
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

  preconditionsIgnoredForServices2 = [contextCopy preconditionsIgnoredForServices];

  if (preconditionsIgnoredForServices2)
  {
    preconditionsIgnoredForServices3 = [contextCopy preconditionsIgnoredForServices];
    [v19 unionSet:preconditionsIgnoredForServices3];
  }

  sendingService = [(CKPendingConversation *)self sendingService];
  v23 = sendingService;
  if (sendingService)
  {
    internalName = [sendingService internalName];
    [v19 addObject:internalName];
  }

  v25 = [v19 copy];
  [v7 setPreconditionsIgnoredForServices:v25];

  return v7;
}

- (void)refreshStatusForAddresses:(id)addresses withCompletionBlock:(id)block
{
  v32 = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  blockCopy = block;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = addressesCopy;
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

  chat = [(CKConversation *)self chat];
  [chat shouldForceServerStatusRefresh];

  lastAddressedHandle = [(CKConversation *)self lastAddressedHandle];
  _stripFZIDPrefix = [lastAddressedHandle _stripFZIDPrefix];
  _bestGuessURI = [_stripFZIDPrefix _bestGuessURI];

  lastAddressedSIMID = [(CKConversation *)self lastAddressedSIMID];
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v28 = _bestGuessURI;
      v29 = 2112;
      v30 = lastAddressedSIMID;
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Calling IMChatCalculateServiceForSendingNewComposeMaybeForce with last addressed handle %@ simID %@", buf, 0x16u);
    }
  }

  chat2 = [(CKConversation *)self chat];
  [chat2 receivedResponseForChat];

  chat3 = [(CKConversation *)self chat];
  [(CKConversation *)self forceMMS];
  chat4 = [(CKConversation *)self chat];
  [chat4 isDowngraded];
  v22 = blockCopy;
  v21 = blockCopy;
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

- (void)refreshStatusForAddresses:(id)addresses context:(id)context withCompletionBlock:(id)block
{
  addressesCopy = addresses;
  contextCopy = context;
  blockCopy = block;
  v11 = [(CKPendingConversation *)self serviceReachabilityContextForRefreshContext:contextCopy];
  objc_initWeak(&location, self);
  availabilities = [contextCopy availabilities];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__CKPendingConversation_refreshStatusForAddresses_context_withCompletionBlock___block_invoke;
  v16[3] = &unk_1E72F8150;
  v13 = blockCopy;
  v19 = v13;
  objc_copyWeak(&v20, &location);
  v14 = contextCopy;
  v17 = v14;
  v15 = addressesCopy;
  v18 = v15;
  [availabilities refreshAvailabilityForRecipients:v15 context:v11 resultHandler:v16];

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

- (void)refreshComposeSendingServiceForAddresses:(id)addresses withCompletionBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__CKPendingConversation_refreshComposeSendingServiceForAddresses_withCompletionBlock___block_invoke;
  v8[3] = &unk_1E72F8178;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [(CKPendingConversation *)self refreshStatusForAddresses:addresses withCompletionBlock:v8];
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

- (void)refreshComposeSendingServiceForAddresses:(id)addresses context:(id)context withCompletionBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __94__CKPendingConversation_refreshComposeSendingServiceForAddresses_context_withCompletionBlock___block_invoke;
  v10[3] = &unk_1E72EC5B8;
  v10[4] = self;
  v11 = blockCopy;
  v9 = blockCopy;
  [(CKPendingConversation *)self refreshStatusForAddresses:addresses context:context withCompletionBlock:v10];
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
  deviceIndependentID = [(CKConversation *)&v8 deviceIndependentID];
  if (!deviceIndependentID)
  {
    recipients = [(CKConversation *)self recipients];
    if ([recipients count] == 1)
    {
      firstObject = [recipients firstObject];
      defaultIMHandle = [firstObject defaultIMHandle];
      deviceIndependentID = [defaultIMHandle ID];
    }

    else
    {
      deviceIndependentID = 0;
    }
  }

  return deviceIndependentID;
}

+ (id)pendingConversationForHandle:(id)handle
{
  handleCopy = handle;
  v4 = [CKPendingConversation alloc];
  v5 = [MEMORY[0x1E69A5AE0] pendingChatForHandle:handleCopy];

  v6 = [(CKConversation *)v4 initWithChat:v5];
  [(CKPendingConversation *)v6 setPendingChat:1];

  return v6;
}

- (BOOL)isAppleConversation
{
  businessHandle = [(CKConversation *)self businessHandle];
  isApple = [businessHandle isApple];

  return isApple;
}

- (BOOL)isMakoConversation
{
  businessHandle = [(CKConversation *)self businessHandle];
  isMako = [businessHandle isMako];

  return isMako;
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