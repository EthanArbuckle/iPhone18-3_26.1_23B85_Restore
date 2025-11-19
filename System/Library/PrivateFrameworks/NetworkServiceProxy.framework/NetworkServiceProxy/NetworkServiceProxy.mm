id nplog_obj()
{
  if (nplog_obj_log_once != -1)
  {
    dispatch_once(&nplog_obj_log_once, &__block_literal_global_5);
  }

  v1 = nplog_obj_g_log;

  return v1;
}

uint64_t __nplog_obj_block_invoke()
{
  nplog_obj_g_log = os_log_create("com.apple.networkserviceproxy", "");

  return MEMORY[0x1EEE66BB8]();
}

id NPGetInternalQueue()
{
  if (qword_1ED4BF5C8 != -1)
  {
    dispatch_once(&qword_1ED4BF5C8, &__block_literal_global_248);
  }

  v1 = qword_1ED4BF5C0;

  return v1;
}

uint64_t myIsEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 | v4)
  {
    v5 = [v3 isEqual:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

id copySystemVersionDictionary()
{
  if (qword_1ED4BF598 != -1)
  {
    dispatch_once(&qword_1ED4BF598, &__block_literal_global);
  }

  v1 = _MergedGlobals_23;

  return v1;
}

uint64_t __copySystemVersionDictionary_block_invoke()
{
  _MergedGlobals_23 = _CFCopySystemVersionDictionary();

  return MEMORY[0x1EEE66BB8]();
}

id copyOSNameString()
{
  v0 = MGCopyAnswer();

  return v0;
}

id copyOSVersionString()
{
  v0 = MGCopyAnswer();

  return v0;
}

id copyOSBuildString()
{
  v0 = copySystemVersionDictionary();
  v1 = [v0 objectForKey:*MEMORY[0x1E695E1E8]];

  return v1;
}

id copyProductTypeString()
{
  v0 = MGCopyAnswer();

  return v0;
}

id getServerConnection()
{
  if (qword_1ED4BF5A8 != -1)
  {
    dispatch_once(&qword_1ED4BF5A8, &__block_literal_global_9);
  }

  v1 = qword_1ED4BF5A0;

  return v1;
}

uint64_t __getServerConnection_block_invoke()
{
  qword_1ED4BF5A0 = [[NSPServerClient alloc] initWithCallbackQueue:?];

  return MEMORY[0x1EEE66BB8]();
}

id latitudeLongitudeToGeohash(unint64_t a1, double a2, double a3)
{
  v3 = a1;
  v26 = *MEMORY[0x1E69E9840];
  if (a1 > 0xC)
  {
    v4 = nplog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v24 = 134217984;
      v25 = v3;
      _os_log_error_impl(&dword_1AE7E2000, v4, OS_LOG_TYPE_ERROR, "Geohash length is too big (%lu), maximum is 12", &v24, 0xCu);
    }

LABEL_25:
    v20 = 0;
    goto LABEL_26;
  }

  v5 = 0;
  v6 = 1 << (5 * a1 - 1);
  v7 = 180.0;
  v8 = -180.0;
  v9 = 90.0;
  v10 = -90.0;
  do
  {
    v11 = v8 + (v7 - v8) * 0.5;
    if (v11 <= a3)
    {
      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    v5 |= v12;
    if (v6 == 1)
    {
      break;
    }

    if (v11 > a3)
    {
      v7 = v8 + (v7 - v8) * 0.5;
    }

    else
    {
      v8 = v8 + (v7 - v8) * 0.5;
    }

    v13 = v6 >> 1;
    if (v10 + (v9 - v10) * 0.5 <= a2)
    {
      v10 = v10 + (v9 - v10) * 0.5;
    }

    else
    {
      v9 = v10 + (v9 - v10) * 0.5;
      v13 = 0;
    }

    v5 |= v13;
    v14 = v6 > 3;
    v6 >>= 2;
  }

  while (v14);
  v15 = a1 + 1;
  v16 = malloc_type_malloc(a1 + 1, 0x100004077774924uLL);
  if (!v16)
  {
    v21 = nplog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = 134217984;
      v25 = v15;
      _os_log_error_impl(&dword_1AE7E2000, v21, OS_LOG_TYPE_ERROR, "Failed to allocate %lu bytes for the geohash", &v24, 0xCu);
    }

    goto LABEL_25;
  }

  v17 = v16;
  bzero(v16, v3 + 1);
  if (v3)
  {
    v18 = 5 * v3 - 5;
    v19 = v17;
    do
    {
      *v19++ = a0123456789bcde[(v5 >> v18) & 0x1F];
      v18 -= 5;
      --v3;
    }

    while (v3);
  }

  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v17 encoding:4];
  free(v17);
LABEL_26:
  v22 = *MEMORY[0x1E69E9840];

  return v20;
}

BOOL geohashToLatitudeLongitude(void *a1, double *a2, double *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [v5 UTF8String];
  v7 = 5 * strlen(v6);
  *a3 = 0.0;
  *a2 = 0.0;
  v8 = strlen(v6);
  if (!v8)
  {
    v12 = 0;
LABEL_12:
    v16 = 1 << (v7 - 1);
    v17 = -180.0;
    v18 = 180.0;
    v19 = 90.0;
    v20 = -90.0;
    do
    {
      if ((v16 & v12) != 0)
      {
        v17 = v17 + (v18 - v17) * 0.5;
      }

      else
      {
        v18 = v17 + (v18 - v17) * 0.5;
      }

      if (v16 == 1)
      {
        break;
      }

      if ((v12 & (v16 >> 1)) != 0)
      {
        v20 = v20 + (v19 - v20) * 0.5;
      }

      else
      {
        v19 = v20 + (v19 - v20) * 0.5;
      }

      v21 = v16 > 3;
      v16 >>= 2;
    }

    while (v21);
    *a3 = v17 + (v17 - v18) * 0.5;
    *a2 = v20 + (v20 - v19) * 0.5;
    v14 = 1;
    goto LABEL_22;
  }

  v9 = v8;
  v10 = memchr("0123456789bcdefghjkmnpqrstuvwxyz", *v6, 0x21uLL);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = v7 - 5;
    while (1)
    {
      v12 |= (v10 - "0123456789bcdefghjkmnpqrstuvwxyz") << v13;
      if (v9 - 1 == v11)
      {
        goto LABEL_12;
      }

      v10 = memchr("0123456789bcdefghjkmnpqrstuvwxyz", v6[v11 + 1], 0x21uLL);
      v13 -= 5;
      ++v11;
      if (!v10)
      {
        v14 = v11 >= v9;
        goto LABEL_9;
      }
    }
  }

  v11 = 0;
  v14 = 0;
