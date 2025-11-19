@interface CLCertificatePinningHelper
+ (int)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
+ (void)initialize;
@end

@implementation CLCertificatePinningHelper

+ (void)initialize
{
  if (qword_100011280 != -1)
  {
    sub_100006E20();
  }
}

+ (int)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  if (![objc_msgSend(objc_msgSend(a4 protectionSpace])
  {
    goto LABEL_18;
  }

  v7 = [objc_msgSend(a4 "protectionSpace")];
  v8 = [objc_msgSend(a4 "protectionSpace")];
  v9 = [qword_100011288 objectForKeyedSubscript:v7];
  if (v9)
  {
    v10 = v9;
    if (v9 == +[NSNull null])
    {
      if (qword_1000110D0 != -1)
      {
        sub_100006E5C();
      }

      v20 = qword_1000110D8;
      if (!os_log_type_enabled(qword_1000110D8, OS_LOG_TYPE_INFO))
      {
        v16 = 3;
        goto LABEL_21;
      }

      *buf = 68289283;
      v37 = 0;
      v38 = 2082;
      v39 = "";
      v40 = 2081;
      v41 = [v7 UTF8String];
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Warning Empty pinning rule for host, host:%{private, location:escape_only}s}", buf, 0x1Cu);
      v16 = 3;
      goto LABEL_19;
    }

    AppleSSLPinned = SecPolicyCreateAppleSSLPinned();
    if (AppleSSLPinned)
    {
      v12 = AppleSSLPinned;
      v13 = SecTrustSetPolicies(v8, AppleSSLPinned);
      CFRelease(v12);
      v14 = kSecTrustResultInvalid;
      result = kSecTrustResultInvalid;
      if (v13)
      {
LABEL_8:
        if (v14 == kSecTrustResultProceed || v14 == kSecTrustResultUnspecified)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

LABEL_19:
        if (qword_1000110D0 != -1)
        {
          sub_100006E34();
        }

        goto LABEL_21;
      }

      err = 0;
      if (SecTrustEvaluateWithError(v8, &err))
      {
        SecTrustGetTrustResult(v8, &result);
        v14 = result;
        goto LABEL_8;
      }

      if (qword_1000110D0 != -1)
      {
        sub_100006E34();
      }

      v28 = qword_1000110D8;
      if (os_log_type_enabled(qword_1000110D8, OS_LOG_TYPE_ERROR))
      {
        Code = CFErrorGetCode(err);
        Domain = CFErrorGetDomain(err);
        *buf = 68289539;
        v37 = 0;
        v38 = 2082;
        v39 = "";
        v40 = 2049;
        v41 = Code;
        v42 = 2113;
        v43 = Domain;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Can't SecTrustEvaluate returned the error, errorCode:%{private}ld, error:%{private, location:escape_only}@}", buf, 0x26u);
        if (qword_1000110D0 != -1)
        {
          sub_100006E34();
        }
      }

      v31 = qword_1000110D8;
      if (!os_signpost_enabled(qword_1000110D8))
      {
LABEL_50:
        v16 = 2;
        goto LABEL_19;
      }

      v32 = CFErrorGetCode(err);
      v33 = CFErrorGetDomain(err);
      *buf = 68289539;
      v37 = 0;
      v38 = 2082;
      v39 = "";
      v40 = 2049;
      v41 = v32;
      v42 = 2113;
      v43 = v33;
      v25 = "Can't SecTrustEvaluate returned the error";
      v26 = "{msg%{public}.0s:Can't SecTrustEvaluate returned the error, errorCode:%{private}ld, error:%{private, location:escape_only}@}";
      v27 = v31;
    }

    else
    {
      if (qword_1000110D0 != -1)
      {
        sub_100006E5C();
      }

      v21 = qword_1000110D8;
      if (os_log_type_enabled(qword_1000110D8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289538;
        v37 = 0;
        v38 = 2082;
        v39 = "";
        v40 = 2082;
        v41 = [v7 UTF8String];
        v42 = 2082;
        v43 = [(NSNull *)v10 UTF8String];
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unable to create a security policy, host:%{public, location:escape_only}s, leafOID:%{public, location:escape_only}s}", buf, 0x26u);
        if (qword_1000110D0 != -1)
        {
          sub_100006E34();
        }
      }

      v22 = qword_1000110D8;
      if (!os_signpost_enabled(qword_1000110D8))
      {
        v16 = 2;
        goto LABEL_21;
      }

      v23 = [v7 UTF8String];
      v24 = [(NSNull *)v10 UTF8String];
      *buf = 68289538;
      v37 = 0;
      v38 = 2082;
      v39 = "";
      v40 = 2082;
      v41 = v23;
      v42 = 2082;
      v43 = v24;
      v25 = "Unable to create a security policy";
      v26 = "{msg%{public}.0s:Unable to create a security policy, host:%{public, location:escape_only}s, leafOID:%{public, location:escape_only}s}";
      v27 = v22;
    }

    _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v25, v26, buf, 0x26u);
    goto LABEL_50;
  }

  if (qword_1000110D0 != -1)
  {
    sub_100006E5C();
  }

  v17 = qword_1000110D8;
  v16 = 0;
  if (os_log_type_enabled(qword_1000110D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v37 = 0;
    v38 = 2082;
    v39 = "";
    v40 = 2081;
    v41 = [v7 UTF8String];
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning No pinning rule for host, host:%{private, location:escape_only}s}", buf, 0x1Cu);
LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

LABEL_21:
  v18 = qword_1000110D8;
  if (os_log_type_enabled(qword_1000110D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v37 = 0;
    v38 = 2082;
    v39 = "";
    v40 = 2049;
    v41 = v16;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#VerifyHost result, result:%{private}lu}", buf, 0x1Cu);
  }

  if (v16 == 2)
  {
    (*(a5 + 2))(a5, 2, 0);
  }

  else if (v16 == 1)
  {
    (*(a5 + 2))(a5, 0, +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [objc_msgSend(a4 "protectionSpace")]));
  }

  else
  {
    (*(a5 + 2))(a5, 1, 0);
  }

  return v16;
}

@end