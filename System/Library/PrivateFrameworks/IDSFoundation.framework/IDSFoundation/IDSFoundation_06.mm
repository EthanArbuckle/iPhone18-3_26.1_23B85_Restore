uint64_t sub_1A7CAA8FC(const char *a1, int a2, char *__s2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!__s2)
  {
    return 0;
  }

  if (!strncmp(a1, __s2, 0x10uLL))
  {
    return 1;
  }

  memset(__s1, 170, sizeof(__s1));
  result = getEffectiveInterface(a1, a2, __s1, 0);
  if (result)
  {
    return strncmp(__s1, __s2, 0x10uLL) == 0;
  }

  return result;
}

uint64_t sub_1A7CAA9BC(int a1, int a2)
{
  v2 = a2;
  v17 = *MEMORY[0x1E69E9840];
  v3 = socket(a2, 2, 0);
  if (v3 < 0)
  {
    v7 = *__error();
    IDSAssertNonFatalErrnoWithSource(v7, "GL getExtendedFlags", "/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSGlobalLinkUtil.m", 1846);
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "getExtendedFlags";
      v13 = 1024;
      v14 = v7;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "%s socket failed errno=%d", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"%s socket failed errno=%d");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"%s socket failed errno=%d");
        }
      }
    }
  }

  else
  {
    v4 = v3;
    IDSCheckFileDescriptorUsageWithSource("IDSGlobalLinkUtil.m", 1851, 0);
    v15 = 0u;
    v16 = 0u;
    BYTE1(v16) = v2;
    __strlcpy_chk();
    v5 = ioctl(v4, 0xC020698EuLL, &v15);
    close(v4);
    if ((v5 & 0x80000000) == 0)
    {
      return v16;
    }

    v9 = *__error();
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "getExtendedFlags";
      v13 = 1024;
      v14 = v9;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "%s ioctl(SIOCGIFEFLAGS) failed errno=%d", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"%s ioctl(SIOCGIFEFLAGS) failed errno=%d");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"%s ioctl(SIOCGIFEFLAGS) failed errno=%d");
      }
    }
  }

  return 0;
}

uint64_t sub_1A7CAACB0(uint64_t a1, _OWORD *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = socket(30, 2, 0);
  if (v3 < 0)
  {
    v7 = *__error();
    IDSAssertNonFatalErrnoWithSource(v7, "GL getIPv6Flags", "/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSGlobalLinkUtil.m", 1799);
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "getIPv6Flags";
      v13 = 1024;
      v14 = v7;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "%s socket failed errno=%d", buf, 0x12u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"GL", @"IDS", @"%s socket failed errno=%d");
        result = _IDSShouldLog();
        if (result)
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"%s socket failed errno=%d");
          return 0;
        }
      }
    }
  }

  else
  {
    v4 = v3;
    IDSCheckFileDescriptorUsageWithSource("IDSGlobalLinkUtil.m", 1804, 0);
    memset(v15, 0, sizeof(v15));
    __strlcpy_chk();
    v15[1] = *a2;
    *(&v15[1] + 12) = *(a2 + 12);
    v5 = ioctl(v4, 0xC1206949uLL, v15);
    close(v4);
    if ((v5 & 0x80000000) == 0)
    {
      return LODWORD(v15[1]);
    }

    v9 = *__error();
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "getIPv6Flags";
      v13 = 1024;
      v14 = v9;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "%s ioctl(SIOCGIFAFLAG_IN6) failed errno=%d", buf, 0x12u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"GL", @"IDS", @"%s ioctl(SIOCGIFAFLAG_IN6) failed errno=%d");
        result = _IDSShouldLog();
        if (result)
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"%s ioctl(SIOCGIFAFLAG_IN6) failed errno=%d");
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t GLUGetExtendedFlagsForInterface(void *a1)
{
  v1 = a1;
  v2 = [v1 name];
  v3 = [v2 UTF8String];

  v4 = [v1 address];

  v5 = sub_1A7CAA9BC(v3, *([v4 sa] + 1));
  return v5;
}

id GLUtilGetRemainingInterfaces(void *a1)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v8 = -1;
  v11[0] = 0;
  v11[1] = 0;
  v7 = 0;
  if (GLUtilGetDefaultInterface(&v8, v11, &v7))
  {
    v2 = GLUtilGetExcludedInterfaceAddressList(v8, v11, v1);
    v3 = [v1 mutableCopy];
    [v3 removeObjectsInArray:v2];
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "GLUtilGetRemainingInterfaces: remaining interfaces:%@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"GLUtilGetRemainingInterfaces: remaining interfaces:%@.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"GLUtilGetRemainingInterfaces: remaining interfaces:%@.");
        }
      }
    }
  }

  else
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "GLUtilGetRemainingInterfaces: Failed to get default interface, can not get remaining interfaces after exclusion!", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"GLUtilGetRemainingInterfaces: Failed to get default interface, can not get remaining interfaces after exclusion!");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"GLUtilGetRemainingInterfaces: Failed to get default interface, can not get remaining interfaces after exclusion!");
        }
      }
    }

    v3 = 0;
  }

  return v3;
}

uint64_t GLUtilGetPreferredRemoteInterface(char a1)
{
  if ((a1 - 1) > 7u)
  {
    return 0;
  }

  else
  {
    return dword_1A7E40FA8[(a1 - 1)];
  }
}

uint64_t GLUtilGetPreferredLocalInterface(int a1)
{
  v1 = 2 * ((a1 - 1) < 2);
  if (a1 == 8)
  {
    v1 = 1;
  }

  if (a1 == 4)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t GLUtilShouldSetRemoteInterfacePreference(int a1, int a2)
{
  if (a1)
  {
    return a2 ^ 1u;
  }

  else
  {
    return 0;
  }
}

unint64_t GLUtilStunTransportChar(unint64_t a1)
{
  v1 = 0x535452503FuLL >> (8 * a1);
  if (a1 >= 5)
  {
    LOBYTE(v1) = 63;
  }

  return v1 & 0x7F;
}

__CFString *GLUtilStunTransportString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"?";
  }

  else
  {
    return off_1E77E2A78[a1 - 1];
  }
}

uint64_t GLUtilIDSStunTransportToBearer(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    return -1;
  }

  else
  {
    return (0x6000600110011uLL >> (16 * (a1 - 1)));
  }
}

BOOL GLUtilUnderPerformanceTesting(void *a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 local];
  if ([v4 radioAccessTechnology])
  {

    v5 = 0;
  }

  else
  {
    v7 = [v3 remote];
    v8 = [v7 radioAccessTechnology];

    v5 = 0;
    if (!v8 && a2)
    {
      memset(v23, 0, sizeof(v23));
      v9 = [v3 local];
      v10 = *([v9 address] + 1) == 30;

      v11 = [v3 local];
      v12 = [v11 address];

      v13 = [v3 remote];
      v14 = [v13 external];

      if (v10)
      {
        *(v23 + 8) = *(v12 + 8);
        *(&v23[1] + 8) = *(v14 + 8);
        v15 = *(v12 + 2);
        v16 = *(v14 + 2);
        v17 = 96;
      }

      else
      {
        v15 = *(v12 + 2);
        v16 = *(v14 + 2);
        DWORD2(v23[0]) = *(v12 + 4);
        DWORD2(v23[1]) = *(v14 + 4);
        v17 = 4;
      }

      BYTE2(v23[0]) = v17;
      WORD2(v23[0]) = v15;
      WORD3(v23[0]) = v16;
      v18 = [v3 local];
      v19 = [v18 transport];

      v5 = v19 == 2;
      if (v19 == 2)
      {
        BYTE3(v23[0]) = 17;
        if (sysctlbyname("net.link.generic.system.flow_key_trace", 0, 0, v23, 0x30uLL))
        {
          v20 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *__error();
            *buf = 67109120;
            v25 = v21;
            _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "Failed to send flow_key, sysctl returned %d", buf, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              __error();
              _IDSLogTransport(@"GL", @"IDS", @"Failed to send flow_key, sysctl returned %d");
              if (_IDSShouldLog())
              {
                __error();
                _IDSLogV(0, @"IDSFoundation", @"GL", @"Failed to send flow_key, sysctl returned %d");
              }
            }
          }
        }

        else
        {
          v22 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "Succeeded in sending flow_key", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"Succeeded in sending flow_key");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"Succeeded in sending flow_key");
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

uint64_t GLUtilHasVPNInterfaceForSelectedAddress(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a2;
  v6 = GLUtilGetRemainingInterfaces(v5);
  v7 = v6;
  if (!v6)
  {
    v9 = 0;
    goto LABEL_25;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v9)
  {
    goto LABEL_24;
  }

  v20 = v7;
  v21 = v5;
  v10 = *v23;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v22 + 1) + 8 * i);
      v13 = [v4 delegatedName];
      if (v13)
      {
        v2 = [v12 delegatedName];
        if (!v2)
        {
          v16 = 1;
LABEL_15:

          goto LABEL_16;
        }
      }

      v14 = [v12 delegatedName];
      if (v14)
      {
        v15 = [v4 delegatedName];
        v16 = v15 == 0;
      }

      else
      {
        v16 = 0;
      }

      if (v13)
      {
        goto LABEL_15;
      }

LABEL_16:

      v17 = [v4 isCellular];
      if (v17 == [v12 isCellular])
      {
        v18 = [v4 IPVersion];
        if (v18 == [v12 IPVersion] && v16)
        {
          v9 = 1;
          goto LABEL_23;
        }
      }
    }

    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_23:
  v7 = v20;
  v5 = v21;
LABEL_24:

LABEL_25:
  return v9;
}

__CFString *GLUtilStunTransportToProtocol(uint64_t a1, int a2)
{
  v2 = @"TCP";
  v3 = @"H2";
  if (!a2)
  {
    v3 = @"TCP";
    v2 = @"TLS";
  }

  if (a1 != 4)
  {
    v2 = @"UNKNOWN";
  }

  if (a1 == 3)
  {
    v2 = v3;
  }

  if (a1 == 2)
  {
    return @"QUIC";
  }

  else
  {
    return v2;
  }
}

uint64_t IDSQRProtoH3EndToEndChannelRegisterAckRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_32;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_32:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *IDSMPServiceIdentityTypeNameForType(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"A";
  }

  else
  {
    return 0;
  }
}

id _IDSServiceDictionaryRepresentableHash()
{
  v28[1] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28[0] = @"Identifier";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  context = objc_autoreleasePoolPush();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = sub_1A7ADB28C(0, 0);
  v16 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v16)
  {
    v14 = *v23;
    do
    {
      v1 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = v1;
        v2 = *(*(&v22 + 1) + 8 * v1);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v3 = v15;
        v4 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:{16, context}];
        if (v4)
        {
          v5 = v4;
          v6 = *v19;
          do
          {
            for (i = 0; i != v5; ++i)
            {
              if (*v19 != v6)
              {
                objc_enumerationMutation(v3);
              }

              v8 = [v2 objectForKey:*(*(&v18 + 1) + 8 * i)];
              if (v8)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v0 addObject:v8];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v9 = [v8 stringValue];
                    [v0 addObject:v9];
                  }
                }
              }
            }

            v5 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v5);
        }

        v1 = v17 + 1;
      }

      while (v17 + 1 != v16);
      v16 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v16);
  }

  objc_autoreleasePoolPop(context);
  [v0 sortUsingSelector:sel_caseInsensitiveCompare_];
  v10 = [v0 SHA256HexString];

  return v10;
}

