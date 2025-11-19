@interface NPUtilities
+ (BOOL)compareAddressEndpoints:(id)a3 endpoint2:(id)a4 addressOnly:(BOOL)a5;
+ (BOOL)hasPacketDrop:(id)a3;
+ (BOOL)printDictionaryAsJson:(id)a3 debugName:(id)a4;
+ (BOOL)rollDiceWithSuccessRatio:(id)a3;
+ (__SecKey)copyKeyFromKeychainWithIdentifier:(id)a3;
+ (id)connectionInfoToDict:(id)a3 dictionary:(id)a4;
+ (id)copyBase64HeaderValueFromData:(id)a3;
+ (id)copyCurrentNetworkCharacteristicsForPath:(id)a3;
+ (id)copyDataFromKeychainWithIdentifier:(id)a3 accountName:(id)a4;
+ (id)copyDataHexString:(id)a3;
+ (id)copyItemIdentifiersFromKeychainWithAccountName:(id)a3;
+ (id)copyNetworkDescription:(id)a3;
+ (id)copyTrueClientIPAddressFromPreferences;
+ (id)copyUUIDsForSigningIdentifier:(id)a3 executablePath:(id)a4;
+ (id)createAddressStringFromBuffer:(unint64_t)a3 addressLen:(uint64_t)a4 family:;
+ (id)createMaskedIPv4Address:(id)a3 prefix:(unint64_t)a4;
+ (id)createMaskedIPv6Address:(id)a3 prefix:(unint64_t)a4;
+ (id)endpointFromString:(id)a3 defaultPortString:(id)a4;
+ (id)getInterfaceName:(int64_t)a3;
+ (id)getInterfaceTypeString:(int64_t)a3;
+ (id)hexDumpBytes:(const void *)a3 length:(unint64_t)a4;
+ (id)machoUUIDFromPID:(int)a3;
+ (id)mergeHTTPHeaders:(id)a3 headerOverrides:(id)a4;
+ (id)parseXHost:(id)a3;
+ (id)sharedEmphemeralSession;
+ (id)stripWhitespace:(id)a3;
+ (id)timestampIdentifierToName:(unint64_t)a3;
+ (int64_t)certificateDateIsValid:(__SecCertificate *)a3;
+ (int64_t)interfaceTypeOfInterface:(id)a3;
+ (int64_t)interfaceTypeOfNWInterface:(id)a3;
+ (int64_t)protocolTypeFromPath:(id)a3 endpoint:(id)a4;
+ (unint64_t)parseXRTT:(id)a3;
+ (unint64_t)totalDataInKeychainWithIdentifier:(id)a3;
+ (void)parseXTimeout:(id)a3 hardTTLInSeconds:(double *)a4;
+ (void)postNotification:(id)a3 value:(unint64_t)a4;
+ (void)removeDataFromKeychainWithIdentifier:(id)a3;
+ (void)removeDataFromKeychainWithIdentifier:(id)a3 accountName:(id)a4;
+ (void)removeKeyFromKeychainWithIdentifier:(id)a3;
+ (void)saveDataToKeychain:(id)a3 withIdentifier:(id)a4 accountName:(id)a5;
+ (void)saveKeyToKeychain:(__SecKey *)a3 withIdentifier:(id)a4;
@end

@implementation NPUtilities

+ (id)sharedEmphemeralSession
{
  if (qword_1ED4BF5B8 != -1)
  {
    dispatch_once(&qword_1ED4BF5B8, &__block_literal_global_0);
  }

  v3 = _MergedGlobals_24;

  return v3;
}

void __38__NPUtilities_sharedEmphemeralSession__block_invoke()
{
  v0 = MEMORY[0x1E696AF78];
  v3 = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
  v1 = [v0 sessionWithConfiguration:v3];
  v2 = _MergedGlobals_24;
  _MergedGlobals_24 = v1;
}

