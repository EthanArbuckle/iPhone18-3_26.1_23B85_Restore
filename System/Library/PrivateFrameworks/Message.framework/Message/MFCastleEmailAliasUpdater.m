@interface MFCastleEmailAliasUpdater
- (MFCastleEmailAliasUpdater)initWithAccountID:(id)a3 aliasSupport:(id)a4;
- (id)_aliasesFromData:(uint64_t)a1;
- (id)_defaultEmailAddressFromData:(uint64_t)a1;
- (id)_emailsFromData:(uint64_t)a1;
- (id)_headerStringFromDate:(uint64_t)a1;
- (id)_sourceApplicationBundleIdentifier;
- (id)createRequestWithLastSyncDate:(void *)a3 entityTag:;
- (void)_createURLSession;
- (void)_getEmailAddressAndAliasesWithLastSyncDate:(void *)a3 entityTag:(void *)a4 handler:;
- (void)_getEmailAddressAndAliasesWithRequest:(void *)a3 handler:;
- (void)_getEmailAddressAndAliasesWithResponse:(void *)a3 responseData:(void *)a4 error:(void *)a5 handler:;
- (void)getEmailAddressAndAliasesWithLastSyncDate:(id)a3 entityTag:(id)a4 handler:(id)a5;
@end

@implementation MFCastleEmailAliasUpdater

- (MFCastleEmailAliasUpdater)initWithAccountID:(id)a3 aliasSupport:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = MFCastleEmailAliasUpdater;
  v9 = [(MFCastleEmailAliasUpdater *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountID, a3);
    objc_storeStrong(&v10->_aliasSupport, a4);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_UTILITY, 0);
    v13 = dispatch_queue_create("com.apple.message.icloud.alias-update", v12);
    queue = v10->_queue;
    v10->_queue = v13;
  }

  return v10;
}

- (void)_getEmailAddressAndAliasesWithLastSyncDate:(void *)a3 entityTag:(void *)a4 handler:
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (*(a1 + 8) == 1)
    {
      v10 = [MEMORY[0x1E699B710] log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 16);
        *buf = 138543362;
        v18 = v11;
        _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] updateEmailAddressAndAliases: Update already running.", buf, 0xCu);
      }

      v9[2](v9, 0);
    }

    else
    {
      *(a1 + 8) = 1;
      ++*(a1 + 12);
      v12 = [(MFCastleEmailAliasUpdater *)a1 createRequestWithLastSyncDate:v7 entityTag:v8];
      if (v12)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __90__MFCastleEmailAliasUpdater__getEmailAddressAndAliasesWithLastSyncDate_entityTag_handler___block_invoke;
        v15[3] = &unk_1E7AA50F0;
        v15[4] = a1;
        v16 = v9;
        [(MFCastleEmailAliasUpdater *)a1 _getEmailAddressAndAliasesWithRequest:v12 handler:v15];
      }

      else
      {
        v13 = objc_alloc_init(CastleEmailAliasUpdateResult);
        (v9)[2](v9, v13);

        *(a1 + 8) = 0;
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)createRequestWithLastSyncDate:(void *)a3 entityTag:
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_14;
  }

  v7 = +[MFNetworkController sharedInstance];
  v8 = [v7 isNetworkUp];

  if ((v8 & 1) == 0)
  {
    v15 = [MEMORY[0x1E699B710] log];
    [MFCastleEmailAliasUpdater createRequestWithLastSyncDate:v15 entityTag:a1];
LABEL_14:
    v10 = 0;
    goto LABEL_10;
  }

  v9 = [*(a1 + 24) aliasLookupURL];
  if (v9)
  {
    v10 = [MEMORY[0x1E695AC18] requestWithURL:v9];
    [v10 setHTTPMethod:@"GET"];
    v11 = [*(a1 + 24) aliasAuthorizationHeader];
    [v10 setValue:v11 forHTTPHeaderField:@"Authorization"];

    v12 = [*(a1 + 24) aliasUserAgent];
    [v10 setValue:v12 forHTTPHeaderField:*MEMORY[0x1E699B188]];

    [v10 ak_addDeviceUDIDHeader];
    [v10 ak_addClientInfoHeader];
    if (v5)
    {
      v13 = [(MFCastleEmailAliasUpdater *)a1 _headerStringFromDate:v5];
      [v10 setValue:v13 forHTTPHeaderField:@"If-Modified-Since"];
    }

    if (v6)
    {
      [v10 setValue:v6 forKey:@"If-None-Match"];
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_10:

  return v10;
}

- (void)_getEmailAddressAndAliasesWithRequest:(void *)a3 handler:
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [(MFCastleEmailAliasUpdater *)a1 _createURLSession];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __75__MFCastleEmailAliasUpdater__getEmailAddressAndAliasesWithRequest_handler___block_invoke;
    v15[3] = &unk_1E7AA5118;
    v15[4] = a1;
    v17 = v6;
    v8 = v7;
    v16 = v8;
    v9 = [v8 dataTaskWithRequest:v5 completionHandler:v15];
    v10 = [MEMORY[0x1E699B710] log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 16);
      v12 = *(a1 + 12);
      v13 = [v9 taskIdentifier];
      *buf = 138543874;
      v19 = v11;
      v20 = 1024;
      v21 = v12;
      v22 = 2048;
      v23 = v13;
      _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@ #%u] Starting URL session task %llu", buf, 0x1Cu);
    }

    [v9 resume];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_createURLSession
{
  v1 = a1;
  if (a1)
  {
    v2 = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
    [v2 setTimeoutIntervalForResource:300.0];
    v3 = [(MFCastleEmailAliasUpdater *)v1 _sourceApplicationBundleIdentifier];
    if (v3)
    {
      [v2 set_sourceApplicationBundleIdentifier:v3];
      v4 = [objc_alloc(MEMORY[0x1E698DCC8]) initWithIdentifier:v3];
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E698DCC8]) initWithIdentifier:@"maild"];
    }

    [v2 set_appleIDContext:v4];

    v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [v5 setMaxConcurrentOperationCount:1];
    [v5 setUnderlyingQueue:v1[4]];
    v1 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v2 delegate:0 delegateQueue:v5];
  }

  return v1;
}