uint64_t IDSQRProtoParticipantUpdateParticipantUpdateReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoGetMaterialResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(IDSQRProtoMaterial);
        [a1 addMaterials:v13];
        v16[0] = 0xAAAAAAAAAAAAAAAALL;
        v16[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoMaterialReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoPluginControlPluginControlReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t writeIDSGLAttrAddress(unsigned __int16 *a1, uint64_t a2, int *a3)
{
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4 || a3 == 0;
  result = !v5;
  if (!v5)
  {
    *a2 = bswap32(*a1) >> 16;
    *(a2 + 4) = 0;
    if (*(a1 + 9) == 30)
    {
      if (*(a1 + 4) || *(a1 + 5) || *(a1 + 6) != -65536)
      {
        *(a2 + 5) = 2;
        *(a2 + 6) = a1[5];
        *(a2 + 8) = *(a1 + 1);
        v8 = 24;
        goto LABEL_19;
      }

      *(a2 + 5) = 1;
      *(a2 + 6) = a1[5];
      v7 = *(a1 + 7);
    }

    else
    {
      *(a2 + 5) = 1;
      *(a2 + 6) = a1[5];
      v7 = *(a1 + 3);
    }

    *(a2 + 8) = v7;
    v8 = 12;
LABEL_19:
    *(a2 + 2) = (v8 << 8) - 1024;
    *a3 = v8;
  }

  return result;
}

uint64_t writeIDSGLAttrU16(unsigned __int16 *a1, _WORD *a2, _DWORD *a3)
{
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4 || a3 == 0;
  result = !v5;
  if (!v5)
  {
    *a2 = bswap32(*a1) >> 16;
    a2[1] = 512;
    a2[2] = bswap32(a1[4]) >> 16;
    *a3 = 6;
  }

  return result;
}

uint64_t writeIDSGLAttrU32(unsigned __int16 *a1, uint64_t a2, _DWORD *a3)
{
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4 || a3 == 0;
  result = !v5;
  if (!v5)
  {
    *a2 = bswap32(*a1) >> 16;
    *(a2 + 2) = 1024;
    *(a2 + 4) = bswap32(*(a1 + 2));
    *a3 = 8;
  }

  return result;
}

uint64_t writeIDSGLAttrU64(unsigned __int16 *a1, uint64_t a2, _DWORD *a3)
{
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4 || a3 == 0;
  result = !v5;
  if (!v5)
  {
    *a2 = bswap32(*a1) >> 16;
    *(a2 + 2) = 2048;
    *(a2 + 4) = *(a1 + 1);
    *a3 = 12;
  }

  return result;
}

uint64_t writeIDSGLAttrBinaryData(unsigned __int16 *a1, _WORD *a2, int *a3)
{
  if (a1)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3 || a3 == 0;
  v5 = !v4;
  if (!v4)
  {
    *a2 = bswap32(*a1) >> 16;
    memcpy(a2 + 2, a1 + 6, *(a1 + 2));
    v9 = *(a1 + 2) + 4;
    a2[1] = bswap32(*(a1 + 2)) >> 16;
    *a3 = v9;
  }

  return v5;
}

uint64_t readIDSGLAttrAddress(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a4 <= 1)
  {
    v5 = +[IDSFoundationLog GlobalLink];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 67109120;
      v16 = a4;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "ERROR: readIDSGLAttrAddress: inputBufferLength: %d < 2, return", &v15, 8u);
    }

    return 0;
  }

  v6 = a4 - 2;
  if (*(a3 + 1) != 2)
  {
    v9 = a4 - 4;
    if (a4 >= 4)
    {
      if (a4 > 7)
      {
        v10 = *(a3 + 2);
        v11 = *(a3 + 4);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 8) = 528;
        *(a1 + 12) = v11;
        *(a1 + 10) = v10;
        return 1;
      }

      v13 = +[IDSFoundationLog GlobalLink];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 67109120;
        v16 = v9;
        v14 = "ERROR: readIDSGLAttrAddress: IPv4: inputBufferLength = %d < 4, return";
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    v13 = +[IDSFoundationLog GlobalLink];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v15 = 67109120;
    v16 = v6;
    v14 = "ERROR: readIDSGLAttrAddress: IPv4: inputBufferLength = %d < 2, return";
LABEL_21:
    _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, v14, &v15, 8u);
    goto LABEL_22;
  }

  v7 = a4 - 4;
  if (a4 < 4)
  {
    v13 = +[IDSFoundationLog GlobalLink];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v15 = 67109120;
    v16 = v6;
    v14 = "ERROR: readIDSGLAttrAddress: IPv6: inputBufferLength = %d < 2, return";
    goto LABEL_21;
  }

  v8 = *(a3 + 2);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 7708;
  *(a1 + 10) = v8;
  if (a4 > 0x13)
  {
    *(a1 + 16) = *(a3 + 4);
    return 1;
  }

  v13 = +[IDSFoundationLog GlobalLink];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 67109120;
    v16 = v7;
    v14 = "ERROR: readIDSGLAttrAddress: IPv6: inputBufferLength = %d < 16, return";
    goto LABEL_21;
  }

LABEL_22:

  return 0;
}

BOOL readIDSGLAttrU16(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, int a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a4 <= 1)
  {
    v5 = +[IDSFoundationLog GlobalLink];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = a4;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "ERROR: readIDSGLAttrU16 inputBufferLength = %d < 2, return", v7, 8u);
    }
  }

  else
  {
    *(a1 + 8) = bswap32(*a3) >> 16;
    *a2 = 2;
  }

  return a4 > 1;
}

BOOL readIDSGLAttrU32(uint64_t a1, _DWORD *a2, unsigned int *a3, int a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a4 <= 3)
  {
    v5 = +[IDSFoundationLog GlobalLink];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = a4;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "ERROR: readIDSGLAttrU32 inputBufferLength = %d < 4, return", v7, 8u);
    }
  }

  else
  {
    *(a1 + 8) = bswap32(*a3);
    *a2 = 4;
  }

  return a4 > 3;
}

BOOL readIDSGLAttrU64(uint64_t a1, _DWORD *a2, void *a3, unsigned int a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a4 <= 7)
  {
    v5 = +[IDSFoundationLog GlobalLink];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109376;
      v7[1] = a4;
      v8 = 2048;
      v9 = 8;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "ERROR: readIDSGLAttrU64 inputBufferLength = %d < sizeof(uint64_t):%lu , return", v7, 0x12u);
    }
  }

  else
  {
    *(a1 + 8) = *a3;
    *a2 = 8;
  }

  return a4 > 7;
}

BOOL readIDSGLAttrBinaryData(uint64_t a1, int *a2, void *__src, int a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  *(a1 + 8) = v5;
  if (v5 > a4)
  {
    v7 = +[IDSFoundationLog GlobalLink];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *a2;
      v10[0] = 67109376;
      v10[1] = a4;
      v11 = 1024;
      v12 = v8;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "ERROR: readIDSGLAttrBinaryData inputBufferLength = %d < *attrLength: %d, return", v10, 0xEu);
    }
  }

  else
  {
    memcpy((a1 + 12), __src, v5);
  }

  return v5 <= a4;
}

uint64_t IDSQRProtoUnAllocBindResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoPutMaterialIndicationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 15)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v24) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v24 & 0x7F) << v15;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_40;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_40:
        *(a1 + 8) = v21;
        goto LABEL_41;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(IDSQRProtoMaterial);
        [a1 addMaterials:v14];
        v24 = 0xAAAAAAAAAAAAAAAALL;
        v25 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoMaterialReadFrom(v14, a2))
        {
          goto LABEL_43;
        }

LABEL_25:
        PBReaderRecallMark();

        goto LABEL_41;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(IDSQRProtoPutMaterialErrorIndication);
    objc_storeStrong((a1 + 24), v14);
    v24 = 0xAAAAAAAAAAAAAAAALL;
    v25 = 0xAAAAAAAAAAAAAAAALL;
    if (!PBReaderPlaceMark() || !IDSQRProtoPutMaterialErrorIndicationReadFrom(v14, a2))
    {
LABEL_43:

      return 0;
    }

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

void sub_1A7CB4D68()
{
  v0 = objc_alloc_init(IDSSysdiagnoseLogCollector);
  v1 = qword_1ED5DF740;
  qword_1ED5DF740 = v0;
}

void sub_1A7CB5088(uint64_t a1, void *a2)
{
  xdict = a2;
  IMPrintf();
  if (MEMORY[0x1AC5658A0](xdict) == MEMORY[0x1E69E9E80])
  {
    if (xpc_dictionary_get_BOOL(xdict, "success"))
    {
      xpc_dictionary_get_string(xdict, "path");
      IMPrintf();
      v8 = 0;
      goto LABEL_7;
    }

    IMPrintf();
    v3 = MEMORY[0x1E696ABC0];
    v4 = *MEMORY[0x1E696A798];
    v5 = &unk_1F1B22988;
    v6 = 5;
  }

  else
  {
    v3 = MEMORY[0x1E696ABC0];
    v4 = *MEMORY[0x1E696A798];
    v5 = &unk_1F1B229B0;
    v6 = 45;
  }

  v8 = [v3 errorWithDomain:v4 code:v6 userInfo:v5];
LABEL_7:
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v8);
  }
}

uint64_t IDSQRProtoStatsResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v49 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v49 & 0x7F) << v5;
        if ((v49 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v40 = 0;
        v41 = 0;
        v42 = 0;
        while (1)
        {
          v53 = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v53 & 0x7F) << v40;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_81;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v42;
        }

LABEL_81:
        v47 = 16;
LABEL_86:
        *(a1 + v47) = v20;
        goto LABEL_87;
      }

      if (v13 != 2)
      {
LABEL_68:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_87;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 32) |= 1u;
      while (1)
      {
        v54 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v54 & 0x7F) << v21;
        if ((v54 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v27 = 0;
          goto LABEL_92;
        }
      }

      if ([a2 hasError])
      {
        v27 = 0;
      }

      else
      {
        v27 = v23;
      }

LABEL_92:
      *(a1 + 8) = v27;
LABEL_87:
      v48 = [a2 position];
      if (v48 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 32) |= 4u;
        while (1)
        {
          v52 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v52 & 0x7F) << v28;
          if ((v52 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_73;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v30;
        }

LABEL_73:
        v47 = 24;
        break;
      case 4:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v51 = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v51 & 0x7F) << v34;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v11 = v35++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_77;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v36;
        }

LABEL_77:
        v47 = 20;
        break;
      case 5:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 8u;
        while (1)
        {
          v50 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v50 & 0x7F) << v14;
          if ((v50 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_85;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_85:
        v47 = 28;
        break;
      default:
        goto LABEL_68;
    }

    goto LABEL_86;
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoGoAwayGoAwayReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

id *sub_1A7CB6624(id *a1, unint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2 >= 0xFFFFFFFFFFFFFA18)
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = a2;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "Cannot create acket buffer, requestedSize too large: %zu", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"PacketBuffer", @"IDS", @"Cannot create acket buffer, requestedSize too large: %zu");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"PacketBuffer", @"Cannot create acket buffer, requestedSize too large: %zu");
        }
      }
    }

    return 0;
  }

  if (a2 < 0xFA19)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  v7 = a2 + 200;
  if (a2 < 0xFA19)
  {
    v7 = 64224;
  }

  if (a2 < 0x718)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  if (a2 >= 0x718)
  {
    v9 = v7;
  }

  else
  {
    v9 = 2015;
  }

  if (v8 == 2)
  {
    v10 = &unk_1EB2B85C4;
    v12 = &unk_1EB2B85B0;
    v11 = @"large";
    goto LABEL_25;
  }

  if (v8 != 3)
  {
    v10 = &unk_1EB2BB558;
    v12 = &unk_1EB2BB540;
    v11 = @"regular";
LABEL_25:
    if (qword_1EB2BB570 != -1)
    {
      sub_1A7E20AEC();
    }

    if (byte_1EB2BB56C == 1)
    {
      v4 = OSAtomicDequeue(v12, 0);
      if (v4)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_29;
  }

  v10 = &unk_1EB2BC190;
  v11 = @"custom";
LABEL_29:
  v4 = malloc_type_calloc(1uLL, v9 + 1312, 0x10900404F2A9649uLL);
  atomic_fetch_add(v10, 1u);
  v13 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = atomic_load(v10);
    *buf = 138412546;
    v17 = v11;
    v18 = 1024;
    v19 = v14;
    _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "%@ packet buffer count: %u", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      atomic_load(v10);
      _IDSLogTransport(@"PacketBuffer", @"IDS", @"%@ packet buffer count: %u");
      if (_IDSShouldLog())
      {
        atomic_load(v10);
        _IDSLogV(0, @"IDSFoundation", @"PacketBuffer", @"%@ packet buffer count: %u");
      }
    }
  }

LABEL_35:
  if (a1)
  {
    memcpy(v4, a1, 0x520uLL);
    *(v4 + 79) = 0u;
    objc_storeStrong(v4 + 158, a1[158]);
    objc_storeStrong(v4 + 159, a1[159]);
  }

  v4[1] = (v9 - 200);
  if (v9 - 200 < a2)
  {
    if (isRunningTests())
    {
      throwsIDSAbortException();
    }

    abort();
  }

  *v4 = v4 + 1510;
  *(v4 + 8) = 1;
  *(v4 + 36) = v8;
  return v4;
}

id *_IDSLinkPacketBufferCreateWithUserBuffer(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = sub_1A7CB6624(0, 0x717uLL);
  result[1] = a4;
  result[2] = a4;
  *result = a3;
  return result;
}

void _IDSLinkPacketBufferRetain(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    atomic_fetch_add((a3 + 32), 1u);
  }
}