+ (id)copyDataFromKeychainWithIdentifier:(id)a3 accountName:(id)a4
{
  v23[5] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x1E697B008];
  v8 = *MEMORY[0x1E697AE88];
  v22[0] = *MEMORY[0x1E697AFF8];
  v22[1] = v8;
  v23[0] = v7;
  v23[1] = v5;
  v9 = *MEMORY[0x1E697B260];
  v22[2] = *MEMORY[0x1E697AC30];
  v22[3] = v9;
  v10 = *MEMORY[0x1E697B270];
  v23[2] = v6;
  v23[3] = v10;
  v22[4] = *MEMORY[0x1E697B318];
  v23[4] = MEMORY[0x1E695E118];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:5];
  result = 0;
  v12 = SecItemCopyMatching(v11, &result);
  if (v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109378;
      v19 = v12;
      v20 = 2112;
      v21 = v5;
      _os_log_debug_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_DEBUG, "SecItemCopyMatching returned %d for %@", buf, 0x12u);
    }

    v13 = 0;
  }

  else
  {
    v13 = result;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (void)saveDataToKeychain:(id)a3 withIdentifier:(id)a4 accountName:(id)a5
{
  v32[3] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = *MEMORY[0x1E697AFF8];
  v10 = *MEMORY[0x1E697B008];
  v11 = *MEMORY[0x1E697AE88];
  v30[0] = *MEMORY[0x1E697AFF8];
  v30[1] = v11;
  v32[0] = v10;
  v32[1] = v7;
  v31 = *MEMORY[0x1E697AC30];
  v12 = v31;
  v32[2] = v8;
  v13 = MEMORY[0x1E695DF20];
  v14 = a3;
  v15 = [v13 dictionaryWithObjects:v32 forKeys:v30 count:3];
  v28[0] = v11;
  v28[1] = v12;
  v29[0] = v7;
  v29[1] = v8;
  v16 = *MEMORY[0x1E697ABD8];
  v28[2] = *MEMORY[0x1E697B3C0];
  v28[3] = v16;
  v17 = *MEMORY[0x1E697ABE8];
  v29[2] = v14;
  v29[3] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:4];

  v19 = SecItemUpdate(v15, v18);
  if (v19 == -25300)
  {
    v20 = [(__CFDictionary *)v18 mutableCopy];
    [v20 setObject:v10 forKeyedSubscript:v9];
    v19 = SecItemAdd(v20, 0);
  }

  if (v19)
  {
    v21 = nplog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v25 = v7;
      v26 = 1024;
      v27 = v19;
      _os_log_error_impl(&dword_1AE7E2000, v21, OS_LOG_TYPE_ERROR, "Failed to save %@ to the keychain: %d", buf, 0x12u);
    }

    [a1 removeDataFromKeychainWithIdentifier:v7 accountName:v8];
  }

  v22 = *MEMORY[0x1E69E9840];
}

+ (unint64_t)totalDataInKeychainWithIdentifier:(id)a3
{
  v27[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E697B008];
  v5 = *MEMORY[0x1E697AE88];
  v26[0] = *MEMORY[0x1E697AFF8];
  v26[1] = v5;
  v27[0] = v4;
  v27[1] = v3;
  v6 = *MEMORY[0x1E697B268];
  v7 = *MEMORY[0x1E697B318];
  v26[2] = *MEMORY[0x1E697B260];
  v26[3] = v7;
  v27[2] = v6;
  v27[3] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];
  result = 0;
  v9 = SecItemCopyMatching(v8, &result);
  v10 = result;
  if (v9)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 length];
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_2:
    v11 = 0;
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v11 = 0;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 += [v17 length];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v14);
    }

    else
    {
      v11 = 0;
    }
  }

