uint64_t NSErrorToOSStatusEx(void *a1, char *a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v15 = 0;
    goto LABEL_23;
  }

  v5 = [v3 domain];
  if ([v5 isEqualToString:*MEMORY[0x1E696A768]])
  {
    goto LABEL_21;
  }

  v6 = [v4 domain];
  if ([v6 isEqualToString:*MEMORY[0x1E696A798]])
  {
LABEL_20:

LABEL_21:
LABEL_22:
    v15 = [v4 code];
LABEL_23:
    v16 = 1;
    goto LABEL_24;
  }

  v7 = [v4 domain];
  if ([v7 isEqualToString:*MEMORY[0x1E696A5A0]])
  {
LABEL_19:

    goto LABEL_20;
  }

  v8 = [v4 domain];
  if ([v8 isEqualToString:@"AKAnisetteError"])
  {
LABEL_18:

    goto LABEL_19;
  }

  v9 = [v4 domain];
  if ([v9 isEqualToString:@"AKAuthenticationError"])
  {
LABEL_17:

    goto LABEL_18;
  }

  v10 = [v4 domain];
  if ([v10 isEqualToString:@"AVFoundationErrorDomain"])
  {
LABEL_16:

    goto LABEL_17;
  }

  v11 = [v4 domain];
  if ([v11 isEqualToString:@"com.apple.accounts.keychain"])
  {
LABEL_15:

    goto LABEL_16;
  }

  v12 = [v4 domain];
  if ([v12 isEqualToString:@"com.apple.wifi.apple80211API.error"])
  {
LABEL_14:

    goto LABEL_15;
  }

  v86 = v12;
  v13 = [v4 domain];
  if ([v13 isEqualToString:@"CDPStateError"])
  {
LABEL_13:

    v12 = v86;
    goto LABEL_14;
  }

  v85 = v13;
  v14 = [v4 domain];
  if ([v14 isEqualToString:@"NSCocoaErrorDomain"])
  {

    v13 = v85;
    goto LABEL_13;
  }

  v84 = v14;
  v83 = [v4 domain];
  if ([v83 isEqualToString:@"NSURLErrorDomain"])
  {
    v18 = 1;
  }

  else
  {
    v82 = [v4 domain];
    if ([v82 isEqualToString:@"RPErrorDomain"])
    {
      v18 = 1;
    }

    else
    {
      v81 = [v4 domain];
      if ([v81 isEqualToString:@"SFAppleIDErrorDomain"])
      {
        v18 = 1;
      }

      else
      {
        v80 = [v4 domain];
        if ([v80 isEqualToString:@"UserErrorDomain"])
        {
          v18 = 1;
        }

        else
        {
          v79 = [v4 domain];
          if ([v79 isEqualToString:@"WCErrorDomain"])
          {
            v18 = 1;
          }

          else
          {
            v78 = [v4 domain];
            v18 = [v78 isEqualToString:@"WCInternalErrorDomain"];
          }
        }
      }
    }
  }

  if (v18)
  {
    goto LABEL_22;
  }

  v19 = [v4 domain];
  v20 = [v19 isEqualToString:@"com.apple.accounts"];

  if (v20)
  {
    v15 = [v4 code] + 313200;
    goto LABEL_23;
  }

  v21 = [v4 domain];
  v22 = [v21 isEqualToString:@"com.apple.AppleIDAuthSupport"];

  if (v22)
  {
    v15 = [v4 code] + 313250;
    goto LABEL_23;
  }

  v23 = [v4 domain];
  if ([v23 isEqualToString:@"AppleKeyStore"])
  {

LABEL_51:
    v15 = 300940 - [v4 code];
    goto LABEL_23;
  }

  v24 = [v4 domain];
  v25 = [v24 isEqualToString:@"AKS"];

  if (v25)
  {
    goto LABEL_51;
  }

  v26 = [v4 domain];
  v27 = [v26 isEqualToString:@"CBErrorDomain"];

  if (v27)
  {
    v28 = [v4 code];
    if (v28 >= 0x49444)
    {
      v15 = v28;
    }

    else
    {
      v15 = [v4 code] + 300100;
    }

    goto LABEL_23;
  }

  v29 = [v4 domain];
  v30 = [v29 isEqualToString:@"CBATTErrorDomain"];

  if (v30)
  {
    v31 = [v4 code];
    if (v31 <= 0x11)
    {
      v15 = (v31 + 300120);
      goto LABEL_23;
    }

    v35 = v31 + 311000;
    v36 = v31 < 300100;
LABEL_64:
    if (v36)
    {
      v15 = v35;
    }

    else
    {
      v15 = v31;
    }

    goto LABEL_23;
  }

  v32 = [v4 domain];
  v33 = [v32 isEqualToString:@"CBInternalErrorDomain"];

  if (v33)
  {
    v34 = [v4 code];
    if (v34 == 12)
    {
      v15 = 300112;
    }

    else
    {
      v15 = v34;
      if (v34 == 13)
      {
        v15 = 300113;
      }

      else if (v34 < 300100)
      {
        v15 = [v4 code] + 312800;
      }
    }

    goto LABEL_23;
  }

  v37 = [v4 domain];
  v38 = [v37 isEqualToString:@"kCFErrorDomainCFNetwork"];

  if (!v38)
  {
    v41 = [v4 domain];
    v42 = [v41 isEqualToString:@"CSIdentityErrorDomain"];

    if (v42)
    {
      v31 = [v4 code];
      v35 = v31 + 313115;
      v36 = v31 < 0;
      goto LABEL_64;
    }

    v43 = [v4 domain];
    v44 = [v43 isEqualToString:@"HMErrorDomain"];

    if (v44)
    {
      v15 = [v4 code] + 300200;
      goto LABEL_23;
    }

    v45 = [v4 domain];
    v46 = [v45 isEqualToString:@"HMFErrorDomain"];

    if (v46)
    {
      v15 = [v4 code] + 312600;
      goto LABEL_23;
    }

    v47 = [v4 domain];
    v48 = [v47 isEqualToString:@"com.apple.identityservices.error"];

    if (v48)
    {
      v49 = [v4 code];
      if (v49 == 200)
      {
        v15 = 300800;
      }

      else
      {
        v15 = (v49 + 300400);
      }

      goto LABEL_23;
    }

    v50 = [v4 domain];
    v51 = [v50 isEqualToString:@"IDSLocalPairingErrorDomain"];

    if (v51 || ([v4 domain], v52 = objc_claimAutoreleasedReturnValue(), v53 = objc_msgSend(v52, "isEqualToString:", @"IDSAccountRegistrationErrorDomain"), v52, v53))
    {
      v15 = [v4 code] + 300500;
      goto LABEL_23;
    }

    v54 = [v4 domain];
    v55 = [v54 isEqualToString:@"com.apple.ids.idssenderrordomain"];

    if (v55)
    {
      v15 = [v4 code] + 300700;
      goto LABEL_23;
    }

    v56 = [v4 domain];
    v57 = [v56 isEqualToString:@"com.apple.ids.idssessionerrorDomain"];

    if (v57)
    {
      v58 = [v4 code];
      if (v58 >= 3)
      {
        v15 = v58;
      }

      else
      {
        v15 = v58 + 300801;
      }

      goto LABEL_23;
    }

    v59 = [v4 domain];
    v60 = [v59 isEqualToString:@"signal"];

    if (v60)
    {
      v15 = [v4 code] + 312700;
      goto LABEL_23;
    }

    v61 = [v4 domain];
    if (([v61 isEqualToString:@"kAFAssistantErrorDomain"] & 1) == 0)
    {
      v62 = [v4 domain];
      if (([v62 isEqualToString:@"SiriAceErrorDomain"] & 1) == 0)
      {
        v63 = [v4 domain];
        if (![v63 isEqualToString:@"SiriSpeechErrorDomain"])
        {
          v64 = [v4 domain];
          v65 = [v64 isEqualToString:@"SiriStructuredDictationErrorDomain"];

          if ((v65 & 1) == 0)
          {
            v66 = [v4 domain];
            v67 = [v66 isEqualToString:@"SBSRemoteAlertHandleInvalidationErrorDomain"];

            if (v67)
            {
              v15 = [v4 code] + 300180;
              goto LABEL_23;
            }

            v68 = [v4 domain];
            v69 = [v68 isEqualToString:@"SSErrorDomain"];

            if (v69)
            {
              v15 = [v4 code] + 313300;
              goto LABEL_23;
            }

            v70 = [v4 domain];
            if ([v70 isEqualToString:@"TRNearbyDeviceErrorDomain"])
            {
            }

            else
            {
              v71 = [v4 domain];
              v72 = [v71 isEqualToString:@"TouchRemote"];

              if (!v72)
              {
                v74 = [v4 domain];
                v75 = [v74 isEqualToString:@"WPErrorDomain"];

                v76 = [v4 code];
                if (v75)
                {
                  v15 = v76 + 300900;
                  goto LABEL_23;
                }

                v16 = 0;
                if (v76)
                {
                  v15 = v76;
                }

                else
                {
                  v15 = 4294960596;
                }

                goto LABEL_24;
              }
            }

            v73 = [v4 code];
            if (v73 > -9104)
            {
              if (v73 > -8007)
              {
                if (v73 <= -8004)
                {
                  if (v73 == -8006)
                  {
                    v15 = 300967;
                  }

                  else if (v73 == -8005)
                  {
                    v15 = 300966;
                  }

                  else
                  {
                    v15 = 300965;
                  }

                  goto LABEL_23;
                }

                if (v73 <= -8002)
                {
                  if (v73 == -8003)
                  {
                    v15 = 300964;
                  }

                  else
                  {
                    v15 = 300963;
                  }

                  goto LABEL_23;
                }

                if (v73 == -8000)
                {
                  v15 = 300961;
                  goto LABEL_23;
                }

                if (v73 == -8001)
                {
                  v15 = 300962;
                  goto LABEL_23;
                }
              }

              else
              {
                if (v73 <= -9101)
                {
                  if (v73 == -9103)
                  {
                    v15 = 300974;
                  }

                  else if (v73 == -9102)
                  {
                    v15 = 300973;
                  }

                  else
                  {
                    v15 = 300972;
                  }

                  goto LABEL_23;
                }

                if (v73 > -9001)
                {
                  if (v73 == -9000)
                  {
                    v15 = 300969;
                    goto LABEL_23;
                  }

                  if (v73 == -8007)
                  {
                    v15 = 300968;
                    goto LABEL_23;
                  }
                }

                else
                {
                  if (v73 == -9100)
                  {
                    v15 = 300971;
                    goto LABEL_23;
                  }

                  if (v73 == -9001)
                  {
                    v15 = 300970;
                    goto LABEL_23;
                  }
                }
              }
            }

            else if (v73 > -9401)
            {
              if (v73 <= -9203)
              {
                switch(v73)
                {
                  case -9400:
                    v15 = 300981;
                    goto LABEL_23;
                  case -9301:
                    v15 = 300980;
                    goto LABEL_23;
                  case -9300:
                    v15 = 300979;
                    goto LABEL_23;
                }
              }

              else
              {
                if (v73 <= -9201)
                {
                  if (v73 == -9202)
                  {
                    v15 = 300978;
                  }

                  else
                  {
                    v15 = 300977;
                  }

                  goto LABEL_23;
                }

                if (v73 == -9200)
                {
                  v15 = 300976;
                  goto LABEL_23;
                }

                if (v73 == -9104)
                {
                  v15 = 300975;
                  goto LABEL_23;
                }
              }
            }

            else if (v73 <= -10002)
            {
              switch(v73)
              {
                case -11001:
                  v15 = 300988;
                  goto LABEL_23;
                case -11000:
                  v15 = 300987;
                  goto LABEL_23;
                case -10002:
                  v15 = 300986;
                  goto LABEL_23;
              }
            }

            else if (v73 > -9501)
            {
              if (v73 == -9500)
              {
                v15 = 300983;
                goto LABEL_23;
              }

              if (v73 == -9401)
              {
                v15 = 300982;
                goto LABEL_23;
              }
            }

            else
            {
              if (v73 == -10001)
              {
                v15 = 300985;
                goto LABEL_23;
              }

              if (v73 == -10000)
              {
                v15 = 300984;
                goto LABEL_23;
              }
            }

            v77 = [v4 code];
            if (v77)
            {
              v15 = v77;
            }

            else
            {
              v15 = 300960;
            }

            goto LABEL_23;
          }

LABEL_156:
          v15 = [v4 code] + 320000;
          goto LABEL_23;
        }
      }
    }

    goto LABEL_156;
  }

  v39 = [v4 code];
  v15 = v39;
  v16 = 1;
  if (v39 > 199)
  {
    if (v39 <= 304)
    {
      if (v39 > 301)
      {
        if (v39 == 302)
        {
          v40 = 57;
        }

        else if (v39 == 303)
        {
          v40 = 58;
        }

        else
        {
          v40 = 59;
        }

        goto LABEL_141;
      }

      switch(v39)
      {
        case 0xC8:
          v15 = 300154;
          goto LABEL_23;
        case 0x12C:
          v15 = 300155;
          goto LABEL_23;
        case 0x12D:
          v15 = 300156;
          goto LABEL_23;
      }
    }

    else
    {
      if (v39 <= 307)
      {
        if (v39 == 305)
        {
          v15 = 300160;
        }

        else if (v39 == 306)
        {
          v15 = 300161;
        }

        else
        {
          v15 = 300162;
        }

        goto LABEL_23;
      }

      if (v39 <= 309)
      {
        if (v39 == 308)
        {
          v15 = 300163;
        }

        else
        {
          v15 = 300164;
        }

        goto LABEL_23;
      }

      if (v39 == 310)
      {
        v15 = 300165;
        goto LABEL_23;
      }

      if (v39 == 311)
      {
        v15 = 300166;
        goto LABEL_23;
      }
    }

    goto LABEL_24;
  }

  if (v39 <= 111)
  {
    if (v39 > 100)
    {
      switch(v39)
      {
        case 'e':
          v15 = 300144;
          goto LABEL_23;
        case 'n':
          v15 = 300145;
          goto LABEL_23;
        case 'o':
          v15 = 300146;
          goto LABEL_23;
      }

      goto LABEL_24;
    }

    switch(v39)
    {
      case 1:
        v40 = 41;
        break;
      case 2:
        v40 = 42;
        break;
      case 0x64:
        v40 = 43;
        break;
      default:
        goto LABEL_24;
    }

LABEL_141:
    v15 = v40 | 0x49444u;
    goto LABEL_23;
  }

  if (v39 <= 120)
  {
    if (v39 == 112)
    {
      v15 = 300147;
      goto LABEL_23;
    }

    if (v39 == 113)
    {
      v15 = 300148;
      goto LABEL_23;
    }

    if (v39 != 120)
    {
      goto LABEL_24;
    }

    v40 = 49;
    goto LABEL_141;
  }

  if (v39 <= 122)
  {
    if (v39 == 121)
    {
      v40 = 50;
    }

    else
    {
      v40 = 51;
    }

    goto LABEL_141;
  }

  if (v39 == 123)
  {
    v15 = 300152;
    goto LABEL_23;
  }

  if (v39 == 124)
  {
    v15 = 300153;
    goto LABEL_23;
  }

LABEL_24:
  if (a2)
  {
    *a2 = v16;
  }

  return v15;
}

const char *DebugGetErrorStringEx(const __CFString *a1, int a2, char *a3, uint64_t a4)
{
  if (a1)
  {
    v7 = CUErrorDomainCodeToString(a1, a2);
    if (v7)
    {
      goto LABEL_22;
    }
  }

  if (a2 == 999 || (a2 - 100) <= 0x1F3)
  {
    if (a2 == 102)
    {
      v7 = "EOPNOTSUPP / kA11AuthFatalErr / HTTP Processing";
      goto LABEL_22;
    }

    v8 = a2;
    goto LABEL_12;
  }

  if (a2 == 200999 || (a2 - 200100) <= 0x1F3)
  {
    v8 = a2 - 200000;
LABEL_12:
    v7 = HTTPGetReasonPhrase(v8);
    if (*v7)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  v7 = 0;
LABEL_13:
  if (MEMORY[0x1EEE86638])
  {
    v9 = CUErrorCodesTableGet();
    v7 = *(v9 + 8);
    if (v7)
    {
      if (*v9 == a2)
      {
        goto LABEL_22;
      }

      v10 = (v9 + 24);
      while (1)
      {
        v7 = *v10;
        if (!*v10)
        {
          break;
        }

        v11 = *(v10 - 2);
        v10 += 2;
        if (v11 == a2)
        {
          goto LABEL_22;
        }
      }
    }
  }

  if (!v7)
  {
    v7 = "";
  }

LABEL_22:
  if (!a3 || !a4)
  {
    return v7;
  }

  v12 = a4 - 1;
  v13 = a3;
  if (a4 - 1 >= 1)
  {
    v13 = a3;
    do
    {
      v14 = *v7;
      if (!*v7)
      {
        break;
      }

      ++v7;
      *v13++ = v14;
      --v12;
    }

    while (v12 > 0);
  }

  *v13 = 0;
  return a3;
}

uint64_t CUXPCDecodeNSDataOfLength(void *a1, const char *a2, uint64_t a3, void **a4, void *a5)
{
  v9 = a1;
  length = 0;
  data = xpc_dictionary_get_data(v9, a2, &length);
  if (!data)
  {
    v20 = xpc_dictionary_get_value(v9, a2);
    v21 = v20;
    if (!v20)
    {
LABEL_8:

      goto LABEL_9;
    }

    if (MEMORY[0x193B07A70](v20) == MEMORY[0x1E69E9E70])
    {
      if (!a3)
      {
        v27 = [MEMORY[0x1E695DEF0] data];
        v28 = *a4;
        *a4 = v27;

        goto LABEL_8;
      }

      if (a5)
      {
        NSErrorF_safe(*MEMORY[0x1E696A768], 4294960553, "XPC bad size: '%s', 0 vs %zu", v22, v23, v24, v25, v26, a2);
        goto LABEL_17;
      }
    }

    else if (a5)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "XPC non-data type: '%s'", v22, v23, v24, v25, v26, a2);
      *a5 = LABEL_17:;
    }

    goto LABEL_19;
  }

  if (length != a3)
  {
    if (a5)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960553, "XPC bad size: '%s', %zu vs %zu", v11, v12, v13, v14, v15, a2);
      *a5 = v29 = 0;
      goto LABEL_10;
    }

LABEL_19:
    v29 = 0;
    goto LABEL_10;
  }

  v16 = data;
  v17 = objc_alloc(MEMORY[0x1E695DEF0]);
  v18 = [v17 initWithBytes:v16 length:length];
  v19 = *a4;
  *a4 = v18;

LABEL_9:
  v29 = 1;
LABEL_10:

  return v29;
}

uint64_t PrintFWriteTimeDuration(unint64_t a1, int a2, char *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1 / 0x1E13380;
  v4 = a1 % 0x1E13380 / 0x15180;
  v5 = a1 % 0x1E13380 % 0x15180;
  v6 = v5 / 0xE10;
  v7 = v5 % 0xE10;
  v8 = v5 % 0xE10 / 0x3C;
  v9 = a3;
  if ((a1 / 0x1E13380))
  {
    v10 = v29;
    do
    {
      *v10++ = (v3 % 0xA) | 0x30;
      v11 = v3 > 9;
      LODWORD(v3) = v3 / 0xA;
    }

    while (v11);
    v12 = a3;
    if (v10 > v29)
    {
      v12 = a3;
      do
      {
        v13 = *--v10;
        *v12++ = v13;
      }

      while (v10 > v29);
    }

    *v12 = 121;
    v9 = v12 + 1;
  }

  if ((a1 % 0x1E13380) >> 7 >= 0x2A3)
  {
    v14 = a3;
    if (v9 != a3)
    {
      *v9 = 32;
      v14 = v9 + 1;
    }

    v15 = v29;
    do
    {
      *v15++ = (v4 % 0xA) | 0x30;
      v11 = v4 > 9;
      v4 /= 0xAu;
    }

    while (v11);
    while (v15 > v29)
    {
      v16 = *--v15;
      *v14++ = v16;
    }

    *v14 = 100;
    v9 = v14 + 1;
  }

  v17 = (v7 - 60 * v8);
  if (v5 >= 0xE10)
  {
    if (v9 != a3)
    {
      *v9++ = 32;
    }

    if (a2 && v5 >> 5 <= 0x464)
    {
      *v9++ = 48;
    }

    v18 = v29;
    do
    {
      *v18++ = (v6 % 0xA) | 0x30;
      v11 = v6 > 9;
      v6 /= 0xAu;
    }

    while (v11);
    while (v18 > v29)
    {
      v19 = *--v18;
      *v9++ = v19;
    }

    if (a2)
    {
      v20 = 58;
    }

    else
    {
      v20 = 104;
    }

    *v9++ = v20;
  }

  if (a2 || v7 >= 0x3C)
  {
    if (a2 || v9 == a3)
    {
      if (v5 < 0xE10 || !a2 || v7 > 0x257)
      {
        goto LABEL_40;
      }

      v21 = 48;
    }

    else
    {
      v21 = 32;
    }

    *v9++ = v21;
LABEL_40:
    v22 = v29;
    do
    {
      *v22++ = (v8 % 0xA) | 0x30;
      v11 = v8 > 9;
      v8 /= 0xAu;
    }

    while (v11);
    while (v22 > v29)
    {
      v23 = *--v22;
      *v9++ = v23;
    }

    if (a2)
    {
      v24 = 58;
    }

    else
    {
      v24 = 109;
    }

    *v9++ = v24;
  }

  if (!v17 && !a2 && v9 != a3)
  {
    goto LABEL_64;
  }

  if (!a2 && v9 != a3)
  {
    v25 = 32;
LABEL_57:
    *v9++ = v25;
    goto LABEL_58;
  }

  if (a2 && v17 <= 9)
  {
    v25 = 48;
    goto LABEL_57;
  }

LABEL_58:
  v26 = v29;
  do
  {
    *v26++ = (v17 % 0xA) | 0x30;
    v11 = v17 > 9;
    v17 /= 0xAu;
  }

  while (v11);
  while (v26 > v29)
  {
    v27 = *--v26;
    *v9++ = v27;
  }

  if (!a2)
  {
    *v9++ = 115;
  }

LABEL_64:
  *v9 = 0;
  return (v9 - a3);
}

void _BonjourBrowser_NANEnsureStopped(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72))
  {
    if (gLogCategory_BonjourBrowser <= 30 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_NANEnsureStopped(BonjourBrowserRef, Boolean)", 0x1Eu, "NAN subscriber stop: %s\n", a5, a6, a7, a8, *(a1 + 136));
    }

    if (!a2)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v10 = [*(a1 + 72) discoveredEndpoints];
      v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v16;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(v10);
            }

            _BonjourBrowser_NANEndpointLost(a1, *(*(&v15 + 1) + 8 * i));
          }

          v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v12);
      }
    }

    [*(a1 + 72) invalidate];

    *(a1 + 72) = 0;
  }
}

void _BonjourBrowser_HandleError(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a1 + 120);
  if (a2)
  {
    if (!v10)
    {
      _BonjourBrowser_PostEvent(a1, 4, 0, 0);
    }

    while (1)
    {
      v11 = *(a1 + 88);
      if (!v11)
      {
        break;
      }

      *(a1 + 88) = *v11;
      _BonjourBrowser_RemoveService(a1, v11, 0);
      _BonjourService_Free(v11);
    }

    _BonjourBrowser_NANEnsureStopped(a1, 1, a3, a4, a5, a6, a7, a8);
    _BonjourBrowser_EnsureStoppedDNSSD(a1);
    if (!*(a1 + 120))
    {
      v12 = mach_absolute_time();
      v13 = UpTicksToMilliseconds(v12 - *(a1 + 112));
      if (v13 >= 0x2911)
      {
        v18 = 100;
      }

      else
      {
        v18 = 10513 - v13;
      }

      if (gLogCategory_BonjourBrowser <= 50 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x32u)))
      {
        LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_HandleError(BonjourBrowserRef, OSStatus)", 0x32u, "### Browse for %s failed, retrying in %llu ms: %#m\n", v14, v15, v16, v17, *(a1 + 136));
      }

      v19 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 16));
      *(a1 + 120) = v19;
      if (v19)
      {
        CFRetain(a1);
        dispatch_set_context(*(a1 + 120), a1);
        dispatch_source_set_event_handler_f(*(a1 + 120), _BonjourBrowser_RetryTimerFired);
        dispatch_source_set_cancel_handler_f(*(a1 + 120), _BonjourBrowser_RetryTimerCanceled);
        v24 = *(a1 + 120);
        v25 = dispatch_time(0, 1000000 * v18);
        dispatch_source_set_timer(v24, v25, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        v26 = *(a1 + 120);

        dispatch_resume(v26);
      }

      else if (gLogCategory_BonjourBrowser <= 60 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x3Cu)))
      {

        LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_HandleError(BonjourBrowserRef, OSStatus)", 0x3Cu, "### Bonjour retry timer failed\n", v20, v21, v22, v23, a9);
      }
    }
  }

  else if (v10)
  {
    dispatch_source_cancel(*(a1 + 120));
    dispatch_release(v10);
    *(a1 + 120) = 0;
  }
}

