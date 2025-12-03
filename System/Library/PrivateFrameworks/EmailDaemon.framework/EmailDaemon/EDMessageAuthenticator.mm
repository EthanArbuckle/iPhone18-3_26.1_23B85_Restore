@interface EDMessageAuthenticator
+ (OS_os_log)log;
+ (OS_os_log)signpostLog;
- (BOOL)_isICloudHideMyEmailMessage:(void *)message sender:;
- (BOOL)_isTemporaryDKIMError:(uint64_t)error;
- (BOOL)_shouldAuthenticateNewMessage:(uint64_t)message;
- (BOOL)authenticateMessage:(id)message;
- (BOOL)authenticateMessages:(id)messages trustingServer:(BOOL)server cancelationToken:(id)token;
- (EDMessageAuthenticator)initWithMessagePersistence:(id)persistence hookRegistry:(id)registry;
- (id)_mostAlignedDKIMServerStatementFromAuthenticationResult:(void *)result forSender:;
- (unint64_t)_authenticationStateForMessage:(int)message trustingServer:;
- (unint64_t)_messageAuthenticationStateForAuthenticationResult:(void *)result sender:(int)sender trustingServer:;
- (unint64_t)signpostID;
- (void)persistenceWillAddNewMessages:(id)messages;
@end

@implementation EDMessageAuthenticator

void ___ef_log_EDMessageAuthenticator_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EDMessageAuthenticator");
  v1 = _ef_log_EDMessageAuthenticator_log;
  _ef_log_EDMessageAuthenticator_log = v0;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__EDMessageAuthenticator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_57 != -1)
  {
    dispatch_once(&log_onceToken_57, block);
  }

  v2 = log_log_57;

  return v2;
}

void __29__EDMessageAuthenticator_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_57;
  log_log_57 = v1;
}

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EDMessageAuthenticator_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_1 != -1)
  {
    dispatch_once(&signpostLog_onceToken_1, block);
  }

  v2 = signpostLog_log_1;

  return v2;
}

void __37__EDMessageAuthenticator_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_1;
  signpostLog_log_1 = v1;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (EDMessageAuthenticator)initWithMessagePersistence:(id)persistence hookRegistry:(id)registry
{
  persistenceCopy = persistence;
  registryCopy = registry;
  v14.receiver = self;
  v14.super_class = EDMessageAuthenticator;
  v9 = [(EDMessageAuthenticator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messagePersistence, persistence);
    v11 = objc_alloc_init(MEMORY[0x1E699B2E0]);
    authenticator = v10->_authenticator;
    v10->_authenticator = v11;

    [registryCopy registerMessageChangeHookResponder:v10];
  }

  return v10;
}

- (BOOL)authenticateMessage:(id)message
{
  v18 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = [(EDMessageAuthenticator *)self _authenticationStateForMessage:messageCopy trustingServer:0];
  if (self)
  {
    messagePersistence = self->_messagePersistence;
  }

  else
  {
    messagePersistence = 0;
  }

  v7 = [(EDMessagePersistence *)messagePersistence persistMessageAuthenticationState:v5 forMessage:messageCopy];
  v8 = _ef_log_EDMessageAuthenticator();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218498;
      v13 = v5;
      v14 = 2048;
      v15 = v5 & 0xE28;
      v16 = 2114;
      v17 = messageCopy;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Persisted message authentication state %lld (on-device: %lld) for message: %{public}@", &v12, 0x20u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(EDMessageAuthenticator *)v5 authenticateMessage:messageCopy, v9];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (unint64_t)_authenticationStateForMessage:(int)message trustingServer:
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    senders = [v5 senders];
    firstObject = [senders firstObject];

    v21 = firstObject;
    v9 = [(EDMessageAuthenticator *)self _isICloudHideMyEmailMessage:v6 sender:&v21];
    v10 = v21;

    if (v9 && (message & 1) == 0)
    {
      v11 = _ef_log_EDMessageAuthenticator();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = v6;
        _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "Trusting server results for iCloud HME message: %{public}@", buf, 0xCu);
      }

      message = 1;
    }

    if ([MEMORY[0x1E699ACE8] preferenceEnabled:35] && (objc_msgSend(*(self + 8), "fullDataIfAvailableForMessage:", v6), (encodedHeaders = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = _ef_log_EDMessageAuthenticator();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = v6;
        v14 = "Authenticating full data for message: %{public}@";
LABEL_14:
        _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
      }
    }

    else
    {
      headers = [v6 headers];
      encodedHeaders = [headers encodedHeaders];

      v16 = _ef_log_EDMessageAuthenticator();
      v13 = v16;
      if (!encodedHeaders)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [EDMessageAuthenticator _authenticationStateForMessage:v6 trustingServer:v13];
        }

        encodedHeaders = 0;
        goto LABEL_18;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = v6;
        v14 = "Authenticating header data for message: %{public}@";
        goto LABEL_14;
      }
    }

