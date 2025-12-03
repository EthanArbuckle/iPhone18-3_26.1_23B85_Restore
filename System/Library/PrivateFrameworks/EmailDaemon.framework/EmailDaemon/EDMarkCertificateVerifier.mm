@interface EDMarkCertificateVerifier
- (BOOL)_verifyIndicatorData:(void *)data withMarkCertificateData:(void *)certificateData domain:(void *)domain date:(CFErrorRef *)date error:;
- (id)_bimiSelectorFromMessage:(uint64_t)message;
- (id)_certificateChainFromPEMData:(void *)data;
- (id)_senderAddressFromMessage:(uint64_t)message;
- (id)_splitPEMStringIntoCertificatePEMData:(uint64_t)data;
- (uint64_t)_verifyIndicatorData:(void *)data withMarkCertificateData:(void *)certificateData forBaseMessage:;
@end

@implementation EDMarkCertificateVerifier

void ___ef_log_EDMarkCertificateVerifier_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EDMarkCertificateVerifier");
  v1 = _ef_log_EDMarkCertificateVerifier_log;
  _ef_log_EDMarkCertificateVerifier_log = v0;
}

- (uint64_t)_verifyIndicatorData:(void *)data withMarkCertificateData:(void *)certificateData forBaseMessage:
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = a2;
  dataCopy = data;
  certificateDataCopy = certificateData;
  if (!self)
  {
    v18 = 0;
    goto LABEL_42;
  }

  v10 = [(EDMarkCertificateVerifier *)self _senderAddressFromMessage:certificateDataCopy];
  dateReceived = [certificateDataCopy dateReceived];
  v12 = dateReceived;
  if (!v10 || !dateReceived)
  {
    v17 = _ef_log_EDMarkCertificateVerifier();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [EDMarkCertificateVerifier _verifyIndicatorData:v10 != 0 withMarkCertificateData:v17 forBaseMessage:?];
    }

    v18 = 0;
    goto LABEL_41;
  }

  domain = [v10 domain];
  v49 = 0;
  v14 = [(EDMarkCertificateVerifier *)self _verifyIndicatorData:v7 withMarkCertificateData:dataCopy domain:domain date:v12 error:&v49];
  v15 = v49;
  v16 = v15;
  if (!v14)
  {
    if (-[__CFError code](v15, "code") != -67602 || (-[__CFError domain](v16, "domain"), v19 = objc_claimAutoreleasedReturnValue(), v44 = *MEMORY[0x1E696A768], v20 = [v19 isEqualToString:?], v19, (v20 & 1) == 0))
    {
      v25 = _ef_log_EDMarkCertificateVerifier();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(__CFError *)v16 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDMarkCertificateVerifier _verifyIndicatorData:withMarkCertificateData:forBaseMessage:];
      }

      v50 = 0;
      goto LABEL_40;
    }

    highLevelDomain = [v10 highLevelDomain];
    v42 = [highLevelDomain isEqualToString:domain];
    if (v42)
    {
      v21 = v16;
    }

    else
    {
      v48 = v16;
      v26 = [(EDMarkCertificateVerifier *)self _verifyIndicatorData:v7 withMarkCertificateData:dataCopy domain:highLevelDomain date:v12 error:&v48];
      v21 = v48;

      if (v26)
      {
        v50 = 1;
LABEL_39:

        v16 = v21;
        goto LABEL_40;
      }

      if (-[__CFError code](v21, "code") != -67602 || (-[__CFError domain](v21, "domain"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 isEqualToString:v44], v27, (v28 & 1) == 0))
      {
        v29 = _ef_log_EDMarkCertificateVerifier();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [(__CFError *)v21 ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          [EDMarkCertificateVerifier _verifyIndicatorData:withMarkCertificateData:forBaseMessage:];
        }

        v50 = 0;
        goto LABEL_39;
      }
    }

    v22 = [(EDMarkCertificateVerifier *)self _bimiSelectorFromMessage:certificateDataCopy];
    v40 = v22;
    if (!v22)
    {
      goto LABEL_31;
    }

    v41 = [v22 mutableCopy];
    [v41 appendString:@"._bimi."];
    [v41 appendString:domain];
    v47 = v21;
    v23 = [(EDMarkCertificateVerifier *)self _verifyIndicatorData:v7 withMarkCertificateData:dataCopy domain:v41 date:v12 error:&v47];
    v24 = v47;

    if (v23)
    {
      v50 = 1;
LABEL_37:

LABEL_38:
      v21 = v24;
      goto LABEL_39;
    }

    if (-[__CFError code](v24, "code") != -67602 || (-[__CFError domain](v24, "domain"), v30 = objc_claimAutoreleasedReturnValue(), v31 = [v30 isEqualToString:v44], v30, (v31 & 1) == 0))
    {
      v33 = _ef_log_EDMarkCertificateVerifier();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [(__CFError *)v24 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDMarkCertificateVerifier _verifyIndicatorData:withMarkCertificateData:forBaseMessage:];
      }

      v50 = 0;
      goto LABEL_37;
    }

    if (v42)
    {
      v21 = v24;
LABEL_30:

LABEL_31:
      v32 = _ef_log_EDMarkCertificateVerifier();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [(__CFError *)v21 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDMarkCertificateVerifier _verifyIndicatorData:withMarkCertificateData:forBaseMessage:];
      }

      v50 = 0;
      v24 = v21;
      goto LABEL_38;
    }

    v36 = [v40 mutableCopy];
    [v36 appendString:@"._bimi."];
    [v36 appendString:highLevelDomain];
    v46 = v24;
    v37 = [(EDMarkCertificateVerifier *)self _verifyIndicatorData:v7 withMarkCertificateData:dataCopy domain:v36 date:v12 error:&v46];
    v21 = v46;

    if (!v37)
    {
      if ([(__CFError *)v21 code]== -67602)
      {
        domain2 = [(__CFError *)v21 domain];
        v38 = [domain2 isEqualToString:v44];

        if (v38)
        {

          goto LABEL_30;
        }
      }

      v39 = _ef_log_EDMarkCertificateVerifier();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [(__CFError *)v21 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDMarkCertificateVerifier _verifyIndicatorData:withMarkCertificateData:forBaseMessage:];
      }
    }

    v50 = v37;

    v24 = v21;
    goto LABEL_37;
  }

  v50 = 1;
