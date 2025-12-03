@interface MFCastleEmailAliasUpdater
- (MFCastleEmailAliasUpdater)initWithAccountID:(id)d aliasSupport:(id)support;
- (id)_aliasesFromData:(uint64_t)data;
- (id)_defaultEmailAddressFromData:(uint64_t)data;
- (id)_emailsFromData:(uint64_t)data;
- (id)_headerStringFromDate:(uint64_t)date;
- (id)_sourceApplicationBundleIdentifier;
- (id)createRequestWithLastSyncDate:(void *)date entityTag:;
- (void)_createURLSession;
- (void)_getEmailAddressAndAliasesWithLastSyncDate:(void *)date entityTag:(void *)tag handler:;
- (void)_getEmailAddressAndAliasesWithRequest:(void *)request handler:;
- (void)_getEmailAddressAndAliasesWithResponse:(void *)response responseData:(void *)data error:(void *)error handler:;
- (void)getEmailAddressAndAliasesWithLastSyncDate:(id)date entityTag:(id)tag handler:(id)handler;
@end

@implementation MFCastleEmailAliasUpdater

- (MFCastleEmailAliasUpdater)initWithAccountID:(id)d aliasSupport:(id)support
{
  dCopy = d;
  supportCopy = support;
  v16.receiver = self;
  v16.super_class = MFCastleEmailAliasUpdater;
  v9 = [(MFCastleEmailAliasUpdater *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountID, d);
    objc_storeStrong(&v10->_aliasSupport, support);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_UTILITY, 0);
    v13 = dispatch_queue_create("com.apple.message.icloud.alias-update", v12);
    queue = v10->_queue;
    v10->_queue = v13;
  }

  return v10;
}

- (void)_getEmailAddressAndAliasesWithLastSyncDate:(void *)date entityTag:(void *)tag handler:
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  dateCopy = date;
  tagCopy = tag;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 32));
    if (*(self + 8) == 1)
    {
      v10 = [MEMORY[0x1E699B710] log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(self + 16);
        *buf = 138543362;
        v18 = v11;
        _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] updateEmailAddressAndAliases: Update already running.", buf, 0xCu);
      }

      tagCopy[2](tagCopy, 0);
    }

    else
    {
      *(self + 8) = 1;
      ++*(self + 12);
      v12 = [(MFCastleEmailAliasUpdater *)self createRequestWithLastSyncDate:v7 entityTag:dateCopy];
      if (v12)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __90__MFCastleEmailAliasUpdater__getEmailAddressAndAliasesWithLastSyncDate_entityTag_handler___block_invoke;
        v15[3] = &unk_1E7AA50F0;
        v15[4] = self;
        v16 = tagCopy;
        [(MFCastleEmailAliasUpdater *)self _getEmailAddressAndAliasesWithRequest:v12 handler:v15];
      }

      else
      {
        v13 = objc_alloc_init(CastleEmailAliasUpdateResult);
        (tagCopy)[2](tagCopy, v13);

        *(self + 8) = 0;
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)createRequestWithLastSyncDate:(void *)date entityTag:
{
  v5 = a2;
  dateCopy = date;
  if (!self)
  {
    goto LABEL_14;
  }

  v7 = +[MFNetworkController sharedInstance];
  isNetworkUp = [v7 isNetworkUp];

  if ((isNetworkUp & 1) == 0)
  {
    v15 = [MEMORY[0x1E699B710] log];
    [MFCastleEmailAliasUpdater createRequestWithLastSyncDate:v15 entityTag:self];
LABEL_14:
    v10 = 0;
    goto LABEL_10;
  }

  aliasLookupURL = [*(self + 24) aliasLookupURL];
  if (aliasLookupURL)
  {
    v10 = [MEMORY[0x1E695AC18] requestWithURL:aliasLookupURL];
    [v10 setHTTPMethod:@"GET"];
    aliasAuthorizationHeader = [*(self + 24) aliasAuthorizationHeader];
    [v10 setValue:aliasAuthorizationHeader forHTTPHeaderField:@"Authorization"];

    aliasUserAgent = [*(self + 24) aliasUserAgent];
    [v10 setValue:aliasUserAgent forHTTPHeaderField:*MEMORY[0x1E699B188]];

    [v10 ak_addDeviceUDIDHeader];
    [v10 ak_addClientInfoHeader];
    if (v5)
    {
      v13 = [(MFCastleEmailAliasUpdater *)self _headerStringFromDate:v5];
      [v10 setValue:v13 forHTTPHeaderField:@"If-Modified-Since"];
    }

    if (dateCopy)
    {
      [v10 setValue:dateCopy forKey:@"If-None-Match"];
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_10:

  return v10;
}

- (void)_getEmailAddressAndAliasesWithRequest:(void *)request handler:
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  requestCopy = request;
  if (self)
  {
    _createURLSession = [(MFCastleEmailAliasUpdater *)self _createURLSession];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __75__MFCastleEmailAliasUpdater__getEmailAddressAndAliasesWithRequest_handler___block_invoke;
    v15[3] = &unk_1E7AA5118;
    v15[4] = self;
    v17 = requestCopy;
    v8 = _createURLSession;
    v16 = v8;
    v9 = [v8 dataTaskWithRequest:v5 completionHandler:v15];
    v10 = [MEMORY[0x1E699B710] log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(self + 16);
      v12 = *(self + 12);
      taskIdentifier = [v9 taskIdentifier];
      *buf = 138543874;
      v19 = v11;
      v20 = 1024;
      v21 = v12;
      v22 = 2048;
      v23 = taskIdentifier;
      _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@ #%u] Starting URL session task %llu", buf, 0x1Cu);
    }

    [v9 resume];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_createURLSession
{
  selfCopy = self;
  if (self)
  {
    ephemeralSessionConfiguration = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
    [ephemeralSessionConfiguration setTimeoutIntervalForResource:300.0];
    _sourceApplicationBundleIdentifier = [(MFCastleEmailAliasUpdater *)selfCopy _sourceApplicationBundleIdentifier];
    if (_sourceApplicationBundleIdentifier)
    {
      [ephemeralSessionConfiguration set_sourceApplicationBundleIdentifier:_sourceApplicationBundleIdentifier];
      v4 = [objc_alloc(MEMORY[0x1E698DCC8]) initWithIdentifier:_sourceApplicationBundleIdentifier];
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E698DCC8]) initWithIdentifier:@"maild"];
    }

    [ephemeralSessionConfiguration set_appleIDContext:v4];

    v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [v5 setMaxConcurrentOperationCount:1];
    [v5 setUnderlyingQueue:selfCopy[4]];
    selfCopy = [MEMORY[0x1E695AC78] sessionWithConfiguration:ephemeralSessionConfiguration delegate:0 delegateQueue:v5];
  }

  return selfCopy;
}