id NSErrorWithOSStatusF(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v10 = NSErrorV(*MEMORY[0x1E696A768], a1, a2, &a9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id NSErrorV(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v32[3] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  if (a2)
  {
    ErrorString = DebugGetErrorStringEx(v7, a2, 0, 0);
    v23 = NSPrintV(a3, a4, v10, v11, v12, v13, v14, v15);
    if (*ErrorString)
    {
      NSPrintF("%s (%@)", v16, v17, v18, v19, v20, v21, v22, ErrorString);
    }

    else
    {
      NSPrintF("%d (%@)", v16, v17, v18, v19, v20, v21, v22, a2);
    }
    v25 = ;
    v26 = objc_alloc(MEMORY[0x1E696ABC0]);
    v31[0] = @"cuErrorDesc";
    v31[1] = @"cuErrorMsg";
    if (v23)
    {
      v27 = v23;
    }

    else
    {
      v27 = &stru_1F068B090;
    }

    v32[0] = v25;
    v32[1] = v27;
    v31[2] = *MEMORY[0x1E696A578];
    v32[2] = v25;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];
    if (v8)
    {
      v29 = v8;
    }

    else
    {
      v29 = *MEMORY[0x1E696A768];
    }

    v24 = [v26 initWithDomain:v29 code:a2 userInfo:v28];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

uint64_t CUIsGreenTeaDevice()
{
  if (CUIsGreenTeaDevice_sOnce != -1)
  {
    dispatch_once(&CUIsGreenTeaDevice_sOnce, &__block_literal_global_82);
  }

  return CUIsGreenTeaDevice_sResult;
}

uint64_t _OPACKEncodeDictionaryApplier(uint64_t result, uint64_t a2, void *a3)
{
  if (!*(a3 + 4))
  {
    result = _OPACKEncodeObject(*a3, result);
    if (result || (result = _OPACKEncodeObject(*a3, a2), result))
    {
      *(a3 + 4) = result;
    }
  }

  return result;
}

uint64_t _OPACKEncodeUID(uint64_t a1, const void *a2, _BYTE *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(*(a1 + 16), a2);
  if (!Value)
  {
    v8 = *(a1 + 16);
    v9 = (*(a1 + 24) + 1);
    *(a1 + 24) = v9;
    CFDictionaryAddValue(v8, a2, v9);
    result = 0;
    *a3 = 0;
    return result;
  }

  if (Value > 0x21)
  {
    if (Value > 0x100)
    {
      if (Value > 0x10000)
      {
        if (Value >= 0x1000001)
        {
          if (Value > 0x100000000)
          {
            return 4294960586;
          }

          v11 = -60;
          v12 = Value - 1;
          v7 = 5;
        }

        else
        {
          v11 = -61;
          LOWORD(v12) = Value - 1;
          BYTE2(v12) = (Value - 1) >> 16;
          v7 = 4;
        }
      }

      else
      {
        v11 = -62;
        LOWORD(v12) = Value - 1;
        v7 = 3;
      }
    }

    else
    {
      v11 = -63;
      LOBYTE(v12) = Value - 1;
      v7 = 2;
    }
  }

  else
  {
    v11 = Value - 97;
    v7 = 1;
  }

  result = (*a1)(&v11, v7, 0, *(a1 + 8));
  if (!result)
  {
    *a3 = 1;
  }

  return result;
}

CFMutableDataRef OPACKEncoderCreateDataMutable(const __CFString *a1, unsigned int a2, int *a3)
{
  Mutable = CFDataCreateMutable(0, 0);
  if (Mutable)
  {
    v7 = OPACKEncodeObject(a1, a2, _OPACKEncoderAppendCallback, Mutable);
    if (v7)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

  else
  {
    v7 = -6728;
  }

  if (a3)
  {
    *a3 = v7;
  }

  return Mutable;
}

uint64_t OPACKEncodeObject(const __CFString *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v10[0] = a3;
  v10[1] = a4;
  v12 = 0;
  cf = 0;
  v13 = a2;
  if (gOPACKInitalizeOnce == -1)
  {
    if ((a2 & 2) != 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    dispatch_once_f(&gOPACKInitalizeOnce, 0, _OPACKInitializeOnce);
    if ((v4 & 2) != 0)
    {
      goto LABEL_4;
    }
  }

  v6 = *(MEMORY[0x1E695E9D8] + 32);
  *&v9.release = *(MEMORY[0x1E695E9D8] + 16);
  *&v9.equal = v6;
  *&v9.version = *MEMORY[0x1E695E9D8];
  v9.equal = _OPACKObjectsExactlyEqual;
  cf = CFDictionaryCreateMutable(0, 0, &v9, 0);
  if (!cf)
  {
    return 4294960568;
  }

LABEL_4:
  v7 = _OPACKEncodeObject(v10, a1);
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t _OPACKEncodeObject(uint64_t a1, const __CFString *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = CFGetTypeID(a2);
  if (v4 == gCFStringType_12310)
  {
    v41 = 0;
    valuePtr = 0;
    v40 = 0;
    if (!*(a1 + 16) || CFStringGetLength(a2) < 1)
    {
      goto LABEL_6;
    }

    LOBYTE(context) = 0;
    v5 = _OPACKEncodeUID(a1, a2, &context);
    if (!v5)
    {
      if (!context)
      {
LABEL_6:
        v6 = CFStringGetOrCopyCStringUTF8(a2, &valuePtr, &v41, &v40);
        if (!v6)
        {
          if (v40 > 0x20)
          {
            if (v40 > 0xFF)
            {
              if (v40 >> 16)
              {
                if (HIDWORD(v40))
                {
                  LOBYTE(context) = 100;
                  *(&context + 1) = v40;
                  v7 = 9;
                }

                else
                {
                  LOBYTE(context) = 99;
                  *(&context + 1) = v40;
                  v7 = 5;
                }
              }

              else
              {
                LOBYTE(context) = 98;
                *(&context + 1) = v40;
                v7 = 3;
              }
            }

            else
            {
              LOBYTE(context) = 97;
              BYTE1(context) = v40;
              v7 = 2;
            }
          }

          else
          {
            LOBYTE(context) = v40 | 0x40;
            v7 = 1;
          }

          v6 = (*a1)(&context, v7, 0, *(a1 + 8));
          if (!v6)
          {
            if (!v40)
            {
              v17 = 0;
LABEL_83:
              if (v41)
              {
                free(v41);
              }

              return v17;
            }

            v6 = (*a1)(valuePtr, v40, 0, *(a1 + 8));
          }
        }

        v17 = v6;
        goto LABEL_83;
      }

      return 0;
    }

    return v5;
  }

  v8 = v4;
  if (v4 == gCFNumberType_12304)
  {
    if (CFNumberIsFloatType(a2))
    {
      if (!*(a1 + 16))
      {
        goto LABEL_14;
      }

      LOBYTE(context) = 0;
      v5 = _OPACKEncodeUID(a1, a2, &context);
      if (v5)
      {
        return v5;
      }

      if (!context)
      {
LABEL_14:
        if (CFNumberGetByteSize(a2) > 4)
        {
          valuePtr = 0;
          CFNumberGetValue(a2, kCFNumberFloat64Type, &valuePtr);
          LOBYTE(context) = 54;
          *(&context + 1) = valuePtr;
          v9 = 9;
        }

        else
        {
          LODWORD(valuePtr) = 0;
          v9 = 5;
          CFNumberGetValue(a2, kCFNumberFloat32Type, &valuePtr);
          LOBYTE(context) = 53;
          *(&context + 1) = valuePtr;
        }

        return (*a1)(&context, v9, 0, *(a1 + 8));
      }

      return 0;
    }

    if ((*(a1 + 32) & 0x10) == 0)
    {
      valuePtr = 0;
      CFNumberGetValue(a2, kCFNumberSInt64Type, &valuePtr);
      v18 = valuePtr;
      if (*(a1 + 16) && (valuePtr - 40) <= 0xFFFFFFFFFFFFFFD6)
      {
        LOBYTE(context) = 0;
        v17 = _OPACKEncodeUID(a1, a2, &context);
        if (v17 || context)
        {
          return v17;
        }

        v18 = valuePtr;
      }

      if (v18 == v18)
      {
        if ((v18 + 1) > 0x28u)
        {
          LOBYTE(context) = 48;
          BYTE1(context) = v18;
          v9 = 2;
        }

        else
        {
          LOBYTE(context) = v18 + 8;
          v9 = 1;
        }
      }

      else if (v18 == v18)
      {
        LOBYTE(context) = 50;
        *(&context + 1) = v18;
        BYTE3(context) = BYTE2(v18);
        v9 = 5;
        BYTE4(context) = BYTE3(v18);
      }

      else
      {
        LOBYTE(context) = 51;
        *(&context + 1) = v18;
        v9 = 9;
      }

      return (*a1)(&context, v9, 0, *(a1 + 8));
    }

    valuePtr = 0;
    v43 = 0;
    CFNumberGetValue(a2, kCFNumberMaxType|kCFNumberSInt8Type, &valuePtr);
    v28 = valuePtr;
    v27 = v43;
    if (*(a1 + 16) && __PAIR128__(-1, -42) >= __PAIR128__(&valuePtr[(v43 >= 0x28) - 1], v43 - 40))
    {
      LOBYTE(context) = 0;
      v5 = _OPACKEncodeUID(a1, a2, &context);
      if (v5)
      {
        return v5;
      }

      if (context)
      {
        return 0;
      }
    }

    else if (v43 + 1 <= 0x28)
    {
      LOBYTE(context) = v43 + 8;
      v14 = 1;
LABEL_113:
      v12 = *a1;
      v11 = *(a1 + 8);
      p_context = &context;
      return v12(p_context, v14, 0, v11);
    }

    if (v27 + 128 > 0xFF)
    {
      if (v27 < 0xFFFFFFFFFFFF8000)
      {
        v33 = v28;
      }

      else
      {
        v33 = v28 + 1;
      }

      if (v33 | ((v27 + 0x8000) >> 16))
      {
        if (v27 < 0xFFFFFFFF80000000)
        {
          v34 = v28;
        }

        else
        {
          v34 = v28 + 1;
        }

        if (v34 | ((v27 + 0x80000000) >> 32))
        {
          if (v27 < 0x8000000000000000)
          {
            v35 = v28;
          }

          else
          {
            v35 = (v28 + 1);
          }

          if (v35)
          {
            LOBYTE(context) = 52;
            *(&context + 1) = v27;
            BYTE9(context) = v28;
            v36 = HIDWORD(v28);
            v37 = v28 >> 24;
            v38 = v28 >> 16;
            v39 = v28 >> 8;
            *(&context + 10) = vmovn_s16(vqtbl4q_s8(*(&v23 - 1), xmmword_191FF9570)).u32[0];
            BYTE14(context) = BYTE5(v28);
            HIBYTE(context) = BYTE6(v28);
            LOBYTE(v45) = HIBYTE(v28);
            v14 = 17;
          }

          else
          {
            LOBYTE(context) = 51;
            *(&context + 1) = v27;
            v14 = 9;
          }
        }

        else
        {
          LOBYTE(context) = 50;
          *(&context + 1) = v27;
          BYTE3(context) = BYTE2(v27);
          v14 = 5;
          BYTE4(context) = BYTE3(v27);
        }
      }

      else
      {
        LOBYTE(context) = 49;
        *(&context + 1) = v27;
        v14 = 3;
      }
    }

    else
    {
      LOBYTE(context) = 48;
      BYTE1(context) = v27;
      v14 = 2;
    }

    goto LABEL_113;
  }

  if (v4 == gCFBooleanType_12306)
  {
    if (*MEMORY[0x1E695E4D0] == a2)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    goto LABEL_20;
  }

  if (v4 == gCFDictionaryType_12309)
  {
    Count = CFDictionaryGetCount(a2);
    v16 = Count - 32;
    if (Count >= 15)
    {
      v16 = -17;
    }

    LOBYTE(valuePtr) = v16;
    v5 = (*a1)(&valuePtr, 1, 0, *(a1 + 8));
    if (v5)
    {
      return v5;
    }

    if (Count >= 1)
    {
      v45 = 0;
      context = a1;
      CFDictionaryApplyFunction(a2, _OPACKEncodeDictionaryApplier, &context);
      v17 = v45;
      if (v45)
      {
        return v17;
      }
    }

    if (valuePtr != 239)
    {
      return 0;
    }

    LOBYTE(valuePtr) = 3;
    v12 = *a1;
    v11 = *(a1 + 8);
    p_context = &valuePtr;
    goto LABEL_21;
  }

  if (v4 == gCFArrayType_12305)
  {
    v19 = CFArrayGetCount(a2);
    v20 = v19 - 48;
    if (v19 >= 15)
    {
      v20 = -33;
    }

    LOBYTE(context) = v20;
    v5 = (*a1)(&context, 1, 0, *(a1 + 8));
    if (v5)
    {
      return v5;
    }

    if (v19 >= 1)
    {
      v21 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v21);
        v5 = _OPACKEncodeObject(a1, ValueAtIndex);
        if (v5)
        {
          return v5;
        }
      }

      while (v19 != ++v21);
    }

    if (context != 223)
    {
      return 0;
    }

    v10 = 3;
    goto LABEL_20;
  }

  if (v4 == gCFDataType_12307)
  {

    return _OPACKEncodeData(a1, a2);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = a1;
    v31 = a2;
    v32 = 1;
LABEL_75:

    return _OPACKEncodeUUID(v30, v31, v32);
  }

  if (v8 == gCFUUIDType)
  {
    v30 = a1;
    v31 = a2;
    v32 = 0;
    goto LABEL_75;
  }

  if (*MEMORY[0x1E695E738] == a2)
  {
    v10 = 4;
LABEL_20:
    LOBYTE(context) = v10;
    v12 = *a1;
    v11 = *(a1 + 8);
    p_context = &context;
LABEL_21:
    v14 = 1;
    return v12(p_context, v14, 0, v11);
  }

  if (v8 != gCFDateType_12308)
  {
    return 4294960561;
  }

  return _OPACKEncodeDate(a1, a2);
}

const void *_OPACKDecodeUID(uint64_t a1, unsigned __int16 *a2, uint64_t a3, int a4, void *a5, int *a6)
{
  v9 = (a4 - 160);
  if (v9 <= 0x20)
  {
    goto LABEL_2;
  }

  v12 = 0;
  v13 = -6762;
  if (a4 > 194)
  {
    if (a4 == 195)
    {
      if (a3 - a2 < 3)
      {
        goto LABEL_21;
      }

      v9 = *a2 | (*(a2 + 2) << 16);
      a2 = (a2 + 3);
    }

    else
    {
      if (a4 != 196)
      {
        goto LABEL_5;
      }

      if (a3 - a2 < 4)
      {
        goto LABEL_21;
      }

      v16 = *a2;
      a2 += 2;
      v9 = v16;
    }
  }

  else
  {
    if (a4 != 193)
    {
      if (a4 != 194)
      {
        goto LABEL_5;
      }

      if (a3 - a2 >= 2)
      {
        v15 = *a2++;
        v9 = v15;
        goto LABEL_2;
      }

LABEL_21:
      v12 = 0;
      v13 = -6750;
      goto LABEL_5;
    }

    if (a3 - a2 < 1)
    {
      goto LABEL_21;
    }

    v17 = *a2;
    a2 = (a2 + 1);
    v9 = v17;
  }

LABEL_2:
  v10 = *(a1 + 24);
  if (v10)
  {
    Value = CFDictionaryGetValue(v10, v9);
    v12 = Value;
    if (Value)
    {
      CFRetain(Value);
      v13 = 0;
    }

    else
    {
      v13 = -6708;
    }
  }

  else
  {
    v12 = 0;
    v13 = -6732;
  }

LABEL_5:
  *a5 = a2;
  *a6 = v13;
  return v12;
}

__CFString *_OPACKDecodeObject(uint64_t a1, UInt8 *bytes, unint64_t a3, UInt8 **a4, int *a5)
{
  if ((a3 - bytes) < 1)
  {
    goto LABEL_108;
  }

  v10 = bytes + 1;
  v9 = *bytes;
  v38 = bytes + 1;
  if ((v9 - 64) <= 0x20)
  {
    v11 = (v9 - 64);
    if (v9 != 64)
    {
      if (a3 - v10 >= v11)
      {
        v12 = CFStringCreateWithBytes(0, bytes + 1, (v9 - 64), 0x8000100u, 0);
        if (v12)
        {
          v10 += v11;
          goto LABEL_7;
        }

        goto LABEL_117;
      }

LABEL_108:
      v12 = 0;
      v16 = -6750;
      goto LABEL_25;
    }

    v12 = &stru_1F068B090;
LABEL_23:
    v38 = v10;
    goto LABEL_24;
  }

  v15 = v9 - 7;
  if ((v9 - 7) > 0x28)
  {
    if ((v9 - 97) <= 0xE)
    {
      v12 = 0;
      v16 = -6762;
      if (v9 <= 98)
      {
        if (v9 == 97)
        {
          if ((a3 - v10) < 1)
          {
            goto LABEL_108;
          }

          v24 = 0;
          v25 = bytes[1];
          v10 = bytes + 2;
        }

        else
        {
          if (v9 != 98)
          {
            goto LABEL_25;
          }

          if ((a3 - v10) < 2)
          {
            goto LABEL_108;
          }

          v24 = 0;
          v25 = *(bytes + 1);
          v10 = bytes + 3;
        }
      }

      else
      {
        if (v9 != 99)
        {
          if (v9 == 100)
          {
            if ((a3 - v10) < 8)
            {
              goto LABEL_108;
            }

            v26 = bytes[8];
            if (((v26 << 56) & 0x8000000000000000) == 0)
            {
              v24 = 0;
              v25 = (*(bytes + 1) | (bytes[5] << 32) | (bytes[6] << 40) | (bytes[7] << 48)) & 0xFFFFFFFFFFFFFFLL | (v26 << 56);
              v10 = bytes + 9;
              goto LABEL_83;
            }
          }

          else
          {
            if (v9 != 111)
            {
              goto LABEL_25;
            }

            if (v10 >= a3)
            {
              goto LABEL_108;
            }

            v17 = bytes + 1;
            while (*v17)
            {
              v12 = 0;
              ++v17;
              v16 = -6750;
              if (v17 == a3)
              {
                goto LABEL_25;
              }
            }

            v25 = v17 - v10;
            if (v17 - v10 >= 0)
            {
              v24 = 1;
              goto LABEL_83;
            }
          }

          v12 = 0;
          v16 = -6743;
          goto LABEL_25;
        }

        if ((a3 - v10) < 4)
        {
          goto LABEL_108;
        }

        v24 = 0;
        v25 = *(bytes + 1);
        v10 = bytes + 5;
      }

LABEL_83:
      if (a3 - v10 < v25)
      {
        goto LABEL_108;
      }

      v12 = CFStringCreateWithBytes(0, v10, v25, 0x8000100u, 0);
      if (v12)
      {
        v10 += v24 + v25;
        if (!v25)
        {
          goto LABEL_23;
        }

LABEL_7:
        v13 = *(a1 + 24);
        if (v13)
        {
          v14 = *(a1 + 32);
          *(a1 + 32) = v14 + 1;
          CFDictionaryAddValue(v13, v14, v12);
        }

        goto LABEL_23;
      }

LABEL_117:
      v16 = -6728;
      goto LABEL_25;
    }

    if ((v9 - 48) <= 6)
    {
      v40 = 0;
      valuePtr = 0;
      v19 = a3 - v10;
      v39 = 0;
      if (v9 <= 50)
      {
        if (v9 == 48)
        {
          if (v19 < 1)
          {
            goto LABEL_108;
          }

          v10 = bytes + 2;
          LOBYTE(valuePtr) = bytes[1];
          v20 = valuePtr - 255 < 0xFFFFFF29;
          p_valuePtr = &valuePtr;
          v22 = kCFNumberSInt8Type;
        }

        else if (v9 == 49)
        {
          if (v19 < 2)
          {
            goto LABEL_108;
          }

          LOWORD(valuePtr) = *(bytes + 1);
          v10 = bytes + 3;
          v20 = (valuePtr + 1) < 0x29u;
          p_valuePtr = &valuePtr;
          v22 = kCFNumberSInt16Type;
        }

        else
        {
          if (v19 < 4)
          {
            goto LABEL_108;
          }

          LODWORD(valuePtr) = *(bytes + 1);
          v10 = bytes + 5;
          v20 = (valuePtr + 1) < 0x29;
          p_valuePtr = &valuePtr;
          v22 = kCFNumberSInt32Type;
        }
      }

      else if (v9 > 52)
      {
        if (v9 == 53)
        {
          if (v19 < 4)
          {
            goto LABEL_108;
          }

          v20 = 0;
          LODWORD(valuePtr) = *(bytes + 1);
          v10 = bytes + 5;
          p_valuePtr = &valuePtr;
          v22 = kCFNumberFloat32Type;
        }

        else
        {
          if (v19 < 8)
          {
            goto LABEL_108;
          }

          v20 = 0;
          valuePtr = *(bytes + 1);
          v10 = bytes + 9;
          p_valuePtr = &valuePtr;
          v22 = kCFNumberFloat64Type;
        }
      }

      else if (v9 == 51)
      {
        if (v19 < 8)
        {
          goto LABEL_108;
        }

        valuePtr = *(bytes + 1);
        v10 = bytes + 9;
        v20 = (valuePtr + 1) < 0x29;
        p_valuePtr = &valuePtr;
        v22 = kCFNumberSInt64Type;
      }

      else
      {
        if (v19 < 16)
        {
          goto LABEL_108;
        }

        v28 = *(bytes + 1);
        v29 = *(bytes + 9);
        v10 = bytes + 17;
        v39 = v29;
        v40 = v28;
        v30 = __CFADD__(v28, 1);
        v31 = v28 + 1;
        if (v30)
        {
          ++v29;
        }

        v20 = __PAIR128__(v29, v31) < 0x29;
        p_valuePtr = &v39;
        v22 = kCFNumberMaxType|kCFNumberSInt8Type;
      }

      v32 = CFNumberCreate(0, v22, p_valuePtr);
      v12 = v32;
      if (v32 && !v20)
      {
        goto LABEL_7;
      }

      v38 = v10;
      if (v32)
      {
        goto LABEL_24;
      }

      goto LABEL_117;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v12 = 0;
        goto LABEL_24;
      }

      if (v9 == 4)
      {
        v23 = MEMORY[0x1E695E738];
        goto LABEL_62;
      }
    }

    else
    {
      if (v9 == 1)
      {
        v23 = MEMORY[0x1E695E4D0];
        goto LABEL_62;
      }

      if (v9 == 2)
      {
        v23 = MEMORY[0x1E695E4C0];
LABEL_62:
        v12 = *v23;
        goto LABEL_24;
      }
    }

    LODWORD(v39) = 0;
    if ((v9 + 96) <= 0x24u)
    {
      v27 = _OPACKDecodeUID(a1, (bytes + 1), a3, v9, &v38, &v39);
      goto LABEL_89;
    }

    if ((v9 & 0xF0) == 0xD0)
    {
      v27 = _OPACKDecodeArray(a1, bytes + 1, a3, v9, &v38, &v39);
    }

    else
    {
      if ((v9 & 0xF0) == 0xE0)
      {
        v27 = _OPACKDecodeDictionary(a1, bytes + 1, a3, v9, &v38, &v39);
        goto LABEL_89;
      }

      v33 = v9 - 112;
      if ((v9 - 112) <= 0x20)
      {
        if (a3 - v10 < v33)
        {
          goto LABEL_108;
        }

        v12 = CFDataCreate(0, bytes + 1, (v9 - 112));
        if (!v12)
        {
          goto LABEL_117;
        }

        v38 = &v10[v33];
        if (v33 < 2u)
        {
          goto LABEL_24;
        }

        goto LABEL_115;
      }

      if ((v9 + 111) > 3u)
      {
        switch(v9)
        {
          case 5:
            if ((a3 - v10) < 16)
            {
              goto LABEL_108;
            }

            if ((*(a1 + 8) & 8) != 0)
            {
              v35 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v10];
            }

            else
            {
              *&v42.byte0 = *(bytes + 1);
              *&v42.byte8 = *(bytes + 9);
              v35 = CFUUIDCreateFromUUIDBytes(0, v42);
            }

            v12 = v35;
            if (!v35)
            {
              goto LABEL_117;
            }

            v34 = bytes + 17;
            break;
          case 6:
            if ((a3 - v10) < 8)
            {
              goto LABEL_108;
            }

            v12 = CFDateCreate(0, *v10);
            if (!v12)
            {
              goto LABEL_117;
            }

            v34 = bytes + 9;
            break;
          case 159:
            v27 = _OPACKDecodeDataChunks(a1, bytes + 1, a3, &v38, &v39);
            goto LABEL_89;
          default:
            v12 = 0;
            v16 = -6735;
            goto LABEL_25;
        }

        v38 = v34;
LABEL_115:
        v36 = *(a1 + 24);
        if (v36)
        {
          v37 = *(a1 + 32);
          *(a1 + 32) = v37 + 1;
          CFDictionaryAddValue(v36, v37, v12);
        }

        goto LABEL_24;
      }

      v27 = _OPACKDecodeData(a1, bytes + 1, a3, v9, &v38, &v39);
    }

LABEL_89:
    v12 = v27;
    v16 = v39;
    if (!v39)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v12 = gCFNumbers[v15];
  if (v12)
  {
    CFRetain(gCFNumbers[v15]);
LABEL_24:
    v16 = 0;
    *a4 = v38;
    goto LABEL_25;
  }

  v16 = -6762;
LABEL_25:
  if (a5)
  {
    *a5 = v16;
  }

  return v12;
}

__CFString *OPACKDecodeData(const __CFData *a1, unsigned int a2, _DWORD *a3)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);

  return _OPACKDecodeBytes(a1, BytePtr, Length, a2, a3);
}

__CFDictionary *_OPACKDecodeDictionary(uint64_t a1, UInt8 *a2, uint64_t a3, int a4, UInt8 **a5, int *a6)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v17 = -6728;
    goto LABEL_9;
  }

  if ((a4 - 224) >= 0xF)
  {
    while (1)
    {
      v19 = *(a1 + 40);
      if (v19 > 31)
      {
        break;
      }

      *(a1 + 40) = v19 + 1;
      v13 = _OPACKDecodeObject(a1, a2);
      v20 = *(a1 + 40);
      *(a1 + 40) = v20 - 1;
      if (!v13)
      {
        goto LABEL_8;
      }

      *(a1 + 40) = v20;
      v21 = _OPACKDecodeObject(a1, a2);
      v22 = v21;
      --*(a1 + 40);
      if (!v21)
      {
LABEL_15:
        v24 = -6742;
        CFRelease(v13);
        goto LABEL_18;
      }

      CFDictionaryAddValue(Mutable, v13, v21);
      CFRelease(v13);
      CFRelease(v22);
    }
  }

  else
  {
    v11 = a4 & 0xF;
    if ((a4 & 0xF) == 0)
    {
LABEL_8:
      v17 = 0;
      goto LABEL_9;
    }

    while (1)
    {
      v12 = *(a1 + 40);
      if (v12 >= 32)
      {
        break;
      }

      *(a1 + 40) = v12 + 1;
      v13 = _OPACKDecodeObject(a1, a2);
      v14 = *(a1 + 40);
      *(a1 + 40) = v14 - 1;
      if (!v13)
      {
        v23 = -6742;
        goto LABEL_17;
      }

      *(a1 + 40) = v14;
      v15 = _OPACKDecodeObject(a1, a2);
      v16 = v15;
      --*(a1 + 40);
      if (!v15)
      {
        goto LABEL_15;
      }

      CFDictionaryAddValue(Mutable, v13, v15);
      CFRelease(v13);
      CFRelease(v16);
      if (!--v11)
      {
        goto LABEL_8;
      }
    }
  }

  v23 = -6751;