LABEL_40:

  v18 = v50;
LABEL_41:

LABEL_42:
  v34 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)_senderAddressFromMessage:(uint64_t)message
{
  v3 = a2;
  v4 = v3;
  if (message)
  {
    v5 = MEMORY[0x1E699B340];
    headers = [v3 headers];
    v7 = [headers firstHeaderForKey:*MEMORY[0x1E699B0E8]];
    v8 = [v5 tagValueListFromString:v7 error:0];

    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E699A760]];
    v10 = v9;
    if (v9)
    {
      firstObject = v9;
    }

    else
    {
      senders = [v4 senders];
      firstObject = [senders firstObject];
    }

    emailAddressValue = [firstObject emailAddressValue];
  }

  else
  {
    emailAddressValue = 0;
  }

  return emailAddressValue;
}

- (BOOL)_verifyIndicatorData:(void *)data withMarkCertificateData:(void *)certificateData domain:(void *)domain date:(CFErrorRef *)date error:
{
  v11 = a2;
  dataCopy = data;
  certificateDataCopy = certificateData;
  domainCopy = domain;
  if (!self)
  {
    v22 = 0;
    goto LABEL_23;
  }

  trust = 0;
  v15 = [(EDMarkCertificateVerifier *)self _certificateChainFromPEMData:dataCopy];
  if ([v15 count])
  {
    VerifiedMark = SecPolicyCreateVerifiedMark();
    if (VerifiedMark)
    {
      if (SecTrustCreateWithCertificates(v15, VerifiedMark, &trust))
      {
        v17 = _ef_log_EDMarkCertificateVerifier();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [EDMarkCertificateVerifier _verifyIndicatorData:withMarkCertificateData:domain:date:error:];
        }
      }

      else
      {
        if (!domainCopy || !SecTrustSetVerifyDate(trust, domainCopy))
        {
          error = 0;
          v19 = SecTrustEvaluateWithError(trust, &error);
          v18 = error;
LABEL_18:

          CFRelease(VerifiedMark);
          if (trust)
          {
            CFRelease(trust);
          }

          goto LABEL_20;
        }

        v17 = _ef_log_EDMarkCertificateVerifier();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [EDMarkCertificateVerifier _verifyIndicatorData:withMarkCertificateData:domain:date:error:];
        }
      }

      v18 = 0;
      v19 = 0;
      goto LABEL_18;
    }

    v20 = _ef_log_EDMarkCertificateVerifier();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [EDMarkCertificateVerifier _verifyIndicatorData:withMarkCertificateData:domain:date:error:];
    }
  }

  else
  {
    v20 = _ef_log_EDMarkCertificateVerifier();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [EDMarkCertificateVerifier _verifyIndicatorData:withMarkCertificateData:domain:date:error:];
    }
  }

  v18 = 0;
  v19 = 0;