LABEL_18:

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (void)removeDataFromKeychainWithIdentifier:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E697B008];
  v5 = *MEMORY[0x1E697AE88];
  v16[0] = *MEMORY[0x1E697AFF8];
  v16[1] = v5;
  v17[0] = v4;
  v17[1] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v7 = SecItemDelete(v6);
  if (v7 != -25300 && v7 != 0)
  {
    v9 = v7;
    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v3;
      v14 = 1024;
      v15 = v9;
      _os_log_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEFAULT, "Failed to delete %@ from the keychain: %d", &v12, 0x12u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)removeDataFromKeychainWithIdentifier:(id)a3 accountName:(id)a4
{
  v21[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *MEMORY[0x1E697B008];
  v7 = *MEMORY[0x1E697AE88];
  v20[0] = *MEMORY[0x1E697AFF8];
  v20[1] = v7;
  v21[0] = v6;
  v21[1] = v5;
  v20[2] = *MEMORY[0x1E697AC30];
  v21[2] = a4;
  v8 = MEMORY[0x1E695DF20];
  v9 = a4;
  v10 = [v8 dictionaryWithObjects:v21 forKeys:v20 count:3];

  v11 = SecItemDelete(v10);
  if (v11 != -25300 && v11 != 0)
  {
    v13 = v11;
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v5;
      v18 = 1024;
      v19 = v13;
      _os_log_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_DEFAULT, "Failed to delete %@ from the keychain: %d", &v16, 0x12u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (__SecKey)copyKeyFromKeychainWithIdentifier:(id)a3
{
  v21[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E697B020];
  v5 = *MEMORY[0x1E697AC40];
  v20[0] = *MEMORY[0x1E697AFF8];
  v20[1] = v5;
  v21[0] = v4;
  v21[1] = v3;
  v6 = *MEMORY[0x1E697B270];
  v7 = *MEMORY[0x1E697B328];
  v20[2] = *MEMORY[0x1E697B260];
  v20[3] = v7;
  v21[2] = v6;
  v21[3] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];
  result = 0;
  v9 = SecItemCopyMatching(v8, &result);
  if (v9 || (v10 = CFGetTypeID(result), v10 != SecKeyGetTypeID()))
  {
    v12 = nplog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109378;
      v17 = v9;
      v18 = 2112;
      v19 = v3;
      _os_log_debug_impl(&dword_1AE7E2000, v12, OS_LOG_TYPE_DEBUG, "SecItemCopyMatching returned %d for %@", buf, 0x12u);
    }

    if (result)
    {
      CFRelease(result);
    }

    v11 = 0;
  }

  else
  {
    v11 = result;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (void)saveKeyToKeychain:(__SecKey *)a3 withIdentifier:(id)a4
{
  v20[4] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = *MEMORY[0x1E697B020];
  v7 = *MEMORY[0x1E697AC40];
  v19[0] = *MEMORY[0x1E697AFF8];
  v19[1] = v7;
  v8 = *MEMORY[0x1E697ABD8];
  v19[2] = *MEMORY[0x1E697B3D0];
  v19[3] = v8;
  v20[0] = v6;
  v20[1] = v5;
  v9 = *MEMORY[0x1E697ABE8];
  v20[2] = a3;
  v20[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v11 = SecItemAdd(v10, 0);
  if (v11)
  {
    v12 = v11;
    v13 = nplog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412546;
      v16 = v5;
      v17 = 1024;
      v18 = v12;
      _os_log_error_impl(&dword_1AE7E2000, v13, OS_LOG_TYPE_ERROR, "Failed to save key %@ to the keychain: %d", &v15, 0x12u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (void)removeKeyFromKeychainWithIdentifier:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E697B020];
  v5 = *MEMORY[0x1E697AC40];
  v16[0] = *MEMORY[0x1E697AFF8];
  v16[1] = v5;
  v17[0] = v4;
  v17[1] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v7 = SecItemDelete(v6);
  if (v7 != -25300 && v7 != 0)
  {
    v9 = v7;
    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v3;
      v14 = 1024;
      v15 = v9;
      _os_log_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEFAULT, "Failed to delete key %@ from the keychain: %d", &v12, 0x12u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (id)copyItemIdentifiersFromKeychainWithAccountName:(id)a3
{
  v34[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E697B008];
  v5 = *MEMORY[0x1E697AC30];
  v33[0] = *MEMORY[0x1E697AFF8];
  v33[1] = v5;
  v34[0] = v4;
  v34[1] = v3;
  v6 = *MEMORY[0x1E697B268];
  v7 = *MEMORY[0x1E697B310];
  v33[2] = *MEMORY[0x1E697B260];
  v33[3] = v7;
  v34[2] = v6;
  v34[3] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:4];
  result = 0;
  v9 = SecItemCopyMatching(v8, &result);
  if (v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109378;
      v29 = v9;
      v30 = 2112;
      v31 = v3;
      _os_log_debug_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEBUG, "SecItemCopyMatching returned %d for %@", buf, 0x12u);
    }

    goto LABEL_19;
  }

  v10 = result;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (!v11)
  {
LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  v12 = v11;
  v21 = v8;
  v22 = v3;
  v13 = 0;
  v14 = *v24;
  v15 = *MEMORY[0x1E697AE88];
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v24 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v23 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v17 objectForKeyedSubscript:v15];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!v13)
          {
            v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v13 addObject:{v18, v21, v22}];
        }
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v23 objects:v32 count:16];
  }

  while (v12);
  v8 = v21;
  v3 = v22;
LABEL_20:

  if (result)
  {
    CFRelease(result);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (int64_t)interfaceTypeOfInterface:(id)a3
{
  v3 = nw_interface_get_type(a3) - 1;
  if (v3 < 3)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)interfaceTypeOfNWInterface:(id)a3
{
  result = [a3 type];
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

+ (id)getInterfaceName:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E7A307A0[a3 - 1];
  }
}

+ (int64_t)protocolTypeFromPath:(id)a3 endpoint:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (nw_path_has_ipv6(v5))
  {
    v7 = !nw_path_has_ipv4(v5);
    if (!v6)
    {
LABEL_13:
      if (v7)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (nw_endpoint_get_type(v6) != nw_endpoint_type_address)
  {
    goto LABEL_13;
  }

  sa_family = nw_endpoint_get_address(v6)->sa_family;
  v9 = 3;
  if (!v7)
  {
    v9 = 1;
  }

  if (sa_family != 2)
  {
    v9 = 0;
  }

  if (sa_family == 30)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

LABEL_16:

  return v10;
}

+ (BOOL)hasPacketDrop:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 state] && objc_msgSend(v4, "state") != 5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v4 TCPInfo];
    v5 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v8);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [v4 TCPInfo];
          v13 = [v12 objectForKeyedSubscript:v11];

          if ([v13 length] == 424 && *(objc_msgSend(v13, "bytes") + 84))
          {

            LOBYTE(v5) = 1;
            goto LABEL_17;
          }
        }

        v5 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)stripWhitespace:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 length])
  {
    v4 = [v3 stringByReplacingOccurrencesOfString:@"\\s+" withString:&stru_1F2438480 options:1024 range:{0, objc_msgSend(v3, "length")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)hexDumpBytes:(const void *)a3 length:(unint64_t)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v7 = malloc_type_malloc((2 * a4) | 1, 0x100004077774924uLL);
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 2;
      do
      {
        sprintf(&v8[v10 - 2], "%x", *(a3 + v9++));
        if (v9 >= a4)
        {
          break;
        }

        v11 = v10 >= 2 * a4 - 1;
        v10 += 2;
      }

      while (!v11);
      v8[2 * a4] = 0;
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v8 encoding:4];
      free(v8);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (void)parseXTimeout:(id)a3 hardTTLInSeconds:(double *)a4
{
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 doubleValue];
    v6 = v5 * 60.0;
    v7 = v5 <= 0.0;
    v8 = 92160.0;
    if (!v7)
    {
      v8 = v6;
    }

    if (v8 > 151200.0)
    {
      v8 = 151200.0;
    }
  }

  else
  {
    v8 = 92160.0;
  }

  *a4 = v8;
}

