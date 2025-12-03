@interface NPUtilities
+ (BOOL)compareAddressEndpoints:(id)endpoints endpoint2:(id)endpoint2 addressOnly:(BOOL)only;
+ (BOOL)hasPacketDrop:(id)drop;
+ (BOOL)printDictionaryAsJson:(id)json debugName:(id)name;
+ (BOOL)rollDiceWithSuccessRatio:(id)ratio;
+ (__SecKey)copyKeyFromKeychainWithIdentifier:(id)identifier;
+ (id)connectionInfoToDict:(id)dict dictionary:(id)dictionary;
+ (id)copyBase64HeaderValueFromData:(id)data;
+ (id)copyCurrentNetworkCharacteristicsForPath:(id)path;
+ (id)copyDataFromKeychainWithIdentifier:(id)identifier accountName:(id)name;
+ (id)copyDataHexString:(id)string;
+ (id)copyItemIdentifiersFromKeychainWithAccountName:(id)name;
+ (id)copyNetworkDescription:(id)description;
+ (id)copyTrueClientIPAddressFromPreferences;
+ (id)copyUUIDsForSigningIdentifier:(id)identifier executablePath:(id)path;
+ (id)createAddressStringFromBuffer:(unint64_t)buffer addressLen:(uint64_t)len family:;
+ (id)createMaskedIPv4Address:(id)address prefix:(unint64_t)prefix;
+ (id)createMaskedIPv6Address:(id)address prefix:(unint64_t)prefix;
+ (id)endpointFromString:(id)string defaultPortString:(id)portString;
+ (id)getInterfaceName:(int64_t)name;
+ (id)getInterfaceTypeString:(int64_t)string;
+ (id)hexDumpBytes:(const void *)bytes length:(unint64_t)length;
+ (id)machoUUIDFromPID:(int)d;
+ (id)mergeHTTPHeaders:(id)headers headerOverrides:(id)overrides;
+ (id)parseXHost:(id)host;
+ (id)sharedEmphemeralSession;
+ (id)stripWhitespace:(id)whitespace;
+ (id)timestampIdentifierToName:(unint64_t)name;
+ (int64_t)certificateDateIsValid:(__SecCertificate *)valid;
+ (int64_t)interfaceTypeOfInterface:(id)interface;
+ (int64_t)interfaceTypeOfNWInterface:(id)interface;
+ (int64_t)protocolTypeFromPath:(id)path endpoint:(id)endpoint;
+ (unint64_t)parseXRTT:(id)t;
+ (unint64_t)totalDataInKeychainWithIdentifier:(id)identifier;
+ (void)parseXTimeout:(id)timeout hardTTLInSeconds:(double *)seconds;
+ (void)postNotification:(id)notification value:(unint64_t)value;
+ (void)removeDataFromKeychainWithIdentifier:(id)identifier;
+ (void)removeDataFromKeychainWithIdentifier:(id)identifier accountName:(id)name;
+ (void)removeKeyFromKeychainWithIdentifier:(id)identifier;
+ (void)saveDataToKeychain:(id)keychain withIdentifier:(id)identifier accountName:(id)name;
+ (void)saveKeyToKeychain:(__SecKey *)keychain withIdentifier:(id)identifier;
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

+ (id)copyDataFromKeychainWithIdentifier:(id)identifier accountName:(id)name
{
  v23[5] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  v7 = *MEMORY[0x1E697B008];
  v8 = *MEMORY[0x1E697AE88];
  v22[0] = *MEMORY[0x1E697AFF8];
  v22[1] = v8;
  v23[0] = v7;
  v23[1] = identifierCopy;
  v9 = *MEMORY[0x1E697B260];
  v22[2] = *MEMORY[0x1E697AC30];
  v22[3] = v9;
  v10 = *MEMORY[0x1E697B270];
  v23[2] = nameCopy;
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
      v21 = identifierCopy;
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

+ (void)saveDataToKeychain:(id)keychain withIdentifier:(id)identifier accountName:(id)name
{
  v32[3] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  v9 = *MEMORY[0x1E697AFF8];
  v10 = *MEMORY[0x1E697B008];
  v11 = *MEMORY[0x1E697AE88];
  v30[0] = *MEMORY[0x1E697AFF8];
  v30[1] = v11;
  v32[0] = v10;
  v32[1] = identifierCopy;
  v31 = *MEMORY[0x1E697AC30];
  v12 = v31;
  v32[2] = nameCopy;
  v13 = MEMORY[0x1E695DF20];
  keychainCopy = keychain;
  v15 = [v13 dictionaryWithObjects:v32 forKeys:v30 count:3];
  v28[0] = v11;
  v28[1] = v12;
  v29[0] = identifierCopy;
  v29[1] = nameCopy;
  v16 = *MEMORY[0x1E697ABD8];
  v28[2] = *MEMORY[0x1E697B3C0];
  v28[3] = v16;
  v17 = *MEMORY[0x1E697ABE8];
  v29[2] = keychainCopy;
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
      v25 = identifierCopy;
      v26 = 1024;
      v27 = v19;
      _os_log_error_impl(&dword_1AE7E2000, v21, OS_LOG_TYPE_ERROR, "Failed to save %@ to the keychain: %d", buf, 0x12u);
    }

    [self removeDataFromKeychainWithIdentifier:identifierCopy accountName:nameCopy];
  }

  v22 = *MEMORY[0x1E69E9840];
}

