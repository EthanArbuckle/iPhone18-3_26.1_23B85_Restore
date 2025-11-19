@interface MFMessageKeychainManager
+ (BOOL)_addAllIdentitiesToArray:(id *)a3 fromSyncableKeychain:(BOOL)a4 withError:(id *)a5 usingBlock:(id)a6;
+ (BOOL)_matchSSLClientIdentity:(__SecIdentity *)a3 withHostname:(id)a4;
+ (BOOL)_validateIdentity:(__SecIdentity *)a3 forAddress:(id)a4 policy:(__SecPolicy *)a5 usage:(unsigned int)a6 error:(id *)a7;
+ (BOOL)validateEncryptionIdentity:(__SecIdentity *)a3 forAddress:(id)a4 error:(id *)a5;
+ (BOOL)validateSigningIdentity:(__SecIdentity *)a3 forAddress:(id)a4 error:(id *)a5;
+ (__SecCertificate)_copyCertificateForPersistent:(id)a3 error:(id *)a4;
+ (__SecCertificate)copyEncryptionCertificateForAddress:(id)a3 error:(id *)a4;
+ (__SecIdentity)copyClientSSLIdentityForHostName:(id)a3 error:(id *)a4;
+ (__SecIdentity)copyIdentityForPersistentReference:(id)a3 error:(id *)a4;
+ (__SecPolicy)copySMIMEEncryptionPolicyForAddress:(id)a3;
+ (__SecPolicy)copySMIMESigningPolicyForAddress:(id)a3;
+ (id)_addCertificate:(__SecCertificate *)a3 persistent:(id *)a4;
+ (id)_addPersistentMapping:(id)a3 forAddress:(id)a4;
+ (id)_copyAllIdentitiesWithError:(id *)a3 usingBlock:(id)a4;
+ (id)_passwordForGenericAccount:(id)a3 service:(id)a4 error:(id *)a5;
+ (id)_passwordForHost:(id)a3 username:(id)a4 port:(int)a5 keychainProtocol:(__CFString *)a6;
+ (id)_removeCertificateForPersistent:(id)a3;
+ (id)copyAllEncryptionIdentitiesForAddress:(id)a3 error:(id *)a4;
+ (id)copyAllSigningIdentitiesForAddress:(id)a3 error:(id *)a4;
+ (id)newTrustManager;
+ (id)persistentReferenceForIdentity:(__SecIdentity *)a3 error:(id *)a4;
+ (id)saveEncryptionCertificate:(__SecCertificate *)a3 forAddress:(id)a4;
+ (void)initialize;
+ (void)removePasswordForHost:(id)a3 username:(id)a4 port:(int)a5 keychainProtocol:(void *)a6;
+ (void)removePasswordForServiceName:(id)a3 accountName:(id)a4;
+ (void)setPassword:(id)a3 forHost:(id)a4 username:(id)a5 port:(int)a6 keychainProtocol:(void *)a7 keychainAccessibility:(void *)a8;
+ (void)setPassword:(id)a3 forServiceName:(id)a4 accountName:(id)a5 keychainAccessibility:(void *)a6;
@end

@implementation MFMessageKeychainManager

+ (void)initialize
{
  if (!sKeychainLock)
  {
    sKeychainLock = [objc_alloc(MEMORY[0x1E69AD6D8]) initWithName:@"keychainLock" andDelegate:0];
  }
}