+ (id)parseXHost:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 length])
  {
    v4 = [v3 componentsSeparatedByString:{@", "}];
    v6 = 0;
    if ([v4 count])
    {
      v7 = 0;
      *&v5 = 138412290;
      v14 = v5;
      do
      {
        v8 = [v4 objectAtIndexedSubscript:{v7, v14}];
        v9 = [NPUtilities endpointFromString:v8 defaultPortString:0];

        if (v9)
        {
          if (!v6)
          {
            v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
          }

          [v6 addObject:v9];
        }

        else
        {
          v10 = nplog_obj();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v11 = [v4 objectAtIndexedSubscript:v7];
            *buf = v14;
            v16 = v11;
            _os_log_error_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_ERROR, "Invalid host specification: %@", buf, 0xCu);
          }
        }

        ++v7;
      }

      while (v7 < [v4 count]);
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (unint64_t)parseXRTT:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 length])
  {
    v4 = [v3 componentsSeparatedByString:{@", "}];
    if ([v4 count])
    {
      v5 = [v4 objectAtIndexedSubscript:0];
      if ([v5 integerValue])
      {
        v6 = [v5 integerValue] / 1000 + 1;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)copyBase64HeaderValueFromData:(id)a3
{
  v3 = [a3 base64EncodedStringWithOptions:0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@":%@:", v3];

  return v4;
}

+ (id)copyCurrentNetworkCharacteristicsForPath:(id)a3
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 status] == 1)
  {
    v4 = [v3 interface];
    v5 = [v4 interfaceName];
    if (v5 && nwi_state_copy())
    {
      [v5 UTF8String];
      ifstate = nwi_state_get_ifstate();
      if (ifstate)
      {
        if ((nwi_ifstate_get_flags() & 3) != 0)
        {
          v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
          nwi_ifstate_get_signature();
          nwi_ifstate_get_signature();
          [v7 appendBytes:"default_signature" length:18];
          v8 = (nwi_ifstate_get_flags() >> 1) & 1;
          v14[0] = v7;
          v13[0] = @"Signature";
          v13[1] = @"InterfaceType";
          v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "type")}];
          v14[1] = v9;
          v13[2] = @"HasIPv6";
          v10 = [MEMORY[0x1E696AD98] numberWithBool:v8];
          v14[2] = v10;
          ifstate = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
        }

        else
        {
          ifstate = 0;
        }
      }

      nwi_state_release();
    }

    else
    {
      ifstate = 0;
    }
  }

  else
  {
    ifstate = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return ifstate;
}