+ (unint64_t)totalDataInKeychainWithIdentifier:(id)identifier
{
  v27[4] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = *MEMORY[0x1E697B008];
  v5 = *MEMORY[0x1E697AE88];
  v26[0] = *MEMORY[0x1E697AFF8];
  v26[1] = v5;
  v27[0] = v4;
  v27[1] = identifierCopy;
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

+ (void)removeDataFromKeychainWithIdentifier:(id)identifier
{
  v17[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = *MEMORY[0x1E697B008];
  v5 = *MEMORY[0x1E697AE88];
  v16[0] = *MEMORY[0x1E697AFF8];
  v16[1] = v5;
  v17[0] = v4;
  v17[1] = identifierCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v7 = SecItemDelete(v6);
  if (v7 != -25300 && v7 != 0)
  {
    v9 = v7;
    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = identifierCopy;
      v14 = 1024;
      v15 = v9;
      _os_log_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEFAULT, "Failed to delete %@ from the keychain: %d", &v12, 0x12u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)removeDataFromKeychainWithIdentifier:(id)identifier accountName:(id)name
{
  v21[3] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = *MEMORY[0x1E697B008];
  v7 = *MEMORY[0x1E697AE88];
  v20[0] = *MEMORY[0x1E697AFF8];
  v20[1] = v7;
  v21[0] = v6;
  v21[1] = identifierCopy;
  v20[2] = *MEMORY[0x1E697AC30];
  v21[2] = name;
  v8 = MEMORY[0x1E695DF20];
  nameCopy = name;
  v10 = [v8 dictionaryWithObjects:v21 forKeys:v20 count:3];

  v11 = SecItemDelete(v10);
  if (v11 != -25300 && v11 != 0)
  {
    v13 = v11;
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = identifierCopy;
      v18 = 1024;
      v19 = v13;
      _os_log_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_DEFAULT, "Failed to delete %@ from the keychain: %d", &v16, 0x12u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (__SecKey)copyKeyFromKeychainWithIdentifier:(id)identifier
{
  v21[4] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = *MEMORY[0x1E697B020];
  v5 = *MEMORY[0x1E697AC40];
  v20[0] = *MEMORY[0x1E697AFF8];
  v20[1] = v5;
  v21[0] = v4;
  v21[1] = identifierCopy;
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
      v19 = identifierCopy;
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

+ (void)saveKeyToKeychain:(__SecKey *)keychain withIdentifier:(id)identifier
{
  v20[4] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = *MEMORY[0x1E697B020];
  v7 = *MEMORY[0x1E697AC40];
  v19[0] = *MEMORY[0x1E697AFF8];
  v19[1] = v7;
  v8 = *MEMORY[0x1E697ABD8];
  v19[2] = *MEMORY[0x1E697B3D0];
  v19[3] = v8;
  v20[0] = v6;
  v20[1] = identifierCopy;
  v9 = *MEMORY[0x1E697ABE8];
  v20[2] = keychain;
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
      v16 = identifierCopy;
      v17 = 1024;
      v18 = v12;
      _os_log_error_impl(&dword_1AE7E2000, v13, OS_LOG_TYPE_ERROR, "Failed to save key %@ to the keychain: %d", &v15, 0x12u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (void)removeKeyFromKeychainWithIdentifier:(id)identifier
{
  v17[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = *MEMORY[0x1E697B020];
  v5 = *MEMORY[0x1E697AC40];
  v16[0] = *MEMORY[0x1E697AFF8];
  v16[1] = v5;
  v17[0] = v4;
  v17[1] = identifierCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v7 = SecItemDelete(v6);
  if (v7 != -25300 && v7 != 0)
  {
    v9 = v7;
    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = identifierCopy;
      v14 = 1024;
      v15 = v9;
      _os_log_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEFAULT, "Failed to delete key %@ from the keychain: %d", &v12, 0x12u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (id)copyItemIdentifiersFromKeychainWithAccountName:(id)name
{
  v34[4] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v4 = *MEMORY[0x1E697B008];
  v5 = *MEMORY[0x1E697AC30];
  v33[0] = *MEMORY[0x1E697AFF8];
  v33[1] = v5;
  v34[0] = v4;
  v34[1] = nameCopy;
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
      v31 = nameCopy;
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
  v22 = nameCopy;
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
  nameCopy = v22;
LABEL_20:

  if (result)
  {
    CFRelease(result);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (int64_t)interfaceTypeOfInterface:(id)interface
{
  v3 = nw_interface_get_type(interface) - 1;
  if (v3 < 3)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)interfaceTypeOfNWInterface:(id)interface
{
  result = [interface type];
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

+ (id)getInterfaceName:(int64_t)name
{
  if ((name - 1) > 3)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E7A307A0[name - 1];
  }
}

+ (int64_t)protocolTypeFromPath:(id)path endpoint:(id)endpoint
{
  pathCopy = path;
  endpointCopy = endpoint;
  if (nw_path_has_ipv6(pathCopy))
  {
    v7 = !nw_path_has_ipv4(pathCopy);
    if (!endpointCopy)
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
    if (!endpointCopy)
    {
      goto LABEL_13;
    }
  }

  if (nw_endpoint_get_type(endpointCopy) != nw_endpoint_type_address)
  {
    goto LABEL_13;
  }

  sa_family = nw_endpoint_get_address(endpointCopy)->sa_family;
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

+ (BOOL)hasPacketDrop:(id)drop
{
  v19 = *MEMORY[0x1E69E9840];
  dropCopy = drop;
  v4 = dropCopy;
  if (dropCopy && [dropCopy state] && objc_msgSend(v4, "state") != 5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    tCPInfo = [v4 TCPInfo];
    v5 = [tCPInfo countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(tCPInfo);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          tCPInfo2 = [v4 TCPInfo];
          v13 = [tCPInfo2 objectForKeyedSubscript:v11];

          if ([v13 length] == 424 && *(objc_msgSend(v13, "bytes") + 84))
          {

            LOBYTE(v5) = 1;
            goto LABEL_17;
          }
        }

        v5 = [tCPInfo countByEnumeratingWithState:&v14 objects:v18 count:16];
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

+ (id)stripWhitespace:(id)whitespace
{
  whitespaceCopy = whitespace;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [whitespaceCopy length])
  {
    v4 = [whitespaceCopy stringByReplacingOccurrencesOfString:@"\\s+" withString:&stru_1F2438480 options:1024 range:{0, objc_msgSend(whitespaceCopy, "length")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)hexDumpBytes:(const void *)bytes length:(unint64_t)length
{
  v4 = 0;
  if (bytes && length)
  {
    v7 = malloc_type_malloc((2 * length) | 1, 0x100004077774924uLL);
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 2;
      do
      {
        sprintf(&v8[v10 - 2], "%x", *(bytes + v9++));
        if (v9 >= length)
        {
          break;
        }

        v11 = v10 >= 2 * length - 1;
        v10 += 2;
      }

      while (!v11);
      v8[2 * length] = 0;
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

+ (void)parseXTimeout:(id)timeout hardTTLInSeconds:(double *)seconds
{
  timeoutCopy = timeout;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [timeoutCopy doubleValue];
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

  *seconds = v8;
}

+ (id)parseXHost:(id)host
{
  v17 = *MEMORY[0x1E69E9840];
  hostCopy = host;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [hostCopy length])
  {
    v4 = [hostCopy componentsSeparatedByString:{@", "}];
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

+ (unint64_t)parseXRTT:(id)t
{
  tCopy = t;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [tCopy length])
  {
    v4 = [tCopy componentsSeparatedByString:{@", "}];
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

+ (id)copyBase64HeaderValueFromData:(id)data
{
  v3 = [data base64EncodedStringWithOptions:0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@":%@:", v3];

  return v4;
}

+ (id)copyCurrentNetworkCharacteristicsForPath:(id)path
{
  v14[3] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ([pathCopy status] == 1)
  {
    interface = [pathCopy interface];
    interfaceName = [interface interfaceName];
    if (interfaceName && nwi_state_copy())
    {
      [interfaceName UTF8String];
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
          v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(interface, "type")}];
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

+ (id)connectionInfoToDict:(id)dict dictionary:(id)dictionary
{
  v82 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  dictionaryCopy = dictionary;
  v7 = dictionaryCopy;
  *v79 = 0;
  v80 = 0;
  v81 = 0;
  if (!dictCopy)
  {
    v10 = 0;
    goto LABEL_57;
  }

  if (!dictionaryCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  pathType = [dictCopy pathType];
  if (pathType > 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = off_1E7A307C0[pathType];
  }

  [v7 setObject:v9 forKeyedSubscript:@"PathType"];
  if ([dictCopy pathType] == 2)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(dictCopy, "fallbackReason")}];
    [v7 setObject:v11 forKeyedSubscript:@"FallbackReasonNumber"];

    v12 = +[NSPConnectionInfo getFallbackReasonDescription:](NSPConnectionInfo, "getFallbackReasonDescription:", [dictCopy fallbackReason]);
    [v7 setObject:v12 forKeyedSubscript:@"FallbackReason"];

    fallbackReasonCategory = [dictCopy fallbackReasonCategory];
    if (fallbackReasonCategory <= 4)
    {
      v9 = off_1E7A307F0[fallbackReasonCategory];
    }

    [v7 setObject:v9 forKeyedSubscript:@"FallbackCategory"];
    v14 = objc_alloc(MEMORY[0x1E696AD98]);
    [dictCopy fallbackDelay];
    firstTxByteTimeStamp = [v14 initWithDouble:?];
    v16 = @"FallbackDelay";
    v17 = v7;
    v18 = firstTxByteTimeStamp;
    goto LABEL_12;
  }

  if ([dictCopy pathType] == 1)
  {
    edgeType = [dictCopy edgeType];
    if (edgeType <= 3)
    {
      v9 = off_1E7A30818[edgeType];
    }

    [v7 setObject:v9 forKeyedSubscript:@"EdgeType"];
    edgeAddress = [dictCopy edgeAddress];
    if (edgeAddress)
    {
      edgeAddress2 = [dictCopy edgeAddress];
      [v7 setObject:edgeAddress2 forKeyedSubscript:@"EdgeAddress"];
    }

    else
    {
      [v7 setObject:@"unknown" forKeyedSubscript:@"EdgeAddress"];
    }

    firstTxByteTimeStamp = [dictCopy firstTxByteTimeStamp];
    if (firstTxByteTimeStamp)
    {
      firstTxByteTimeStamp2 = [dictCopy firstTxByteTimeStamp];
      v23 = [firstTxByteTimeStamp2 description];
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

  if ([dictCopy isMultipath])
  {
    v24 = @"yes";
  }

  else
  {
    v24 = @"no";
  }

  [v7 setObject:v24 forKeyedSubscript:@"IsMultipath"];
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dictCopy, "multipathSubflowCount")}];
  [v7 setObject:v25 forKeyedSubscript:@"SubflowCount"];

  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dictCopy, "multipathConnectedSubflowCount")}];
  [v7 setObject:v26 forKeyedSubscript:@"ConnectedSubflowCount"];

  if ([dictCopy isTFOProbeSucceeded])
  {
    v27 = @"yes";
  }

  else
  {
    v27 = @"no";
  }

  [v7 setObject:v27 forKeyedSubscript:@"IsTFOProbeSucceeded"];
  if (if_indextoname([dictCopy multipathPrimarySubflowInterfaceIndex], v79))
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v79];
    [v7 setObject:v28 forKeyedSubscript:@"PrimarySubflowInterface"];
  }

  multipathSubflowSwitchCounts = [dictCopy multipathSubflowSwitchCounts];
  if (multipathSubflowSwitchCounts)
  {
    v30 = multipathSubflowSwitchCounts;
    multipathSubflowSwitchCounts2 = [dictCopy multipathSubflowSwitchCounts];
    v32 = [multipathSubflowSwitchCounts2 count];

    if (v32)
    {
      multipathSubflowSwitchCounts3 = [dictCopy multipathSubflowSwitchCounts];
      [v7 setObject:multipathSubflowSwitchCounts3 forKeyedSubscript:@"SwitchCounts"];
    }
  }

  [dictCopy connectionDelay];
  if (v34 > 0.0)
  {
    v35 = MEMORY[0x1E696AD98];
    [dictCopy connectionDelay];
    v36 = [v35 numberWithDouble:?];
    [v7 setObject:v36 forKeyedSubscript:@"ConnectionDelay"];
  }

  [dictCopy firstTxByteDelay];
  if (v37 > 0.0)
  {
    v38 = MEMORY[0x1E696AD98];
    [dictCopy firstTxByteDelay];
    v39 = [v38 numberWithDouble:?];
    [v7 setObject:v39 forKeyedSubscript:@"FirstTxByteDelay"];
  }

  [dictCopy timeToFirstByte];
  if (v40 > 0.0)
  {
    v41 = MEMORY[0x1E696AD98];
    [dictCopy timeToFirstByte];
    v42 = [v41 numberWithDouble:?];
    [v7 setObject:v42 forKeyedSubscript:@"TimeToFirstByte"];
  }

  if ([dictCopy tunnelConnectionError])
  {
    v43 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(dictCopy, "tunnelConnectionError")}];
    [v7 setObject:v43 forKeyedSubscript:@"ConnectionError"];
  }

  tCPInfo = [dictCopy TCPInfo];
  if (tCPInfo)
  {
    v45 = tCPInfo;
    tCPInfo2 = [dictCopy TCPInfo];
    v47 = [tCPInfo2 count];

    if (v47)
    {
      v67 = v7;
      v70 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      obj = [dictCopy TCPInfo];
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
            tCPInfo3 = [dictCopy TCPInfo];
            [tCPInfo3 objectForKeyedSubscript:v49];
            v52 = v51 = dictCopy;

            bytes = [v52 bytes];
            v76[0] = @"TxBytes";
            v54 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(bytes + 76)];
            v77[0] = v54;
            v76[1] = @"TxPackets";
            v55 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(bytes + 68)];
            v77[1] = v55;
            v76[2] = @"RxBytes";
            v56 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(bytes + 108)];
            v77[2] = v56;
            v76[3] = @"RxPackets";
            v57 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(bytes + 100)];
            v77[3] = v57;
            v76[4] = @"Resend";
            v58 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(bytes + 284)];
            v77[4] = v58;
            v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:5];

            [v70 setObject:v59 forKeyedSubscript:v49];
            dictCopy = v51;
          }

          v71 = [obj countByEnumeratingWithState:&v72 objects:v78 count:16];
        }

        while (v71);
      }

      v7 = v67;
      [v67 setObject:v70 forKeyedSubscript:@"TCPMetrics"];
    }
  }

  [dictCopy timeIntervalSinceLastUsage];
  if (v60 > 0.0)
  {
    v61 = MEMORY[0x1E696AD98];
    [dictCopy timeIntervalSinceLastUsage];
    v62 = [v61 numberWithDouble:?];
    [v7 setObject:v62 forKeyedSubscript:@"TimeSinceLastUsage"];
  }

  if ([dictCopy TFOSucceeded])
  {
    v63 = @"yes";
  }

  else
  {
    v63 = @"no";
  }

  [v7 setObject:v63 forKeyedSubscript:@"TFOSucceeded"];
  timingIntervals = [dictCopy timingIntervals];
  [v7 setObject:timingIntervals forKeyedSubscript:@"TimingIntervals"];

  v7 = v7;
  v10 = v7;
LABEL_57:

  v65 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (BOOL)printDictionaryAsJson:(id)json debugName:(id)name
{
  jsonCopy = json;
  nameCopy = name;
  if (![MEMORY[0x1E696ACB0] isValidJSONObject:jsonCopy])
  {
    printf("%s are not a valid JSON object\n", [nameCopy UTF8String]);
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v14 = 0;
  v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:jsonCopy options:1 error:&v14];
  v8 = v14;
  if (!v7)
  {
    uTF8String = [nameCopy UTF8String];
    v12 = [v8 description];
    printf("Failed to create JSON data from the %s: %s\n", uTF8String, [v12 UTF8String]);

    goto LABEL_6;
  }

  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
  puts([v9 UTF8String]);

  v10 = 1;
LABEL_7:

  return v10;
}

+ (id)endpointFromString:(id)string defaultPortString:(id)portString
{
  v31 = *MEMORY[0x1E69E9840];
  portStringCopy = portString;
  v6 = [NPUtilities stripWhitespace:string];
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
    if (portStringCopy)
    {
      v17 = [MEMORY[0x1E6977E28] endpointWithHostname:v6 port:portStringCopy];
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

+ (BOOL)compareAddressEndpoints:(id)endpoints endpoint2:(id)endpoint2 addressOnly:(BOOL)only
{
  endpointsCopy = endpoints;
  endpoint2Copy = endpoint2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = endpoint2Copy;
      address = [endpointsCopy address];
      address2 = [v9 address];
      v12 = address[1];
      if (v12 == address2[1])
      {
        if (v12 == 30)
        {
          if (*address >= 0x1Cu && *address2 >= 0x1Cu && (only || *(address + 1) == *(address2 + 1)))
          {
            v13 = *(address + 1) == *(address2 + 1) && *(address + 2) == *(address2 + 2);
            goto LABEL_22;
          }
        }

        else if (v12 == 2 && *address >= 0x10u && *address2 >= 0x10u && (only || *(address + 1) == *(address2 + 1)))
        {
          v13 = *(address + 1) == *(address2 + 1);
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

+ (id)getInterfaceTypeString:(int64_t)string
{
  if ((string - 1) > 2)
  {
    return @"Other";
  }

  else
  {
    return off_1E7A30838[string - 1];
  }
}

+ (BOOL)rollDiceWithSuccessRatio:(id)ratio
{
  v14 = *MEMORY[0x1E69E9840];
  ratioCopy = ratio;
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

    [ratioCopy doubleValue];
    v7 = v4 < v6;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)timestampIdentifierToName:(unint64_t)name
{
  if (name - 1 > 0xE)
  {
    return @"EnableNSP";
  }

  else
  {
    return off_1E7A30850[name - 1];
  }
}

+ (id)copyDataHexString:(id)string
{
  v14 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = v13;
    memset(v13, 0, sizeof(v13));
    bytes = [stringCopy bytes];
    v12 = 60;
    if ([stringCopy length])
    {
      v6 = 0;
      do
      {
        snprintf(v4, 3uLL, "%02x", *(bytes + v6));
        v7 = v4 + 2;
        v8 = v4 + 2 - &v12;
        if (v6 && (v6 & 3) == 0 && v8 <= 254)
        {
          v4[2] = 32;
          v7 = v4 + 3;
          v8 = v4 + 3 - &v12;
        }

        if (++v6 >= [stringCopy length])
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

+ (id)copyNetworkDescription:(id)description
{
  descriptionCopy = description;
  v4 = [descriptionCopy objectForKeyedSubscript:@"InterfaceType"];
  v5 = [descriptionCopy objectForKeyedSubscript:@"Signature"];

  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = +[NPUtilities getInterfaceTypeString:](NPUtilities, "getInterfaceTypeString:", [v4 intValue]);
  v8 = [NPUtilities copyDataHexString:v5];
  v9 = [v6 initWithFormat:@"(%@): %@", v7, v8];

  return v9;
}

+ (int64_t)certificateDateIsValid:(__SecCertificate *)valid
{
  v33 = *MEMORY[0x1E69E9840];
  if (valid)
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

+ (void)postNotification:(id)notification value:(unint64_t)value
{
  notificationCopy = notification;
  v6 = NPGetInternalQueue();
  dispatch_assert_queue_V2(v6);

  out_token = -1;
  if (!notify_register_check([notificationCopy UTF8String], &out_token))
  {
    valueCopy = 0;
    if (notify_get_state(out_token, &valueCopy) || valueCopy != value)
    {
      valueCopy = value;
      if (!notify_set_state(out_token, value))
      {
        notify_post([notificationCopy UTF8String]);
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

+ (id)machoUUIDFromPID:(int)d
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = 0;
  memset(buffer, 0, sizeof(buffer));
  v4 = 0;
  if (proc_pidinfo(d, 17, 1uLL, buffer, 56) == 56)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:buffer];
  }

  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109378;
    v8[1] = d;
    v9 = 2112;
    v10 = v4;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Mach-O UUID for process PID=%d is %@", v8, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)createAddressStringFromBuffer:(unint64_t)buffer addressLen:(uint64_t)len family:
{
  v12 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (!a2)
  {
    v8 = 0;
    goto LABEL_9;
  }

  if (len == 2)
  {
    v7 = 2;
LABEL_8:
    inet_ntop(v7, a2, v11, 0x40u);
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    goto LABEL_9;
  }

  v8 = 0;
  if (buffer >= 0x10 && len == 30)
  {
    v7 = 30;
    goto LABEL_8;
  }

LABEL_9:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)createMaskedIPv4Address:(id)address prefix:(unint64_t)prefix
{
  v15 = *MEMORY[0x1E69E9840];
  if (address)
  {
    addressCopy = address;
    objc_opt_self();
    if (prefix < 0x21)
    {
      __b = 0;
      if (prefix >= 8)
      {
        v8 = prefix >> 3;
        memset(&__b, 255, prefix >> 3);
      }

      else
      {
        v8 = 0;
      }

      if ((prefix & 7) != 0)
      {
        *(&__b + v8) = 0xFF00u >> (prefix & 7);
      }

      v7 = [NPUtilities createAddressStringFromBuffer:4uLL addressLen:2 family:?];
      if (v7)
      {
        v12 = 0;
        __b = 0;
        inet_pton(2, [addressCopy UTF8String], &__b);
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

+ (id)createMaskedIPv6Address:(id)address prefix:(unint64_t)prefix
{
  v13 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  if (addressCopy)
  {
    objc_opt_self();
    v6 = 0;
    __b = 0uLL;
    if (prefix >= 8)
    {
      v6 = prefix >> 3;
      memset(&__b, 255, prefix >> 3);
    }

    if ((prefix & 7) != 0)
    {
      __b.i8[v6] = 0xFF00u >> (prefix & 7);
    }

    v7 = [NPUtilities createAddressStringFromBuffer:0x10uLL addressLen:30 family:?];
    if (v7)
    {
      __b = 0uLL;
      v11 = 0uLL;
      inet_pton(30, [addressCopy UTF8String], &__b);
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

+ (id)copyUUIDsForSigningIdentifier:(id)identifier executablePath:(id)path
{
  identifierCopy = identifier;
  pathCopy = path;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  [identifierCopy UTF8String];
  [pathCopy UTF8String];
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

+ (id)mergeHTTPHeaders:(id)headers headerOverrides:(id)overrides
{
  v35 = *MEMORY[0x1E69E9840];
  headersCopy = headers;
  overridesCopy = overrides;
  if (overridesCopy)
  {
    v24 = headersCopy;
    if (headersCopy)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:headersCopy];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v8 = v7;
    v9 = [overridesCopy componentsSeparatedByString:{@";", overridesCopy}];;
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
            firstObject = [v14 firstObject];
            v16 = [firstObject length];

            if (!v16)
            {
              goto LABEL_26;
            }

            firstObject2 = [v14 firstObject];
            lastObject = [v14 lastObject];
            if (-[NSObject count](v14, "count") == 1 || ![lastObject length])
            {
              v20 = nplog_obj();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                v25 = [v8 objectForKey:firstObject2];
                *buf = 138412546;
                v31 = firstObject2;
                v32 = 2112;
                v33 = v25;
                _os_log_debug_impl(&dword_1AE7E2000, v20, OS_LOG_TYPE_DEBUG, "Removing header %@ due to user-configured headers, current value is %@", buf, 0x16u);
              }

              [v8 removeObjectForKey:firstObject2];
            }

            else
            {
              [v8 setValue:lastObject forKey:firstObject2];
              v19 = nplog_obj();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v31 = firstObject2;
                v32 = 2112;
                v33 = lastObject;
                _os_log_debug_impl(&dword_1AE7E2000, v19, OS_LOG_TYPE_DEBUG, "Adding/replacing header %@ with value %@ due to user-configured headers", buf, 0x16u);
              }
            }
          }

          else
          {
            firstObject2 = nplog_obj();
            if (os_log_type_enabled(firstObject2, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v31 = v14;
              _os_log_error_impl(&dword_1AE7E2000, firstObject2, OS_LOG_TYPE_ERROR, "Skipping malformed header override: %@", buf, 0xCu);
            }
          }

LABEL_26:
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v11);
    }

    overridesCopy = v23;
    headersCopy = v24;
  }

  else
  {
    v8 = headersCopy;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v8;
}

@end