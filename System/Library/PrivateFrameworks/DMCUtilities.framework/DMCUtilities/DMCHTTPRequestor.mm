@interface DMCHTTPRequestor
+ (BOOL)_parsePairingTokenMissingErrorWithMessage:(id)message details:(id)details outError:(id *)error;
+ (BOOL)_parsePlatformSSORequiredErrorWithMessage:(id)message details:(id)details outError:(id *)error;
+ (BOOL)_parseSoftwareUpdateRequiredErrorWithMessage:(id)message details:(id)details outError:(id *)error;
+ (BOOL)_parseUnrecognizedDeviceErrorWithMessage:(id)message details:(id)details outError:(id *)error;
+ (BOOL)_parseWellKnownFailedErrorWithMessage:(id)message details:(id)details outError:(id *)error;
+ (BOOL)parse403ErrorWithResponseDictionary:(id)dictionary outError:(id *)error;
+ (BOOL)parsePredefined403ErrorWithResponseDictionary:(id)dictionary outError:(id *)error;
+ (id)_getServerErrorCodeFromResponseDictionary:(id)dictionary;
+ (id)_getServerErrorDetailsFromResponseDictionary:(id)dictionary;
+ (id)_getServerErrorMessageFromResponseDictionary:(id)dictionary;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)startWithRequest:(id)request username:(id)username password:(id)password anchorCertificateRefs:(id)refs completionBlock:(id)block;
@end

@implementation DMCHTTPRequestor

- (void)startWithRequest:(id)request username:(id)username password:(id)password anchorCertificateRefs:(id)refs completionBlock:(id)block
{
  v47 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  blockCopy = block;
  refsCopy = refs;
  passwordCopy = password;
  [(DMCHTTPRequestor *)self setUsername:username];
  [(DMCHTTPRequestor *)self setPassword:passwordCopy];

  [(DMCHTTPRequestor *)self setAnchorCertificateRefs:refsCopy];
  [(DMCHTTPRequestor *)self setSelfReference:self];
  [(DMCHTTPRequestor *)self setDidFailDueToMissingCredentials:0];
  [(DMCHTTPRequestor *)self setDidFailDueToCertNotTrusted:0];
  v16 = [requestCopy valueForHTTPHeaderField:@"User-Agent"];

  if (!v16)
  {
    [requestCopy setValue:@"DeviceManagementClient/1.0" forHTTPHeaderField:@"User-Agent"];
  }

  ephemeralSessionConfiguration = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
  [ephemeralSessionConfiguration setRequestCachePolicy:1];
  [ephemeralSessionConfiguration setTimeoutIntervalForRequest:90.0];
  [ephemeralSessionConfiguration setTLSMinimumSupportedProtocolVersion:771];
  authenticator = [(DMCHTTPRequestor *)self authenticator];

  if (authenticator)
  {
    authenticator2 = [(DMCHTTPRequestor *)self authenticator];
    v42 = 0;
    v20 = [authenticator2 authenticateRequest:requestCopy error:&v42];
    v21 = v42;

    if ((v20 & 1) == 0)
    {
      v22 = *DMCLogObjects();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy2 = v21;
        _os_log_impl(&dword_1B1630000, v22, OS_LOG_TYPE_ERROR, "Failed to authenticate request with error: %{public}@", buf, 0xCu);
      }
    }
  }

  v23 = [MEMORY[0x1E696AF78] sessionWithConfiguration:ephemeralSessionConfiguration delegate:self delegateQueue:0];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __93__DMCHTTPRequestor_startWithRequest_username_password_anchorCertificateRefs_completionBlock___block_invoke;
  v38[3] = &unk_1E7ADCB48;
  v24 = requestCopy;
  v39 = v24;
  selfCopy = self;
  v25 = blockCopy;
  v41 = v25;
  v26 = [v23 dataTaskWithRequest:v24 completionHandler:v38];
  authenticator3 = [(DMCHTTPRequestor *)self authenticator];
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    authenticator4 = [(DMCHTTPRequestor *)self authenticator];
    v37 = 0;
    v30 = [authenticator4 prepareTask:v26 error:&v37];
    v31 = v37;

    if ((v30 & 1) == 0)
    {
      v32 = *DMCLogObjects();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy2 = v31;
        _os_log_impl(&dword_1B1630000, v32, OS_LOG_TYPE_ERROR, "Failed to prepare task with error: %{public}@", buf, 0xCu);
      }
    }
  }

  v33 = *DMCLogObjects();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = v33;
    v35 = [v24 URL];
    *buf = 138543618;
    selfCopy2 = self;
    v45 = 2114;
    v46 = v35;
    _os_log_impl(&dword_1B1630000, v34, OS_LOG_TYPE_INFO, "%{public}@ Starting request to %{public}@", buf, 0x16u);
  }

  [v26 resume];

  v36 = *MEMORY[0x1E69E9840];
}