- (void)_getEmailAddressAndAliasesWithResponse:(void *)response responseData:(void *)data error:(void *)error handler:
{
  v62 = *MEMORY[0x1E69E9840];
  v9 = a2;
  responseCopy = response;
  dataCopy = data;
  errorCopy = error;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 32));
    if (!v9 || dataCopy)
    {
      v18 = [MEMORY[0x1E699B710] log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v37 = *(self + 16);
        v38 = *(self + 12);
        ef_publicDescription = [dataCopy ef_publicDescription];
        *buf = 138543874;
        v55 = v37;
        v56 = 1024;
        v57 = v38;
        v58 = 2114;
        *&v59 = ef_publicDescription;
        _os_log_error_impl(&dword_1B0389000, v18, OS_LOG_TYPE_ERROR, "[%{public}@ #%u] updateEmailAddressAndAliases: Email alias request failed: %{public}@", buf, 0x1Cu);
      }

      host = objc_alloc_init(CastleEmailAliasUpdateResult);
      errorCopy[2](errorCopy, host);
    }

    else
    {
      v13 = [MEMORY[0x1E699B710] log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v53 = *(self + 16);
        v40 = *(self + 12);
        statusCode = [v9 statusCode];
        v41 = objc_alloc(MEMORY[0x1E696AEC0]);
        data = responseCopy;
        if (!responseCopy)
        {
          data = [MEMORY[0x1E695DEF0] data];
        }

        v49 = data;
        v43 = [v41 initWithData:data encoding:4];
        *buf = 138544130;
        v44 = v53;
        v55 = v53;
        v56 = 1024;
        v57 = v40;
        v58 = 1024;
        LODWORD(v59) = statusCode;
        WORD2(v59) = 2112;
        *(&v59 + 6) = v43;
        _os_log_debug_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEBUG, "[%{public}@ #%u] updateEmailAddressAndAliases: Received (status=%d) '%@'", buf, 0x22u);
        if (!responseCopy)
        {

          v44 = v53;
        }
      }

      if ([v9 statusCode] == 304)
      {
        v14 = [MEMORY[0x1E699B710] log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(self + 16);
          v16 = *(self + 12);
          *buf = 138543618;
          v55 = v15;
          v56 = 1024;
          v57 = v16;
          _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@ #%u] updateEmailAddressAndAliases: Not Modified.", buf, 0x12u);
        }

        LOBYTE(v48) = 0;
        host = [[CastleEmailAliasUpdateResult alloc] initWithReceiveEmailAliasAddresses:0 emailAddresses:0 defaultEmailAddress:0 entityTag:0 isSuccess:1 notModified:1 accountNeedsToUpdateProperties:v48];
        errorCopy[2](errorCopy, host);
      }

      else
      {
        statusCode2 = [v9 statusCode];
        if (responseCopy && statusCode2 == 200)
        {
          host = [v9 valueForHTTPHeaderField:@"ETag"];
          v20 = [(MFCastleEmailAliasUpdater *)self _aliasesFromData:responseCopy];
          v21 = v20;
          v22 = MEMORY[0x1E695E0F8];
          if (v20)
          {
            v22 = v20;
          }

          v23 = v22;

          v24 = [(MFCastleEmailAliasUpdater *)self _emailsFromData:responseCopy];
          v52 = [(MFCastleEmailAliasUpdater *)self _defaultEmailAddressFromData:responseCopy];
          v25 = [MEMORY[0x1E699B710] log];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v50 = v24;
            v26 = *(self + 16);
            v27 = *(self + 12);
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
            v61 = host;
            _os_log_impl(&dword_1B0389000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@ #%u] updateEmailAddressAndAliases: Got response. aliases: %d, emails: %d, defaultEmail: %{BOOL}d, entityTag: %{public}@", buf, 0x2Eu);

            v24 = v50;
          }

          LOBYTE(v48) = 0;
          v30 = [[CastleEmailAliasUpdateResult alloc] initWithReceiveEmailAliasAddresses:v23 emailAddresses:v24 defaultEmailAddress:v52 entityTag:host isSuccess:1 notModified:0 accountNeedsToUpdateProperties:v48];
          errorCopy[2](errorCopy, v30);
        }

        else
        {
          v31 = [v9 URL];
          host = [v31 host];

          v32 = [MEMORY[0x1E699B710] log];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v45 = *(self + 16);
            v46 = *(self + 12);
            statusCode3 = [v9 statusCode];
            *buf = 138544130;
            v55 = v45;
            v56 = 1024;
            v57 = v46;
            v58 = 2112;
            *&v59 = host;
            WORD4(v59) = 1024;
            *(&v59 + 10) = statusCode3;
            _os_log_error_impl(&dword_1B0389000, v32, OS_LOG_TYPE_ERROR, "[%{public}@ #%u] updateEmailAddressAndAliases: Email alias request to [%@] failed with status code [%d]", buf, 0x22u);
          }

          if (([v9 statusCode] == 404 || (v35 = objc_msgSend(v9, "statusCode"), !responseCopy) || v35 == 405) && -[CastleEmailAliasUpdateResult hasPrefix:](host, "hasPrefix:", @"p99-"))
          {
            v33 = [MEMORY[0x1E699B710] log];
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              [MFCastleEmailAliasUpdater _getEmailAddressAndAliasesWithResponse:self responseData:? error:? handler:?];
            }

            v34 = 1;
          }

          else
          {
            v34 = 0;
          }

          LOBYTE(v48) = v34;
          v23 = [[CastleEmailAliasUpdateResult alloc] initWithReceiveEmailAliasAddresses:0 emailAddresses:0 defaultEmailAddress:0 entityTag:0 isSuccess:0 notModified:0 accountNeedsToUpdateProperties:v48];
          errorCopy[2](errorCopy, v23);
        }
      }
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (id)_aliasesFromData:(uint64_t)data
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v21 = v3;
  if (data)
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
          dictionary = 0;
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
                            stringValue = [v15 stringValue];
                            if (!dictionary)
                            {
                              dictionary = [MEMORY[0x1E695DF90] dictionary];
                            }

                            v17 = [v12 objectForKeyedSubscript:{@"canSendFrom", v20, v21}];
                            [dictionary setObject:v17 forKeyedSubscript:stringValue];
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
          dictionary = 0;
        }
      }

      else
      {
        dictionary = 0;
      }
    }

    else
    {
      dictionary = 0;
    }
  }

  else
  {
    dictionary = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)_emailsFromData:(uint64_t)data
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v16 = v3;
  if (data)
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
          dictionary = 0;
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
                  if (!dictionary)
                  {
                    dictionary = [MEMORY[0x1E695DF90] dictionary];
                  }

                  v10 = [v9 objectForKeyedSubscript:{@"canSendFrom", v14}];
                  v11 = [v9 objectForKeyedSubscript:@"address"];
                  [dictionary setObject:v10 forKeyedSubscript:v11];
                }
              }

              v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
            }

            while (v6);
          }
        }

        else
        {
          dictionary = 0;
        }
      }

      else
      {
        dictionary = 0;
      }
    }

    else
    {
      dictionary = 0;
    }
  }

  else
  {
    dictionary = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)_defaultEmailAddressFromData:(uint64_t)data
{
  v3 = a2;
  if (data)
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

- (id)_headerStringFromDate:(uint64_t)date
{
  v3 = a2;
  if (date)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    ef_posixLocale = [MEMORY[0x1E695DF58] ef_posixLocale];
    [v4 setLocale:ef_posixLocale];

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
  if (self)
  {
    v1 = MFUserAgent();
    if (v1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      sourceApplicationBundleIdentifier = [v1 sourceApplicationBundleIdentifier];
    }

    else
    {
      sourceApplicationBundleIdentifier = 0;
    }
  }

  else
  {
    sourceApplicationBundleIdentifier = 0;
  }

  return sourceApplicationBundleIdentifier;
}

- (void)getEmailAddressAndAliasesWithLastSyncDate:(id)date entityTag:(id)tag handler:(id)handler
{
  dateCopy = date;
  tagCopy = tag;
  handlerCopy = handler;
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
  v18 = dateCopy;
  v19 = tagCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = tagCopy;
  v14 = dateCopy;
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