+ (id)_passwordForHost:(id)a3 username:(id)a4 port:(int)a5 keychainProtocol:(__CFString *)a6
{
  valuePtr = a5;
  if ([a3 length] && objc_msgSend(a4, "length"))
  {
    v9 = *MEMORY[0x1E695E480];
    v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    Mutable = CFDictionaryCreateMutable(v9, 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE80], a3);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ADF8], v10);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE00], a6);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], a4);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B318], *MEMORY[0x1E695E4D0]);
    cf = 0xAAAAAAAAAAAAAAAALL;
    v12 = SecItemCopyMatching(Mutable, &cf);
    CFRelease(v10);
    CFRelease(Mutable);
    v13 = 0;
    if (!v12 && cf)
    {
      v14 = objc_alloc(MEMORY[0x1E696AEC0]);
      v13 = [v14 initWithData:cf encoding:4];
      CFRelease(cf);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (void)setPassword:(id)a3 forHost:(id)a4 username:(id)a5 port:(int)a6 keychainProtocol:(void *)a7 keychainAccessibility:(void *)a8
{
  valuePtr = a6;
  [sKeychainLock mf_waitForLock];
  v14 = *MEMORY[0x1E695E480];
  v15 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (v15)
  {
    v16 = v15;
    if ([a4 length])
    {
      if ([a5 length])
      {
        if ([a3 length])
        {
          v17 = [a3 dataUsingEncoding:4];
          if (v17)
          {
            v18 = v17;
            v25 = [a1 _passwordForHost:a4 username:a5 port:valuePtr keychainProtocol:a7];
            Mutable = CFDictionaryCreateMutable(v14, 0, 0, 0);
            if (Mutable)
            {
              v20 = Mutable;
              CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
              CFDictionaryAddValue(v20, *MEMORY[0x1E697AE80], a4);
              CFDictionaryAddValue(v20, *MEMORY[0x1E697ADF8], v16);
              CFDictionaryAddValue(v20, *MEMORY[0x1E697AE00], a7);
              CFDictionaryAddValue(v20, *MEMORY[0x1E697AC30], a5);
              v21 = *MEMORY[0x1E697AEB0];
              v22 = *MEMORY[0x1E695E4D0];
              CFDictionaryAddValue(v20, *MEMORY[0x1E697AEB0], *MEMORY[0x1E695E4D0]);
              if (v25)
              {
                if (([v25 isEqualToString:a3] & 1) == 0)
                {
                  v23 = CFDictionaryCreateMutable(v14, 0, 0, 0);
                  if (v23)
                  {
                    v24 = v23;
                    CFDictionaryAddValue(v23, *MEMORY[0x1E697B3C0], v18);
                    CFDictionaryAddValue(v24, *MEMORY[0x1E697ABD8], a8);
                    CFDictionaryAddValue(v24, v21, v22);
                    SecItemUpdate(v20, v24);
                    CFRelease(v24);
                  }
                }
              }

              else
              {
                result = 0xAAAAAAAAAAAAAAAALL;
                CFDictionaryAddValue(v20, *MEMORY[0x1E697B3C0], v18);
                CFDictionaryAddValue(v20, *MEMORY[0x1E697ABD8], a8);
                SecItemAdd(v20, &result);
              }

              CFRelease(v20);
            }
          }
        }
      }
    }

    CFRelease(v16);
  }

  [sKeychainLock unlock];
}

+ (void)removePasswordForHost:(id)a3 username:(id)a4 port:(int)a5 keychainProtocol:(void *)a6
{
  valuePtr = a5;
  [sKeychainLock mf_waitForLock];
  if ([a3 length] && objc_msgSend(a4, "length"))
  {
    v9 = *MEMORY[0x1E695E480];
    v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    Mutable = CFDictionaryCreateMutable(v9, 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE80], a3);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ADF8], v10);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE00], a6);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], a4);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AEB0], *MEMORY[0x1E695E4D0]);
    SecItemDelete(Mutable);
    CFRelease(v10);
    CFRelease(Mutable);
  }

  [sKeychainLock unlock];
}

+ (id)_passwordForGenericAccount:(id)a3 service:(id)a4 error:(id *)a5
{
  v22 = *MEMORY[0x1E69E9840];
  if ([a3 length] && objc_msgSend(a4, "length"))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], a3);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], a4);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B318], *MEMORY[0x1E695E4D0]);
    result = 0;
    v9 = SecItemCopyMatching(Mutable, &result);
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = result == 0;
    }

    if (v10)
    {
      v11 = v9;
      v12 = MFLogGeneral();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          *buf = 67109120;
          v21 = v11;
          _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "#Warning SecItemCopyMatching result: %d", buf, 8u);
        }

        if (!a5)
        {
          v16 = 0;
          goto LABEL_20;
        }

        v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v11 userInfo:0];
        v16 = 0;
      }

      else
      {
        if (v13)
        {
          *buf = 0;
          _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "SecItemCopyMatching succeeded with empty results", buf, 2u);
        }

        v14 = 0;
        v16 = 0;
        if (!a5)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      v16 = [v15 initWithData:result encoding:4];
      CFRelease(result);
      if (!a5)
      {
        goto LABEL_20;
      }

      v14 = 0;
    }

    *a5 = v14;
LABEL_20:
    CFRelease(Mutable);
    goto LABEL_21;
  }

  v16 = 0;