void _IDSLinkPacketBufferRelease(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (!*(a3 + 32))
    {
      if (isRunningTests())
      {
        throwsIDSAbortException();
      }

      abort();
    }

    if (atomic_fetch_add((a3 + 32), 0xFFFFFFFF) == 1)
    {
      v4 = *(a3 + 1264);
      *(a3 + 1264) = 0;

      v5 = *(a3 + 1272);
      *(a3 + 1272) = 0;

      v6 = *(a3 + 36);
      bzero(a3, 0x520uLL);
      if (v6 == 3)
      {
        v7 = &unk_1EB2BC190;
        v8 = @"custom";
LABEL_23:
        free(a3);
        atomic_fetch_add(v7, 0xFFFFFFFF);
        v11 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = atomic_load(v7);
          *buf = 138412546;
          v14 = v8;
          v15 = 1024;
          v16 = v12;
          _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "release %@ packet buffer. count: %u", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            atomic_load(v7);
            _IDSLogTransport(@"PacketBuffer", @"IDS", @"release %@ packet buffer. count: %u");
            if (_IDSShouldLog())
            {
              atomic_load(v7);
              _IDSLogV(0, @"IDSFoundation", @"PacketBuffer", @"release %@ packet buffer. count: %u");
            }
          }
        }

        return;
      }

      if (qword_1EB2BB570 != -1)
      {
        sub_1A7E20AEC();
      }

      if (byte_1EB2BB56C != 1)
      {
        v10 = v6 == 2;
        if (v6 == 2)
        {
          v8 = @"large";
        }

        else
        {
          v8 = @"regular";
        }

        if (v10)
        {
          v7 = &unk_1EB2B85C4;
        }

        else
        {
          v7 = &unk_1EB2BB558;
        }

        goto LABEL_23;
      }

      if (v6 == 2)
      {
        v9 = &unk_1EB2B85B0;
      }

      else
      {
        v9 = &unk_1EB2BB540;
      }

      OSAtomicEnqueue(v9, a3, 0);
    }
  }
}

void IDSLinkPacketBufferCleanup()
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EB2BB570 != -1)
  {
    sub_1A7E20AEC();
  }

  if (byte_1EB2BB56C == 1)
  {
    v0 = OSAtomicDequeue(&stru_1EB2BB540, 0);
    if (v0)
    {
      v1 = 0;
      do
      {
        free(v0);
        ++v1;
        v0 = OSAtomicDequeue(&stru_1EB2BB540, 0);
      }

      while (v0);
      atomic_fetch_add(dword_1EB2BB558, -v1);
      v2 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = atomic_load(dword_1EB2BB558);
        *buf = 67109376;
        v9 = v1;
        v10 = 1024;
        v11 = v3;
        _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "packet buffer freed: %u remaining count: %u", buf, 0xEu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          atomic_load(dword_1EB2BB558);
          _IDSLogTransport(@"PacketBuffer", @"IDS", @"packet buffer freed: %u remaining count: %u");
          if (_IDSShouldLog())
          {
            atomic_load(dword_1EB2BB558);
            _IDSLogV(0, @"IDSFoundation", @"PacketBuffer", @"packet buffer freed: %u remaining count: %u");
          }
        }
      }
    }

    v4 = OSAtomicDequeue(&stru_1EB2B85B0, 0);
    if (v4)
    {
      v5 = 0;
      do
      {
        free(v4);
        v4 = OSAtomicDequeue(&stru_1EB2B85B0, 0);
        ++v5;
      }

      while (v4);
      atomic_fetch_add(&dword_1EB2B85C4, -v5);
      v6 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = atomic_load(&dword_1EB2B85C4);
        *buf = 67109376;
        v9 = v5;
        v10 = 1024;
        v11 = v7;
        _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "large packet buffer freed: %u remaining count: %u", buf, 0xEu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        atomic_load(&dword_1EB2B85C4);
        _IDSLogTransport(@"PacketBuffer", @"IDS", @"large packet buffer freed: %u remaining count: %u");
        if (_IDSShouldLog())
        {
          atomic_load(&dword_1EB2B85C4);
          _IDSLogV(0, @"IDSFoundation", @"PacketBuffer", @"large packet buffer freed: %u remaining count: %u");
        }
      }
    }
  }
}

id *_IDSLinkPacketBufferClone(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1A7CB6624(a3, *(a3 + 8));
  v5 = v4;
  if (v4)
  {
    v6 = v4 + *a3 - a3;
    v7 = *v4 + v4[1] - v6;
    *v4 = v6;
    v4[1] = v7;
    v4[2] = 0;
    sub_1A7CB7020(v4);
    memcpy(*v5, *a3, *(a3 + 16));
    *(v5 + 1) = *(a3 + 16);
  }

  return v5;
}

void *IDSLinkPacketBufferResetBufferStart(void *result, int a2)
{
  v2 = result + a2 + 1310;
  v3 = *result - v2 + result[1];
  *result = v2;
  result[1] = v3;
  result[2] = 0;
  return sub_1A7CB7020(result);
}

void *sub_1A7CB7020(void *result)
{
  if (*result - result <= 0x51FuLL)
  {
    if (isRunningTests())
    {

      throwsIDSAbortException();
    }

    abort();
  }

  return result;
}

void *IDSLinkPacketBufferAddBufferStart(void *result, int a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = (result[2] - a2) & ~((result[2] - a2) >> 63);
    result[1] -= a2;
    result[2] = v3;
    *result = v2 + a2;
    return sub_1A7CB7020(result);
  }

  return result;
}

uint64_t bufferChecksum(int8x16_t *a1, uint64_t a2, int a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = WORD1(a2);
  v7 = a2 & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1, a2);
  if (v7)
  {
    memset(v21 - 2 * v7, 170, v8);
  }

  v9 = a2 >> 4;
  v10 = a1;
  if (a1)
  {
    memcpy(v21 - 2 * v7, a1, v7);
    v10 = (v21 - 2 * v7);
  }

  if (v9 < 1)
  {
    v12 = 0uLL;
  }

  else
  {
    v11 = v9 + 1;
    v12 = 0uLL;
    do
    {
      v13 = *v10++;
      v12 = vpadalq_u16(v12, vrev16q_s8(v13));
      --v11;
    }

    while (v11 > 1);
  }

  v14 = a3 + a2 - 0xFFFF * v6 + vpadalq_u32(vdupq_laneq_s64(vpaddlq_u32(v12), 1), v12).u32[0];
  v15 = &a1->i8[a2];
  if (a2)
  {
    v16 = *--v15;
    v14 += v16 << 8;
  }

  v17 = (a2 >> 1) & 7;
  if (v17)
  {
    v18 = v15 - 1;
    v19 = v17 + 1;
    do
    {
      v14 += bswap32(*(v18 - 1)) >> 16;
      v18 -= 2;
      --v19;
    }

    while (v19 > 1);
  }

  if (v14 >= 0x10000)
  {
    do
    {
      v14 = HIWORD(v14) + v14;
    }

    while (HIWORD(v14));
  }

  return ~v14;
}

uint64_t sub_1A7CB720C()
{
  v9 = *MEMORY[0x1E69E9840];
  zone_name = malloc_get_zone_name(**MEMORY[0x1E69E9B68]);
  if (zone_name)
  {
    v1 = strcmp(zone_name, "ProbGuardMallocZone");
    v2 = v1 == 0;
    v3 = v1 != 0;
  }

  else
  {
    v2 = 0;
    v3 = 1;
  }

  byte_1EB2BB56C = v3;
  result = IMGetDomainBoolForKeyWithDefaultValue();
  byte_1EB2BB56C = result;
  if ((result & 1) == 0)
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v2)
      {
        v6 = @"YES";
      }

      *buf = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "Memory pool disabled! (PGM enabled: %@)", buf, 0xCu);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"PacketBuffer", @"IDS", @"Memory pool disabled! (PGM enabled: %@)");
        result = _IDSShouldLog();
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"PacketBuffer", @"Memory pool disabled! (PGM enabled: %@)");
        }
      }
    }
  }

  return result;
}

id sub_1A7CB754C(void *a1)
{
  v1 = [a1 subdataWithRange:{0, 20}];
  v2 = [v1 debugDescription];

  v3 = MEMORY[0x1E696AEC0];
  v4 = [v2 substringToIndex:{objc_msgSend(v2, "length") - 1}];
  v5 = [v3 stringWithFormat:@"%@ ...>", v4];

  return v5;
}

void sub_1A7CB78E8(uint64_t a1, void *a2, unint64_t a3)
{
  v12 = a2;
  if (!a3 && (*(a1 + 48) & 0x10) != 0)
  {
    [*(a1 + 32) appendString:@"\n"];
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  if ((v5 & 0x10) != 0 && (v6 & 0x8000000000000000) == 0)
  {
    v7 = -1;
    do
    {
      [*(a1 + 32) appendString:@"  "];
      v6 = *(a1 + 56);
      ++v7;
    }

    while (v7 < v6);
    v5 = *(a1 + 48);
  }

  v8 = *(a1 + 32);
  v9 = [*(a1 + 64) descriptionForObject:v12 options:v5 level:v6 + 1];
  [v8 appendString:v9];

  if ([*(a1 + 40) count] - 1 > a3)
  {
    v10 = *(a1 + 32);
    if ((*(a1 + 48) & 0x10) != 0)
    {
      v11 = @",\n";
    }

    else
    {
      v11 = @", ";
    }

    goto LABEL_13;
  }

  if ([*(a1 + 40) count] - 1 == a3 && (*(a1 + 48) & 0x10) != 0)
  {
    v10 = *(a1 + 32);
    v11 = @"\n";
LABEL_13:
    [v10 appendString:v11];
  }
}

uint64_t IDSQRProtoParticipantUpdateResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v43[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43[0] & 0x7F) << v5;
        if ((v43[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 16)
      {
        break;
      }

      if (v13 == 2)
      {
        if ((v12 & 7) == 2)
        {
          v43[0] = 0xAAAAAAAAAAAAAAAALL;
          v43[1] = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v22 = [a2 position];
            if (v22 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v23 = 0;
            v24 = 0;
            v25 = 0;
            while (1)
            {
              v44 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v44 & 0x7F) << v23;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                goto LABEL_43;
              }
            }

            [a2 hasError];
LABEL_43:
            PBRepeatedUInt64Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          while (1)
          {
            LOBYTE(v43[0]) = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v43[0] & 0x7F) << v37;
            if ((v43[0] & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              goto LABEL_77;
            }
          }

          [a2 hasError];
LABEL_77:
          PBRepeatedUInt64Add();
        }

        goto LABEL_64;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v43[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v43[0] & 0x7F) << v14;
          if ((v43[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_62;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_62:
        v35 = 32;
LABEL_63:
        *(a1 + v35) = v20;
        goto LABEL_64;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_64:
      v36 = [a2 position];
      if (v36 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v29 = 0;
    v30 = 0;
    v31 = 0;
    *(a1 + 40) |= 1u;
    while (1)
    {
      LOBYTE(v43[0]) = 0;
      v32 = [a2 position] + 1;
      if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
      {
        v34 = [a2 data];
        [v34 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v31 |= (v43[0] & 0x7F) << v29;
      if ((v43[0] & 0x80) == 0)
      {
        break;
      }

      v29 += 7;
      v11 = v30++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_58;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v31;
    }

LABEL_58:
    v35 = 36;
    goto LABEL_63;
  }

  return [a2 hasError] ^ 1;
}

id sub_1A7CBA720()
{
  if (qword_1EB2BBC08 != -1)
  {
    sub_1A7E20B50();
  }

  v1 = qword_1EB2BBC10;

  return v1;
}

uint64_t sub_1A7CBA818()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBC10 = result;
  return result;
}

void sub_1A7CBA848()
{
  v0 = *MEMORY[0x1AC5631C0]("APSEnvironmentProduction", @"ApplePushService");

  objc_storeStrong(&qword_1EB2BBC00, v0);
}

void sub_1A7CBA88C()
{
  v0 = *MEMORY[0x1AC5631C0]("APSConnectionOverrideNamedDelegatePort", @"ApplePushService");

  objc_storeStrong(&qword_1EB2BBBF0, v0);
}

uint64_t IDSQRProtoUnAllocBindLeaveInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v31[0] & 0x7F) << v22;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_46:
        *(a1 + 24) = v28;
      }

      else if (v13 == 2)
      {
        v21 = objc_alloc_init(IDSQRProtoMaterial);
        objc_storeStrong((a1 + 16), v21);
        v31[0] = 0xAAAAAAAAAAAAAAAALL;
        v31[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoMaterialReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31[0] & 0x7F) << v14;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_50;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_50:
        *(a1 + 8) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v40 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v21 = PBReaderReadData();
          v22 = 8;
        }

        else
        {
          if (v13 != 2)
          {
LABEL_53:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_66;
          }

          v21 = PBReaderReadData();
          v22 = 24;
        }

        v36 = *(a1 + v22);
        *(a1 + v22) = v21;
      }

      else
      {
        if (v13 == 3)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            v42 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v42 & 0x7F) << v23;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_58;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_58:
          v38 = 16;
          goto LABEL_63;
        }

        if (v13 == 4)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          while (1)
          {
            v41 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v41 & 0x7F) << v30;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_62;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v32;
          }

LABEL_62:
          v38 = 32;
LABEL_63:
          *(a1 + v38) = v29;
          goto LABEL_66;
        }

        if (v13 != 5)
        {
          goto LABEL_53;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          v43 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v43 & 0x7F) << v14;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_65;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_65:
        *(a1 + 36) = v20;
      }

LABEL_66:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *IDSEndpointTransparencyVerificationStateString(uint64_t a1)
{
  if ((a1 + 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E77E2B48[a1 + 1];
  }
}

void sub_1A7CBDFD8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (IMShouldLog())
  {
    IMLogString_V();
  }
}