void __93__DMCHTTPRequestor_startWithRequest_username_password_anchorCertificateRefs_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v63 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [DMCHTTPLog logHTTPDetailsForIdentifier:@"Logs" request:*(a1 + 32) response:v8 responseData:v7 responseError:v9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = v11;
  if (v11 && [v11 statusCode] == 403 && (objc_msgSend(v12, "MIMEType"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"application/json"), v13, v14))
  {
    v15 = [DMCHTTPRequestor jsonDictFromResponse:v7];
    if (v15)
    {
      v58 = v9;
      [DMCHTTPRequestor parse403ErrorWithResponseDictionary:v15 outError:&v58];
      v16 = v58;

      v9 = v16;
    }

    else
    {
      v57 = *DMCLogObjects();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1B1630000, v57, OS_LOG_TYPE_DEBUG, "Response from server could not be deserialized.", buf, 2u);
      }
    }
  }

  else
  {
    if ([*(a1 + 40) didFailDueToMissingCredentials])
    {
      v24 = MEMORY[0x1E696ABC0];
      v25 = DMCErrorArray(@"HTTP_INVALID_USERNAME_PASSWORD", v17, v18, v19, v20, v21, v22, v23, 0);
      v26 = [v24 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23003 descriptionArray:v25 underlyingError:v9 errorType:@"DMCFatalError"];

      if (v12 && [v12 statusCode] == 401)
      {
        v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
        v28 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
        v29 = [v27 stringByTrimmingCharactersInSet:v28];

        if ([v29 length])
        {
          v30 = [v26 userInfo];
          v31 = [v30 mutableCopy];

          [v31 setObject:v29 forKeyedSubscript:@"loginPrompt"];
          v32 = MEMORY[0x1E696ABC0];
          v33 = [v26 domain];
          v34 = [v32 errorWithDomain:v33 code:objc_msgSend(v26 userInfo:{"code"), v31}];

          v26 = v34;
        }
      }
    }

    else
    {
      if (![*(a1 + 40) didFailDueToCertNotTrusted])
      {
        goto LABEL_18;
      }

      v35 = MEMORY[0x1E696ABC0];
      v36 = [*(a1 + 32) URL];
      v44 = DMCErrorArray(@"HTTP_ERROR_INVALID_SERVER_CERT_P_URL_%@", v37, v38, v39, v40, v41, v42, v43, v36);
      v26 = [v35 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23002 descriptionArray:v44 errorType:@"DMCFatalError"];
    }

    v9 = v26;
  }