LABEL_21:
  v17 = v16;
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (void)setPassword:(id)a3 forServiceName:(id)a4 accountName:(id)a5 keychainAccessibility:(void *)a6
{
  v29 = *MEMORY[0x1E69E9840];
  [sKeychainLock mf_waitForLock];
  if ([a4 length] && objc_msgSend(a3, "length") && objc_msgSend(a5, "length"))
  {
    v11 = [a3 dataUsingEncoding:4];
    v12 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], a5);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], a4);
    v14 = *MEMORY[0x1E697AEB0];
    v15 = *MEMORY[0x1E695E4D0];
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AEB0], *MEMORY[0x1E695E4D0]);
    v16 = [a1 _passwordForGenericAccount:a5 service:a4 error:0];
    if (v16)
    {
      if ([v16 isEqualToString:a3])
      {
        goto LABEL_15;
      }

      v17 = CFDictionaryCreateMutable(v12, 0, 0, 0);
      CFDictionaryAddValue(v17, *MEMORY[0x1E697B3C0], v11);
      CFDictionaryAddValue(v17, *MEMORY[0x1E697ABD8], a6);
      CFDictionaryAddValue(v17, v14, v15);
      v18 = SecItemUpdate(Mutable, v17);
      if (v17)
      {
        CFRelease(v17);
      }

      if (!v18)
      {
        goto LABEL_15;
      }

      v19 = MFLogGeneral();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 134217984;
      v28 = v18;
      v20 = "#Warning SecItemUpdate result: %ld";
      v21 = v19;
    }

    else
    {
      result = 0xAAAAAAAAAAAAAAAALL;
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B3C0], v11);
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD8], a6);
      v22 = SecItemAdd(Mutable, &result);
      if (!v22)
      {
        goto LABEL_15;
      }

      v23 = v22;
      v24 = MFLogGeneral();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 134217984;
      v28 = v23;
      v20 = "#Warning SecItemAdd result: %ld";
      v21 = v24;
    }

    _os_log_impl(&dword_1B0389000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
LABEL_15:
    CFRelease(Mutable);
  }

  [sKeychainLock unlock];
  v25 = *MEMORY[0x1E69E9840];
}

+ (void)removePasswordForServiceName:(id)a3 accountName:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  [sKeychainLock mf_waitForLock];
  if ([a3 length] && objc_msgSend(a4, "length"))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], a4);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], a3);
    v7 = SecItemDelete(Mutable);
    if (v7)
    {
      v8 = v7;
      v9 = MFLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 134217984;
        v12 = v8;
        _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_DEFAULT, "#Warning SecItemDelete result: %ld", &v11, 0xCu);
      }
    }

    CFRelease(Mutable);
  }

  [sKeychainLock unlock];
  v10 = *MEMORY[0x1E69E9840];
}

+ (__SecPolicy)copySMIMESigningPolicyForAddress:(id)a3
{
  v4 = [objc_msgSend(a3 "emailAddressValue")];
  if (!v4)
  {
    v4 = [a3 stringValue];
  }

  return MEMORY[0x1EEDD83A8](1, v4);
}

+ (__SecPolicy)copySMIMEEncryptionPolicyForAddress:(id)a3
{
  v4 = [objc_msgSend(a3 "emailAddressValue")];
  if (!v4)
  {
    v4 = [a3 stringValue];
  }

  return MEMORY[0x1EEDD83A8](30, v4);
}

+ (__SecIdentity)copyIdentityForPersistentReference:(id)a3 error:(id *)a4
{
  keys[3] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 0;
  }

  cf = 0;
  if (!a3)
  {
    goto LABEL_9;
  }

  v5 = *MEMORY[0x1E697B3C8];
  keys[0] = *MEMORY[0x1E697AFF8];
  keys[1] = v5;
  keys[2] = *MEMORY[0x1E697B328];
  values[0] = *MEMORY[0x1E697B010];
  values[1] = a3;
  values[2] = *MEMORY[0x1E695E4D0];
  v6 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = SecItemCopyMatching(v6, &cf);
  CFRelease(v6);
  if (!v7)
  {
    result = cf;
    goto LABEL_11;
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v7 userInfo:0];
  if (a4)
  {
    *a4 = v8;
  }

  result = cf;
  if (cf)
  {
    CFRelease(cf);
LABEL_9:
    result = 0;
  }

LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)persistentReferenceForIdentity:(__SecIdentity *)a3 error:(id *)a4
{
  keys[4] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 0;
  }

  v13 = 0;
  if (a3)
  {
    v5 = *MEMORY[0x1E697B3D0];
    keys[0] = *MEMORY[0x1E697AFF8];
    keys[1] = v5;
    v6 = *MEMORY[0x1E697ABD0];
    keys[2] = *MEMORY[0x1E697B320];
    keys[3] = v6;
    values[0] = *MEMORY[0x1E697B010];
    values[1] = a3;
    values[2] = *MEMORY[0x1E695E4D0];
    values[3] = @"com.apple.identities";
    v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v8 = SecItemCopyMatching(v7, &v13);
    CFRelease(v7);
    if (v8)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v8 userInfo:0];
      if (a4)
      {
        *a4 = v9;
      }
    }

    v10 = v13;
  }

  else
  {
    v10 = 0;
  }

  result = v10;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