void sub_1A7CBE04C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (IMShouldLog())
  {
    IMLogString_V();
  }
}

uint64_t sub_1A7CBE350(uint64_t a1)
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEBUG, "URL Loading service disconnected", v8, 2u);
  }

  v3 = os_log_shim_legacy_logging_enabled();
  if (v3)
  {
    sub_1A7CBDFD8(v3, v4, @"URL Loading service disconnected");
    sub_1A7CBE04C(v5, v6, @"URL Loading service disconnected");
    if (_IMWillLog())
    {
      _IMAlwaysLog();
    }
  }

  return [*(a1 + 32) _disconnected];
}

void sub_1A7CBE5F0(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMGetXPCArrayFromDictionary();
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "** RECEIVING remote fetch iMessage account info request response:", buf, 2u);
  }

  v6 = os_log_shim_legacy_logging_enabled();
  if (v6)
  {
    sub_1A7CBDFD8(v6, v7, @"** RECEIVING remote fetch iMessage account info request response:");
    sub_1A7CBE04C(v8, v9, @"** RECEIVING remote fetch iMessage account info request response:");
    if (_IMWillLog())
    {
      _IMAlwaysLog();
    }
  }

  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "                      iMessageAccountInfo: %@", buf, 0xCu);
  }

  v11 = os_log_shim_legacy_logging_enabled();
  if (v11)
  {
    sub_1A7CBDFD8(v11, v12, @"                      iMessageAccountInfo: %@");
    sub_1A7CBE04C(v13, v14, @"                      iMessageAccountInfo: %@");
    if (_IMWillLog())
    {
      _IMAlwaysLog();
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

void sub_1A7CBE994(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMGetXPCDictionaryFromDictionary();
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "** RECEIVING remote fetch remote accounts info request response:", buf, 2u);
  }

  v6 = os_log_shim_legacy_logging_enabled();
  if (v6)
  {
    sub_1A7CBDFD8(v6, v7, @"** RECEIVING remote fetch remote accounts info request response:");
    sub_1A7CBE04C(v8, v9, @"** RECEIVING remote fetch remote accounts info request response:");
    if (_IMWillLog())
    {
      _IMAlwaysLog();
    }
  }

  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "                      Account Info Map: %@", buf, 0xCu);
  }

  v11 = os_log_shim_legacy_logging_enabled();
  if (v11)
  {
    sub_1A7CBDFD8(v11, v12, @"                      Account Info Map: %@");
    sub_1A7CBE04C(v13, v14, @"                      Account Info Map: %@");
    if (_IMWillLog())
    {
      _IMAlwaysLog();
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

uint64_t sub_1A7CBECB4(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = IMGetXPCBoolFromDictionary();
  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "Sent IDSRemoteCredentialCommandRequestDeviceInfo command to other side: %@", &v6, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1A7CBEFE4(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v58 = v3;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "IDS Remote Credential Completion block for remote ID Status Query received response %@", buf, 0xCu);
  }

  v5 = os_log_shim_legacy_logging_enabled();
  if (v5)
  {
    sub_1A7CBDFD8(v5, v6, @"IDS Remote Credential Completion block for remote ID Status Query received response %@");
    v48 = v3;
    sub_1A7CBE04C(v7, v8, @"IDS Remote Credential Completion block for remote ID Status Query received response %@");
    if (_IMWillLog())
    {
      v48 = v3;
      _IMAlwaysLog();
    }
  }

  v50 = IMGetXPCBoolFromDictionary();
  v9 = IMGetXPCDictionaryFromDictionary();
  v49 = IMGetXPCStringFromDictionary();
  v51 = [IDSURI URIWithPrefixedURI:v49 withServiceLoggingHint:*(a1 + 32)];
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "** RECEIVING remote ID Status V2 Query response:", buf, 2u);
  }

  v11 = os_log_shim_legacy_logging_enabled();
  if (v11)
  {
    sub_1A7CBDFD8(v11, v12, @"** RECEIVING remote ID Status V2 Query response:");
    sub_1A7CBE04C(v13, v14, @"** RECEIVING remote ID Status V2 Query response:");
    if (_IMWillLog())
    {
      _IMAlwaysLog();
    }
  }

  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"NO";
    if (v50)
    {
      v16 = @"YES";
    }

    *buf = 138412290;
    v58 = v16;
    _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "                      Query Result: %@", buf, 0xCu);
  }

  v17 = os_log_shim_legacy_logging_enabled();
  if (v17)
  {
    v19 = v50 ? @"YES" : @"NO";
    sub_1A7CBDFD8(v17, v18, @"                      Query Result: %@");
    v48 = v19;
    sub_1A7CBE04C(v20, v21, @"                      Query Result: %@");
    if (_IMWillLog())
    {
      v48 = v19;
      _IMAlwaysLog();
    }
  }

  v22 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v58 = v51;
    _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "                      FromURI: %@", buf, 0xCu);
  }

  v23 = os_log_shim_legacy_logging_enabled();
  if (v23)
  {
    sub_1A7CBDFD8(v23, v24, @"                      FromURI: %@");
    v48 = v51;
    sub_1A7CBE04C(v25, v26, @"                      FromURI: %@");
    if (_IMWillLog())
    {
      v48 = v51;
      _IMAlwaysLog();
    }
  }

  v27 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v58 = v9;
    _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "                      ID Status Updates: %@", buf, 0xCu);
  }

  v28 = os_log_shim_legacy_logging_enabled();
  if (v28)
  {
    sub_1A7CBDFD8(v28, v29, @"                      ID Status Updates: %@");
    v48 = v9;
    sub_1A7CBE04C(v30, v31, @"                      ID Status Updates: %@");
    if (_IMWillLog())
    {
      v48 = v9;
      _IMAlwaysLog();
    }
  }

  v32 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = *(a1 + 32);
    *buf = 138412290;
    v58 = v33;
    _os_log_impl(&dword_1A7AD9000, v32, OS_LOG_TYPE_DEFAULT, "                      Service: %@", buf, 0xCu);
  }

  v34 = os_log_shim_legacy_logging_enabled();
  if (v34)
  {
    sub_1A7CBDFD8(v34, v35, @"                      Service: %@");
    v48 = *(a1 + 32);
    sub_1A7CBE04C(v36, v37, @"                      Service: %@");
    if (_IMWillLog())
    {
      v48 = *(a1 + 32);
      _IMAlwaysLog();
    }
  }

  v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v39 = v9;
  v40 = [(__CFString *)v39 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v40)
  {
    v41 = *v53;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v53 != v41)
        {
          objc_enumerationMutation(v39);
        }

        v43 = *(*(&v52 + 1) + 8 * i);
        v44 = [IDSURI URIWithPrefixedURI:v43 withServiceLoggingHint:*(a1 + 32), v48];
        if (v44)
        {
          v45 = [(__CFString *)v39 objectForKeyedSubscript:v43];
          [v38 setObject:v45 forKey:v44];
        }
      }

      v40 = [(__CFString *)v39 countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v40);
  }

  v46 = *(a1 + 40);
  v47 = [v38 copy];
  (*(v46 + 16))(v46, v47, v51, *(a1 + 32), v50, 0);
}

uint64_t sub_1A7CBF86C(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = IMGetXPCBoolFromDictionary();
  v3 = [MEMORY[0x1E69A6138] accountSync];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "Sent IDSRemoteCredentialCommandAccountSyncMessage to paired device (success: %@)", &v6, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, v2, *(a1 + 32));
  }

  return result;
}

void sub_1A7CBFB60(id *a1, void *a2)
{
  *&v49[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1AC5658A0]();
  v5 = [a1[6] copy];
  v6 = v5;
  if (v4 != MEMORY[0x1E69E9E98])
  {
    if (v5)
    {
      (*(v5 + 16))(v5, v3);
    }

    goto LABEL_44;
  }

  if (v3 == MEMORY[0x1E69E9E20])
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "received XPC_ERROR_CONNECTION_INVALID", buf, 2u);
    }

    v13 = os_log_shim_legacy_logging_enabled();
    if (!v13)
    {
      goto LABEL_16;
    }

    sub_1A7CBDFD8(v13, v14, @"received XPC_ERROR_CONNECTION_INVALID");
    sub_1A7CBE04C(v15, v16, @"received XPC_ERROR_CONNECTION_INVALID");
    if ((_IMWillLog() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v3 != MEMORY[0x1E69E9E18])
    {
      goto LABEL_16;
    }

    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 2u);
    }

    v8 = os_log_shim_legacy_logging_enabled();
    if (!v8)
    {
      goto LABEL_16;
    }

    sub_1A7CBDFD8(v8, v9, @"received XPC_ERROR_CONNECTION_INTERRUPTED");
    sub_1A7CBE04C(v10, v11, @"received XPC_ERROR_CONNECTION_INTERRUPTED");
    if ((_IMWillLog() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  _IMAlwaysLog();
LABEL_16:
  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = a1[4];
    *buf = 134217984;
    *v49 = v18;
    _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "Loaded disconnected for request: (%p)", buf, 0xCu);
  }

  v19 = os_log_shim_legacy_logging_enabled();
  if (v19)
  {
    sub_1A7CBDFD8(v19, v20, @"Loaded disconnected for request: (%p)");
    v44 = a1[4];
    sub_1A7CBE04C(v21, v22, @"Loaded disconnected for request: (%p)");
    if (_IMWillLog())
    {
      v44 = a1[4];
      _IMAlwaysLog();
    }
  }

  v23 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = a1[4];
    *buf = 138412290;
    *v49 = v24;
    _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_ERROR, "Remote loader crashed for credential request: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    sub_1A7CC02C0();
    sub_1A7CC030C();
    v44 = a1[4];
    _IDSWarnV();
  }

  [a1[4] _disconnected];
  if (*(a1[4] + 20) == 1 && *(a1[4] + 4) <= 4)
  {
    v25 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1[4] + 4);
      *buf = 67109376;
      v49[0] = v26;
      LOWORD(v49[1]) = 1024;
      *(&v49[1] + 2) = 5;
      _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, " => Retrying... (%d/%d) retries", buf, 0xEu);
    }

    v27 = os_log_shim_legacy_logging_enabled();
    if (v27)
    {
      sub_1A7CBDFD8(v27, v28, @" => Retrying... (%d/%d) retries");
      sub_1A7CBE04C(v29, v30, @" => Retrying... (%d/%d) retries");
      if (_IMWillLog())
      {
        _IMAlwaysLog();
      }
    }

    v31 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = *(a1[4] + 4);
      *buf = 67109376;
      v49[0] = v32;
      LOWORD(v49[1]) = 1024;
      *(&v49[1] + 2) = 5;
      _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_ERROR, " => Retrying... (%d/%d) retries", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      sub_1A7CC02C0();
      sub_1A7CC030C();
      _IDSWarnV();
    }

    v33 = a1[4];
    v34 = v33[4];
    v33[4] = v34 + 1;
    v35 = dispatch_time(0, 2000000000 * v34);
    v36 = im_primary_queue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A7CC0358;
    block[3] = &unk_1E77E2BB8;
    block[4] = a1[4];
    v46 = a1[5];
    v47 = a1[6];
    dispatch_after(v35, v36, block);
  }

  else
  {
    v37 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v37, OS_LOG_TYPE_DEFAULT, "Not retrying, calling completion block", buf, 2u);
    }

    v38 = os_log_shim_legacy_logging_enabled();
    if (v38)
    {
      sub_1A7CBDFD8(v38, v39, @"Not retrying, calling completion block");
      sub_1A7CBE04C(v40, v41, @"Not retrying, calling completion block");
      if (_IMWillLog())
      {
        _IMAlwaysLog();
      }
    }

    v42 = a1[6];
    if (v42)
    {
      v42[2](v42, 0);
    }
  }

LABEL_44:
  v43 = objc_opt_self();
}

uint64_t IDSQRProtoChannelExperimentReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v45 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        switch(v13)
        {
          case 3:
            [a1 clearOneofValuesForTestValue];
            *(a1 + 48) |= 4u;
            *(a1 + 40) = 2;
            v21 = PBReaderReadString();
            v22 = 32;
            break;
          case 4:
            [a1 clearOneofValuesForTestValue];
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 48) |= 4u;
            *(a1 + 40) = 3;
            *(a1 + 48) |= 2u;
            while (1)
            {
              v46 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v46 & 0x7F) << v37;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_75;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v39;
            }

LABEL_75:
            v43 = 24;
            goto LABEL_76;
          case 5:
            v21 = PBReaderReadString();
            v22 = 16;
            break;
          default:
