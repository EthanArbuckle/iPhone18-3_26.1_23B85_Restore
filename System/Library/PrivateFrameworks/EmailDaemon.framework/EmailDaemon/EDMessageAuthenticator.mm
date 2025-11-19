@interface EDMessageAuthenticator
+ (OS_os_log)log;
+ (OS_os_log)signpostLog;
- (BOOL)_isICloudHideMyEmailMessage:(void *)a3 sender:;
- (BOOL)_isTemporaryDKIMError:(uint64_t)a1;
- (BOOL)_shouldAuthenticateNewMessage:(uint64_t)a1;
- (BOOL)authenticateMessage:(id)a3;
- (BOOL)authenticateMessages:(id)a3 trustingServer:(BOOL)a4 cancelationToken:(id)a5;
- (EDMessageAuthenticator)initWithMessagePersistence:(id)a3 hookRegistry:(id)a4;
- (id)_mostAlignedDKIMServerStatementFromAuthenticationResult:(void *)a3 forSender:;
- (unint64_t)_authenticationStateForMessage:(int)a3 trustingServer:;
- (unint64_t)_messageAuthenticationStateForAuthenticationResult:(void *)a3 sender:(int)a4 trustingServer:;
- (unint64_t)signpostID;
- (void)persistenceWillAddNewMessages:(id)a3;
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
  block[4] = a1;
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
  block[4] = a1;
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
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

- (EDMessageAuthenticator)initWithMessagePersistence:(id)a3 hookRegistry:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = EDMessageAuthenticator;
  v9 = [(EDMessageAuthenticator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messagePersistence, a3);
    v11 = objc_alloc_init(MEMORY[0x1E699B2E0]);
    authenticator = v10->_authenticator;
    v10->_authenticator = v11;

    [v8 registerMessageChangeHookResponder:v10];
  }

  return v10;
}

- (BOOL)authenticateMessage:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EDMessageAuthenticator *)self _authenticationStateForMessage:v4 trustingServer:0];
  if (self)
  {
    messagePersistence = self->_messagePersistence;
  }

  else
  {
    messagePersistence = 0;
  }

  v7 = [(EDMessagePersistence *)messagePersistence persistMessageAuthenticationState:v5 forMessage:v4];
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
      v17 = v4;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Persisted message authentication state %lld (on-device: %lld) for message: %{public}@", &v12, 0x20u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(EDMessageAuthenticator *)v5 authenticateMessage:v4, v9];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (unint64_t)_authenticationStateForMessage:(int)a3 trustingServer:
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = [v5 senders];
    v8 = [v7 firstObject];

    v21 = v8;
    v9 = [(EDMessageAuthenticator *)a1 _isICloudHideMyEmailMessage:v6 sender:&v21];
    v10 = v21;

    if (v9 && (a3 & 1) == 0)
    {
      v11 = _ef_log_EDMessageAuthenticator();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = v6;
        _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "Trusting server results for iCloud HME message: %{public}@", buf, 0xCu);
      }

      a3 = 1;
    }

    if ([MEMORY[0x1E699ACE8] preferenceEnabled:35] && (objc_msgSend(*(a1 + 8), "fullDataIfAvailableForMessage:", v6), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
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
      v15 = [v6 headers];
      v12 = [v15 encodedHeaders];

      v16 = _ef_log_EDMessageAuthenticator();
      v13 = v16;
      if (!v12)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [EDMessageAuthenticator _authenticationStateForMessage:v6 trustingServer:v13];
        }

        v12 = 0;
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
    v18 = [*(a1 + 16) authenticateMessageData:v17 onDevice:a3 ^ 1u sender:v10];
    a1 = [(EDMessageAuthenticator *)a1 _messageAuthenticationStateForAuthenticationResult:v18 sender:v10 trustingServer:a3];
  }

  v19 = *MEMORY[0x1E69E9840];
  return a1;
}

- (BOOL)authenticateMessages:(id)a3 trustingServer:(BOOL)a4 cancelationToken:(id)a5
{
  v6 = a4;
  v39 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v28 = a5;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = +[EDMessageAuthenticator signpostLog];
  v10 = os_signpost_id_make_with_pointer(v9, [MEMORY[0x1E696AFB0] UUID]);

  v11 = +[EDMessageAuthenticator signpostLog];
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 134349056;
    v38 = [v27 count];
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "EDMessageAuthenticator", "Begin message authentication (count=%{public,signpost.telemetry:number1}lu) enableTelemetry=YES ", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__EDMessageAuthenticator_authenticateMessages_trustingServer_cancelationToken___block_invoke;
  aBlock[3] = &unk_1E8253848;
  v35 = v10;
  v13 = v27;
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
      v19 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[EDMessageAuthenticator _authenticationStateForMessage:trustingServer:](self, v18, v6)}];
      [v8 setObject:v19 forKeyedSubscript:v18];

      if ([v28 isCanceled])
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