LABEL_18:
  v45 = *DMCLogObjects();
  if (v9)
  {
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v46 = *(a1 + 40);
    v47 = v45;
    v48 = [v9 DMCVerboseDescription];
    *buf = 138543618;
    v60 = v46;
    v61 = 2114;
    v62 = v48;
    _os_log_impl(&dword_1B1630000, v47, OS_LOG_TYPE_ERROR, "%{public}@ failed to communicate with the MDM server. Error: %{public}@", buf, 0x16u);

    goto LABEL_25;
  }

  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    v49 = MEMORY[0x1E696AEC0];
    v50 = v45;
    v51 = [[v49 alloc] initWithData:v7 encoding:4];
    *buf = 138543362;
    v60 = v51;
    _os_log_impl(&dword_1B1630000, v50, OS_LOG_TYPE_INFO, "%{public}@", buf, 0xCu);
  }

  v52 = *DMCLogObjects();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    v53 = *(a1 + 40);
    v47 = v52;
    v54 = [v7 length];
    *buf = 138543618;
    v60 = v53;
    v61 = 2048;
    v62 = v54;
    _os_log_impl(&dword_1B1630000, v47, OS_LOG_TYPE_INFO, "%{public}@ finished communicating. Received %lu bytes.", buf, 0x16u);
LABEL_25:
  }

LABEL_26:
  v55 = *(a1 + 48);
  if (v55)
  {
    (*(v55 + 16))(v55, v7, v8, v9);
  }

  [*(a1 + 40) setSelfReference:0];

  v56 = *MEMORY[0x1E69E9840];
}

+ (id)_getServerErrorMessageFromResponseDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"message"];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_ERROR, "Server response did not contain message key.", v7, 2u);
    }

    v4 = &stru_1F2860120;
  }

  return v4;
}

+ (id)_getServerErrorCodeFromResponseDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"code"];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_ERROR, "Server response did not contain error key.", v7, 2u);
    }

    v4 = &stru_1F2860120;
  }

  return v4;
}

+ (id)_getServerErrorDetailsFromResponseDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"details"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 count])
  {
    v4 = v3;
  }

  else
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_ERROR, "Server response did not contain error details.", v7, 2u);
    }

    v4 = MEMORY[0x1E695E0F8];
  }

  return v4;
}

+ (BOOL)parse403ErrorWithResponseDictionary:(id)dictionary outError:(id *)error
{
  dictionaryCopy = dictionary;
  if (![DMCHTTPRequestor parsePredefined403ErrorWithResponseDictionary:dictionaryCopy outError:error])
  {
    v7 = [DMCHTTPRequestor _getServerErrorMessageFromResponseDictionary:dictionaryCopy];
    if ([v7 length])
    {
      if (!error)
      {
        v6 = 1;
        goto LABEL_12;
      }

      v15 = MEMORY[0x1E696ABC0];
      v16 = DMCErrorArray(@"HTTP_ERROR_403_RESPONSE_FROM_SERVER_WITH_MESSAGE_%@", v8, v9, v10, v11, v12, v13, v14, v7);
      *error = [v15 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23004 descriptionArray:v16 errorType:@"DMCFatalError"];
    }

    else
    {
      v16 = [DMCHTTPRequestor _getServerErrorCodeFromResponseDictionary:dictionaryCopy];
      v17 = [v16 length];
      v6 = v17 != 0;
      if (!error || !v17)
      {
        goto LABEL_10;
      }

      v25 = MEMORY[0x1E696ABC0];
      v26 = DMCErrorArray(@"HTTP_ERROR_403_RESPONSE_FROM_SERVER_NO_MESSAGE_%@", v18, v19, v20, v21, v22, v23, v24, v16);
      *error = [v25 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23005 descriptionArray:v26 errorType:@"DMCFatalError"];
    }

    v6 = 1;
LABEL_10:

LABEL_12:
    goto LABEL_13;
  }

  v6 = 1;
LABEL_13:

  return v6;
}