+ (id)connectionInfoToDict:(id)a3 dictionary:(id)a4
{
  v82 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  *v79 = 0;
  v80 = 0;
  v81 = 0;
  if (!v5)
  {
    v10 = 0;
    goto LABEL_57;
  }

  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v8 = [v5 pathType];
  if (v8 > 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = off_1E7A307C0[v8];
  }

  [v7 setObject:v9 forKeyedSubscript:@"PathType"];
  if ([v5 pathType] == 2)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "fallbackReason")}];
    [v7 setObject:v11 forKeyedSubscript:@"FallbackReasonNumber"];

    v12 = +[NSPConnectionInfo getFallbackReasonDescription:](NSPConnectionInfo, "getFallbackReasonDescription:", [v5 fallbackReason]);
    [v7 setObject:v12 forKeyedSubscript:@"FallbackReason"];

    v13 = [v5 fallbackReasonCategory];
    if (v13 <= 4)
    {
      v9 = off_1E7A307F0[v13];
    }

    [v7 setObject:v9 forKeyedSubscript:@"FallbackCategory"];
    v14 = objc_alloc(MEMORY[0x1E696AD98]);
    [v5 fallbackDelay];
    v15 = [v14 initWithDouble:?];
    v16 = @"FallbackDelay";
    v17 = v7;
    v18 = v15;
    goto LABEL_12;
  }

  if ([v5 pathType] == 1)
  {
    v19 = [v5 edgeType];
    if (v19 <= 3)
    {
      v9 = off_1E7A30818[v19];
    }

    [v7 setObject:v9 forKeyedSubscript:@"EdgeType"];
    v20 = [v5 edgeAddress];
    if (v20)
    {
      v21 = [v5 edgeAddress];
      [v7 setObject:v21 forKeyedSubscript:@"EdgeAddress"];
    }

    else
    {
      [v7 setObject:@"unknown" forKeyedSubscript:@"EdgeAddress"];
    }

    v15 = [v5 firstTxByteTimeStamp];
    if (v15)
    {
      v22 = [v5 firstTxByteTimeStamp];
      v23 = [v22 description];
      [v7 setObject:v23 forKeyedSubscript:@"tunnelFirstTxByteTimestamp"];

      goto LABEL_21;
    }

    v18 = @"unknown";
    v16 = @"tunnelFirstTxByteTimestamp";
    v17 = v7;
LABEL_12:
    [v17 setObject:v18 forKeyedSubscript:v16];
LABEL_21:
  }

  if ([v5 isMultipath])
  {
    v24 = @"yes";
  }

  else
  {
    v24 = @"no";
  }

  [v7 setObject:v24 forKeyedSubscript:@"IsMultipath"];
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "multipathSubflowCount")}];
  [v7 setObject:v25 forKeyedSubscript:@"SubflowCount"];

  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "multipathConnectedSubflowCount")}];
  [v7 setObject:v26 forKeyedSubscript:@"ConnectedSubflowCount"];

  if ([v5 isTFOProbeSucceeded])
  {
    v27 = @"yes";
  }

  else
  {
    v27 = @"no";
  }

  [v7 setObject:v27 forKeyedSubscript:@"IsTFOProbeSucceeded"];
  if (if_indextoname([v5 multipathPrimarySubflowInterfaceIndex], v79))
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v79];
    [v7 setObject:v28 forKeyedSubscript:@"PrimarySubflowInterface"];
  }

  v29 = [v5 multipathSubflowSwitchCounts];
  if (v29)
  {
    v30 = v29;
    v31 = [v5 multipathSubflowSwitchCounts];
    v32 = [v31 count];

    if (v32)
    {
      v33 = [v5 multipathSubflowSwitchCounts];
      [v7 setObject:v33 forKeyedSubscript:@"SwitchCounts"];
    }
  }

  [v5 connectionDelay];
  if (v34 > 0.0)
  {
    v35 = MEMORY[0x1E696AD98];
    [v5 connectionDelay];
    v36 = [v35 numberWithDouble:?];
    [v7 setObject:v36 forKeyedSubscript:@"ConnectionDelay"];
  }

  [v5 firstTxByteDelay];
  if (v37 > 0.0)
  {
    v38 = MEMORY[0x1E696AD98];
    [v5 firstTxByteDelay];
    v39 = [v38 numberWithDouble:?];
    [v7 setObject:v39 forKeyedSubscript:@"FirstTxByteDelay"];
  }

  [v5 timeToFirstByte];
  if (v40 > 0.0)
  {
    v41 = MEMORY[0x1E696AD98];
    [v5 timeToFirstByte];
    v42 = [v41 numberWithDouble:?];
    [v7 setObject:v42 forKeyedSubscript:@"TimeToFirstByte"];
  }

  if ([v5 tunnelConnectionError])
  {
    v43 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "tunnelConnectionError")}];
    [v7 setObject:v43 forKeyedSubscript:@"ConnectionError"];
  }

  v44 = [v5 TCPInfo];
  if (v44)
  {
    v45 = v44;
    v46 = [v5 TCPInfo];
    v47 = [v46 count];

    if (v47)
    {
      v67 = v7;
      v70 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      obj = [v5 TCPInfo];
      v71 = [obj countByEnumeratingWithState:&v72 objects:v78 count:16];
      if (v71)
      {
        v69 = *v73;
        do
        {
          for (i = 0; i != v71; ++i)
          {
            if (*v73 != v69)
            {
              objc_enumerationMutation(obj);
            }

            v49 = *(*(&v72 + 1) + 8 * i);
            v50 = [v5 TCPInfo];
            [v50 objectForKeyedSubscript:v49];
            v52 = v51 = v5;

            v53 = [v52 bytes];
            v76[0] = @"TxBytes";
            v54 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v53 + 76)];
            v77[0] = v54;
            v76[1] = @"TxPackets";
            v55 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v53 + 68)];
            v77[1] = v55;
            v76[2] = @"RxBytes";
            v56 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v53 + 108)];
            v77[2] = v56;
            v76[3] = @"RxPackets";
            v57 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v53 + 100)];
            v77[3] = v57;
            v76[4] = @"Resend";
            v58 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v53 + 284)];
            v77[4] = v58;
            v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:5];

            [v70 setObject:v59 forKeyedSubscript:v49];
            v5 = v51;
          }

          v71 = [obj countByEnumeratingWithState:&v72 objects:v78 count:16];
        }

        while (v71);
      }

      v7 = v67;
      [v67 setObject:v70 forKeyedSubscript:@"TCPMetrics"];
    }
  }

  [v5 timeIntervalSinceLastUsage];
  if (v60 > 0.0)
  {
    v61 = MEMORY[0x1E696AD98];
    [v5 timeIntervalSinceLastUsage];
    v62 = [v61 numberWithDouble:?];
    [v7 setObject:v62 forKeyedSubscript:@"TimeSinceLastUsage"];
  }

  if ([v5 TFOSucceeded])
  {
    v63 = @"yes";
  }

  else
  {
    v63 = @"no";
  }

  [v7 setObject:v63 forKeyedSubscript:@"TFOSucceeded"];
  v64 = [v5 timingIntervals];
  [v7 setObject:v64 forKeyedSubscript:@"TimingIntervals"];

  v7 = v7;
  v10 = v7;
LABEL_57:

  v65 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (BOOL)printDictionaryAsJson:(id)a3 debugName:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![MEMORY[0x1E696ACB0] isValidJSONObject:v5])
  {
    printf("%s are not a valid JSON object\n", [v6 UTF8String]);
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v14 = 0;
  v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:1 error:&v14];
  v8 = v14;
  if (!v7)
  {
    v11 = [v6 UTF8String];
    v12 = [v8 description];
    printf("Failed to create JSON data from the %s: %s\n", v11, [v12 UTF8String]);

    goto LABEL_6;
  }

  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
  puts([v9 UTF8String]);

  v10 = 1;