LABEL_45:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_77;
        }

        v28 = *(a1 + v22);
        *(a1 + v22) = v21;
      }

      else
      {
        if (!v13)
        {
          v23 = 0;
          while (1)
          {
            v48 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            if ((v48 & 0x80000000) == 0)
            {
              break;
            }

            if (v23++ > 8)
            {
              goto LABEL_77;
            }
          }

          [a2 hasError];
          goto LABEL_77;
        }

        if (v13 == 1)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            v47 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v47 & 0x7F) << v30;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v36 = 0;
              goto LABEL_71;
            }
          }

          if ([a2 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v32;
          }

LABEL_71:
          v43 = 8;
LABEL_76:
          *(a1 + v43) = v36;
          goto LABEL_77;
        }

        if (v13 != 2)
        {
          goto LABEL_45;
        }

        [a1 clearOneofValuesForTestValue];
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 48) |= 4u;
        *(a1 + 40) = 1;
        *(a1 + 48) |= 8u;
        while (1)
        {
          v49 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v49 & 0x7F) << v14;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_67;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_67:
        *(a1 + 44) = v20;
      }

LABEL_77:
      v44 = [a2 position];
    }

    while (v44 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A7CC39EC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_1A7CC3C88(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_1A7CC3D20(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

id IDSRealTimeContext()
{
  if (qword_1EB2BB5A0 != -1)
  {
    sub_1A7E21524();
  }

  v1 = qword_1EB2BB598;

  return v1;
}

uint64_t sub_1A7CC3FA8()
{
  v0 = nw_context_create();
  v1 = qword_1EB2BB598;
  qword_1EB2BB598 = v0;

  nw_context_set_isolate_protocol_stack();
  nw_context_set_scheduling_mode();
  v2 = qword_1EB2BB598;

  return MEMORY[0x1EEDD31F0](v2);
}

uint64_t IDSQRProtoH3EndToEndChannelRegisterRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo);
    objc_storeStrong((a1 + 8), v14);
    v17[0] = 0xAAAAAAAAAAAAAAAALL;
    v17[1] = 0xAAAAAAAAAAAAAAAALL;
    if (!PBReaderPlaceMark() || !IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfoReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

__n128 sub_1A7CC5004(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_1A7CC503C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1A7CC5060(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A7CC5080(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

uint64_t sub_1A7CC5138(uint64_t a1, id *a2)
{
  result = sub_1A7E22270();
  *a2 = 0;
  return result;
}

uint64_t sub_1A7CC51B0(uint64_t a1, id *a2)
{
  v3 = sub_1A7E22280();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1A7CC5230@<X0>(uint64_t *a1@<X8>)
{
  sub_1A7E22290();
  v2 = sub_1A7E22260();

  *a1 = v2;
  return result;
}

uint64_t sub_1A7CC5274()
{
  v0 = sub_1A7E22290();
  v1 = MEMORY[0x1AC561D20](v0);

  return v1;
}

uint64_t sub_1A7CC52B0()
{
  sub_1A7E22290();
  sub_1A7E22350();
}

uint64_t sub_1A7CC5304()
{
  sub_1A7E22290();
  sub_1A7E23200();
  sub_1A7E22350();
  v0 = sub_1A7E23240();

  return v0;
}

BOOL sub_1A7CC53B4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1A7CC53E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1A7CC5410@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

_DWORD *sub_1A7CC5510@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1A7CC553C@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_1A7CC55D4()
{
  v0 = sub_1A7E22290();
  v2 = v1;
  if (v0 == sub_1A7E22290() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1A7E230D0();
  }

  return v5 & 1;
}

uint64_t sub_1A7CC565C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1A7CC5A60(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1A7CC56B0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_1A7CC5A98(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1A7CC56F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A7E22260();

  *a1 = v2;
  return result;
}

uint64_t sub_1A7CC5738@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A7E22290();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A7CC5764(uint64_t a1)
{
  v2 = sub_1A7CC58B0(&qword_1EB2B4930, type metadata accessor for URLResourceKey);
  v3 = sub_1A7CC58B0(&unk_1EB2B4938, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A7CC58B0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A7CC5A60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1A7CC5A98(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

__n128 sub_1A7CC5AE4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LinkEndpointIDSRAT(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LinkEndpointIDSRAT(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_1A7CC5B94(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1A7CC5D40()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B32B8);
  sub_1A7B0CB00(v0, qword_1EB2B32B8);
  return sub_1A7E22050();
}

id sub_1A7CC5DC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v8 = sub_1A7E21850();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A7E21940();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v48 = &v44 - v19;
  v52 = v4;
  v20 = &v4[OBJC_IVAR___IDSObjCPacketLogWriter_writer];
  *v20 = 0;
  v20[1] = 0;
  v45 = v20;
  if (qword_1EB2B32B0 != -1)
  {
    swift_once();
  }

  v21 = sub_1A7E22060();
  v22 = sub_1A7B0CB00(v21, qword_1EB2B32B8);

  v47 = v22;
  v23 = sub_1A7E22040();
  v24 = sub_1A7E228F0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v46 = a4;
    v26 = v25;
    v27 = swift_slowAlloc();
    v44 = v8;
    v28 = v27;
    v54[0] = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_1A7B0CB38(a1, a2, v54);
    *(v26 + 12) = 2080;
    v29 = v51;
    *(v26 + 14) = sub_1A7B0CB38(v51, v46, v54);
    v30 = v24;
    v31 = a1;
    _os_log_impl(&dword_1A7AD9000, v23, v30, "creating packet log writer for %s (%s)", v26, 0x16u);
    swift_arrayDestroy();
    v32 = v28;
    v8 = v44;
    MEMORY[0x1AC5654B0](v32, -1, -1);
    v33 = v26;
    a4 = v46;
    MEMORY[0x1AC5654B0](v33, -1, -1);
  }

  else
  {

    v31 = a1;
    v29 = v51;
  }

  sub_1A7E218B0();
  v54[0] = 0xD00000000000001CLL;
  v54[1] = 0x80000001A7EADC30;
  (*(v9 + 104))(v12, *MEMORY[0x1E6968F70], v8);
  sub_1A7CC7DFC();
  v34 = v48;
  sub_1A7E21920();
  (*(v9 + 8))(v12, v8);
  v35 = v50;
  v36 = *(v49 + 8);
  v36(v16, v50);
  sub_1A7E077FC(v31, a2, v29, a4, v34);
  v38 = v37;
  v40 = v39;
  v36(v34, v35);

  v41 = v45;
  v42 = *v45;
  *v45 = v38;
  v41[1] = v40;
  sub_1A7B15088(v42);
  v53.receiver = v52;
  v53.super_class = IDSObjCPacketLogWriter;
  return objc_msgSendSuper2(&v53, sel_init);
}

uint64_t sub_1A7CC63B0(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___IDSObjCPacketLogWriter_writer);
  if (v3)
  {
    v5 = result;

    v3(v5, a2);

    return sub_1A7B15088(v3);
  }

  return result;
}

id sub_1A7CC6790(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v44 = sub_1A7E21850();
  v9 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A7E21940();
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v41 - v19;
  v48 = OBJC_IVAR___IDSObjCPacketLog_packetLog;
  v49 = v4;
  *&v4[OBJC_IVAR___IDSObjCPacketLog_packetLog] = 0;
  if (qword_1EB2B32B0 != -1)
  {
    swift_once();
  }

  v45 = a4;
  v21 = sub_1A7E22060();
  v22 = sub_1A7B0CB00(v21, qword_1EB2B32B8);

  v43 = v22;
  v23 = sub_1A7E22040();
  v24 = sub_1A7E228F0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v42 = a3;
    v27 = v26;
    v51[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1A7B0CB38(a1, a2, v51);
    _os_log_impl(&dword_1A7AD9000, v23, v24, "creating for sessionID %s", v25, 0xCu);
    sub_1A7B0CD6C(v27);
    v28 = v27;
    a3 = v42;
    MEMORY[0x1AC5654B0](v28, -1, -1);
    MEMORY[0x1AC5654B0](v25, -1, -1);
  }

  v29 = &v49[OBJC_IVAR___IDSObjCPacketLog_sessionID];
  *v29 = a1;
  v29[1] = a2;
  swift_bridgeObjectRetain_n();
  sub_1A7E218B0();
  v51[0] = 0xD00000000000001CLL;
  v51[1] = 0x80000001A7EADC30;
  v30 = v44;
  (*(v9 + 104))(v12, *MEMORY[0x1E6968F70], v44);
  sub_1A7CC7DFC();
  sub_1A7E21920();
  (*(v9 + 8))(v12, v30);
  v31 = *(v46 + 8);
  v32 = v16;
  v33 = v47;
  v31(v32, v47);
  sub_1A7E077FC(a1, a2, a3, v45, v20);
  v35 = v34;
  v37 = v36;

  type metadata accessor for IDSPacketLog();
  swift_allocObject();
  v40 = sub_1A7E08698(a1, a2, v35, v37);

  v31(v20, v33);

  v38 = v49;
  *&v49[v48] = v40;

  v50.receiver = v38;
  v50.super_class = IDSObjCPacketLog;
  return objc_msgSendSuper2(&v50, sel_init);
}

uint64_t sub_1A7CC6DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = sub_1A7E22290();
  v8 = v7;
  v9 = sub_1A7E22290();
  return a5(v6, v8, v9, v10);
}

id sub_1A7CC6E68(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void *))
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  result = a3(a1, a2, v5);
  v4 = v5[0];
  if (v5[0])
  {
    swift_willThrow();
    return v4;
  }

  return result;
}

void sub_1A7CC6FAC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1A7E219F0();
  }

  v6 = v5;
  (*(a4 + 16))(a4);
}

void sub_1A7CC7038()
{
  if (qword_1EB2B32B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1A7E22060();
  sub_1A7B0CB00(v1, qword_1EB2B32B8);
  v2 = v0;
  v3 = sub_1A7E22040();
  v4 = sub_1A7E228F0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1A7B0CB38(*&v2[OBJC_IVAR___IDSObjCPacketLog_sessionID], *&v2[OBJC_IVAR___IDSObjCPacketLog_sessionID + 8], &v11);
    _os_log_impl(&dword_1A7AD9000, v3, v4, "flushing for sessionID %s...", v5, 0xCu);
    sub_1A7B0CD6C(v6);
    MEMORY[0x1AC5654B0](v6, -1, -1);
    MEMORY[0x1AC5654B0](v5, -1, -1);
  }

  v7 = *&v2[OBJC_IVAR___IDSObjCPacketLog_packetLog];
  if (v7)
  {

    os_unfair_lock_lock(v7 + 16);
    sub_1A7E0468C(&v7[18], v7, &v11);
    os_unfair_lock_unlock(v7 + 16);
  }

  v8 = sub_1A7E22040();
  v9 = sub_1A7E228F0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1A7AD9000, v8, v9, "flushed", v10, 2u);
    MEMORY[0x1AC5654B0](v10, -1, -1);
  }
}

uint64_t sub_1A7CC7480(unsigned __int8 a1, int a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v6 = *(v5 + OBJC_IVAR___IDSObjCPacketLog_packetLog);
  if (!v6)
  {
    return 0;
  }

  os_unfair_lock_lock((v6 + 64));
  v12 = sub_1A7E051A0(a1 | (a2 << 8), a3, a4, a5, (v6 + 72), (v6 + 88));
  os_unfair_lock_unlock((v6 + 64));

  return v12;
}

uint64_t sub_1A7CC75BC(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = *(v4 + OBJC_IVAR___IDSObjCPacketLog_packetLog);
  if (v6)
  {
    v7 = result < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return result;
  }

  v11 = result;

  os_unfair_lock_lock((v6 + 64));
  v12 = *(v6 + 88);
  if (*(v12 + 16) <= v11)
  {
    __break(1u);
  }

  else
  {
    v11 = *(*(v12 + 16 * v11 + 40) + 8 * a2 + 32);

    os_unfair_lock_lock((v11 + 64));
    v4 = *(v11 + 144);
    v5 = mach_continuous_time();
    if (qword_1EB2B3368 == -1)
    {
      goto LABEL_9;
    }
  }

  swift_once();
LABEL_9:
  v13 = *&qword_1EB2B3370 * v5;
  if (COERCE__INT64(fabs(*&qword_1EB2B3370 * v5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v13 <= -1.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v13 >= 1.84467441e19)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *(v11 + 144) = v13;
  if (((v4 | v13) & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_1A7E0538C(v11 + 88, v13 - v4, a3, a4);
  v14 = *(v11 + 112);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *(v11 + 112) = v16;
  v17 = *(v11 + 120);
  v15 = __OFADD__(v17, a3);
  v18 = v17 + a3;
  if (v15)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  *(v11 + 120) = v18;
  v19 = *(v11 + 128);
  v15 = __OFADD__(v19, a4);
  v20 = v19 + a4;
  if (v15)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *(v11 + 128) = v20;
  if (*(v11 + 80) == 1)
  {
    v4 = v6 + 80;
    v21 = *(v6 + 80);
    if (!(v21 >> 62))
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
      *(v11 + 72) = v22;
      *(v11 + 80) = 0;

      MEMORY[0x1AC561DF0](v23);
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A7E22560();
      }

      sub_1A7E225A0();
      goto LABEL_22;
    }

LABEL_34:
    v22 = sub_1A7E22DA0();
    goto LABEL_19;
  }

LABEL_22:
  os_unfair_lock_unlock((v11 + 64));

  os_unfair_lock_unlock((v6 + 64));
}

id _sSo13IDSSendReasonC13IDSFoundationEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1A7CC79C8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t *sub_1A7CC7A10(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_1A7CC7A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR___IDSObjCPacketLog_packetLog;
  *&v5[OBJC_IVAR___IDSObjCPacketLog_packetLog] = 0;
  v11 = &v5[OBJC_IVAR___IDSObjCPacketLog_sessionID];
  *v11 = a1;
  v11[1] = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  type metadata accessor for IDSPacketLog();
  swift_allocObject();
  swift_bridgeObjectRetain_n();

  v13 = sub_1A7E08698(a1, a2, sub_1A7CC7DE0, v12);

  *&v5[v10] = v13;

  v15.receiver = v5;
  v15.super_class = IDSObjCPacketLog;
  return objc_msgSendSuper2(&v15, sel_init);
}

unint64_t sub_1A7CC7DFC()
{
  result = qword_1EB2B2958;
  if (!qword_1EB2B2958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2958);
  }

  return result;
}

uint64_t sub_1A7CC7E50(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1A7CC7EA8()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B4A08);
  sub_1A7B0CB00(v0, qword_1EB2B4A08);
  return sub_1A7E22050();
}

uint64_t IDSLinkSelectorPrimarySecondary.linkSelector.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___IDSLinkSelectorPrimarySecondary_linkSelector;
  swift_beginAccess();
  return sub_1A7CC7F8C(v1 + v3, a1);
}

uint64_t sub_1A7CC7F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B4A28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A7CC7FFC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t IDSLinkSelectorPrimarySecondary.linkSelector.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___IDSLinkSelectorPrimarySecondary_linkSelector;
  swift_beginAccess();
  sub_1A7CC80A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1A7CC80A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B4A28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void __swiftcall IDSLinkSelectorPrimarySecondary.init()(IDSLinkSelectorPrimarySecondary *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id IDSLinkSelectorPrimarySecondary.init()()
{
  v1 = &v0[OBJC_IVAR___IDSLinkSelectorPrimarySecondary_linkSelector];
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  v0[OBJC_IVAR___IDSLinkSelectorPrimarySecondary__primaryLinkID] = 0;
  v0[OBJC_IVAR___IDSLinkSelectorPrimarySecondary__duplicationLinkID] = 0;
  *&v0[OBJC_IVAR___IDSLinkSelectorPrimarySecondary_primaryLink] = 0;
  *&v0[OBJC_IVAR___IDSLinkSelectorPrimarySecondary_secondaryLink] = 0;
  sub_1A7CCA568(v4);
  swift_beginAccess();
  sub_1A7CC80A4(v4, v1);
  swift_endAccess();
  v3.receiver = v0;
  v3.super_class = IDSLinkSelectorPrimarySecondary;
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_1A7CC82B4(ValueMetadata *a1)
{
  v2 = v1;
  if (qword_1EB2B46E8 != -1)
  {
    swift_once();
  }

  v4 = sub_1A7E22060();
  sub_1A7B0CB00(v4, qword_1EB2B4A08);
  v5 = sub_1A7E22040();
  v6 = sub_1A7E228F0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A7AD9000, v5, v6, "Updating link selection...", v7, 2u);
    MEMORY[0x1AC5654B0](v7, -1, -1);
  }

  v8 = OBJC_IVAR___IDSLinkSelectorPrimarySecondary_linkSelector;
  swift_beginAccess();
  sub_1A7CC7F8C(v2 + v8, v44);
  if (!v44[0])
  {
    goto LABEL_57;
  }

  os_unfair_lock_lock(&a1[1]);
  Description = a1[1].Description;

  os_unfair_lock_unlock(&a1[1]);
  v10 = Description[2];
  if (v10)
  {
    v11 = sub_1A7CE50F8(Description[2], 0);
    v12 = sub_1A7CE50F4(&v41, v11 + 32, v10, Description);
    sub_1A7CC9770();
    if (v12 == v10)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v13 = LinkSelectorPrimarySecondary.selectLinks(from:)(v11);

  sub_1A7CC9778(v44);
  if (v13 >> 62)
  {
    v14 = sub_1A7E22DA0();
    if (v14)
    {
      goto LABEL_12;
    }

LABEL_19:
    v15 = 0;
    *(&v2->_os_unfair_lock_opaque + OBJC_IVAR___IDSLinkSelectorPrimarySecondary__primaryLinkID) = 0;
    goto LABEL_20;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_19;
  }

LABEL_12:
  if ((v13 & 0xC000000000000001) != 0)
  {
    goto LABEL_52;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v13 + 32);

    goto LABEL_15;
  }

  __break(1u);
  do
  {
    v19 = MEMORY[0x1AC562480](1, v13);
LABEL_29:
    *(&v2->_os_unfair_lock_opaque + OBJC_IVAR___IDSLinkSelectorPrimarySecondary__duplicationLinkID) = sub_1A7DA149C();
    while (2)
    {
      *(&v2->_os_unfair_lock_opaque + OBJC_IVAR___IDSLinkSelectorPrimarySecondary_secondaryLink) = v19;

      v23 = sub_1A7CC7FFC(&qword_1EB2B4A58);
      v42 = v23;
      v43 = sub_1A7CC97CC();
      os_unfair_lock_lock(&a1[1]);
      v41 = a1[1].Description;

      os_unfair_lock_unlock(&a1[1]);
      v24 = sub_1A7CC9878(&v41, v23);
      v25 = MEMORY[0x1EEE9AC00](v24, v24);
      v27 = &v41 - v26;
      (*(v28 + 16))(&v41 - v26, v25);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v29 = sub_1A7CC98BC(v44);
      v30 = -1 << *(*v27 + 32);
      v31 = ~v30;
      v32 = (*v27 + 64);
      v33 = *v32;
      v34 = -v30;
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      else
      {
        v35 = -1;
      }

      *v29 = *v27;
      v29[1] = v32;
      v29[2] = v31;
      v29[3] = 0;
      v29[4] = v35 & v33;
      sub_1A7B0CD6C(&v41);
      sub_1A7CC9920(v44, AssociatedTypeWitness);
      sub_1A7E22A00();
      v2 = v41;
      if (!v41)
      {
LABEL_49:

        sub_1A7B0CD6C(v44);
        return;
      }

      a1 = &type metadata for IDSLinkIsSelectedComponent;
      while (!v14)
      {
LABEL_35:
        v36 = 0;
LABEL_36:
        os_unfair_lock_lock(v2 + 10);
        v42 = &type metadata for IDSLinkIsSelectedComponent;
        LOBYTE(v41) = v36;
        sub_1A7CC8D74(&v41, &type metadata for IDSLinkIsSelectedComponent);
        os_unfair_lock_unlock(v2 + 10);

        sub_1A7CC9920(v44, AssociatedTypeWitness);
        sub_1A7E22A00();
        v2 = v41;
        if (!v41)
        {
          goto LABEL_49;
        }
      }

      v37 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x1AC562480](v37, v13);
          if (__OFADD__(v37++, 1))
          {
            goto LABEL_56;
          }

          v40 = v38;
          swift_unknownObjectRelease();
          if (v40 == v2)
          {
            goto LABEL_48;
          }

          goto LABEL_44;
        }

        if ((v37 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v37 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        if (*(v13 + 32 + 8 * v37) == v2)
        {
LABEL_48:
          v36 = 1;
          goto LABEL_36;
        }

        ++v37;
LABEL_44:
        if (v37 == v14)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      v15 = MEMORY[0x1AC562480](0, v13);
LABEL_15:
      v16 = sub_1A7E22040();
      v17 = sub_1A7E228F0();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1A7AD9000, v16, v17, "Have primary link...", v18, 2u);
        MEMORY[0x1AC5654B0](v18, -1, -1);
      }

      *(&v2->_os_unfair_lock_opaque + OBJC_IVAR___IDSLinkSelectorPrimarySecondary__primaryLinkID) = sub_1A7DA149C();
LABEL_20:
      *(&v2->_os_unfair_lock_opaque + OBJC_IVAR___IDSLinkSelectorPrimarySecondary_primaryLink) = v15;

      if (v13 >> 62)
      {
        if (sub_1A7E22DA0() >= 2)
        {
          goto LABEL_24;
        }

LABEL_22:
        v19 = 0;
        *(&v2->_os_unfair_lock_opaque + OBJC_IVAR___IDSLinkSelectorPrimarySecondary__duplicationLinkID) = 0;
        continue;
      }

      break;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_22;
    }

LABEL_24:
    v20 = sub_1A7E22040();
    v21 = sub_1A7E228F0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1A7AD9000, v20, v21, "Have secondary link...", v22, 2u);
      MEMORY[0x1AC5654B0](v22, -1, -1);
    }
  }

  while ((v13 & 0xC000000000000001) != 0);
  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v19 = *(v13 + 40);

    goto LABEL_29;
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
}