+ (BOOL)_matchSSLClientIdentity:(__SecIdentity *)a3 withHostname:(id)a4
{
  certificateRef = 0xAAAAAAAAAAAAAAAALL;
  if (SecIdentityCopyCertificate(a3, &certificateRef) || (v6 = SecCertificateCopyProperties(), CFRelease(certificateRef), !v6))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    Count = CFArrayGetCount(v6);
    if (Count < 1)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v8 = Count;
      theString = a4;
      v9 = 0;
      v10 = *MEMORY[0x1E697B2D8];
      v11 = *MEMORY[0x1E697B2E0];
      cf2 = *MEMORY[0x1E697B2F0];
      key = *MEMORY[0x1E697B2E8];
      v30 = *MEMORY[0x1E697B2F8];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
        v13 = CFGetTypeID(ValueAtIndex);
        if (v13 == CFDictionaryGetTypeID() && (v14 = CFDictionaryGetValue(ValueAtIndex, v10)) != 0 && CFEqual(v14, @"1.2.840.113635.100.6.7") && (v15 = CFDictionaryGetValue(ValueAtIndex, v11)) != 0 && CFEqual(v15, cf2) && (v16 = CFDictionaryGetValue(ValueAtIndex, key), v17 = CFGetTypeID(v16), v17 == CFArrayGetTypeID()) && (v18 = CFArrayGetCount(v16), v18 >= 1))
        {
          v19 = v18;
          v20 = 1;
          do
          {
            v21 = CFArrayGetValueAtIndex(v16, v20 - 1);
            v22 = CFGetTypeID(v21);
            v5 = v22 == CFDictionaryGetTypeID() && (Value = CFDictionaryGetValue(v21, v11)) != 0 && CFEqual(Value, v30) && (v24 = CFDictionaryGetValue(v21, key), v25 = CFGetTypeID(v24), v25 == CFStringGetTypeID()) && CFStringHasSuffix(theString, v24) != 0;
            if (v20 >= v19)
            {
              break;
            }

            ++v20;
          }

          while (!v5);
        }

        else
        {
          v5 = 0;
        }

        ++v9;
      }

      while (v9 < v8 && !v5);
    }

    CFRelease(v6);
  }

  return v5;
}

+ (__SecIdentity)copyClientSSLIdentityForHostName:(id)a3 error:(id *)a4
{
  keys[4] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 0;
  }

  if (!a3)
  {
    goto LABEL_15;
  }

  keys[0] = *MEMORY[0x1E697AFF8];
  keys[1] = keys[0];
  v7 = *MEMORY[0x1E697B260];
  keys[2] = *MEMORY[0x1E697B328];
  keys[3] = v7;
  values[0] = *MEMORY[0x1E697B010];
  values[1] = values[0];
  v8 = *MEMORY[0x1E697B268];
  values[2] = *MEMORY[0x1E695E4D0];
  values[3] = v8;
  v9 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  cf = 0;
  v10 = SecItemCopyMatching(v9, &cf);
  CFRelease(v9);
  if (v10)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v10 userInfo:0];
    if (a4)
    {
      *a4 = v11;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_15;
  }

  if (!cf)
  {
LABEL_15:
    ValueAtIndex = 0;
    goto LABEL_16;
  }

  Count = CFArrayGetCount(cf);
  if (Count < 1)
  {
LABEL_14:
    ValueAtIndex = 0;
  }

  else
  {
    v13 = Count;
    v14 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(cf, v14);
      if ([a1 _matchSSLClientIdentity:ValueAtIndex withHostname:a3])
      {
        break;
      }

      if (v13 == ++v14)
      {
        goto LABEL_14;
      }
    }

    CFRetain(ValueAtIndex);
  }

  CFRelease(cf);
LABEL_16:
  v16 = *MEMORY[0x1E69E9840];
  return ValueAtIndex;
}