- (void)_getEmailAddressAndAliasesWithResponse:(void *)a3 responseData:(void *)a4 error:(void *)a5 handler:
{
  v62 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (!v9 || v11)
    {
      v18 = [MEMORY[0x1E699B710] log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v37 = *(a1 + 16);
        v38 = *(a1 + 12);
        v39 = [v11 ef_publicDescription];
        *buf = 138543874;
        v55 = v37;
        v56 = 1024;
        v57 = v38;
        v58 = 2114;
        *&v59 = v39;
        _os_log_error_impl(&dword_1B0389000, v18, OS_LOG_TYPE_ERROR, "[%{public}@ #%u] updateEmailAddressAndAliases: Email alias request failed: %{public}@", buf, 0x1Cu);
      }

      v17 = objc_alloc_init(CastleEmailAliasUpdateResult);
      v12[2](v12, v17);
    }

    else
    {
      v13 = [MEMORY[0x1E699B710] log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v53 = *(a1 + 16);
        v40 = *(a1 + 12);
        v51 = [v9 statusCode];
        v41 = objc_alloc(MEMORY[0x1E696AEC0]);
        v42 = v10;
        if (!v10)
        {
          v42 = [MEMORY[0x1E695DEF0] data];
        }

        v49 = v42;
        v43 = [v41 initWithData:v42 encoding:4];
        *buf = 138544130;
        v44 = v53;
        v55 = v53;
        v56 = 1024;
        v57 = v40;
        v58 = 1024;
        LODWORD(v59) = v51;
        WORD2(v59) = 2112;
        *(&v59 + 6) = v43;
        _os_log_debug_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEBUG, "[%{public}@ #%u] updateEmailAddressAndAliases: Received (status=%d) '%@'", buf, 0x22u);
        if (!v10)
        {

          v44 = v53;
        }
      }

      if ([v9 statusCode] == 304)
      {
        v14 = [MEMORY[0x1E699B710] log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 16);
          v16 = *(a1 + 12);
          *buf = 138543618;
          v55 = v15;
          v56 = 1024;
          v57 = v16;
          _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@ #%u] updateEmailAddressAndAliases: Not Modified.", buf, 0x12u);
        }

        LOBYTE(v48) = 0;
        v17 = [[CastleEmailAliasUpdateResult alloc] initWithReceiveEmailAliasAddresses:0 emailAddresses:0 defaultEmailAddress:0 entityTag:0 isSuccess:1 notModified:1 accountNeedsToUpdateProperties:v48];
        v12[2](v12, v17);
      }

      else
      {
        v19 = [v9 statusCode];
        if (v10 && v19 == 200)
        {
          v17 = [v9 valueForHTTPHeaderField:@"ETag"];
          v20 = [(MFCastleEmailAliasUpdater *)a1 _aliasesFromData:v10];
          v21 = v20;
          v22 = MEMORY[0x1E695E0F8];
          if (v20)
          {
            v22 = v20;
          }

          v23 = v22;

          v24 = [(MFCastleEmailAliasUpdater *)a1 _emailsFromData:v10];
          v52 = [(MFCastleEmailAliasUpdater *)a1 _defaultEmailAddressFromData:v10];
          v25 = [MEMORY[0x1E699B710] log];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v50 = v24;
            v26 = *(a1 + 16);
            v27 = *(a1 + 12);
            v28 = [(CastleEmailAliasUpdateResult *)v23 count];
            v29 = [v50 count];
            *buf = 138544642;
            v55 = v26;
            v56 = 1024;
            v57 = v27;
            v58 = 1024;
            LODWORD(v59) = v28;
            WORD2(v59) = 1024;
            *(&v59 + 6) = v29;
            WORD5(v59) = 1024;
            HIDWORD(v59) = v52 != 0;
            v60 = 2114;
            v61 = v17;
            _os_log_impl(&dword_1B0389000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@ #%u] updateEmailAddressAndAliases: Got response. aliases: %d, emails: %d, defaultEmail: %{BOOL}d, entityTag: %{public}@", buf, 0x2Eu);

            v24 = v50;
          }

          LOBYTE(v48) = 0;
          v30 = [[CastleEmailAliasUpdateResult alloc] initWithReceiveEmailAliasAddresses:v23 emailAddresses:v24 defaultEmailAddress:v52 entityTag:v17 isSuccess:1 notModified:0 accountNeedsToUpdateProperties:v48];
          v12[2](v12, v30);
        }

        else
        {
          v31 = [v9 URL];
          v17 = [v31 host];

          v32 = [MEMORY[0x1E699B710] log];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v45 = *(a1 + 16);
            v46 = *(a1 + 12);
            v47 = [v9 statusCode];
            *buf = 138544130;
            v55 = v45;
            v56 = 1024;
            v57 = v46;
            v58 = 2112;
            *&v59 = v17;
            WORD4(v59) = 1024;
            *(&v59 + 10) = v47;
            _os_log_error_impl(&dword_1B0389000, v32, OS_LOG_TYPE_ERROR, "[%{public}@ #%u] updateEmailAddressAndAliases: Email alias request to [%@] failed with status code [%d]", buf, 0x22u);
          }

          if (([v9 statusCode] == 404 || (v35 = objc_msgSend(v9, "statusCode"), !v10) || v35 == 405) && -[CastleEmailAliasUpdateResult hasPrefix:](v17, "hasPrefix:", @"p99-"))
          {
            v33 = [MEMORY[0x1E699B710] log];
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              [MFCastleEmailAliasUpdater _getEmailAddressAndAliasesWithResponse:a1 responseData:? error:? handler:?];
            }

            v34 = 1;
          }

          else
          {
            v34 = 0;
          }

          LOBYTE(v48) = v34;
          v23 = [[CastleEmailAliasUpdateResult alloc] initWithReceiveEmailAliasAddresses:0 emailAddresses:0 defaultEmailAddress:0 entityTag:0 isSuccess:0 notModified:0 accountNeedsToUpdateProperties:v48];
          v12[2](v12, v23);
        }
      }
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (id)_aliasesFromData:(uint64_t)a1
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v21 = v3;
  if (a1)
  {
    v22 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [v22 objectForKey:@"aliases"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        obj = v20;
        v4 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v4)
        {
          v5 = 0;
          v25 = *v33;
          v26 = v4;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v33 != v25)
              {
                objc_enumerationMutation(obj);
              }

              v6 = *(*(&v32 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v7 = [v6 objectForKeyedSubscript:@"fullName"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v24 = [v6 objectForKeyedSubscript:@"emails"];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v30 = 0u;
                    v31 = 0u;
                    v28 = 0u;
                    v29 = 0u;
                    v8 = v24;
                    v9 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
                    if (v9)
                    {
                      v10 = *v29;
                      do
                      {
                        for (j = 0; j != v9; ++j)
                        {
                          if (*v29 != v10)
                          {
                            objc_enumerationMutation(v8);
                          }

                          v12 = *(*(&v28 + 1) + 8 * j);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v13 = MEMORY[0x1E699B248];
                            v14 = [v12 objectForKeyedSubscript:@"address"];
                            v15 = [v13 componentsWithString:v14];

                            [v15 setDisplayName:v7];
                            v16 = [v15 stringValue];
                            if (!v5)
                            {
                              v5 = [MEMORY[0x1E695DF90] dictionary];
                            }

                            v17 = [v12 objectForKeyedSubscript:{@"canSendFrom", v20, v21}];
                            [v5 setObject:v17 forKeyedSubscript:v16];
                          }
                        }

                        v9 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
                      }

                      while (v9);
                    }
                  }
                }
              }
            }

            v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
          }

          while (v26);
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_emailsFromData:(uint64_t)a1
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v16 = v3;
  if (a1)
  {
    v17 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v17 objectForKey:@"account"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v15 objectForKey:@"emails"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          v4 = v14;
          v5 = 0;
          v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v6)
          {
            v7 = *v19;
            do
            {
              for (i = 0; i != v6; ++i)
              {
                if (*v19 != v7)
                {
                  objc_enumerationMutation(v4);
                }

                v9 = *(*(&v18 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if (!v5)
                  {
                    v5 = [MEMORY[0x1E695DF90] dictionary];
                  }

                  v10 = [v9 objectForKeyedSubscript:{@"canSendFrom", v14}];
                  v11 = [v9 objectForKeyedSubscript:@"address"];
                  [v5 setObject:v10 forKeyedSubscript:v11];
                }
              }

              v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
            }

            while (v6);
          }
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_defaultEmailAddressFromData:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:0];
    v5 = [v4 objectForKeyedSubscript:@"defaultAddress"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_headerStringFromDate:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v5 = [MEMORY[0x1E695DF58] ef_posixLocale];
    [v4 setLocale:v5];

    [v4 setDateFormat:@"EEE, dd MMM yyyy HH:mm:ss zzz"];
    v6 = [v4 stringFromDate:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_sourceApplicationBundleIdentifier
{
  if (a1)
  {
    v1 = MFUserAgent();
    if (v1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v2 = [v1 sourceApplicationBundleIdentifier];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)getEmailAddressAndAliasesWithLastSyncDate:(id)a3 entityTag:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89__MFCastleEmailAliasUpdater_getEmailAddressAndAliasesWithLastSyncDate_entityTag_handler___block_invoke;
  v17[3] = &unk_1E7AA50C8;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = queue;
  v16 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, v17);
  dispatch_async(v15, v16);
}

void __90__MFCastleEmailAliasUpdater__getEmailAddressAndAliasesWithLastSyncDate_entityTag_handler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  dispatch_assert_queue_V2(v4);
  (*(*(a1 + 40) + 16))();
  v5 = *(a1 + 32);
  if (v5)
  {
    *(v5 + 8) = 0;
  }
}

void __75__MFCastleEmailAliasUpdater__getEmailAddressAndAliasesWithRequest_handler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 32);
  }

  else
  {
    v10 = 0;
  }

  dispatch_assert_queue_V2(v10);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  [(MFCastleEmailAliasUpdater *)*(a1 + 32) _getEmailAddressAndAliasesWithResponse:v12 responseData:v13 error:v8 handler:*(a1 + 48)];
  [*(a1 + 40) invalidateAndCancel];
}

- (void)createRequestWithLastSyncDate:(NSObject *)a1 entityTag:(uint64_t)a2 .cold.1(NSObject *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a2 + 16);
    v5 = *(a2 + 12);
    OUTLINED_FUNCTION_0_4();
    _os_log_impl(&dword_1B0389000, a1, OS_LOG_TYPE_DEFAULT, "[%{public}@ #%u] updateEmailAddressAndAliases: Network is not up.", v7, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_getEmailAddressAndAliasesWithResponse:(uint64_t)a1 responseData:error:handler:.cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v2 = *(a1 + 12);
  OUTLINED_FUNCTION_0_4();
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_1B0389000, v4, OS_LOG_TYPE_ERROR, "[%{public}@ #%u] updateEmailAddressAndAliases: Email alias requests configured to use [%@], scheduling reprovision", v6, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

@end