LABEL_7:

  return v10;
}

+ (id)endpointFromString:(id)a3 defaultPortString:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [NPUtilities stripWhitespace:a3];
  v7 = [v6 componentsSeparatedByString:@"@"];
  v8 = [v6 componentsSeparatedByString:@"."];
  if ([v8 count] >= 3)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v26 + 1) + 8 * i) isEqualToString:@"_tcp"])
          {
            v25 = [v9 objectAtIndexedSubscript:0];
            v18 = [v9 objectAtIndexedSubscript:{objc_msgSend(v9, "count") - 1}];
            v19 = [v9 objectAtIndexedSubscript:1];
            if (([v9 count] - 4) > 0xFFFFFFFFFFFFFFFCLL)
            {
              v22 = v19;
            }

            else
            {
              v20 = 2;
              do
              {
                v21 = [v9 objectAtIndexedSubscript:v20];
                v22 = [v19 stringByAppendingFormat:@".%@", v21];

                ++v20;
                v19 = v22;
              }

              while (v20 < [v9 count] - 1);
            }

            v17 = [MEMORY[0x1E6977E10] endpointWithName:v25 type:v22 domain:v18];

            goto LABEL_22;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  if ([v7 count] < 2)
  {
    if (v5)
    {
      v17 = [MEMORY[0x1E6977E28] endpointWithHostname:v6 port:v5];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v14 = MEMORY[0x1E6977E28];
    v15 = [v7 objectAtIndexedSubscript:0];
    v16 = [v7 objectAtIndexedSubscript:1];
    v17 = [v14 endpointWithHostname:v15 port:v16];
  }

LABEL_22:

  v23 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (BOOL)compareAddressEndpoints:(id)a3 endpoint2:(id)a4 addressOnly:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v10 = [v7 address];
      v11 = [v9 address];
      v12 = v10[1];
      if (v12 == v11[1])
      {
        if (v12 == 30)
        {
          if (*v10 >= 0x1Cu && *v11 >= 0x1Cu && (a5 || *(v10 + 1) == *(v11 + 1)))
          {
            v13 = *(v10 + 1) == *(v11 + 1) && *(v10 + 2) == *(v11 + 2);
            goto LABEL_22;
          }
        }

        else if (v12 == 2 && *v10 >= 0x10u && *v11 >= 0x10u && (a5 || *(v10 + 1) == *(v11 + 1)))
        {
          v13 = *(v10 + 1) == *(v11 + 1);
LABEL_22:
          v14 = v13;
          goto LABEL_17;
        }
      }

      v14 = 0;
LABEL_17:

      goto LABEL_18;
    }
  }

  v14 = 0;
LABEL_18:

  return v14;
}

+ (id)getInterfaceTypeString:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"Other";
  }

  else
  {
    return off_1E7A30838[a3 - 1];
  }
}

+ (BOOL)rollDiceWithSuccessRatio:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  bytes = 0;
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 4uLL, &bytes) < 0)
  {
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_ERROR, "SecRandomCopyBytes failed", buf, 2u);
    }

    v7 = 0;
  }

  else
  {
    v4 = (bytes % 0x2710) / 10000.0;
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v13 = v4;
      _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Random ratio %f", buf, 0xCu);
    }

    [v3 doubleValue];
    v7 = v4 < v6;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)timestampIdentifierToName:(unint64_t)a3
{
  if (a3 - 1 > 0xE)
  {
    return @"EnableNSP";
  }

  else
  {
    return off_1E7A30850[a3 - 1];
  }
}

+ (id)copyDataHexString:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 length])
  {
    v4 = v13;
    memset(v13, 0, sizeof(v13));
    v5 = [v3 bytes];
    v12 = 60;
    if ([v3 length])
    {
      v6 = 0;
      do
      {
        snprintf(v4, 3uLL, "%02x", *(v5 + v6));
        v7 = v4 + 2;
        v8 = v4 + 2 - &v12;
        if (v6 && (v6 & 3) == 0 && v8 <= 254)
        {
          v4[2] = 32;
          v7 = v4 + 3;
          v8 = v4 + 3 - &v12;
        }

        if (++v6 >= [v3 length])
        {
          break;
        }

        v4 = v7;
      }

      while (v8 < 254);
      if (v8 > 254)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v7 = v13;
    }

    *v7++ = 62;
LABEL_15:
    *v7 = 0;
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:&v12];
    goto LABEL_16;
  }

  v9 = &stru_1F2438480;
LABEL_16:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)copyNetworkDescription:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"InterfaceType"];
  v5 = [v3 objectForKeyedSubscript:@"Signature"];

  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = +[NPUtilities getInterfaceTypeString:](NPUtilities, "getInterfaceTypeString:", [v4 intValue]);
  v8 = [NPUtilities copyDataHexString:v5];
  v9 = [v6 initWithFormat:@"(%@): %@", v7, v8];

  return v9;
}