void LinkEngine.idsLinkSelectorPrimarySecondary.setter(void *a1)
{
  sub_1A7CC96D0(a1);
}

uint64_t sub_1A7CC8A00(uint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t))
{
  os_unfair_lock_lock((v3 + 200));
  sub_1A7CC9660((v3 + 208), a1, a2, &v8);
  os_unfair_lock_unlock((v3 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  a3(a1);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

void (*LinkEngine.idsLinkSelectorPrimarySecondary.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  os_unfair_lock_lock((v1 + 200));
  sub_1A7CC9660((v1 + 208), v5, type metadata accessor for IDSLinkSelectorPrimarySecondary, v4);
  os_unfair_lock_unlock((v1 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  *(v4 + 64) = type metadata accessor for IDSLinkSelectorPrimarySecondary();
  v6 = swift_dynamicCast();
  v7 = *(v4 + 40);
  if (!v6)
  {
    v7 = 0;
  }

  *(v4 + 32) = v7;
  return sub_1A7CC8C3C;
}

void sub_1A7CC8C3C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = v4;
  v6 = v5;
  v7 = v3[7];
  if (a2)
  {
    v8 = v5;
    os_unfair_lock_lock(v7 + 50);
    if (v4)
    {
      v9 = v3[8];
      v10 = v8;
      v11 = v9;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v20 = 0;
      v21 = 0;
      v9 = v3[8];
    }

    v15 = v3[7];
    v19 = v10;
    v22 = v11;
    v16 = v8;
    sub_1A7CC8D74(&v19, v9);
    os_unfair_lock_unlock(v15 + 50);

    v17 = v3[4];
  }

  else
  {
    os_unfair_lock_lock(v7 + 50);
    if (v4)
    {
      v12 = v3[8];
      v13 = v6;
      v14 = v12;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v20 = 0;
      v21 = 0;
      v12 = v3[8];
    }

    v18 = v3[7];
    v19 = v13;
    v22 = v14;
    v17 = v6;
    sub_1A7CC8D74(&v19, v12);
    os_unfair_lock_unlock(v18 + 50);
  }

  free(v3);
}

_OWORD *sub_1A7CC8D74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1A7B1503C(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1A7DC39CC(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_1A7CC9970(a1, &qword_1EB2B66D0);
    v7 = sub_1A7CD0DFC(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1A7DC6884();
        v11 = v13;
      }

      sub_1A7B1503C((*(v11 + 56) + 32 * v9), v14);
      sub_1A7DFC374(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_1A7CC9970(v14, &qword_1EB2B66D0);
  }

  return result;
}

uint64_t sub_1A7CC8E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1A7DC3E9C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1A7CD1248(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1A7DC6BA0();
        v14 = v16;
      }

      result = sub_1A7DFC508(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1A7CC8F70(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_1A7CD1248(a3, a4);
    v10 = v9;

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v5;
      v16 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1A7DC7AA4();
        v13 = v16;
      }

      result = sub_1A7DFC508(v8, v13);
      *v5 = v13;
    }
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1A7DC52F4(a3, a4, v15, *&a1);

    *v4 = v17;
  }

  return result;
}

unint64_t sub_1A7CC905C(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1A7DC561C(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_1A7CD1580(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1A7DC7E8C();
        v11 = v13;
      }

      result = sub_1A7DFC88C(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_1A7CC91C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t), void (*a5)(uint64_t, uint64_t), void (*a6)(void))
{
  v30 = a6;
  v10 = v6;
  v13 = sub_1A7CC7FFC(&qword_1EB2B4A50);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v30 - v15;
  v17 = sub_1A7CC7FFC(&qword_1EB2B61D0);
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v30 - v21;
  if ((*(v18 + 48))(a1, 1, v17, v20) == 1)
  {
    sub_1A7CC9970(a1, &qword_1EB2B4A50);
    v23 = a4(a2);
    if (v24)
    {
      v25 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = *v10;
      v31 = *v10;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v30();
        v27 = v31;
      }

      (*(v18 + 32))(v16, *(v27 + 56) + *(v18 + 72) * v25, v17);
      a5(v25, v27);
      *v10 = v27;
      (*(v18 + 56))(v16, 0, 1, v17);
    }

    else
    {
      (*(v18 + 56))(v16, 1, 1, v17);
    }

    return sub_1A7CC9970(v16, &qword_1EB2B4A50);
  }

  else
  {
    (*(v18 + 32))(v22, a1, v17);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v10;
    result = a3(v22, a2, v28);
    *v10 = v31;
  }

  return result;
}

unint64_t type metadata accessor for IDSLinkSelectorPrimarySecondary()
{
  result = qword_1EB2B28B0;
  if (!qword_1EB2B28B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2B28B0);
  }

  return result;
}

double sub_1A7CC9530@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16))
  {
    v5 = sub_1A7CD0DFC(a2);
    if (v6)
    {
      sub_1A7B0CD10(*(v4 + 56) + 32 * v5, a3);
    }

    else
    {
      result = 0.0;
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1A7CC9660@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, _OWORD *a4@<X8>)
{
  v6 = a3(a2);
  v7 = *a1;
  if (*(v7 + 16) && (v8 = sub_1A7CD0DFC(v6), (v9 & 1) != 0))
  {
    sub_1A7B0CD10(*(v7 + 56) + 32 * v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void sub_1A7CC96D0(void *a1)
{
  v2 = v1;
  v4 = a1;
  os_unfair_lock_lock(v2 + 50);
  v5 = type metadata accessor for IDSLinkSelectorPrimarySecondary();
  v6 = v4;
  v7 = v5;
  if (!a1)
  {
    v6 = 0;
    v7 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  v9[0] = v6;
  v9[3] = v7;
  v8 = v4;
  sub_1A7CC8D74(v9, v5);
  os_unfair_lock_unlock(v2 + 50);
}

unint64_t sub_1A7CC97CC()
{
  result = qword_1EB2B4A60;
  if (!qword_1EB2B4A60)
  {
    sub_1A7CC9830(&qword_1EB2B4A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B4A60);
  }

  return result;
}

uint64_t sub_1A7CC9830(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_1A7CC9878(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_1A7CC98BC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1A7CC9920(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1A7CC9970(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1A7CC7FFC(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A7CC99E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t LinkQualityBestLinkSelector.scoreResolver.setter(__int128 *a1)
{
  sub_1A7B0CD6C(v1);

  return sub_1A7B14FF0(a1, v1);
}

uint64_t LinkQualityBestLinkSelector.init(adjustments:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[3] = &type metadata for LinkQualityScoreRuleBasedResolver;
  a2[4] = &protocol witness table for LinkQualityScoreRuleBasedResolver;
  *a2 = result;
  return result;
}

uint64_t LinkQualityBestLinkSelector.selectLink(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  sub_1A7CC9878(v2, v5);
  v11 = (*(v6 + 8))(a1, v5, v6);

  sub_1A7CC9BBC(&v11);

  if (*(v11 + 2))
  {
    v7 = *(v11 + 4);
    v10 = *(v11 + 40);

    v9 = v10;
  }

  else
  {

    v7 = 0;
    v9 = 0uLL;
  }

  *a2 = v7;
  *(a2 + 8) = v9;
  return result;
}

uint64_t sub_1A7CC9BBC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A7D60018(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = sub_1A7E23080();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 4);
          if (*v12 >= v13)
          {
            break;
          }

          v14 = *(v12 + 1);
          v15 = *(v12 + 1);
          v16 = *(v12 - 8);
          *(v12 + 8) = *(v12 - 24);
          *(v12 + 24) = v16;
          *(v12 - 3) = v14;
          *(v12 - 1) = v15;
          *v12 = v13;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1A7E22580();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_1A7CC9DC4(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

__n128 sub_1A7CC9D10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A7CC9D24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7CC9D6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7CC9DC4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1A7CF0024(v8);
      v8 = result;
    }

    v85 = (v8 + 16);
    v86 = *(v8 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v8 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1A7CCA364((*a3 + 32 * *v87), (*a3 + 32 * *v89), (*a3 + 32 * v90), v5);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v92 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 24);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 24);
      v14 = v9 + 2;
      v15 = (v12 + 88);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 4;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 32 * v7 - 8;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v28 + v11);
            v23 = (v28 + v19);
            v24 = *v22;
            v25 = v22[3];
            v26 = *(v22 + 1);
            v27 = *(v23 - 1);
            *v22 = *(v23 - 3);
            *(v22 + 1) = v27;
            *(v23 - 3) = v24;
            *(v23 - 1) = v26;
            *v23 = v25;
          }

          ++v21;
          v19 -= 32;
          v11 += 32;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A7CCC08C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v39 = *(v8 + 24);
    v40 = v5 + 1;
    if (v5 >= v39 >> 1)
    {
      result = sub_1A7CCC08C((v39 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v40;
    v41 = v8 + 32;
    v42 = (v8 + 32 + 16 * v5);
    *v42 = v9;
    v42[1] = v7;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v43 = *(v8 + 32);
          v44 = *(v8 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v8 + 16 * v40);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v41 + 16 * v5);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v5 = v40 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v40 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v8 + 16 * v40);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v41 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v40)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = (v41 + 16 * (v5 - 1));
        v81 = *v80;
        v82 = (v41 + 16 * v5);
        v83 = v82[1];
        sub_1A7CCA364((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v8 + 16);
        if (v5 >= v84)
        {
          goto LABEL_101;
        }

        v40 = v84 - 1;
        result = memmove((v41 + 16 * v5), v82 + 2, 16 * (v84 - 1 - v5));
        *(v8 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v41 + 16 * v40;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v8 + 16 * v40);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v41 + 16 * v5);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v5 = v40 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v92;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7;
  v31 = v9 - v7;
LABEL_30:
  v32 = *(v29 + 32 * v7 + 24);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (*(v34 - 8) >= v32)
    {
LABEL_29:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *v34;
    v36 = *(v34 + 8);
    v37 = *(v34 - 16);
    *v34 = *(v34 - 32);
    *(v34 + 16) = v37;
    *(v34 - 24) = v36;
    *(v34 - 8) = v32;
    *(v34 - 32) = v35;
    v34 -= 32;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1A7CCA364(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[3] < v6[3])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v18 = v5 + 4;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v21 = v6 - 4;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 4;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v23 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

uint64_t sub_1A7CCA568@<X0>(uint64_t *a1@<X8>)
{
  sub_1A7CC7FFC(&qword_1EB2B4D20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A7E418B0;
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD00000000000001ELL, 0x80000001A7EADD20);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  v3 = swift_allocObject();
  *(v3 + 16) = 0x3FE999999999999ALL;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  *(v2 + 48) = sub_1A7CD1FAC;
  *(v2 + 56) = v3;
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000024, 0x80000001A7EADD40);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  v4 = swift_allocObject();
  *(v4 + 16) = 0x3FD3333333333333;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0xE000000000000000;
  *(v2 + 80) = sub_1A7CD1FC0;
  *(v2 + 88) = v4;
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000024, 0x80000001A7EADD70);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  v5 = swift_allocObject();
  *(v5 + 16) = 0x3FF6666666666666;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0xE000000000000000;
  *(v2 + 112) = sub_1A7CD1FDC;
  *(v2 + 120) = v5;
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000037, 0x80000001A7EADDA0);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  v6 = swift_allocObject();
  *(v6 + 16) = 0x3FD3333333333333;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0xE000000000000000;
  *(v2 + 144) = sub_1A7CD1FF8;
  *(v2 + 152) = v6;
  *a1 = v2;
  sub_1A7CC7FFC(&qword_1EB2B4D28);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A7E418C0;
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD00000000000001CLL, 0x80000001A7EADDE0);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  v8 = swift_allocObject();
  *(v8 + 16) = 0x4024000000000000;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  *(v7 + 48) = sub_1A7CD2014;
  *(v7 + 56) = v8;
  a1[4] = &type metadata for LinkQualityScoreRuleBasedResolver;
  a1[5] = &protocol witness table for LinkQualityScoreRuleBasedResolver;
  a1[1] = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A7E418D0;
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD00000000000001CLL, 0x80000001A7EADDE0);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  v10 = swift_allocObject();
  *(v10 + 16) = 0x3FF0CCCCCCCCCCCDLL;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0xE000000000000000;
  *(v9 + 48) = sub_1A7CD201C;
  *(v9 + 56) = v10;
  if (qword_1EB2B4850 != -1)
  {
    swift_once();
  }

  v11 = qword_1EB2B70D8;
  *(v9 + 64) = qword_1EB2B70C0;
  *(v9 + 72) = *algn_1EB2B70C8;
  *(v9 + 88) = v11;
  a1[9] = &type metadata for LinkQualityScoreRuleBasedResolver;
  a1[10] = &protocol witness table for LinkQualityScoreRuleBasedResolver;
  a1[6] = v9;
}

unint64_t LinkSelectorPrimarySecondary.selectLinks(from:)(unint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B4A80);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v122[-v4];
  v6 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v126 = &v122[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v122[-v11];
  if (qword_1EB2B46F0 != -1)
  {
LABEL_100:
    swift_once();
  }

  v13 = sub_1A7E22060();
  v125 = sub_1A7B0CB00(v13, qword_1EB2B4A68);
  v14 = sub_1A7E22040();
  v15 = sub_1A7E228F0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A7AD9000, v14, v15, "Selecting links...", v16, 2u);
    MEMORY[0x1AC5654B0](v16, -1, -1);
  }

  v130 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v17 = sub_1A7E22DA0();
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v17)
  {
    v129 = MEMORY[0x1E69E7CC0];
    goto LABEL_40;
  }

  v127 = v12;
  v128 = v6;
  v12 = 0;
  v6 = a1 & 0xC000000000000001;
  v129 = MEMORY[0x1E69E7CC0];
  v18 = a1;
  while (2)
  {
    v19 = v12;
    while (1)
    {
      if (v6)
      {
        v20 = MEMORY[0x1AC562480](v19, a1);
        v12 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
          goto LABEL_95;
        }
      }

      else
      {
        if (v19 >= *(v130 + 16))
        {
          goto LABEL_96;
        }

        v20 = *(a1 + 8 * v19 + 32);

        v12 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }
      }

      os_unfair_lock_lock((v20 + 40));
      v21 = sub_1A7CC7FFC(&qword_1EB2B4A88);
      v22 = *(v20 + 48);
      if (*(v22 + 16) && (v23 = sub_1A7CD0DFC(v21), (v24 & 1) != 0))
      {
        sub_1A7B0CD10(*(v22 + 56) + 32 * v23, v131);
      }

      else
      {
        memset(v131, 0, sizeof(v131));
      }

      os_unfair_lock_unlock((v20 + 40));
      sub_1A7CC7FFC(&qword_1EB2B66D0);
      if (swift_dynamicCast())
      {
        break;
      }

      v134 = 0;
      v132 = 0u;
      v133 = 0u;
LABEL_10:

      sub_1A7CC9970(&v132, &qword_1EB2B4A90);
      a1 = v18;
LABEL_11:
      ++v19;
      if (v12 == v17)
      {
        goto LABEL_40;
      }
    }

    if (!*(&v133 + 1))
    {
      goto LABEL_10;
    }

    sub_1A7B14FF0(&v132, &v135);
    os_unfair_lock_lock((v20 + 40));
    v25 = type metadata accessor for LinkStateComponent(0);
    v26 = v25;
    v27 = *(v20 + 48);
    if (*(v27 + 16) && (v28 = sub_1A7CD0DFC(v25), (v29 & 1) != 0))
    {
      sub_1A7B0CD10(*(v27 + 56) + 32 * v28, &v132);
    }

    else
    {
      v132 = 0u;
      v133 = 0u;
    }

    os_unfair_lock_unlock((v20 + 40));
    v30 = swift_dynamicCast();
    v31 = *(v26 - 8);
    (*(v31 + 56))(v5, v30 ^ 1u, 1, v26);
    if ((*(v31 + 48))(v5, 1, v26))
    {
      sub_1A7CC9970(v5, &qword_1EB2B4A80);
      v32 = v127;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v33 = v126;
      sub_1A7CD0EC4(v5, v126);
      sub_1A7CC9970(v5, &qword_1EB2B4A80);
      v32 = v127;
      sub_1A7CD0F28(v33, v127);
    }

    a1 = v18;
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      sub_1A7CD0E68(v32);
      sub_1A7B0CD6C(&v135);
      goto LABEL_11;
    }

    v34 = sub_1A7E22CF0();
    (*(*(v34 - 8) + 8))(v32, v34);
    v35 = v138;
    v36 = v139;
    sub_1A7CC9878(&v135, v138);
    (*(v36 + 8))(&v132, v20, v35, v36);
    v37 = v132;
    sub_1A7B0CD6C(&v135);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v129 = sub_1A7CCC190(0, *(v129 + 2) + 1, 1, v129);
    }

    v39 = *(v129 + 2);
    v38 = *(v129 + 3);
    if (v39 >= v38 >> 1)
    {
      v129 = sub_1A7CCC190((v38 > 1), v39 + 1, 1, v129);
    }

    v40 = v129;
    *(v129 + 2) = v39 + 1;
    v41 = &v40[24 * v39];
    *(v41 + 4) = v20;
    *(v41 + 40) = v37;
    if (v12 != v17)
    {
      continue;
    }

    break;
  }