LABEL_18:

    v17 = EMRecodeDataToNetwork();
    v18 = [*(self + 16) authenticateMessageData:v17 onDevice:message ^ 1u sender:v10];
    self = [(EDMessageAuthenticator *)self _messageAuthenticationStateForAuthenticationResult:v18 sender:v10 trustingServer:message];
  }

  v19 = *MEMORY[0x1E69E9840];
  return self;
}

- (BOOL)authenticateMessages:(id)messages trustingServer:(BOOL)server cancelationToken:(id)token
{
  serverCopy = server;
  v39 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  tokenCopy = token;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = +[EDMessageAuthenticator signpostLog];
  v10 = os_signpost_id_make_with_pointer(v9, [MEMORY[0x1E696AFB0] UUID]);

  v11 = +[EDMessageAuthenticator signpostLog];
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 134349056;
    v38 = [messagesCopy count];
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "EDMessageAuthenticator", "Begin message authentication (count=%{public,signpost.telemetry:number1}lu) enableTelemetry=YES ", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__EDMessageAuthenticator_authenticateMessages_trustingServer_cancelationToken___block_invoke;
  aBlock[3] = &unk_1E8253848;
  v35 = v10;
  v13 = messagesCopy;
  v34 = v13;
  v26 = _Block_copy(aBlock);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v15)
  {
    v16 = *v30;
LABEL_6:
    v17 = 0;
    while (1)
    {
      if (*v30 != v16)
      {
        objc_enumerationMutation(v14);
      }

      v18 = *(*(&v29 + 1) + 8 * v17);
      v19 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[EDMessageAuthenticator _authenticationStateForMessage:trustingServer:](self, v18, serverCopy)}];
      [v8 setObject:v19 forKeyedSubscript:v18];

      if ([tokenCopy isCanceled])
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v14 countByEnumeratingWithState:&v29 objects:v36 count:16];
        if (v15)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  if (self)
  {
    messagePersistence = self->_messagePersistence;
  }

  else
  {
    messagePersistence = 0;
  }

  v21 = [(EDMessagePersistence *)messagePersistence persistMessageAuthenticationStates:v8];
  v22 = _ef_log_EDMessageAuthenticator();
  v23 = v22;
  if (v21)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v38 = v8;
      _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "Persisted message authentication states: %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [EDMessageAuthenticator authenticateMessages:v8 trustingServer:v23 cancelationToken:?];
  }

  v26[2](v26, [v8 count]);
  v24 = *MEMORY[0x1E69E9840];
  return v21;
}

