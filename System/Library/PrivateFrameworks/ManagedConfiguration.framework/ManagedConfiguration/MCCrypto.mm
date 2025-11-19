@interface MCCrypto
+ (__SecCertificate)copyCertificateRefFromPEMData:(id)a3;
+ (__SecCertificate)copyLeafCertificateFromTrust:(__SecTrust *)a3;
+ (id)_decryptionFailedErrorWithUnderlyingError:(id)a3;
+ (id)createAndStoreNewActivationLockBypassCodeAndHash;
+ (id)createAndStoreNewActivationLockBypassCodeAndHashIfNeeded;
+ (id)objectFromEncryptedData:(id)a3 outCertificate:(__SecCertificate *)a4 outError:(id *)a5;
+ (id)storeActivationLockBypassCode:(id)a3 hash:(id)a4;
+ (void)createNewActivationLockBypassCodeOutCode:(char *)a3 outRawBytes:(char *)a4 outHash:(char *)a5;
@end

@implementation MCCrypto

+ (__SecCertificate)copyLeafCertificateFromTrust:(__SecTrust *)a3
{
  v3 = SecTrustCopyCertificateChain(a3);
  if ([(__CFArray *)v3 count])
  {
    v4 = [(__CFArray *)v3 firstObject];

    CFRetain(v4);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (__SecCertificate)copyCertificateRefFromPEMData:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [[v3 alloc] initWithData:v4 encoding:1];

  v6 = [v5 rangeOfString:@"-----BEGIN CERTIFICATE-----"];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || ((v8 = v6 + v7, v9 = [v5 rangeOfString:@"-----END CERTIFICATE-----" options:0 range:{v8, objc_msgSend(v5, "length") - v8}], v9 != 0x7FFFFFFFFFFFFFFFLL) ? (v10 = v9 == v8) : (v10 = 1), v10 || (objc_msgSend(v5, "substringWithRange:", v8, v9 - v8), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(objc_alloc(MEMORY[0x1E695DEF0]), "initWithBase64EncodedString:options:", v11, 1), v11, !v12)))
  {
    v13 = 0;
  }

  else
  {
    v13 = SecCertificateCreateWithData(*MEMORY[0x1E695E480], v12);
  }

  return v13;
}

+ (id)_decryptionFailedErrorWithUnderlyingError:(id)a3
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = a3;
  v12 = MCErrorArray(@"DECRYPTION_FAILED", v5, v6, v7, v8, v9, v10, v11, 0);
  v13 = MCLocalizedErrorString(@"DECRYPTION_FAILED_SUGGESTION");
  v14 = MCUSEnglishErrorString(@"DECRYPTION_FAILED_SUGGESTION");
  v15 = [v3 MCErrorWithDomain:@"MCProfileErrorDomain" code:1006 descriptionArray:v12 suggestion:v13 USEnglishSuggestion:v14 underlyingError:v4 errorType:@"MCFatalError"];

  return v15;
}

+ (id)objectFromEncryptedData:(id)a3 outCertificate:(__SecCertificate *)a4 outError:(id *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  cf = 0;
  v8 = MEMORY[0x1E695DF88];
  v9 = a3;
  v10 = [v8 data];
  v11 = SecCMSDecryptEnvelopedData();

  if (v11)
  {
    v12 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v31) = v11;
      _os_log_impl(&dword_1A795B000, v12, OS_LOG_TYPE_ERROR, "Decryption failed (CMS error): %d", buf, 8u);
    }

    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = [v13 initWithDomain:*MEMORY[0x1E696A768] code:v11 userInfo:0];
    v15 = [a1 _decryptionFailedErrorWithUnderlyingError:v14];

LABEL_13:
    v20 = 0;
    goto LABEL_14;
  }

  if ([v10 length])
  {
    v16 = cf == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v17, OS_LOG_TYPE_ERROR, "Decryption failed (profile data was empty)", buf, 2u);
    }

    v15 = [a1 _decryptionFailedErrorWithUnderlyingError:0];
    goto LABEL_13;
  }

  v28 = 0;
  v20 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v10 options:2 format:0 error:&v28];
  v21 = v28;
  v22 = v21;
  v15 = 0;
  if (!v20)
  {
    v23 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v24 = v23;
      v25 = [v22 MCVerboseDescription];
      *buf = 138543362;
      v31 = v25;
      _os_log_impl(&dword_1A795B000, v24, OS_LOG_TYPE_ERROR, "Decryption failed (profile data error): %{public}@", buf, 0xCu);
    }

    v15 = [a1 _decryptionFailedErrorWithUnderlyingError:v22];
  }

