@interface NSURLSessionDelegate
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
@end

@implementation NSURLSessionDelegate

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = nplog_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v44 = [v8 sessionDescription];
    v45 = [v9 protectionSpace];
    *buf = 138412546;
    v58 = v44;
    v59 = 2048;
    v60 = [v45 serverTrust];
    _os_log_debug_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_DEBUG, "Received an authentication challenge for %@, serverTrust = %p", buf, 0x16u);
  }

  v12 = [v9 protectionSpace];
  v13 = [v12 serverTrust];

  if (!v13)
  {
    v10[2](v10, 1, 0);
    goto LABEL_41;
  }

  v14 = [v9 protectionSpace];
  v15 = [v14 serverTrust];

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v17 = Mutable;
    v18 = [(NSURLSessionDelegate *)self leafOID];

    if (v18)
    {
      v19 = nplog_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v48 = [v8 sessionDescription];
        v49 = [(NSURLSessionDelegate *)self validationHostname];
        v50 = [(NSURLSessionDelegate *)self leafOID];
        *buf = 138412802;
        v58 = v48;
        v59 = 2112;
        v60 = v49;
        v61 = 2112;
        v62 = v50;
        _os_log_debug_impl(&dword_1AE7E2000, v19, OS_LOG_TYPE_DEBUG, "Creating a pinning policy with name %@, hostname %@, and leaf OID %@", buf, 0x20u);
      }

      v20 = [v8 sessionDescription];
      v21 = [(NSURLSessionDelegate *)self validationHostname];
      v22 = [(NSURLSessionDelegate *)self leafOID];
      AppleSSLPinned = SecPolicyCreateAppleSSLPinned();

      if (!AppleSSLPinned)
      {
        v40 = nplog_obj();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v51 = [v8 sessionDescription];
          v52 = [(NSURLSessionDelegate *)self validationHostname];
          v53 = [(NSURLSessionDelegate *)self leafOID];
          *buf = 138412802;
          v58 = v51;
          v59 = 2112;
          v60 = v52;
          v61 = 2112;
          v62 = v53;
          _os_log_error_impl(&dword_1AE7E2000, v40, OS_LOG_TYPE_ERROR, "Failed to create a pinning policy from name %@, hostname %@, and OID %@", buf, 0x20u);
        }

        goto LABEL_40;
      }

      CFArrayAppendValue(v17, AppleSSLPinned);
      CFRelease(AppleSSLPinned);
    }

    else
    {
      v25 = [(NSURLSessionDelegate *)self validationHostname];

      if (v25)
      {
        v26 = [(NSURLSessionDelegate *)self validationHostname];
        v27 = [v9 protectionSpace];
        v28 = [v27 host];
        v29 = [v28 isEqualToString:@"gateway.icloud.com"];

        if (v29)
        {

          v26 = @"gateway.icloud.com";
        }

        v30 = nplog_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v58 = v26;
          _os_log_debug_impl(&dword_1AE7E2000, v30, OS_LOG_TYPE_DEBUG, "Creating a server trust policy with hostname %@", buf, 0xCu);
        }

        SSL = SecPolicyCreateSSL(1u, v26);
        if (!SSL)
        {
          v47 = nplog_obj();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v58 = v26;
            _os_log_error_impl(&dword_1AE7E2000, v47, OS_LOG_TYPE_ERROR, "Failed to create a SSL policy from hostname %@", buf, 0xCu);
          }

          v10[2](v10, 3, 0);
          CFRelease(v17);

          goto LABEL_41;
        }

        v32 = SSL;
        CFArrayAppendValue(v17, SSL);
        CFRelease(v32);
      }
    }

    if ([(NSURLSessionDelegate *)self revocationFailClosed])
    {
      v33 = nplog_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1AE7E2000, v33, OS_LOG_TYPE_DEBUG, "Creating a policy to require revocation check success", buf, 2u);
      }

      Revocation = SecPolicyCreateRevocation(0x18uLL);
      if (!Revocation)
      {
        v38 = nplog_obj();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1AE7E2000, v38, OS_LOG_TYPE_ERROR, "Failed to create a revocation policy", buf, 2u);
        }

        goto LABEL_39;
      }

      v35 = Revocation;
      CFArrayAppendValue(v17, Revocation);
      CFRelease(v35);
    }

    v36 = SecTrustSetPolicies(v15, v17);
    if (v36)
    {
      v37 = v36;
      v38 = nplog_obj();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = [v8 sessionDescription];
        *buf = 138412546;
        v58 = v39;
        v59 = 1024;
        LODWORD(v60) = v37;
        _os_log_error_impl(&dword_1AE7E2000, v38, OS_LOG_TYPE_ERROR, "Failed to set the trust policies for %@: %d", buf, 0x12u);
      }