+ (int64_t)certificateDateIsValid:(__SecCertificate *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    SecCertificateNotValidBefore();
    v4 = v3;
    if (v3 == 0.0)
    {
      v5 = 0;
    }

    else
    {
      v5 = CFDateCreate(*MEMORY[0x1E695E480], v3);
    }

    SecCertificateNotValidAfter();
    v8 = v7;
    if (v7 == 0.0)
    {
      v9 = 0;
    }

    else
    {
      v9 = CFDateCreate(*MEMORY[0x1E695E480], v7);
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (Current == 0.0)
    {
      v12 = 0;
      v6 = 4;
    }

    else
    {
      v11 = CFDateCreate(0, Current);
      v12 = v11;
      v6 = 4;
      if (v5 && v11)
      {
        if (CFDateCompare(v11, v5, 0) == kCFCompareLessThan)
        {
          v13 = nplog_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            v6 = 2;
            _os_log_impl(&dword_1AE7E2000, v13, OS_LOG_TYPE_INFO, "Current time before valid time", buf, 2u);
          }

          else
          {
            v6 = 2;
          }

LABEL_23:

          v21 = 0;
          v22 = 0;
          v20 = 0;
          v14 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], *MEMORY[0x1E695E678]);
          if (v14)
          {
            v15 = v14;
            CFCalendarDecomposeAbsoluteTime(v14, v4, "yMdHm", &v22 + 4, &v22, &v21 + 4, &v21, &v20);
            v16 = nplog_obj();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 67110144;
              v24 = HIDWORD(v22);
              v25 = 1024;
              v26 = v22;
              v27 = 1024;
              v28 = HIDWORD(v21);
              v29 = 1024;
              v30 = v21;
              v31 = 1024;
              v32 = v20;
              _os_log_impl(&dword_1AE7E2000, v16, OS_LOG_TYPE_INFO, "Certificate not valid before yr %d, mon %d, days %d, hours %d, min %d\n", buf, 0x20u);
            }

            CFCalendarDecomposeAbsoluteTime(v15, v8, "yMdHm", &v22 + 4, &v22, &v21 + 4, &v21, &v20);
            v17 = nplog_obj();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 67110144;
              v24 = HIDWORD(v22);
              v25 = 1024;
              v26 = v22;
              v27 = 1024;
              v28 = HIDWORD(v21);
              v29 = 1024;
              v30 = v21;
              v31 = 1024;
              v32 = v20;
              _os_log_impl(&dword_1AE7E2000, v17, OS_LOG_TYPE_INFO, "Certificate not valid after yr %d, mon %d, days %d, hours %d, min %d\n", buf, 0x20u);
            }

            CFRelease(v15);
          }

          goto LABEL_29;
        }

        if (v9 && CFDateCompare(v12, v9, 0) == kCFCompareGreaterThan)
        {
          v13 = nplog_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1AE7E2000, v13, OS_LOG_TYPE_INFO, "Current time after valid time", buf, 2u);
          }

          v6 = 3;
          goto LABEL_23;
        }

        v6 = 1;
      }
    }

LABEL_29:
    CFRelease(v5);
    CFRelease(v9);
    CFRelease(v12);
    goto LABEL_30;
  }

  v6 = 4;
LABEL_30:
  v18 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (void)postNotification:(id)a3 value:(unint64_t)a4
{
  v5 = a3;
  v6 = NPGetInternalQueue();
  dispatch_assert_queue_V2(v6);

  out_token = -1;
  if (!notify_register_check([v5 UTF8String], &out_token))
  {
    v7 = 0;
    if (notify_get_state(out_token, &v7) || v7 != a4)
    {
      v7 = a4;
      if (!notify_set_state(out_token, a4))
      {
        notify_post([v5 UTF8String]);
      }
    }

    notify_cancel(out_token);
  }
}

+ (id)copyTrueClientIPAddressFromPreferences
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_variant_allows_internal_security_policies())
  {
    v2 = CFPreferencesCopyAppValue(@"NSPTrueClientIPAddress", *MEMORY[0x1E695E8A8]);
    if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v3 = nplog_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138543362;
        v8 = v2;
        _os_log_impl(&dword_1AE7E2000, v3, OS_LOG_TYPE_DEFAULT, "Detected true client ip address in preferences file: %{public}@", &v7, 0xCu);
      }

      v4 = v2;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (id)machoUUIDFromPID:(int)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = 0;
  memset(buffer, 0, sizeof(buffer));
  v4 = 0;
  if (proc_pidinfo(a3, 17, 1uLL, buffer, 56) == 56)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:buffer];
  }

  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109378;
    v8[1] = a3;
    v9 = 2112;
    v10 = v4;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Mach-O UUID for process PID=%d is %@", v8, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)createAddressStringFromBuffer:(unint64_t)a3 addressLen:(uint64_t)a4 family:
{
  v12 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (!a2)
  {
    v8 = 0;
    goto LABEL_9;
  }

  if (a4 == 2)
  {
    v7 = 2;
LABEL_8:
    inet_ntop(v7, a2, v11, 0x40u);
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    goto LABEL_9;
  }

  v8 = 0;
  if (a3 >= 0x10 && a4 == 30)
  {
    v7 = 30;
    goto LABEL_8;
  }

LABEL_9:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)createMaskedIPv4Address:(id)a3 prefix:(unint64_t)a4
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = a3;
    objc_opt_self();
    if (a4 < 0x21)
    {
      __b = 0;
      if (a4 >= 8)
      {
        v8 = a4 >> 3;
        memset(&__b, 255, a4 >> 3);
      }

      else
      {
        v8 = 0;
      }

      if ((a4 & 7) != 0)
      {
        *(&__b + v8) = 0xFF00u >> (a4 & 7);
      }

      v7 = [NPUtilities createAddressStringFromBuffer:4uLL addressLen:2 family:?];
      if (v7)
      {
        v12 = 0;
        __b = 0;
        inet_pton(2, [v6 UTF8String], &__b);
        inet_pton(2, [v7 UTF8String], &v12);
        __b &= v12;
        v9 = [NPUtilities createAddressStringFromBuffer:4uLL addressLen:2 family:?];
        goto LABEL_14;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __b = 136315138;
      v14 = "+[NPUtilities createMaskedIPv4Address:prefix:]";
      _os_log_fault_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_FAULT, "%s called with null address", &__b, 0xCu);
    }
  }

  v9 = 0;
