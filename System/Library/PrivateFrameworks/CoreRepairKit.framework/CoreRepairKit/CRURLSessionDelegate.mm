@interface CRURLSessionDelegate
+ (BOOL)trustIsValidWithProtectionSpace:(id)space;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
@end

@implementation CRURLSessionDelegate

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  handlerCopy = handler;
  v8 = handleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_24785F000, v8, OS_LOG_TYPE_DEFAULT, "didReceiveChallenge", &v23, 2u);
  }

  protectionSpace = [challengeCopy protectionSpace];
  serverTrust = [protectionSpace serverTrust];

  v11 = SecTrustCopyCertificateChain(serverTrust);
  if (v11)
  {
    v12 = v11;
    if (CFArrayGetCount(v11) < 1)
    {
      v14 = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v12, 0);
      v14 = SecCertificateCopyData(ValueAtIndex);
    }

    CFRelease(v12);
  }

  else
  {
    v14 = 0;
  }

  protectionSpace2 = [challengeCopy protectionSpace];
  v16 = [CRURLSessionDelegate trustIsValidWithProtectionSpace:protectionSpace2];

  v17 = handleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412546;
    v24 = v14;
    v25 = 2112;
    v26 = challengeCopy;
    _os_log_impl(&dword_24785F000, v17, OS_LOG_TYPE_DEFAULT, "Certificate:%@:%@", &v23, 0x16u);
  }

  if (v16)
  {
    v18 = MEMORY[0x277CCACF0];
    protectionSpace3 = [challengeCopy protectionSpace];
    v20 = [v18 credentialForTrust:{objc_msgSend(protectionSpace3, "serverTrust")}];

    handlerCopy[2](handlerCopy, 0, v20);
  }

  else
  {
    v21 = handleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CRURLSessionDelegate URLSession:didReceiveChallenge:completionHandler:];
    }

    handlerCopy[2](handlerCopy, 2, 0);
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (BOOL)trustIsValidWithProtectionSpace:(id)space
{
  v28 = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  v4 = spaceCopy;
  error = 0;
  if (!spaceCopy)
  {
    v11 = handleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[CRURLSessionDelegate trustIsValidWithProtectionSpace:];
    }

    goto LABEL_10;
  }

  serverTrust = [spaceCopy serverTrust];
  if (!serverTrust)
  {
LABEL_10:
    v12 = handleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[CRURLSessionDelegate trustIsValidWithProtectionSpace:];
    }

    v6 = 0;
    v13 = 0;
    goto LABEL_13;
  }

  v6 = serverTrust;
  host = [v4 host];
  AppleAST2Service = SecPolicyCreateAppleAST2Service();

  v9 = handleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24785F000, v9, OS_LOG_TYPE_DEFAULT, "got policy", buf, 2u);
  }

  if (AppleAST2Service)
  {
    v10 = SecTrustSetPolicies(v6, AppleAST2Service);
    CFRelease(AppleAST2Service);
    goto LABEL_16;
  }

  v13 = 1;
LABEL_13:
  v14 = handleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    +[CRURLSessionDelegate trustIsValidWithProtectionSpace:];
  }

  v10 = 0;
  if (!v13)
  {
    goto LABEL_26;
  }

LABEL_16:
  if (v10)
  {
LABEL_26:
    v19 = handleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(CRURLSessionDelegate *)v10 trustIsValidWithProtectionSpace:v19];
    }

    goto LABEL_29;
  }

  result = kSecTrustResultInvalid;
  SecTrustEvaluateWithError(v6, &error);
  TrustResult = SecTrustGetTrustResult(v6, &result);
  v16 = handleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v25 = TrustResult;
    v26 = 1024;
    v27 = result;
    _os_log_impl(&dword_24785F000, v16, OS_LOG_TYPE_DEFAULT, "SecTrust result: %d, evaluated: %u", buf, 0xEu);
  }

  if (TrustResult)
  {
LABEL_29:
    v18 = 0;
    goto LABEL_30;
  }

  v18 = result == kSecTrustResultProceed || result == kSecTrustResultUnspecified;
LABEL_30:

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (void)trustIsValidWithProtectionSpace:(int)a1 .cold.4(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_24785F000, a2, OS_LOG_TYPE_ERROR, "SecTrustSetAnchorCertificates failed: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end