LABEL_17:
  v24 = v23;
LABEL_18:
  CFRelease(Mutable);
  Mutable = 0;
  v17 = v24;
LABEL_9:
  *a5 = a2;
  *a6 = v17;
  return Mutable;
}

BOOL _OPACKObjectsExactlyEqual(const void *a1, const __CFNumber *a2)
{
  v4 = CFGetTypeID(a1);
  result = 0;
  if (v4 == CFGetTypeID(a2))
  {
    if (CFEqual(a1, a2))
    {
      if (v4 != gCFNumberType_12304)
      {
        return 1;
      }

      IsFloatType = CFNumberIsFloatType(a1);
      if (IsFloatType == CFNumberIsFloatType(a2))
      {
        return 1;
      }
    }
  }

  return result;
}

__CFString *_OPACKDecodeBytes(uint64_t a1, UInt8 *bytes, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  if (gOPACKInitalizeOnce != -1)
  {
    dispatch_once_f(&gOPACKInitalizeOnce, 0, _OPACKInitializeOnce);
  }

  v19 = 0;
  cf[1] = 0;
  v18 = 0;
  v16[0] = a1;
  v16[1] = a4;
  v16[2] = bytes;
  cf[0] = 0;
  if ((a4 & 2) == 0)
  {
    v10 = *(MEMORY[0x1E695E9E8] + 16);
    *&valueCallBacks.version = *MEMORY[0x1E695E9E8];
    *&valueCallBacks.release = v10;
    valueCallBacks.equal = _OPACKObjectsExactlyEqual;
    cf[0] = CFDictionaryCreateMutable(0, 0, 0, &valueCallBacks);
    if (!cf[0])
    {
      v12 = 0;
      v19 = -6728;
      if (!a5)
      {
        return v12;
      }

      goto LABEL_11;
    }
  }

  v11 = _OPACKDecodeObject(v16, bytes, &bytes[a3], &v14, &v19);
  v12 = v11;
  if (!v19 && !v11)
  {
    v19 = -6742;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (a5)
  {
LABEL_11:
    *a5 = v19;
  }

  return v12;
}

uint64_t _OPACKEncodeData(uint64_t a1, CFDataRef theData)
{
  v11 = *MEMORY[0x1E69E9840];
  Length = CFDataGetLength(theData);
  if (Length <= 1)
  {
    goto LABEL_6;
  }

  if (*(a1 + 16))
  {
    v9 = 0;
    result = _OPACKEncodeUID(a1, theData, &v9);
    if (result || v9)
    {
      return result;
    }
  }

  if (Length > 0x20)
  {
    if (Length > 0xFF)
    {
      if (Length >> 16)
      {
        if (HIDWORD(Length))
        {
          v9 = -108;
          v10 = Length;
          v6 = 9;
        }

        else
        {
          v9 = -109;
          LOWORD(v10) = Length;
          BYTE2(v10) = BYTE2(Length);
          v6 = 5;
          BYTE3(v10) = BYTE3(Length);
        }
      }

      else
      {
        v9 = -110;
        LOWORD(v10) = Length;
        v6 = 3;
      }
    }

    else
    {
      v9 = -111;
      LOBYTE(v10) = Length;
      v6 = 2;
    }
  }

  else
  {
LABEL_6:
    v9 = Length + 112;
    v6 = 1;
  }

  result = (*a1)(&v9, v6, 0, *(a1 + 8));
  if (Length)
  {
    if (!result)
    {
      v7 = *a1;
      BytePtr = CFDataGetBytePtr(theData);
      return v7(BytePtr, Length, 0, *(a1 + 8));
    }
  }

  return result;
}

CFNumberRef _OPACKInitializeOnce()
{
  gCFArrayType_12305 = CFArrayGetTypeID();
  gCFBooleanType_12306 = CFBooleanGetTypeID();
  gCFDataType_12307 = CFDataGetTypeID();
  gCFDateType_12308 = CFDateGetTypeID();
  gCFDictionaryType_12309 = CFDictionaryGetTypeID();
  gCFNumberType_12304 = CFNumberGetTypeID();
  gCFStringType_12310 = CFStringGetTypeID();
  v0 = 0;
  gCFUUIDType = CFUUIDGetTypeID();
  do
  {
    valuePtr = v0 - 1;
    result = CFNumberCreate(0, kCFNumberSInt8Type, &valuePtr);
    gCFNumbers[v0] = result;
    if (!result)
    {
      FatalErrorF("Create small number %d failed", v2, v3, v4, v5, v6, v7, v8, valuePtr);
    }

    ++v0;
  }

  while (v0 != 41);
  return result;
}

uint64_t CUXPCDecodeNSArrayOfClass(void *a1, const char *a2, uint64_t a3, id *a4, void *a5)
{
  v9 = a1;
  v10 = xpc_dictionary_get_value(v9, a2);
  v11 = v10;
  if (!v10)
  {
    goto LABEL_9;
  }

  if (MEMORY[0x193B07A70](v10) == MEMORY[0x1E69E9E50])
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__10482;
    v27 = __Block_byref_object_dispose__10483;
    v28 = 0;
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __CUXPCDecodeNSArrayOfClass_block_invoke;
    applier[3] = &unk_1E73A43B0;
    applier[6] = a2;
    applier[7] = a3;
    applier[4] = v18;
    applier[5] = &v23;
    xpc_array_apply(v11, applier);
    v19 = v24[5];
    if (v19)
    {
      if (a5)
      {
        v21 = v19;
        *a5 = v19;
      }
    }

    else
    {
      objc_storeStrong(a4, v18);
    }

    _Block_object_dispose(&v23, 8);
    if (v19)
    {
      goto LABEL_8;
    }

LABEL_9:
    v17 = 1;
    goto LABEL_10;
  }

  if (!a5)
  {
LABEL_8:
    v17 = 0;
    goto LABEL_10;
  }

  NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "XPC non-array type: '%s'", v12, v13, v14, v15, v16, a2);
  *a5 = v17 = 0;
LABEL_10:

  return v17;
}

void sub_191EBF99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFArray *_OPACKDecodeArray(uint64_t a1, UInt8 *a2, uint64_t a3, int a4, UInt8 **a5, int *a6)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v15 = -6728;
    goto LABEL_8;
  }

  if ((a4 - 208) >= 0xF)
  {
    while (1)
    {
      v17 = *(a1 + 40);
      if (v17 > 31)
      {
        break;
      }

      *(a1 + 40) = v17 + 1;
      v18 = _OPACKDecodeObject(a1, a2);
      v19 = v18;
      --*(a1 + 40);
      if (!v18)
      {
        goto LABEL_7;
      }

      CFArrayAppendValue(Mutable, v18);
      CFRelease(v19);
    }
  }

  else
  {
    v11 = a4 & 0xF;
    if ((a4 & 0xF) == 0)
    {
LABEL_7:
      v15 = 0;
      goto LABEL_8;
    }

    while (1)
    {
      v12 = *(a1 + 40);
      if (v12 >= 32)
      {
        break;
      }

      *(a1 + 40) = v12 + 1;
      v13 = _OPACKDecodeObject(a1, a2);
      v14 = v13;
      --*(a1 + 40);
      if (!v13)
      {
        v20 = -6742;
        goto LABEL_14;
      }

      CFArrayAppendValue(Mutable, v13);
      CFRelease(v14);
      if (!--v11)
      {
        goto LABEL_7;
      }
    }
  }

  v20 = -6751;
LABEL_14:
  v21 = v20;
  CFRelease(Mutable);
  Mutable = 0;
  v15 = v21;
LABEL_8:
  *a5 = a2;
  *a6 = v15;
  return Mutable;
}

CFDataRef _OPACKDecodeData(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4, const UInt8 **a5, int *a6)
{
  v8 = a2;
  v10 = 0;
  v11 = -6762;
  if (a4 <= 146)
  {
    if (a4 == 145)
    {
      if (a3 - a2 >= 1)
      {
        v12 = a2 + 1;
        v13 = *a2;
        goto LABEL_15;
      }
    }

    else
    {
      if (a4 != 146)
      {
        goto LABEL_24;
      }

      if (a3 - a2 >= 2)
      {
        v12 = a2 + 2;
        v13 = *a2;
LABEL_15:
        v15 = v12;
        goto LABEL_16;
      }
    }

LABEL_29:
    v10 = 0;
    v11 = -6750;
    goto LABEL_24;
  }

  if (a4 == 147)
  {
    if (a3 - a2 >= 4)
    {
      v12 = a2 + 4;
      v13 = *a2;
      goto LABEL_15;
    }

    goto LABEL_29;
  }

  if (a4 != 148)
  {
    goto LABEL_24;
  }

  if (a3 - a2 < 8)
  {
    goto LABEL_29;
  }

  v14 = a2[7];
  v15 = a2 + 8;
  if (v14 << 56 < 0)
  {
    v10 = 0;
    v11 = -6743;
    goto LABEL_26;
  }

  v13 = (*a2 | (a2[4] << 32) | (a2[5] << 40) | (a2[6] << 48)) & 0xFFFFFFFFFFFFFFLL | (v14 << 56);
LABEL_16:
  if (a3 - v15 < v13)
  {
    v10 = 0;
    v11 = -6750;
    goto LABEL_26;
  }

  v21 = 0;
  v16 = *a1;
  if (!*a1 || (*(a1 + 8) & 4) == 0)
  {
    v10 = CFDataCreate(0, v15, v13);
    if (v10)
    {
      goto LABEL_20;
    }

    v11 = -6728;
LABEL_26:
    v8 = v15;
    goto LABEL_24;
  }

  v20 = CFDataCreateSubdataWithRangeNoCopy(v16, &v15[-*(a1 + 16)], v13, &v21);
  v10 = v20;
  v11 = v21;
  if (v21)
  {
    goto LABEL_26;
  }

  if (!v20)
  {
    v11 = -6762;
    goto LABEL_26;
  }

LABEL_20:
  v8 = &v15[v13];
  if (v13 >= 2)
  {
    v17 = *(a1 + 24);
    if (v17)
    {
      v18 = *(a1 + 32);
      *(a1 + 32) = v18 + 1;
      CFDictionaryAddValue(v17, v18, v10);
    }
  }

  v11 = 0;
LABEL_24:
  *a5 = v8;
  *a6 = v11;
  return v10;
}

void CUXPCEncodeNSArrayOfObjects(void *a1, const char *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v6)
  {
    v7 = xpc_array_create(0, 0);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          v14 = xpc_dictionary_create(0, 0, 0);
          [v13 encodeWithXPCObject:{v14, v15}];
          xpc_array_append_value(v7, v14);

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    xpc_dictionary_set_value(v5, a2, v7);
  }
}

uint64_t CUXPCDecodeNSData(void *a1, const char *a2, void **a3, void *a4)
{
  v7 = a1;
  length = 0;
  data = xpc_dictionary_get_data(v7, a2, &length);
  if (data)
  {
    v9 = data;
    v10 = objc_alloc(MEMORY[0x1E695DEF0]);
    v11 = [v10 initWithBytes:v9 length:length];
    v12 = *a3;
    *a3 = v11;
LABEL_6:
    v21 = 1;
    goto LABEL_7;
  }

  v13 = xpc_dictionary_get_value(v7, a2);
  v12 = v13;
  if (!v13)
  {
    goto LABEL_6;
  }

  if (MEMORY[0x193B07A70](v13) == MEMORY[0x1E69E9E70])
  {
    v19 = [MEMORY[0x1E695DEF0] data];
    v20 = *a3;
    *a3 = v19;

    goto LABEL_6;
  }

  if (a4)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "XPC non-data type: '%s'", v14, v15, v16, v17, v18, a2);
    *a4 = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_7:

  return v21;
}

CFArrayRef CFPrefs_CopyKeys(const __CFString *a1, int *a2)
{
  if (!a1)
  {
    a1 = *MEMORY[0x1E695E8A8];
  }

  result = CFPreferencesCopyKeyList(a1, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (!result)
  {
    result = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
  }

  if (a2)
  {
    if (result)
    {
      v4 = 0;
    }

    else
    {
      v4 = -6700;
    }

    *a2 = v4;
  }

  return result;
}

const void *CFPrefs_CopyTypedValue(const __CFString *a1, CFStringRef key, uint64_t a3, int *a4)
{
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = *MEMORY[0x1E695E8A8];
  }

  v8 = CFPreferencesCopyAppValue(key, v7);
  v9 = v8;
  if (!v8)
  {
    v10 = -6727;
    if (!a4)
    {
      return v9;
    }

    goto LABEL_10;
  }

  if (!a3 || CFGetTypeID(v8) == a3)
  {
    v10 = 0;
    if (!a4)
    {
      return v9;
    }

    goto LABEL_10;
  }

  CFRelease(v9);
  v9 = 0;
  v10 = -6756;
  if (a4)
  {
LABEL_10:
    *a4 = v10;
  }

  return v9;
}

BOOL GestaltGetBoolean(const void *a1, uint64_t a2, int *a3)
{
  v4 = GestaltCopyAnswer(a1, a2, a3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFGetInt64(v4, a3) != 0;
  CFRelease(v5);
  return v6;
}

uint64_t GestaltCopyAnswer(CFTypeRef cf1, uint64_t a2, int *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!gGestaltHook_f || (result = gGestaltHook_f(cf1, a2, a3, gGestaltHook_ctx)) == 0)
  {
    if (CFEqual(cf1, @"NANCapability"))
    {
      v6 = gGestaltCacheNANCapability;
      if (!gGestaltCacheNANCapability)
      {
        if (if_nametoindex("nan0"))
        {
          v6 = 6;
        }

        else
        {
          v6 = 5;
        }

        gGestaltCacheNANCapability = v6;
      }

      goto LABEL_21;
    }

    if (!CFEqual(cf1, @"R1Capability"))
    {
      if (CFEqual(cf1, @"systemUUID"))
      {
        v36 = 0;
        pthread_mutex_lock(&gGestaltLock);
        if (gGestaltDomain)
        {
          v17 = gGestaltDomain;
        }

        else
        {
          v17 = *MEMORY[0x1E695E8A8];
        }

        __s[0] = 0;
        CFPrefs_GetCString(v17, @"systemUUID", __s, 0x80uLL, 0);
        v18 = strchr(__s, 58);
        if (v18 && (v22 = v18, !StringToUUIDEx(__s, v18 - __s, 0, 0, &bytes, v19, v20, v21)) && sscanf(v22 + 1, "%lf", &v36) == 1)
        {
          if (gLogCategory_Gestalt <= 20 && (gLogCategory_Gestalt != -1 || _LogCategory_Initialize(&gLogCategory_Gestalt, 0x14u)))
          {
            LogPrintF(&gLogCategory_Gestalt, "void GetSystemUUID(int, uint8_t *)", 0x14u, "Reused system UUID %s\n", v23, v24, v25, v26, __s);
          }
        }

        else
        {
          RandomBytes(&bytes, 0x10uLL);
          BYTE6(bytes) = BYTE6(bytes) & 0xF | 0x40;
          BYTE8(bytes) = BYTE8(bytes) & 0x3F | 0x80;
          CFAbsoluteTimeGetCurrent();
          SNPrintF(__s, 128, "%#U:%f", v27, v28, v29, v30, v31, &bytes);
          CFPrefs_SetCString(v17, @"systemUUID", __s, -1);
          CFPreferencesAppSynchronize(v17);
          if (gLogCategory_Gestalt <= 40 && (gLogCategory_Gestalt != -1 || _LogCategory_Initialize(&gLogCategory_Gestalt, 0x28u)))
          {
            LogPrintF(&gLogCategory_Gestalt, "void GetSystemUUID(int, uint8_t *)", 0x28u, "Generated system UUID %s\n", v32, v33, v34, v35, __s);
          }
        }

        pthread_mutex_unlock(&gGestaltLock);
        result = CFDataCreate(0, &bytes, 16);
        if (result)
        {
          goto LABEL_25;
        }

        v16 = -6728;
      }

      else
      {
        result = MGCopyAnswer();
        if (result)
        {
LABEL_25:
          v16 = 0;
          goto LABEL_26;
        }

        v16 = -6727;
      }

LABEL_26:
      if (a3)
      {
        *a3 = v16;
      }

      return result;
    }

    v6 = gGestaltCacheR1Capability;
    if (gGestaltCacheR1Capability)
    {
LABEL_21:
      if (v6 == 6)
      {
        v15 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v15 = MEMORY[0x1E695E4C0];
      }

      result = *v15;
      goto LABEL_25;
    }

    v7 = *MEMORY[0x1E696CD60];
    v8 = IOServiceNameMatching("rose");
    MatchingService = IOServiceGetMatchingService(v7, v8);
    if (MatchingService)
    {
      v10 = MatchingService;
      CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"ChipID", 0, 0);
      v12 = CFGetInt64(CFProperty, 0);
      if (CFProperty)
      {
        CFRelease(CFProperty);
      }

      if (v12)
      {
        v13 = IORegistryEntryCreateCFProperty(v10, @"ECID", 0, 0);
        v14 = CFGetInt64(v13, 0);
        if (v13)
        {
          CFRelease(v13);
        }

        IOObjectRelease(v10);
        if (v14)
        {
          v6 = 6;
        }

        else
        {
          v6 = 5;
        }

        goto LABEL_20;
      }

      IOObjectRelease(v10);
    }

    v6 = 5;
LABEL_20:
    gGestaltCacheR1Capability = v6;
    goto LABEL_21;
  }

  return result;
}

uint64_t SecondsToUpTicks(uint64_t a1)
{
  if (SecondsToUpTicks_sOnce != -1)
  {
    dispatch_once_f(&SecondsToUpTicks_sOnce, &SecondsToUpTicks_sMultiplier, _SecondsToUpTicksInit);
  }

  return SecondsToUpTicks_sMultiplier * a1;
}

void _networkInterfacesChanged(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (*(v4 + 3))
  {
    v10 = v4;
    dispatch_assert_queue_V2(*(v4 + 7));
    v9 = v10[4];
    if (*v9 <= 10)
    {
      if (*v9 == -1)
      {
        if (!_LogCategory_Initialize(v9, 0xAu))
        {
          goto LABEL_6;
        }

        v9 = v10[4];
      }

      LogPrintF(v9, "void _networkInterfacesChanged(SCDynamicStoreRef, CFArrayRef, void *)", 0xAu, "Network interfaces changed: %##@\n", v5, v6, v7, v8, a2);
    }

LABEL_6:
    [v10 _networkInterfacesChanged:0];
    [v10 _primaryIPChanged:0];
    v4 = v10;
  }
}

unint64_t CFPrefs_GetInt64(const __CFString *a1, CFStringRef key, int *a3)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = *MEMORY[0x1E695E8A8];
  }

  v6 = CFPreferencesCopyAppValue(key, v5);
  v7 = v6;
  if (a3)
  {
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = -6727;
    }

    *a3 = v8;
  }

  if (!v6)
  {
    return 0;
  }

  v9 = CFGetInt64(v6, a3);
  CFRelease(v7);
  return v9;
}