+ (id)copyAllSigningIdentitiesForAddress:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__MFMessageKeychainManager_copyAllSigningIdentitiesForAddress_error___block_invoke;
  v11[3] = &unk_1E7AA7BD8;
  v11[5] = a3;
  v11[6] = &v12;
  v11[4] = a1;
  v5 = [a1 _copyAllIdentitiesWithError:a4 usingBlock:v11];
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 count];
    v8 = v13[3];
    *buf = 134218498;
    v17 = v7;
    v18 = 2048;
    v19 = v8;
    v20 = 2112;
    v21 = a3;
    _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_INFO, "#SMIMEErrors Found %lu (out of %lu) matching signing identities for %@", buf, 0x20u);
  }

  _Block_object_dispose(&v12, 8);
  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)copyAllEncryptionIdentitiesForAddress:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__MFMessageKeychainManager_copyAllEncryptionIdentitiesForAddress_error___block_invoke;
  v11[3] = &unk_1E7AA7BD8;
  v11[5] = a3;
  v11[6] = &v12;
  v11[4] = a1;
  v5 = [a1 _copyAllIdentitiesWithError:a4 usingBlock:v11];
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 count];
    v8 = v13[3];
    *buf = 134218498;
    v17 = v7;
    v18 = 2048;
    v19 = v8;
    v20 = 2112;
    v21 = a3;
    _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_INFO, "#SMIMEErrors Found %lu (out of %lu) matching encryption identities for %@", buf, 0x20u);
  }

  _Block_object_dispose(&v12, 8);
  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)_copyAllIdentitiesWithError:(id *)a3 usingBlock:(id)a4
{
  v12 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__MFMessageKeychainManager__copyAllIdentitiesWithError_usingBlock___block_invoke;
  v11[3] = &unk_1E7AA7C00;
  v11[4] = a4;
  v6 = [a1 _addAllIdentitiesToArray:&v12 fromSyncableKeychain:0 withError:a3 usingBlock:v11];
  if (v6)
  {
    v9[4] = a4;
    v10 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__MFMessageKeychainManager__copyAllIdentitiesWithError_usingBlock___block_invoke_2;
    v9[3] = &unk_1E7AA7C00;
    if (([a1 _addAllIdentitiesToArray:&v12 fromSyncableKeychain:1 withError:&v10 usingBlock:v9] & 1) == 0)
    {
      v7 = MFLogGeneral();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [MFMessageKeychainManager _copyAllIdentitiesWithError:v7 usingBlock:?];
      }
    }
  }

  if (v6)
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)_addAllIdentitiesToArray:(id *)a3 fromSyncableKeychain:(BOOL)a4 withError:(id *)a5 usingBlock:(id)a6
{
  keys[5] = *MEMORY[0x1E69E9840];
  v9 = @"com.apple.identities";
  v10 = *MEMORY[0x1E697B260];
  if (a4)
  {
    v9 = @"com.apple.mail.identities";
  }

  keys[0] = *MEMORY[0x1E697AFF8];
  keys[1] = v10;
  v11 = *MEMORY[0x1E697B328];
  keys[2] = *MEMORY[0x1E697AEB0];
  keys[3] = v11;
  keys[4] = *MEMORY[0x1E697ABD0];
  v12 = *MEMORY[0x1E697B268];
  values[0] = *MEMORY[0x1E697B010];
  values[1] = v12;
  v13 = *MEMORY[0x1E695E4D0];
  v14 = *MEMORY[0x1E695E4C0];
  if (a4)
  {
    v14 = *MEMORY[0x1E695E4D0];
  }

  values[2] = v14;
  values[3] = v13;
  values[4] = v9;
  v15 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  result = 0;
  v16 = SecItemCopyMatching(v15, &result);
  CFRelease(v15);
  if (v16 != -25300 && v16)
  {
    v22 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v16 userInfo:0];
    if (a5)
    {
      *a5 = v22;
    }

    if (result)
    {
      CFRelease(result);
    }

    v23 = MFLogGeneral();
    v20 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
    if (v20)
    {
      *buf = 134217984;
      v27 = v16;
      _os_log_impl(&dword_1B0389000, v23, OS_LOG_TYPE_INFO, "#SMIMEErrors SecItemCopyMatching returned %ld", buf, 0xCu);
      LOBYTE(v20) = 0;
    }
  }

  else
  {
    if (result)
    {
      Count = CFArrayGetCount(result);
      if (!*a3)
      {
        *a3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
      }

      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(result, i);
          if (!a6 || (*(a6 + 2))(a6, ValueAtIndex))
          {
            [*a3 addObject:ValueAtIndex];
          }
        }
      }

      CFRelease(result);
    }

    LOBYTE(v20) = 1;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (BOOL)validateSigningIdentity:(__SecIdentity *)a3 forAddress:(id)a4 error:(id *)a5
{
  v9 = [a1 copySMIMESigningPolicyForAddress:a4];
  LOBYTE(a5) = [a1 _validateIdentity:a3 forAddress:a4 policy:v9 usage:1 error:a5];
  CFRelease(v9);
  return a5;
}