+ (BOOL)parsePredefined403ErrorWithResponseDictionary:(id)dictionary outError:(id *)error
{
  dictionaryCopy = dictionary;
  v7 = [self _getServerErrorCodeFromResponseDictionary:dictionaryCopy];
  v8 = [self _getServerErrorMessageFromResponseDictionary:dictionaryCopy];
  v9 = [self _getServerErrorDetailsFromResponseDictionary:dictionaryCopy];

  if ([v7 isEqualToString:@"com.apple.softwareupdate.required"])
  {
    v10 = [self _parseSoftwareUpdateRequiredErrorWithMessage:v8 details:v9 outError:error];
  }

  else if ([v7 isEqualToString:@"com.apple.watch.pairing.token.missing"])
  {
    v10 = [self _parsePairingTokenMissingErrorWithMessage:v8 details:v9 outError:error];
  }

  else if ([v7 isEqualToString:@"com.apple.unrecognized.device"])
  {
    v10 = [self _parseUnrecognizedDeviceErrorWithMessage:v8 details:v9 outError:error];
  }

  else if ([v7 isEqualToString:@"com.apple.well-known.failed"])
  {
    v10 = [self _parseWellKnownFailedErrorWithMessage:v8 details:v9 outError:error];
  }

  else
  {
    if (![v7 isEqualToString:@"com.apple.psso.required"])
    {
      v11 = 0;
      goto LABEL_12;
    }

    v10 = [self _parsePlatformSSORequiredErrorWithMessage:v8 details:v9 outError:error];
  }

  v11 = v10;
LABEL_12:

  return v11;
}

+ (BOOL)_parsePairingTokenMissingErrorWithMessage:(id)message details:(id)details outError:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v8 = [details objectForKeyedSubscript:@"security-token"];
  v16 = [v8 length];
  if (v16)
  {
    if (error)
    {
      v24 = MEMORY[0x1E696ABC0];
      v17 = DMCErrorArray(@"HTTP_ERROR_403_RESPONSE_PAIRING_TOKEN_MISSING_%@", v9, v10, v11, v12, v13, v14, v15, messageCopy);
      v28 = @"PairingParameters";
      v26[0] = @"SecurityToken";
      v26[1] = @"WatchUDID";
      v27[0] = v8;
      v18 = +[DMCMobileGestalt deviceUDID];
      v27[1] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
      v29[0] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      *error = [v24 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23007 descriptionArray:v17 suggestion:0 USEnglishSuggestion:0 underlyingError:0 errorType:@"DMCFatalError" addtionalUserInfo:v20];
    }
  }

  else
  {
    v21 = *DMCLogObjects();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v21, OS_LOG_TYPE_ERROR, "Response from server does not contain security-token key.", buf, 2u);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v16 != 0;
}

+ (BOOL)_parseSoftwareUpdateRequiredErrorWithMessage:(id)message details:(id)details outError:(id *)error
{
  detailsCopy = details;
  v7 = [detailsCopy count];
  if (v7)
  {
    v8 = objc_opt_new();
    [v8 setObject:detailsCopy forKeyedSubscript:@"SoftwareUpdateInfo"];
    if (error)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = DMCErrorArray(@"HTTP_ERROR_403_RESPONSE_SOFTWARE_UPDATE_REQUIRED", v9, v10, v11, v12, v13, v14, v15, 0);
      v18 = [v8 copy];
      *error = [v16 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23006 descriptionArray:v17 suggestion:0 USEnglishSuggestion:0 underlyingError:0 errorType:@"DMCFatalError" addtionalUserInfo:v18];
    }
  }

  else
  {
    v19 = *DMCLogObjects();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v19, OS_LOG_TYPE_ERROR, "Response from server does not contain valid details dict.", buf, 2u);
    }
  }

  return v7 != 0;
}

+ (BOOL)_parseUnrecognizedDeviceErrorWithMessage:(id)message details:(id)details outError:(id *)error
{
  if (error)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = DMCErrorArray(@"HTTP_ERROR_403_RESPONSE_UNRECOGNIZED_DEVICE", a2, message, details, error, v5, v6, v7, 0);
    *error = [v9 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23008 descriptionArray:v10 suggestion:0 USEnglishSuggestion:0 underlyingError:0 errorType:@"DMCFatalError"];
  }

  return 1;
}