uint64_t SocketGetInterfaceInfo(int a1, char *ifa_name, char *a3, unsigned int *a4, uint64_t a5, int *a6, int *a7, void *a8, _BOOL8 *a9, uint64_t a10)
{
  v46 = *MEMORY[0x1E69E9840];
  *&v40.sa_len = 0;
  *&v40.sa_data[6] = 0;
  v42 = 0;
  v41 = 0;
  v39 = 0;
  v38 = 0;
  v44 = 0u;
  v45 = 0u;
  if (a1 < 0)
  {
    v20 = socket(2, 2, 0);
    if (v20 < 0)
    {
      v17 = v20;
      if (!*__error())
      {
        v25 = 4294960596;
        v19 = v17;
        goto LABEL_70;
      }

      v18 = a8;
      v25 = *__error();
      v19 = v17;
      if (v25)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v18 = a8;
      v17 = v20;
      v19 = v20;
    }
  }

  else
  {
    v17 = a1;
    v18 = a8;
    v19 = -1;
  }

  if (ifa_name)
  {
    v37 = v19;
    if (a5)
    {
      *(a5 + 4) = 0;
      *a5 = 0;
      GetInterfaceMACAddress(ifa_name, a5);
    }

    v21 = 0;
    v22 = v18;
  }

  else
  {
    v39 = 28;
    if (getsockname(v17, &v40, &v39))
    {
      if (!*__error())
      {
        v25 = 4294960596;
        goto LABEL_70;
      }

      v25 = *__error();
      if (v25)
      {
        goto LABEL_70;
      }
    }

    v26 = SockAddrSimplify(&v40, &v40);
    if (v26 || (v26 = getifaddrs(&v38), v26))
    {
      v25 = v26;
      goto LABEL_70;
    }

    v37 = v19;
    v21 = v38;
    if (!v38)
    {
      v25 = 4294960569;
      v19 = v37;
      if (v37 < 0)
      {
        return v25;
      }

      goto LABEL_73;
    }

    v25 = 4294960569;
    while (1)
    {
      ifa_addr = v21->ifa_addr;
      if (ifa_addr)
      {
        if (!SockAddrCompareAddrEx(ifa_addr, &v40, 1))
        {
          break;
        }
      }

      v21 = v21->ifa_next;
      if (!v21)
      {
        goto LABEL_65;
      }
    }

    ifa_name = v21->ifa_name;
    if (a3)
    {
      strlcpy(a3, v21->ifa_name, 0x11uLL);
    }

    if (!ifa_name)
    {
      v25 = 4294960569;
      goto LABEL_65;
    }

    v22 = v18;
    if (a5)
    {
      *(a5 + 4) = 0;
      *a5 = 0;
      v21 = v38;
      if (v38)
      {
        while (1)
        {
          v33 = v21->ifa_addr;
          if (v33)
          {
            if (v33->sa_family == 18)
            {
              v34 = v21->ifa_name;
              if (v34)
              {
                if (!strcmp(v34, ifa_name) && v33->sa_data[4] == 6)
                {
                  break;
                }
              }
            }
          }

          v21 = v21->ifa_next;
          if (!v21)
          {
            goto LABEL_9;
          }
        }

        v35 = &v33->sa_len + v33->sa_data[3];
        v36 = *(v35 + 2);
        *(a5 + 4) = *(v35 + 6);
        *a5 = v36;
      }
    }
  }

LABEL_9:
  if (a4)
  {
    *a4 = if_nametoindex(ifa_name);
  }

  if (!a6 && !a9 && !a10)
  {
    v23 = 0;
    v24 = 0;
    if (!a7)
    {
      goto LABEL_42;
    }

LABEL_30:
    if (v21)
    {
      ifa_flags = v21->ifa_flags;
LABEL_41:
      *a7 = ifa_flags;
      goto LABEL_42;
    }

    v44 = 0u;
    v45 = 0u;
    __strlcpy_chk();
    if (ioctl(v17, 0xC0206911uLL, &v44))
    {
      ifa_flags = *__error();
      if (!ifa_flags)
      {
        goto LABEL_41;
      }

      if (*__error())
      {
        ifa_flags = 0;
        goto LABEL_41;
      }
    }

    ifa_flags = v45;
    goto LABEL_41;
  }

  memset(v43, 0, 44);
  __strlcpy_chk();
  if (!ioctl(v17, 0xC02C6938uLL, v43))
  {
    goto LABEL_26;
  }

  v27 = *__error();
  if (!v27)
  {
    goto LABEL_27;
  }

  if (*__error())
  {
    v27 = 0;
  }

  else
  {
LABEL_26:
    v27 = v43[1];
  }

LABEL_27:
  if (a6)
  {
    *a6 = v27;
  }

  v24 = (BYTE8(v43[1]) & 3) == 1;
  v23 = (v27 & 0xE0) == 128;
  if (a7)
  {
    goto LABEL_30;
  }

LABEL_42:
  if (!(v22 | a10))
  {
    LODWORD(v29) = 0;
    goto LABEL_51;
  }

  v44 = 0u;
  v45 = 0u;
  __strlcpy_chk();
  if (!ioctl(v17, 0xC020698EuLL, &v44) || *__error() && !*__error())
  {
    v29 = v45;
    if (!v22)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v29 = 0;
  if (v22)
  {
LABEL_50:
    *v22 = v29;
  }

LABEL_51:
  if (a9)
  {
    *a9 = v24;
  }

  if (!a10)
  {
    v25 = 0;
LABEL_65:
    v19 = v37;
    goto LABEL_70;
  }

  if (!stricmp_prefix(ifa_name, "nan"))
  {
    v30 = 128;
LABEL_68:
    v19 = v37;
    goto LABEL_69;
  }

  if ((v29 & 0x100000) != 0)
  {
    v30 = 4;
  }

  else
  {
    v30 = 2;
  }

  if ((v29 & 0x100000) != 0 || v23)
  {
    goto LABEL_68;
  }

  if ((v29 & 0x20000000) != 0)
  {
    v30 = 16;
    goto LABEL_68;
  }

  *a10 = 1;
  v44 = 0u;
  v45 = 0u;
  __strlcpy_chk();
  ioctl(v17, 0xC020699FuLL, &v44);
  if (DWORD1(v45) == 18)
  {
    v19 = v37;
    if (DWORD2(v45) == 2)
    {
      v30 = 256;
      goto LABEL_69;
    }

    if (DWORD2(v45) == 3)
    {
      v30 = 512;
LABEL_69:
      v25 = 0;
      *a10 = v30;
      goto LABEL_70;
    }
  }

  else
  {
    v19 = v37;
    if (DWORD2(v45) == 1)
    {
      v30 = 8;
      goto LABEL_69;
    }
  }

  v25 = 0;
LABEL_70:
  if (v38)
  {
    MEMORY[0x193B06880]();
  }

  if ((v19 & 0x80000000) == 0)
  {
LABEL_73:
    if (close(v19) && *__error())
    {
      __error();
    }
  }

  return v25;
}

uint64_t stricmp_prefix(unsigned __int8 *a1, unsigned __int8 *a2)
{
  while (1)
  {
    v4 = __tolower(*a1);
    result = __tolower(*a2);
    if (!result)
    {
      break;
    }

    if (v4 < result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v4 > result)
    {
      return 1;
    }

    ++a1;
    ++a2;
  }

  return result;
}

_DWORD *LogCategoryCreateEx(const char *a1, const char *a2, int a3, int a4, const char *a5, int *a6)
{
  v12 = malloc_type_calloc(1uLL, 0x88uLL, 0x107004000997796uLL);
  if (!v12)
  {
LABEL_14:
    v20 = -6728;
    goto LABEL_17;
  }

  if (a1 && (v13 = strdup(a1), (*(v12 + 14) = v13) == 0) || (v14 = strdup(a2), (*(v12 + 15) = v14) == 0))
  {
LABEL_7:
    v17 = *(v12 + 14);
    if (v17)
    {
      free(v17);
    }

    v18 = *(v12 + 15);
    if (v18)
    {
      free(v18);
    }

    v19 = *(v12 + 16);
    if (v19)
    {
      free(v19);
    }

    free(v12);
    v12 = 0;
    goto LABEL_14;
  }

  v15 = v14;
  if (a5)
  {
    v16 = strdup(a5);
    *(v12 + 16) = v16;
    if (!v16)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = *(v12 + 16);
  }

  *v12 = -1;
  v12[1] = a3;
  *(v12 + 1) = v16;
  v12[4] = a4 | 0x70000;
  *(v12 + 3) = v15;
  *(v12 + 4) = v15;
  v21 = strlen(v15);
  v20 = 0;
  v12[10] = v21;
  *(v12 + 12) = *(v12 + 14);
LABEL_17:
  if (a6)
  {
    *a6 = v20;
  }

  return v12;
}

uint64_t LUStringToLevel(char *__s1)
{
  v2 = MEMORY[0x1E69E9830];
  v3 = __s1;
  do
  {
    v4 = v3;
    v5 = *v3;
    if (*v3 < 0)
    {
      v6 = __maskrune(*v3, 0x100uLL);
    }

    else
    {
      v6 = *(v2 + 4 * *v3 + 60) & 0x100;
    }

    ++v3;
  }

  while (v6);
  v7 = v4 - __s1;
  if (v4 == __s1)
  {
    v11 = *__s1;
    if ((v11 - 48) > 9)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v13 = __s1 + 1;
      do
      {
        v12 = 10 * v12 + v11 - 48;
        v14 = *v13++;
        v11 = v14;
      }

      while ((v14 - 48) < 0xA);
    }

    if (v11)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v8 = "all";
    v9 = 18;
    v10 = &kLogLevelToStringTable;
    while (strncmp(__s1, v8, v7))
    {
      v8 = *(v10 + 3);
      v10 += 4;
      if (!--v9)
      {
        return 0xFFFFFFFFLL;
      }
    }

    result = *v10;
    if (v5 && result != -1)
    {
      v16 = *v3;
      if ((v16 - 48) > 9)
      {
        v17 = 0;
      }

      else
      {
        v17 = 0;
        v18 = 1;
        do
        {
          v17 = 10 * v17 + v16 - 48;
          v16 = v3[v18++];
        }

        while ((v16 - 48) < 0xA);
      }

      if (v16)
      {
        return 0xFFFFFFFFLL;
      }

      if (v5 != 45)
      {
        if (v5 == 43)
        {
          return (v17 + result);
        }

        return 0xFFFFFFFFLL;
      }

      return (result - v17);
    }
  }

  return result;
}

BOOL _LogCategoryMatch(__int16 a1, char *a2, char *a3)
{
  if ((a1 & 0x100) != 0)
  {
    return strcasecmp(a2, a3) == 0;
  }

  else
  {
    return RegexMatch(a3, a2) != 0;
  }
}

uint64_t RegexMatchHere(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = a1;
    v5 = a1;
    while (1)
    {
      v7 = *++v5;
      v6 = v7;
      if (v7 == 42)
      {
        break;
      }

      v8 = *a2;
      if (v2 == 36 && !v6)
      {
        return v8 == 0;
      }

      if (!*a2)
      {
        return 0;
      }

      if (v2 != 46)
      {
        v9 = __tolower(v2);
        if (v9 != __tolower(v8))
        {
          return 0;
        }

        v6 = *v5;
      }

      ++a2;
      v2 = v6;
      v4 = v5;
      if (!v6)
      {
        return 1;
      }
    }

    while (!RegexMatchHere(v4 + 2, a2))
    {
      result = *a2;
      if (!*a2)
      {
        return result;
      }

      ++a2;
      v11 = __tolower(result);
      v12 = __tolower(v2);
      if (v2 != 46 && v11 != v12)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t RegexMatch(_BYTE *a1, _BYTE *a2)
{
  v2 = a2;
  if (*a1 == 94)
  {
    v4 = a1 + 1;

    return RegexMatchHere(v4, a2);
  }

  else
  {
    while (!RegexMatchHere(a1, v2))
    {
      if (!*v2++)
      {
        return 0;
      }
    }

    return 1;
  }
}

uint64_t CFDictionarySetInt64(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  Int64 = CFNumberCreateInt64(a3);
  if (!Int64)
  {
    return 4294960568;
  }

  v6 = Int64;
  CFDictionarySetValue(a1, a2, Int64);
  CFRelease(v6);
  return 0;
}

CFNumberRef CFNumberCreateInt64(uint64_t a1)
{
  valuePtr = a1;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  if (a1 == a1)
  {
    v6 = a1;
    p_valuePtr = &v6;
    v2 = kCFNumberSInt8Type;
  }

  else
  {
    p_valuePtr = &valuePtr;
    v2 = kCFNumberSInt64Type;
  }

  return CFNumberCreate(0, v2, p_valuePtr);
}

uint64_t LogCategoryReplaceV(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v15 = 0;
  v14 = 0;
  if (!v8)
  {
    return -6705;
  }

  VASPrintF(&v14, a2, a3, a4, a5, a6, a7, a8);
  v10 = v14;
  if (!v14)
  {
    return -6700;
  }

  v11 = LogCategoryCreateEx(*(v8 + 96), v14, *(v8 + 4), *(v8 + 16), *(v8 + 8), &v15);
  free(v10);
  if (v11)
  {
    if ((*(v8 + 18) & 4) != 0)
    {
      LogCategory_Remove(v8);
    }

    *a1 = v11;
  }

  return v15;
}

os_log_t LogCategoryCopyOSLogHandle(uint64_t a1)
{
  LogUtils_EnsureInitialized();
  pthread_mutex_lock(&gLogUtilsLock);
  OSLogHandle = _LogCategoryGetOSLogHandle(a1, 0);
  v3 = OSLogHandle;
  if (OSLogHandle)
  {
    v4 = OSLogHandle;
  }

  pthread_mutex_unlock(&gLogUtilsLock);
  return v3;
}

uint64_t _CryptoAEADFinalize(uint64_t result)
{
  v1 = *(*(result + 16) + 8);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t _PairingSessionFinalize(uint64_t a1)
{
  if (*(a1 + 429))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v2(*(a1 + 24));
    }

    *(a1 + 429) = 0;
  }

  _PairingSessionReset(a1);
  v3 = *(a1 + 184);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 184) = 0;
  }

  v4 = *(a1 + 272);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 272) = 0;
  }

  v5 = *(a1 + 280);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 280) = 0;
  }

  v6 = *(a1 + 288);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 288) = 0;
  }

  v7 = *(a1 + 224);
  if (v7)
  {
    free(v7);
    *(a1 + 224) = 0;
  }

  *(a1 + 232) = 0;
  v8 = *(a1 + 240);
  if (v8)
  {
    free(v8);
    *(a1 + 240) = 0;
  }

  *(a1 + 248) = 0;
  v9 = *(a1 + 256);
  if (v9)
  {
    free(v9);
    *(a1 + 256) = 0;
  }

  *(a1 + 264) = 0;
  v10 = *(a1 + 312);
  if (v10)
  {
    free(v10);
    *(a1 + 312) = 0;
  }

  *(a1 + 320) = 0;
  v11 = *(a1 + 328);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 328) = 0;
  }

  v12 = *(a1 + 336);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 336) = 0;
  }

  v13 = *(a1 + 344);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 344) = 0;
  }

  v14 = *(a1 + 352);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 352) = 0;
  }

  v15 = *(a1 + 400);
  if (v15)
  {
    free(v15);
    *(a1 + 400) = 0;
  }

  *(a1 + 408) = 0;
  v16 = *(a1 + 368);
  if (v16)
  {
    free(v16);
    *(a1 + 368) = 0;
  }

  *(a1 + 376) = 0;
  v17 = *(a1 + 688);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 688) = 0;
  }

  v18 = *(a1 + 360);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 360) = 0;
  }

  v19 = *(a1 + 784);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 784) = 0;
  }

  v20 = *(a1 + 792);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 792) = 0;
  }

  v21 = *(a1 + 808);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 808) = 0;
  }

  v22 = *(a1 + 816);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 816) = 0;
  }

  v23 = *(a1 + 832);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 832) = 0;
  }

  v24 = *(a1 + 848);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 848) = 0;
  }

  v25 = *(a1 + 856);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 856) = 0;
  }

  v26 = *(a1 + 864);
  if (v26)
  {
    CFRelease(v26);
    *(a1 + 864) = 0;
  }

  v27 = *(a1 + 872);
  if (v27)
  {
    CFRelease(v27);
    *(a1 + 872) = 0;
  }

  v28 = *(a1 + 880);
  if (v28)
  {
    CFRelease(v28);
    *(a1 + 880) = 0;
  }

  v29 = *(a1 + 888);
  if (v29)
  {
    CFRelease(v29);
    *(a1 + 888) = 0;
  }

  v30 = *(a1 + 976);
  if (v30)
  {
    CFRelease(v30);
    *(a1 + 976) = 0;
  }

  v31 = *(a1 + 984);
  if (v31)
  {
    CFRelease(v31);
    *(a1 + 984) = 0;
  }

  v32 = *(a1 + 992);
  if (v32)
  {
    CFRelease(v32);
    *(a1 + 992) = 0;
  }

  v33 = *(a1 + 1000);
  if (v33)
  {
    CFRelease(v33);
    *(a1 + 1000) = 0;
  }

  v34 = *(a1 + 1008);
  if (v34)
  {
    CFRelease(v34);
    *(a1 + 1008) = 0;
  }

  return memset_s((a1 + 16), 0x3E8uLL, 0, 0x3E8uLL);
}

void _PairingSessionReset(uint64_t a1)
{
  *(a1 + 128) = 0;
  v2 = *(a1 + 136);
  if (v2)
  {
    free(v2);
    *(a1 + 136) = 0;
  }

  *(a1 + 144) = 0;
  v3 = *(a1 + 152);
  if (v3)
  {
    free(v3);
    *(a1 + 152) = 0;
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v4 = *(a1 + 192);
  if (v4)
  {
    free(v4);
    *(a1 + 192) = 0;
  }

  *(a1 + 200) = 0;
  memset_s((a1 + 430), 0x20uLL, 0, 0x20uLL);
  *(a1 + 705) = 0;
  v5 = *(a1 + 712);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 712) = 0;
  }

  v6 = *(a1 + 720);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 720) = 0;
  }

  v7 = *(a1 + 728);
  if (v7)
  {
    SRPDelete_libsrp(v7);
    *(a1 + 728) = 0;
  }

  v8 = *(a1 + 736);
  if (v8)
  {
    free(v8);
    *(a1 + 736) = 0;
  }

  *(a1 + 744) = 0;
  v9 = *(a1 + 752);
  if (v9)
  {
    free(v9);
    *(a1 + 752) = 0;
  }

  *(a1 + 760) = 0;
  v10 = *(a1 + 768);
  if (v10)
  {
    memset_s(v10, *(a1 + 776), 0, *(a1 + 776));
    v11 = *(a1 + 768);
    if (v11)
    {
      free(v11);
      *(a1 + 768) = 0;
    }
  }

  *(a1 + 776) = 0;
  memset_s((a1 + 494), 0x20uLL, 0, 0x20uLL);
  memset_s((a1 + 558), 0x20uLL, 0, 0x20uLL);
  memset_s((a1 + 654), 0x20uLL, 0, 0x20uLL);
  v12 = *(a1 + 688);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 688) = 0;
  }

  v13 = *(a1 + 880);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 880) = 0;
  }
}

unsigned int *poly1305_update(unsigned int *result, unsigned int *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = result;
  v6 = *(result + 9);
  if (v6)
  {
    v7 = 16 - v6;
    if (16 - v6 >= a3)
    {
      v7 = a3;
    }

    if (v7)
    {
      v8 = result + 14;
      v9 = a2;
      v10 = v7;
      do
      {
        v11 = *v9;
        v9 = (v9 + 1);
        *(v8 + *(result + 9)) = v11;
        v8 = (v8 + 1);
        --v10;
      }

      while (v10);
      v6 = *(result + 9);
    }

    v12 = v6 + v7;
    *(result + 9) = v12;
    v3 = a3 - v7;
    v4 = (a2 + v7);
    if (v12 == 16)
    {
      result = _poly1305_update(result, result + 14, 0x10uLL);
      *(v5 + 9) = 0;
    }
  }

  if (v3 >= 0x10)
  {
    result = _poly1305_update(v5, v4, v3 & 0xFFFFFFFFFFFFFFF0);
    v4 = (v4 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v3 &= 0xFu;
  }

  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      *(v5 + i + 56) = *(v4 + i);
    }

    *(v5 + 9) = v3;
  }

  return result;
}

unsigned int *chacha20_poly1305_add_aad(uint64_t a1, unsigned int *a2, unint64_t a3)
{
  result = poly1305_update((a1 + 136), a2, a3);
  *(a1 + 232) += a3;
  return result;
}

uint64_t NetSocket_WriteVInternal(uint64_t a1, iovec *a2, int a3, unsigned int a4)
{
  if (!a1)
  {
    return 4294960556;
  }

  if (*a1 != 1853058915)
  {
    return 4294960556;
  }

  if (*(a1 + 8))
  {
    return 4294960573;
  }

  if ((*(a1 + 4) & 0x80000000) != 0)
  {
    return 4294960551;
  }

  v5 = a3;
  if (!a3)
  {
    return 0;
  }

  while (1)
  {
    while (1)
    {
      v8 = writev(*(a1 + 4), a2, v5);
      if (v8 < 1)
      {
        break;
      }

      if (v5 < 1)
      {
        if (!v5)
        {
          return 0;
        }

        iov_len = a2->iov_len;
      }

      else
      {
        while (1)
        {
          iov_len = a2->iov_len;
          if (v8 < iov_len)
          {
            break;
          }

          ++a2;
          v8 -= iov_len;
          v11 = __OFSUB__(v5--, 1);
          if ((v5 < 0) ^ v11 | (v5 == 0))
          {
            return 0;
          }
        }
      }

      a2->iov_base = a2->iov_base + v8;
      a2->iov_len = iov_len - v8;
    }

    if (!v8)
    {
      return 4294960591;
    }

    if (!*__error())
    {
      break;
    }

    result = *__error();
    if (result != 4)
    {
      if (result != 35)
      {
        return result;
      }

      result = NetSocket_Wait(a1, *(a1 + 4), 1, a4);
      if (result)
      {
        return result;
      }
    }
  }

  return 4294960596;
}

uint64_t HTTPMessageReadMessageEx(uint64_t a1, uint64_t (*a2)(unint64_t, size_t, unint64_t *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v66 = 0;
  if (*(a1 + 8504))
  {
    goto LABEL_2;
  }

  result = HTTPReadHeader(a1 + 24, a2, a3);
  if (result)
  {
    return result;
  }

  *(a1 + 8504) = 1;
  if (*(a1 + 9744))
  {
    v40 = *(a1 + 9752);
    if ((v40 & 0x80000000) == 0)
    {
      if (close(v40) && *__error())
      {
        __error();
      }

      *(a1 + 9752) = -1;
    }

    while (1)
    {
      v41 = open(*(a1 + 9744), 1538, 384);
      *(a1 + 9752) = v41;
      if ((v41 & 0x80000000) == 0)
      {
        break;
      }

      if (!*__error())
      {
        return 4294960596;
      }

      result = *__error();
      if (result != 4)
      {
        if (result)
        {
          return result;
        }

        break;
      }
    }
  }

  v42 = *(a1 + 8216);
  if (v42 == -1)
  {
    v42 = strlen((a1 + 24));
  }

  v69 = 0;
  v70 = 0;
  LOBYTE(__nbyte) = 0;
  if (HTTPGetHeaderField((a1 + 24), v42, "Transfer-Encoding", 0, 0, &v70, &v69, 0) || v69 < 1)
  {
    goto LABEL_118;
  }

  v44 = v70;
  v45 = &v70[v69];
  v46 = &v70[v69];
  v47 = MEMORY[0x1E69E9830];
  do
  {
    if (v44 >= v45)
    {
      goto LABEL_89;
    }

    v48 = v46 - v44;
    while (1)
    {
      v49 = *v44;
      if (v49 < 0)
      {
        break;
      }

      if ((*(v47 + 4 * v49 + 60) & 0x4000) == 0)
      {
        goto LABEL_88;
      }

LABEL_86:
      v70 = ++v44;
      if (!--v48)
      {
        goto LABEL_89;
      }
    }

    if (__maskrune(*v44, 0x4000uLL))
    {
      goto LABEL_86;
    }

LABEL_88:
    v44 = v70;
LABEL_89:
    v50 = v44;
    if (v44 < v45)
    {
      v50 = v44;
      do
      {
        LOBYTE(__nbyte) = *v50;
        if (__nbyte == 44 || __nbyte == 59)
        {
          break;
        }

        if ((__nbyte & 0x80) != 0)
        {
          v51 = __maskrune(__nbyte, 0x4000uLL);
          v50 = v70;
          if (v51)
          {
            break;
          }
        }

        else if ((*(v47 + 4 * __nbyte + 60) & 0x4000) != 0)
        {
          break;
        }

        v70 = ++v50;
      }

      while (v50 < v45);
    }

    if (!strnicmpx(v44, v50 - v44, "chunked"))
    {
      *(a1 + 8508) = 1;
      goto LABEL_2;
    }

    v44 = v70;
    if (v70 < v45)
    {
      v52 = v46 - v70;
      v53 = v70 + 1;
      while (1)
      {
        v54 = *(v53 - 1);
        if (v54 < 0)
        {
          if (!__maskrune(*(v53 - 1), 0x4000uLL))
          {
LABEL_107:
            v44 = v70;
            break;
          }
        }

        else if ((*(v47 + 4 * v54 + 60) & 0x4000) == 0)
        {
          goto LABEL_107;
        }

        v70 = v53++;
        if (!--v52)
        {
          v44 = v46;
          break;
        }
      }
    }

    if (v44 < v45 && *v44 == 59)
    {
      v70 = v44 + 1;
        ;
      }

      v44 = v70;
    }

    if (v44 < v45 && *v44 == 44)
    {
      v70 = ++v44;
    }
  }

  while (v44 < v45);
LABEL_118:
  *(a1 + 8508) = 0;
  v55 = *(a1 + 8488);
  if ((*(a1 + 9752) & 0x80000000) == 0)
  {
    *(a1 + 9760) = v55;
    if (v55 >= 0x100000)
    {
      v55 = 0x100000;
    }

    v66 = v55;
    *(a1 + 8536) = v55;
    goto LABEL_154;
  }

  if (v55 > *(a1 + 8536))
  {
    if (gLogCategory_HTTPMessage <= 90)
    {
      if (gLogCategory_HTTPMessage == -1)
      {
        if (!_LogCategory_Initialize(&gLogCategory_HTTPMessage, 0x5Au))
        {
          return 4294960553;
        }

        v55 = *(a1 + 8488);
      }

      LogPrintF_safe(&gLogCategory_HTTPMessage, "OSStatus HTTPMessageReadMessageEx(HTTPMessageRef, NetTransportRead_f, void *)", 0x5Au, "### Bad content length: %llu vs %zu", v43, a6, a7, a8, v55);
    }

    return 4294960553;
  }

  v66 = *(a1 + 8488);
LABEL_154:
  result = HTTPMessageSetBodyLength(a1, v55);
  if (result)
  {
    return result;
  }

LABEL_2:
  v11 = *(a1 + 8508);
  if (v11)
  {
    v69 = 0;
    v70 = 0;
    __nbyte = 0;
    while (1)
    {
      result = 4294960587;
      if (v11 <= 2)
      {
        if (v11 == 1)
        {
          v67 = 0;
          result = HTTPReadLine((a1 + 24), a2, a3, &v70, &v69, a6, a7, a8);
          if (result)
          {
            return result;
          }

          if (SNScanF(v70, v69, "%llx", v22, v23, v24, v25, v26, &v67) != 1)
          {
            return 4294960554;
          }

          v28 = v67;
          if (v67)
          {
            if ((*(a1 + 9752) & 0x80000000) != 0)
            {
              v35 = *(a1 + 8528);
              v36 = v35 + v67;
              if (v35 + v67 <= v35)
              {
                if (gLogCategory_HTTPMessage <= 90 && (gLogCategory_HTTPMessage != -1 || _LogCategory_Initialize(&gLogCategory_HTTPMessage, 0x5Au)))
                {
                  LogPrintF_safe(&gLogCategory_HTTPMessage, "OSStatus _HTTPMessageProcessChunkHeader(HTTPMessageRef, uint64_t)", 0x5Au, "### Bad chunk wrap: %zu vs %zu", v27, a6, a7, a8, v36);
                }

                return 4294960553;
              }

              v37 = (a1 + 8552);
              if (v36 >= 0x3E9)
              {
                v38 = malloc_type_realloc(*(a1 + 9552), v36, 0x100004077774924uLL);
                if (!v38)
                {
                  return 4294960568;
                }

                v37 = v38;
                if (!*(a1 + 9552))
                {
                  v39 = *(a1 + 8544);
                  if (v39)
                  {
                    memmove(v38, *(a1 + 8520), v39);
                  }
                }

                *(a1 + 9552) = v37;
              }

              *(a1 + 8520) = v37;
              *(a1 + 8528) = v36;
            }

            else
            {
              if (v67 >= 0x100000)
              {
                v29 = 0x100000;
              }

              else
              {
                v29 = v67;
              }

              if (v29 > *(a1 + 8536))
              {
                result = HTTPMessageSetBodyLength(a1, v29);
                if (result)
                {
                  return result;
                }

                *(a1 + 8536) = v29;
              }

              *(a1 + 9760) = v28;
            }

            v13 = 2;
          }

          else
          {
            v13 = 4;
          }

          goto LABEL_62;
        }

        if (v11 != 2)
        {
          return result;
        }

        v14 = *(a1 + 9752);
        v15 = *(a1 + 8232);
        if (v14 < 0)
        {
          v30 = *(a1 + 8544);
          v31 = *(a1 + 8528);
          if (v15)
          {
            v32 = v31 - v30;
            if (v32 >= v15)
            {
              v33 = *(a1 + 8232);
            }

            else
            {
              v33 = v32;
            }

            __nbyte = v33;
            memmove((*(a1 + 8520) + v30), *(a1 + 8224), v33);
            v34 = __nbyte;
            *(a1 + 8224) += __nbyte;
            *(a1 + 8232) -= v34;
            v30 = *(a1 + 8544) + v34;
            *(a1 + 8544) = v30;
            v31 = *(a1 + 8528);
          }

          __nbyte = v30;
          if (v31 > v30)
          {
            result = a2(*(a1 + 8520) + v30, v31 - v30, &__nbyte, a3);
            if (result)
            {
              return result;
            }

            v30 = *(a1 + 8544) + __nbyte;
            *(a1 + 8544) = v30;
            v31 = *(a1 + 8528);
          }

          if (v30 == v31)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v16 = *(a1 + 9760);
          if (v15)
          {
            if (!v16)
            {
              goto LABEL_51;
            }

            if (v15 >= v16)
            {
              v17 = *(a1 + 9760);
            }

            else
            {
              v17 = *(a1 + 8232);
            }

            __nbyte = v17;
            result = FDWriteAll(v14, *(a1 + 8224), v17);
            if (result)
            {
              return result;
            }

            v18 = __nbyte;
            *(a1 + 8224) += __nbyte;
            *(a1 + 8232) -= v18;
            v16 = *(a1 + 9760) - v18;
            *(a1 + 9760) = v16;
          }

          if (!v16)
          {
            goto LABEL_51;
          }

          if (*(a1 + 8536) >= v16)
          {
            v19 = v16;
          }

          else
          {
            v19 = *(a1 + 8536);
          }

          __nbyte = v19;
          result = (a2)(*(a1 + 8520));
          if (result)
          {
            return result;
          }

          result = FDWriteAll(*(a1 + 9752), *(a1 + 8520), __nbyte);
          if (result)
          {
            return result;
          }

          v20 = *(a1 + 9760);
          v21 = v20 == __nbyte;
          *(a1 + 9760) = v20 - __nbyte;
          if (v21)
          {
LABEL_51:
            *(a1 + 8508) = 3;
          }
        }
      }

      else
      {
        switch(v11)
        {
          case 3:
            result = HTTPReadLine((a1 + 24), a2, a3, &v70, &v69, a6, a7, a8);
            if (result)
            {
              return result;
            }

            if (v69)
            {
              return 4294960554;
            }

            *(a1 + 8508) = 1;
            break;
          case 4:
            result = HTTPReadLine((a1 + 24), a2, a3, &v70, &v69, a6, a7, a8);
            if (result)
            {
              return result;
            }

            if (!v69)
            {
              v13 = 5;
LABEL_62:
              *(a1 + 8508) = v13;
            }

            break;
          case 5:
LABEL_123:
            v56 = *(a1 + 9752);
            if (v56 < 0)
            {
              return 0;
            }

            if (close(v56))
            {
              if (*__error())
              {
                __error();
              }
            }

            result = 0;
            *(a1 + 9752) = -1;
            return result;
          default:
            return result;
        }
      }

      v11 = *(a1 + 8508);
    }
  }

  v57 = *(a1 + 9752);
  v58 = *(a1 + 8232);
  if (v57 < 0)
  {
    if (v58)
    {
      if (v58 >= *(a1 + 8528))
      {
        v63 = *(a1 + 8528);
      }

      else
      {
        v63 = *(a1 + 8232);
      }

      memmove(*(a1 + 8520), *(a1 + 8224), v63);
      *(a1 + 8224) += v63;
      *(a1 + 8232) -= v63;
      v64 = *(a1 + 8544) + v63;
      *(a1 + 8544) = v64;
    }

    else
    {
      v64 = *(a1 + 8544);
    }

    v66 = v64;
    v65 = *(a1 + 8528);
    if (v65 > v64)
    {
      result = a2(*(a1 + 8520) + v64, v65 - v64, &v66, a3);
      if (result)
      {
        return result;
      }

      v64 = *(a1 + 8544) + v66;
      *(a1 + 8544) = v64;
      v65 = *(a1 + 8528);
    }

    if (v64 == v65)
    {
      return 0;
    }

    else
    {
      return 35;
    }
  }

  else
  {
    v59 = *(a1 + 9760);
    if (!v58)
    {
LABEL_136:
      if (!v59)
      {
        goto LABEL_123;
      }

      if (*(a1 + 8536) >= v59)
      {
        v61 = v59;
      }

      else
      {
        v61 = *(a1 + 8536);
      }

      v66 = v61;
      result = (a2)(*(a1 + 8520));
      if (!result)
      {
        result = FDWriteAll(*(a1 + 9752), *(a1 + 8520), v66);
        if (!result)
        {
          v62 = *(a1 + 9760);
          v21 = v62 == v66;
          *(a1 + 9760) = v62 - v66;
          if (v21)
          {
            goto LABEL_123;
          }

          return 35;
        }
      }

      return result;
    }

    if (!v59)
    {
      goto LABEL_123;
    }

    if (v58 >= v59)
    {
      v60 = *(a1 + 9760);
    }

    else
    {
      v60 = *(a1 + 8232);
    }

    v66 = v60;
    result = FDWriteAll(v57, *(a1 + 8224), v60);
    if (!result)
    {
      *(a1 + 8224) += v60;
      *(a1 + 8232) -= v60;
      v59 = *(a1 + 9760) - v60;
      *(a1 + 9760) = v59;
      goto LABEL_136;
    }
  }

  return result;
}