void __79__EDMessageAuthenticator_authenticateMessages_trustingServer_cancelationToken___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = +[EDMessageAuthenticator signpostLog];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = [*(a1 + 32) count];
    v9 = 134349312;
    v10 = v7;
    v11 = 2050;
    v12 = a2;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v5, OS_SIGNPOST_INTERVAL_END, v6, "EDMessageAuthenticator", "Finish message authentication (count=%{public,signpost.telemetry:number1}lu, result=%{public,signpost.telemetry:number2}lu) enableTelemetry=YES ", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isICloudHideMyEmailMessage:(void *)message sender:
{
  v5 = a2;
  v6 = v5;
  if (self && ([v5 account], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "baseAccount"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isAppleAccount"), v8, v7, (v9 & 1) != 0))
  {
    headers = [v6 headers];
    v11 = [headers firstHeaderForKey:*MEMORY[0x1E699B0E8]];

    v12 = v11 != 0;
    if (message && v11)
    {
      v13 = [MEMORY[0x1E699B340] tagValueListFromString:v11 error:0];
      *message = [v13 objectForKeyedSubscript:*MEMORY[0x1E699A760]];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)_messageAuthenticationStateForAuthenticationResult:(void *)result sender:(int)sender trustingServer:
{
  v7 = a2;
  resultCopy = result;
  if (self)
  {
    v9 = [(EDMessageAuthenticator *)self _mostAlignedDKIMServerStatementFromAuthenticationResult:v7 forSender:resultCopy];
    v10 = v9;
    if (v9)
    {
      dkimServerResult = [v9 dkimServerResult];
      if (dkimServerResult == 1)
      {
        v12 = 3;
      }

      else
      {
        v12 = dkimServerResult == 2;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 & 0xFFFFFFFFFFFFFE3FLL | (([v7 dmarcServerStatus] & 7) << 6);
    if (sender)
    {
      if (v10)
      {
        dkimServerResult2 = [v10 dkimServerResult];
        v15 = 20;
        if (dkimServerResult2 == 1)
        {
          v15 = 60;
        }

        v13 |= v15;
      }

      dmarcServerStatus = [v7 dmarcServerStatus];
      dmarcServerStatus2 = [v7 dmarcServerStatus];
      v18 = (dmarcServerStatus & 7) << 9;
      if (!dmarcServerStatus2)
      {
        v18 = 512;
      }

      v19 = v18 | v13;
    }

    else
    {
      dkimError = [v7 dkimError];
      v21 = [(EDMessageAuthenticator *)self _isTemporaryDKIMError:dkimError];

      if (!v21)
      {
        if ([v7 dkimAttemptedHeaderVerification])
        {
          dkimHeadersVerified = [v7 dkimHeadersVerified];
          v23 = 4;
          if (dkimHeadersVerified)
          {
            v23 = 12;
          }

          v13 |= v23;
        }

        if ([v7 dkimAttemptedBodyVerification])
        {
          dkimBodyVerified = [v7 dkimBodyVerified];
          v25 = 16;
          if (dkimBodyVerified)
          {
            v25 = 48;
          }

          v13 |= v25;
        }

        else
        {
          bestDKIMSignatureHeader = [v7 bestDKIMSignatureHeader];
          bodyLength = [bestDKIMSignatureHeader bodyLength];

          if (bodyLength)
          {
            v13 |= 0x10uLL;
          }
        }
      }

      dmarcStatus = [v7 dmarcStatus];
      dmarcIdentifierAlignment = [v7 dmarcIdentifierAlignment];
      v19 = v13 & 0xFFFFFFFFFFFF01FFLL | ((dmarcStatus & 7) << 9) & 0xFFF | ((dmarcIdentifierAlignment & 3) << 12) & 0x3FFF | (([v7 dmarcReceiverPolicy] & 3) << 14);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)_mostAlignedDKIMServerStatementFromAuthenticationResult:(void *)result forSender:
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  resultCopy = result;
  v23 = v5;
  v24 = resultCopy;
  if (self)
  {
    v7 = resultCopy;
    dkimServerStatements = [v5 dkimServerStatements];
    if ([dkimServerStatements count])
    {
      emailAddressValue = [v7 emailAddressValue];
      domain = [emailAddressValue domain];

      if ([domain length])
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v11 = dkimServerStatements;
        v12 = 0;
        v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v13)
        {
          v14 = *v26;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v26 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v25 + 1) + 8 * i);
              dkimServerSigningDomain = [v16 dkimServerSigningDomain];
              if ([dkimServerSigningDomain length])
              {
                v18 = [MEMORY[0x1E699B238] alignmentForDKIMSigningDomain:dkimServerSigningDomain andSenderDomain:domain];
                if (v18 == 1)
                {
                  v19 = v16;

                  v12 = v19;
                }

                else if (v18 == 2)
                {
                  firstObject = v16;

                  goto LABEL_19;
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v13);
        }

        v12 = v12;
        firstObject = v12;
LABEL_19:
      }

      else
      {
        firstObject = [dkimServerStatements firstObject];
      }
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    firstObject = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (BOOL)_isTemporaryDKIMError:(uint64_t)error
{
  v3 = a2;
  v4 = v3;
  if (error)
  {
    domain = [v3 domain];
    if ([domain isEqualToString:*MEMORY[0x1E699B030]])
    {
      v6 = [v4 code] == 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)persistenceWillAddNewMessages:(id)messages
{
  v23 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  messagesCopy = messages;
  v5 = [messagesCopy countByEnumeratingWithState:&v12 objects:v22 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(messagesCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([(EDMessageAuthenticator *)self _shouldAuthenticateNewMessage:v8])
        {
          v9 = [(EDMessageAuthenticator *)self _authenticationStateForMessage:v8 trustingServer:0];
          [v8 setAuthenticationState:v9];
          v10 = _ef_log_EDMessageAuthenticator();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218498;
            v17 = v9;
            v18 = 2048;
            v19 = v9 & 0xE28;
            v20 = 2114;
            v21 = v8;
            _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Set message authentication state %lld (on-device: %lld) on message: %{public}@", buf, 0x20u);
          }
        }
      }

      v5 = [messagesCopy countByEnumeratingWithState:&v12 objects:v22 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldAuthenticateNewMessage:(uint64_t)message
{
  v3 = a2;
  if (message)
  {
    if (_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl() && (EMIsGreymatterSupported())
    {
      v4 = 1;
    }

    else
    {
      headers = [v3 headers];
      v6 = [headers firstHeaderForKey:*MEMORY[0x1E699B090]];
      v4 = v6 != 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)authenticateMessage:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = 134218498;
  v5 = a1;
  v6 = 2048;
  v7 = a1 & 0xE28;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Failed to persist message authentication state %lld (on-device: %lld) for message: %{public}@", &v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_authenticationStateForMessage:(uint64_t)a1 trustingServer:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "No data to authenticate for message: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)authenticateMessages:(uint64_t)a1 trustingServer:(NSObject *)a2 cancelationToken:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Failed to persist message authentication states: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end