LABEL_14:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)createMaskedIPv6Address:(id)a3 prefix:(unint64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    objc_opt_self();
    v6 = 0;
    __b = 0uLL;
    if (a4 >= 8)
    {
      v6 = a4 >> 3;
      memset(&__b, 255, a4 >> 3);
    }

    if ((a4 & 7) != 0)
    {
      __b.i8[v6] = 0xFF00u >> (a4 & 7);
    }

    v7 = [NPUtilities createAddressStringFromBuffer:0x10uLL addressLen:30 family:?];
    if (v7)
    {
      __b = 0uLL;
      v11 = 0uLL;
      inet_pton(30, [v5 UTF8String], &__b);
      inet_pton(30, [v7 UTF8String], &v11);
      __b = vandq_s8(v11, __b);
      v8 = [NPUtilities createAddressStringFromBuffer:0x10uLL addressLen:30 family:?];
      goto LABEL_11;
    }
  }

  else
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __b.i32[0] = 136315138;
      *(__b.i64 + 4) = "+[NPUtilities createMaskedIPv6Address:prefix:]";
      _os_log_fault_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_FAULT, "%s called with null address", &__b, 0xCu);
    }
  }

  v8 = 0;
LABEL_11:

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)copyUUIDsForSigningIdentifier:(id)a3 executablePath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  [v5 UTF8String];
  [v6 UTF8String];
  v7 = NEHelperCacheCopyAppUUIDMapping();
  v8 = v7;
  if (v7 && MEMORY[0x1B2708030](v7) == MEMORY[0x1E69E9E50])
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __60__NPUtilities_copyUUIDsForSigningIdentifier_executablePath___block_invoke;
    applier[3] = &unk_1E7A30780;
    applier[4] = &v12;
    xpc_array_apply(v8, applier);
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  return v9;
}

uint64_t __60__NPUtilities_copyUUIDsForSigningIdentifier_executablePath___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x1B2708030]() == MEMORY[0x1E69E9F20])
  {
    bytes = xpc_uuid_get_bytes(v4);
    if (bytes)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:bytes];
      v7 = *(*(*(a1 + 32) + 8) + 40);
      if (!v7)
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v9 = *(*(a1 + 32) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        v7 = *(*(*(a1 + 32) + 8) + 40);
      }

      [v7 addObject:v6];
    }
  }

  return 1;
}

+ (id)mergeHTTPHeaders:(id)a3 headerOverrides:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v24 = v5;
    if (v5)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v5];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v8 = v7;
    v9 = [v6 componentsSeparatedByString:{@";", v6}];;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v26 + 1) + 8 * i) componentsSeparatedByString:@"="];
          if ([v14 count]<= 2 && [v14 count])
          {
            v15 = [v14 firstObject];
            v16 = [v15 length];

            if (!v16)
            {
              goto LABEL_26;
            }

            v17 = [v14 firstObject];
            v18 = [v14 lastObject];
            if (-[NSObject count](v14, "count") == 1 || ![v18 length])
            {
              v20 = nplog_obj();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                v25 = [v8 objectForKey:v17];
                *buf = 138412546;
                v31 = v17;
                v32 = 2112;
                v33 = v25;
                _os_log_debug_impl(&dword_1AE7E2000, v20, OS_LOG_TYPE_DEBUG, "Removing header %@ due to user-configured headers, current value is %@", buf, 0x16u);
              }

              [v8 removeObjectForKey:v17];
            }

            else
            {
              [v8 setValue:v18 forKey:v17];
              v19 = nplog_obj();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v31 = v17;
                v32 = 2112;
                v33 = v18;
                _os_log_debug_impl(&dword_1AE7E2000, v19, OS_LOG_TYPE_DEBUG, "Adding/replacing header %@ with value %@ due to user-configured headers", buf, 0x16u);
              }
            }
          }

          else
          {
            v17 = nplog_obj();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v31 = v14;
              _os_log_error_impl(&dword_1AE7E2000, v17, OS_LOG_TYPE_ERROR, "Skipping malformed header override: %@", buf, 0xCu);
            }
          }

LABEL_26:
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v11);
    }

    v6 = v23;
    v5 = v24;
  }

  else
  {
    v8 = v5;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v8;
}

@end