LABEL_20:
  if (date)
  {
    v21 = v18;
    *date = v18;
  }

  v26 = v19;

  v22 = v26;
LABEL_23:

  return v22;
}

- (id)_bimiSelectorFromMessage:(uint64_t)message
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v16 = v3;
  if (message)
  {
    v4 = MEMORY[0x1E699B290];
    headers = [v3 headers];
    v6 = [v4 authenticationResultsForHeaders:headers];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = *v18;
      v10 = *MEMORY[0x1E699B058];
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * v11) firstStatementForMethod:@"bimi"];
        v13 = [v12 valueForPropertyType:v10 property:@"selector"];

        if (v13)
        {
          break;
        }

        if (v8 == ++v11)
        {
          v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_certificateChainFromPEMData:(void *)data
{
  v3 = a2;
  if (data)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:1];
    v5 = [(EDMarkCertificateVerifier *)data _splitPEMStringIntoCertificatePEMData:v4];
    data = [v5 ef_compactMap:&__block_literal_global_29];
  }

  return data;
}

- (id)_splitPEMStringIntoCertificatePEMData:(uint64_t)data
{
  v3 = a2;
  if (data)
  {
    v4 = [MEMORY[0x1E696AE88] scannerWithString:v3];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v4 scanUpToString:@"-----BEGIN CERTIFICATE-----" intoString:0];
    v7 = 0;
    while (1)
    {
      v13 = v7;
      v8 = [v4 scanUpToString:@"-----END CERTIFICATE-----" intoString:&v13];
      v9 = v13;

      if (!v8)
      {
        break;
      }

      [v6 appendString:v9];
      v12 = v9;
      [v4 scanString:@"-----END CERTIFICATE-----" intoString:&v12];
      v7 = v12;

      [v6 appendString:v7];
      v10 = [v6 dataUsingEncoding:1];
      [v5 addObject:v10];
      [v4 scanUpToString:@"-----BEGIN CERTIFICATE-----" intoString:0];
      [v6 setString:&stru_1F45B4608];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __58__EDMarkCertificateVerifier__certificateChainFromPEMData___block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = SecCertificateCreateWithPEM();

  return v1;
}

- (void)_verifyIndicatorData:(char)a1 withMarkCertificateData:(char)a2 forBaseMessage:(NSObject *)a3 .cold.1(char a1, char a2, NSObject *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = @"without sender and date";
  if (a1)
  {
    v3 = @"without sender";
  }

  if (a2)
  {
    v3 = @"without date";
  }

  v5 = 138543362;
  v6 = v3;
  OUTLINED_FUNCTION_7(&dword_1C61EF000, a2, a3, "Could not verify indicator for message %{public}@", &v5);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_verifyIndicatorData:withMarkCertificateData:forBaseMessage:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Indicator verification failed with error: %{public}@", v5);
}

@end