LABEL_39:

LABEL_40:
      v10[2](v10, 3, 0);
      CFRelease(v17);
      goto LABEL_41;
    }

    result[0] = MEMORY[0x1E69E9820];
    result[1] = 3221225472;
    result[2] = __73__NSURLSessionDelegate_URLSession_didReceiveChallenge_completionHandler___block_invoke;
    result[3] = &unk_1E7A31040;
    result[4] = self;
    v55 = v8;
    v41 = v10;
    v56 = v41;
    v42 = SecTrustEvaluateAsyncWithError(v15, MEMORY[0x1E69E96A0], result);
    CFRelease(v17);
    if (v42)
    {
      v43 = nplog_obj();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v58) = v42;
        _os_log_error_impl(&dword_1AE7E2000, v43, OS_LOG_TYPE_ERROR, "SecTrustEvaluateAsync returned an error: %d", buf, 8u);
      }

      v41[2](v41, 1, 0);
    }
  }

  else
  {
    v24 = nplog_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v24, OS_LOG_TYPE_ERROR, "Failed to create an array to hold policies", buf, 2u);
    }

    v10[2](v10, 3, 0);
  }

LABEL_41:

  v46 = *MEMORY[0x1E69E9840];
}

void __73__NSURLSessionDelegate_URLSession_didReceiveChallenge_completionHandler___block_invoke(uint64_t a1, __SecTrust *a2, int a3, NSObject *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = nplog_obj();
  v9 = v8;
  if (a3)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_INFO, "SecTrustEvaluateAsyncWithError success", buf, 2u);
    }

    result = kSecTrustResultInvalid;
    if (SecTrustGetTrustResult(a2, &result) || result != kSecTrustResultUnspecified && result != kSecTrustResultProceed)
    {
      v9 = nplog_obj();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      v10 = [*(a1 + 40) sessionDescription];
      *buf = 138412546;
      v23 = v10;
      v24 = 1024;
      LODWORD(v25) = result;
      _os_log_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_DEFAULT, "%@ TLS certificate failed validation with result %d", buf, 0x12u);
      goto LABEL_7;
    }

    if (![*(a1 + 32) enableExtendedValidation])
    {
      v9 = nplog_obj();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }

      v11 = [*(a1 + 40) sessionDescription];
      *buf = 138412290;
      v23 = v11;
      _os_log_debug_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_DEBUG, "Extended validation for %@ is not enabled", buf, 0xCu);
      goto LABEL_13;
    }

    v9 = SecTrustCopyResult(a2);
    v15 = nplog_obj();
    v10 = v15;
    if (v9)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v20 = [*(a1 + 40) sessionDescription];
        *buf = 138412546;
        v23 = v20;
        v24 = 2112;
        v25 = v9;
        _os_log_debug_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEBUG, "Got trust result info for %@: %@", buf, 0x16u);
      }

      v16 = [v9 objectForKeyedSubscript:*MEMORY[0x1E697B338]];

      if (v16)
      {
        v17 = CFGetTypeID(v16);
        if (v17 == CFBooleanGetTypeID())
        {
          if (CFBooleanGetValue(v16))
          {
            goto LABEL_14;
          }
        }
      }

      v10 = nplog_obj();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v18 = [*(a1 + 40) sessionDescription];
      *buf = 138412290;
      v23 = v18;
      v19 = "%@ TLS certificate failed extended validation";
    }

    else
    {
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_7:

        goto LABEL_10;
      }

      v18 = [*(a1 + 40) sessionDescription];
      *buf = 138412290;
      v23 = v18;
      v19 = "Failed to get validation results for %@ TLS certificate";
    }

    _os_log_error_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);

    goto LABEL_7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v23 = a4;
    _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "SecTrustEvaluateAsyncWithError failed with %@", buf, 0xCu);
  }

LABEL_10:

  if (![*(a1 + 32) ignoreInvalidCerts])
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_16;
  }

  v9 = nplog_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 40) sessionDescription];
    *buf = 138412290;
    v23 = v11;
    _os_log_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring invalid %@ TLS cert", buf, 0xCu);
LABEL_13:
  }

LABEL_14:

  v12 = *(a1 + 48);
  v13 = [MEMORY[0x1E696AF30] credentialForTrust:a2];
  (*(v12 + 16))(v12, 0, v13);

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];
}

@end