+ (BOOL)validateEncryptionIdentity:(__SecIdentity *)a3 forAddress:(id)a4 error:(id *)a5
{
  v9 = [a1 copySMIMEEncryptionPolicyForAddress:a4];
  LOBYTE(a5) = [a1 _validateIdentity:a3 forAddress:a4 policy:v9 usage:20 error:a5];
  CFRelease(v9);
  return a5;
}

+ (BOOL)_validateIdentity:(__SecIdentity *)a3 forAddress:(id)a4 policy:(__SecPolicy *)a5 usage:(unsigned int)a6 error:(id *)a7
{
  v12 = [a1 newTrustManager];
  v13 = [objc_msgSend(a4 "emailAddressValue")];
  if (!v13)
  {
    v13 = [a4 stringValue];
  }

  certificateRef = 0;
  v14 = SecIdentityCopyCertificate(a3, &certificateRef);
  if (certificateRef)
  {
    cf = 0;
    v15 = SecTrustCreateWithCertificates(certificateRef, a5, &cf);
    if (!cf)
    {
      if (!v15 || a7 && *a7 || (v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v15 userInfo:0], !a7))
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        *a7 = v18;
      }

      goto LABEL_26;
    }

    if ([v12 actionForSMIMETrust:cf sender:v13] && (SecCertificateGetKeyUsage() & a6) != 0)
    {
      v16 = 1;
LABEL_25:
      CFRelease(cf);
LABEL_26:
      CFRelease(certificateRef);
      goto LABEL_27;
    }

    if (a7)
    {
      if (!*a7)
      {
        v16 = 0;
        *a7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MFMessageKeychainManagerCertificateDeniedDomain" code:0 userInfo:0];
        goto LABEL_25;
      }
    }

    else
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"MFMessageKeychainManagerCertificateDeniedDomain" code:0 userInfo:0];
    }

    v16 = 0;
    goto LABEL_25;
  }

  if (!v14 || a7 && *a7 || (v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v14 userInfo:0], !a7))
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    *a7 = v17;
  }

LABEL_27:

  return v16;
}