+ (BOOL)_parseWellKnownFailedErrorWithMessage:(id)message details:(id)details outError:(id *)error
{
  messageCopy = message;
  detailsCopy = details;
  if (error)
  {
    v16 = MEMORY[0x1E696ABC0];
    if (messageCopy)
    {
      DMCUnformattedErrorArray(messageCopy, v8, v9, v10, v11, v12, v13, v14, 0);
    }

    else
    {
      DMCErrorArray(@"HTTP_ERROR_403_RESPONSE_WELLKNOWN_FAILED", v8, v9, v10, v11, v12, v13, v14, 0);
    }
    v17 = ;
    *error = [v16 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23009 descriptionArray:v17 suggestion:0 USEnglishSuggestion:0 underlyingError:0 errorType:@"DMCFatalError"];
  }

  return 1;
}

+ (BOOL)_parsePlatformSSORequiredErrorWithMessage:(id)message details:(id)details outError:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  detailsCopy = details;
  if (error)
  {
    v16 = MEMORY[0x1E696ABC0];
    if (messageCopy)
    {
      DMCUnformattedErrorArray(messageCopy, v8, v9, v10, v11, v12, v13, v14, 0);
    }

    else
    {
      DMCErrorArray(@"HTTP_ERROR_403_RESPONSE_PLATFORM_SSO_REQUIRED", v8, v9, v10, v11, v12, v13, v14, 0);
    }
    v17 = ;
    if (detailsCopy)
    {
      v21 = @"ErrorDetails";
      v22[0] = detailsCopy;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    }

    else
    {
      v18 = 0;
    }

    *error = [v16 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23011 descriptionArray:v17 suggestion:0 USEnglishSuggestion:0 underlyingError:0 errorType:@"DMCFatalError" addtionalUserInfo:v18];
    if (detailsCopy)
    {
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v62 = *MEMORY[0x1E69E9840];
  challengeCopy = challenge;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];

  v12 = *DMCLogObjects();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    selfCopy2 = authenticationMethod;
    _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_INFO, "Handling challenge for protection space %{public}@", buf, 0xCu);
  }

  if ([challengeCopy previousFailureCount] < 1)
  {
    if ([(DMCHTTPRequestor *)authenticationMethod isEqualToString:*MEMORY[0x1E696A968]])
    {
      protectionSpace2 = [challengeCopy protectionSpace];
      serverTrust = [protectionSpace2 serverTrust];

      if (!serverTrust)
      {
        goto LABEL_48;
      }

      selfCopy = self;
      v51 = handlerCopy;
      v17 = *DMCLogObjects();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1B1630000, v17, OS_LOG_TYPE_DEBUG, "Server Trust certificates:", buf, 2u);
      }

      trust = serverTrust;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v18 = SecTrustCopyCertificateChain(serverTrust);
      v19 = [(__CFArray *)v18 countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v54;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v54 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = SecCertificateCopySubjectSummary(*(*(&v53 + 1) + 8 * i));
            if (v23)
            {
              v24 = v23;
              v25 = *DMCLogObjects();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                selfCopy2 = v24;
                _os_log_impl(&dword_1B1630000, v25, OS_LOG_TYPE_DEBUG, "  %{public}@", buf, 0xCu);
              }

              CFRelease(v24);
            }
          }

          v20 = [(__CFArray *)v18 countByEnumeratingWithState:&v53 objects:v61 count:16];
        }

        while (v20);
      }

      self = selfCopy;
      anchorCertificateRefs = [(DMCHTTPRequestor *)selfCopy anchorCertificateRefs];
      v27 = [anchorCertificateRefs count];

      if (v27)
      {
        anchorCertificateRefs2 = [(DMCHTTPRequestor *)selfCopy anchorCertificateRefs];
        v29 = SecTrustSetAnchorCertificates(trust, anchorCertificateRefs2);

        if (v29)
        {
          v30 = *DMCLogObjects();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(selfCopy2) = v29;
            v31 = "Could not set anchor certificates for trust evaluation. Status: %d";
LABEL_39:
            _os_log_impl(&dword_1B1630000, v30, OS_LOG_TYPE_ERROR, v31, buf, 8u);
            goto LABEL_47;
          }

          goto LABEL_47;
        }

        v38 = SecTrustSetAnchorCertificatesOnly(trust, 1u);
        if (v38)
        {
          v39 = v38;
          v30 = *DMCLogObjects();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(selfCopy2) = v39;
            v31 = "Could not use exclude system default anchor certificates for trust evaluation. Status: %d";
            goto LABEL_39;
          }

