@interface MFMessageKeychainManager
+ (BOOL)_addAllIdentitiesToArray:(id *)array fromSyncableKeychain:(BOOL)keychain withError:(id *)error usingBlock:(id)block;
+ (BOOL)_matchSSLClientIdentity:(__SecIdentity *)identity withHostname:(id)hostname;
+ (BOOL)_validateIdentity:(__SecIdentity *)identity forAddress:(id)address policy:(__SecPolicy *)policy usage:(unsigned int)usage error:(id *)error;
+ (BOOL)validateEncryptionIdentity:(__SecIdentity *)identity forAddress:(id)address error:(id *)error;
+ (BOOL)validateSigningIdentity:(__SecIdentity *)identity forAddress:(id)address error:(id *)error;
+ (__SecCertificate)_copyCertificateForPersistent:(id)persistent error:(id *)error;
+ (__SecCertificate)copyEncryptionCertificateForAddress:(id)address error:(id *)error;
+ (__SecIdentity)copyClientSSLIdentityForHostName:(id)name error:(id *)error;
+ (__SecIdentity)copyIdentityForPersistentReference:(id)reference error:(id *)error;
+ (__SecPolicy)copySMIMEEncryptionPolicyForAddress:(id)address;
+ (__SecPolicy)copySMIMESigningPolicyForAddress:(id)address;
+ (id)_addCertificate:(__SecCertificate *)certificate persistent:(id *)persistent;
+ (id)_addPersistentMapping:(id)mapping forAddress:(id)address;
+ (id)_copyAllIdentitiesWithError:(id *)error usingBlock:(id)block;
+ (id)_passwordForGenericAccount:(id)account service:(id)service error:(id *)error;
+ (id)_passwordForHost:(id)host username:(id)username port:(int)port keychainProtocol:(__CFString *)protocol;
+ (id)_removeCertificateForPersistent:(id)persistent;
+ (id)copyAllEncryptionIdentitiesForAddress:(id)address error:(id *)error;
+ (id)copyAllSigningIdentitiesForAddress:(id)address error:(id *)error;
+ (id)newTrustManager;
+ (id)persistentReferenceForIdentity:(__SecIdentity *)identity error:(id *)error;
+ (id)saveEncryptionCertificate:(__SecCertificate *)certificate forAddress:(id)address;
+ (void)initialize;
+ (void)removePasswordForHost:(id)host username:(id)username port:(int)port keychainProtocol:(void *)protocol;
+ (void)removePasswordForServiceName:(id)name accountName:(id)accountName;
+ (void)setPassword:(id)password forHost:(id)host username:(id)username port:(int)port keychainProtocol:(void *)protocol keychainAccessibility:(void *)accessibility;
+ (void)setPassword:(id)password forServiceName:(id)name accountName:(id)accountName keychainAccessibility:(void *)accessibility;
@end

@implementation MFMessageKeychainManager

+ (void)initialize
{
  if (!sKeychainLock)
  {
    sKeychainLock = [objc_alloc(MEMORY[0x1E69AD6D8]) initWithName:@"keychainLock" andDelegate:0];
  }
}

+ (id)_passwordForHost:(id)host username:(id)username port:(int)port keychainProtocol:(__CFString *)protocol
{
  valuePtr = port;
  if ([host length] && objc_msgSend(username, "length"))
  {
    v9 = *MEMORY[0x1E695E480];
    v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    Mutable = CFDictionaryCreateMutable(v9, 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE80], host);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ADF8], v10);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE00], protocol);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], username);
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