+ (__SecCertificate)copyEncryptionCertificateForAddress:(id)a3 error:(id *)a4
{
  keys[4] = *MEMORY[0x1E69E9840];
  cf = 0;
  v6 = [objc_msgSend(a3 "emailAddressValue")];
  if (!v6)
  {
    v6 = [a3 stringValue];
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"S/MIME Encryption for %@", v6];
  v8 = *MEMORY[0x1E697AFF8];
  v9 = *MEMORY[0x1E697AC30];
  keys[0] = *MEMORY[0x1E697AFF8];
  keys[1] = v9;
  v10 = *MEMORY[0x1E697ABD0];
  keys[2] = *MEMORY[0x1E697B318];
  keys[3] = v10;
  values[0] = *MEMORY[0x1E697B008];
  values[1] = v7;
  v11 = *MEMORY[0x1E695E4D0];
  values[2] = *MEMORY[0x1E695E4D0];
  values[3] = @"com.apple.mobilemail.smime";
  v12 = *MEMORY[0x1E695E480];
  v13 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);

  result = 0;
  v14 = SecItemCopyMatching(v13, &result);
  if (result)
  {
    v15 = *MEMORY[0x1E697B3C8];
    *v34 = v8;
    *&v34[8] = v15;
    *&v34[16] = *MEMORY[0x1E697B328];
    v33[0] = *MEMORY[0x1E697B000];
    v33[1] = result;
    v33[2] = v11;
    v16 = CFDictionaryCreate(v12, v34, v33, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(result);
    v17 = SecItemCopyMatching(v16, &cf);
    CFRelease(v16);
    if (v17)
    {
      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v17 userInfo:0];
      if (a4)
      {
        *a4 = v18;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    else if (cf)
    {
      goto LABEL_17;
    }

    SecItemDelete(v13);
LABEL_17:
    v21 = MFLogGeneral();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v24 = "a";
      if (!cf)
      {
        v24 = "no";
      }

      *buf = 136315394;
      v30 = v24;
      v31 = 2112;
      v32 = v6;
      v22 = "#SMIMEErrors Found %s certificate for %@.";
      v23 = buf;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v19 = v14;
  if (v14 != -25300)
  {
    if (v14)
    {
      v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v14 userInfo:0];
      if (a4)
      {
        *a4 = v20;
      }
    }
  }

  v21 = MFLogGeneral();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *v34 = 138412546;
    *&v34[4] = v6;
    *&v34[12] = 2048;
    *&v34[14] = v19;
    v22 = "#SMIMEErrors Found no certificates for %@ (%ld)";
    v23 = v34;
LABEL_21:
    _os_log_impl(&dword_1B0389000, v21, OS_LOG_TYPE_INFO, v22, v23, 0x16u);
  }

LABEL_22:
  CFRelease(v13);
  v25 = cf;
  if (a4 && cf && *a4)
  {
    *a4 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

+ (id)_addCertificate:(__SecCertificate *)a3 persistent:(id *)a4
{
  keys[4] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E697B3D0];
  keys[0] = *MEMORY[0x1E697AFF8];
  keys[1] = v5;
  v6 = *MEMORY[0x1E697ABD0];
  keys[2] = *MEMORY[0x1E697B320];
  keys[3] = v6;
  values[0] = *MEMORY[0x1E697B000];
  values[1] = a3;
  values[2] = *MEMORY[0x1E695E4D0];
  values[3] = @"com.apple.mobilemail.smime";
  v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v8 = SecItemAdd(v7, a4);
  if (v8 == -25299)
  {
    v8 = SecItemCopyMatching(v7, a4);
  }

  CFRelease(v7);
  if (!v8)
  {
    v9 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v8 userInfo:0];
  if (a4)
  {
LABEL_5:
    v10 = *a4;
  }

LABEL_6:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (__SecCertificate)_copyCertificateForPersistent:(id)a3 error:(id *)a4
{
  keys[3] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E697B3C8];
  keys[0] = *MEMORY[0x1E697AFF8];
  keys[1] = v5;
  keys[2] = *MEMORY[0x1E697B328];
  values[0] = *MEMORY[0x1E697B000];
  values[1] = a3;
  values[2] = *MEMORY[0x1E695E4D0];
  v6 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = 0;
  v7 = SecItemCopyMatching(v6, &v12);
  CFRelease(v6);
  if (a4)
  {
    if (v7 == -25300 || v7 == 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v7 userInfo:0];
    }

    *a4 = v9;
  }

  result = v12;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)_addPersistentMapping:(id)a3 forAddress:(id)a4
{
  keys[4] = *MEMORY[0x1E69E9840];
  v18 = a3;
  v6 = [objc_msgSend(a4 "emailAddressValue")];
  if (!v6)
  {
    v6 = [a4 stringValue];
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"S/MIME Encryption for %@", v6];
  v8 = *MEMORY[0x1E697AC30];
  keys[0] = *MEMORY[0x1E697AFF8];
  keys[1] = v8;
  v9 = *MEMORY[0x1E697B3C0];
  v10 = *MEMORY[0x1E697ABD0];
  keys[2] = *MEMORY[0x1E697B3C0];
  keys[3] = v10;
  values[0] = *MEMORY[0x1E697B008];
  values[1] = v7;
  values[2] = a3;
  values[3] = @"com.apple.mobilemail.smime";
  v11 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);

  v12 = SecItemAdd(v11, 0);
  if (v12 == -25299)
  {
    v13 = [(__CFDictionary *)v11 mutableCopy];
    [v13 removeObjectForKey:v9];
    v14 = objc_alloc(MEMORY[0x1E695DF20]);
    v15 = [v14 initWithObjects:&v18 forKeys:MEMORY[0x1E697B3C0] count:1];
    v12 = SecItemUpdate(v13, v15);
  }

  CFRelease(v11);
  if (v12)
  {
    result = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v12 userInfo:0];
  }

  else
  {
    result = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)_removeCertificateForPersistent:(id)a3
{
  keys[4] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E697AFF8];
  v5 = *MEMORY[0x1E697B318];
  keys[0] = *MEMORY[0x1E697AFF8];
  keys[1] = v5;
  v6 = *MEMORY[0x1E697ABD0];
  keys[2] = *MEMORY[0x1E697B260];
  keys[3] = v6;
  v7 = *MEMORY[0x1E695E4D0];
  values[0] = *MEMORY[0x1E697B008];
  values[1] = v7;
  values[2] = *MEMORY[0x1E697B268];
  values[3] = @"com.apple.mobilemail.smime";
  v8 = *MEMORY[0x1E695E480];
  v9 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  theArray = 0;
  v10 = SecItemCopyMatching(v9, &theArray);
  CFRelease(v9);
  if (v10 != -25300 && v10)
  {
    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A768];
    v21 = v10;
  }

  else
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count)
      {
        v12 = Count;
        v13 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
          if (CFEqual(ValueAtIndex, a3))
          {
            break;
          }

          if (v12 == ++v13)
          {
            goto LABEL_8;
          }
        }

        CFRelease(theArray);
        goto LABEL_17;
      }