LABEL_47:

          handlerCopy = v51;
LABEL_48:
          v47 = *DMCLogObjects();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            v33 = "Rejecting server trust. Canceling.";
            v34 = v47;
            v35 = OS_LOG_TYPE_INFO;
            goto LABEL_50;
          }

LABEL_52:
          handlerCopy[2](handlerCopy, 2, 0);
          goto LABEL_53;
        }
      }

      error = 0;
      if (!SecTrustEvaluateWithError(trust, &error))
      {
        v45 = CFErrorCopyDescription(error);
        v46 = *DMCLogObjects();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          selfCopy2 = v45;
          _os_log_impl(&dword_1B1630000, v46, OS_LOG_TYPE_ERROR, "Handle challenge, trust evaluation failed: %{public}@", buf, 0xCu);
        }

        [(DMCHTTPRequestor *)selfCopy setDidFailDueToCertNotTrusted:1];
        CFRelease(v45);
        CFRelease(error);
        goto LABEL_47;
      }

      v40 = *DMCLogObjects();
      handlerCopy = v51;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B1630000, v40, OS_LOG_TYPE_INFO, "Accepting server trust.", buf, 2u);
      }
    }

    else if (([(DMCHTTPRequestor *)authenticationMethod isEqualToString:*MEMORY[0x1E696A960]]& 1) == 0 && ![(DMCHTTPRequestor *)authenticationMethod isEqualToString:*MEMORY[0x1E696A958]])
    {
      v32 = *DMCLogObjects();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v59 = 2114;
        v60 = authenticationMethod;
        v33 = "%{public}@ cannot accept the authentication method %{public}@";
        v34 = v32;
        v35 = OS_LOG_TYPE_ERROR;
        v36 = 22;
LABEL_51:
        _os_log_impl(&dword_1B1630000, v34, v35, v33, buf, v36);
        goto LABEL_52;
      }

      goto LABEL_52;
    }

    v41 = MEMORY[0x1E696AF30];
    username = [(DMCHTTPRequestor *)self username];
    password = [(DMCHTTPRequestor *)self password];
    v44 = [v41 credentialWithUser:username password:password persistence:0];

    (handlerCopy)[2](handlerCopy, 0, v44);
    goto LABEL_53;
  }

  v13 = *DMCLogObjects();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_ERROR, "We have failed too many times.", buf, 2u);
  }

  if (([(DMCHTTPRequestor *)authenticationMethod isEqualToString:*MEMORY[0x1E696A960]]& 1) == 0 && ![(DMCHTTPRequestor *)authenticationMethod isEqualToString:*MEMORY[0x1E696A958]])
  {
    v37 = *DMCLogObjects();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v33 = "Canceling the authentication challenge...";
      v34 = v37;
      v35 = OS_LOG_TYPE_DEBUG;
LABEL_50:
      v36 = 2;
      goto LABEL_51;
    }

    goto LABEL_52;
  }

  [(DMCHTTPRequestor *)self setDidFailDueToMissingCredentials:1];
  v14 = *DMCLogObjects();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1630000, v14, OS_LOG_TYPE_DEBUG, "Continue without credential for authentication challenge...", buf, 2u);
  }

  handlerCopy[2](handlerCopy, 0, 0);
LABEL_53:

  v48 = *MEMORY[0x1E69E9840];
}

@end