+ (void)setPassword:(id)password forHost:(id)host username:(id)username port:(int)port keychainProtocol:(void *)protocol keychainAccessibility:(void *)accessibility
{
  valuePtr = port;
  [sKeychainLock mf_waitForLock];
  v14 = *MEMORY[0x1E695E480];
  v15 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (v15)
  {
    v16 = v15;
    if ([host length])
    {
      if ([username length])
      {
        if ([password length])
        {
          v17 = [password dataUsingEncoding:4];
          if (v17)
          {
            v18 = v17;
            v25 = [self _passwordForHost:host username:username port:valuePtr keychainProtocol:protocol];
            Mutable = CFDictionaryCreateMutable(v14, 0, 0, 0);
            if (Mutable)
            {
              v20 = Mutable;
              CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
              CFDictionaryAddValue(v20, *MEMORY[0x1E697AE80], host);
              CFDictionaryAddValue(v20, *MEMORY[0x1E697ADF8], v16);
              CFDictionaryAddValue(v20, *MEMORY[0x1E697AE00], protocol);
              CFDictionaryAddValue(v20, *MEMORY[0x1E697AC30], username);
              v21 = *MEMORY[0x1E697AEB0];
              v22 = *MEMORY[0x1E695E4D0];
              CFDictionaryAddValue(v20, *MEMORY[0x1E697AEB0], *MEMORY[0x1E695E4D0]);
              if (v25)
              {
                if (([v25 isEqualToString:password] & 1) == 0)
                {
                  v23 = CFDictionaryCreateMutable(v14, 0, 0, 0);
                  if (v23)
                  {
                    v24 = v23;
                    CFDictionaryAddValue(v23, *MEMORY[0x1E697B3C0], v18);
                    CFDictionaryAddValue(v24, *MEMORY[0x1E697ABD8], accessibility);
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
                CFDictionaryAddValue(v20, *MEMORY[0x1E697ABD8], accessibility);
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

+ (void)removePasswordForHost:(id)host username:(id)username port:(int)port keychainProtocol:(void *)protocol
{
  valuePtr = port;
  [sKeychainLock mf_waitForLock];
  if ([host length] && objc_msgSend(username, "length"))
  {
    v9 = *MEMORY[0x1E695E480];
    v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    Mutable = CFDictionaryCreateMutable(v9, 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE80], host);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ADF8], v10);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE00], protocol);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], username);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AEB0], *MEMORY[0x1E695E4D0]);
    SecItemDelete(Mutable);
    CFRelease(v10);
    CFRelease(Mutable);
  }

  [sKeychainLock unlock];
}

+ (id)_passwordForGenericAccount:(id)account service:(id)service error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  if ([account length] && objc_msgSend(service, "length"))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], account);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], service);
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

        if (!error)
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
        if (!error)
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
      if (!error)
      {
        goto LABEL_20;
      }

      v14 = 0;
    }

    *error = v14;
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

+ (void)setPassword:(id)password forServiceName:(id)name accountName:(id)accountName keychainAccessibility:(void *)accessibility
{
  v29 = *MEMORY[0x1E69E9840];
  [sKeychainLock mf_waitForLock];
  if ([name length] && objc_msgSend(password, "length") && objc_msgSend(accountName, "length"))
  {
    v11 = [password dataUsingEncoding:4];
    v12 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], accountName);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], name);
    v14 = *MEMORY[0x1E697AEB0];
    v15 = *MEMORY[0x1E695E4D0];
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AEB0], *MEMORY[0x1E695E4D0]);
    v16 = [self _passwordForGenericAccount:accountName service:name error:0];
    if (v16)
    {
      if ([v16 isEqualToString:password])
      {
        goto LABEL_15;
      }

      v17 = CFDictionaryCreateMutable(v12, 0, 0, 0);
      CFDictionaryAddValue(v17, *MEMORY[0x1E697B3C0], v11);
      CFDictionaryAddValue(v17, *MEMORY[0x1E697ABD8], accessibility);
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
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD8], accessibility);
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

+ (void)removePasswordForServiceName:(id)name accountName:(id)accountName
{
  v13 = *MEMORY[0x1E69E9840];
  [sKeychainLock mf_waitForLock];
  if ([name length] && objc_msgSend(accountName, "length"))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], accountName);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], name);
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

+ (__SecPolicy)copySMIMESigningPolicyForAddress:(id)address
{
  stringValue = [objc_msgSend(address "emailAddressValue")];
  if (!stringValue)
  {
    stringValue = [address stringValue];
  }

  return MEMORY[0x1EEDD83A8](1, stringValue);
}