LABEL_9:
  v15 = nplog_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v24 = v6[v11];
    *buf = 138412546;
    v26 = v5;
    v27 = 1024;
    v28 = v24;
    _os_log_error_impl(&dword_1AE7E2000, v15, OS_LOG_TYPE_ERROR, "Invalid character in geohash %@: %c", buf, 0x12u);
  }

LABEL_22:
  v22 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t isa_nsstring(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t isa_nsdata(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t NSPPrivacyProxyTokenIssuerReadFrom(_BYTE *a1, void *a2)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 8;
        goto LABEL_42;
      }

      if (v13 != 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadData();
          v15 = 32;
LABEL_42:
          v24 = *&a1[v15];
          *&a1[v15] = v14;

          goto LABEL_43;
        }

        goto LABEL_36;
      }

      v23 = objc_alloc_init(NSPPrivacyProxyTokenKey);
      [a1 addTokenKeys:v23];
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !NSPPrivacyProxyTokenKeyReadFrom(v23, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 4:
        v14 = PBReaderReadData();
        v15 = 40;
        goto LABEL_42;
      case 5:
        v14 = PBReaderReadData();
        v15 = 24;
        goto LABEL_42;
      case 6:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        a1[52] |= 1u;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v27[0] & 0x7F) << v16;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_46;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_46:
        a1[48] = v22;
        goto LABEL_43;
    }

LABEL_36:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSPPrivacyProxyProxyInfoReadFrom(_BYTE *a1, void *a2)
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
        v59 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v59 & 0x7F) << v5;
        if ((v59 & 0x80) == 0)
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

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          while (1)
          {
            v61 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v61 & 0x7F) << v13;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_109:
              v56 = 48;
              goto LABEL_110;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_109;
        case 2u:
          v40 = PBReaderReadString();
          v41 = 64;
          goto LABEL_90;
        case 3u:
          v33 = PBReaderReadData();
          if (v33)
          {
            [a1 addProxyKeyInfo:v33];
          }

          goto LABEL_88;
        case 4u:
          v40 = PBReaderReadData();
          v41 = 96;
          goto LABEL_90;
        case 5u:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          a1[116] |= 8u;
          while (1)
          {
            v64 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v64 & 0x7F) << v34;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              LOBYTE(v32) = 0;
              goto LABEL_98;
            }
          }

          v32 = (v36 != 0) & ~[a2 hasError];
LABEL_98:
          v57 = 113;
          goto LABEL_101;
        case 6u:
          v40 = PBReaderReadString();
          v41 = 104;
          goto LABEL_90;
        case 7u:
          v40 = PBReaderReadString();
          v41 = 80;
          goto LABEL_90;
        case 8u:
          v40 = PBReaderReadString();
          v41 = 32;
          goto LABEL_90;
        case 9u:
          v40 = PBReaderReadString();
          v41 = 72;
          goto LABEL_90;
        case 0xAu:
          v42 = 0;
          v43 = 0;
          v44 = 0;
          a1[116] |= 0x10u;
          while (1)
          {
            v63 = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v44 |= (v63 & 0x7F) << v42;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v11 = v43++ >= 9;
            if (v11)
            {
              LOBYTE(v32) = 0;
              goto LABEL_100;
            }
          }

          v32 = (v44 != 0) & ~[a2 hasError];
LABEL_100:
          v57 = 114;
          goto LABEL_101;
        case 0xBu:
          v33 = PBReaderReadString();
          if (v33)
          {
            [a1 addBootstrapAddresses:v33];
          }

          goto LABEL_88;
        case 0xCu:
          v33 = PBReaderReadString();
          if (v33)
          {
            [a1 addAllowedNextHops:v33];
          }

          goto LABEL_88;
        case 0xDu:
          v40 = PBReaderReadData();
          v41 = 88;
LABEL_90:
          v55 = *&a1[v41];
          *&a1[v41] = v40;

          goto LABEL_111;
        case 0xEu:
          v33 = PBReaderReadString();
          if (v33)
          {
            [a1 addPreferredPathPatterns:v33];
          }

LABEL_88:

          goto LABEL_111;
        case 0xFu:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          a1[116] |= 4u;
          while (1)
          {
            v62 = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v62 & 0x7F) << v26;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              LOBYTE(v32) = 0;
              goto LABEL_96;
            }
          }

          v32 = (v28 != 0) & ~[a2 hasError];
LABEL_96:
          v57 = 112;