LABEL_14:
  if (v15)
  {
    if (a5)
    {
      v18 = v15;
      v19 = 0;
      *a5 = v15;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = cf;
    }

    else if (cf)
    {
      CFRelease(cf);
    }

    v19 = v20;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)createAndStoreNewActivationLockBypassCodeAndHashIfNeeded
{
  v3 = [a1 storedActivationLockBypassCodeHash];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [a1 createAndStoreNewActivationLockBypassCodeAndHash];
  }

  return v4;
}

+ (id)createAndStoreNewActivationLockBypassCodeAndHash
{
  v17 = *MEMORY[0x1E69E9840];
  [MCCrypto createNewActivationLockBypassCodeOutCode:v16 outRawBytes:v15 outHash:v14];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v16 length:31 encoding:1 freeWhenDone:0];
  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v14 length:32 freeWhenDone:0];
  v4 = [MCCrypto storeActivationLockBypassCode:v2 hash:v3];

  memset(v16, 0, sizeof(v16));
  v15[0] = 0;
  v15[1] = 0;
  memset(v14, 0, sizeof(v14));
  v5 = _MCLogObjects;
  if (v4)
  {
    if (!os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v12 = 138543362;
    v13 = v4;
    v6 = "Could not store activation lock bypass code. Error: %{public}@";
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
    v9 = 12;
  }

  else
  {
    if (!os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    LOWORD(v12) = 0;
    v6 = "Successfully created and stored new activation lock bypass code.";
    v7 = v5;
    v8 = OS_LOG_TYPE_INFO;
    v9 = 2;
  }

  _os_log_impl(&dword_1A795B000, v7, v8, v6, &v12, v9);
LABEL_7:
  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (void)createNewActivationLockBypassCodeOutCode:(char *)a3 outRawBytes:(char *)a4 outHash:(char *)a5
{
  v5 = a4;
  v14 = *MEMORY[0x1E69E9840];
  arc4random_buf(a4, 0x10uLL);
  pbkdf2();
  v7 = 0;
  v8 = &createNewActivationLockBypassCodeOutCode_outRawBytes_outHash__kDashPositions;
  for (i = 1; i != 26; ++i)
  {
    if (v7 >= 3)
    {
      v10 = 8 - v7;
    }

    else
    {
      v10 = 5;
    }

    v11 = (*v5 << v7) >> (8 - v10);
    if (v7 <= 2)
    {
      v12 = 5;
    }

    else
    {
      v12 = -3;
    }

    if (v7 > 2)
    {
      ++v5;
    }

    if (v10 <= 4)
    {
      v11 = (*v5 >> (v10 + 3)) | (v11 << (5 - v10));
    }

    *a3 = createNewActivationLockBypassCodeOutCode_outRawBytes_outHash__kSymbols[v11];
    if (i == *v8)
    {
      ++v8;
      a3[1] = 45;
      a3 += 2;
    }

    else
    {
      ++a3;
    }

    v7 += v12;
  }

  *a3 = createNewActivationLockBypassCodeOutCode_outRawBytes_outHash__kSymbols[*v5 & 7];
  a3[1] = 0;
  v13 = *MEMORY[0x1E69E9840];
}

+ (id)storeActivationLockBypassCode:(id)a3 hash:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 length];
  v8 = MEMORY[0x1E697ABE8];
  if (v7)
  {
    v9 = *MEMORY[0x1E697ABE8];
    v16 = 0;
    LOWORD(v14) = 1;
    [MCKeychain setString:v5 forService:@"com.apple.managedconfiguration.alescrow" account:@"escrowCode" label:0 description:0 access:v9 group:@"apple" useSystemKeychain:v14 sysBound:&v16 outError:?];
    v10 = v16;
    if (v10)
    {
      goto LABEL_5;
    }
  }

  if ([v6 length] && (v11 = *v8, v15 = 0, LOWORD(v14) = 1, +[MCKeychain setData:forService:account:label:description:access:group:useSystemKeychain:sysBound:outError:](MCKeychain, "setData:forService:account:label:description:access:group:useSystemKeychain:sysBound:outError:", v6, @"com.apple.managedconfiguration.alescrow", @"escrowHash", 0, 0, v11, @"apple", v14, &v15), (v10 = v15) != 0))
  {
LABEL_5:
    v12 = v10;
  }

  else
  {
    MCSendActivationLockBypassCodeWasStoredNotification();
    v12 = 0;
  }

  return v12;
}

@end