uint64_t _NetTransportRead(char *__dst, size_t a2, void *a3, uint64_t a4)
{
  v6 = __dst;
  v7 = (a4 + 40);
  v8 = (a4 + 42);
  v9 = (a4 + 16752);
  for (i = *(a4 + 16448); ; i = v8)
  {
    while (1)
    {
      v11 = *(a4 + 16456) - i;
      if (v11)
      {
        if (v11 >= a2)
        {
          v12 = a2;
        }

        else
        {
          v12 = *(a4 + 16456) - i;
        }

        memcpy(v6, i, v12);
        i = (*(a4 + 16448) + v12);
        *(a4 + 16448) = i;
        v6 += v12;
        a2 -= v12;
      }

      if (!a2)
      {
        LODWORD(v26) = 0;
        goto LABEL_26;
      }

      v13 = *(a4 + 16);
      if (v13 == 1)
      {
        Data = SocketReadData(*a4, v7, 2uLL, (a4 + 32));
        if (Data)
        {
          goto LABEL_37;
        }

        v14 = *(a4 + 40);
        *(a4 + 24) = v14;
        if (v14 <= 0x4000)
        {
          *(a4 + 32) = 0;
          *(a4 + 16) = 2;
          goto LABEL_15;
        }

        if (gLogCategory_NetTransportChaCha20Poly1305 <= 60)
        {
          if (gLogCategory_NetTransportChaCha20Poly1305 == -1)
          {
            if (!_LogCategory_Initialize(&gLogCategory_NetTransportChaCha20Poly1305, 0x3Cu))
            {
              goto LABEL_52;
            }

            v14 = *(a4 + 24);
          }

          LogPrintF(&gLogCategory_NetTransportChaCha20Poly1305, "OSStatus _NetTransportRead(void *, size_t, size_t *, void *)", 0x3Cu, "### NTCP bad size: %zu / %H\n", v16, v17, v18, v19, v14);
        }

LABEL_52:
        LODWORD(v26) = -6743;
        goto LABEL_26;
      }

      if (v13 == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = *(a4 + 24);
LABEL_15:
        Data = SocketReadData(*a4, v8, v14, (a4 + 32));
        if (Data)
        {
          goto LABEL_37;
        }

        *(a4 + 32) = 0;
        *(a4 + 16) = 3;
        break;
      }
    }

    Data = SocketReadData(*a4, a4 + 16426, 0x10uLL, (a4 + 32));
    v36 = Data;
    if (Data)
    {
LABEL_37:
      LODWORD(v26) = Data;
      goto LABEL_26;
    }

    chacha20_poly1305_init_64x64((a4 + 16464), (a4 + 16720), v9);
    poly1305_update((a4 + 16600), v7, 2uLL);
    *(a4 + 16696) += 2;
    v20 = chacha20_poly1305_decrypt(a4 + 16464, v8, *(a4 + 24), v8);
    v21 = chacha20_poly1305_verify((a4 + 16464), (v8 + v20), (a4 + 16426), &v36);
    v26 = v36;
    if (v36)
    {
      break;
    }

    v27 = v21 + v20;
    if (v21 + v20 != *(a4 + 24))
    {
      if (gLogCategory_NetTransportChaCha20Poly1305 <= 60 && (gLogCategory_NetTransportChaCha20Poly1305 != -1 || _LogCategory_Initialize(&gLogCategory_NetTransportChaCha20Poly1305, 0x3Cu)))
      {
        LogPrintF(&gLogCategory_NetTransportChaCha20Poly1305, "OSStatus _NetTransportRead(void *, size_t, size_t *, void *)", 0x3Cu, "### NTCP verify len failed: %zu vs %zu\n", v22, v23, v24, v25, v27);
      }

      LODWORD(v26) = -6762;
      goto LABEL_26;
    }

    v28 = 0;
    do
    {
      v29 = (*(v9 + v28))++ + 1;
      if ((v29 & 0x100) == 0)
      {
        break;
      }
    }

    while (v28++ < 7);
    *(a4 + 16448) = v8;
    *(a4 + 16456) = v8 + v27;
    *(a4 + 32) = 0;
    *(a4 + 16) = 1;
  }

  if (gLogCategory_NetTransportChaCha20Poly1305 <= 60 && (gLogCategory_NetTransportChaCha20Poly1305 != -1 || _LogCategory_Initialize(&gLogCategory_NetTransportChaCha20Poly1305, 0x3Cu)))
  {
    LogPrintF(&gLogCategory_NetTransportChaCha20Poly1305, "OSStatus _NetTransportRead(void *, size_t, size_t *, void *)", 0x3Cu, "### NTCP verify failed: %#m\n", v22, v23, v24, v25, v26);
  }

LABEL_26:
  if (a3)
  {
    *a3 = v6 - __dst;
  }

  if (v26 != -6753 && v26 != 35 || v6 == __dst)
  {
    return v26;
  }

  else
  {
    return 0;
  }
}

uint64_t HTTPGetHeaderField(char *__s, int64_t a2, char *a3, const char **a4, size_t *a5, const char **a6, void *a7, char **a8)
{
  v14 = a2;
  v15 = __s;
  if (a2 == -1)
  {
    v14 = strlen(__s);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = strlen(a3);
LABEL_6:
  if (v14 < 1)
  {
    return 4294960569;
  }

  v33 = a8;
  v17 = &v15[v14];
  while (1)
  {
    v18 = 0;
    v19 = v15;
    v20 = v15;
    while (1)
    {
      v21 = *v20;
      if (v21 == 10 || v21 == 13)
      {
        break;
      }

      ++v20;
      ++v18;
      if (v20 >= v17)
      {
        return 4294960569;
      }
    }

    if (v21 == 13)
    {
      v15 = v20 + 1;
    }

    else
    {
      v15 = v20;
    }

    if (v15 < v17 && *v15 == 10)
    {
      ++v15;
    }

    if (!a3)
    {
      break;
    }

    if (v20 - v19 > v16 && v19[v16] == 58 && !strncasecmp(v19, a3, v16))
    {
      goto LABEL_34;
    }

LABEL_30:
    if (v15 >= v17)
    {
      return 4294960569;
    }
  }

  if (v19 >= v20)
  {
    goto LABEL_30;
  }

  v23 = v19;
  while (*v23 != 58)
  {
    ++v23;
    if (!--v18)
    {
      goto LABEL_30;
    }
  }

  v16 = v23 - v19;
LABEL_34:
  v25 = &v19[v16 + 1];
  if (v25 < v20)
  {
    while (1)
    {
      v26 = *v25;
      if (v26 != 32 && v26 != 9)
      {
        break;
      }

      if (++v25 >= v20)
      {
        v25 = v20;
        break;
      }
    }
  }

  while (v15 < v17)
  {
    v28 = *v15;
    if (v28 != 32 && v28 != 9)
    {
      break;
    }

    v30 = v15 + 1;
    do
    {
      v20 = v30;
      if (v30 >= v17)
      {
        v15 = v30;
        goto LABEL_58;
      }

      v31 = *v30++;
    }

    while (v31 != 13 && v31 != 10);
    if (v31 == 13)
    {
      v15 = v20 + 1;
    }

    else
    {
      v15 = v20;
    }

LABEL_58:
    if (v15 < v17 && *v15 == 10)
    {
      ++v15;
    }
  }

  if (a4)
  {
    *a4 = v19;
  }

  if (a5)
  {
    *a5 = v16;
  }

  if (a6)
  {
    *a6 = v25;
  }

  if (a7)
  {
    *a7 = v20 - v25;
  }

  result = 0;
  if (v33)
  {
    *v33 = v15;
  }

  return result;
}

void _HTTPConnectionReadHandler(uint64_t a1)
{
  dispatch_suspend(*(a1 + 200));
  *(a1 + 208) = 1;

  _HTTPConnectionRunStateMachine(a1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t HTTPReadHeader(uint64_t a1, uint64_t (*a2)(unint64_t, size_t, unint64_t *, uint64_t), uint64_t a3)
{
  v6 = *(a1 + 0x2000);
  v7 = a1;
  do
  {
    while (1)
    {
LABEL_2:
      v8 = *(a1 + 8208);
      v15 = v8;
      v9 = 0x2000 - v6;
      if (v8)
      {
        if (v8 > v9)
        {
          return 4294960591;
        }

        memmove((a1 + v6), *(a1 + 8200), v8);
        *(a1 + 8208) = 0;
      }

      else
      {
        v15 = 0x2000 - v6;
        if (v6 == 0x2000)
        {
          return 4294960533;
        }

        result = a2(a1 + v6, v9, &v15, a3);
        if (result)
        {
          return result;
        }

        v8 = v15;
      }

      *(a1 + 0x2000) += v8;
      v6 += v8;
      v15 = v6;
      if (v6)
      {
        if (*a1 == 36)
        {
          break;
        }
      }

      v13 = a1 + v6;
LABEL_13:
      if (v7 < v13)
      {
        while (1)
        {
          if (*v7 != 10)
          {
            ++v7;
            goto LABEL_13;
          }

          v15 = v13 - v7;
          if (v13 - v7 < 3)
          {
            break;
          }

          v11 = v7 + 1;
          v12 = v7[1];
          if (v12 == 13)
          {
            if (v7[2] == 10)
            {
              v14 = v7 + 3;
              goto LABEL_26;
            }
          }

          else if (v12 == 10)
          {
            goto LABEL_29;
          }

          ++v7;
          if (v11 >= v13)
          {
            v7 = v11;
            goto LABEL_2;
          }
        }

        if (v13 - v7 == 2 && v7[1] == 10)
        {
LABEL_29:
          v14 = v7 + 2;
          goto LABEL_26;
        }
      }
    }
  }

  while (v6 < 4);
  v13 = a1 + v6;
  v14 = (a1 + 4);
LABEL_26:
  *(a1 + 0x2000) = &v14[-a1];
  result = HTTPHeader_Parse(a1);
  if (!result)
  {
    *(a1 + 8200) = v14;
    *(a1 + 8208) = v13 - v14;
  }

  return result;
}

uint64_t chacha20_poly1305_init_64x64(int32x4_t *a1, __int32 *a2, __int32 *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  *a1 = xmmword_191FF94A0;
  a1[1].i32[0] = *a2;
  a1[1].i32[1] = a2[1];
  a1[1].i32[2] = a2[2];
  a1[1].i32[3] = a2[3];
  a1[2].i32[0] = a2[4];
  a1[2].i32[1] = a2[5];
  a1[2].i32[2] = a2[6];
  v4 = a2[7];
  a1[3].i64[0] = 0;
  a1[2].i32[3] = v4;
  if (a3)
  {
    a1[3].i32[2] = *a3;
    v5 = a3[1];
  }

  else
  {
    v5 = 0;
    a1[3].i32[2] = 0;
  }

  a1[3].i32[3] = v5;
  a1[8].i64[0] = 0;
  _chacha20_xor(a1, v7, kZero64, 0x40uLL);
  result = poly1305_init(&a1[8].i64[1], v7);
  a1[14].i64[1] = 0;
  a1[15].i64[0] = 0;
  a1[15].i8[8] = 0;
  return result;
}

void _HTTPConnectionRunStateMachine(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 + 312;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = *(a1 + 288);
        v11 = 4294960534;
        if (v10 <= 2)
        {
          break;
        }

        if (v10 == 3)
        {
          if (*v9)
          {
            LogHTTP(*(a1 + 128), *(a1 + 128), (*v9 + 24), *(*v9 + 8216), *(*v9 + 8520), *(*v9 + 8528), a7, a8);
            *(a1 + 288) = 4;
          }

          else
          {
            *(a1 + 288) = 0;
          }
        }

        else
        {
          if (v10 != 4)
          {
            goto LABEL_37;
          }

          v16 = *(a1 + 312);
          v17 = HTTPMessageWriteMessage(v16, *(a1 + 360), *(a1 + 328));
          v18 = _HTTPConnectionHandleIOError(a1, v17, 0);
          if (v18 == 35)
          {
            return;
          }

          v11 = v18;
          if (v18)
          {
            goto LABEL_37;
          }

          *(a1 + 408) = mach_absolute_time();
          v19 = v16[2];
          *(a1 + 312) = v19;
          if (!v19)
          {
            *(a1 + 320) = v9;
          }

          v20 = v16[1215];
          if (v20)
          {
            (*(v20 + 16))(v20, v16);
          }

          else
          {
            v28 = v16[1214];
            if (v28)
            {
              v28(v16);
            }
          }

          HTTPMessageReset(v16);
          CFRelease(v16);
          *(a1 + 288) = 3;
        }
      }

      if (v10)
      {
        break;
      }

      v21 = *(a1 + 296);
      Message = HTTPMessageReadMessageEx(v21, *(a1 + 352), *(a1 + 328), a4, a5, a6, a7, a8);
      v23 = _HTTPConnectionHandleIOError(a1, Message, 1);
      if (v23 == 35)
      {
        return;
      }

      v11 = v23;
      if (v23)
      {
        goto LABEL_37;
      }

      *(a1 + 408) = mach_absolute_time();
      LogHTTP(*(a1 + 128), *(a1 + 128), (v21 + 24), *(v21 + 8216), *(v21 + 8520), *(v21 + 8528), v24, v25);
      if (*(v21 + 8216) == 4 && *(v21 + 24) == 36 && (v26 = *(a1 + 104)) != 0)
      {
        v27 = v26(a1, *(v21 + 8480), *(v21 + 8520), *(v21 + 8528), *(a1 + 40));
        if (v27)
        {
          goto LABEL_48;
        }

        HTTPMessageReset(*(a1 + 296));
      }

      else
      {
        v27 = (*(a1 + 88))(a1, v21, *(a1 + 40));
        if (v27)
        {
LABEL_48:
          v11 = v27;
          goto LABEL_37;
        }

        if (!*(a1 + 288))
        {
          *(a1 + 288) = 1;
          return;
        }
      }
    }

    if (v10 != 2)
    {
      break;
    }

    v12 = HTTPMessageWriteMessage(*(a1 + 304), *(a1 + 360), *(a1 + 328));
    v13 = _HTTPConnectionHandleIOError(a1, v12, 0);
    if (v13 == 35)
    {
      return;
    }

    v11 = v13;
    if (v13)
    {
      goto LABEL_37;
    }

    *(a1 + 408) = mach_absolute_time();
    v14 = *(*(a1 + 304) + 9712);
    if (v14)
    {
      v14();
      *(*(a1 + 304) + 9712) = 0;
    }

    v15 = *(a1 + 296);
    if (!*(v15 + 8496) || *(a1 + 376))
    {
      v11 = 4294960544;
      goto LABEL_37;
    }

    HTTPMessageReset(v15);
    HTTPMessageReset(*(a1 + 304));
    *(a1 + 288) = 3;
  }

  if (v10 == 1)
  {
    return;
  }

LABEL_37:
  v29 = *(a1 + 128);
  if (v29 && *v29 <= 50)
  {
    if (*v29 != -1)
    {
LABEL_40:
      LogPrintF(v29, "void _HTTPConnectionRunStateMachine(HTTPConnectionRef)", 0x32u, "HTTP connection closing: %#m\n", a5, a6, a7, a8, v11);
      goto LABEL_42;
    }

    if (_LogCategory_Initialize(v29, 0x32u))
    {
      v29 = *(a1 + 128);
      goto LABEL_40;
    }
  }

LABEL_42:
  HTTPConnectionStop(a1);
  v30 = *(a1 + 112);
  if (v30)
  {
    v31 = *(a1 + 40);

    v30(a1, v31);
  }
}

uint64_t SocketReadData(int a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = a3 - *a4;
  if (a3 == *a4)
  {
    return 0;
  }

  if (a3 <= *a4)
  {
    return 4294960533;
  }

  while (1)
  {
    v10 = read(a1, (a2 + v4), v5);
    if ((v10 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!*__error())
    {
      return 4294960596;
    }

    result = *__error();
    if (result != 4)
    {
      return result;
    }
  }

  if (!v10)
  {
    return 4294960543;
  }

  *a4 = v10 + v4;
  if (v10 + v4 == a3)
  {
    return 0;
  }

  else
  {
    return 35;
  }
}

uint64_t poly1305_init(uint64_t result, unsigned __int16 *a2)
{
  v2 = 0;
  v3 = *(a2 + 3);
  v4 = v3 << 24;
  v5 = (*(a2 + 6) << 16) | (*(a2 + 7) << 24);
  v6 = *(a2 + 8) | (*(a2 + 9) << 8);
  v7 = (*(a2 + 11) << 24) | (*(a2 + 10) << 16) | (*(a2 + 9) << 8);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  v10 = *(a2 + 14) << 8;
  v11 = (*a2 | (*(a2 + 2) << 16)) & 0xFCFFFFFF | ((v3 & 3) << 24);
  LOBYTE(v3) = *(a2 + 15);
  HIDWORD(v12) = a2[2] | (*(a2 + 6) << 16);
  LODWORD(v12) = v4;
  v13 = (v12 >> 26) & 0x3FFFF03;
  *result = v11;
  *(result + 4) = v13;
  v14 = (__PAIR64__(v6, v5) >> 20) & 0x3FFC0FF;
  v15 = (__PAIR64__(v8, v7) >> 14) & 0x3F03FFF;
  *(result + 8) = v14;
  *(result + 12) = v15;
  v16 = v10 & 0xFFF0FFFF | ((v3 & 0xF) << 16);
  *(result + 16) = v16 | v9;
  *(result + 20) = 5 * v13;
  *(result + 24) = 5 * v14;
  *(result + 28) = 5 * v15;
  *(result + 32) = 5 * (v16 | v9);
  *(result + 72) = 0;
  *(result + 44) = 0;
  *(result + 36) = 0;
  *(result + 52) = 0;
  do
  {
    *(result + 80 + v2) = *(a2 + v2 + 16);
    ++v2;
  }

  while (v2 != 16);
  return result;
}

int64_t chacha20_update(uint64_t a1, int8x16_t *a2, unint64_t a3, int8x16_t *a4)
{
  v5 = a3;
  v6 = a2;
  v8 = *(a1 + 128);
  if (v8)
  {
    if (64 - v8 >= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = 64 - v8;
    }

    if (v9)
    {
      v10 = a2;
      v11 = v9;
      do
      {
        v12 = v10->i8[0];
        v10 = (v10 + 1);
        v13 = v8 + 1;
        *(a1 + 64 + v8++) = v12;
        --v11;
      }

      while (v11);
    }

    else
    {
      v13 = *(a1 + 128);
    }

    v6 = (a2 + v9);
    v5 = a3 - v9;
    v14 = a4;
    if (v13 == 64)
    {
      _chacha20_xor(a1, a4, (a1 + 64), 0x40uLL);
      v13 = 0;
      v14 = a4 + 4;
    }

    *(a1 + 128) = v13;
  }

  else
  {
    v14 = a4;
  }

  if (v5 >= 0x40)
  {
    _chacha20_xor(a1, v14, v6, v5 & 0xFFFFFFFFFFFFFFC0);
    v6 = (v6 + (v5 & 0xFFFFFFFFFFFFFFC0));
    v14 = (v14 + (v5 & 0xFFFFFFFFFFFFFFC0));
    v5 &= 0x3Fu;
  }

  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      *(a1 + 64 + i) = v6->i8[i];
    }

    *(a1 + 128) = v5;
  }

  return v14 - a4;
}