LABEL_8:
      CFRelease(theArray);
    }

    v15 = *MEMORY[0x1E697B3C8];
    v26[0] = v4;
    v26[1] = v15;
    v25[0] = *MEMORY[0x1E697B000];
    v25[1] = a3;
    v16 = CFDictionaryCreate(v8, v26, v25, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v17 = SecItemDelete(v16);
    CFRelease(v16);
    if (v17 == -25300 || v17 == 0)
    {
LABEL_17:
      result = 0;
      goto LABEL_18;
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A768];
    v21 = v17;
  }

  result = [v19 errorWithDomain:v20 code:v21 userInfo:0];
LABEL_18:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)saveEncryptionCertificate:(__SecCertificate *)a3 forAddress:(id)a4
{
  keys[4] = *MEMORY[0x1E69E9840];
  v25 = 0;
  v7 = [objc_msgSend(a4 "emailAddressValue")];
  if (!v7)
  {
    v7 = [a4 stringValue];
  }

  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"S/MIME Encryption for %@", v7];
  v9 = *MEMORY[0x1E697AC30];
  keys[0] = *MEMORY[0x1E697AFF8];
  keys[1] = v9;
  v10 = *MEMORY[0x1E697ABD0];
  keys[2] = *MEMORY[0x1E697B318];
  keys[3] = v10;
  values[0] = *MEMORY[0x1E697B008];
  values[1] = v8;
  values[2] = *MEMORY[0x1E695E4D0];
  values[3] = @"com.apple.mobilemail.smime";
  v11 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);

  result = 0;
  v12 = SecItemCopyMatching(v11, &result);
  if (v12 != -25300 && v12)
  {
    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v12 userInfo:0];
    goto LABEL_24;
  }

  if (a3)
  {
    if (!result)
    {
      v17 = 0;
      v18 = 1;
      goto LABEL_18;
    }

    v13 = [a1 _copyCertificateForPersistent:result error:&v25];
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = v13;
    SHA1Digest = SecCertificateGetSHA1Digest();
    v16 = SecCertificateGetSHA1Digest();
    LODWORD(SHA1Digest) = CFEqual(SHA1Digest, v16) == 0;
    CFRelease(v14);
    v17 = v25;
    v18 = SHA1Digest;
    if (!SHA1Digest)
    {
LABEL_18:
      if (!v18)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  if (v17)
  {
    goto LABEL_18;
  }

  v19 = SecItemDelete(v11);
  if (v19 && v19 != -25300)
  {
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v19 userInfo:0];
    v25 = v17;
    if (!v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
    [a1 _removeCertificateForPersistent:result];
    v17 = v25;
    if (!v18)
    {
      goto LABEL_24;
    }
  }

LABEL_19:
  if (!v17)
  {
    v25 = [a1 _addCertificate:a3 persistent:&result];
    if (!v25)
    {
      v25 = [a1 _addPersistentMapping:result forAddress:v7];
      if (v25)
      {
        [a1 _removeCertificateForPersistent:result];
      }
    }
  }

LABEL_24:
  CFRelease(v11);
  if (v25)
  {
    v20 = MFLogGeneral();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    v22 = v25;
    if (v21)
    {
      *buf = 138412546;
      v27 = v7;
      v28 = 2112;
      v29 = v25;
      _os_log_error_impl(&dword_1B0389000, v20, OS_LOG_TYPE_ERROR, "#SMIMEErrors Error saving encryption certificate for %@: %@", buf, 0x16u);
      v22 = v25;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

+ (id)newTrustManager
{
  v2 = objc_alloc(MEMORY[0x1E6993C28]);

  return [v2 initWithAccessGroup:@"com.apple.mobilemail.smime"];
}

+ (void)_copyAllIdentitiesWithError:(id *)a1 usingBlock:(NSObject *)a2 .cold.1(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [*a1 ef_publicDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "#SMIMEErrors Error getting identities from syncable keychain: %@", &v5, 0xCu);
  v4 = *MEMORY[0x1E69E9840];
}

@end