+ (__SecPolicy)copySMIMEEncryptionPolicyForAddress:(id)address
{
  stringValue = [objc_msgSend(address "emailAddressValue")];
  if (!stringValue)
  {
    stringValue = [address stringValue];
  }

  return MEMORY[0x1EEDD83A8](30, stringValue);
}

+ (__SecIdentity)copyIdentityForPersistentReference:(id)reference error:(id *)error
{
  keys[3] = *MEMORY[0x1E69E9840];
  if (error)
  {
    *error = 0;
  }

  cf = 0;
  if (!reference)
  {
    goto LABEL_9;
  }

  v5 = *MEMORY[0x1E697B3C8];
  keys[0] = *MEMORY[0x1E697AFF8];
  keys[1] = v5;
  keys[2] = *MEMORY[0x1E697B328];
  values[0] = *MEMORY[0x1E697B010];
  values[1] = reference;
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
  if (error)
  {
    *error = v8;
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

+ (id)persistentReferenceForIdentity:(__SecIdentity *)identity error:(id *)error
{
  keys[4] = *MEMORY[0x1E69E9840];
  if (error)
  {
    *error = 0;
  }

  v13 = 0;
  if (identity)
  {
    v5 = *MEMORY[0x1E697B3D0];
    keys[0] = *MEMORY[0x1E697AFF8];
    keys[1] = v5;
    v6 = *MEMORY[0x1E697ABD0];
    keys[2] = *MEMORY[0x1E697B320];
    keys[3] = v6;
    values[0] = *MEMORY[0x1E697B010];
    values[1] = identity;
    values[2] = *MEMORY[0x1E695E4D0];
    values[3] = @"com.apple.identities";
    v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v8 = SecItemCopyMatching(v7, &v13);
    CFRelease(v7);
    if (v8)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v8 userInfo:0];
      if (error)
      {
        *error = v9;
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

+ (BOOL)_matchSSLClientIdentity:(__SecIdentity *)identity withHostname:(id)hostname
{
  certificateRef = 0xAAAAAAAAAAAAAAAALL;
  if (SecIdentityCopyCertificate(identity, &certificateRef) || (v6 = SecCertificateCopyProperties(), CFRelease(certificateRef), !v6))
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
      theString = hostname;
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

+ (__SecIdentity)copyClientSSLIdentityForHostName:(id)name error:(id *)error
{
  keys[4] = *MEMORY[0x1E69E9840];
  if (error)
  {
    *error = 0;
  }

  if (!name)
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
    if (error)
    {
      *error = v11;
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
      if ([self _matchSSLClientIdentity:ValueAtIndex withHostname:name])
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

+ (id)copyAllSigningIdentitiesForAddress:(id)address error:(id *)error
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
  v11[5] = address;
  v11[6] = &v12;
  v11[4] = self;
  v5 = [self _copyAllIdentitiesWithError:error usingBlock:v11];
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
    addressCopy = address;
    _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_INFO, "#SMIMEErrors Found %lu (out of %lu) matching signing identities for %@", buf, 0x20u);
  }

  _Block_object_dispose(&v12, 8);
  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)copyAllEncryptionIdentitiesForAddress:(id)address error:(id *)error
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
  v11[5] = address;
  v11[6] = &v12;
  v11[4] = self;
  v5 = [self _copyAllIdentitiesWithError:error usingBlock:v11];
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
    addressCopy = address;
    _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_INFO, "#SMIMEErrors Found %lu (out of %lu) matching encryption identities for %@", buf, 0x20u);
  }

  _Block_object_dispose(&v12, 8);
  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)_copyAllIdentitiesWithError:(id *)error usingBlock:(id)block
{
  v12 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__MFMessageKeychainManager__copyAllIdentitiesWithError_usingBlock___block_invoke;
  v11[3] = &unk_1E7AA7C00;
  v11[4] = block;
  v6 = [self _addAllIdentitiesToArray:&v12 fromSyncableKeychain:0 withError:error usingBlock:v11];
  if (v6)
  {
    v9[4] = block;
    v10 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__MFMessageKeychainManager__copyAllIdentitiesWithError_usingBlock___block_invoke_2;
    v9[3] = &unk_1E7AA7C00;
    if (([self _addAllIdentitiesToArray:&v12 fromSyncableKeychain:1 withError:&v10 usingBlock:v9] & 1) == 0)
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

+ (BOOL)_addAllIdentitiesToArray:(id *)array fromSyncableKeychain:(BOOL)keychain withError:(id *)error usingBlock:(id)block
{
  keys[5] = *MEMORY[0x1E69E9840];
  v9 = @"com.apple.identities";
  v10 = *MEMORY[0x1E697B260];
  if (keychain)
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
  if (keychain)
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
    if (error)
    {
      *error = v22;
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
      if (!*array)
      {
        *array = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
      }

      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(result, i);
          if (!block || (*(block + 2))(block, ValueAtIndex))
          {
            [*array addObject:ValueAtIndex];
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

+ (BOOL)validateSigningIdentity:(__SecIdentity *)identity forAddress:(id)address error:(id *)error
{
  v9 = [self copySMIMESigningPolicyForAddress:address];
  LOBYTE(error) = [self _validateIdentity:identity forAddress:address policy:v9 usage:1 error:error];
  CFRelease(v9);
  return error;
}

+ (BOOL)validateEncryptionIdentity:(__SecIdentity *)identity forAddress:(id)address error:(id *)error
{
  v9 = [self copySMIMEEncryptionPolicyForAddress:address];
  LOBYTE(error) = [self _validateIdentity:identity forAddress:address policy:v9 usage:20 error:error];
  CFRelease(v9);
  return error;
}

+ (BOOL)_validateIdentity:(__SecIdentity *)identity forAddress:(id)address policy:(__SecPolicy *)policy usage:(unsigned int)usage error:(id *)error
{
  newTrustManager = [self newTrustManager];
  stringValue = [objc_msgSend(address "emailAddressValue")];
  if (!stringValue)
  {
    stringValue = [address stringValue];
  }

  certificateRef = 0;
  v14 = SecIdentityCopyCertificate(identity, &certificateRef);
  if (certificateRef)
  {
    cf = 0;
    v15 = SecTrustCreateWithCertificates(certificateRef, policy, &cf);
    if (!cf)
    {
      if (!v15 || error && *error || (v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v15 userInfo:0], !error))
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        *error = v18;
      }

      goto LABEL_26;
    }

    if ([newTrustManager actionForSMIMETrust:cf sender:stringValue] && (SecCertificateGetKeyUsage() & usage) != 0)
    {
      v16 = 1;
LABEL_25:
      CFRelease(cf);
LABEL_26:
      CFRelease(certificateRef);
      goto LABEL_27;
    }

    if (error)
    {
      if (!*error)
      {
        v16 = 0;
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"MFMessageKeychainManagerCertificateDeniedDomain" code:0 userInfo:0];
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

  if (!v14 || error && *error || (v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v14 userInfo:0], !error))
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    *error = v17;
  }

LABEL_27:

  return v16;
}

+ (__SecCertificate)copyEncryptionCertificateForAddress:(id)address error:(id *)error
{
  keys[4] = *MEMORY[0x1E69E9840];
  cf = 0;
  stringValue = [objc_msgSend(address "emailAddressValue")];
  if (!stringValue)
  {
    stringValue = [address stringValue];
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"S/MIME Encryption for %@", stringValue];
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
      if (error)
      {
        *error = v18;
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
      v32 = stringValue;
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
      if (error)
      {
        *error = v20;
      }
    }
  }

  v21 = MFLogGeneral();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *v34 = 138412546;
    *&v34[4] = stringValue;
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
  if (error && cf && *error)
  {
    *error = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

+ (id)_addCertificate:(__SecCertificate *)certificate persistent:(id *)persistent
{
  keys[4] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E697B3D0];
  keys[0] = *MEMORY[0x1E697AFF8];
  keys[1] = v5;
  v6 = *MEMORY[0x1E697ABD0];
  keys[2] = *MEMORY[0x1E697B320];
  keys[3] = v6;
  values[0] = *MEMORY[0x1E697B000];
  values[1] = certificate;
  values[2] = *MEMORY[0x1E695E4D0];
  values[3] = @"com.apple.mobilemail.smime";
  v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v8 = SecItemAdd(v7, persistent);
  if (v8 == -25299)
  {
    v8 = SecItemCopyMatching(v7, persistent);
  }

  CFRelease(v7);
  if (!v8)
  {
    v9 = 0;
    if (!persistent)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v8 userInfo:0];
  if (persistent)
  {
LABEL_5:
    v10 = *persistent;
  }

LABEL_6:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (__SecCertificate)_copyCertificateForPersistent:(id)persistent error:(id *)error
{
  keys[3] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E697B3C8];
  keys[0] = *MEMORY[0x1E697AFF8];
  keys[1] = v5;
  keys[2] = *MEMORY[0x1E697B328];
  values[0] = *MEMORY[0x1E697B000];
  values[1] = persistent;
  values[2] = *MEMORY[0x1E695E4D0];
  v6 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = 0;
  v7 = SecItemCopyMatching(v6, &v12);
  CFRelease(v6);
  if (error)
  {
    if (v7 == -25300 || v7 == 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v7 userInfo:0];
    }

    *error = v9;
  }

  result = v12;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)_addPersistentMapping:(id)mapping forAddress:(id)address
{
  keys[4] = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  stringValue = [objc_msgSend(address "emailAddressValue")];
  if (!stringValue)
  {
    stringValue = [address stringValue];
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"S/MIME Encryption for %@", stringValue];
  v8 = *MEMORY[0x1E697AC30];
  keys[0] = *MEMORY[0x1E697AFF8];
  keys[1] = v8;
  v9 = *MEMORY[0x1E697B3C0];
  v10 = *MEMORY[0x1E697ABD0];
  keys[2] = *MEMORY[0x1E697B3C0];
  keys[3] = v10;
  values[0] = *MEMORY[0x1E697B008];
  values[1] = v7;
  values[2] = mapping;
  values[3] = @"com.apple.mobilemail.smime";
  v11 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);

  v12 = SecItemAdd(v11, 0);
  if (v12 == -25299)
  {
    v13 = [(__CFDictionary *)v11 mutableCopy];
    [v13 removeObjectForKey:v9];
    v14 = objc_alloc(MEMORY[0x1E695DF20]);
    v15 = [v14 initWithObjects:&mappingCopy forKeys:MEMORY[0x1E697B3C0] count:1];
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

+ (id)_removeCertificateForPersistent:(id)persistent
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
          if (CFEqual(ValueAtIndex, persistent))
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
    v25[1] = persistent;
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

+ (id)saveEncryptionCertificate:(__SecCertificate *)certificate forAddress:(id)address
{
  keys[4] = *MEMORY[0x1E69E9840];
  v25 = 0;
  stringValue = [objc_msgSend(address "emailAddressValue")];
  if (!stringValue)
  {
    stringValue = [address stringValue];
  }

  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"S/MIME Encryption for %@", stringValue];
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

  if (certificate)
  {
    if (!result)
    {
      v17 = 0;
      v18 = 1;
      goto LABEL_18;
    }

    v13 = [self _copyCertificateForPersistent:result error:&v25];
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
    [self _removeCertificateForPersistent:result];
    v17 = v25;
    if (!v18)
    {
      goto LABEL_24;
    }
  }

LABEL_19:
  if (!v17)
  {
    v25 = [self _addCertificate:certificate persistent:&result];
    if (!v25)
    {
      v25 = [self _addPersistentMapping:result forAddress:stringValue];
      if (v25)
      {
        [self _removeCertificateForPersistent:result];
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
      v27 = stringValue;
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