int32x4_t *_chacha20_xor(int32x4_t *result, int8x16_t *a2, int8x16_t *a3, unint64_t a4)
{
  v201 = *MEMORY[0x1E69E9840];
  v5 = result[1];
  v4 = result[2];
  v6 = result[3];
  v7 = a4 / 0xC0;
  if (a4 >= 0xC0)
  {
    v8 = 0;
    do
    {
      v9 = vaddq_s32(v6, xmmword_191FF9490);
      v10 = result[1].i32[0];
      v11 = result[1].i32[1];
      v13 = result[1].i32[2];
      v12 = result[1].i32[3];
      v14 = result[2].i32[0];
      v15 = result[2].i32[1];
      v16 = result[2].i32[2];
      v17 = result[2].i32[3];
      v18 = 3 * v8 + 2;
      v19 = result[3].i32[1];
      v20 = result[3].i32[0] + v18;
      v21 = -10;
      v22 = 1634760805;
      v23 = 857760878;
      v24 = 2036477234;
      v25 = 1797285236;
      v26 = xmmword_191FF94A0;
      v27 = v5;
      v28 = v4;
      v29 = v6;
      v30 = xmmword_191FF94A0;
      v31 = v5;
      v32 = v4;
      v33 = v9;
      v35 = result[3].i32[2];
      v34 = result[3].i32[3];
      do
      {
        v36 = vaddq_s32(v26, v27);
        v37 = vrev32q_s16(veorq_s8(v36, v29));
        v38 = vaddq_s32(v28, v37);
        v39 = veorq_s8(v38, v27);
        v40 = vsraq_n_u32(vshlq_n_s32(v39, 0xCuLL), v39, 0x14uLL);
        v41 = vaddq_s32(v40, v36);
        v42 = veorq_s8(v41, v37);
        v43 = vsraq_n_u32(vshlq_n_s32(v42, 8uLL), v42, 0x18uLL);
        v44 = vaddq_s32(v43, v38);
        v45 = veorq_s8(v44, v40);
        v46 = vsraq_n_u32(vshlq_n_s32(v45, 7uLL), v45, 0x19uLL);
        v47 = vextq_s8(v46, v46, 4uLL);
        v48 = vaddq_s32(v47, v41);
        v49 = vrev32q_s16(veorq_s8(v48, vextq_s8(v43, v43, 0xCuLL)));
        v50 = vaddq_s32(vextq_s8(v44, v44, 8uLL), v49);
        v51 = veorq_s8(v50, v47);
        v52 = vsraq_n_u32(vshlq_n_s32(v51, 0xCuLL), v51, 0x14uLL);
        v26 = vaddq_s32(v52, v48);
        v53 = veorq_s8(v26, v49);
        v54 = vsraq_n_u32(vshlq_n_s32(v53, 8uLL), v53, 0x18uLL);
        v55 = vaddq_s32(v54, v50);
        v56 = veorq_s8(v55, v52);
        v57 = vsraq_n_u32(vshlq_n_s32(v56, 7uLL), v56, 0x19uLL);
        v27 = vextq_s8(v57, v57, 0xCuLL);
        v28 = vextq_s8(v55, v55, 8uLL);
        v29 = vextq_s8(v54, v54, 4uLL);
        v58 = vaddq_s32(v30, v31);
        v59 = vrev32q_s16(veorq_s8(v58, v33));
        v60 = vaddq_s32(v32, v59);
        v61 = veorq_s8(v60, v31);
        v62 = v22 + v10;
        v63 = (v22 + v10) ^ v20;
        HIDWORD(v64) = v63;
        LODWORD(v64) = v63;
        v65 = vsraq_n_u32(vshlq_n_s32(v61, 0xCuLL), v61, 0x14uLL);
        v66 = (v64 >> 16) + v14;
        v67 = v66 ^ v10;
        HIDWORD(v64) = v67;
        LODWORD(v64) = v67;
        v68 = (v64 >> 20) + v62;
        v70 = vaddq_s32(v65, v58);
        LODWORD(v64) = v68 ^ __ROR4__(v63, 16);
        v69 = v64;
        HIDWORD(v64) = v64;
        v71 = (v64 >> 24) + v66;
        v73 = veorq_s8(v70, v59);
        LODWORD(v64) = v71 ^ __ROR4__(v67, 20);
        v72 = v64;
        HIDWORD(v64) = v64;
        v74 = v64 >> 25;
        v75 = v23 + v11;
        v76 = v75 ^ v19;
        HIDWORD(v64) = v76;
        LODWORD(v64) = v76;
        v77 = (v64 >> 16) + v15;
        v78 = v77 ^ v11;
        HIDWORD(v64) = v78;
        LODWORD(v64) = v78;
        v79 = (v64 >> 20) + v75;
        LODWORD(v64) = v79 ^ __ROR4__(v76, 16);
        v80 = v64;
        HIDWORD(v64) = v64;
        v81 = vsraq_n_u32(vshlq_n_s32(v73, 8uLL), v73, 0x18uLL);
        v82 = (v64 >> 24) + v77;
        LODWORD(v64) = v82 ^ __ROR4__(v78, 20);
        v83 = v64;
        HIDWORD(v64) = v64;
        v84 = v64 >> 25;
        v85 = v24 + v13;
        v86 = v85 ^ v35;
        HIDWORD(v64) = v86;
        LODWORD(v64) = v86;
        v87 = (v64 >> 16) + v16;
        v88 = v87 ^ v13;
        HIDWORD(v64) = v87 ^ v13;
        LODWORD(v64) = v87 ^ v13;
        v89 = vaddq_s32(v81, v60);
        v90 = veorq_s8(v89, v65);
        v91 = (v64 >> 20) + v85;
        LODWORD(v64) = v91 ^ __ROR4__(v86, 16);
        v92 = v64;
        HIDWORD(v64) = v64;
        v93 = vsraq_n_u32(vshlq_n_s32(v90, 7uLL), v90, 0x19uLL);
        v94 = (v64 >> 24) + v87;
        v96 = vextq_s8(v93, v93, 4uLL);
        LODWORD(v64) = v94 ^ __ROR4__(v88, 20);
        v95 = v64;
        HIDWORD(v64) = v64;
        v97 = v64 >> 25;
        v98 = vaddq_s32(v96, v70);
        v99 = vrev32q_s16(veorq_s8(v98, vextq_s8(v81, v81, 0xCuLL)));
        v100 = v25 + v12;
        v101 = (v25 + v12) ^ v34;
        HIDWORD(v64) = v101;
        LODWORD(v64) = v101;
        v102 = vaddq_s32(vextq_s8(v89, v89, 8uLL), v99);
        v103 = veorq_s8(v102, v96);
        v104 = (v64 >> 16) + v17;
        v105 = v104 ^ v12;
        HIDWORD(v64) = v105;
        LODWORD(v64) = v105;
        v106 = vsraq_n_u32(vshlq_n_s32(v103, 0xCuLL), v103, 0x14uLL);
        v30 = vaddq_s32(v106, v98);
        v107 = veorq_s8(v30, v99);
        v108 = (v64 >> 20) + v100;
        v110 = vsraq_n_u32(vshlq_n_s32(v107, 8uLL), v107, 0x18uLL);
        v111 = vaddq_s32(v110, v102);
        LODWORD(v64) = v108 ^ __ROR4__(v101, 16);
        v109 = v64;
        HIDWORD(v64) = v64;
        v112 = veorq_s8(v111, v106);
        v113 = vsraq_n_u32(vshlq_n_s32(v112, 7uLL), v112, 0x19uLL);
        v114 = (v64 >> 24) + v104;
        v31 = vextq_s8(v113, v113, 0xCuLL);
        v32 = vextq_s8(v111, v111, 8uLL);
        LODWORD(v64) = v114 ^ __ROR4__(v105, 20);
        v115 = v64;
        HIDWORD(v64) = v64;
        v116 = v64 >> 25;
        LODWORD(v64) = (v84 + v68) ^ __ROR4__(v109, 24);
        v117 = v64;
        HIDWORD(v64) = v64;
        v118 = (v64 >> 16) + v94;
        LODWORD(v64) = v118 ^ __ROR4__(v83, 25);
        v119 = v64;
        HIDWORD(v64) = v64;
        v22 = (v64 >> 20) + v84 + v68;
        LODWORD(v64) = v22 ^ __ROR4__(v117, 16);
        HIDWORD(v64) = v64;
        v34 = v64 >> 24;
        v16 = v34 + v118;
        LODWORD(v64) = (v34 + v118) ^ __ROR4__(v119, 20);
        HIDWORD(v64) = v64;
        v11 = v64 >> 25;
        v120 = v97 + v79;
        v121 = (v97 + v79) ^ __ROR4__(v69, 24);
        HIDWORD(v64) = v121;
        LODWORD(v64) = v121;
        v122 = (v64 >> 16) + v114;
        LODWORD(v64) = v122 ^ __ROR4__(v95, 25);
        v123 = v64;
        HIDWORD(v64) = v64;
        v23 = (v64 >> 20) + v120;
        LODWORD(v64) = v23 ^ __ROR4__(v121, 16);
        HIDWORD(v64) = v64;
        v20 = v64 >> 24;
        v17 = v20 + v122;
        LODWORD(v64) = v17 ^ __ROR4__(v123, 20);
        HIDWORD(v64) = v64;
        v13 = v64 >> 25;
        v124 = v116 + v91;
        LODWORD(v64) = (v116 + v91) ^ __ROR4__(v80, 24);
        v125 = v64;
        HIDWORD(v64) = v64;
        v126 = (v64 >> 16) + v71;
        LODWORD(v64) = v126 ^ __ROR4__(v115, 25);
        v127 = v64;
        HIDWORD(v64) = v64;
        v24 = (v64 >> 20) + v124;
        LODWORD(v64) = v24 ^ __ROR4__(v125, 16);
        HIDWORD(v64) = v64;
        v19 = v64 >> 24;
        v14 = v19 + v126;
        LODWORD(v64) = (v19 + v126) ^ __ROR4__(v127, 20);
        HIDWORD(v64) = v64;
        v12 = v64 >> 25;
        v128 = v74 + v108;
        LODWORD(v64) = v128 ^ __ROR4__(v92, 24);
        v129 = v64;
        HIDWORD(v64) = v64;
        v130 = (v64 >> 16) + v82;
        LODWORD(v64) = v130 ^ __ROR4__(v72, 25);
        v131 = v64;
        HIDWORD(v64) = v64;
        v25 = (v64 >> 20) + v128;
        LODWORD(v64) = v25 ^ __ROR4__(v129, 16);
        HIDWORD(v64) = v64;
        v35 = v64 >> 24;
        v33 = vextq_s8(v110, v110, 4uLL);
        v15 = v35 + v130;
        LODWORD(v64) = (v35 + v130) ^ __ROR4__(v131, 20);
        HIDWORD(v64) = v64;
        v10 = v64 >> 25;
        v132 = __CFADD__(v21++, 1);
      }

      while (!v132);
      *a2 = veorq_s8(*a3, vaddq_s32(v26, xmmword_191FF94A0));
      a2[1] = veorq_s8(a3[1], vaddq_s32(v27, v5));
      a2[2] = veorq_s8(a3[2], vaddq_s32(v28, v4));
      a2[3] = veorq_s8(a3[3], vaddq_s32(v29, v6));
      a2[4] = veorq_s8(a3[4], vaddq_s32(v30, xmmword_191FF94A0));
      a2[5] = veorq_s8(a3[5], vaddq_s32(v31, v5));
      a2[6] = veorq_s8(a3[6], vaddq_s32(v32, v4));
      a2[7] = veorq_s8(a3[7], vaddq_s32(v33, v9));
      a2[8].i32[0] = a3[8].i32[0] ^ (v22 + 1634760805);
      a2[8].i32[1] = a3[8].i32[1] ^ (v23 + 857760878);
      a2[8].i32[2] = a3[8].i32[2] ^ (v24 + 2036477234);
      a2[8].i32[3] = a3[8].i32[3] ^ (v25 + 1797285236);
      a2[9].i32[0] = (result[1].i32[0] + v10) ^ a3[9].i32[0];
      a2[9].i32[1] = (result[1].i32[1] + v11) ^ a3[9].i32[1];
      a2[9].i32[2] = (result[1].i32[2] + v13) ^ a3[9].i32[2];
      a2[9].i32[3] = (result[1].i32[3] + v12) ^ a3[9].i32[3];
      a2[10].i32[0] = (result[2].i32[0] + v14) ^ a3[10].i32[0];
      a2[10].i32[1] = (result[2].i32[1] + v15) ^ a3[10].i32[1];
      a2[10].i32[2] = (result[2].i32[2] + v16) ^ a3[10].i32[2];
      a2[10].i32[3] = (result[2].i32[3] + v17) ^ a3[10].i32[3];
      a2[11].i32[0] = (v20 + v18 + result[3].i32[0]) ^ a3[11].i32[0];
      a2[11].i32[1] = (result[3].i32[1] + v19) ^ a3[11].i32[1];
      a2[11].i32[2] = (result[3].i32[2] + v35) ^ a3[11].i32[2];
      a2[11].i32[3] = (result[3].i32[3] + v34) ^ a3[11].i32[3];
      v6 = vaddq_s32(v6, xmmword_191FF94B0);
      a3 += 12;
      a2 += 12;
      ++v8;
    }

    while (v8 != v7);
  }

  v133 = a4 - 192 * v7;
  if (v133 >= 0x40)
  {
    v135 = v133 >> 6;
    v134 = "i";
    do
    {
      v136 = -10;
      v137 = xmmword_191FF94A0;
      v138 = v5;
      v139 = v4;
      v140 = v6;
      do
      {
        v141 = vaddq_s32(v137, v138);
        v142 = vrev32q_s16(veorq_s8(v141, v140));
        v143 = vaddq_s32(v139, v142);
        v144 = veorq_s8(v143, v138);
        v145 = vsraq_n_u32(vshlq_n_s32(v144, 0xCuLL), v144, 0x14uLL);
        v146 = vaddq_s32(v145, v141);
        v147 = veorq_s8(v146, v142);
        v148 = vsraq_n_u32(vshlq_n_s32(v147, 8uLL), v147, 0x18uLL);
        v149 = vaddq_s32(v148, v143);
        v150 = veorq_s8(v149, v145);
        v151 = vsraq_n_u32(vshlq_n_s32(v150, 7uLL), v150, 0x19uLL);
        v152 = vextq_s8(v151, v151, 4uLL);
        v153 = vaddq_s32(v152, v146);
        v154 = vrev32q_s16(veorq_s8(v153, vextq_s8(v148, v148, 0xCuLL)));
        v155 = vaddq_s32(vextq_s8(v149, v149, 8uLL), v154);
        v156 = veorq_s8(v155, v152);
        v157 = vsraq_n_u32(vshlq_n_s32(v156, 0xCuLL), v156, 0x14uLL);
        v137 = vaddq_s32(v157, v153);
        v158 = veorq_s8(v137, v154);
        v159 = vsraq_n_u32(vshlq_n_s32(v158, 8uLL), v158, 0x18uLL);
        v160 = vaddq_s32(v159, v155);
        v161 = veorq_s8(v160, v157);
        v162 = vsraq_n_u32(vshlq_n_s32(v161, 7uLL), v161, 0x19uLL);
        v138 = vextq_s8(v162, v162, 0xCuLL);
        v139 = vextq_s8(v160, v160, 8uLL);
        v140 = vextq_s8(v159, v159, 4uLL);
        v132 = __CFADD__(v136++, 1);
      }

      while (!v132);
      *a2 = veorq_s8(*a3, vaddq_s32(v137, xmmword_191FF94A0));
      a2[1] = veorq_s8(a3[1], vaddq_s32(v138, v5));
      a2[2] = veorq_s8(a3[2], vaddq_s32(v139, v4));
      a2[3] = veorq_s8(a3[3], vaddq_s32(v140, v6));
      v6 = vaddq_s32(v6, xmmword_191FF9490);
      a3 += 4;
      a2 += 4;
      --v135;
    }

    while (v135);
  }

  else
  {
    v134 = ("oui" + 2);
  }

  v163 = a4 & 0x3F;
  if ((a4 & 0x3F) != 0)
  {
    v164 = v134[74];
    v165 = -10;
    v166 = v5;
    v167 = v4;
    v168 = v6;
    do
    {
      v169 = vaddq_s32(v164, v166);
      v170 = vrev32q_s16(veorq_s8(v169, v168));
      v171 = vaddq_s32(v167, v170);
      v172 = veorq_s8(v171, v166);
      v173 = vsraq_n_u32(vshlq_n_s32(v172, 0xCuLL), v172, 0x14uLL);
      v174 = vaddq_s32(v173, v169);
      v175 = veorq_s8(v174, v170);
      v176 = vsraq_n_u32(vshlq_n_s32(v175, 8uLL), v175, 0x18uLL);
      v177 = vaddq_s32(v176, v171);
      v178 = veorq_s8(v177, v173);
      v179 = vsraq_n_u32(vshlq_n_s32(v178, 7uLL), v178, 0x19uLL);
      v180 = vextq_s8(v179, v179, 4uLL);
      v181 = vaddq_s32(v180, v174);
      v182 = vrev32q_s16(veorq_s8(v181, vextq_s8(v176, v176, 0xCuLL)));
      v183 = vaddq_s32(vextq_s8(v177, v177, 8uLL), v182);
      v184 = veorq_s8(v183, v180);
      v185 = vsraq_n_u32(vshlq_n_s32(v184, 0xCuLL), v184, 0x14uLL);
      v164 = vaddq_s32(v185, v181);
      v186 = veorq_s8(v164, v182);
      v187 = vsraq_n_u32(vshlq_n_s32(v186, 8uLL), v186, 0x18uLL);
      v188 = vaddq_s32(v187, v183);
      v189 = veorq_s8(v188, v185);
      v190 = vsraq_n_u32(vshlq_n_s32(v189, 7uLL), v189, 0x19uLL);
      v166 = vextq_s8(v190, v190, 0xCuLL);
      v167 = vextq_s8(v188, v188, 8uLL);
      v168 = vextq_s8(v187, v187, 4uLL);
      v132 = __CFADD__(v165++, 1);
    }

    while (!v132);
    if (v163 < 0x10)
    {
      v200[0] = vaddq_s32(v164, v134[74]);
    }

    else
    {
      *a2 = veorq_s8(*a3, vaddq_s32(v164, v134[74]));
      if (v163 < 0x20)
      {
        v200[1] = vaddq_s32(v166, v5);
      }

      else
      {
        a2[1] = veorq_s8(a3[1], vaddq_s32(v166, v5));
        if (v163 < 0x30)
        {
          v200[2] = vaddq_s32(v167, v4);
        }

        else
        {
          a2[2] = veorq_s8(a3[2], vaddq_s32(v167, v4));
          v200[3] = vaddq_s32(v168, v6);
        }
      }
    }

    v191 = a4 & 0x30;
    v192 = v163 - v191;
    if (v163 > v191)
    {
      v193 = &a2->i8[v191];
      v194 = v200 + v191;
      v195 = &a3->i8[v191];
      do
      {
        v197 = *v195++;
        v196 = v197;
        v198 = *v194++;
        *v193++ = v198 ^ v196;
        --v192;
      }

      while (v192);
    }
  }

  result[3].i64[0] = v6.i64[0];
  return result;
}

unsigned int *_poly1305_update(unsigned int *result, unsigned int *a2, unint64_t a3)
{
  v4 = result;
  v42 = *MEMORY[0x1E69E9840];
  if (a3 < 0x10)
  {
    goto LABEL_5;
  }

  v5 = result[9];
  v6 = result[10];
  v7 = result[11];
LABEL_3:
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 4) | (*(a2 + 10) << 16);
  v11 = v10 | (*(a2 + 11) << 24);
  v12 = a2[3];
  a2 += 4;
  a3 -= 16;
  v13 = v5 + (v8 & 0x3FFFFFF);
  v14 = v6 + (((v8 | (v9 << 32)) >> 26) & 0x3FFFFFF);
  v4[9] = v13;
  v4[10] = v14;
  v15 = v7 + (((v9 | (v10 << 32)) >> 20) & 0x3FFFFFF);
  v16 = v4[13];
  v17 = (((v11 | (v12 << 32)) >> 14) & 0x3FFFFFF) + v4[12];
  v4[11] = v15;
  v4[12] = v17;
  v18 = v16 + (v12 >> 8) + 0x1000000;
  for (v4[13] = v18; ; v18 = v4[13] + (v41 >> 8))
  {
    v19 = v4[1];
    v21 = v4[7];
    v20 = v4[8];
    v22 = v4[6];
    v24 = v4[3];
    v23 = v4[4];
    v25 = *v4 * v13 + v20 * v14 + v21 * v15 + v22 * v17 + v4[5] * v18;
    v26 = v4[2];
    v27 = *v4 * v18;
    v28 = v25 & 0x3FFFFFF;
    v29 = *v4 * v14 + v20 * v15 + v21 * v17 + v22 * v18 + v19 * v13 + (v25 >> 26);
    v6 = v29 & 0x3FFFFFF;
    result = (*v4 * v15 + v20 * v17);
    v30 = result + v21 * v18 + v19 * v14 + v26 * v13 + (v29 >> 26);
    v7 = v30 & 0x3FFFFFF;
    v31 = *v4 * v17 + v20 * v18 + v19 * v15 + v26 * v14 + v24 * v13 + (v30 >> 26);
    v4[11] = v30 & 0x3FFFFFF;
    v4[12] = v31 & 0x3FFFFFF;
    v32 = v27 + v19 * v17 + v26 * v15 + v24 * v14 + v23 * v13 + (v31 >> 26);
    v4[13] = v32 & 0x3FFFFFF;
    v5 = 5 * (v32 >> 26) + v28;
    v4[9] = v5;
    v4[10] = v6;
    if (a3 > 0xF)
    {
      goto LABEL_3;
    }

LABEL_5:
    if (!a3)
    {
      break;
    }

    for (i = 0; i != a3; ++i)
    {
      v34 = i;
      *(&v36 + i) = *(a2 + i);
    }

    *(&v36 + a3) = 1;
    if (v34 <= 0xD)
    {
      bzero(&v36 + v34 + 2, a3 ^ 0xF);
    }

    a3 = 0;
    v35 = v38 | (v39 << 16);
    v13 = v4[9] + (v36 & 0x3FFFFFF);
    v14 = v4[10] + (((v36 | (v37 << 32)) >> 26) & 0x3FFFFFF);
    v15 = v4[11] + (((v37 | (v35 << 32)) >> 20) & 0x3FFFFFF);
    v17 = (((v35 | (v40 << 24) | (v41 << 32)) >> 14) & 0x3FFFFFF) + v4[12];
  }

  return result;
}

int64_t chacha20_poly1305_decrypt(uint64_t a1, int8x16_t *a2, unint64_t a3, int8x16_t *a4)
{
  if (!*(a1 + 248))
  {
    if ((*(a1 + 232) & 0xFLL) != 0)
    {
      poly1305_update((a1 + 136), kZero64, 16 - (*(a1 + 232) & 0xFLL));
    }

    *(a1 + 248) = 1;
  }

  poly1305_update((a1 + 136), a2, a3);
  result = chacha20_update(a1, a2, a3, a4);
  *(a1 + 240) += result;
  return result;
}

uint64_t chacha20_poly1305_verify(unsigned int *__s, int8x16_t *a2, int8x16_t *a3, int *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!*(__s + 248) && (*(__s + 29) & 0xFLL) != 0)
  {
    poly1305_update(__s + 34, kZero64, 16 - (*(__s + 29) & 0xFLL));
  }

  v8 = chacha20_final(__s, a2);
  v9 = v8;
  v10 = *(__s + 30);
  if (v8)
  {
    v10 += v8;
    *(__s + 30) = v10;
  }

  if ((v10 & 0xF) != 0)
  {
    poly1305_update(__s + 34, kZero64, 16 - (v10 & 0xF));
    v10 = *(__s + 30);
  }

  v11 = *(__s + 29);
  v15.i64[0] = v11;
  v15.i64[1] = v10;
  poly1305_update(__s + 34, &v15, 0x10uLL);
  poly1305_final((__s + 34), &v15);
  v12 = veorq_s8(*a3, v15);
  if (vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)))
  {
    v13 = -6754;
  }

  else
  {
    v13 = 0;
  }

  *a4 = v13;
  return v9;
}