LABEL_40:
  v42 = v129;
  LinkQualityBestLinkSelector.selectLink(from:)(v129, &v135);
  v43 = v135;
  if (v135)
  {
    v45 = v136;
    v44 = v137;
    sub_1A7CC7FFC(&qword_1EB2B4A98);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1A7E418E0;
    *(v46 + 32) = v43;
    v130 = v43;
    *&v131[0] = v46;
    a1 = *(v42 + 2);
    v128 = v46;
    if (a1)
    {
      *&v132 = MEMORY[0x1E69E7CC0];

      sub_1A7CCE918(0, a1, 0);
      v12 = 0;
      v47 = v132;
      v5 = (v42 + 48);
      while (v12 < *(v42 + 2))
      {
        v48 = *(v5 - 16);
        v135 = 0;
        v136 = 0xE000000000000000;

        sub_1A7E22B70();
        MEMORY[0x1AC561C90](8237, 0xE200000000000000);
        v49 = *(v48 + 16);
        v50 = *(v48 + 24);

        MEMORY[0x1AC561C90](v49, v50);

        MEMORY[0x1AC561C90](0x3A65726F6373203ALL, 0xE900000000000020);
        sub_1A7E227A0();
        MEMORY[0x1AC561C90](0x656469666E6F6320, 0xED0000203A65636ELL);
        sub_1A7E227A0();

        v51 = v135;
        v52 = v136;
        *&v132 = v47;
        v54 = *(v47 + 16);
        v53 = *(v47 + 24);
        v6 = v54 + 1;
        if (v54 >= v53 >> 1)
        {
          sub_1A7CCE918((v53 > 1), v54 + 1, 1);
          v47 = v132;
        }

        ++v12;
        *(v47 + 16) = v6;
        v55 = v47 + 16 * v54;
        *(v55 + 32) = v51;
        *(v55 + 40) = v52;
        v5 += 24;
        v42 = v129;
        if (a1 == v12)
        {
          i = v128;
          goto LABEL_52;
        }
      }

LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    i = v46;

    v47 = MEMORY[0x1E69E7CC0];
LABEL_52:
    v135 = v47;
    v60 = sub_1A7CC7FFC(&qword_1EB2B4AA0);
    v61 = sub_1A7CD0F8C();
    v6 = sub_1A7E221F0();
    v63 = v62;

    v64 = sub_1A7E22040();
    v65 = sub_1A7E228F0();

    v66 = os_log_type_enabled(v64, v65);
    v129 = v60;
    v127 = v61;
    if (v66)
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v135 = v68;
      *v67 = 136315138;
      v6 = sub_1A7B0CB38(v6, v63, &v135);

      *(v67 + 4) = v6;
      _os_log_impl(&dword_1A7AD9000, v64, v65, "Link Scores: %s", v67, 0xCu);
      sub_1A7B0CD6C(v68);
      MEMORY[0x1AC5654B0](v68, -1, -1);
      MEMORY[0x1AC5654B0](v67, -1, -1);
    }

    else
    {
    }

    v5 = 0;
    v12 = *(v42 + 2);
    v69 = MEMORY[0x1E69E7CC0];
    a1 = 24;
    v70 = v130;
LABEL_56:
    v71 = &v42[24 * v5 + 32];
    while (v12 != v5)
    {
      if (v5 >= *(v42 + 2))
      {
        goto LABEL_97;
      }

      ++v5;
      v72 = v71 + 24;
      v73 = *v71;
      v71 += 24;
      if (v73 != v70)
      {
        v74 = *(v72 - 2);
        v75 = *(v72 - 1);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v135 = v69;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A7CCE8F8(0, *(v69 + 16) + 1, 1);
          v70 = v130;
          v69 = v135;
        }

        v78 = *(v69 + 16);
        v77 = *(v69 + 24);
        v6 = v78 + 1;
        if (v78 >= v77 >> 1)
        {
          sub_1A7CCE8F8((v77 > 1), v78 + 1, 1);
          v70 = v130;
          v69 = v135;
        }

        *(v69 + 16) = v6;
        v79 = (v69 + 24 * v78);
        v79[4] = v73;
        v79[5] = v74;
        v79[6] = v75;
        i = v128;
        goto LABEL_56;
      }
    }

    LinkQualityBestLinkSelector.selectLink(from:)(v69, &v135);

    v12 = v135;
    if (!v135)
    {
      goto LABEL_78;
    }

    v80 = v136;
    v81 = v137;
    swift_retain_n();
    v82 = v130;

    v83 = sub_1A7E22040();
    v84 = sub_1A7E228D0();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v135 = v5;
      *v85 = 136316418;
      v86 = *(v82 + 16);
      v87 = *(v82 + 24);

      v88 = sub_1A7B0CB38(v86, v87, &v135);

      *(v85 + 4) = v88;
      *(v85 + 12) = 2048;
      *(v85 + 14) = v45;
      *(v85 + 22) = 2048;
      *(v85 + 24) = v44;
      *(v85 + 32) = 2080;
      v89 = *(v12 + 2);
      v90 = *(v12 + 3);

      v91 = sub_1A7B0CB38(v89, v90, &v135);

      *(v85 + 34) = v91;
      *(v85 + 42) = 2048;
      *(v85 + 44) = v80;
      *(v85 + 52) = 2048;
      *(v85 + 54) = v81;
      _os_log_impl(&dword_1A7AD9000, v83, v84, "Checking if we need to duplicate:\n\n - Primary: %s\n    - Score: %f\n    - Confidence:%f\n\n - Secondary score: %s\n    - Score: %f\n    - Confidence: %f", v85, 0x3Eu);
      swift_arrayDestroy();
      MEMORY[0x1AC5654B0](v5, -1, -1);
      MEMORY[0x1AC5654B0](v85, -1, -1);
    }

    v6 = *v124;
    v92 = *(*v124 + 16);
    if (v92)
    {
      a1 = 0;
      v93 = v6 + 56;
      while (a1 < *(v6 + 16))
      {
        v5 = *(v93 - 24);
        v94 = *(v93 - 16);
        v95 = *(v93 - 8);
        v135 = v130;
        v136 = v45;
        v137 = v44;
        *&v132 = v12;
        *(&v132 + 1) = v80;
        *&v133 = v81;

        if (v95(&v135, &v132))
        {

          v96 = sub_1A7E22040();
          v97 = sub_1A7E228D0();

          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            v135 = v99;
            *v98 = 136315138;

            v100 = sub_1A7B0CB38(v5, v94, &v135);

            *(v98 + 4) = v100;
            _os_log_impl(&dword_1A7AD9000, v96, v97, "Duplicating because of rule %s", v98, 0xCu);
            sub_1A7B0CD6C(v99);
            MEMORY[0x1AC5654B0](v99, -1, -1);
            MEMORY[0x1AC5654B0](v98, -1, -1);
          }

          MEMORY[0x1AC561DF0](v101);
          if (*((*&v131[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v131[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_104;
          }

          goto LABEL_77;
        }

        ++a1;
        v93 += 32;
        if (v92 == a1)
        {
          goto LABEL_73;
        }
      }

LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

LABEL_73:

    for (i = v128; ; i = *&v131[0])
    {
LABEL_78:

      v102 = sub_1A7E22040();
      v103 = sub_1A7E228F0();
      if (!os_log_type_enabled(v102, v103))
      {

        goto LABEL_93;
      }

      v104 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v135 = v128;
      *v104 = 136315138;
      v105 = i >> 62 ? sub_1A7E22DA0() : *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
      v106 = MEMORY[0x1E69E7CC0];
      if (!v105)
      {
        break;
      }

      v123 = v103;
      v124 = v104;
      v125 = v102;
      v126 = v12;
      *&v132 = MEMORY[0x1E69E7CC0];
      sub_1A7CCE918(0, v105 & ~(v105 >> 63), 0);
      if ((v105 & 0x8000000000000000) == 0)
      {
        v107 = 0;
        v106 = v132;
        v108 = i & 0xC000000000000001;
        v109 = i;
        do
        {
          if (v108)
          {
            v110 = MEMORY[0x1AC562480](v107, i);
          }

          else
          {
            v110 = *(i + 8 * v107 + 32);
          }

          v112 = *(v110 + 16);
          v111 = *(v110 + 24);

          *&v132 = v106;
          v114 = *(v106 + 16);
          v113 = *(v106 + 24);
          if (v114 >= v113 >> 1)
          {
            sub_1A7CCE918((v113 > 1), v114 + 1, 1);
            v106 = v132;
          }

          ++v107;
          *(v106 + 16) = v114 + 1;
          v115 = v106 + 16 * v114;
          *(v115 + 32) = v112;
          *(v115 + 40) = v111;
          i = v109;
        }

        while (v105 != v107);
        v102 = v125;
        v104 = v124;
        LOBYTE(v103) = v123;
        break;
      }

      __break(1u);
LABEL_104:
      sub_1A7E22560();
LABEL_77:
      sub_1A7E225A0();
    }

    *&v132 = v106;
    v116 = sub_1A7E221F0();
    v118 = v117;

    v119 = sub_1A7B0CB38(v116, v118, &v135);

    *(v104 + 4) = v119;

    _os_log_impl(&dword_1A7AD9000, v102, v103, "Selected links: %s", v104, 0xCu);
    v120 = v128;
    sub_1A7B0CD6C(v128);
    MEMORY[0x1AC5654B0](v120, -1, -1);
    MEMORY[0x1AC5654B0](v104, -1, -1);
LABEL_93:
  }

  else
  {

    v57 = sub_1A7E22040();
    v58 = sub_1A7E228F0();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1A7AD9000, v57, v58, "selected no primary link", v59, 2u);
      MEMORY[0x1AC5654B0](v59, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return i;
}

uint64_t sub_1A7CCBB08()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B4A68);
  sub_1A7B0CB00(v0, qword_1EB2B4A68);
  return sub_1A7E22050();
}

uint64_t LinkSelectorPrimarySecondary.duplicationRules.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

double sub_1A7CCBC80@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v4 = sub_1A7CC7FFC(&qword_1EB2B4A88);
    v5 = sub_1A7CD0DFC(v4);
    if (v6)
    {
      sub_1A7B0CD10(*(v3 + 56) + 32 * v5, a2);
    }

    else
    {
      result = 0.0;
      *a2 = 0u;
      a2[1] = 0u;
    }
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1A7CCBD4C@<D0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, _OWORD *a3@<X8>)
{
  v5 = a2(0);
  v6 = *a1;
  if (*(v6 + 16) && (v7 = sub_1A7CD0DFC(v5), (v8 & 1) != 0))
  {
    sub_1A7B0CD10(*(v6 + 56) + 32 * v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t (*sub_1A7CCBE7C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1AC562480](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1A7CD2020;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1A7CCBEFC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1AC562480](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1A7CCBF7C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1A7CCBF84(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1AC562480](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1A7CD2024;
  }

  __break(1u);
  return result;
}

void (*sub_1A7CCC004(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1AC562480](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1A7CCC084;
  }

  __break(1u);
  return result;
}

char *sub_1A7CCC08C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7CC7FFC(&qword_1EB2B4AC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1A7CCC190(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7CC7FFC(&qword_1EB2B4D18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A7CCC2B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7CC7FFC(&qword_1EB2B4D10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A7CCC3F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7CC7FFC(&qword_1EB2B4C28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A7CCC4FC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7CC7FFC(&qword_1EB2B4D00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A7CC7FFC(&qword_1EB2B4D08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A7CCC644(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7CC7FFC(&qword_1EB2B4AD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 56 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1A7CCC75C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7CC7FFC(&qword_1EB2B4AD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A7CCC868(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7CC7FFC(&qword_1EB2B4AE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A7CCC998(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7CC7FFC(&qword_1EB2B4AB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A7CCCAA4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7CC7FFC(&qword_1EB2B4B98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A7CCCBB0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7CC7FFC(&qword_1EB2B4AA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A7CCCCE0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7CC7FFC(&qword_1EB2B4B60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A7CCCE58(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7CC7FFC(&qword_1EB2B4B20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A7CC7FFC(&qword_1EB2B4B28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A7CCCFA0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7CC7FFC(&qword_1EB2B4C48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A7CCD0D0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1A7CC7FFC(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A7CC7FFC(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1A7CCD24C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7CC7FFC(&qword_1EB2B4CE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A7CC7FFC(&qword_1EB2B4CF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A7CCD39C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7CC7FFC(&qword_1EB2B4B80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A7CCD4F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7CC7FFC(&qword_1EB2B4C60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1A7CCD608(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1A7CC7FFC(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_1A7CCD704(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7CC7FFC(&qword_1EB2B4C50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1A7CCD7F8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7CC7FFC(&qword_1EB2B4B38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1A7CCD920(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1A7CC7FFC(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A7CC7FFC(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1A7CCDA68(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7CC7FFC(&qword_1EB2B4C98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A7CCDB88(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7CC7FFC(&unk_1EB2B7C00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}