- (BOOL)_isICloudHideMyEmailMessage:(void *)a3 sender:
{
  v5 = a2;
  v6 = v5;
  if (a1 && ([v5 account], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "baseAccount"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isAppleAccount"), v8, v7, (v9 & 1) != 0))
  {
    v10 = [v6 headers];
    v11 = [v10 firstHeaderForKey:*MEMORY[0x1E699B0E8]];

    v12 = v11 != 0;
    if (a3 && v11)
    {
      v13 = [MEMORY[0x1E699B340] tagValueListFromString:v11 error:0];
      *a3 = [v13 objectForKeyedSubscript:*MEMORY[0x1E699A760]];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)_messageAuthenticationStateForAuthenticationResult:(void *)a3 sender:(int)a4 trustingServer:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = [(EDMessageAuthenticator *)a1 _mostAlignedDKIMServerStatementFromAuthenticationResult:v7 forSender:v8];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 dkimServerResult];
      if (v11 == 1)
      {
        v12 = 3;
      }

      else
      {
        v12 = v11 == 2;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 & 0xFFFFFFFFFFFFFE3FLL | (([v7 dmarcServerStatus] & 7) << 6);
    if (a4)
    {
      if (v10)
      {
        v14 = [v10 dkimServerResult];
        v15 = 20;
        if (v14 == 1)
        {
          v15 = 60;
        }

        v13 |= v15;
      }

      v16 = [v7 dmarcServerStatus];
      v17 = [v7 dmarcServerStatus];
      v18 = (v16 & 7) << 9;
      if (!v17)
      {
        v18 = 512;
      }

      v19 = v18 | v13;
    }

    else
    {
      v20 = [v7 dkimError];
      v21 = [(EDMessageAuthenticator *)a1 _isTemporaryDKIMError:v20];

      if (!v21)
      {
        if ([v7 dkimAttemptedHeaderVerification])
        {
          v22 = [v7 dkimHeadersVerified];
          v23 = 4;
          if (v22)
          {
            v23 = 12;
          }

          v13 |= v23;
        }

        if ([v7 dkimAttemptedBodyVerification])
        {
          v24 = [v7 dkimBodyVerified];
          v25 = 16;
          if (v24)
          {
            v25 = 48;
          }

          v13 |= v25;
        }

        else
        {
          v26 = [v7 bestDKIMSignatureHeader];
          v27 = [v26 bodyLength];

          if (v27)
          {
            v13 |= 0x10uLL;
          }
        }
      }

      v28 = [v7 dmarcStatus];
      v29 = [v7 dmarcIdentifierAlignment];
      v19 = v13 & 0xFFFFFFFFFFFF01FFLL | ((v28 & 7) << 9) & 0xFFF | ((v29 & 3) << 12) & 0x3FFF | (([v7 dmarcReceiverPolicy] & 3) << 14);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)_mostAlignedDKIMServerStatementFromAuthenticationResult:(void *)a3 forSender:
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v23 = v5;
  v24 = v6;
  if (a1)
  {
    v7 = v6;
    v8 = [v5 dkimServerStatements];
    if ([v8 count])
    {
      v9 = [v7 emailAddressValue];
      v10 = [v9 domain];

      if ([v10 length])
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v11 = v8;
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
              v17 = [v16 dkimServerSigningDomain];
              if ([v17 length])
              {
                v18 = [MEMORY[0x1E699B238] alignmentForDKIMSigningDomain:v17 andSenderDomain:v10];
                if (v18 == 1)
                {
                  v19 = v16;

                  v12 = v19;
                }

                else if (v18 == 2)
                {
                  v20 = v16;

                  goto LABEL_19;
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v13);
        }

        v12 = v12;
        v20 = v12;
LABEL_19:
      }

      else
      {
        v20 = [v8 firstObject];
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (BOOL)_isTemporaryDKIMError:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:*MEMORY[0x1E699B030]])
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

- (void)persistenceWillAddNewMessages:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v22 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
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

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v22 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldAuthenticateNewMessage:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if (_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl() && (EMIsGreymatterSupported())
    {
      v4 = 1;
    }

    else
    {
      v5 = [v3 headers];
      v6 = [v5 firstHeaderForKey:*MEMORY[0x1E699B090]];
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