uint64_t _NTPClockServerProcessPacket(uint64_t a1, int a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v4 = *(a1 + 96);
  v39 = &v44;
  *&v40.sa_len = 0;
  *&v40.sa_data[6] = 0;
  v41 = 0;
  v42 = 0;
  *(&v45.msg_namelen + 1) = 0;
  v46 = v43;
  v47 = 48;
  v45.msg_name = &v40;
  v45.msg_namelen = 28;
  v45.msg_iov = &v46;
  *(&v45.msg_iovlen + 1) = 0;
  v45.msg_iovlen = 1;
  v38 = &v44 + 4;
  v5 = &v43[1] + 3;
  v45.msg_control = &v48;
  v6 = &v44 + 12;
  v7 = &v43[1] + 8;
  v8 = &v44 + 8;
  v9 = v43 + 4;
  *&v45.msg_controllen = 256;
  do
  {
    v10 = recvmsg(a2, &v45, 0);
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    if (!*__error())
    {
      goto LABEL_17;
    }

    v15 = *__error();
  }

  while (v15 == 4);
  if (v15)
  {
LABEL_17:
    v19 = 0;
LABEL_49:
    result = *(a1 + 56);
    if (*result > 50)
    {
      return result;
    }

    if (*result == -1)
    {
      result = _LogCategory_Initialize(result, 0x32u);
      if (!result)
      {
        return result;
      }

      result = *(a1 + 56);
    }

    v29 = " RTCP";
    if (!v19)
    {
      v29 = "";
    }

    return LogPrintF(result, "void _NTPClockServerProcessPacket(NTPClockRef, SocketRef)", 0x32u, "### NTP server send%s to %##a failed: %#m\n", v11, v12, v13, v14, v29);
  }

LABEL_6:
  msg_namelen = v45.msg_namelen;
  PacketUpTicks = SocketGetPacketUpTicks(v45.msg_control, v45.msg_controllen);
  if (v45.msg_controllen >= 0xC)
  {
    msg_control = v45.msg_control;
    if (v45.msg_control)
    {
      do
      {
        v18 = msg_control[1];
        if (v18 == 41)
        {
          if (msg_control[2] == 46)
          {
            v30 = *(msg_control + 3);
            v34 = msg_control[5];
            v37 = 30;
            v32 = *(msg_control + 3);
            goto LABEL_20;
          }
        }

        else if (!v18 && msg_control[2] == 26)
        {
          v32 = 0;
          v30 = *(msg_control + 3);
          v37 = 2;
          LODWORD(v34) = msg_control[5];
          HIDWORD(v34) = 1;
          goto LABEL_20;
        }

        msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
      }

      while ((msg_control + 3) <= v45.msg_control + v45.msg_controllen);
    }
  }

  if (gLogCategory_NTPClockCore <= 90 && (gLogCategory_NTPClockCore != -1 || _LogCategory_Initialize(&gLogCategory_NTPClockCore, 0x5Au)))
  {
    LogPrintF(&gLogCategory_NTPClockCore, "OSStatus SocketGetPacketReceiveInfo(struct msghdr *, CUIPPacketInfo *)", 0x5Au, "### Receive address not found. Did you enable it with setsockopt?", v11, v12, v13, v14, v31);
  }

  v34 = 0;
  v37 = 0;
  v32 = 0;
  v30 = 0;
LABEL_20:
  v35 = v30;
  v20 = *(a1 + 104);
  if (v20)
  {
    PacketUpTicks = v20(PacketUpTicks, *(a1 + 112));
  }

  if (v10 == 48)
  {
    v33 = 0;
    LOBYTE(v43[0]) = v43[0] & 0x38 | 4;
    BYTE1(v43[0]) = 1;
    BYTE3(v43[0]) = *(a1 + 76);
    *(v43 + 4) = xmmword_191FF95D0;
    v9 = &v43[1] + 4;
    goto LABEL_28;
  }

  if (v10 != 32)
  {
    v19 = 0;
    goto LABEL_49;
  }

  if ((v43[0] & 0xC0) != 0x80 || BYTE1(v43[0]) != 210)
  {
    v19 = 1;
    goto LABEL_49;
  }

  LODWORD(v43[0]) = 117494656;
  v33 = 1;
  v8 = &v43[1] + 8;
  v6 = &v43[1] + 12;
  v7 = v43 + 8;
  v5 = (v43 | 0xC);
  v38 = &v43[1] + 4;
  v39 = &v43[1];
LABEL_28:
  *v9 = 0;
  *v7 = *v8;
  *v5 = *v6;
  *v39 = bswap32(*(a1 + 16) + PacketUpTicks / v4);
  *v38 = bswap32(((PacketUpTicks % v4) << 32) / v4);
  v21 = *(a1 + 104);
  v22 = mach_absolute_time();
  if (v21)
  {
    v22 = v21(v22, *(a1 + 112));
  }

  *v8 = bswap32(*(a1 + 16) + v22 / v4);
  *v6 = bswap32(((v22 % v4) << 32) / v4);
  if (v37 == 30 || v37 == 2)
  {
    v46 = v43;
    v47 = v10;
    v45.msg_name = &v40;
    *(&v45.msg_namelen + 1) = 0;
    v45.msg_namelen = msg_namelen;
    v45.msg_iov = &v46;
    *(&v45.msg_iovlen + 1) = 0;
    v45.msg_iovlen = 1;
    v45.msg_control = &v48;
    v45.msg_flags = 0;
    v19 = v33;
    if (HIDWORD(v34))
    {
      v23 = HIDWORD(v35);
      if (HIDWORD(v35) || (v23 = v34) != 0)
      {
        v24 = 0;
      }

      else
      {
        v24 = v35;
      }

      v48 = 24;
      v49 = 26;
      v50 = __PAIR64__(v23, v24);
      v51 = v34;
      v25 = 24;
    }

    else
    {
      v49 = 46;
      v48 = 0x2900000020;
      v50 = v35;
      v51 = v34;
      v52 = v32;
      v25 = 32;
    }

    v45.msg_controllen = v25;
    v26 = sendmsg(a2, &v45, 0);
  }

  else
  {
    v26 = sendto(a2, v43, v10, 0, &v40, msg_namelen);
    v19 = v33;
  }

  if (v26 != v10 && (!*__error() || *__error()))
  {
    goto LABEL_49;
  }

  result = *(a1 + 56);
  if (*result > 10)
  {
    return result;
  }

  if (*result == -1)
  {
    result = _LogCategory_Initialize(result, 0xAu);
    if (!result)
    {
      return result;
    }

    result = *(a1 + 56);
  }

  v28 = "RTCP ";
  if (v10 == 48)
  {
    v28 = "";
  }

  return LogPrintF(result, "void _NTPClockServerProcessPacket(NTPClockRef, SocketRef)", 0xAu, "NTP server sent %sresponse to %##a, RAF %d", v11, v12, v13, v14, v28);
}

uint64_t _NTPClockServerThread(uint64_t a1)
{
  v2 = *(a1 + 224);
  v3 = *(a1 + 232);
  v4 = *(a1 + 236);
  if (*(a1 + 80))
  {
    v5 = *(a1 + 80);
  }

  else
  {
    v5 = "NTPClockServer";
  }

  pthread_setname_np(v5);
  if (*(a1 + 92))
  {
    SetCurrentThreadPriority(*(a1 + 88));
  }

  v16 = a1;
  memset(&v18, 0, sizeof(v18));
  if (v2 <= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v2;
  }

  v7 = v2 >> 5;
  v8 = 1 << v2;
  if (v6 <= v4)
  {
    v6 = v4;
  }

  v17 = 1 << v3;
  v9 = v3 >> 5;
  if (v6 < 0)
  {
    v10 = -1;
  }

  else
  {
    v10 = v6;
  }

  v11 = 1 << v4;
  v12 = v4 >> 5;
  do
  {
    while (1)
    {
      if (__darwin_check_fd_set_overflow(v2, &v18, 0))
      {
        v18.fds_bits[v7] |= v8;
      }

      if ((v3 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(v3, &v18, 0))
      {
        v18.fds_bits[v9] |= v17;
      }

      if ((v4 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(v4, &v18, 0))
      {
        v18.fds_bits[v12] |= v11;
      }

      v13 = select(v10 + 1, &v18, 0, 0, 0);
      if (v13 > 0)
      {
        break;
      }

      if (v13 && *__error())
      {
        v14 = *__error();
        if (!v14)
        {
          break;
        }

        if (v14 == 4)
        {
          continue;
        }
      }

      usleep(0x186A0u);
    }

    if ((v3 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(v3, &v18, 0) && (v18.fds_bits[v9] & v17) != 0)
    {
      _NTPClockServerProcessPacket(v16, v3);
    }

    if ((v4 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(v4, &v18, 0) && (v18.fds_bits[v12] & v11) != 0)
    {
      _NTPClockServerProcessPacket(v16, v4);
    }
  }

  while (!__darwin_check_fd_set_overflow(v2, &v18, 0) || (v18.fds_bits[v7] & v8) == 0);
  return 0;
}

uint64_t HTTPConnectionSendSimpleResponseEx2(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8)
{
  inited = HTTPConnectionInitResponseEx(a1, a2, a3, a4, a5, a6, a7, a8);
  if (inited || (inited = HTTPMessageSetBody(*(a1 + 304), a4, a5, a6), inited))
  {
    v17 = inited;
  }

  else
  {
    v17 = HTTPConnectionSendResponse(a1);
    if (!v17)
    {
      return v17;
    }
  }

  v18 = *(a1 + 128);
  if (*v18 <= 60)
  {
    if (*v18 == -1)
    {
      if (!_LogCategory_Initialize(v18, 0x3Cu))
      {
        return v17;
      }

      v18 = *(a1 + 128);
    }

    LogPrintF(v18, "OSStatus HTTPConnectionSendSimpleResponseEx2(HTTPConnectionRef, const char *, HTTPStatus, OSStatus, const char *, const void *, size_t)", 0x3Cu, "### Response failed: %#m\n", v13, v14, v15, v16, v17);
  }

  return v17;
}

uint64_t HTTPMessageCreate(uint64_t *a1)
{
  if (gHTTPMessageInitOnce != -1)
  {
    dispatch_once_f(&gHTTPMessageInitOnce, 0, _HTTPMessageGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v3 = Instance;
  bzero((Instance + 16), 0x2628uLL);
  *(v3 + 9728) = -1;
  *(v3 + 9752) = -1;
  *(v3 + 8536) = 16000000;
  HTTPMessageReset(v3);
  result = 0;
  *a1 = v3;
  return result;
}

int *HTTPMessageReset(uint64_t a1)
{
  v2 = a1 + 0x2000;
  *(a1 + 8216) = 0;
  *(a1 + 8504) = 0;
  *(a1 + 8508) = 0;
  *(a1 + 8520) = a1 + 8552;
  *(a1 + 8528) = 0;
  *(a1 + 8544) = 0;
  v3 = *(a1 + 9552);
  if (v3)
  {
    free(v3);
    *(a1 + 9552) = 0;
  }

  *(a1 + 9632) = -1;
  if (*(v2 + 1540))
  {
    v4 = *(a1 + 9728);
    if ((v4 & 0x80000000) == 0 && close(v4) && *__error())
    {
      __error();
    }
  }

  *(a1 + 9728) = -1;
  *(v2 + 1540) = 0;
  result = *(a1 + 9752);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    if (result)
    {
      result = __error();
      if (*result)
      {
        result = __error();
      }
    }

    *(a1 + 9752) = -1;
  }

  return result;
}

void _HTTPMessageFinalize(void *a1)
{
  HTTPMessageReset(a1);
  v2 = a1[1195];
  if (v2)
  {
    free(v2);
    a1[1195] = 0;
  }

  v3 = a1[1196];
  if (v3)
  {
    free(v3);
    a1[1196] = 0;
  }

  a1[1197] = 0;
  v4 = a1[1215];
  if (v4)
  {
    _Block_release(v4);
    a1[1215] = 0;
  }

  v5 = a1[1218];
  if (v5)
  {
    free(v5);
    a1[1218] = 0;
  }

  v6 = a1[1222];
  if (v6)
  {
    free(v6);
    a1[1222] = 0;
  }
}

char *HTTPMessageCopy(uint64_t a1, _DWORD *a2)
{
  cf = 0;
  v4 = HTTPMessageCreate(&cf);
  v5 = cf;
  if (!v4)
  {
    memcpy(cf + 24, (a1 + 24), *(a1 + 8216));
    *(v5 + 1027) = *(a1 + 8216);
    v7 = HTTPHeader_Parse(v5 + 24);
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v6 = HTTPMessageSetBodyLength(v5, *(a1 + 8528));
      if (!v6)
      {
        memcpy(*(v5 + 1065), *(a1 + 8520), *(a1 + 8528));
        if (!a2)
        {
          return v5;
        }

        goto LABEL_9;
      }
    }

    goto LABEL_7;
  }

  v6 = v4;
  if (cf)
  {
LABEL_7:
    CFRelease(v5);
    v5 = 0;
  }

  if (a2)
  {
LABEL_9:
    *a2 = v6;
  }

  return v5;
}

uint64_t URLParseComponents(char *__s, char *a2, void *a3, char **a4)
{
  v6 = __s;
  if (!a2)
  {
    a2 = &__s[strlen(__s)];
  }

  if (a2 <= v6)
  {
    v7 = 0;
    v12 = 0;
    v11 = v6;
  }

  else
  {
    v7 = v6;
    while (1)
    {
      v8 = *v7;
      if (v8 <= 0x3F && ((1 << v8) & 0x8400800800000000) != 0)
      {
        break;
      }

      if (++v7 == a2)
      {
        v7 = a2;
        break;
      }
    }

    v10 = v8 == 58;
    if (v8 == 58)
    {
      v11 = v7 + 1;
    }

    else
    {
      v11 = v6;
    }

    if (v8 == 58)
    {
      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v6 = v7 + 1;
    }

    if (!v10)
    {
      v7 = 0;
    }
  }

  if (a2 - v11 >= 2 && *v6 == 47 && v6[1] == 47)
  {
    v13 = v6 + 2;
    if (v6 + 2 >= a2)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v11 = v6 + 2;
    }

    else
    {
      v14 = 2;
      while (1)
      {
        v15 = v6[v14];
        v16 = v15 > 0x3F;
        v17 = (1 << v15) & 0x8000800800000000;
        if (!v16 && v17 != 0)
        {
          break;
        }

        if (a2 - v11 == ++v14)
        {
          v14 = a2 - v11;
          break;
        }
      }

      v11 = &v6[v14];
      if (v14 < 3)
      {
LABEL_41:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
      }

      else
      {
        v19 = 2;
        while (v6[v19] != 64)
        {
          if (v14 == ++v19)
          {
            goto LABEL_41;
          }
        }

        v47 = &v6[v19];
        if (v19 < 3)
        {
          v22 = 0;
          v23 = 0;
          v21 = v6 + 2;
        }

        else
        {
          v21 = v6 + 2;
          v22 = v6 + 2;
          while (1)
          {
            v48 = *v22++;
            if (v48 == 58)
            {
              break;
            }

            v21 = v22;
            if (v22 >= v47)
            {
              v23 = 0;
              v21 = v22;
              v22 = 0;
              goto LABEL_95;
            }
          }

          v23 = v47;
        }

LABEL_95:
        v20 = v6 + 2;
        v13 = v47 + 1;
      }
    }

    v6 = v11;
    v24 = v11;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v13 = 0;
    v24 = 0;
  }

  if (v6 < a2)
  {
    v25 = (a2 - v11);
    v26 = v6;
    while (1)
    {
      v27 = *v26;
      if (v27 == 35 || v27 == 63)
      {
        break;
      }

      ++v26;
      if (!--v25)
      {
        v26 = &v6[a2 - v11];
        break;
      }
    }

    if (v27 == 63)
    {
      v28 = (v26 + 1);
      if (v26 + 1 >= a2)
      {
        v27 = 63;
        v30 = v26 + 1;
      }

      else
      {
        v29 = &a2[~v26];
        v30 = v26 + 1;
        while (1)
        {
          v27 = *v30;
          if (v27 == 35)
          {
            break;
          }

          ++v30;
          if (!--v29)
          {
            v30 = a2;
            break;
          }
        }
      }

      v31 = v30;
    }

    else
    {
      v28 = 0;
      v31 = 0;
      v30 = v26;
    }

    v43 = v27 == 35;
    if (v27 == 35)
    {
      v40 = a2;
    }

    else
    {
      v40 = v30;
    }

    if (v43)
    {
      v32 = (v30 + 1);
    }

    else
    {
      v32 = 0;
    }

    if (v43)
    {
      v33 = a2;
    }

    else
    {
      v33 = 0;
    }

    if (v13)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = v26;
      goto LABEL_82;
    }

    if (*v6 == 58)
    {
      v34 = 1;
      v41 = v6;
    }

    else
    {
      v44 = &a2[~v11];
      v41 = v6;
      while (v44)
      {
        v45 = *++v41;
        --v44;
        if (v45 == 58)
        {
          goto LABEL_79;
        }
      }

      v41 = &v6[a2 - v11];
LABEL_79:
      v34 = v41 < a2;
    }

    v39 = v26;
    v42 = v41;
LABEL_81:
    v37 = &v42[v34];
    v35 = v6;
    v36 = v41;
    v38 = a2;
    goto LABEL_82;
  }

  v28 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v26 = v6;
  v39 = v11;
  v40 = v6;
  v41 = v11;
  v42 = v6;
  if (!v13)
  {
    goto LABEL_81;
  }

LABEL_82:
  *a3 = v12;
  a3[1] = v7 - v12;
  a3[2] = v20;
  a3[3] = v21 - v20;
  a3[4] = v22;
  a3[5] = v23 - v22;
  a3[6] = v13;
  a3[7] = v24 - v13;
  a3[8] = v6;
  a3[9] = v39 - v11;
  a3[10] = v28;
  a3[11] = v31 - v28;
  a3[12] = v32;
  a3[13] = v33 - v32;
  if (v6 < v26 && *v6 == 47)
  {
    ++v6;
  }

  a3[14] = v6;
  a3[15] = v26;
  a3[16] = v35;
  a3[17] = v36 - v35;
  a3[18] = v37;
  a3[19] = v38 - v37;
  if (a4)
  {
    *a4 = v40;
  }

  return 0;
}

uint64_t HTTPHeader_Parse(char *__s)
{
  v1 = *(__s + 1024);
  if (v1 >> 13)
  {
    return 4294960591;
  }

  *(__s + 1027) = "";
  v3 = __s + 0x2000;
  *(__s + 1028) = 0;
  *(__s + 2058) = 0;
  *(__s + 1030) = "";
  v4 = __s + 8248;
  *(__s + 1051) = 0;
  *(__s + 8248) = 0u;
  *(__s + 8264) = 0u;
  *(__s + 8280) = 0u;
  *(__s + 8296) = 0u;
  *(__s + 8312) = 0u;
  *(__s + 8328) = 0u;
  *(__s + 8344) = 0u;
  *(__s + 8360) = 0u;
  *(__s + 8376) = 0u;
  *(__s + 8392) = 0u;
  *(__s + 1052) = "";
  *(__s + 1053) = 0;
  *(__s + 2108) = -1;
  *(__s + 1055) = "";
  *(__s + 1056) = 0;
  __s[8456] = 0;
  *(__s + 1058) = 0;
  __s[8472] = 0;
  if (!v1)
  {
    return 4294960554;
  }

  if (v1 == 4 && *__s == 36)
  {
    result = 0;
    v3[264] = __s[1];
    *(__s + 1058) = __rev16(*(__s + 1));
    *(__s + 1027) = __s;
    *(__s + 1028) = 1;
    return result;
  }

  v6 = &__s[v1];
  v37 = 0;
  v38 = 0;
  v7 = v1 - 1;
  v8 = __s;
  while (1)
  {
    v9 = *v8;
    if (v9 == 32)
    {
      break;
    }

    if (v9 == 47)
    {
      *(__s + 1052) = __s;
      v10 = v8 + 2;
      do
      {
        if (v10 - 1 >= v6)
        {
          v20 = v10 - 1 - __s;
          goto LABEL_48;
        }

        v12 = v10 - 1;
        v11 = *(v10++ - 1);
      }

      while (v11 != 32);
      *(__s + 1053) = v12 - __s;
      v13 = v12 + 1;
      if (v12 + 1 >= v6)
      {
        *(__s + 2108) = 0;
      }

      else
      {
        v14 = *v13;
        if ((*v13 - 48) <= 9u)
        {
          v15 = 0;
          while (1)
          {
            v15 = 10 * v15 + v14 - 48;
            if (v10 >= v6)
            {
              break;
            }

            v16 = *v10++;
            v14 = v16;
            if ((v16 - 48) > 9u)
            {
              v12 = v10 - 2;
              v13 = v10 - 1;
              goto LABEL_50;
            }
          }

          *(__s + 2108) = v15;
          *(__s + 1055) = v6;
          v26 = &__s[v1];
          goto LABEL_69;
        }

        v15 = 0;
LABEL_50:
        *(__s + 2108) = v15;
        if (v14 == 32)
        {
          v13 = v12 + 2;
        }
      }

      *(__s + 1055) = v13;
      if (v13 >= v6)
      {
        v6 = v13;
        v26 = v13;
LABEL_69:
        *(__s + 1056) = v26 - v6;
        return 4294960554;
      }

      v26 = &__s[v1];
      v27 = (&__s[v1] - v13);
      v23 = v13;
      while (1)
      {
        v28 = *v23;
        if (v28 == 10 || v28 == 13)
        {
          break;
        }

        ++v23;
        if (!--v27)
        {
          v6 = v13;
          goto LABEL_69;
        }
      }

      *(__s + 1056) = v23 - v13;
      goto LABEL_63;
    }

    ++v8;
    --v7;
    if (v8 >= v6)
    {
      return 4294960554;
    }
  }

  *(__s + 1027) = __s;
  v17 = v8 - __s;
  v38 = v8 - __s;
  *(__s + 1028) = v8 - __s;
  v18 = v8 + 1;
  if (strnicmpx(__s, v8 - __s, "GET"))
  {
    if (strnicmpx(__s, v17, "POST"))
    {
      if (strnicmpx(__s, v17, "PUT"))
      {
        if (strnicmpx(__s, v17, "DELETE"))
        {
          goto LABEL_31;
        }

        v19 = 4;
      }

      else
      {
        v19 = 3;
      }
    }

    else
    {
      v19 = 2;
    }
  }

  else
  {
    v19 = 1;
  }

  *(__s + 2058) = v19;
LABEL_31:
  *(__s + 1030) = v18;
  if (v18 >= v6)
  {
    v6 = v18;
LABEL_37:
    *v4 = v6 - v18;
    return 4294960554;
  }

  v21 = v18;
  while (*v21 != 32)
  {
    ++v21;
    if (!--v7)
    {
      goto LABEL_37;
    }
  }

  *(__s + 1031) = v21 - v18;
  v22 = v21 + 1;
  URLParseComponents(v18, v21, __s + 1032, 0);
  *(__s + 1052) = v22;
  if (v22 >= v6)
  {
    v6 = v22;
LABEL_47:
    v20 = v6 - v22;
LABEL_48:
    *(__s + 1053) = v20;
    return 4294960554;
  }

  v23 = v22;
  while (1)
  {
    v24 = *v23;
    if (v24 == 10 || v24 == 13)
    {
      break;
    }

    if (++v23 >= v6)
    {
      goto LABEL_47;
    }
  }

  *(__s + 1053) = v23 - v22;
LABEL_63:
  if (v23 + 1 >= v6)
  {
    return 4294960554;
  }

  if (HTTPGetHeaderField(__s, *(__s + 1024), "Connection", 0, 0, &v37, &v38, 0))
  {
    v30 = *(__s + 1052);
    v31 = *(__s + 1053);
    v32 = "HTTP/1.0";
  }

  else
  {
    v30 = v37;
    v31 = v38;
    v32 = "close";
  }

  v3[280] = strnicmpx(v30, v31, v32) != 0;
  HTTPScanFHeaderValue(__s, *(__s + 1024), "Content-Length", "%llu", v33, v34, v35, v36, __s + 8464);
  return 0;
}

uint64_t LogHTTP(uint64_t result, int *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v12 = result;
  }

  else
  {
    v12 = &gLogCategory_HTTPRequests;
  }

  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = &gLogCategory_HTTPResponses;
  }

  if (*v12 > 40 || *v12 == -1 && (result = _LogCategory_Initialize(v12, 0x28u), !result))
  {
    if (*v13 > 40)
    {
      return result;
    }

    if (*v13 == -1)
    {
      result = _LogCategory_Initialize(v13, 0x28u);
      if (!result)
      {
        return result;
      }
    }
  }

  if (a4 < 1)
  {
    v20 = 0;
    v15 = a3;
LABEL_28:
    v21 = v13;
  }

  else
  {
    v14 = &a3[a4];
    v15 = a3;
    do
    {
      v16 = *v15;
      if (v16 == 10 || v16 == 13)
      {
        break;
      }

      ++v15;
    }

    while (v15 < v14);
    v18 = a3;
    while (1)
    {
      v19 = *v18;
      if (v19 == 32 || v19 == 47)
      {
        break;
      }

      if (++v18 >= v14)
      {
        v20 = v19 == 32;
        goto LABEL_28;
      }
    }

    v20 = v19 == 32;
    if (v19 == 32)
    {
      v21 = v12;
    }

    else
    {
      v21 = v13;
    }
  }

  v22 = *v21;
  if (*v21 > 20)
  {
    goto LABEL_49;
  }

  if (v22 == -1)
  {
    result = _LogCategory_Initialize(v21, 0x14u);
    if (!result)
    {
      v22 = *v21;
LABEL_49:
      if (v22 <= 40)
      {
        if (v22 != -1 || (result = _LogCategory_Initialize(v21, 0x28u), result))
        {
          if (a3)
          {
            if (v20)
            {
              if (*v12 <= 50)
              {
                if (*v12 != -1)
                {
                  return LogPrintF(v12, "void LogHTTP(LogCategory *, LogCategory *, const void *, size_t, const void *, size_t)", 0x32u, "HTTP Request:  %.*s\n", a5, a6, a7, a8, v15 - a3);
                }

                result = _LogCategory_Initialize(v12, 0x32u);
                if (result)
                {
                  return LogPrintF(v12, "void LogHTTP(LogCategory *, LogCategory *, const void *, size_t, const void *, size_t)", 0x32u, "HTTP Request:  %.*s\n", a5, a6, a7, a8, v15 - a3);
                }
              }
            }

            else if (*v13 <= 50)
            {
              if (*v13 != -1)
              {
                return LogPrintF(v13, "void LogHTTP(LogCategory *, LogCategory *, const void *, size_t, const void *, size_t)", 0x32u, "HTTP Response: %.*s\n\n", a5, a6, a7, a8, v15 - a3);
              }

              result = _LogCategory_Initialize(v13, 0x32u);
              if (result)
              {
                return LogPrintF(v13, "void LogHTTP(LogCategory *, LogCategory *, const void *, size_t, const void *, size_t)", 0x32u, "HTTP Response: %.*s\n\n", a5, a6, a7, a8, v15 - a3);
              }
            }
          }
        }
      }

      return result;
    }
  }

  v23 = "-------------------- HTTP RESPONSE --------------------\n";
  if (v20)
  {
    v23 = "==================== HTTP REQUEST  ====================\n";
  }

  if (a3)
  {
    v24 = v23;
  }

  else
  {
    v24 = "";
  }

  if (a6 <= 0)
  {
LABEL_41:
    if (*v21 > 50)
    {
      return result;
    }

    if (*v21 == -1)
    {
      result = _LogCategory_Initialize(v21, 0x32u);
      if (!result)
      {
        return result;
      }
    }

    v28 = v24;
    v27 = "%s%{text}%{text}%s";
    return LogPrintF(v21, "void LogHTTP(LogCategory *, LogCategory *, const void *, size_t, const void *, size_t)", 0x32u, v27, a5, a6, a7, a8, v28);
  }

  v25 = a5;
  while (1)
  {
    v26 = *v25;
    if ((v26 - 9) >= 5 && (v26 - 32) >= 0x5F)
    {
      break;
    }

    if (++v25 >= a5 + a6)
    {
      goto LABEL_41;
    }
  }

  if (*v21 <= 50)
  {
    if (*v21 != -1 || (result = _LogCategory_Initialize(v21, 0x32u), result))
    {
      v28 = v24;
      v27 = "%s%{text}<< BINARY DATA >>\n%.1H\n";
      return LogPrintF(v21, "void LogHTTP(LogCategory *, LogCategory *, const void *, size_t, const void *, size_t)", 0x32u, v27, a5, a6, a7, a8, v28);
    }
  }

  return result;
}