LABEL_101:
          a1[v57] = v32;
          goto LABEL_111;
        case 0x10u:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          a1[116] |= 1u;
          while (1)
          {
            v60 = 0;
            v51 = [a2 position] + 1;
            if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
            {
              v53 = [a2 data];
              [v53 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v50 |= (v60 & 0x7F) << v48;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v11 = v49++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_105;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v50;
          }

LABEL_105:
          v56 = 8;
          goto LABEL_110;
        case 0x11u:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          a1[116] |= 2u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_111;
      }

      while (1)
      {
        v65 = 0;
        v23 = [a2 position] + 1;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
        {
          v25 = [a2 data];
          [v25 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v22 |= (v65 & 0x7F) << v20;
        if ((v65 & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        v11 = v21++ >= 9;
        if (v11)
        {
          v19 = 0;
          goto LABEL_94;
        }
      }

      v19 = [a2 hasError] ? 0 : v22;
LABEL_94:
      v56 = 52;
LABEL_110:
      *&a1[v56] = v19;
LABEL_111:
      v58 = [a2 position];
    }

    while (v58 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSPPrivacyProxyResolverInfoReadFrom(uint64_t a1, void *a2)
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
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
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
        if (v13 == 3)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v35 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v35 & 0x7F) << v25;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v27;
          }

LABEL_52:
          v31 = 28;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_54;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v34 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v34 & 0x7F) << v16;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_48:
          v31 = 24;
        }

        *(a1 + v31) = v22;
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 8;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_32;
          }

          v14 = PBReaderReadData();
          v15 = 16;
        }

        v24 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSPPrivacyProxyProxiedContentMapReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v78[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v78 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v78[0] & 0x7F) << v5;
        if ((v78[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 6)
      {
        if (v13 > 9)
        {
          switch(v13)
          {
            case 0xA:
              v49 = 0;
              v50 = 0;
              v51 = 0;
              *(a1 + 88) |= 2u;
              while (1)
              {
                LOBYTE(v78[0]) = 0;
                v52 = [a2 position] + 1;
                if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
                {
                  v54 = [a2 data];
                  [v54 getBytes:v78 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v51 |= (v78[0] & 0x7F) << v49;
                if ((v78[0] & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                v11 = v50++ >= 9;
                if (v11)
                {
                  v48 = 0;
                  goto LABEL_133;
                }
              }

              if ([a2 hasError])
              {
                v48 = 0;
              }

              else
              {
                v48 = v51;
              }

LABEL_133:
              v70 = 64;
              goto LABEL_134;
            case 0xB:
              v63 = 0;
              v64 = 0;
              v65 = 0;
              *(a1 + 88) |= 8u;
              while (1)
              {
                LOBYTE(v78[0]) = 0;
                v66 = [a2 position] + 1;
                if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
                {
                  v68 = [a2 data];
                  [v68 getBytes:v78 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v65 |= (v78[0] & 0x7F) << v63;
                if ((v78[0] & 0x80) == 0)
                {
                  break;
                }

                v63 += 7;
                v11 = v64++ >= 9;
                if (v11)
                {
                  LOBYTE(v29) = 0;
                  goto LABEL_138;
                }
              }

              v29 = (v65 != 0) & ~[a2 hasError];
LABEL_138:
              v69 = 82;
              goto LABEL_139;
            case 0xC:
              v30 = 0;
              v31 = 0;
              v32 = 0;
              *(a1 + 88) |= 4u;
              while (1)
              {
                LOBYTE(v78[0]) = 0;
                v33 = [a2 position] + 1;
                if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
                {
                  v35 = [a2 data];
                  [v35 getBytes:v78 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v32 |= (v78[0] & 0x7F) << v30;
                if ((v78[0] & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                v11 = v31++ >= 9;
                if (v11)
                {
                  LOBYTE(v29) = 0;
                  goto LABEL_123;
                }
              }

              v29 = (v32 != 0) & ~[a2 hasError];
LABEL_123:
              v69 = 81;
              goto LABEL_139;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v42 = 0;
              v43 = 0;
              v44 = 0;
              *(a1 + 88) |= 1u;
              while (1)
              {
                LOBYTE(v78[0]) = 0;
                v45 = [a2 position] + 1;
                if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
                {
                  v47 = [a2 data];
                  [v47 getBytes:v78 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v44 |= (v78[0] & 0x7F) << v42;
                if ((v78[0] & 0x80) == 0)
                {
                  break;
                }

                v42 += 7;
                v11 = v43++ >= 9;
                if (v11)
                {
                  v48 = 0;
                  goto LABEL_129;
                }
              }

              if ([a2 hasError])
              {
                v48 = 0;
              }

              else
              {
                v48 = v44;
              }

LABEL_129:
              v70 = 48;
LABEL_134:
              *(a1 + v70) = v48;
              goto LABEL_140;
            case 8:
              v57 = 0;
              v58 = 0;
              v59 = 0;
              *(a1 + 88) |= 0x10u;
              while (1)
              {
                LOBYTE(v78[0]) = 0;
                v60 = [a2 position] + 1;
                if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
                {
                  v62 = [a2 data];
                  [v62 getBytes:v78 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v59 |= (v78[0] & 0x7F) << v57;
                if ((v78[0] & 0x80) == 0)
                {
                  break;
                }

                v57 += 7;
                v11 = v58++ >= 9;
                if (v11)
                {
                  LOBYTE(v29) = 0;
                  goto LABEL_136;
                }
              }

              v29 = (v59 != 0) & ~[a2 hasError];
LABEL_136:
              v69 = 83;
              goto LABEL_139;
            case 9:
              v22 = PBReaderReadString();
              if (v22)
              {
                [a1 addUrls:v22];
              }

              goto LABEL_108;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            v22 = PBReaderReadString();
            if (v22)
            {
              [a1 addHostnames:v22];
            }

            goto LABEL_108;
          case 5:
            v22 = PBReaderReadString();
            if (v22)
            {
              [a1 addProcesses:v22];
            }

LABEL_108:

            goto LABEL_140;
          case 6:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 88) |= 0x20u;
            while (1)
            {
              LOBYTE(v78[0]) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:v78 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v78[0] & 0x7F) << v23;
              if ((v78[0] & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                LOBYTE(v29) = 0;
                goto LABEL_121;
              }
            }

            v29 = (v25 != 0) & ~[a2 hasError];
LABEL_121:
            v69 = 84;
            goto LABEL_139;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            while (1)
            {
              LOBYTE(v78[0]) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:v78 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v78[0] & 0x7F) << v36;
              if ((v78[0] & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                LOBYTE(v29) = 0;
                goto LABEL_125;
              }
            }

            v29 = (v38 != 0) & ~[a2 hasError];
LABEL_125:
            v69 = 80;
LABEL_139:
            *(a1 + v69) = v29;
            goto LABEL_140;
          case 2:
            v55 = PBReaderReadString();
            v56 = *(a1 + 40);
            *(a1 + 40) = v55;

            goto LABEL_140;
          case 3:
            if ((v12 & 7) == 2)
            {
              v78[0] = 0;
              v78[1] = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v15 = [a2 position];
                if (v15 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v16 = 0;
                v17 = 0;
                v18 = 0;
                while (1)
                {
                  v79 = 0;
                  v19 = [a2 position] + 1;
                  if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
                  {
                    v21 = [a2 data];
                    [v21 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v18 |= (v79 & 0x7F) << v16;
                  if ((v79 & 0x80) == 0)
                  {
                    break;
                  }

                  v16 += 7;
                  v11 = v17++ >= 9;
                  if (v11)
                  {
                    goto LABEL_36;
                  }
                }

                [a2 hasError];
LABEL_36:
                PBRepeatedUInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v72 = 0;
              v73 = 0;
              v74 = 0;
              while (1)
              {
                LOBYTE(v78[0]) = 0;
                v75 = [a2 position] + 1;
                if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
                {
                  v77 = [a2 data];
                  [v77 getBytes:v78 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v74 |= (v78[0] & 0x7F) << v72;
                if ((v78[0] & 0x80) == 0)
                {
                  break;
                }

                v72 += 7;
                v11 = v73++ >= 9;
                if (v11)
                {
                  goto LABEL_153;
                }
              }

              [a2 hasError];
LABEL_153:
              PBRepeatedUInt32Add();
            }

            goto LABEL_140;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_140:
      v71 = [a2 position];
    }

    while (v71 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSPPrivacyProxyTokenKeyReadFrom(uint64_t a1, void *a2)
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
        v46 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46 & 0x7F) << v5;
        if ((v46 & 0x80) == 0)
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
        if (v13 != 1)
        {
          if (v13 != 2)
          {
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_80;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 40) |= 1u;
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

            v23 |= (v48 & 0x7F) << v21;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_78;
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

LABEL_78:
          v43 = 8;
          goto LABEL_79;
        }

        v40 = PBReaderReadData();
        v41 = *(a1 + 24);
        *(a1 + 24) = v40;
      }

      else
      {
        switch(v13)
        {
          case 3:
            v28 = 0;
            v29 = 0;
            v30 = 0;
            *(a1 + 40) |= 2u;
            while (1)
            {
              v47 = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                v33 = [a2 data];
                [v33 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v47 & 0x7F) << v28;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_65;
              }
            }

            if ([a2 hasError])
            {
              v27 = 0;
            }

            else
            {
              v27 = v30;
            }

LABEL_65:
            v43 = 16;
LABEL_79:
            *(a1 + v43) = v27;
            goto LABEL_80;
          case 4:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 40) |= 8u;
            while (1)
            {
              v50 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v50 & 0x7F) << v34;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v11 = v35++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_69;
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

LABEL_69:
            v44 = 36;
            break;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 40) |= 4u;
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
              v20 = v16;
            }

LABEL_73:
            v44 = 32;
            break;
          default:
            goto LABEL_60;
        }

        *(a1 + v44) = v20;
      }

LABEL_80:
      v45 = [a2 position];
    }

    while (v45 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSPPrivacyProxyTokenActivationQueryReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v26) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
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
          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            LOBYTE(v26) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v26 & 0x7F) << v17;
            if ((v26 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_47;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_47:
          *(a1 + 16) = v23;
          goto LABEL_48;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(NSPPrivacyProxyBAAValidation);
          objc_storeStrong((a1 + 32), v14);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !NSPPrivacyProxyBAAValidationReadFrom(v14, a2))
          {
LABEL_50:

            return 0;
          }

          goto LABEL_31;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(NSPPrivacyProxyTokenInfo);
            objc_storeStrong((a1 + 40), v14);
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !NSPPrivacyProxyTokenInfoReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            goto LABEL_31;
          case 4:
            v15 = PBReaderReadData();
            v16 = *(a1 + 8);
            *(a1 + 8) = v15;

            goto LABEL_48;
          case 5:
            v14 = objc_alloc_init(NSPPrivacyProxyAuxiliaryAuthInfo);
            [a1 addAuxiliaryAuthArray:v14];
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !NSPPrivacyProxyAuxiliaryAuthInfoReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

LABEL_31:
            PBReaderRecallMark();

            goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_48:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void enable_timestamps(char a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __enable_timestamps_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v2 = a1;
  if (enable_timestamps_onceToken != -1)
  {
    dispatch_once(&enable_timestamps_onceToken, block);
  }
}

void __enable_timestamps_block_invoke(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v5 = v1;
    v6 = v2;
    if (mach_timebase_info(&g_timebaseInfo))
    {
      v3 = nplog_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1AE7E2000, v3, OS_LOG_TYPE_ERROR, "Failed to get the timebase info", v4, 2u);
      }
    }

    else
    {
      g_recordTimestamps = 1;
    }
  }
}

double get_interval_for_mach_times(unint64_t a1, unint64_t a2, double a3, double a4, double a5)
{
  result = 0.0;
  if (a2 > a1 && (g_recordTimestamps & 1) != 0)
  {
    LODWORD(a4) = g_timebaseInfo;
    LODWORD(a5) = *algn_1EB5E24DC;
    return (a2 - a1) * *&a4 / *&a5 / 1000000.0;
  }

  return result;
}

void *create_timestamps()
{
  if (g_recordTimestamps != 1)
  {
    return 0;
  }

  result = malloc_type_malloc(0x78uLL, 0x100004000313F17uLL);
  if (!result)
  {
    return 0;
  }

  result[14] = 0;
  *(result + 5) = 0u;
  *(result + 6) = 0u;
  *(result + 3) = 0u;
  *(result + 4) = 0u;
  *(result + 1) = 0u;
  *(result + 2) = 0u;
  *result = 0u;
  return result;
}

uint64_t __NPGetInternalQueue_block_invoke()
{
  qword_1ED4BF5C0 = dispatch_queue_create("NetworkServiceProxy internal queue", 0);

  return MEMORY[0x1EEE66BB8]();
}

id get_nsdata_from_xpc_object(void *a1, const char *a2)
{
  v2 = xpc_dictionary_get_value(a1, a2);
  v3 = v2;
  if (v2 && MEMORY[0x1B2708030](v2) == MEMORY[0x1E69E9E70])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id get_nsdictionary_from_xpc_object(void *a1, const char *a2)
{
  v2 = xpc_dictionary_get_value(a1, a2);
  v3 = v2;
  if (v2 && MEMORY[0x1B2708030](v2) == MEMORY[0x1E69E9E80])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id get_nsarray_from_xpc_object(void *a1, const char *a2)
{
  v2 = xpc_dictionary_get_value(a1, a2);
  v3 = v2;
  if (v2 && MEMORY[0x1B2708030](v2) == MEMORY[0x1E69E9E50])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1AE7F36A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t NSPPrivacyProxyAuthenticationInfoReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v40) = 0;
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 80) |= 1u;
            while (1)
            {
              LOBYTE(v40) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v40 & 0x7F) << v17;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_66;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_66:
            *(a1 + 56) = v23;
            goto LABEL_79;
          case 2:
            v15 = PBReaderReadString();
            v16 = 64;
            goto LABEL_62;
          case 3:
            v15 = PBReaderReadString();
            v16 = 48;
LABEL_62:
            v32 = *(a1 + v16);
            *(a1 + v16) = v15;

            goto LABEL_79;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addAccessTokenBlockedIssuers:v14];
          }

          goto LABEL_60;
        }

        if (v13 == 7)
        {
          v14 = objc_alloc_init(NSPPrivacyProxyTokenAttester);
          [a1 addNonDefaultAttesters:v14];
          v40 = 0;
          v41 = 0;
          if (!PBReaderPlaceMark() || !NSPPrivacyProxyTokenAttesterReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_60;
        }
      }

      else
      {
        if (v13 == 4)
        {
          if ((v12 & 7) == 2)
          {
            v40 = 0;
            v41 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v25 = [a2 position];
              if (v25 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v26 = 0;
              v27 = 0;
              v28 = 0;
              while (1)
              {
                v42 = 0;
                v29 = [a2 position] + 1;
                if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
                {
                  v31 = [a2 data];
                  [v31 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v28 |= (v42 & 0x7F) << v26;
                if ((v42 & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                v11 = v27++ >= 9;
                if (v11)
                {
                  goto LABEL_57;
                }
              }

              [a2 hasError];
LABEL_57:
              PBRepeatedUInt32Add();
            }

            PBReaderRecallMark();
          }

          else
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            while (1)
            {
              LOBYTE(v40) = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v40 & 0x7F) << v33;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                goto LABEL_78;
              }
            }

            [a2 hasError];
LABEL_78:
            PBRepeatedUInt32Add();
          }

          goto LABEL_79;
        }

        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addAccessTokenKnownOrigins:v14];
          }

LABEL_60:

          goto LABEL_79;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_79:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSPPrivacyProxyTokenActivationResponseReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v24[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24[0] & 0x7F) << v5;
        if ((v24[0] & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v21 = PBReaderReadData();
        if (v21)
        {
          [a1 addActivatedTokenList:v21];
        }

LABEL_34:

        goto LABEL_41;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v24[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v24[0] & 0x7F) << v14;
          if ((v24[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_40;
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

LABEL_40:
        *(a1 + 8) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
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

    v21 = objc_alloc_init(NSPPrivacyProxyAuxiliaryAuthInfo);
    [a1 addAuxiliaryAuthArray:v21];
    v24[0] = 0;
    v24[1] = 0;
    if (!PBReaderPlaceMark() || !NSPPrivacyProxyAuxiliaryAuthInfoReadFrom(v21, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSPPrivacyProxyObliviousHTTPConfigReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v21 = PBReaderReadData();
          v22 = 8;
          goto LABEL_42;
        }

        if (v13 == 3)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 56) |= 1u;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v27[0] & 0x7F) << v14;
            if ((v27[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_48;
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

LABEL_48:
          *(a1 + 16) = v20;
          goto LABEL_43;
        }

LABEL_38:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_43;
      }

      v23 = objc_alloc_init(NSPPrivacyProxyObliviousTargetInfo);
      [a1 addObliviousTargets:v23];
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !NSPPrivacyProxyObliviousTargetInfoReadFrom(v23, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 4:
        v21 = PBReaderReadData();
        v22 = 40;
        goto LABEL_42;
      case 5:
        v21 = PBReaderReadData();
        v22 = 48;
        goto LABEL_42;
      case 6:
        v21 = PBReaderReadData();
        v22 = 32;
LABEL_42:
        v24 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_43;
    }

    goto LABEL_38;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSPPrivacyProxyBAAValidationReadFrom(uint64_t a1, void *a2)
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
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
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

      v13 = (v12 >> 3) - 1;
      if (v13 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_1E7A30D80[v13];
        v15 = PBReaderReadData();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSPPrivacyProxyGetQuotaResponseReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v22) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        [a1 clearOneofValuesForGetQuotaResponseType];
        *(a1 + 32) |= 1u;
        *(a1 + 16) = 1;
        v19 = objc_alloc_init(NSPPrivacyProxySuccessResponse);
        objc_storeStrong((a1 + 24), v19);
        v22 = 0;
        v23 = 0;
        if (!PBReaderPlaceMark() || !NSPPrivacyProxySuccessResponseReadFrom(v19, a2))
        {
          goto LABEL_40;
        }

LABEL_34:
        PBReaderRecallMark();

        goto LABEL_38;
      }

      if (v13)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = 0;
        while (1)
        {
          LOBYTE(v22) = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            v17 = [a2 data];
            [v17 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((v22 & 0x80000000) == 0)
          {
            break;
          }

          if (v14++ > 8)
          {
            goto LABEL_38;
          }
        }

        [a2 hasError];
      }

LABEL_38:
      v20 = [a2 position];
      if (v20 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    [a1 clearOneofValuesForGetQuotaResponseType];
    *(a1 + 32) |= 1u;
    *(a1 + 16) = 2;
    v19 = objc_alloc_init(NSPPrivacyProxyErrorResponse);
    objc_storeStrong((a1 + 8), v19);
    v22 = 0;
    v23 = 0;
    if (!PBReaderPlaceMark() || !NSPPrivacyProxyErrorResponseReadFrom(v19, a2))
    {
LABEL_40:

      return 0;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSPPrivacyProxyQuotaServiceReadFrom(void *a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = a1[1];
        a1[1] = v13;
LABEL_22:

        goto LABEL_24;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_24:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    if (v14)
    {
      [a1 addSupportedUseCaseIdentifiers:v14];
    }

    goto LABEL_22;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSPPrivacyProxyQuotaInfoReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(NSPPrivacyProxyQuotaService);
        [a1 addQuotaServices:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !NSPPrivacyProxyQuotaServiceReadFrom(v13, a2))
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

uint64_t NSPPrivacyProxyQuotaServiceRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v22) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v19 = objc_alloc_init(NSPPrivacyProxyBAAValidation);
        objc_storeStrong((a1 + 8), v19);
        v22 = 0;
        v23 = 0;
        if (!PBReaderPlaceMark() || !NSPPrivacyProxyBAAValidationReadFrom(v19, a2))
        {
          goto LABEL_40;
        }

LABEL_34:
        PBReaderRecallMark();

        goto LABEL_38;
      }

      if (v13)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = 0;
        while (1)
        {
          LOBYTE(v22) = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            v17 = [a2 data];
            [v17 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((v22 & 0x80000000) == 0)
          {
            break;
          }

          if (v14++ > 8)
          {
            goto LABEL_38;
          }
        }

        [a2 hasError];
      }

LABEL_38:
      v20 = [a2 position];
      if (v20 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    [a1 clearOneofValuesForRequestType];
    *(a1 + 28) |= 1u;
    *(a1 + 24) = 1;
    v19 = objc_alloc_init(NSPPrivacyProxyGetQuotaRequest);
    objc_storeStrong((a1 + 16), v19);
    v22 = 0;
    v23 = 0;
    if (!PBReaderPlaceMark() || !NSPPrivacyProxyGetQuotaRequestReadFrom(v19, a2))
    {
LABEL_40:

      return 0;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSPPrivacyProxyQuotaReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(NSPPrivacyProxyCost);
        objc_storeStrong((a1 + 16), v20);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !NSPPrivacyProxyCostReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        *(a1 + 8) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSPPrivacyProxyQuotaServiceResponseReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v21[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21[0] & 0x7F) << v5;
        if ((v21[0] & 0x80) == 0)
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
        [a1 clearOneofValuesForRequestType];
        *(a1 + 24) |= 1u;
        *(a1 + 8) = 1;
        v18 = objc_alloc_init(NSPPrivacyProxyGetQuotaResponse);
        objc_storeStrong((a1 + 16), v18);
        v21[0] = 0;
        v21[1] = 0;
        if (!PBReaderPlaceMark() || !NSPPrivacyProxyGetQuotaResponseReadFrom(v18, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3))
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v13 = 0;
        while (1)
        {
          LOBYTE(v21[0]) = 0;
          v14 = [a2 position] + 1;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 1, v15 <= objc_msgSend(a2, "length")))
          {
            v16 = [a2 data];
            [v16 getBytes:v21 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((SLOBYTE(v21[0]) & 0x80000000) == 0)
          {
            break;
          }

          if (v13++ > 8)
          {
            goto LABEL_34;
          }
        }

        [a2 hasError];
      }

LABEL_34:
      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSPPrivacyProxyGetQuotaRequestReadFrom(uint64_t a1, void *a2)
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
        v13 = PBReaderReadString();
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

uint64_t NSPPrivacyProxyTokenInfoReadFrom(char *a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v16 = 8;
LABEL_30:
          v14 = *&a1[v16];
          *&a1[v16] = v15;
LABEL_31:

          goto LABEL_32;
        }

        if (v13 == 2)
        {
          v15 = PBReaderReadData();
          v16 = 16;
          goto LABEL_30;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadData();
            if (v14)
            {
              [a1 addUnactivatedTokenList:v14];
            }

            goto LABEL_31;
          case 4:
            v15 = PBReaderReadString();
            v16 = 40;
            goto LABEL_30;
          case 5:
            v14 = PBReaderReadData();
            if (v14)
            {
              [a1 addTokenRequestList:v14];
            }

            goto LABEL_31;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id nplog_large_obj()
{
  if (nplog_large_obj_g_large_init != -1)
  {
    dispatch_once(&nplog_large_obj_g_large_init, &__block_literal_global_4);
  }

  v1 = nplog_large_obj_large_log_obj;

  return v1;
}

uint64_t __nplog_large_obj_block_invoke()
{
  nplog_large_obj_large_log_obj = os_log_create("com.apple.networkserviceproxy", "Large");

  return MEMORY[0x1EEE66BB8]();
}

void nsp_print_backtrace()
{
  v42 = *MEMORY[0x1E69E9840];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  v0 = backtrace(v10, 128);
  v1 = backtrace_symbols(v10, v0);
  v2 = v1;
  if (v0 >= 1)
  {
    v3 = v0;
    v4 = v1;
    do
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *v4;
        *buf = 136315138;
        v9 = v6;
        _os_log_error_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_ERROR, "    %s", buf, 0xCu);
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  free(v2);
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t NSPPrivacyProxySignedConfigurationReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
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
        if (v13 == 3)
        {
          v23 = PBReaderReadData();
          if (v23)
          {
            [a1 addCertificates:v23];
          }

LABEL_39:

          goto LABEL_44;
        }

        if (v13 == 4)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v26[0]) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v26[0] & 0x7F) << v16;
            if ((v26[0] & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_43;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_43:
          *(a1 + 8) = v22;
          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v23 = objc_alloc_init(NSPPrivacyProxyConfiguration);
          objc_storeStrong((a1 + 24), v23);
          v26[0] = 0;
          v26[1] = 0;
          if (!PBReaderPlaceMark() || !NSPPrivacyProxyConfigurationReadFrom(v23, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_39;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadData();
          v15 = *(a1 + 32);
          *(a1 + 32) = v14;

          goto LABEL_44;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_44:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSPPrivacyProxyConfigurationRawConfig(void *a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v3];
    if (v4)
    {
      do
      {
        v5 = [v4 position];
        if (v5 >= [v4 length] || (objc_msgSend(v4, "hasError") & 1) != 0)
        {
          break;
        }

        v6 = 0;
        v7 = 0;
        v8 = 0;
        while (1)
        {
          v15 = 0;
          v9 = [v4 position] + 1;
          if (v9 >= [v4 position] && (v10 = objc_msgSend(v4, "position") + 1, v10 <= objc_msgSend(v4, "length")))
          {
            v11 = [v4 data];
            [v11 getBytes:&v15 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v8 |= (v15 & 0x7F) << v6;
          if ((v15 & 0x80) == 0)
          {
            break;
          }

          v6 += 7;
          if (v7++ >= 9)
          {
            v8 = 0;
            goto LABEL_16;
          }
        }

        if ([v4 hasError])
        {
          v8 = 0;
        }

LABEL_16:
        v13 = 0;
        if (([v4 hasError] & 1) != 0 || (v8 & 7) == 4)
        {
          goto LABEL_21;
        }

        if ((v8 >> 3) == 1)
        {
          *a2 = PBReaderReadData();
          v13 = [v4 hasError] ^ 1;
          goto LABEL_21;
        }
      }

      while ((PBReaderSkipValueWithTag() & 1) != 0);
    }

    v13 = 0;
LABEL_21:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t NSPPrivacyProxyConfigurationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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
      LOBYTE(v53) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v53 & 0x7F) << v5;
      if ((v53 & 0x80) == 0)
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v53) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v53 & 0x7F) << v13;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_104:
            v50 = 136;
            goto LABEL_117;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        goto LABEL_104;
      case 2u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 144) |= 4u;
        while (1)
        {
          LOBYTE(v53) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v53 & 0x7F) << v24;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            LOBYTE(v30) = 0;
            goto LABEL_100;
          }
        }

        v30 = (v26 != 0) & ~[a2 hasError];
LABEL_100:
        *(a1 + 140) = v30;
        goto LABEL_118;
      case 3u:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 144) |= 1u;
        while (1)
        {
          LOBYTE(v53) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v53 & 0x7F) << v31;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            v37 = 0;
            goto LABEL_108;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v33;
        }

LABEL_108:
        *(a1 + 8) = v37;
        goto LABEL_118;
      case 5u:
        v20 = objc_alloc_init(NSPPrivacyProxyAuthenticationInfo);
        objc_storeStrong((a1 + 16), v20);
        v53 = 0;
        v54 = 0;
        if (!PBReaderPlaceMark() || !NSPPrivacyProxyAuthenticationInfoReadFrom(v20, a2))
        {
          goto LABEL_120;
        }

        goto LABEL_95;
      case 6u:
        v20 = objc_alloc_init(NSPPrivacyProxyPolicyTierMap);
        [a1 addPolicyTierMap:v20];
        v53 = 0;
        v54 = 0;
        if (!PBReaderPlaceMark() || !NSPPrivacyProxyPolicyTierMapReadFrom(v20, a2))
        {
          goto LABEL_120;
        }

        goto LABEL_95;
      case 7u:
        v20 = objc_alloc_init(NSPPrivacyProxyProxyInfo);
        [a1 addProxies:v20];
        v53 = 0;
        v54 = 0;
        if (!PBReaderPlaceMark() || !NSPPrivacyProxyProxyInfoReadFrom(v20, a2))
        {
          goto LABEL_120;
        }

        goto LABEL_95;
      case 8u:
        v20 = objc_alloc_init(NSPPrivacyProxyProxyPathWeight);
        [a1 addPathWeights:v20];
        goto LABEL_81;
      case 9u:
        v20 = objc_alloc_init(NSPPrivacyProxyResolverInfo);
        [a1 addResolvers:v20];
        goto LABEL_65;
      case 0xAu:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        while (1)
        {
          LOBYTE(v53) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v53 & 0x7F) << v44;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_116;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v46;
        }

LABEL_116:
        v50 = 48;
        goto LABEL_117;
      case 0xBu:
        v20 = objc_alloc_init(NSPPrivacyProxyProxyPathWeight);
        [a1 addFallbackPathWeights:v20];
LABEL_81:
        v53 = 0;
        v54 = 0;
        if (!PBReaderPlaceMark() || !NSPPrivacyProxyProxyPathWeightReadFrom(v20, a2))
        {
          goto LABEL_120;
        }

        goto LABEL_95;
      case 0xCu:
        v21 = PBReaderReadString();
        v22 = 112;
        goto LABEL_35;
      case 0xDu:
        v20 = objc_alloc_init(NSPPrivacyProxyResolverInfo);
        objc_storeStrong((a1 + 24), v20);
LABEL_65:
        v53 = 0;
        v54 = 0;
        if (!PBReaderPlaceMark() || !NSPPrivacyProxyResolverInfoReadFrom(v20, a2))
        {
          goto LABEL_120;
        }

        goto LABEL_95;
      case 0xEu:
        v21 = PBReaderReadString();
        v22 = 32;
LABEL_35:
        v23 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_118;
      case 0xFu:
        v20 = objc_alloc_init(NSPPrivacyProxyObliviousHTTPConfig);
        [a1 addObliviousConfigs:v20];
        v53 = 0;
        v54 = 0;
        if (!PBReaderPlaceMark() || !NSPPrivacyProxyObliviousHTTPConfigReadFrom(v20, a2))
        {
          goto LABEL_120;
        }

        goto LABEL_95;
      case 0x10u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 144) |= 2u;
        while (1)
        {
          LOBYTE(v53) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v53 & 0x7F) << v38;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_112;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v40;
        }

LABEL_112:
        v50 = 80;
LABEL_117:
        *(a1 + v50) = v19;
        goto LABEL_118;
      case 0x11u:
        v20 = objc_alloc_init(NSPPrivacyProxyProxiedContentMap);
        [a1 addProxiedContentMaps:v20];
        v53 = 0;
        v54 = 0;
        if (!PBReaderPlaceMark() || !NSPPrivacyProxyProxiedContentMapReadFrom(v20, a2))
        {
          goto LABEL_120;
        }

        goto LABEL_95;
      case 0x12u:
        v20 = PBReaderReadString();
        if (v20)
        {
          [a1 addTrustedNetworkDiscoveredProxies:v20];
        }

        goto LABEL_96;
      case 0x13u:
        v20 = objc_alloc_init(NSPPrivacyProxyQuotaInfo);
        objc_storeStrong((a1 + 104), v20);
        v53 = 0;
        v54 = 0;
        if (PBReaderPlaceMark() && NSPPrivacyProxyQuotaInfoReadFrom(v20, a2))
        {
LABEL_95:
          PBReaderRecallMark();
LABEL_96:

LABEL_118:
          v51 = [a2 position];
          if (v51 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_120:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_118;
    }
  }
}

uint64_t NSPPrivacyProxyErrorResponseReadFrom(uint64_t a1, void *a2)
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
        v13 = PBReaderReadString();
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

uint64_t NSPPrivacyProxyTokenAttesterReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
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
        v23 = objc_alloc_init(NSPPrivacyProxyTokenIssuer);
        [a1 addAssociatedIssuers:v23];
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !NSPPrivacyProxyTokenIssuerReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v21 = PBReaderReadString();
        v22 = *(a1 + 16);
        *(a1 + 16) = v21;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v26[0] & 0x7F) << v14;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_38;
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

LABEL_38:
        *(a1 + 24) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSPPrivacyProxyTransparencyOHTTPEntryReadFrom(void *a1, void *a2)
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
        LOBYTE(v33[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33[0] & 0x7F) << v5;
        if ((v33[0] & 0x80) == 0)
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
        break;
      }

      if (v13 != 3)
      {
        if (v13 == 4)
        {
          v21 = PBReaderReadData();
          v22 = a1[3];
          a1[3] = v21;

          goto LABEL_55;
        }

        goto LABEL_32;
      }

      v29 = objc_alloc_init(NSPPrivacyProxyObliviousTargetInfo);
      [a1 addTargetInformation:v29];
      v33[0] = 0;
      v33[1] = 0;
      if (!PBReaderPlaceMark() || !NSPPrivacyProxyObliviousTargetInfoReadFrom(v29, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_55:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v26 = [a2 position] + 1;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v25 |= (v33[0] & 0x7F) << v23;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v11 = v24++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_53;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v25;
      }

LABEL_53:
      v30 = 2;
      goto LABEL_54;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v33[0] & 0x7F) << v14;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_49;
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

LABEL_49:
      v30 = 1;
LABEL_54:
      a1[v30] = v20;
      goto LABEL_55;
    }

LABEL_32:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_55;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSPPrivacyProxyPolicyTierMapReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(NSPPrivacyProxyPolicy);
        objc_storeStrong((a1 + 8), v20);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !NSPPrivacyProxyPolicyReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        *(a1 + 16) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSPPrivacyProxyCostReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
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
        *(a1 + 24) |= 1u;
        v23 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v17 = [a2 data];
          [v17 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v18 = v23;
        v19 = &OBJC_IVAR___NSPPrivacyProxyCost__limit;
LABEL_31:
        *(a1 + *v19) = v18;
        goto LABEL_32;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + 24) |= 2u;
    v23 = 0;
    v15 = [a2 position] + 8;
    if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
    {
      v20 = [a2 data];
      [v20 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v18 = v23;
    v19 = &OBJC_IVAR___NSPPrivacyProxyCost__remaining;
    goto LABEL_31;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSPPrivacyProxySuccessResponseReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(NSPPrivacyProxyQuota);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !NSPPrivacyProxyQuotaReadFrom(v13, a2))
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

uint64_t NSPPrivacyProxyPolicyReadFrom(uint64_t a1, void *a2)
{
  v3 = [a2 position];
  if (v3 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v7 = [a2 position] + 1;
        if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
        {
          v9 = [a2 data];
          [v9 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v6 |= (v27[0] & 0x7F) << v4;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v4 += 7;
        v10 = v5++ >= 9;
        if (v10)
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

      if ((v11 >> 3) == 1)
      {
        if ((v11 & 7) == 2)
        {
          v27[0] = 0;
          v27[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v13 = [a2 position];
            if (v13 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              v28 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v28 & 0x7F) << v14;
              if ((v28 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v10 = v15++ >= 9;
              if (v10)
              {
                goto LABEL_32;
              }
            }

            [a2 hasError];
LABEL_32:
            PBRepeatedInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v27[0] & 0x7F) << v20;
            if ((v27[0] & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v10 = v21++ >= 9;
            if (v10)
            {
              goto LABEL_46;
            }
          }

          [a2 hasError];
LABEL_46:
          PBRepeatedInt32Add();
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSPPrivacyProxyTransparencyTokenEntryReadFrom(void *a1, void *a2)
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
        LOBYTE(v33[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33[0] & 0x7F) << v5;
        if ((v33[0] & 0x80) == 0)
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
        break;
      }

      if (v13 == 3)
      {
        v28 = PBReaderReadString();
        v29 = a1[3];
        a1[3] = v28;

        goto LABEL_55;
      }

      if (v13 != 4)
      {
        goto LABEL_34;
      }

      v21 = objc_alloc_init(NSPPrivacyProxyTokenKey);
      [a1 addTokenKeys:v21];
      v33[0] = 0;
      v33[1] = 0;
      if (!PBReaderPlaceMark() || !NSPPrivacyProxyTokenKeyReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_55:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v33[0] & 0x7F) << v22;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v11 = v23++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_53;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v24;
      }

LABEL_53:
      v30 = 2;
      goto LABEL_54;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v33[0] & 0x7F) << v14;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_49;
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

LABEL_49:
      v30 = 1;
LABEL_54:
      a1[v30] = v20;
      goto LABEL_55;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_55;
  }

  return [a2 hasError] ^ 1;
}

void sub_1AE8300BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t NSPPrivacyProxyProxyPathWeightReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v35[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35[0] & 0x7F) << v5;
        if ((v35[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        if ((v12 & 7) == 2)
        {
          v35[0] = 0;
          v35[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v21 = [a2 position];
            if (v21 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              v36 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v36 & 0x7F) << v22;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                goto LABEL_42;
              }
            }

            [a2 hasError];
LABEL_42:
            PBRepeatedUInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          while (1)
          {
            LOBYTE(v35[0]) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v35[0] & 0x7F) << v28;
            if ((v35[0] & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              goto LABEL_60;
            }
          }

          [a2 hasError];
LABEL_60:
          PBRepeatedUInt32Add();
        }
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v35[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v35[0] & 0x7F) << v13;
          if ((v35[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_48:
        *(a1 + 32) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSPPrivacyProxyAuxiliaryAuthInfoReadFrom(uint64_t a1, void *a2)
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
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
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
        v23 = PBReaderReadData();
        if (v23)
        {
          [a1 addContentList:v23];
        }
      }

      else if (v13 == 2)
      {
        v21 = PBReaderReadString();
        v22 = *(a1 + 24);
        *(a1 + 24) = v21;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          v27 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v27 & 0x7F) << v14;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_38;
          }
        }

        v20 = [a2 hasError] ? 0 : v16;
LABEL_38:
        *(a1 + 8) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSPPrivacyProxyObliviousTargetInfoReadFrom(_BYTE *a1, void *a2)
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
        v34 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
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
          v15 = PBReaderReadString();
          v16 = 32;
        }

        else
        {
          if (v13 != 2)
          {
LABEL_47:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_58;
          }

          v15 = PBReaderReadString();
          v16 = 24;
        }

        v30 = *&a1[v16];
        *&a1[v16] = v15;
      }

      else
      {
        if (v13 == 3)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          a1[44] |= 1u;
          while (1)
          {
            v36 = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v36 & 0x7F) << v17;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_52:
          v32 = 16;
          goto LABEL_57;
        }

        if (v13 == 4)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          a1[44] |= 2u;
          while (1)
          {
            v35 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v35 & 0x7F) << v24;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_56;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v26;
          }

LABEL_56:
          v32 = 40;
LABEL_57:
          *&a1[v32] = v23;
          goto LABEL_58;
        }

        if (v13 != 5)
        {
          goto LABEL_47;
        }

        v14 = PBReaderReadString();
        if (v14)
        {
          [a1 addProcesses:v14];
        }
      }

LABEL_58:
      v33 = [a2 position];
    }

    while (v33 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x1EEDB6B60](calendar, v3, at);
}