uint64_t _HTTPConnectionHandleIOError(uint64_t a1, uint64_t a2, int a3)
{
  if (a2 > -6767)
  {
    if (a2 != -6766)
    {
      if (a2 != 35)
      {
        return a2;
      }

      v4 = a1;
      if (a3)
      {
LABEL_8:
        v6 = *(v4 + 208);
        v5 = (v4 + 208);
        if (v6)
        {
          v7 = 200;
LABEL_15:
          *v5 = 0;
          dispatch_resume(*(a1 + v7));
          return 35;
        }

        return 35;
      }

LABEL_13:
      v8 = *(v4 + 224);
      v5 = (v4 + 224);
      if (v8)
      {
        v7 = 216;
        goto LABEL_15;
      }

      return 35;
    }

    if (*(a1 + 208))
    {
      *(a1 + 208) = 0;
      dispatch_resume(*(a1 + 200));
    }

LABEL_12:
    v4 = a1;
    goto LABEL_13;
  }

  if (a2 == -6775)
  {
    goto LABEL_12;
  }

  if (a2 == -6774)
  {
    v4 = a1;
    goto LABEL_8;
  }

  return a2;
}

uint64_t chacha20_final(void *__s, int8x16_t *a2)
{
  v3 = *(__s + 16);
  if (v3)
  {
    _chacha20_xor(__s, a2, __s + 4, *(__s + 16));
  }

  memset_s(__s, 0x88uLL, 0, 0x88uLL);
  return v3;
}

uint64_t poly1305_final(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    _poly1305_update(a1, (a1 + 56), v4);
  }

  v5 = *(a1 + 36);
  v6 = v5 & 0x3FFFFFF;
  v7 = *(a1 + 40) + (v5 >> 26);
  v8 = v7 & 0x3FFFFFF;
  v9 = *(a1 + 44) + (v7 >> 26);
  v10 = v9 & 0x3FFFFFF;
  v11 = *(a1 + 48) + (v9 >> 26);
  v12 = v11 & 0x3FFFFFF;
  v13 = *(a1 + 52) + (v11 >> 26);
  v14 = 5 * (v13 >> 26) + v6;
  v15 = v8 + ((v14 + 5) >> 26);
  v16 = v10 + (v15 >> 26);
  v17 = v12 + (v16 >> 26);
  v18 = (v13 | 0xFC000000) + (v17 >> 26);
  result = (v18 >> 31) - 1;
  v20 = v14 & (v18 >> 31) | result & 0x3FFFFFF & (v14 + 5);
  v21 = v8 & (v18 >> 31) | result & 0x3FFFFFF & v15;
  *(a1 + 36) = v20;
  *(a1 + 40) = v21;
  v22 = v10 & (v18 >> 31) | result & 0x3FFFFFF & v16;
  v23 = v12 & (v18 >> 31) | result & 0x3FFFFFF & v17;
  *(a1 + 44) = v22;
  *(a1 + 48) = v23;
  v24 = result & v18 | v13 & (v18 >> 31) & 0x3FFFFFF;
  *(a1 + 52) = v24;
  v25 = v20 | (v21 << 26);
  v26 = *(a1 + 80);
  v27 = *(a1 + 84);
  v28 = (v21 >> 6) | (v22 << 20);
  v29 = ((v22 >> 12) | (v23 << 14)) + *(a1 + 88);
  v30 = ((v23 >> 18) | (v24 << 8)) + *(a1 + 92);
  *a2 = v25 + v26;
  v31 = v27 + __CFADD__(v25, v26) + v28;
  *(a2 + 4) = v31;
  *(a2 + 6) = BYTE2(v31);
  *(a2 + 7) = BYTE3(v31);
  v32 = v29 + HIDWORD(v31);
  *(a2 + 8) = v32;
  *(a2 + 10) = BYTE2(v32);
  *(a2 + 11) = BYTE3(v32);
  v33 = v30 + HIDWORD(v32);
  *(a2 + 12) = v33;
  *(a2 + 14) = BYTE2(v33);
  *(a2 + 15) = BYTE3(v33);
  return result;
}

uint64_t HTTPMessageSetBodyLength(void *a1, size_t size)
{
  v4 = a1[1194];
  if (v4)
  {
    free(v4);
    a1[1194] = 0;
  }

  if (size <= 0x3E8)
  {
    v5 = a1 + 1069;
LABEL_6:
    result = 0;
    a1[1065] = v5;
    a1[1066] = size;
    return result;
  }

  v5 = malloc_type_malloc(size, 0x100004077774924uLL);
  a1[1194] = v5;
  if (v5)
  {
    goto LABEL_6;
  }

  return 4294960568;
}

uint64_t HTTPScanFHeaderValue(char *a1, int64_t a2, char *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v11 = 0;
  v12 = 0;
  result = HTTPGetHeaderField(a1, a2, a3, 0, 0, &v12, &v11, 0);
  if (!result)
  {
    return VSNScanF(v12, v11, a4, &a9);
  }

  return result;
}

uint64_t VSNScanF(char *__s, size_t a2, unsigned __int8 *a3, int *a4)
{
  v5 = __s;
  v130 = *MEMORY[0x1E69E9840];
  v128 = a4;
  if (a2 == -1)
  {
    a2 = strlen(__s);
  }

  v123 = 0;
  v126 = &v5[a2];
  v6 = MEMORY[0x1E69E9830];
  v127 = 0.0;
  v122 = v5;
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_4:
        v7 = *a3;
        if (v7 < 0)
        {
          v8 = __maskrune(*a3, 0x4000uLL);
        }

        else
        {
          v8 = *(v6 + 4 * v7 + 60) & 0x4000;
        }

        if (v8)
        {
          do
          {
            while (1)
            {
              v10 = *++a3;
              v9 = v10;
              if (v10 < 0)
              {
                break;
              }

              if ((*(v6 + 4 * v9 + 60) & 0x4000) == 0)
              {
                goto LABEL_12;
              }
            }
          }

          while (__maskrune(v9, 0x4000uLL));
LABEL_12:
          if (v5 < v126)
          {
            v11 = v126 - v5;
            do
            {
              v12 = *v5;
              if (v12 < 0)
              {
                if (!__maskrune(*v5, 0x4000uLL))
                {
                  break;
                }
              }

              else if ((*(v6 + 4 * v12 + 60) & 0x4000) == 0)
              {
                break;
              }

              ++v5;
              --v11;
            }

            while (v11);
          }
        }

        v13 = v5;
        v14 = *a3;
        if (v14 == 37)
        {
          break;
        }

        if (*a3)
        {
          if (v5 < v126)
          {
            ++a3;
            v15 = *v5++;
            if (v14 == v15)
            {
              continue;
            }
          }
        }

        return v123;
      }

      v16 = 0;
      v17 = 0;
      v18 = 1;
      v19 = a3;
      while (1)
      {
        while (1)
        {
          do
          {
            v20 = v19;
            v21 = v17;
            v23 = *++v19;
            v22 = v23;
            v17 = 1;
          }

          while (v23 == 42);
          if (v22 != 38)
          {
            break;
          }

          v18 = 0;
          v17 = v21;
        }

        if (v22 != 35)
        {
          break;
        }

        ++v16;
        v17 = v21;
      }

      if ((v22 - 48) > 9)
      {
        if (v22 == 46)
        {
          v27 = v128;
          v128 += 2;
          v24 = *v27;
          if (*v27 < 0)
          {
            return v123;
          }

          v22 = v20[2];
          v19 = v20 + 2;
        }

        else
        {
          v24 = 0x7FFFFFFF;
        }
      }

      else
      {
        v24 = 0;
        do
        {
          v25 = v22 + 10 * v24;
          v26 = *++v19;
          v22 = v26;
          v24 = v25 - 48;
        }

        while ((v26 - 48) < 0xA);
        if (v24 < 0)
        {
          return v123;
        }
      }

      HIDWORD(v29) = v22 - 104;
      LODWORD(v29) = v22 - 104;
      v28 = v29 >> 1;
      if (v28 <= 1)
      {
        if (v28)
        {
          if (v28 != 1)
          {
            goto LABEL_49;
          }

LABEL_46:
          ++v19;
          goto LABEL_55;
        }

        v34 = *++v19;
        v32 = v34 == 104;
        v22 = 104;
        v33 = 72;
      }

      else
      {
        if (v28 != 2)
        {
          if (v28 != 6 && v28 != 9)
          {
LABEL_49:
            v125 = 0;
            if (!v22)
            {
              return v123;
            }

            goto LABEL_56;
          }

          goto LABEL_46;
        }

        v31 = *++v19;
        v32 = v31 == 108;
        v22 = 108;
        v33 = 76;
      }

      if (v32)
      {
        v22 = v33;
        ++v19;
      }

LABEL_55:
      v125 = v22;
      v22 = *v19;
      if (!*v19)
      {
        return v123;
      }

LABEL_56:
      v35 = 0;
      a3 = v19 + 1;
      if (v22 <= 104)
      {
        break;
      }

      if (v22 <= 111)
      {
        if (v22 == 105)
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v35 = 1;
          goto LABEL_144;
        }

        if (v22 != 110)
        {
          if (v22 != 111)
          {
            return v123;
          }

          v35 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 8;
          goto LABEL_144;
        }

        if (v125 || v24 != 0x7FFFFFFF || v21)
        {
          return v123;
        }

        v55 = v128;
        v128 += 2;
        v56 = *v55;
        if (v16)
        {
          if (!v56)
          {
            return v123;
          }

          *v56 = v13;
          v5 = v13;
        }

        else
        {
          if (!v56)
          {
            return v123;
          }

          *v56 = v13 - v122;
          v5 = v13;
        }
      }

      else
      {
        v37 = v125;
        if (v22 > 116)
        {
          if (v22 != 117)
          {
            if (v22 != 120)
            {
              return v123;
            }

            goto LABEL_130;
          }

LABEL_125:
          v47 = 0;
          v48 = 0;
          v49 = 10;
          goto LABEL_144;
        }

        if (v22 == 112)
        {
          if (!v125)
          {
            v37 = 112;
          }

          v125 = v37;
LABEL_130:
          v35 = 0;
          v48 = 0;
          v47 = 1;
          v49 = 16;
          goto LABEL_144;
        }

        if (v22 != 115 || v125)
        {
          return v123;
        }

        if (v13 >= v126)
        {
          v5 = v13;
LABEL_244:
          if (v16)
          {
            goto LABEL_245;
          }

          return v123;
        }

        v38 = v126 - v13;
        v5 = v13;
        while (1)
        {
          v39 = *v5;
          if (v39 < 0)
          {
            break;
          }

          if ((*(v6 + 4 * v39 + 60) & 0x4000) == 0)
          {
            goto LABEL_303;
          }

LABEL_79:
          ++v5;
          if (!--v38)
          {
            goto LABEL_244;
          }
        }

        if (__maskrune(*v5, 0x4000uLL))
        {
          goto LABEL_79;
        }

LABEL_303:
        if (!v16 && !*v5)
        {
          return v123;
        }

LABEL_245:
        if (v21)
        {
          if (v5 < v126)
          {
            v77 = v126 - v5;
            do
            {
              v78 = *v5;
              if (!*v5)
              {
                break;
              }

              v79 = (v78 & 0x80) != 0 ? __maskrune(v78, 0x4000uLL) : *(v6 + 4 * v78 + 60) & 0x4000;
              if (v79 || v24 < 1)
              {
                break;
              }

              --v24;
              ++v5;
              --v77;
            }

            while (v77);
          }

          goto LABEL_4;
        }

        if (v18)
        {
          v81 = v128;
          v128 += 2;
          v82 = *v81;
          if (!*v81)
          {
            return v123;
          }

          if (v5 < v126)
          {
            v83 = v126 - v5;
            do
            {
              v84 = *v5;
              if (!*v5)
              {
                break;
              }

              v85 = *v5;
              v86 = v84 < 0 ? __maskrune(v84, 0x4000uLL) : *(v6 + 4 * v84 + 60) & 0x4000;
              if (v86 || v24 < 1)
              {
                break;
              }

              --v24;
              ++v5;
              *v82++ = v85;
              --v83;
            }

            while (v83);
          }

          *v82 = 0;
          goto LABEL_227;
        }

        v101 = v5;
        if (v5 < v126)
        {
          v102 = v126 - v5;
          v101 = v5;
          do
          {
            v103 = *v101;
            if (!*v101)
            {
              break;
            }

            v104 = (v103 & 0x80) != 0 ? __maskrune(v103, 0x4000uLL) : *(v6 + 4 * v103 + 60) & 0x4000;
            if (v104 || v24 < 1)
            {
              break;
            }

            --v24;
            ++v101;
            --v102;
          }

          while (v102);
        }

        v106 = v128;
        v128 += 2;
        v107 = *v106;
        if (v107)
        {
          *v107 = v5;
        }

        v108 = v128;
        v128 += 2;
        v109 = *v108;
        if (v109)
        {
          *v109 = v101 - v5;
        }

        ++v123;
        v5 = v101;
      }
    }

    if (v22 > 97)
    {
      break;
    }

    if (v22 != 37)
    {
      if (v22 != 88)
      {
        if (v22 == 91 && !v125)
        {
          v40 = v19[1];
          v41 = v19 + 2;
          if (v40 == 94)
          {
            v42 = 2;
          }

          else
          {
            v42 = 1;
          }

          if (v40 == 94)
          {
            v43 = v19 + 2;
          }

          else
          {
            v43 = v19 + 1;
          }

          v44 = v19[v42];
          v45 = v44 == 93;
          if (v44 == 93)
          {
            v46 = v43 + 1;
          }

          else
          {
            v46 = v43;
          }

          while (*v46)
          {
            if (*v46 == 93)
            {
              v5 = v13;
              if (v40 == 94)
              {
                if (v13 < v126)
                {
                  v74 = &v13[v24];
                  v5 = v13;
                  while (*v5)
                  {
                    v68 = __OFSUB__(v24--, 1);
                    if (v24 < 0 != v68)
                    {
                      v5 = v74;
                      break;
                    }

                    if (v41 < v46)
                    {
                      v75 = 0;
                      while (v43[v75] != *v5)
                      {
                        if (v45 == ++v75)
                        {
                          goto LABEL_237;
                        }
                      }

                      break;
                    }

LABEL_237:
                    if (++v5 == v126)
                    {
                      v5 = v126;
                      break;
                    }
                  }
                }
              }

              else if (v13 < v126)
              {
                v5 = v13;
                while (*v5)
                {
                  v68 = __OFSUB__(v24, 1);
                  if (--v24 < 0 != v68)
                  {
                    break;
                  }

                  v94 = v45;
                  v95 = v43;
                  if (a3 >= v46)
                  {
                    break;
                  }

                  while (*v95 != *v5)
                  {
                    ++v95;
                    if (!--v94)
                    {
                      goto LABEL_346;
                    }
                  }

                  if (++v5 == v126)
                  {
                    v5 = v126;
                    break;
                  }
                }
              }

LABEL_346:
              if (v13 == v5 && !v16)
              {
                return v123;
              }

              a3 = v46 + 1;
              if (v21)
              {
                goto LABEL_4;
              }

              v115 = v128;
              v128 += 2;
              v116 = *v115;
              if (v18)
              {
                if (!v116)
                {
                  return v123;
                }

                if (v13 < v5)
                {
                  v117 = v5 - v13;
                  do
                  {
                    v118 = *v13++;
                    *v116++ = v118;
                    --v117;
                  }

                  while (v117);
                }

                *v116 = 0;
              }

              else
              {
                if (v116)
                {
                  *v116 = v13;
                }

                v119 = v128;
                v128 += 2;
                v120 = *v119;
                if (v120)
                {
                  *v120 = v5 - v13;
                }
              }

              goto LABEL_227;
            }

            ++v46;
            ++v45;
          }
        }

        return v123;
      }

      goto LABEL_130;
    }

    if (!v125 && v24 == 0x7FFFFFFF && !v21 && v13 < v126)
    {
      v5 = v13 + 1;
      if (*v13 == 37)
      {
        continue;
      }
    }

    return v123;
  }

  if (v22 > 99)
  {
    if (v22 == 100)
    {
      goto LABEL_125;
    }

    if (v22 != 102)
    {
      return v123;
    }

    if (v13 < v126)
    {
      v50 = v126 - v13;
      do
      {
        v51 = *v13;
        if (v51 < 0)
        {
          if (!__maskrune(*v13, 0x4000uLL))
          {
            break;
          }
        }

        else if ((*(v6 + 4 * v51 + 60) & 0x4000) == 0)
        {
          break;
        }

        ++v13;
        --v50;
      }

      while (v50);
    }

    if (v126 - v13 <= v24)
    {
      v52 = v126;
    }

    else
    {
      v52 = &v13[v24];
    }

    v5 = v13;
    if (v13 < v52)
    {
      if (*v13 == 45)
      {
        v5 = v13 + 1;
      }

      else
      {
        v5 = v13;
      }
    }

    if (v5 < v52)
    {
      v53 = v52 - v5;
      while (1)
      {
        v54 = *v5;
        if ((v54 - 48) > 9)
        {
          break;
        }

        ++v5;
        if (!--v53)
        {
          v5 = v52;
          goto LABEL_277;
        }
      }

      if (v54 == 46)
      {
        ++v5;
      }
    }

LABEL_277:
    if (v5 < v52)
    {
      v88 = v52 - v5;
      while (1)
      {
        v89 = *v5;
        if ((v89 - 48) > 9)
        {
          break;
        }

        ++v5;
        if (!--v88)
        {
          v5 = v52;
          goto LABEL_284;
        }
      }

      if (__tolower(v89) == 101)
      {
        ++v5;
      }
    }

LABEL_284:
    if (v5 < v52)
    {
      v90 = *v5;
      if (v90 == 45 || v90 == 43)
      {
        ++v5;
      }
    }

    if (v5 < v52)
    {
      v91 = v52 - v5;
      while (*v5 - 48 <= 9)
      {
        ++v5;
        if (!--v91)
        {
          v5 = v52;
          break;
        }
      }
    }

    if ((v5 - v13) > 0x3F)
    {
      return v123;
    }

    __memcpy_chk();
    v129[v5 - v13] = 0;
    if (sscanf(v129, "%lf", &v127) != 1)
    {
      return v123;
    }

    if (v21)
    {
      goto LABEL_4;
    }

    v92 = v128;
    v128 += 2;
    v93 = *v92;
    if (!v93)
    {
      return v123;
    }

    if (v125)
    {
      if (v125 != 108)
      {
        return v123;
      }

      *v93 = v127;
    }

    else
    {
      v114 = v127;
      *v93 = v114;
    }

LABEL_227:
    ++v123;
    goto LABEL_4;
  }

  if (v22 != 98)
  {
    if (v125)
    {
      return v123;
    }

    if (v18)
    {
      if (v24 == 0x7FFFFFFF)
      {
        v36 = 1;
      }

      else
      {
        v36 = v24;
      }

      if (v126 - v13 < v36)
      {
        return v123;
      }

      if (v21)
      {
        v5 = &v13[v36];
        goto LABEL_4;
      }

      v110 = v128;
      v128 += 2;
      v111 = *v110;
      if (!v111)
      {
        return v123;
      }

      if (v36)
      {
        v112 = v36 + 1;
        v100 = v123;
        do
        {
          v113 = *v13++;
          *v111++ = v113;
          --v112;
        }

        while (v112 > 1);
      }

      else
      {
        v100 = v123;
      }
    }

    else
    {
      v76 = v126 - v13;
      if (v126 - v13 >= v24)
      {
        v76 = v24;
      }

      if (v21)
      {
        v5 = &v13[v76];
        goto LABEL_4;
      }

      v96 = v128;
      v128 += 2;
      v97 = *v96;
      if (v97)
      {
        *v97 = v13;
      }

      v98 = v128;
      v128 += 2;
      v99 = *v98;
      v100 = v123;
      if (v99)
      {
        *v99 = v76;
      }

      v13 += v76;
    }

    v123 = v100 + 1;
    v5 = v13;
    goto LABEL_4;
  }

  v35 = 0;
  v47 = 0;
  v48 = 1;
  v49 = 2;
LABEL_144:
  v57 = v126;
  if (v13 < v126)
  {
    v58 = v48;
    v59 = v126 - v13;
    do
    {
      v60 = *v13;
      if (v60 < 0)
      {
        if (!__maskrune(*v13, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v6 + 4 * v60 + 60) & 0x4000) == 0)
      {
        break;
      }

      ++v13;
      --v59;
    }

    while (v59);
    v57 = v126;
    v48 = v58;
  }

  v124 = 1;
  if ((v57 - v13) < 2 || !v24)
  {
LABEL_157:
    if (!v35)
    {
      goto LABEL_179;
    }

LABEL_158:
    v62 = v57 - v13;
    if (v62 > 2 && v24 >= 2 && *v13 == 48)
    {
      if (__tolower(v13[1]) == 120)
      {
        v5 = v13 + 2;
        if ((*(v6 + 4 * v13[2] + 60) & 0x10000) != 0)
        {
          v49 = 16;
          goto LABEL_301;
        }
      }

      if (*v13 == 48 && __tolower(v13[1]) == 98)
      {
        v5 = v13 + 2;
        if ((v13[2] & 0xFE) == 0x30)
        {
          v49 = 2;
LABEL_301:
          v24 -= 2;
          goto LABEL_302;
        }
      }
    }

    if (v62 >= 2)
    {
      v57 = v126;
      if (v24 >= 1 && *v13 == 48)
      {
        if ((v13[1] & 0xF8) == 0x30)
        {
          v49 = 8;
        }

        else
        {
          v49 = 10;
        }

        if ((v13[1] & 0xF8) == 0x30)
        {
          --v24;
          v5 = v13 + 1;
        }

        else
        {
          v5 = v13;
        }

        goto LABEL_194;
      }

      v49 = 10;
      goto LABEL_193;
    }

    v49 = 10;
    v5 = v13;
LABEL_302:
    v57 = v126;
    goto LABEL_194;
  }

  v61 = *v13;
  if (v61 == 43)
  {
    ++v13;
    --v24;
  }

  else if (v61 == 45)
  {
    v124 = 0;
    ++v13;
    --v24;
    goto LABEL_157;
  }

  v124 = 1;
  if (v35)
  {
    goto LABEL_158;
  }

LABEL_179:
  if (v47)
  {
    if ((v57 - v13) >= 2)
    {
      v63 = v24 - 2;
      if (v24 >= 2 && *v13 == 48)
      {
        v64 = v48;
        v65 = __tolower(v13[1]);
        v48 = v64;
        if (v65 == 120)
        {
          v5 = v13 + 2;
          v49 = 16;
          goto LABEL_191;
        }
      }
    }
  }

  if (!v48)
  {
    goto LABEL_193;
  }

  if ((v57 - v13) < 2 || (v63 = v24 - 2, v24 < 2) || *v13 != 48 || __tolower(v13[1]) != 98)
  {
    v49 = 2;
LABEL_193:
    v5 = v13;
    goto LABEL_194;
  }

  v5 = v13 + 2;
  v49 = 2;
LABEL_191:
  v24 = v63;
LABEL_194:
  if (v5 >= v57)
  {
    v66 = 0;
  }

  else
  {
    v66 = 0;
    v67 = v57 - v5;
    do
    {
      v68 = __OFSUB__(v24--, 1);
      if (v24 < 0 != v68)
      {
        break;
      }

      v69 = *v5;
      v70 = v69 - 48;
      if ((v69 - 48) >= 0xA)
      {
        if ((*(v6 + 4 * *v5 + 60) & 0x10000) == 0)
        {
          break;
        }

        v70 = __tolower(v69) - 87;
      }

      if (v70 >= v49)
      {
        break;
      }

      v66 = v66 * v49 + v70;
      ++v5;
      --v67;
    }

    while (v67);
  }

  if (v5 != v13)
  {
    if (v21)
    {
      goto LABEL_4;
    }

    v71 = v124 ? v66 : -v66;
    v72 = v128;
    v128 += 2;
    v73 = *v72;
    if (v73)
    {
      if (v125 <= 105)
      {
        if (v125 <= 75)
        {
          if (v125)
          {
            if (v125 != 72)
            {
              return v123;
            }

            *v73 = v71;
          }

          else
          {
            *v73 = v71;
          }

          goto LABEL_227;
        }

        if (v125 != 76)
        {
          if (v125 != 104)
          {
            return v123;
          }

          *v73 = v71;
          goto LABEL_227;
        }
      }

      else if (v125 <= 111)
      {
        if (v125 != 106 && v125 != 108)
        {
          return v123;
        }
      }

      else if (v125 != 112 && v125 != 116 && v125 != 122)
      {
        return v123;
      }

      *v73 = v71;
      goto LABEL_227;
    }
  }

  return v123;
}