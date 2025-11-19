uint64_t sub_1000012D4(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___AWDHeaderInfoS__vendorVersion;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___AWDHeaderInfoS__daemonVersion;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_100001880(id a1)
{
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  qword_100080798 = [NSSet setWithObjects:v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0];

  _objc_release_x1();
}

void sub_100001A00(id a1)
{
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  qword_1000807A8 = [NSSet setWithObjects:v13, v12, v11, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0];

  _objc_release_x1();
}

void sub_100001ED4(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CTCSXPCServiceProtocol];
  v2 = qword_1000807B0;
  qword_1000807B0 = v1;

  v3 = qword_1000807B0;

  [XPCInterface CTCSSetExpectedClassesForXPCBrokerInterface:v3];
}

uint64_t sub_10000225C(uint64_t a1, void *a2)
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
        v22 = 0;
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
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100002938(uint64_t a1, void *a2)
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
        v21 = objc_alloc_init(AWDHeaderInfoS);
        objc_storeStrong((a1 + 16), v21);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !sub_1000012D4(v21, a2))
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

uint64_t sub_10000351C(uint64_t a1, void *a2)
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
        LOBYTE(v38[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38[0] & 0x7F) << v5;
        if ((v38[0] & 0x80) == 0)
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
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v38[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v38[0] & 0x7F) << v22;
          if ((v38[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_61;
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

LABEL_61:
        *(a1 + 8) = v28;
        goto LABEL_67;
      }

      if (v13 != 2)
      {
        goto LABEL_34;
      }

      v14 = objc_alloc_init(AWDHeaderInfoS);
      objc_storeStrong((a1 + 16), v14);
      v38[0] = 0;
      v38[1] = 0;
      if (!PBReaderPlaceMark() || !sub_1000012D4(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_67:
      v36 = [a2 position];
      if (v36 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      *(a1 + 32) |= 4u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v38[0] & 0x7F) << v29;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v11 = v30++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_65;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v31;
      }

LABEL_65:
      v35 = 28;
      goto LABEL_66;
    }

    if (v13 == 4)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *(a1 + 32) |= 2u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v38[0] & 0x7F) << v15;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_57;
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

LABEL_57:
      v35 = 24;
LABEL_66:
      *(a1 + v35) = v21;
      goto LABEL_67;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_67;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000041EC(uint64_t a1, void *a2)
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
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v21 = objc_alloc_init(AWDHeaderInfoS);
        objc_storeStrong((a1 + 16), v21);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !sub_1000012D4(v21, a2))
        {
          goto LABEL_43;
        }

LABEL_34:
        PBReaderRecallMark();

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
          LOBYTE(v24) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v24 & 0x7F) << v14;
          if ((v24 & 0x80) == 0)
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

    v21 = objc_alloc_init(AWDCtcsReadWriteStabilityS);
    objc_storeStrong((a1 + 24), v21);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !sub_10000225C(v21, a2))
    {
LABEL_43:

      return 0;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100004A24(int a1)
{
  v1 = dword_100080420;
  dword_100080420 = a1;
  return v1;
}

void sub_100004A5C(const __CFString *a1, const void *a2, char *cStr)
{
  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  CFPreferencesSetAppValue(a1, a2, v5);
  if (v5)
  {

    CFRelease(v5);
  }
}

CFPropertyListRef sub_100004AD8(const __CFString *a1)
{
  result = CFPreferencesCopyAppValue(a1, @"com.apple.threadradiodData");
  if (!result)
  {

    return CFPreferencesCopyAppValue(a1, @"/System/Library/PrivateFrameworks/CoreThreadRadio.framework/com.apple.threadradiodData.plist");
  }

  return result;
}

CFPropertyListRef sub_100004B30(const __CFString *a1, const char *a2)
{
  v3 = CFStringCreateWithCString(0, a2, 0x8000100u);
  v4 = CFPreferencesCopyAppValue(a1, v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

const __CFString *sub_100004BAC(char *cStr)
{
  result = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (result)
  {
    v2 = result;
    v3 = CFPreferencesAppSynchronize(result);
    CFRelease(v2);
    return (v3 != 0);
  }

  return result;
}

void sub_100004BFC(char *cStr, char *__s)
{
  if (__s && strlen(__s) >= 0xFB)
  {
    v4 = sub_100007454(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v10 = 67109634;
      *v11 = 250;
      *&v11[4] = 2080;
      *&v11[6] = cStr;
      v12 = 2080;
      v13 = __s;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Error: Input string value length is greater than %d. For key =>  %s . string value is => %s", &v10, 0x1Cu);
    }
  }

  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v6 = CFStringCreateWithCString(0, __s, 0x8000100u);
  v7 = v6;
  if (v5 && v6)
  {
    CFPreferencesSetAppValue(v5, v6, @"com.apple.threadradiodData");
    if (!CFPreferencesAppSynchronize(@"com.apple.threadradiodData"))
    {
      v8 = sub_100007454(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 136315138;
        *v11 = cStr;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Failed to Sync key: %s", &v10, 0xCu);
      }
    }

LABEL_15:
    CFRelease(v5);
    goto LABEL_16;
  }

  v9 = sub_100007454(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Failed to save saveStringValue due to null input.", &v10, 2u);
  }

  if (v5)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_100004DF0(char *cStr)
{
  v2 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  CFPreferencesSetAppValue(v2, 0, @"com.apple.threadradiodData");
  if (!CFPreferencesAppSynchronize(@"com.apple.threadradiodData"))
  {
    v3 = sub_100007454(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = cStr;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Failed to Sync key: %s", &v4, 0xCu);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

BOOL sub_100004EE4(char *cStr, double a2)
{
  valuePtr = a2;
  v3 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v4 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  v5 = sub_100007454(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v11 = "BOOL saveDoubleValue(const char *, double)";
    v12 = 1024;
    v13 = 134;
    v14 = 2080;
    v15 = cStr;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s:%d: - key = %s, v = %@", buf, 0x26u);
  }

  CFPreferencesSetAppValue(v3, v4, @"com.apple.threadradiodData");
  v6 = CFPreferencesAppSynchronize(@"com.apple.threadradiodData");
  if (v6)
  {
    if (!v3)
    {
      goto LABEL_11;
    }

LABEL_10:
    CFRelease(v3);
    goto LABEL_11;
  }

  v7 = sub_100007454(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "BOOL saveDoubleValue(const char *, double)";
    v12 = 1024;
    v13 = 139;
    v14 = 2080;
    v15 = cStr;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s:%d: Failed to Sync key: %s", buf, 0x1Cu);
  }

  if (v3)
  {
    CFPreferencesSetAppValue(v3, 0, @"com.apple.threadradiodData");
    goto LABEL_10;
  }

LABEL_11:
  if (v4)
  {
    CFRelease(v4);
  }

  return v6 != 0;
}

void sub_1000050D8(char *cStr, int a2)
{
  valuePtr = a2;
  v3 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v5 = sub_100007454(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = cStr;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "saveIntValue - key = %s, v = %@", buf, 0x16u);
  }

  CFPreferencesSetAppValue(v3, v4, @"com.apple.threadradiodData");
  if (!CFPreferencesAppSynchronize(@"com.apple.threadradiodData"))
  {
    v6 = sub_100007454(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v9 = cStr;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Failed to Sync key: %s", buf, 0xCu);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_100005254(char *cStr, uint64_t a2, char *a3)
{
  valuePtr = a2;
  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v6 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  v7 = sub_100007454(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = cStr;
    v12 = 2112;
    v13 = v6;
    v14 = 2048;
    v15 = valuePtr;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "saveLLIntValue - key = %s, v = %@, val = 0x%llx", buf, 0x20u);
  }

  sub_100004A5C(v5, v6, a3);
  if ((sub_100004BAC(a3) & 1) == 0)
  {
    v8 = sub_100007454(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = cStr;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Failed to Sync key: %s", buf, 0xCu);
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_1000053E4(char *cStr, char *a2)
{
  v4 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  sub_100004A5C(v4, 0, a2);
  if ((sub_100004BAC(a2) & 1) == 0)
  {
    v5 = sub_100007454(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = cStr;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Failed to Sync key: %s", &v6, 0xCu);
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t sub_1000054D4(char *cStr)
{
  v2 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  valuePtr = 0;
  v3 = sub_100004AD8(v2);
  v4 = sub_100007454(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = cStr;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "getIntValue - key = %s, v = %@", buf, 0x16u);
  }

  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return valuePtr;
}

uint64_t sub_1000055FC(char *cStr, const char *a2)
{
  v4 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  valuePtr = 0;
  v5 = sub_100004B30(v4, a2);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v6, kCFNumberLongLongType, &valuePtr);
    }
  }

  v8 = sub_100007454(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = cStr;
    v13 = 2112;
    v14 = v6;
    v15 = 2048;
    v16 = valuePtr;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "getLLIntValue - key = %s, v = %@, value = 0x%llx", buf, 0x20u);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return valuePtr;
}

double sub_10000573C(char *cStr)
{
  v2 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  valuePtr = 0.0;
  v3 = sub_100004AD8(v2);
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberDoubleType, &valuePtr);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v6 = sub_100007454(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v10 = "double getDoubleValue(const char *)";
    v11 = 1024;
    v12 = 277;
    v13 = 2080;
    v14 = cStr;
    v15 = 2048;
    v16 = valuePtr;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s:%d:  - key = %s, v = %f", buf, 0x26u);
  }

  return valuePtr;
}

__int128 *sub_10000588C(char *cStr)
{
  v1 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v2 = &xmmword_100080828;
  xmmword_100080828 = 0u;
  unk_100080838 = 0u;
  xmmword_100080848 = 0u;
  unk_100080858 = 0u;
  xmmword_100080868 = 0u;
  unk_100080878 = 0u;
  xmmword_100080888 = 0u;
  unk_100080898 = 0u;
  xmmword_1000808A8 = 0u;
  unk_1000808B8 = 0u;
  xmmword_1000808C8 = 0u;
  unk_1000808D8 = 0u;
  xmmword_1000808E8 = 0u;
  unk_1000808F8 = 0u;
  xmmword_100080908 = 0u;
  *(&xmmword_100080908 + 10) = 0u;
  v3 = sub_100004AD8(v1);
  v4 = v3;
  if (!v3 || (v5 = CFGetTypeID(v3), v5 != CFStringGetTypeID()))
  {
    v2 = 0;
    if (!v1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (!CFStringGetCString(v4, &xmmword_100080828, 250, 0x8000100u))
  {
    v2 = 0;
  }

  if (v1)
  {
LABEL_8:
    CFRelease(v1);
  }

LABEL_9:
  if (v4)
  {
    CFRelease(v4);
  }

  return v2;
}

void sub_100005964(char *cStr, char *a2, int a3)
{
  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v6 = sub_100004AD8(v5);
  v7 = v6;
  if (v6)
  {
    v8 = CFGetTypeID(v6);
    if (v8 == CFStringGetTypeID())
    {
      CFStringGetCString(v7, a2, a3, 0x8000100u);
      v9 = sub_100007454(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = 136315138;
        v11 = a2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "getStringValueLocal: Read String: %s", &v10, 0xCu);
      }
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

BOOL sub_100005A8C(char *cStr, uint64_t a2)
{
  keyExistsAndHasValidFormat = 0;
  v4 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (v4)
  {
    v5 = v4;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(v4, @"com.apple.threadradiodData", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v7 = AppBooleanValue;
LABEL_11:
      CFRelease(v5);
      return v7 != 0;
    }

    v9 = sub_100007454(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000557D0(cStr, v9);
    }

    keyExistsAndHasValidFormat = 0;
    v7 = CFPreferencesGetAppBooleanValue(v5, @"/System/Library/PrivateFrameworks/CoreThreadRadio.framework/com.apple.threadradiodData.plist", &keyExistsAndHasValidFormat);
    v10 = sub_100007454(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = "true";
      v16 = "getBoolValue_isFeatureEnabled";
      *buf = 136315906;
      v17 = 2080;
      if (!keyExistsAndHasValidFormat)
      {
        v13 = "false";
      }

      v18 = cStr;
      v19 = 2080;
      v20 = v13;
      v21 = 1024;
      v22 = v7;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: [%s]:Fallback to Frameworks, keyPresent = %s, Value = %d", buf, 0x26u);
    }

    if (keyExistsAndHasValidFormat)
    {
      goto LABEL_11;
    }

    v12 = sub_100007454(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10005585C(a2, v12);
    }

    CFRelease(v5);
  }

  else
  {
    v8 = sub_100007454(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100055900(v8);
    }

    return 0;
  }

  return a2;
}

BOOL sub_100005CA8()
{
  v0 = sub_100007454(1);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "clearThreadConfiguration";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Entered in %s", &v6, 0xCu);
  }

  v1 = CFStringCreateWithCString(0, "TC", 0x8000100u);
  v2 = CFStringCreateWithCString(0, "com.apple.threadradiodData", 0x8000100u);
  CFPreferencesSetAppValue(v1, 0, v2);
  v3 = CFPreferencesAppSynchronize(@"com.apple.threadradiodData");
  if (!v3)
  {
    v4 = sub_100007454(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Failed to Sync Thread Credentials ", &v6, 2u);
    }
  }

  if (v1)
  {
    CFRelease(v1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return v3 != 0;
}

void sub_100005E20(int a1, uint64_t a2, const char *a3, unsigned __int8 *a4, const char *a5, int a6)
{
  valuePtr = a1;
  v23 = a2;
  v22 = a6;
  sub_1000085B4(a4, 16, v33, 0x24uLL, 0);
  v12 = sub_100007454(1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 67110402;
    *&buf[4] = a1;
    *&buf[8] = 2048;
    *&buf[10] = a2;
    *&buf[18] = 2080;
    *&buf[20] = a3;
    *&buf[28] = 2080;
    *&buf[30] = v33;
    *&buf[38] = 2080;
    *&buf[40] = a5;
    v31 = 1024;
    v32 = a6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Saving TC as follows - PANID: %d, XPANID: %llu, NWName: %s, key: %s, PSKc: %s, ch = %d", buf, 0x36u);
  }

  *buf = *&off_100078890;
  *&buf[16] = *&off_1000788A0;
  *&buf[32] = *&off_1000788B0;
  values[0] = CFNumberCreate(0, kCFNumberShortType, &valuePtr);
  values[1] = CFNumberCreate(0, kCFNumberLongLongType, &v23);
  values[2] = CFStringCreateWithCString(0, a3, 0x8000100u);
  values[3] = CFDataCreate(0, a4, 16);
  values[4] = CFStringCreateWithCString(0, a5, 0x8000100u);
  values[5] = CFNumberCreate(0, kCFNumberIntType, &v22);
  v13 = CFDictionaryCreate(kCFAllocatorDefault, buf, values, 6, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v14 = sub_100007454(1);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v25 = 138412546;
    v26 = v13;
    v27 = 2112;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Saving TC Dict (%@): %@", v25, 0x16u);
  }

  if (v13)
  {
    v15 = CFStringCreateWithCString(0, "TC", 0x8000100u);
    v16 = CFStringCreateWithCString(0, "com.apple.threadradiodData", 0x8000100u);
    v17 = v16;
    if (v15 && v16)
    {
      CFPreferencesSetAppValue(v15, v13, v16);
      if (!CFPreferencesAppSynchronize(@"com.apple.threadradiodData"))
      {
        v18 = sub_100007454(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Failed to Sync Thread Credentials", v25, 2u);
        }
      }

      CFRelease(v13);
    }

    else
    {
      v19 = sub_100007454(1);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Failed to save Thread Credentials", v25, 2u);
      }

      if (!v15)
      {
        goto LABEL_17;
      }
    }

    CFRelease(v15);
LABEL_17:
    if (v17)
    {
      CFRelease(v17);
    }
  }

  for (i = 0; i != 6; ++i)
  {
    v21 = values[i];
    if (v21)
    {
      CFRelease(v21);
      if (values[i])
      {
        CFRelease(*&buf[i * 8]);
      }
    }
  }
}

void sub_1000061D0(const char *a1, const char *a2, const char *a3, const char *a4, const char *a5, int a6)
{
  valuePtr = a6;
  v12 = sub_100007454(1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136316418;
    *&buf[4] = a1;
    *&buf[12] = 2080;
    *&buf[14] = a2;
    *&buf[22] = 2080;
    *&buf[24] = a3;
    *v23 = 2080;
    *&v23[2] = a4;
    *&v23[10] = 2080;
    *&v23[12] = a5;
    v24 = 1024;
    v25 = a6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Saving TC as follows - PANID: %s, XPANID: %s, NWName: %s, key: %s, PSKc: %s, ch = %d", buf, 0x3Au);
  }

  *buf = *&off_100078890;
  *&buf[16] = *&off_1000788A0;
  *v23 = *&off_1000788B0;
  values[0] = CFStringCreateWithCString(0, a1, 0x8000100u);
  values[1] = CFStringCreateWithCString(0, a2, 0x8000100u);
  values[2] = CFStringCreateWithCString(0, a3, 0x8000100u);
  values[3] = CFStringCreateWithCString(0, a4, 0x8000100u);
  values[4] = CFStringCreateWithCString(0, a5, 0x8000100u);
  values[5] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v13 = CFDictionaryCreate(kCFAllocatorDefault, buf, values, 6, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v14 = sub_100007454(1);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v19 = 138412290;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Saving TC Dict: %@", v19, 0xCu);
  }

  if (v13)
  {
    CFPreferencesSetAppValue(@"TC", v13, @"com.apple.threadradiodData");
    if (!CFPreferencesAppSynchronize(@"com.apple.threadradiodData"))
    {
      v15 = sub_100007454(1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Failed to Sync Thread Credentials", v19, 2u);
      }
    }

    CFRelease(v13);
  }

  for (i = 0; i != 48; ++i)
  {
    v17 = values[i];
    if (v17)
    {
      CFRelease(v17);
      if (values[i])
      {
        CFRelease(*&buf[i * 8]);
      }
    }
  }
}

void sub_1000064B0(const __CFDictionary *a1, const char *a2, char *a3, int a4)
{
  value = 0;
  v7 = CFStringCreateWithCString(0, a2, 0x8000100u);
  CFDictionaryGetValueIfPresent(a1, v7, &value);
  if (value)
  {
    v8 = CFGetTypeID(value);
    if (v8 == CFStringGetTypeID())
    {
      CFStringGetCString(value, a3, a4, 0x8000100u);
      v9 = sub_100007454(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v12 = a3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Read String: %s", buf, 0xCu);
      }
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_1000065D0(const __CFDictionary *a1, const char *a2, unsigned __int16 a3)
{
  valuePtr = a3;
  cf = 0;
  v4 = CFStringCreateWithCString(0, a2, 0x8000100u);
  CFDictionaryGetValueIfPresent(a1, v4, &cf);
  if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(cf, kCFNumberShortType, &valuePtr);
      v6 = sub_100007454(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v10 = valuePtr;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Read value: %d", buf, 8u);
      }
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1000066E0(const __CFDictionary *a1, const char *a2, uint64_t a3)
{
  cf = 0;
  valuePtr = a3;
  v4 = CFStringCreateWithCString(0, a2, 0x8000100u);
  CFDictionaryGetValueIfPresent(a1, v4, &cf);
  if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(cf, kCFNumberLongLongType, &valuePtr);
      v6 = sub_100007454(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v10 = valuePtr;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Read long long value: %llu", buf, 0xCu);
      }
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1000067EC(const __CFDictionary *a1, const char *a2, UInt8 *a3, unsigned int a4)
{
  value = 0;
  v7 = CFStringCreateWithCString(0, a2, 0x8000100u);
  CFDictionaryGetValueIfPresent(a1, v7, &value);
  if (value)
  {
    v8 = CFGetTypeID(value);
    if (v8 == CFDataGetTypeID())
    {
      v9 = a4;
      v18.location = 0;
      v18.length = a4;
      CFDataGetBytes(value, v18, a3);
      __chkstk_darwin();
      v11 = &v14 - v10;
      sub_1000085B4(a3, v9, &v14 - v10, v12, 0);
      v13 = sub_100007454(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Read Data value: %s", buf, 0xCu);
      }
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_100006960(uint64_t a1@<X8>)
{
  v2 = CFStringCreateWithCString(0, "TC", 0x8000100u);
  v3 = CFStringCreateWithCString(0, "com.apple.threadradiodData", 0x8000100u);
  v4 = CFPreferencesCopyAppValue(v2, v3);
  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 304) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v5 = sub_100007454(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Read TC Dict: %@", &v7, 0xCu);
  }

  if (v4)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v4))
    {
      sub_1000064B0(v4, "networkName", (a1 + 16), 256);
      sub_1000064B0(v4, "PSKc", (a1 + 288), 16);
      sub_1000065D0(v4, "channel", *(a1 + 304));
      sub_1000065D0(v4, "panid", *a1);
      sub_1000066E0(v4, "xpanid", *(a1 + 8));
      sub_1000067EC(v4, "masterKey", (a1 + 272), 0x10u);
    }

    CFRelease(v4);
  }
}

BOOL sub_100006B48(uint64_t a1, uint64_t a2, std::string *a3)
{
  memset(&v23, 0, sizeof(v23));
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  std::string::append(&v23, v7, v8);
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  std::string::append(&v23, v10, v11);
  v12 = sub_100007454(1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (*(a1 + 23) >= 0)
    {
      v14 = a1;
    }

    else
    {
      v14 = *a1;
    }

    v15 = &v23;
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v23.__r_.__value_.__r.__words[0];
    }

    *buf = 136315906;
    v25 = "getCommissionerPassPhrase";
    v26 = 2080;
    v27 = v13;
    v28 = 2080;
    v29 = v14;
    v30 = 2080;
    v31 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s : parameters - XPANID: %s, NWName: %s and key : %s", buf, 0x2Au);
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v23;
  }

  else
  {
    v16 = v23.__r_.__value_.__r.__words[0];
  }

  v17 = sub_10000588C(v16);
  if (v17)
  {
    v18 = sub_100007454(1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = &v23;
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = v23.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v25 = "getCommissionerPassPhrase";
      v26 = 2080;
      v27 = v17;
      v28 = 2080;
      v29 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s : Value found %s, key is %s ", buf, 0x20u);
    }

    std::string::append(a3, v17);
  }

  else
  {
    v20 = sub_100007454(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = &v23;
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v23.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      v25 = "getCommissionerPassPhrase";
      v26 = 2080;
      v27 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s : Value not found, key is %s ", buf, 0x16u);
    }
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return v17 != 0;
}

void sub_100006DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100006E1C(const std::string::value_type *a1, const std::string::value_type *a2, char *a3)
{
  memset(&v8, 0, sizeof(v8));
  std::string::append(&v8, a2);
  std::string::append(&v8, a1);
  v5 = sub_100007454(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = &v8;
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v8.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    v10 = "saveCommissionPassPhrasesAsString";
    v11 = 2080;
    v12 = v6;
    v13 = 2080;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : Saving Credentials string as follows key: %s, PassPhrase : %s", buf, 0x20u);
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v8;
  }

  else
  {
    v7 = v8.__r_.__value_.__r.__words[0];
  }

  sub_100004BFC(v7, a3);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

BOOL sub_100006F68()
{
  v14 = CFPreferencesCopyKeyList(@"com.apple.threadradiodData", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  v0 = sub_100007454(1);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "removekeyEntryFromPlist";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "%s: Copied KeyList", buf, 0xCu);
  }

  if (v14)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v1 = v14;
    v2 = [(__CFArray *)v1 countByEnumeratingWithState:&v15 objects:v23 count:16];
    v3 = v1;
    if (v2)
    {
      v4 = 0;
      v5 = *v16;
      do
      {
        for (i = 0; i != v2; i = i + 1)
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(v1);
          }

          v7 = *(*(&v15 + 1) + 8 * i);
          if ([(__CFString *)v7 containsString:@"MyHome"])
          {
            CFPreferencesSetAppValue(v7, 0, @"com.apple.threadradiodData");
            v8 = sub_100007454(1);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              v9 = v7;
              v10 = [(__CFString *)v7 UTF8String];
              *buf = 136315394;
              v20 = "removekeyEntryFromPlist";
              v21 = 2080;
              v22 = v10;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: Deleted key =>  %s", buf, 0x16u);
            }
          }

          else if (v4)
          {
            v4 = 1;
          }

          else
          {
            v4 = [(__CFString *)v7 isEqualToString:@"TC"];
          }
        }

        v2 = [(__CFArray *)v1 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v2);

      if ((v4 & 1) == 0)
      {
LABEL_22:
        v11 = sub_100007454(1);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v20 = "removekeyEntryFromPlist";
          v12 = "%s: function end. ";
LABEL_26:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v12, buf, 0xCu);
          goto LABEL_27;
        }

        goto LABEL_27;
      }

      CFPreferencesSetAppValue(@"TC", 0, @"com.apple.threadradiodData");
      v3 = sub_100007454(1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v20 = "removekeyEntryFromPlist";
        v21 = 2080;
        v22 = "TC";
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: Deleted key =>  %s", buf, 0x16u);
      }
    }

    goto LABEL_22;
  }

  v11 = sub_100007454(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "removekeyEntryFromPlist";
    v12 = "%s: Couldn't copy plist in NSArray object";
    goto LABEL_26;
  }

LABEL_27:

  return v14 != 0;
}

uint64_t sub_100007360()
{
  *v7 = 0x1500000001;
  v5 = 16;
  gettimeofday(&v4, &v3);
  v0 = sysctl(v7, 2u, &v6, &v5, 0, 0);
  if (v6)
  {
    v1 = v0 == -1;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return -1;
  }

  else
  {
    return v4.tv_sec - v6;
  }
}

__darwin_time_t sub_100007410()
{
  gettimeofday(&v3, &v2);
  if (v3.tv_sec)
  {
    v0 = stru_100080928.tv_sec == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    return -1;
  }

  else
  {
    return v3.tv_sec - stru_100080928.tv_sec;
  }
}

id sub_100007454(int a1)
{
  if (qword_1000807D0 != -1)
  {
    sub_100055984();
  }

  v2 = qword_1000807C0[a1];

  return v2;
}

void sub_1000074A8(id a1)
{
  v1 = os_log_create("com.apple.ThreadNetwork", "THClient");
  v2 = qword_1000807C0[0];
  qword_1000807C0[0] = v1;

  qword_1000807C8 = os_log_create("com.apple.ThreadNetwork", "THServer");

  _objc_release_x1();
}

uint64_t start()
{
  v0 = sub_100007454(1);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Enter Main", buf, 2u);
  }

  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(CTCSXPCService);
  if (!v2)
  {
    sub_100055998();
  }

  v3 = v2;
  v4 = sub_100007454(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "In Main", v8, 2u);
  }

  [(CTCSXPCService *)v3 run];
  CFRunLoopRun();

  objc_autoreleasePoolPop(v1);
  v5 = sub_100007454(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Exit Main", v7, 2u);
  }

  return 1;
}

void sub_1000076C8(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    Value = CFBooleanGetValue(v1);
    byte_1000807D8 = Value != 0;
    v4 = sub_100007454(1);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
    if (Value)
    {
      if (v5)
      {
        v9 = 136315650;
        v10 = "[CTCSUtils ctcsCheckIfUIBuild]_block_invoke";
        v11 = 2112;
        v12 = v2;
        v13 = 1024;
        v14 = byte_1000807D8;
        v6 = "%s : UI Build is installed, uiBuildRef : %@, uiBuild %d";
        v7 = v4;
        v8 = 28;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v6, &v9, v8);
      }
    }

    else if (v5)
    {
      v9 = 136315138;
      v10 = "[CTCSUtils ctcsCheckIfUIBuild]_block_invoke";
      v6 = "%s : NON UI Build is installed";
      v7 = v4;
      v8 = 12;
      goto LABEL_7;
    }

    CFRelease(v2);
  }
}

void sub_100007E38(uint64_t a1)
{
  v2 = +[NSDate date];
  [v2 timeIntervalSince1970];
  v4 = v3;

  v5 = sub_100007454(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ThreadNetworkManagerSelfHealHandler initSelfHealThreadNetworkTimer]_block_invoke";
    v8 = 1024;
    v9 = 105;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s:%d: Self heal thread network timer triggered : Timer Triggered timestamp :%f", &v6, 0x1Cu);
  }

  if (v4 > 1657720000.0 && sub_100004EE4("SelfHealTimeStamp", v4))
  {
    [*(a1 + 32) selfHealThreadNetworkTimerHandler];
  }
}

void sub_1000082A8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100007454(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100055BE8();
    }
  }

  else
  {
    v3 = sub_100007454(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "[ThreadNetworkManagerSelfHealHandler cleanUpThreadKeychainEntries]_block_invoke";
      v6 = 1024;
      v7 = 159;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s:%d:  Cleaned up the keychain database successfully.", &v4, 0x12u);
    }
  }
}

_BYTE *sub_100008444(_BYTE *result, uint64_t a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    *result++ = *(a2 - 1 + a3);
  }

  return result;
}

uint64_t sub_100008460(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = 0;
  v4 = (a3 + a2 - 1);
  do
  {
    v5 = *v4--;
    v6 = *(a1 + v3++) - v5;
  }

  while (v3 < a3 && !v6);
  return v6;
}

char *sub_10000849C(char *result, unint64_t a2)
{
  if (a2 >= 2)
  {
    v2 = a2 >> 1;
    v3 = &result[a2 - 1];
    do
    {
      v4 = *result;
      *result++ = *v3;
      *v3-- = v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1000084CC(_BYTE *a1, uint64_t a2, _BYTE *a3)
{
  v3 = *a3;
  if (*a3)
  {
    v4 = a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && a2 != 0)
  {
    v6 = a3;
    v7 = a2;
    v8 = a1;
    v9 = 0;
    while (1)
    {
      v10 = v6 + 1;
      v11 = __tolower(v3);
      if ((v11 - 48) < 0xA || (v11 - 97) <= 5)
      {
        if ((v11 - 48) >= 0xA)
        {
          v13 = v11 + 9;
        }

        else
        {
          v13 = v11;
        }

        *v8 = 16 * v13;
        v9 = (v9 + 1);
        v14 = *v10;
        if (!*v10)
        {
          return v9;
        }

        --v7;
        v10 = v6 + 2;
        v15 = __tolower(v14);
        v16 = v15 - 48;
        if ((v15 - 48) < 0xA || (v15 - 97) <= 5)
        {
          if (v16 >= 0xA)
          {
            LOBYTE(v16) = v15 - 87;
          }

          *v8++ |= v16;
        }
      }

      v3 = *v10;
      if (*v10)
      {
        v18 = v7 == 0;
      }

      else
      {
        v18 = 1;
      }

      v6 = v10;
      if (v18)
      {
        return v9;
      }
    }
  }

  return 0;
}

uint64_t sub_1000085B4(unsigned __int8 *a1, uint64_t a2, _BYTE *a3, unint64_t a4, int a5)
{
  v5 = 0;
  if (a2 && a4 >= 3)
  {
    LODWORD(v5) = 0;
    v6 = a2 - 1;
    do
    {
      v7 = *a1++;
      *a3 = a0123456789abcd[v7 >> 4];
      --a5;
      v8 = a3 + 2;
      a3[1] = a0123456789abcd[v7 & 0xF];
      a4 -= 2;
      v5 = (v5 + 2);
      if (v6-- == 0)
      {
        break;
      }

      a3 += 2;
    }

    while (a4 > 2);
  }

  else
  {
    v8 = a3;
  }

  if (a5 >= 1 && a4 >= 3)
  {
    if ((a4 - 3) >> 1 >= (a5 - 1))
    {
      v10 = (a5 - 1);
    }

    else
    {
      v10 = (a4 - 3) >> 1;
    }

    memset(v8, 48, 2 * v10 + 2);
    v8 += 2 * v10 + 2;
    v5 = (v5 + 2 * v10 + 2);
  }

  *v8 = 0;
  return v5;
}

unint64_t sub_100008688(const char *a1)
{
  v1 = *a1 - 70;
  if (v1 < 0x34 && ((0x8410100084101uLL >> v1) & 1) != 0)
  {
    v2 = 0xFFEFEFFFFFEFEuLL >> v1;
  }

  else
  {
    LOBYTE(v2) = strtol(a1, 0, 0) != 0;
  }

  return v2 & 1;
}

uint64_t sub_1000086F0(const char *a1)
{
  v1 = strdup(a1);
  v2 = strtok(v1, ",");
  if (v2)
  {
    v3 = v2;
    LODWORD(v4) = 0;
    do
    {
      v5 = strchr(v3, 45);
      if (v5)
      {
        *v5 = 0;
        v6 = v5 + 1;
        v7 = atoi(v3);
        v8 = atoi(v6);
        if (v7 <= v8)
        {
          v9 = v8;
        }

        else
        {
          v9 = v7;
        }

        if (v7 >= v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = v7;
        }

        v11 = v9 - v10;
        v12 = (v9 - v10 + 4) & 0xFFFFFFFC;
        v13 = v4;
        v14 = vaddq_s32(vdupq_n_s32(v10), xmmword_10006AF70);
        v15 = vdupq_n_s32(v11);
        v16 = 4;
        v17.i64[0] = 0x100000001;
        v17.i64[1] = 0x100000001;
        v18.i64[0] = 0x400000004;
        v18.i64[1] = 0x400000004;
        do
        {
          v19 = v13;
          v13 = vorrq_s8(v13, vshlq_u32(v17, v14));
          v14 = vaddq_s32(v14, v18);
          v16 -= 4;
        }

        while (v12 + v16 != 4);
        v20 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v16), xmmword_10006AF70), v15), v19, v13);
        v21 = vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
        v4 = (v21.i32[0] | v21.i32[1]);
      }

      else
      {
        v4 = (1 << strtol(v3, 0, 0)) | v4;
      }

      v3 = strtok(0, ",");
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  free(v1);
  return v4;
}

uint64_t sub_100008854(const char *a1, uint64_t a2)
{
  result = strtol(a1, 0, 0);
  if (!result)
  {
    if (strcasestr(a1, "all"))
    {
      if (strcasestr(a1, "-all"))
      {
        a2 = 0;
      }

      else
      {
        a2 = 0xFFFFFFFFLL;
      }
    }

    if (strcasestr(a1, "emerg"))
    {
      if (strcasestr(a1, "-emerg"))
      {
        a2 = a2 & 0xFFFFFFFE;
      }

      else
      {
        a2 = a2 | 1;
      }
    }

    if (strcasestr(a1, "alert"))
    {
      if (strcasestr(a1, "-alert"))
      {
        a2 = a2 & 0xFFFFFFFD;
      }

      else
      {
        a2 = a2 | 2;
      }
    }

    if (strcasestr(a1, "crit"))
    {
      if (strcasestr(a1, "-crit"))
      {
        a2 = a2 & 0xFFFFFFFB;
      }

      else
      {
        a2 = a2 | 4;
      }
    }

    if (strcasestr(a1, "err"))
    {
      if (strcasestr(a1, "-err"))
      {
        a2 = a2 & 0xFFFFFFF7;
      }

      else
      {
        a2 = a2 | 8;
      }
    }

    if (strcasestr(a1, "warn"))
    {
      if (strcasestr(a1, "-warn"))
      {
        a2 = a2 & 0xFFFFFFEF;
      }

      else
      {
        a2 = a2 | 0x10;
      }
    }

    if (strcasestr(a1, "notice"))
    {
      if (strcasestr(a1, "-notice"))
      {
        a2 = a2 & 0xFFFFFFDF;
      }

      else
      {
        a2 = a2 | 0x20;
      }
    }

    if (strcasestr(a1, "info"))
    {
      if (strcasestr(a1, "-info"))
      {
        a2 = a2 & 0xFFFFFFBF;
      }

      else
      {
        a2 = a2 | 0x40;
      }
    }

    if (strcasestr(a1, "debug"))
    {
      if (strcasestr(a1, "-debug"))
      {
        return a2 & 0xFFFFFF7F;
      }

      else
      {
        return a2 | 0x80;
      }
    }

    else
    {
      return a2;
    }
  }

  return result;
}

BOOL sub_100008A60(unsigned __int8 *a1, uint64_t a2)
{
  do
  {
    v2 = a2;
    if (a2-- == 0)
    {
      break;
    }
  }

  while (!*a1++);
  return v2 != 0;
}

BOOL sub_100008A80(unsigned __int8 *a1, uint64_t a2)
{
  do
  {
    v2 = a2;
    if (!a2)
    {
      break;
    }

    --a2;
    v3 = *a1++;
  }

  while ((_DefaultRuneLocale.__runetype[v3] & 0x10000) != 0);
  return v2 == 0;
}

uint64_t sub_100008AB0(char *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v3 = a2 - 1;
  do
  {
    v4 = *a1;
    if (*a1 < 0)
    {
      v5 = __maskrune(*a1, 0x8000uLL);
    }

    else
    {
      v5 = _DefaultRuneLocale.__runetype[*a1] & 0x8000;
    }

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = (v4 - 48) >= 0xA;
    }

    result = !v6;
    v6 = v3-- != 0;
    v8 = v6;
    if (result != 1)
    {
      break;
    }

    ++a1;
  }

  while ((v8 & 1) != 0);
  return result;
}

id sub_100008E8C()
{
  if (qword_1000807F0 != -1)
  {
    sub_100055C78();
  }

  v1 = qword_1000807E8;

  return v1;
}

void sub_100008FFC(uint64_t a1)
{
  v1 = [*(a1 + 32) listener];
  [v1 resume];

  v2 = sub_100007454(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "[CTCSXPCService run]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Server: %s - CTCS XPC Service resume done", &v3, 0xCu);
  }
}

void sub_1000094D4(id a1)
{
  v1 = sub_100007454(1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_100055C8C();
  }
}

void sub_10000951C(id a1)
{
  v1 = sub_100007454(1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_100055D0C();
  }
}

void sub_100009564(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("CTCS Service XPC Listener Queue", v3);
  v2 = qword_1000807E8;
  qword_1000807E8 = v1;
}

void sub_1000095CC(void *a1, int a2)
{
  block = a1;
  if (qword_1000807F8 != -1)
  {
    sub_100055D8C();
  }

  if (dispatch_get_specific(off_100080428))
  {
    block[2]();
  }

  else
  {
    v3 = sub_100008E8C();
    v4 = v3;
    if (a2)
    {
      dispatch_sync(v3, block);
    }

    else
    {
      dispatch_async(v3, block);
    }
  }
}

void sub_100009690(id a1)
{
  v1 = sub_100008E8C();
  dispatch_queue_set_specific(v1, off_100080428, off_100080428, 0);
}

void sub_10000A10C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10000A330(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10000A4F8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10000AA14(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_10000ADEC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10000B1D8(uint64_t a1)
{
  v2 = [NSError storeError:4 description:@"Invalid parameter sent for delete operation to server..."];
  (*(*(a1 + 32) + 16))();
}

void sub_10000B25C(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Backing store is nil..."];
  (*(*(a1 + 32) + 16))();
}

void sub_10000B2E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) awdPostStabilityMetrics:2];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10000B5C4(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve all records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10000B64C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) awdPostStabilityMetrics:1];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10000B8EC(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve all records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10000B974(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) awdPostStabilityMetrics:3];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10000BD74(uint64_t a1)
{
  v2 = [NSError storeError:4 description:@"Invalid parameter sent to server..."];
  (*(*(a1 + 32) + 16))();
}

void sub_10000BDFC(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Backing store is nil..."];
  (*(*(a1 + 32) + 16))();
}

void sub_10000BE84(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000BFBC;
    v12[3] = &unk_100078AD0;
    v11 = *(a1 + 48);
    v12[4] = *(a1 + 56);
    v13 = v9;
    v14 = *(a1 + 64);
    [v13 storeThreadNetworkCredentialActiveDataSet:v10 network:v7 credentialsDataSet:v11 waitForSync:0 completion:v12];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void sub_10000BFBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) awdPostStabilityMetrics:6];
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000C0A0;
    v8[3] = &unk_100078AA8;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    [v7 retrieveThirdPartyInfo:v8];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000C0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100007454(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 136316162;
    v10 = "[CTCSXPCService ctcsServerStoreThreadNetworkCredentialActiveDataSet:credentialsDataSet:completion:]_block_invoke_5";
    v11 = 1024;
    v12 = 567;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s:%d:  numThirdPartyBRs : %lu numPrefNwByThirdPartyBRs : %lu numPrefNwByAppleBRs : %lu \n", &v9, 0x30u);
  }

  if (!a4)
  {
    [*(a1 + 32) awdPostNumThirdPartyBRs:a2];
    [*(a1 + 32) awdPostPreferrdNwInfo:a3 numPrefNwsByAppleBRs:0];
  }
}

void sub_10000CB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);

  _Block_object_dispose((v76 - 224), 8);
  _Block_object_dispose((v76 - 176), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10000CC3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000CC54(uint64_t a1)
{
  v2 = [NSError storeError:21 description:@"Failed to get current network connection"];
  (*(*(a1 + 32) + 16))();
}

void sub_10000CCDC(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve Preferred Network record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10000CD64(uint64_t a1)
{
  v2 = [NSError storeError:26 description:@"Error : Unable to get bundle identifier"];
  (*(*(a1 + 32) + 16))();
}

void sub_10000CDEC(uint64_t a1)
{
  v2 = sub_100007454(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100056330();
  }

  v3 = [NSError storeError:22 description:@"Error : Application record not found"];
  (*(*(a1 + 32) + 16))();
}

void sub_10000CE84(uint64_t a1)
{
  v2 = [NSError storeError:23 description:@"Error : Missing Application Localized Name"];
  (*(*(a1 + 32) + 16))();
}

void sub_10000CF0C(uint64_t a1)
{
  v2 = [NSError storeError:25 description:@"Error : Unable to format Application UI Alert Message"];
  (*(*(a1 + 32) + 16))();
}

void sub_10000CF94(uint64_t a1)
{
  v2 = [NSError storeError:24 description:@"Error : Missing Application UI Alert Usage Description"];
  (*(*(a1 + 32) + 16))();
}

void sub_10000D01C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    [*(a1 + 32) awdPostStabilityMetrics:4];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v8 = sub_100007454(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Server: Got response from Store ...\n", v12, 2u);
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v9 = sub_100007454(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000563AC();
    }

    if ([*(a1 + 32) takeUserPermission:*(*(*(a1 + 56) + 8) + 40) userDescription:*(*(*(a1 + 64) + 8) + 40)])
    {
      v10 = *(*(*(a1 + 48) + 8) + 40);
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v11 = [NSError storeError:15 description:@"User denied the access"];
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10000DB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose((v72 - 224), 8);

  _Block_object_dispose((v72 - 176), 8);
  _Block_object_dispose(&a61, 8);

  _Unwind_Resume(a1);
}

void sub_10000DC30(uint64_t a1)
{
  v2 = [NSError storeError:21 description:@"Failed to get current network connection"];
  (*(*(a1 + 32) + 16))();
}

void sub_10000DCB8(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve Preferred Network record Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10000DD40(uint64_t a1)
{
  v2 = [NSError storeError:26 description:@"Error : Unable to get bundle identifier"];
  (*(*(a1 + 32) + 16))();
}

void sub_10000DDC8(uint64_t a1)
{
  v2 = sub_100007454(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1000563EC();
  }

  v3 = [NSError storeError:22 description:@"Error : Application record not found"];
  (*(*(a1 + 32) + 16))();
}

void sub_10000DE60(uint64_t a1)
{
  v2 = [NSError storeError:23 description:@"Error : Missing Application Localized Name"];
  (*(*(a1 + 32) + 16))();
}

void sub_10000DEE8(uint64_t a1)
{
  v2 = [NSError storeError:25 description:@"Error : Unable to format Application UI Alert Message"];
  (*(*(a1 + 32) + 16))();
}

void sub_10000DF70(uint64_t a1)
{
  v2 = [NSError storeError:24 description:@"Error : Missing Application UI Alert Usage Description"];
  (*(*(a1 + 32) + 16))();
}

void sub_10000DFF8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    [*(a1 + 32) awdPostStabilityMetrics:5];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v8 = sub_100007454(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Server: Got response from Store ...\n", buf, 2u);
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v9 = sub_100007454(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Server: Check for User Permission ...\n", v12, 2u);
    }

    if ([*(a1 + 32) takeUserPermission:*(*(*(a1 + 56) + 8) + 40) userDescription:*(*(*(a1 + 64) + 8) + 40)])
    {
      v10 = *(*(*(a1 + 48) + 8) + 40);
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v11 = [NSError storeError:15 description:@"User denied the access"];
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_10000E4A0(uint64_t a1)
{
  v2 = sub_100007454(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100056468();
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_10000E514(uint64_t a1, int a2)
{
  v4 = sub_100007454(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[CTCSXPCService ctcsIsPreferredNetworkForActiveOperationalDataset:completion:]_block_invoke_2";
    v8 = 1024;
    v9 = 842;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Server: %s:%d: Got response from Store isPreferred: %d", &v6, 0x18u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10000E7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  _Block_object_dispose((v16 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_10000E820(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v8 = sub_100007454(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Server: Got response from Store, error : %@\n", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + 40) + 8) + 40) != 0);
}

void sub_10000EB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  _Block_object_dispose((v16 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_10000EB54(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve Preferred Network record internally  Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10000EBDC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v8 = sub_100007454(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Server: Got response from Store ...\n", v9, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000EE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  _Block_object_dispose((v16 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_10000EEDC(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve Preferred Network record internally  Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10000EF64(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v8 = sub_100007454(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Server: Got response from Store ...\n", v9, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000F224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  _Block_object_dispose((v16 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_10000F264(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve Preferred Network record internally  Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10000F2EC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v8 = sub_100007454(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Server: Got response from Store ...\n", v9, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000F6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_10000F720(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve Preferred Network record internally  Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10000F7A8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v8 = sub_100007454(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Server: Got response from Store ...\n", v9, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000FA80(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Backing store is nil..."];
  (*(*(a1 + 32) + 16))();
}

void sub_10000FED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_10000FF24(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Backing store is nil..."];
  (*(*(a1 + 32) + 16))();
}

void sub_10000FFAC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    [*(a1 + 32) awdPostStabilityMetrics:4];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v8 = sub_100007454(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Server: Got response from Store ...\n", v9, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10001035C(uint64_t a1)
{
  v2 = [NSError storeError:4 description:@"Invalid parameter sent to server..."];
  (*(*(a1 + 32) + 16))();
}

void sub_1000103E4(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Backing store is nil..."];
  (*(*(a1 + 32) + 16))();
}

void sub_100010698(uint64_t a1)
{
  v2 = [NSError storeError:4 description:@"Invalid parameter sent to server..."];
  (*(*(a1 + 32) + 16))();
}

void sub_100010720(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Backing store is nil..."];
  (*(*(a1 + 32) + 16))();
}

void sub_100010A84(uint64_t a1)
{
  v2 = [NSError storeError:27 description:@"Not An Internal Install"];
  (*(*(a1 + 32) + 16))();
}

void sub_100010B0C(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Backing store is nil..."];
  (*(*(a1 + 32) + 16))();
}

void sub_100010E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  _Block_object_dispose((v16 - 112), 8);

  _Unwind_Resume(a1);
}

void sub_100010E9C(uint64_t a1)
{
  v2 = [NSError storeError:27 description:@"Not An Internal Install"];
  (*(*(a1 + 32) + 16))();
}

void sub_100010F24(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve all records Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_100010FAC(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = a2;
  v7 = a3;
  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = v7;
  (*(*(a1 + 32) + 16))();
}

void sub_1000112E0(uint64_t a1)
{
  v2 = [NSError storeError:27 description:@"Not An Internal Install"];
  (*(*(a1 + 32) + 16))();
}

void sub_100011364(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Backing store is nil..."];
  (*(*(a1 + 32) + 16))();
}

void sub_100011668(uint64_t a1)
{
  v2 = [NSError storeError:27 description:@"Not An Internal Install"];
  (*(*(a1 + 32) + 16))();
}

void sub_1000116EC(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Backing store is nil..."];
  (*(*(a1 + 32) + 16))();
}

void sub_1000119F0(uint64_t a1)
{
  v2 = [NSError storeError:27 description:@"Not An Internal Install"];
  (*(*(a1 + 32) + 16))();
}

void sub_100011A74(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Backing store is nil..."];
  (*(*(a1 + 32) + 16))();
}

void sub_100011E98(uint64_t a1)
{
  v2 = [NSError storeError:27 description:@"Not An Internal Install"];
  (*(*(a1 + 32) + 16))();
}

void sub_100011F1C(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Backing store is nil..."];
  (*(*(a1 + 32) + 16))();
}

void sub_1000122D4(uint64_t a1)
{
  v2 = [NSError storeError:27 description:@"Not An Internal Install"];
  (*(*(a1 + 32) + 16))();
}

void sub_100012358(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Backing store is nil..."];
  (*(*(a1 + 32) + 16))();
}

void sub_100012604(uint64_t a1)
{
  v2 = [NSError storeError:1 description:@"Failed to retrieve Preferred Network record internally  Backing store is nil"];;
  (*(*(a1 + 32) + 16))();
}

void sub_10001273C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

id sub_100013028(void *a1)
{
  if (a1)
  {
    v1 = [a1 base64EncodedStringWithOptions:0];
  }

  else
  {
    v2 = sub_10001B194(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100013778();
    }

    v1 = 0;
  }

  return v1;
}

void sub_100013678(os_log_t log)
{
  v1 = 136315138;
  v2 = "[THFrozenThreadNetwork(Keychain) keyChainItemRepresentationForFrozenThreadNetworkAddOperation]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s : Error: unable to form add operation due to missing data", &v1, 0xCu);
}

uint64_t spinel_packed_uint_decode(char *a1, int a2, _DWORD *a3)
{
  LODWORD(v3) = 0;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = 0xFFFFFFFFLL;
    if (!a2 || v5 > 0x1F)
    {
      break;
    }

    v7 = *a1++;
    v4 |= (v7 & 0x7F) << v5;
    v5 += 7;
    v3 = v3 + 1;
    --a2;
    if ((v7 & 0x80) == 0)
    {
      if (a3 && v3 >= 1)
      {
        *a3 = v4;
      }

      return v3;
    }
  }

  return v6;
}

uint64_t spinel_packed_uint_size(unsigned int a1)
{
  if (a1 >> 28)
  {
    v1 = 5;
  }

  else
  {
    v1 = 4;
  }

  if (a1 >= 0x200000)
  {
    v2 = v1;
  }

  else
  {
    v2 = 3;
  }

  if (a1 >= 0x4000)
  {
    v3 = v2;
  }

  else
  {
    v3 = 2;
  }

  if (a1 >= 0x80)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

uint64_t spinel_packed_uint_encode(_BYTE *a1, int a2, unsigned int a3)
{
  if (a3 >> 28)
  {
    v3 = 5;
  }

  else
  {
    v3 = 4;
  }

  if (a3 >= 0x200000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 3;
  }

  if (a3 >= 0x4000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  if (a3 >= 0x80)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if (v6 <= a2)
  {
    v7 = v6 - 1;
    if (v6 != 1)
    {
      do
      {
        *a1++ = a3 | 0x80;
        a3 >>= 7;
        --v7;
      }

      while (v7);
    }

    *a1 = a3 & 0x7F;
  }

  return v6;
}

_BYTE *spinel_next_packed_datatype(_BYTE *result)
{
  v1 = 0;
  do
  {
    while (1)
    {
      v2 = result[1];
      if (v2 != 40)
      {
        break;
      }

      ++v1;
      ++result;
    }

    v3 = result + 2;
    if (v1 != 1)
    {
      v3 = result + 1;
    }

    if (v2 == 41)
    {
      result = v3;
    }

    else
    {
      ++result;
    }

    if (v2 == 41)
    {
      --v1;
    }
  }

  while (v1 >= 1 && *result);
  return result;
}

uint64_t sub_100013A04(int a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 >> 15)
  {
    goto LABEL_175;
  }

  v9 = a4;
  v10 = a3;
  v13 = 0;
  while (1)
  {
    v14 = *v9;
    if (v14 <= 0x57)
    {
      break;
    }

    if (*v9 > 0x68u)
    {
      if (*v9 > 0x72u)
      {
        if (v14 == 115)
        {
LABEL_97:
          v49 = (*a5)++;
          v31 = v10 >= 2;
          v10 = (v10 - 2);
          if (!v31)
          {
            goto LABEL_172;
          }

          v50 = *v49;
          if (v50)
          {
            *v50 = *a2;
          }

          v13 = (v13 + 2);
          a2 += 2;
          goto LABEL_159;
        }

        if (v14 != 116)
        {
          if (v14 != 120)
          {
            goto LABEL_175;
          }

LABEL_77:
          v40 = (*a5)++;
          v31 = v10 >= 8;
          v10 = (v10 - 8);
          if (!v31)
          {
            goto LABEL_172;
          }

          v41 = *v40;
          if (v41)
          {
            *v41 = *a2;
          }

          v13 = (v13 + 8);
          a2 += 8;
          goto LABEL_159;
        }

LABEL_82:
        v42 = 0;
        v76 = 0;
        v43 = v9;
        do
        {
          while (1)
          {
            v44 = v43 + 1;
            v45 = v43[1];
            if (v45 != 40)
            {
              break;
            }

            ++v42;
            ++v43;
          }

          v43 += 2;
          if (v42 != 1)
          {
            v43 = v44;
          }

          if (v45 == 41)
          {
            --v42;
          }

          else
          {
            v43 = v44;
          }
        }

        while (v42 >= 1 && *v43);
        if (*v9 == 116 || *v43 && *v43 != 41)
        {
          v55 = spinel_datatype_unpack(a2, v10, "S", a4, a5, a6, a7, a8, &v76);
          if (v55 < 1)
          {
            return v13;
          }

          v47 = v76;
          if (v76 >= 0x514u)
          {
            return v13;
          }

          v46 = v55;
          v48 = a2 + v55;
        }

        else
        {
          v46 = 0;
          v76 = v10;
          v47 = v10;
          v48 = a2;
        }

        if (v10 < v46 + v47 || (v56 = sub_100013A04(0, v48, v47, v9 + 2, a5), v56 < 0))
        {
LABEL_172:
          v72 = __error();
          v73 = 84;
          goto LABEL_176;
        }

        v57 = v46 + v76;
        if (!v46)
        {
          v57 = v56;
        }

        v13 = v13 + v57;
        a2 += v57;
        v10 = v10 - v57;
        goto LABEL_159;
      }

      if (v14 != 105)
      {
        if (v14 != 108)
        {
          goto LABEL_175;
        }

LABEL_58:
        v30 = (*a5)++;
        v31 = v10 >= 4;
        v10 = (v10 - 4);
        if (!v31)
        {
          goto LABEL_172;
        }

        v32 = *v30;
        if (v32)
        {
          *v32 = *a2;
        }

        v13 = (v13 + 4);
        a2 += 4;
        goto LABEL_159;
      }

      v60 = (*a5)++;
      v61 = *v60;
      v62 = spinel_packed_uint_decode(a2, v10, *v60);
      if (v61 && *v61 >= 0x1FFFFFu)
      {
        v72 = __error();
        v73 = 34;
        goto LABEL_176;
      }

      if (v62 < 1 || v10 < v62)
      {
        return v13;
      }

      v13 = (v62 + v13);
      a2 += v62;
      v10 = (v10 - v62);
    }

    else
    {
      if (*v9 <= 0x62u)
      {
        if (v14 != 88)
        {
          if (v14 != 98)
          {
            goto LABEL_175;
          }

          v27 = (*a5)++;
          if (!v10)
          {
            goto LABEL_172;
          }

          v28 = *v27;
          if (v28)
          {
            v29 = *a2 != 0;
            goto LABEL_109;
          }

          goto LABEL_110;
        }

        goto LABEL_77;
      }

      if (v14 == 99)
      {
        goto LABEL_106;
      }

      if (v14 == 100)
      {
        goto LABEL_66;
      }

      if (v14 != 101)
      {
        goto LABEL_175;
      }

      if (v10 <= 5)
      {
        goto LABEL_172;
      }

      v15 = (*a5)++;
      v16 = *v15;
      if (a1)
      {
        if (v16)
        {
          v17 = *a2;
          *(v16 + 4) = *(a2 + 4);
          *v16 = v17;
        }
      }

      else if (v16)
      {
        *v16 = a2;
      }

      v13 = (v13 + 6);
      a2 += 6;
      v10 = (v10 - 6);
    }

LABEL_159:
    v69 = 0;
    do
    {
      while (1)
      {
        v70 = v9[1];
        if (v70 != 40)
        {
          break;
        }

        ++v69;
        ++v9;
      }

      v71 = v9 + 2;
      if (v69 != 1)
      {
        v71 = v9 + 1;
      }

      if (v70 == 41)
      {
        v9 = v71;
      }

      else
      {
        ++v9;
      }

      if (v70 == 41)
      {
        --v69;
      }
    }

    while (v69 >= 1 && *v9);
  }

  if (*v9 > 0x44u)
  {
    if (*v9 <= 0x52u)
    {
      if (v14 != 69)
      {
        if (v14 != 76)
        {
          goto LABEL_175;
        }

        goto LABEL_58;
      }

      if (v10 <= 7)
      {
        goto LABEL_172;
      }

      v64 = (*a5)++;
      v65 = *v64;
      if (a1)
      {
        if (v65)
        {
          *v65 = *a2;
        }
      }

      else if (v65)
      {
        *v65 = a2;
      }

      v13 = (v13 + 8);
      a2 += 8;
      v10 = (v10 - 8);
    }

    else
    {
      if (v14 == 83)
      {
        goto LABEL_97;
      }

      if (v14 == 84)
      {
        goto LABEL_82;
      }

      if (v14 != 85)
      {
        goto LABEL_175;
      }

      if (!v10)
      {
        goto LABEL_172;
      }

      v18 = strnlen(a2, v10) + 1;
      if (v18 > v10)
      {
        goto LABEL_172;
      }

      v19 = *a2;
      if (*a2)
      {
        v20 = a2;
        do
        {
          ++v20;
          if (v19 < 0)
          {
            if ((v19 & 0x40) == 0)
            {
              goto LABEL_175;
            }

            if ((v19 & 0x20) != 0)
            {
              if ((v19 & 0x10) != 0)
              {
                if ((v19 & 8) != 0)
                {
                  goto LABEL_175;
                }

                v21 = 3;
              }

              else
              {
                v21 = 2;
              }
            }

            else
            {
              v21 = 1;
            }

            v22 = &v20[v21];
            while (v21)
            {
              LOBYTE(v21) = v21 - 1;
              v23 = *v20++;
              if ((v23 & 0xC0) != 0x80)
              {
                goto LABEL_175;
              }
            }

            v20 = v22;
          }

          v19 = *v20;
        }

        while (*v20);
      }

      v24 = (*a5)++;
      v25 = *v24;
      if (a1)
      {
        v26 = (*a5)++;
        if (v25)
        {
          if (*v26 < v18)
          {
            v72 = __error();
            v73 = 12;
            goto LABEL_176;
          }

          memcpy(v25, a2, v18);
        }
      }

      else if (v25)
      {
        *v25 = a2;
      }

      v13 = (v13 + v18);
      a2 += v18;
      v10 = (v10 - v18);
    }

    goto LABEL_159;
  }

  if (*v9 > 0x35u)
  {
    if (v14 != 54)
    {
      if (v14 != 67)
      {
        if (v14 != 68)
        {
          goto LABEL_175;
        }

LABEL_66:
        v33 = 0;
        v77 = 0;
        v34 = (*a5)++;
        v35 = *v34;
        *a5 = v34 + 2;
        v36 = v34[1];
        v37 = v9;
        do
        {
          while (1)
          {
            v38 = v37 + 1;
            v39 = v37[1];
            if (v39 != 40)
            {
              break;
            }

            ++v33;
            ++v37;
          }

          v37 += 2;
          if (v33 != 1)
          {
            v37 = v38;
          }

          if (v39 == 41)
          {
            --v33;
          }

          else
          {
            v37 = v38;
          }
        }

        while (v33 >= 1 && *v37);
        if (*v9 == 100 || *v37 && *v37 != 41)
        {
          v58 = spinel_datatype_unpack(a2, v10, "S", a4, a5, a6, a7, a8, &v77);
          if (v58 < 1)
          {
            return v13;
          }

          v52 = v77;
          if (v77 >= 0x514u)
          {
            return v13;
          }

          v51 = v58;
          v53 = (a2 + v58);
        }

        else
        {
          v51 = 0;
          v77 = v10;
          v52 = v10;
          v53 = a2;
        }

        if (v10 < v51 + v52)
        {
          v75 = 84;
LABEL_181:
          *__error() = v75;
          return 0xFFFFFFFFLL;
        }

        v59 = v52;
        if (a1)
        {
          if (!v36 || *v36 < v52)
          {
            v75 = 22;
            goto LABEL_181;
          }

          memcpy(v35, v53, v52);
          v59 = v77;
          v52 = v77;
LABEL_141:
          *v36 = v59;
        }

        else
        {
          if (v35)
          {
            *v35 = v53;
          }

          if (v36)
          {
            goto LABEL_141;
          }
        }

        v66 = v52 + v51;
        v13 = v13 + v66;
        a2 += v66;
        v10 = v10 - v66;
        goto LABEL_159;
      }

LABEL_106:
      v54 = (*a5)++;
      if (!v10)
      {
        goto LABEL_172;
      }

      v28 = *v54;
      if (v28)
      {
        v29 = *a2;
LABEL_109:
        *v28 = v29;
      }

LABEL_110:
      v13 = (v13 + 1);
      ++a2;
      v10 = (v10 - 1);
      goto LABEL_159;
    }

    if (v10 <= 0xF)
    {
      goto LABEL_172;
    }

    v67 = (*a5)++;
    v68 = *v67;
    if (a1)
    {
      if (v68)
      {
        *v68 = *a2;
      }
    }

    else if (v68)
    {
      *v68 = a2;
    }

    v13 = (v13 + 16);
    a2 += 16;
    v10 = (v10 - 16);
    goto LABEL_159;
  }

  if (v14 == 46)
  {
    goto LABEL_159;
  }

  if (*v9 && v14 != 41)
  {
LABEL_175:
    v72 = __error();
    v73 = 22;
LABEL_176:
    *v72 = v73;
    return 0xFFFFFFFFLL;
  }

  return v13;
}

uint64_t spinel_datatype_vunpack_in_place(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[0] = a4;
  v9[1] = a4;
  return sub_100013A04(1, a1, a2, a3, v9, a6, a7, a8);
}

uint64_t spinel_datatype_vunpack(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[0] = a4;
  v9[1] = a4;
  return sub_100013A04(0, a1, a2, a3, v9, a6, a7, a8);
}

uint64_t sub_1000141F0(_BYTE *a1, unsigned int a2, unsigned __int8 *a3, unsigned int **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >= 0x8000)
  {
LABEL_124:
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v10 = a1;
  v11 = 0;
  if (a1)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0;
  }

  while (1)
  {
    v13 = *a3;
    if (v13 <= 0x57)
    {
      break;
    }

    if (*a3 > 0x68u)
    {
      if (*a3 > 0x72u)
      {
        if (v13 == 115)
        {
LABEL_74:
          v41 = *a4;
          *a4 += 2;
          v11 = (v11 + 2);
          v15 = v12 >= 2;
          v12 = (v12 - 2);
          if (!v15)
          {
            goto LABEL_107;
          }

          *v10 = *v41;
          v10 += 2;
          goto LABEL_108;
        }

        if (v13 == 120)
        {
          goto LABEL_65;
        }

        if (v13 != 116)
        {
          goto LABEL_124;
        }

        goto LABEL_25;
      }

      if (v13 == 105)
      {
        v44 = *a4;
        *a4 += 2;
        if (*v44 > 0x1FFFFE)
        {
          goto LABEL_124;
        }

        v45 = spinel_packed_uint_encode(v10, v12, *v44);
        v11 = (v45 + v11);
        v46 = v12 < v45;
        if (v12 >= v45)
        {
          v12 = (v12 - v45);
        }

        else
        {
          v12 = 0;
        }

        if (v46)
        {
          v47 = 0;
        }

        else
        {
          v47 = v45;
        }

        v10 += v47;
        goto LABEL_108;
      }

      if (v13 != 108)
      {
        goto LABEL_124;
      }

      goto LABEL_48;
    }

    if (*a3 > 0x62u)
    {
      if (v13 != 99)
      {
        if (v13 != 100)
        {
          if (v13 != 101)
          {
            goto LABEL_124;
          }

          v14 = *a4;
          *a4 += 2;
          v11 = (v11 + 6);
          v15 = v12 >= 6;
          v12 = (v12 - 6);
          if (!v15)
          {
            goto LABEL_107;
          }

          v16 = *v14;
          v17 = *v16;
          *(v10 + 2) = *(v16 + 2);
          *v10 = v17;
          v10 += 6;
          goto LABEL_108;
        }

        goto LABEL_54;
      }

LABEL_87:
      v26 = *a4;
      *a4 += 2;
      v11 = (v11 + 1);
      if (v12)
      {
        LODWORD(v26) = *v26;
        goto LABEL_89;
      }

      goto LABEL_108;
    }

    if (v13 == 88)
    {
LABEL_65:
      v35 = *a4;
      *a4 += 2;
      v11 = (v11 + 8);
      v15 = v12 >= 8;
      v12 = (v12 - 8);
      if (!v15)
      {
        goto LABEL_107;
      }

LABEL_101:
      *v10 = *v35;
      v10 += 8;
      goto LABEL_108;
    }

    if (v13 != 98)
    {
      goto LABEL_124;
    }

    v26 = *a4;
    *a4 += 2;
    v11 = (v11 + 1);
    if (v12)
    {
      LOBYTE(v26) = *v26 != 0;
LABEL_89:
      *v10++ = v26;
      v12 = (v12 - 1);
    }

LABEL_108:
    v50 = 0;
    do
    {
      while (1)
      {
        v51 = a3[1];
        if (v51 != 40)
        {
          break;
        }

        ++v50;
        ++a3;
      }

      v52 = a3 + 2;
      if (v50 != 1)
      {
        v52 = a3 + 1;
      }

      if (v51 == 41)
      {
        a3 = v52;
      }

      else
      {
        ++a3;
      }

      if (v51 == 41)
      {
        --v50;
      }
    }

    while (v50 >= 1 && *a3);
  }

  if (*a3 > 0x44u)
  {
    if (*a3 > 0x52u)
    {
      if (v13 == 83)
      {
        goto LABEL_74;
      }

      if (v13 != 84)
      {
        if (v13 != 85)
        {
          goto LABEL_124;
        }

        v18 = *a4;
        *a4 += 2;
        v19 = *v18;
        if (*v18)
        {
          v20 = strlen(*v18) + 1;
        }

        else
        {
          v19 = "";
          v20 = 1;
        }

        v11 = (v11 + v20);
        if (v20 <= v12)
        {
          memcpy(v10, v19, v20);
          v10 += v20;
          v12 = (v12 - v20);
          goto LABEL_108;
        }

LABEL_107:
        v12 = 0;
        goto LABEL_108;
      }

LABEL_25:
      v21 = 0;
      v22 = a3;
      do
      {
        while (1)
        {
          v23 = v22 + 1;
          v24 = v22[1];
          if (v24 != 40)
          {
            break;
          }

          ++v21;
          ++v22;
        }

        v22 += 2;
        if (v21 != 1)
        {
          v22 = v23;
        }

        if (v24 == 41)
        {
          --v21;
        }

        else
        {
          v22 = v23;
        }

        v25 = *v22;
      }

      while (v21 >= 1 && *v22);
      if (a3[1] != 40)
      {
        goto LABEL_124;
      }

      v54 = *a4;
      v36 = sub_1000141F0(0, 0, a3 + 2, &v54);
      if (*a3 == 116 || (v37 = 0, v25) && v25 != 41)
      {
        v37 = spinel_datatype_pack(v10, v12, "S", a4, a5, a6, a7, a8, v36);
        if (v37 <= 0)
        {
          goto LABEL_124;
        }
      }

      v11 = (v37 + v36 + v11);
      if (v37 + v36 > v12)
      {
        goto LABEL_107;
      }

      v38 = &v10[v37];
      v39 = (v12 - v37);
      v40 = sub_1000141F0(v38, v39, a3 + 2, a4);
      v10 = &v38[v40];
      v12 = (v39 - v40);
      goto LABEL_108;
    }

    if (v13 == 69)
    {
      v48 = *a4;
      *a4 += 2;
      v11 = (v11 + 8);
      v15 = v12 >= 8;
      v12 = (v12 - 8);
      if (!v15)
      {
        goto LABEL_107;
      }

      v35 = *v48;
      goto LABEL_101;
    }

    if (v13 != 76)
    {
      goto LABEL_124;
    }

LABEL_48:
    v27 = *a4;
    *a4 += 2;
    v11 = (v11 + 4);
    v15 = v12 >= 4;
    v12 = (v12 - 4);
    if (!v15)
    {
      goto LABEL_107;
    }

    *v10 = *v27;
    v10 += 4;
    goto LABEL_108;
  }

  if (*a3 > 0x35u)
  {
    if (v13 == 54)
    {
      v49 = *a4;
      *a4 += 2;
      v11 = (v11 + 16);
      v15 = v12 >= 0x10;
      v12 = (v12 - 16);
      if (!v15)
      {
        goto LABEL_107;
      }

      *v10 = **v49;
      v10 += 16;
      goto LABEL_108;
    }

    if (v13 != 67)
    {
      if (v13 != 68)
      {
        goto LABEL_124;
      }

LABEL_54:
      v28 = 0;
      v29 = *a4;
      *a4 += 2;
      v30 = *v29;
      *a4 = v29 + 4;
      v31 = v29[2];
      v32 = a3;
      do
      {
        while (1)
        {
          v33 = v32 + 1;
          v34 = v32[1];
          if (v34 != 40)
          {
            break;
          }

          ++v28;
          ++v32;
        }

        v32 += 2;
        if (v28 != 1)
        {
          v32 = v33;
        }

        if (v34 == 41)
        {
          --v28;
        }

        else
        {
          v32 = v33;
        }
      }

      while (v28 >= 1 && *v32);
      if (*a3 == 100 || (v42 = 0, *v32) && *v32 != 41)
      {
        v42 = spinel_datatype_pack(v10, v12, "S", a4, a5, a6, a7, a8, v31);
        if (v42 < 1)
        {
          goto LABEL_124;
        }
      }

      v11 = (v42 + v31 + v11);
      v15 = v12 >= v42 + v31;
      v12 = (v12 - (v42 + v31));
      if (!v15)
      {
        goto LABEL_107;
      }

      v43 = &v10[v42];
      if (v10 && v30)
      {
        memcpy(&v10[v42], v30, v31);
      }

      v10 = &v43[v31];
      goto LABEL_108;
    }

    goto LABEL_87;
  }

  if (v13 == 46)
  {
    goto LABEL_108;
  }

  if (*a3 && v13 != 41)
  {
    goto LABEL_124;
  }

  return v11;
}

uint64_t spinel_datatype_vpack(_BYTE *a1, unsigned int a2, unsigned __int8 *a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[0] = a4;
  v9[1] = a4;
  return sub_1000141F0(a1, a2, a3, v9, a5, a6, a7, a8);
}

const char *spinel_command_to_cstr(unsigned int a1)
{
  if (a1 > 0x17)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_100078CB8[a1];
  }
}

const char *spinel_prop_key_to_cstr(int a1)
{
  result = "UNKNOWN";
  if (a1 > 4864)
  {
    if (a1 > 15295)
    {
      if (a1 <= 15583)
      {
        if (a1 <= 15369)
        {
          if (a1 <= 15362)
          {
            if (a1 > 15359)
            {
              if (a1 == 15360)
              {
                return "VENDOR_COEX_RX_REQUEST_MODE";
              }

              else if (a1 == 15361)
              {
                return "VENDOR_COEX_TX_REQUEST_MODE";
              }

              else
              {
                return "VENDOR_COEX_ENABLED";
              }
            }

            else
            {
              switch(a1)
              {
                case 15296:
                  return "NEST_STREAM_MFG";
                case 15297:
                  return "NEST_LEGACY_ULA_PREFIX";
                case 15298:
                  return "NEST_LEGACY_LAST_NODE_JOINED";
              }
            }
          }

          else if (a1 <= 15365)
          {
            if (a1 == 15363)
            {
              return "VENDOR_COEX_COUNTERS";
            }

            else if (a1 == 15364)
            {
              return "COEX_GRANT_TIMEOUT";
            }

            else
            {
              return "COEX_RX_THROTTLE_MAX_ATTEMPTS_NONE";
            }
          }

          else if (a1 > 15367)
          {
            if (a1 == 15368)
            {
              return "COEX_RX_THROTTLE_TIMEOUT";
            }

            else
            {
              return "COEX_VENDOR_HISTOGRAMS";
            }
          }

          else if (a1 == 15366)
          {
            return "COEX_RX_THROTTLE_MAX_ATTEMPTS_TX_ONLY";
          }

          else
          {
            return "COEX_RX_THROTTLE_MAX_ATTEMPTS_RX_ONLY";
          }
        }

        else
        {
          switch(a1)
          {
            case 15424:
              result = "VENDOR_PMU_WAKE_FACTORY_TEST_START";
              break;
            case 15425:
              result = "VENDOR_PMU_WAKE_FACTORY_TEST_RESULT";
              break;
            case 15426:
              result = "VENDOR_UART_DISABLE_START";
              break;
            case 15427:
            case 15428:
            case 15429:
            case 15430:
            case 15431:
            case 15432:
            case 15433:
            case 15434:
            case 15435:
            case 15436:
            case 15437:
            case 15438:
            case 15439:
            case 15441:
            case 15442:
            case 15443:
            case 15444:
            case 15445:
            case 15446:
            case 15447:
            case 15448:
            case 15449:
            case 15450:
            case 15451:
            case 15452:
            case 15453:
            case 15454:
            case 15455:
            case 15463:
            case 15464:
            case 15465:
            case 15466:
            case 15467:
            case 15468:
            case 15469:
            case 15470:
            case 15471:
            case 15481:
            case 15482:
            case 15483:
            case 15484:
            case 15485:
            case 15486:
            case 15487:
            case 15495:
            case 15503:
            case 15504:
            case 15508:
            case 15511:
            case 15512:
            case 15513:
            case 15514:
            case 15515:
            case 15516:
            case 15517:
            case 15518:
            case 15519:
            case 15521:
              return result;
            case 15440:
              result = "VENDOR_FEM_ENABLED";
              break;
            case 15456:
              result = "VENDOR_CSMA_MIN_BE";
              break;
            case 15457:
              result = "VENDOR_CSMA_MAX_BE";
              break;
            case 15458:
              result = "VENDOR_CSMA_MAX_BACKOFFS";
              break;
            case 15459:
              result = "VENDOR_CSMA_SLIDING_WINDOW_ENABLED";
              break;
            case 15460:
              result = "CSMA_CCA_ENERGY_DETECTED_HISTOGRAM";
              break;
            case 15461:
              result = "CSMA_BACKOFF_HISTOGRAM";
              break;
            case 15462:
              result = "VENDOR_CSMA_CCA_IDLE_ATTEMPTS";
              break;
            case 15472:
              result = "VENDOR_IFS_MODE";
              break;
            case 15473:
              result = "IFS_MIN_SIFS";
              break;
            case 15474:
              result = "IFS_MIN_LIFS";
              break;
            case 15475:
              result = "IFS_MIN_RETX_SIFS";
              break;
            case 15476:
              result = "IFS_MIN_RETX_LIFS";
              break;
            case 15477:
              result = "IFS_ACKTURNAROUND_TIME";
              break;
            case 15478:
              result = "IFS_ACK_TX_MODE";
              break;
            case 15479:
              result = "IFS_ACK_TURNAROUND_TIME_PER_NEIGHBOR_ENABLE";
              break;
            case 15480:
              result = "IFS_ACK_DATA_PER_NEIGHBOR";
              break;
            case 15488:
              result = "VENDOR_VERSION";
              break;
            case 15489:
              result = "VENDOR_RADIO_COUNTERS";
              break;
            case 15490:
              result = "VENDOR_RADIO_STATS";
              break;
            case 15491:
              result = "VENDOR_ASSERT";
              break;
            case 15492:
              result = "VENDOR_HARD_FAULT";
              break;
            case 15493:
              result = "VENDOR_STACK_OVERFLOW";
              break;
            case 15494:
              result = "VENDOR_ASSIGNED_HW_MAC";
              break;
            case 15496:
              result = "VENDOR_LOGGING_TEST";
              break;
            case 15497:
              result = "FILTER_UNSOL_NOTIF";
              break;
            case 15498:
              result = "FAULT_INFO";
              break;
            case 15499:
              result = "DEEP_SLEEP_FILTER_LIST";
              break;
            case 15500:
              result = "DEEP_SLEEP_LOG_LEVEL";
              break;
            case 15501:
              result = "DEEP_SLEEP_REGION_LOG_LEVELS";
              break;
            case 15502:
              result = "LAST_HOST_WAKE_REASON";
              break;
            case 15505:
              result = "CNTR_STAT_ALL_RESET";
              break;
            case 15506:
              result = "NCP_STATE_DUMP";
              break;
            case 15507:
              result = "DEVICE_ID";
              break;
            case 15509:
              result = "CSL_TX_SCHED_FRAME_REQUEST_AHEAD";
              break;
            case 15510:
              result = "SETTINGS_VALIDATE";
              break;
            case 15520:
              result = "VENDOR_POWER_LIMI_TABLE";
              break;
            case 15522:
              result = "VENDOR_POWER_LIMIT_ACTIVE_ID";
              break;
            case 15523:
              result = "VENDOR_POWER_LIMIT_TABLE_VERSION";
              break;
            case 15524:
              result = "SPINEL_PROP_VENDOR_POWER_LIMIT_TABLE_POWER_TEST";
              break;
            case 15525:
              result = "VENDOR_POWER_LIMIT_ACTIVE_TABLE";
              break;
            case 15526:
              result = "VENDOR_POWER_MAPPING_TABLE";
              break;
            case 15527:
              result = "VENDOR_POWER_MAPPING_TABLE_VERSION";
              break;
            case 15528:
              result = "VENDOR_POWER_MAPPING_DEFAULT";
              break;
            case 15529:
              result = "VENDOR_POWER_MAPPING_TABLE_POWER_TEST";
              break;
            case 15530:
              result = "VENDOR_RADIO_CURRENT_POWER_INFO";
              break;
            case 15531:
              result = "VENDOR_POWER_MAPPING_TABLE_FLASH_CLEAR";
              break;
            case 15532:
              result = "VENDOR_POWER_MAPPING_TABLE_FLASH_DATA";
              break;
            case 15533:
              result = "VENDOR_POWER_MAPPING_TABLE_FLASH_DATA_VALID";
              break;
            default:
              v14 = 15370;
              v15 = "COEX_REQUEST_AHEAD_CSL_TX";
              v16 = a1 == 15371;
              v17 = "COEX_REQUEST_AHEAD_CSL_TX_MIN";
              goto LABEL_162;
          }
        }

        return result;
      }

      if (a1 > 16385)
      {
        switch(a1)
        {
          case 2000001:
            result = "VENDOR_RSSI_OFFSET";
            break;
          case 2000002:
            result = "VENDOR_MAC_PKT_SIZE_HISTOGRAM";
            break;
          case 2000003:
            result = "VENDOR_LQI_HISTOGRAM";
            break;
          case 2000004:
            result = "VENDOR_LINK_LOSS_COUNTER";
            break;
          case 2000005:
            result = "VENDOR_NEIGHBOR_RSSI_HISTOGRAM";
            break;
          case 2000006:
            result = "VENDOR_JOINER_RSSI_HISTOGRAM";
            break;
          case 2000007:
            result = "VENDOR_MLE_ADV_TX_NUM";
            break;
          case 2000008:
            result = "VENDOR_CONNECTED_NEIGHBORS_HISTOGRAM";
            break;
          case 2000009:
            result = "VENDOR_MAC_ERROR_HISTOGRAM";
            break;
          case 2000010:
          case 2000011:
          case 2000012:
          case 2000013:
            return result;
          case 2000014:
            result = "NETWORKDIAGNOSTICS_GET";
            break;
          case 2000015:
            result = "NETWORKDIAGNOSTICS_GET_RESPONSE";
            break;
          case 2000016:
            result = "VENDOR_MIN_MAC_INTERFRAME_DELAY";
            break;
          case 2000017:
            result = "VENDOR_TX_APPLICATION_PKT_COUNTER";
            break;
          default:
            v14 = 16386;
            v15 = "DEBUG_TEST_WATCHDOG";
            v16 = a1 == 16387;
            v17 = "DEBUG_LOG_TIMESTAMP_BASE";
            goto LABEL_162;
        }

        return result;
      }

      if (a1 > 15618)
      {
        v24 = "DEBUG_TEST_ASSERT";
        v25 = "DEBUG_NCP_LOG_LEVEL";
        if (a1 != 16385)
        {
          v25 = "UNKNOWN";
        }

        if (a1 != 0x4000)
        {
          v24 = v25;
        }

        v26 = "VENDOR_NCP_LOGS_DROPPED_FILTER_COUNTER_THRESHOLD";
        v27 = "VENDOR_NCP_LOGS_DROPPED_FILTER_TIMER_PERIOD";
        if (a1 != 15620)
        {
          v27 = "UNKNOWN";
        }

        if (a1 != 15619)
        {
          v26 = v27;
        }

        if (a1 < 0x4000)
        {
          return v26;
        }

        else
        {
          return v24;
        }
      }

      if (a1 <= 15616)
      {
        v10 = 15584;
        v11 = "VENDOR_OPENTHREAD_RADIO_COUNTERS";
        v12 = a1 == 15616;
        v13 = "VENDOR_NCP_BUFFER_THRESH_LVLS";
LABEL_149:
        if (!v12)
        {
          v13 = "UNKNOWN";
        }

        if (a1 == v10)
        {
          return v11;
        }

        else
        {
          return v13;
        }
      }

      v14 = 15617;
      v15 = "VENDOR_NCP_BUFFER_STATUS";
      v16 = a1 == 15618;
      v17 = "VENDOR_NCP_LOGS_DROPPED_COUNTER";
    }

    else if (a1 > 6143)
    {
      if (a1 > 6149)
      {
        switch(a1)
        {
          case 6400:
            result = "CHANNEL_MANAGER_NEW_CHANNEL";
            break;
          case 6401:
            result = "CHANNEL_MANAGER_DELAY";
            break;
          case 6402:
            result = "CHANNEL_MANAGER_SUPPORTED_CHANNELS";
            break;
          case 6403:
            result = "CHANNEL_MANAGER_FAVORED_CHANNELS";
            break;
          case 6404:
            result = "CHANNEL_MANAGER_CHANNEL_SELECT";
            break;
          case 6405:
            result = "CHANNEL_MANAGER_AUTO_SELECT_ENABLED";
            break;
          case 6406:
            result = "CHANNEL_MANAGER_AUTO_SELECT_INTERVAL";
            break;
          case 6407:
            result = "THREAD_NETWORK_TIME";
            break;
          case 6408:
            result = "TIME_SYNC_PERIOD";
            break;
          case 6409:
            result = "TIME_SYNC_XTAL_THRESHOLD";
            break;
          case 6410:
            result = "CHILD_SUPERVISION_INTERVAL";
            break;
          case 6411:
            result = "CHILD_SUPERVISION_CHECK_TIMEOUT";
            break;
          case 6412:
            result = "RCP_VERSION";
            break;
          case 6413:
            result = "PARENT_RESPONSE_INFO";
            break;
          case 6414:
            result = "SLAAC_ENABLED";
            break;
          case 6415:
          case 6416:
          case 6417:
          case 6418:
          case 6419:
          case 6420:
          case 6421:
          case 6422:
          case 6423:
          case 6424:
          case 6425:
          case 6426:
          case 6427:
            return result;
          case 6428:
            result = "MAC_CSL_DEBUGGING";
            break;
          default:
            v14 = 6150;
            v15 = "MESHCOP_COMMISSIONER_MGMT_SET";
            v16 = a1 == 6151;
            v17 = "MESHCOP_COMMISSIONER_GENERATE_PSKC";
            goto LABEL_162;
        }

        return result;
      }

      if (a1 > 6146)
      {
        if (a1 == 6147)
        {
          return "MESHCOP_COMMISSIONER_PAN_ID_QUERY";
        }

        v14 = 6148;
        v15 = "MESHCOP_COMMISSIONER_PAN_ID_CONFLICT_RESULT";
        v16 = a1 == 6149;
        v17 = "MESHCOP_COMMISSIONER_MGMT_GET";
      }

      else
      {
        if (a1 == 6144)
        {
          return "MESHCOP_COMMISSIONER_ANNOUNCE_BEGIN";
        }

        v14 = 6145;
        v15 = "MESHCOP_COMMISSIONER_ENERGY_SCAN";
        v16 = a1 == 6146;
        v17 = "MESHCOP_COMMISSIONER_ENERGY_SCAN_RESULT";
      }
    }

    else
    {
      if (a1 > 4873)
      {
        switch(a1)
        {
          case 5376:
            result = "THREAD_CHILD_TIMEOUT";
            break;
          case 5377:
            result = "THREAD_RLOC16";
            break;
          case 5378:
            result = "THREAD_ROUTER_UPGRADE_THRESHOLD";
            break;
          case 5379:
            result = "THREAD_CONTEXT_REUSE_DELAY";
            break;
          case 5380:
            result = "THREAD_NETWORK_ID_TIMEOUT";
            break;
          case 5381:
            result = "THREAD_ACTIVE_ROUTER_IDS";
            break;
          case 5382:
            result = "THREAD_RLOC16_DEBUG_PASSTHRU";
            break;
          case 5383:
            result = "THREAD_ROUTER_ROLE_ENABLED";
            break;
          case 5384:
            result = "THREAD_ROUTER_DOWNGRADE_THRESHOLD";
            break;
          case 5385:
            result = "THREAD_ROUTER_SELECTION_JITTER";
            break;
          case 5386:
            result = "THREAD_PREFERRED_ROUTER_ID";
            break;
          case 5387:
            result = "THREAD_NEIGHBOR_TABLE";
            break;
          case 5388:
            result = "THREAD_CHILD_COUNT_MAX";
            break;
          case 5389:
            result = "THREAD_LEADER_NETWORK_DATA";
            break;
          case 5390:
            result = "THREAD_STABLE_LEADER_NETWORK_DATA";
            break;
          case 5391:
            result = "THREAD_JOINERS";
            break;
          case 5392:
            result = "THREAD_COMMISSIONER_ENABLED";
            break;
          case 5393:
            result = "THREAD_TMF_PROXY_ENABLED";
            break;
          case 5394:
            result = "THREAD_TMF_PROXY_STREAM";
            break;
          case 5395:
            result = "THREAD_DISCOVERY_SCAN_JOINER_FLAG";
            break;
          case 5396:
            result = "THREAD_DISCOVERY_SCAN_ENABLE_FILTERING";
            break;
          case 5397:
            result = "THREAD_DISCOVERY_SCAN_PANID";
            break;
          case 5398:
            result = "THREAD_STEERING_DATA";
            break;
          case 5399:
            result = "THREAD_ROUTER_TABLE";
            break;
          case 5400:
            result = "THREAD_ACTIVE_DATASET";
            break;
          case 5401:
            result = "THREAD_PENDING_DATASET";
            break;
          case 5402:
            result = "THREAD_MGMT_SET_ACTIVE_DATASET";
            break;
          case 5403:
            result = "THREAD_MGMT_SET_PENDING_DATASET";
            break;
          case 5404:
            result = "DATASET_ACTIVE_TIMESTAMP";
            break;
          case 5405:
            result = "DATASET_PENDING_TIMESTAMP";
            break;
          case 5406:
            result = "DATASET_DELAY_TIMER";
            break;
          case 5407:
            result = "DATASET_SECURITY_POLICY";
            break;
          case 5408:
            result = "DATASET_RAW_TLVS";
            break;
          case 5409:
            result = "THREAD_CHILD_TABLE_ADDRESSES";
            break;
          case 5410:
            result = "THREAD_NEIGHBOR_TABLE_ERROR_RATES";
            break;
          case 5411:
            result = "THREAD_ADDRESS_CACHE_TABLE";
            break;
          case 5412:
            result = "THREAD_UDP_FORWARD_STREAM";
            break;
          case 5413:
            result = "THREAD_MGMT_GET_ACTIVE_DATASET";
            break;
          case 5414:
            result = "THREAD_MGMT_GET_PENDING_DATASET";
            break;
          case 5415:
            result = "DATASET_DEST_ADDRESS";
            break;
          case 5416:
            result = "THREAD_NEW_DATASET";
            break;
          case 5417:
            result = "SPINEL_PROP_THREAD_CSL_PERIOD";
            break;
          case 5418:
            result = "SPINEL_PROP_THREAD_CSL_TIMEOUT";
            break;
          case 5419:
            result = "SPINEL_PROP_THREAD_CSL_CHANNEL";
            break;
          case 5420:
            result = "SPINEL_PROP_THREAD_DOMAIN_NAME";
            break;
          case 5421:
            result = "THREAD_LINK_METRICS_QUERY";
            break;
          case 5422:
            result = "THREAD_LINK_METRICS_QUERY_RESULT";
            break;
          case 5423:
            result = "LINK_METRICS_PROBE";
            break;
          case 5424:
            result = "THREAD_LINK_METRICS_MGMT_ENH_ACK";
            break;
          case 5425:
            result = "THREAD_LINK_METRICS_MGMT_ENH_ACK_IE";
            break;
          case 5426:
            result = "SPINEL_PROP_THREAD_LINK_METRICS_MGMT_FORWARD";
            break;
          case 5427:
            result = "SPINEL_PROP_THREAD_LINK_METRICS_MGMT_RESPONSE";
            break;
          case 5428:
            result = "THREAD_MLR_REQUEST";
            break;
          case 5429:
            result = "THREAD_MLR_RESPONSE";
            break;
          case 5430:
            result = "THREAD_DUA_ID";
            break;
          case 5431:
            result = "THREAD_BACKBONE_ROUTER_PRIMARY";
            break;
          case 5432:
            result = "THREAD_BACKBONE_ROUTER_LOCAL_STATE";
            break;
          case 5433:
            result = "THREAD_BACKBONE_ROUTER_LOCAL_CONFIG";
            break;
          case 5434:
            result = "THREAD_BACKBONE_ROUTER_REGISTER";
            break;
          case 5435:
            result = "THREAD_BACKBONE_ROUTER_REGISTRATION_JITTER";
            break;
          case 5436:
            result = "THREAD_BACKBONE_ROUTER_MULTICAST_LISTENER_EVENT";
            break;
          case 5437:
            result = "THREAD_ACTIVE_DATASET_TLVS";
            break;
          default:
            v14 = 4874;
            v15 = "MAC_MAX_RETRY_NUMBER_DIRECT";
            v16 = a1 == 4875;
            v17 = "MAC_MAX_RETRY_NUMBER_INDIRECT";
            goto LABEL_162;
        }

        return result;
      }

      if (a1 > 4868)
      {
        if (a1 > 4870)
        {
          if (a1 == 4871)
          {
            return "MAC_DENYLIST_ENABLED";
          }

          if (a1 == 4872)
          {
            return "MAC_FIXED_RSS";
          }

          return "MAC_CCA_FAILURE_RATE";
        }

        v10 = 4869;
        v11 = "MAC_SRC_MATCH_EXTENDED_ADDRESSES";
        v12 = a1 == 4870;
        v13 = "MAC_DENYLIST";
        goto LABEL_149;
      }

      if (a1 <= 4866)
      {
        v10 = 4865;
        v11 = "MAC_ALLOWLIST_ENABLED";
        v12 = a1 == 4866;
        v13 = "MAC_EXTENDED_ADDR";
        goto LABEL_149;
      }

      v14 = 4867;
      v15 = "MAC_SRC_MATCH_ENABLED";
      v16 = a1 == 4868;
      v17 = "MAC_SRC_MATCH_SHORT_ADDRESSES";
    }

LABEL_162:
    if (!v16)
    {
      v17 = "UNKNOWN";
    }

    if (a1 == v14)
    {
      return v15;
    }

    else
    {
      return v17;
    }
  }

  if (a1 <= 1279)
  {
    if (a1 > 255)
    {
      v3 = "15_4_PIB_PHY_CHANNELS_SUPPORTED";
      v21 = "15_4_PIB_MAC_PROMISCUOUS_MODE";
      v22 = "15_4_PIB_MAC_SECURITY_ENABLED";
      if (a1 != 1117)
      {
        v22 = "UNKNOWN";
      }

      if (a1 != 1105)
      {
        v21 = v22;
      }

      if (a1 != 1025)
      {
        v3 = v21;
      }

      v5 = "UART_BITRATE";
      v23 = "UART_XON_XOFF";
      if (a1 != 257)
      {
        v23 = "UNKNOWN";
      }

      if (a1 != 256)
      {
        v5 = v23;
      }

      v7 = a1 <= 1024;
      goto LABEL_132;
    }

    switch(a1)
    {
      case 0:
        result = "LAST_STATUS";
        break;
      case 1:
        result = "PROTOCOL_VERSION";
        break;
      case 2:
        result = "NCP_VERSION";
        break;
      case 3:
        result = "INTERFACE_TYPE";
        break;
      case 4:
        result = "VENDOR_ID";
        break;
      case 5:
        result = "CAPS";
        break;
      case 6:
        result = "INTERFACE_COUNT";
        break;
      case 7:
        result = "POWER_STATE";
        break;
      case 8:
        result = "HWADDR";
        break;
      case 9:
        result = "LOCK";
        break;
      case 10:
        result = "HBO_MEM_MAX";
        break;
      case 11:
        result = "HBO_BLOCK_MAX";
        break;
      case 12:
        result = "HOST_POWER_STATE";
        break;
      case 13:
        result = "MCU_POWER_STATE";
        break;
      case 32:
        result = "PHY_ENABLED";
        break;
      case 33:
        result = "PHY_CHAN";
        break;
      case 34:
        result = "PHY_CHAN_SUPPORTED";
        break;
      case 35:
        result = "PHY_FREQ";
        break;
      case 36:
        result = "PHY_CCA_THRESHOLD";
        break;
      case 37:
        result = "PHY_TX_POWER";
        break;
      case 38:
        result = "PHY_RSSI";
        break;
      case 39:
        result = "PHY_RX_SENSITIVITY";
        break;
      case 40:
        result = "PHY_PCAP_ENABLED";
        break;
      case 41:
        result = "PHY_CHAN_PREFERRED";
        break;
      case 48:
        result = "MAC_SCAN_STATE";
        break;
      case 49:
        result = "MAC_SCAN_MASK";
        break;
      case 50:
        result = "MAC_SCAN_PERIOD";
        break;
      case 51:
        result = "MAC_SCAN_BEACON";
        break;
      case 52:
        result = "MAC_15_4_LADDR";
        break;
      case 53:
        result = "MAC_15_4_SADDR";
        break;
      case 54:
        result = "MAC_15_4_PANID";
        break;
      case 55:
        result = "MAC_RAW_STREAM_ENABLED";
        break;
      case 56:
        result = "MAC_PROMISCUOUS_MODE";
        break;
      case 57:
        result = "MAC_ENERGY_SCAN_RESULT";
        break;
      case 58:
        result = "MAC_DATA_POLL_PERIOD";
        break;
      case 64:
        result = "NET_SAVED";
        break;
      case 65:
        result = "NET_IF_UP";
        break;
      case 66:
        result = "NET_STACK_UP";
        break;
      case 67:
        result = "NET_ROLE";
        break;
      case 68:
        result = "NET_NETWORK_NAME";
        break;
      case 69:
        result = "NET_XPANID";
        break;
      case 70:
        result = "NET_NETWORK_KEY";
        break;
      case 71:
        result = "NET_KEY_SEQUENCE_COUNTER";
        break;
      case 72:
        result = "NET_PARTITION_ID";
        break;
      case 73:
        result = "NET_REQUIRE_JOIN_EXISTING";
        break;
      case 74:
        result = "NET_KEY_SWITCH_GUARDTIME";
        break;
      case 75:
        result = "NET_PSKC";
        break;
      case 80:
        result = "THREAD_LEADER_ADDR";
        break;
      case 81:
        result = "THREAD_PARENT";
        break;
      case 82:
        result = "THREAD_CHILD_TABLE";
        break;
      case 83:
        result = "THREAD_LEADER_RID";
        break;
      case 84:
        result = "THREAD_LEADER_WEIGHT";
        break;
      case 85:
        result = "THREAD_LOCAL_LEADER_WEIGHT";
        break;
      case 86:
        result = "THREAD_NETWORK_DATA";
        break;
      case 87:
        result = "THREAD_NETWORK_DATA_VERSION";
        break;
      case 88:
        result = "THREAD_STABLE_NETWORK_DATA";
        break;
      case 89:
        result = "THREAD_STABLE_NETWORK_DATA_VERSION";
        break;
      case 90:
        result = "THREAD_ON_MESH_NETS";
        break;
      case 91:
        result = "THREAD_OFF_MESH_ROUTES";
        break;
      case 92:
        result = "THREAD_ASSISTING_PORTS";
        break;
      case 93:
        result = "THREAD_ALLOW_LOCAL_NET_DATA_CHANGE";
        break;
      case 94:
        result = "THREAD_MODE";
        break;
      case 96:
        result = "IPV6_LL_ADDR";
        break;
      case 97:
        result = "IPV6_ML_ADDR";
        break;
      case 98:
        result = "IPV6_ML_PREFIX";
        break;
      case 99:
        result = "IPV6_ADDRESS_TABLE";
        break;
      case 100:
        result = "IPV6_ROUTE_TABLE";
        break;
      case 101:
        result = "IPV6_ICMP_PING_OFFLOAD";
        break;
      case 102:
        result = "IPV6_MULTICAST_ADDRESS_TABLE";
        break;
      case 103:
        result = "IPV6_ICMP_PING_OFFLOAD_MODE";
        break;
      case 112:
        result = "STREAM_DEBUG";
        break;
      case 113:
        result = "STREAM_RAW";
        break;
      case 114:
        result = "STREAM_NET";
        break;
      case 115:
        result = "STREAM_NET_INSECURE";
        break;
      case 116:
        result = "STREAM_LOG";
        break;
      case 117:
        result = "STREAM_PCAP";
        break;
      case 128:
        result = "MESHCOP_JOINER_STATE";
        break;
      case 129:
        result = "MESHCOP_JOINER_COMMISSIONING";
        break;
      case 130:
        result = "MESHCOP_COMMISSIONER_STATE";
        break;
      case 131:
        result = "MESHCOP_COMMISSIONER_JOINERS";
        break;
      case 132:
        result = "MESHCOP_COMMISSIONER_PROVISIONING_URL";
        break;
      case 133:
        result = "MESHCOP_COMMISSIONER_SESSION_ID";
        break;
      case 143:
        result = "MESHCOP_JOINER_SCAN_RETRIES";
        break;
      case 160:
        result = "SERVER_ALLOW_LOCAL_DATA_CHANGE";
        break;
      case 161:
        result = "SERVER_SERVICES";
        break;
      case 162:
        result = "SERVER_LEADER_SERVICES";
        break;
      default:
        return result;
    }
  }

  else
  {
    if (a1 <= 1681)
    {
      if (a1 <= 1479)
      {
        switch(a1)
        {
          case 1380:
            result = "CNTR_RX_PKT_TOTAL";
            break;
          case 1381:
            result = "CNTR_RX_PKT_DATA";
            break;
          case 1382:
            result = "CNTR_RX_PKT_DATA_POLL";
            break;
          case 1383:
            result = "CNTR_RX_PKT_BEACON";
            break;
          case 1384:
            result = "CNTR_RX_PKT_BEACON_REQ";
            break;
          case 1385:
            result = "CNTR_RX_PKT_OTHER";
            break;
          case 1386:
            result = "CNTR_RX_PKT_FILT_WL";
            break;
          case 1387:
            result = "CNTR_RX_PKT_FILT_DA";
            break;
          case 1388:
            result = "CNTR_RX_ERR_EMPTY";
            break;
          case 1389:
            result = "CNTR_RX_ERR_UKWN_NBR";
            break;
          case 1390:
            result = "CNTR_RX_ERR_NVLD_SADDR";
            break;
          case 1391:
            result = "CNTR_RX_ERR_SECURITY";
            break;
          case 1392:
            result = "CNTR_RX_ERR_BAD_FCS";
            break;
          case 1393:
            result = "CNTR_RX_ERR_OTHER";
            break;
          case 1394:
            result = "CNTR_RX_PKT_DUP";
            break;
          case 1395:
            result = "CNTR_RX_PKT_UNICAST";
            break;
          case 1396:
            result = "CNTR_RX_PKT_BROADCAST";
            break;
          default:
            switch(a1)
            {
              case 1280:
                result = "CNTR_RESET";
                break;
              case 1281:
                result = "CNTR_TX_PKT_TOTAL";
                break;
              case 1282:
                result = "CNTR_TX_PKT_ACK_REQ";
                break;
              case 1283:
                result = "CNTR_TX_PKT_ACKED";
                break;
              case 1284:
                result = "CNTR_TX_PKT_NO_ACK_REQ";
                break;
              case 1285:
                result = "CNTR_TX_PKT_DATA";
                break;
              case 1286:
                result = "CNTR_TX_PKT_DATA_POLL";
                break;
              case 1287:
                result = "CNTR_TX_PKT_BEACON";
                break;
              case 1288:
                result = "CNTR_TX_PKT_BEACON_REQ";
                break;
              case 1289:
                result = "CNTR_TX_PKT_OTHER";
                break;
              case 1290:
                result = "CNTR_TX_PKT_RETRY";
                break;
              case 1291:
                result = "CNTR_TX_ERR_CCA";
                break;
              case 1292:
                result = "CNTR_TX_PKT_UNICAST";
                break;
              case 1293:
                result = "CNTR_TX_PKT_BROADCAST";
                break;
              case 1294:
                result = "CNTR_TX_ERR_ABORT";
                break;
              default:
                return result;
            }

            break;
        }

        return result;
      }

      if (a1 > 1581)
      {
        if (a1 > 1585)
        {
          v3 = "MSG_BUFFER_COUNTERS";
          v30 = "CNTR_ALL_MAC_COUNTERS";
          if (a1 != 1681)
          {
            v30 = "UNKNOWN";
          }

          if (a1 != 1680)
          {
            v3 = v30;
          }

          v5 = "CNTR_IP_TX_FAILURE";
          v31 = "CNTR_IP_RX_FAILURE";
          if (a1 != 1587)
          {
            v31 = "UNKNOWN";
          }

          if (a1 != 1586)
          {
            v5 = v31;
          }

          v7 = a1 <= 1679;
        }

        else
        {
          v3 = "CNTR_IP_TX_SUCCESS";
          v18 = "CNTR_IP_RX_SUCCESS";
          if (a1 != 1585)
          {
            v18 = "UNKNOWN";
          }

          if (a1 != 1584)
          {
            v3 = v18;
          }

          v5 = "CNTR_RX_SPINEL_ERR";
          v19 = "CNTR_RX_SPINEL_OUT_OF_ORDER_TID";
          if (a1 != 1583)
          {
            v19 = "UNKNOWN";
          }

          if (a1 != 1582)
          {
            v5 = v19;
          }

          v7 = a1 <= 1583;
        }
      }

      else if (a1 > 1483)
      {
        v3 = "CNTR_TX_SPINEL_TOTAL";
        v28 = "CNTR_RX_SPINEL_TOTAL";
        if (a1 != 1581)
        {
          v28 = "UNKNOWN";
        }

        if (a1 != 1580)
        {
          v3 = v28;
        }

        v5 = "CNTR_RX_IP_INSEC_TOTAL";
        v29 = "CNTR_RX_IP_DROPPED";
        if (a1 != 1485)
        {
          v29 = "UNKNOWN";
        }

        if (a1 != 1484)
        {
          v5 = v29;
        }

        v7 = a1 <= 1579;
      }

      else
      {
        v3 = "CNTR_TX_IP_DROPPED";
        v4 = "CNTR_RX_IP_SEC_TOTAL";
        if (a1 != 1483)
        {
          v4 = "UNKNOWN";
        }

        if (a1 != 1482)
        {
          v3 = v4;
        }

        v5 = "CNTR_TX_IP_SEC_TOTAL";
        v6 = "CNTR_TX_IP_INSEC_TOTAL";
        if (a1 != 1481)
        {
          v6 = "UNKNOWN";
        }

        if (a1 != 1480)
        {
          v5 = v6;
        }

        v7 = a1 <= 1481;
      }

LABEL_132:
      if (v7)
      {
        return v5;
      }

      else
      {
        return v3;
      }
    }

    if (a1 <= 4104)
    {
      if (a1 <= 4098)
      {
        v3 = "GPIO_STATE";
        if (a1 != 4098)
        {
          v3 = "UNKNOWN";
        }

        if (a1 == 4096)
        {
          v3 = "GPIO_CONFIG";
        }

        if (a1 == 1684)
        {
          v3 = "CNTR_MAC_RETRY_HISTOGRAM";
        }

        v5 = "CNTR_MLE_COUNTERS";
        v20 = "CNTR_ALL_IP_COUNTERS";
        if (a1 != 1683)
        {
          v20 = "UNKNOWN";
        }

        if (a1 != 1682)
        {
          v5 = v20;
        }

        v7 = a1 <= 1683;
        goto LABEL_132;
      }

      if (a1 > 4101)
      {
        if (a1 == 4102)
        {
          return "TRNG_128";
        }

        if (a1 == 4103)
        {
          return "TRNG_RAW_32";
        }

        v8 = a1 == 4104;
        v9 = "UNSOL_UPDATE_FILTER";
      }

      else
      {
        if (a1 == 4099)
        {
          return "GPIO_STATE_SET";
        }

        if (a1 == 4100)
        {
          return "GPIO_STATE_CLEAR";
        }

        v8 = a1 == 4101;
        v9 = "TRNG_32";
      }

      if (v8)
      {
        return v9;
      }
    }

    else
    {
      switch(a1)
      {
        case 4608:
          result = "JAM_DETECT_ENABLE";
          break;
        case 4609:
          result = "JAM_DETECTED";
          break;
        case 4610:
          result = "JAM_DETECT_RSSI_THRESHOLD";
          break;
        case 4611:
          result = "JAM_DETECT_WINDOW";
          break;
        case 4612:
          result = "JAM_DETECT_BUSY";
          break;
        case 4613:
          result = "JAM_DETECT_HISTORY_BITMAP";
          break;
        case 4614:
          result = "CHANNEL_MONITOR_SAMPLE_INTERVAL";
          break;
        case 4615:
          result = "CHANNEL_MONITOR_RSSI_THRESHOLD";
          break;
        case 4616:
          result = "CHANNEL_MONITOR_SAMPLE_WINDOW";
          break;
        case 4617:
          result = "CHANNEL_MONITOR_SAMPLE_COUNT";
          break;
        case 4618:
          result = "CHANNEL_MONITOR_CHANNEL_OCCUPANCY";
          break;
        case 4619:
          result = "RADIO_CAPS";
          break;
        case 4620:
          result = "RADIO_COEX_METRICS";
          break;
        case 4621:
          result = "RADIO_COEX_ENABLE";
          break;
        case 4622:
          result = "CHUTIL_MONITOR_SAMPLE_INTERVAL";
          break;
        case 4623:
          result = "CHUTIL_MONITOR_CCA_FAILURE_THRESHOLD";
          break;
        case 4624:
          result = "CHUTIL_MONITOR_NOACK_FAILURE_THRESHOLD";
          break;
        case 4625:
          result = "CHUTIL_MONITOR_RX_GRANT_THRESHOLD";
          break;
        case 4626:
          result = "CHUTIL_MONITOR_ENABLED";
          break;
        case 4627:
          result = "CHANUTIL_MONITOR_STATE";
          break;
        case 4628:
          result = "TPC_MODE";
          break;
        case 4629:
          result = "TPC_LINK_METRICS_PROBE_INTERVAL";
          break;
        case 4630:
          result = "TPC_WEIGHT_FACTOR";
          break;
        case 4631:
          result = "TPC_SET_POINT_ROUTER";
          break;
        case 4632:
          result = "TPC_SET_POINT_END_DEVICE";
          break;
        case 4633:
          result = "TPC_PROPOTIONAL_GAIN";
          break;
        case 4634:
          result = "TPC_INTEGRAL_GAIN";
          break;
        case 4635:
          result = "TPC_ERROR_GAIN_CODEWORD0";
          break;
        case 4636:
          result = "TPC_ERROR_GAIN_CODEWORD1";
          break;
        case 4637:
          result = "TPC_ERROR_GAIN_CODEWORD2";
          break;
        case 4638:
          result = "TPC_ERROR_GAIN_CODEWORD3";
          break;
        case 4639:
          result = "TPC_STEP_UP_ACK_LOST";
          break;
        case 4640:
        case 4641:
        case 4642:
        case 4643:
        case 4644:
          return result;
        case 4645:
          result = "TPC_FRAME_TX_POWER_HISTOGRAM";
          break;
        case 4646:
          result = "TPC_NEIGHBOR_TX_POWER_HISTOGRAM";
          break;
        case 4647:
          result = "TPC_NEIGHBOR_ENERGY_SAVINGS_FACTOR_HISTOGRAM";
          break;
        default:
          v14 = 4105;
          v15 = "UNSOL_UPDATE_LIST";
          v16 = a1 == 4864;
          v17 = "MAC_ALLOWLIST";
          goto LABEL_162;
      }
    }
  }

  return result;
}

const char *spinel_net_role_to_cstr(unsigned int a1)
{
  if (a1 > 3)
  {
    return "NET_ROLE_UNKNONW";
  }

  else
  {
    return off_100078D78[a1];
  }
}

const char *spinel_mcu_power_state_to_cstr(unsigned int a1)
{
  if (a1 > 2)
  {
    return "MCU_POWER_STATE_UNKNOWN";
  }

  else
  {
    return off_100078D98[a1];
  }
}

const char *spinel_status_to_cstr(int a1)
{
  result = "UNKNOWN";
  if (a1 > 103)
  {
    if (a1 > 15359)
    {
      v3 = "SPINEL_STATUS_TRANSMIT_NOT_GRANTED";
      v4 = "SPINEL_STATUS_LOG_DROPPED";
      if (a1 != 2000002)
      {
        v4 = "UNKNOWN";
      }

      if (a1 == 2000001)
      {
        v5 = "SPINEL_STATUS_IPV6_MSG_ALLOC_FAILURE";
      }

      else
      {
        v5 = v4;
      }

      if (a1 != 2000000)
      {
        v3 = v5;
      }

      v6 = "NCP_BUFFER_THRESH_HIGH";
      v7 = "NCP_BUFFER_THRESH_LOW";
      if (a1 != 15393)
      {
        v7 = "UNKNOWN";
      }

      if (a1 != 15392)
      {
        v6 = v7;
      }

      if (a1 == 15360)
      {
        v8 = "VENDOR_POWER_MAP_INVALID";
      }

      else
      {
        v8 = v6;
      }

      if (a1 <= 1999999)
      {
        return v8;
      }

      else
      {
        return v3;
      }
    }

    else
    {
      switch(a1)
      {
        case 'h':
          result = "JOIN_FAILURE";
          break;
        case 'i':
          result = "JOIN_SECURITY";
          break;
        case 'j':
          result = "JOIN_NO_PEERS";
          break;
        case 'k':
          result = "JOIN_INCOMPATIBLE";
          break;
        case 'l':
          result = "JOIN_RSP_TIMEOUT";
          break;
        case 'm':
          result = "JOIN_SUCCESS";
          break;
        case 'p':
          result = "RESET_POWER_ON";
          break;
        case 'q':
          result = "RESET_EXTERNAL";
          break;
        case 'r':
          result = "RESET_SOFTWARE";
          break;
        case 's':
          result = "RESET_FAULT";
          break;
        case 't':
          result = "RESET_CRASH";
          break;
        case 'u':
          result = "RESET_ASSERT";
          break;
        case 'v':
          result = "RESET_OTHER";
          break;
        case 'w':
          result = "RESET_UNKNOWN";
          break;
        case 'x':
          result = "RESET_WATCHDOG";
          break;
        default:
          return result;
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        result = "OK";
        break;
      case 1:
        result = "FAILURE";
        break;
      case 2:
        result = "UNIMPLEMENTED";
        break;
      case 3:
        result = "INVALID_ARGUMENT";
        break;
      case 4:
        result = "INVALID_STATE";
        break;
      case 5:
        result = "INVALID_COMMAND";
        break;
      case 6:
        result = "INVALID_INTERFACE";
        break;
      case 7:
        result = "INTERNAL_ERROR";
        break;
      case 8:
        result = "SECURITY_ERROR";
        break;
      case 9:
        result = "PARSE_ERROR";
        break;
      case 10:
        result = "IN_PROGRESS";
        break;
      case 11:
        result = "NOMEM";
        break;
      case 12:
        result = "BUSY";
        break;
      case 13:
        result = "PROP_NOT_FOUND";
        break;
      case 14:
        result = "DROPPED";
        break;
      case 15:
        result = "EMPTY";
        break;
      case 16:
        result = "CMD_TOO_BIG";
        break;
      case 17:
        result = "NO_ACK";
        break;
      case 18:
        result = "CCA_FAILURE";
        break;
      case 19:
        result = "ALREADY";
        break;
      case 20:
        result = "ITEM_NOT_FOUND";
        break;
      case 21:
        result = "INVALID_COMMAND_FOR_PROP";
        break;
      case 22:
        result = "UNKNOWN_NEIGHBOR";
        break;
      case 23:
        result = "NOT_CAPABLE";
        break;
      case 24:
        result = "RESPONSE_TIMEOUT";
        break;
      default:
        return result;
    }
  }

  return result;
}

const char *spinel_capability_to_cstr(int a1)
{
  result = "UNKNOWN";
  if (a1 > 511)
  {
    if (a1 > 637)
    {
      if (a1 > 1028)
      {
        v9 = "NEST_LEGACY_NET_WAKE";
        v10 = "NEST_TRANSMIT_HOOK";
        if (a1 != 15298)
        {
          v10 = "UNKNOWN";
        }

        if (a1 != 15297)
        {
          v9 = v10;
        }

        if (a1 == 15296)
        {
          v11 = "NEST_LEGACY_INTERFACE";
        }

        else
        {
          v11 = v9;
        }

        v12 = "THREAD_SERVICE";
        v13 = "THREAD_CSL_RECEIVER";
        v14 = "THREAD_LINK_METRICS";
        if (a1 != 1031)
        {
          v14 = "UNKNOWN";
        }

        if (a1 != 1030)
        {
          v13 = v14;
        }

        if (a1 != 1029)
        {
          v12 = v13;
        }

        if (a1 <= 15295)
        {
          return v12;
        }

        else
        {
          return v11;
        }
      }

      else
      {
        v3 = "THREAD_UDP_FORWARD";
        v4 = "THREAD_JOINER";
        v5 = "THREAD_BORDER_ROUTER";
        if (a1 != 1028)
        {
          v5 = "UNKNOWN";
        }

        if (a1 != 1027)
        {
          v4 = v5;
        }

        if (a1 != 1026)
        {
          v3 = v4;
        }

        v6 = "CHANNEL_UTILIZATION_MONITOR";
        v7 = "THREAD_COMMISSIONER";
        v8 = "THREAD_TMF_PROXY";
        if (a1 != 1025)
        {
          v8 = "UNKNOWN";
        }

        if (a1 != 1024)
        {
          v7 = v8;
        }

        if (a1 != 638)
        {
          v6 = v7;
        }

        if (a1 <= 1025)
        {
          return v6;
        }

        else
        {
          return v3;
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 512:
          result = "MAC_WHITELIST";
          break;
        case 513:
          result = "MAC_RAW";
          break;
        case 514:
          result = "OOB_STEERING_DATA";
          break;
        case 515:
          result = "CHANNEL_MONITOR";
          break;
        case 516:
          result = "ERROR_RATE_TRACKING";
          break;
        case 517:
          result = "CHANNEL_MANAGER";
          break;
        case 518:
          result = "OPENTHREAD_LOG_METADATA";
          break;
        case 519:
          result = "TIME_SYNC";
          break;
        case 520:
          result = "CHILD_SUPERVISION";
          break;
        case 521:
          result = "POSIX_APP";
          break;
        case 522:
          result = "SLAAC";
          break;
        case 523:
          result = "RADIO_COEX";
          break;
        case 524:
          result = "MAC_RETRY_HISTOGRAM";
          break;
        case 527:
          result = "DUA";
          break;
        case 529:
          result = "TRANSMIT_POWER_CONTROL";
          break;
        default:
          return result;
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        result = "LOCK";
        break;
      case 2:
        result = "NET_SAVE";
        break;
      case 3:
        result = "HBO";
        break;
      case 4:
        result = "POWER_SAVE";
        break;
      case 5:
        result = "COUNTERS";
        break;
      case 6:
        result = "JAM_DETECT";
        break;
      case 7:
        result = "PEEK_POKE";
        break;
      case 8:
        result = "WRITABLE_RAW_STREAM";
        break;
      case 9:
        result = "GPIO";
        break;
      case 10:
        result = "TRNG";
        break;
      case 11:
        result = "CMD_MULTI";
        break;
      case 12:
        result = "UNSOL_UPDATE_FILTER";
        break;
      case 13:
        result = "MCU_POWER_STATE";
        break;
      case 14:
        result = "PCAP";
        break;
      case 16:
        result = "802_15_4_2003";
        break;
      case 17:
        result = "802_15_4_2006";
        break;
      case 18:
        result = "802_15_4_2011";
        break;
      case 21:
        result = "802_15_4_PIB";
        break;
      case 24:
        result = "802_15_4_2450MHZ_OQPSK";
        break;
      case 25:
        result = "802_15_4_915MHZ_OQPSK";
        break;
      case 26:
        result = "802_15_4_868MHZ_OQPSK";
        break;
      case 27:
        result = "802_15_4_915MHZ_BPSK";
        break;
      case 28:
        result = "802_15_4_868MHZ_BPSK";
        break;
      case 29:
        result = "802_15_4_915MHZ_ASK";
        break;
      case 30:
        result = "802_15_4_868MHZ_ASK";
        break;
      case 32:
        result = "CONFIG_FTD";
        break;
      case 33:
        result = "CONFIG_MTD";
        break;
      case 34:
        result = "CONFIG_RADIO";
        break;
      case 48:
        result = "ROLE_ROUTER";
        break;
      case 49:
        result = "ROLE_SLEEPY";
        break;
      case 52:
        result = "NET_THREAD_1_0";
        break;
      case 53:
        result = "NET_THREAD_1_1";
        break;
      case 54:
        result = "NET_THREAD_1_2";
        break;
      default:
        return result;
    }
  }

  return result;
}

const char *spinel_link_metrics_status_to_cstr(char a1)
{
  if ((a1 + 2) > 6u)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_100078DB0[(a1 + 2)];
  }
}

id sub_100018650(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [[NSData alloc] initWithBase64EncodedString:v1 options:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100018B58(void *a1)
{
  if (a1)
  {
    a1 = [a1 base64EncodedStringWithOptions:0];
    v1 = vars8;
  }

  return a1;
}

void sub_10001A9F0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Au);
}

void sub_10001AA10(void *a1, NSObject *a2)
{
  v4 = [a1 network];
  v5 = [v4 networkName];
  v6 = [a1 network];
  v7 = [v6 extendedPANID];
  v9 = 138412546;
  v10 = v5;
  sub_10001A9E4();
  v11 = v8;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to calculate UUID (name=%@; xpanid=%@)!", &v9, 0x16u);
}

void sub_10001AAF8(void *a1)
{
  v2 = [a1 network];
  v3 = [v2 networkName];
  v4 = [a1 network];
  v5 = [v4 extendedPANID];
  v6 = [a1 borderAgent];
  v7 = [v6 discriminatorId];
  v8 = [a1 keychainAccessGroup];
  sub_10001A9E4();
  sub_10001A9F0(&_mh_execute_header, v9, v10, "Failed to calculate UUID (name=%@; xpanid=%@; discriminatorId=%@; keychainAccessGroup=%@)!", v11, v12, v13, v14, 2u);
}

void sub_10001AC20()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001AD40()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001ADC4()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001AE48(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 uniqueIdentifier];
  v6 = 138412546;
  v7 = v5;
  sub_10001A9E4();
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Warning: decoded record with identifier %@ but does not match expected %@!", &v6, 0x16u);
}

void sub_10001AF34()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001AFB8()
{
  sub_100012728();
  sub_100008438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001B07C(void *a1)
{
  v2 = [a1 network];
  v3 = [v2 networkName];
  v4 = [a1 network];
  v5 = [v4 extendedPANID];
  v6 = [a1 borderAgent];
  v7 = [v6 discriminatorId];
  sub_10001A9E4();
  sub_10001A9F0(&_mh_execute_header, v8, v9, "Illegal attempt to form keychain item with insufficient information (name=%@; xpanid=%@; discriminatorId=%@; uuid=%@)!", v10, v11, v12, v13, 2u);
}

id sub_10001B194(int a1)
{
  if (qword_100080810 != -1)
  {
    sub_10001B258();
  }

  v2 = qword_100080800[a1];

  return v2;
}

void sub_10001B1E8(id a1)
{
  v1 = os_log_create("com.apple.thread", "unspecified");
  v2 = qword_100080800[0];
  qword_100080800[0] = v1;

  qword_100080808 = os_log_create("com.apple.thread", "store");

  _objc_release_x1();
}

void sub_10001B2B0(id a1)
{
  qword_100080818 = objc_alloc_init(THThreadNetworkCredentialsKeychainBackingStore);

  _objc_release_x1();
}

void sub_10001B734(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) networkName];
    v5 = [*(a1 + 32) extendedPANID];
    *buf = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Request to fetch credentials for network (name=%@, xpanid=%@)", buf, 0x16u);
  }

  v6 = [THThreadNetworkCredentialsStoreRecord keyChainQueryForFetchOperationForNetwork:*(a1 + 32)];
  v7 = *(a1 + 40);
  v10 = 0;
  v8 = [v7 _doFetchRecords:v6 error:&v10];
  v9 = v10;
  (*(*(a1 + 48) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_10001B94C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Request to fetch all credentials", buf, 2u);
  }

  v4 = +[THThreadNetworkCredentialsStoreRecord keyChainQueryForFetchAllOperation];
  v5 = *(a1 + 32);
  v12 = 0;
  v6 = [v5 _doFetchRecords:v4 error:&v12];
  v7 = v12;
  v8 = sub_10001B194(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "fetched all credentials", v11, 2u);
  }

  (*(*(a1 + 40) + 16))();
  v9 = sub_10001B194(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "fetched all credentials, and completion block is done", v10, 2u);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10001BBA8(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Request to fetch credential with UUID %@", buf, 0xCu);
  }

  v5 = [THThreadNetworkCredentialsStoreRecord keyChainQueryForFetchOneOperationForUniqueIdentifier:a1[4]];
  v6 = a1[5];
  v11 = 0;
  v7 = [v6 _doFetchRecords:v5 error:&v11];
  v8 = v11;
  v9 = a1[6];
  v10 = [v7 anyObject];
  (*(v9 + 16))(v9, v10, v8);

  objc_autoreleasePoolPop(v2);
}

void sub_10001BFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001C000(uint64_t a1, uint64_t a2)
{
  v3 = a2 == 0;
  v4 = sub_10001B194(1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CKKS response for known state is Likely good", buf, 2u);
    }

    v7 = dispatch_group_create();
    *buf = 0;
    v43 = buf;
    v44 = 0x2020000000;
    v45 = 0;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10001C728;
    v38[3] = &unk_100078E98;
    v8 = *(a1 + 72);
    v40 = buf;
    v41 = v8;
    v6 = v7;
    v39 = v6;
    v9 = objc_retainBlock(v38);
    dispatch_group_enter(v6);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001C938;
    block[3] = &unk_100078EC0;
    v37 = *(a1 + 72);
    v10 = *(a1 + 32);
    v35 = *(a1 + 40);
    v36 = *(a1 + 64);
    dispatch_group_notify(v6, v10, block);
    v11 = *(a1 + 48);
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_10001CBA0;
    v32 = &unk_100078EE8;
    v12 = v9;
    v33 = v12;
    v13 = _SecItemAddAndNotifyOnSync();
    v14 = sub_10001B194(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "error";
      v47 = "[THThreadNetworkCredentialsKeychainBackingStore storeRecordAndSync:completion:]_block_invoke";
      *v46 = 136315650;
      if (!v13)
      {
        v15 = "success";
      }

      v48 = 1024;
      v49 = 303;
      v50 = 2080;
      v51 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s:%d _SecItemAddAndNotifyOnSync return value : %s...", v46, 0x1Cu);
    }

    if (v13)
    {
      v16 = sub_10001B194(1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v46 = 136315394;
        v47 = "[THThreadNetworkCredentialsKeychainBackingStore storeRecordAndSync:completion:]_block_invoke";
        v48 = 1024;
        v49 = 309;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s:%d _SecItemAddAndNotifyOnSync returned error", v46, 0x12u);
      }

      if (v13 != -25299)
      {
        goto LABEL_21;
      }

      v17 = sub_10001B194(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v46 = 136315138;
        v47 = "[THThreadNetworkCredentialsKeychainBackingStore storeRecordAndSync:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: Credential exists. Will update instead.", v46, 0xCu);
      }

      v18 = [*(a1 + 40) keyChainQueryForUpdateOperation];
      v19 = [*(a1 + 40) keyChainItemRepresentationForUpdateOperation];
      v13 = SecItemUpdate(v18, v19);
      if (v13)
      {
        v20 = sub_10001B194(1);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *v46 = 136315394;
          v47 = "[THThreadNetworkCredentialsKeychainBackingStore storeRecordAndSync:completion:]_block_invoke";
          v48 = 1024;
          v49 = 317;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s:%d SecItemUpdate returned error", v46, 0x12u);
        }

LABEL_21:
        v21 = sub_10001B194(1);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *v46 = 136315394;
          v47 = "[THThreadNetworkCredentialsKeychainBackingStore storeRecordAndSync:completion:]_block_invoke";
          v48 = 1024;
          v49 = 322;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s:%d Returning error", v46, 0x12u);
        }

        [*(a1 + 56) errorout:v13 completion:*(a1 + 64)];
        goto LABEL_31;
      }

      v26 = sub_10001B194(1);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v46 = 136315394;
        v47 = "[THThreadNetworkCredentialsKeychainBackingStore storeRecordAndSync:completion:]_block_invoke";
        v48 = 1024;
        v49 = 327;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s:%d Credential exists, updated successfully..", v46, 0x12u);
      }

      v25 = [*(a1 + 40) computedUniqueIdentifier];
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v22 = dispatch_time(0, 1000000000 * *(a1 + 80));
      v23 = *(a1 + 32);
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10001CC8C;
      v27[3] = &unk_100078F10;
      v28 = v12;
      dispatch_after(v22, v23, v27);
      v24 = sub_10001B194(1);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v46 = 136315394;
        v47 = "[THThreadNetworkCredentialsKeychainBackingStore storeRecordAndSync:completion:]_block_invoke";
        v48 = 1024;
        v49 = 347;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s:%d Timer Scheduled !....... ", v46, 0x12u);
      }

      v25 = v28;
    }

LABEL_31:
    _Block_object_dispose(buf, 8);
    goto LABEL_32;
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CKKS response for known is Not good", buf, 2u);
  }

  v6 = [NSError storeError:7 description:@"CKKS response for known state is Not good"];
  (*(*(a1 + 64) + 16))();
LABEL_32:
}

void sub_10001C728(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  atomic_compare_exchange_strong((*(*(a1 + 40) + 8) + 24), &v4, 1u);
  v5 = v4 == 0;
  v6 = sub_10001B194(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[THThreadNetworkCredentialsKeychainBackingStore storeRecordAndSync:completion:]_block_invoke";
    v14 = 1024;
    v15 = 244;
    v16 = 1024;
    LODWORD(v17) = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s:%d nowFinished : %d", &v12, 0x18u);
  }

  if (v5)
  {
    if (v3)
    {
      v7 = sub_10001B194(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = "[THThreadNetworkCredentialsKeychainBackingStore storeRecordAndSync:completion:]_block_invoke";
        v14 = 1024;
        v15 = 252;
        v16 = 2112;
        v17 = v3;
        v8 = "%s:%d Credential sync error, ErrorInfo : %@ ";
        v9 = v7;
        v10 = 28;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, v10);
      }
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      v7 = sub_10001B194(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(*(*(a1 + 48) + 8) + 24);
        v12 = 136315650;
        v13 = "[THThreadNetworkCredentialsKeychainBackingStore storeRecordAndSync:completion:]_block_invoke";
        v14 = 1024;
        v15 = 250;
        v16 = 1024;
        LODWORD(v17) = v11;
        v8 = "%s:%d Credential sync Complete, syncDone : %d";
        v9 = v7;
        v10 = 24;
        goto LABEL_9;
      }
    }

    dispatch_group_leave(*(a1 + 32));
  }
}

void sub_10001C938(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v2 = sub_10001B194(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(*(a1 + 48) + 8) + 24);
      v10 = 136315650;
      v11 = "[THThreadNetworkCredentialsKeychainBackingStore storeRecordAndSync:completion:]_block_invoke";
      v12 = 1024;
      v13 = 272;
      v14 = 1024;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s:%d Inside group notify block, sync is done, syncDone : %d", &v10, 0x18u);
    }

    v4 = [*(a1 + 32) computedUniqueIdentifier];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = [*(a1 + 32) computedUniqueIdentifier];
    v4 = [THThreadNetworkCredentialsStoreRecord keyChainQueryForDeleteOperationForUniqueIdentifier:v5];

    v6 = SecItemDelete(v4);
    v7 = sub_10001B194(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "[THThreadNetworkCredentialsKeychainBackingStore storeRecordAndSync:completion:]_block_invoke";
      v12 = 1024;
      v13 = 281;
      v14 = 1024;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s:%d sync not done, let's delete the local record, Got on deletion : (err=%d)", &v10, 0x18u);
    }

    v8 = sub_10001B194(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[THThreadNetworkCredentialsKeychainBackingStore storeRecordAndSync:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Error, Sync failure ", &v10, 0xCu);
    }

    v9 = [NSError storeError:6 description:@"Error, iCloud Sync failure"];
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_10001CBA0(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_10001B194(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[THThreadNetworkCredentialsKeychainBackingStore storeRecordAndSync:completion:]_block_invoke";
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Inside Sync completion, didSync : %d, ErrorInfo : %@ ", &v8, 0x1Cu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10001CC8C(uint64_t a1)
{
  v2 = sub_10001B194(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[THThreadNetworkCredentialsKeychainBackingStore storeRecordAndSync:completion:]_block_invoke";
    v6 = 1024;
    v7 = 342;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s:%d Timer Fired !!! ", &v4, 0x12u);
  }

  v3 = [NSError storeError:8 description:@"Error, Credentials sync timed out"];
  (*(*(a1 + 32) + 16))();
}

void sub_10001CE7C(uint64_t a1)
{
  v2 = sub_10001B194(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) network];
    v4 = [v3 networkName];
    v5 = [*(a1 + 32) network];
    v6 = [v5 extendedPANID];
    v7 = [*(a1 + 32) uniqueIdentifier];
    v16 = 138412802;
    v17 = v4;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Request to store credential (networkName=%@, xpanid=%@, uuid=%@", &v16, 0x20u);
  }

  v8 = [*(a1 + 32) keyChainItemRepresentationForAddOperation];
  v9 = v8;
  if (!v8)
  {
    v10 = [NSError storeError:4 description:@"Bad network parameter"];
    v11 = *(*(a1 + 48) + 16);
    goto LABEL_14;
  }

  if (*(a1 + 56) != 1)
  {
    v12 = SecItemAdd(v8, 0);
    if (v12 == -25299)
    {
      v13 = sub_10001B194(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315138;
        v17 = "[THThreadNetworkCredentialsKeychainBackingStore storeRecord:waitForSync:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: Credential exists. Will update instead.", &v16, 0xCu);
      }

      v14 = [*(a1 + 32) keyChainQueryForUpdateOperation];
      v15 = [*(a1 + 32) keyChainItemRepresentationForUpdateOperation];
      v12 = SecItemUpdate(v14, v15);
    }

    if (v12)
    {
      [*(a1 + 40) errorout:v12 completion:*(a1 + 48)];
      goto LABEL_15;
    }

    v10 = [*(a1 + 32) computedUniqueIdentifier];
    v11 = *(*(a1 + 48) + 16);
LABEL_14:
    v11();

    goto LABEL_15;
  }

  [*(a1 + 40) storeRecordAndSync:*(a1 + 32) completion:*(a1 + 48)];
LABEL_15:
}

void sub_10001D1DC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Request to DELETE credential with identifier %@", &v12, 0xCu);
  }

  v5 = [THThreadNetworkCredentialsStoreRecord keyChainQueryForDeleteOperationForUniqueIdentifier:*(a1 + 32)];
  v6 = SecItemDelete(v5);
  v7 = sub_10001B194(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[THThreadNetworkCredentialsKeychainBackingStore deleteRecordWithUniqueIdentifier:completion:]_block_invoke";
    v14 = 1024;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: GOT: (err=%d)", &v12, 0x12u);
  }

  if (v6)
  {
    v8 = SecCopyErrorMessageString(v6, 0);
    v9 = sub_10001B194(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003B728();
    }

    v10 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v6 userInfo:0];
    v11 = [NSError storeError:2 underlyingError:v10 description:v8];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10001DF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001DFBC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001DFD4(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = a1 + 6;
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  objc_storeStrong((*(a1[7] + 8) + 40), a3);
  if (!*(*(a1[7] + 8) + 40))
  {
    v11 = [*(*(*v8 + 8) + 40) count];
    v12 = sub_10001B194(1);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!v11)
    {
      if (v13)
      {
        sub_10003BDCC();
      }

      goto LABEL_5;
    }

    v45 = a1;
    if (v13)
    {
      sub_10003BC34((a1 + 6));
    }

    v46 = v7;
    v47 = v6;

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v14 = *(*(*v8 + 8) + 40);
    v15 = [v14 countByEnumeratingWithState:&v54 objects:v65 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v55;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v55 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v54 + 1) + 8 * i);
          v21 = [v20 keychainAccessGroup];
          if ([v21 isEqualToString:@"0000000000"])
          {
          }

          else
          {
            v22 = [v20 keychainAccessGroup];
            v23 = ~[v22 isEqualToString:@"com.apple.thread.network"];

            v17 += v23 & 1;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v54 objects:v65 count:16];
      }

      while (v16);
    }

    v24 = +[THPreferredThreadNetwork keyChainQueryForFetchPreferredNetworkRecordsOperation];
    v6 = v47;
    if (v24)
    {
      v25 = v45[4];
      v53 = 0;
      v26 = [v25 _doFetchPreferredNetworks:v24 error:&v53];
      v27 = v53;
      v28 = sub_10001B194(1);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [v26 count];
        *buf = 136315650;
        v60 = "[THThreadNetworkCredentialsKeychainBackingStore retrieveThirdPartyInfo:]_block_invoke";
        v61 = 1024;
        v62 = 657;
        v63 = 2048;
        v64 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s : %d - Preferred Networks in Database = %lu", buf, 0x1Cu);
      }

      if ([v26 count])
      {
        v44 = v27;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v43 = v26;
        v30 = v26;
        v31 = [v30 countByEnumeratingWithState:&v49 objects:v58 count:16];
        if (!v31)
        {
          goto LABEL_47;
        }

        v32 = v31;
        v48 = 0;
        v33 = 0;
        v34 = *v50;
        while (1)
        {
          for (j = 0; j != v32; j = j + 1)
          {
            if (*v50 != v34)
            {
              objc_enumerationMutation(v30);
            }

            v36 = *(*(&v49 + 1) + 8 * j);
            if (v36)
            {
              v37 = [*(*(&v49 + 1) + 8 * j) userInfo];
              if ([v37 isEqualToString:@"0000000000"])
              {

LABEL_36:
                ++v33;
                continue;
              }

              v38 = [v36 userInfo];
              v39 = [v38 isEqualToString:@"com.apple.thread.network"];

              if (v39)
              {
                goto LABEL_36;
              }

              ++v48;
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v49 objects:v58 count:16];
          if (!v32)
          {
LABEL_47:

            v42 = [NSError storeError:0 description:@"Success: Found the thirdParty information"];
            (*(v45[5] + 16))();
            v7 = v46;
            v6 = v47;
            v27 = v44;
            v26 = v43;
            goto LABEL_48;
          }
        }
      }

      v41 = sub_10001B194(1);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10003BCC4();
      }

      v42 = [NSError storeError:9 description:@"Failed to find any  preferred network"];
      (*(v45[5] + 16))();
LABEL_48:
    }

    else
    {
      v40 = sub_10001B194(1);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_10003BD48();
      }

      v27 = [NSError storeError:3 description:@"Failed to create query to retrieve preferred network"];
      (*(v45[5] + 16))();
    }

    goto LABEL_50;
  }

  v9 = sub_10001B194(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10003BB80((a1 + 7));
  }

LABEL_5:
  v10 = *(*(a1[7] + 8) + 40);
  (*(a1[5] + 16))();
LABEL_50:
}

void sub_10001E670(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) networkName];
    v5 = [*(a1 + 32) extendedPANID];
    *buf = 136315906;
    v15 = "[THThreadNetworkCredentialsKeychainBackingStore retrieveAllActiveDataSetRecordsForNetwork:completion:]_block_invoke";
    v16 = 1024;
    v17 = 697;
    v18 = 2112;
    v19 = v4;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s : %d - Request to fetch active dataset records for network (name=%@, xpanid=%@)", buf, 0x26u);
  }

  v6 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForFetchActiveDataSetRecordsOperationForNetwork:*(a1 + 32)];
  v7 = *(a1 + 40);
  v13 = 0;
  v8 = [v7 _doFetchActiveDataSetRecords:v6 error:&v13];
  v9 = v13;
  v10 = v9;
  if (!v8)
  {
    if (v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ([v8 count])
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 == 0;
  }

  if (v11)
  {
LABEL_9:
    v12 = [NSError storeError:3 description:@"Error : No records found"];

    (*(*(a1 + 48) + 16))();
    v10 = v12;
  }

LABEL_10:
  (*(*(a1 + 48) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_10001E908(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Request to fetch all active dataset records", buf, 2u);
  }

  v4 = +[THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForFetchAllActiveDataSetRecordsOperation];
  v5 = *(a1 + 32);
  v11 = 0;
  v6 = [v5 _doFetchActiveDataSetRecords:v4 error:&v11];
  v7 = v11;
  v8 = v7;
  if (!v6)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ([v6 count])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (v9)
  {
LABEL_9:
    v10 = [NSError storeError:3 description:@"Error : No records found"];

    (*(*(a1 + 40) + 16))();
    v8 = v10;
  }

LABEL_10:
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_10001EB34(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Request to fetch active dataset record with UUID %@", buf, 0xCu);
  }

  v5 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForFetchOneActiveDataSetRecordOperationForUniqueIdentifier:a1[4]];
  v6 = a1[5];
  v14 = 0;
  v7 = [v6 _doFetchActiveDataSetRecords:v5 error:&v14];
  v8 = v14;
  v9 = v8;
  if (!v7)
  {
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ([v7 count])
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (v10)
  {
LABEL_9:
    v11 = [NSError storeError:3 description:@"Error : No records found"];

    (*(a1[6] + 16))();
    v9 = v11;
  }

LABEL_10:
  v12 = a1[6];
  v13 = [v7 anyObject];
  (*(v12 + 16))(v12, v13, v9);

  objc_autoreleasePoolPop(v2);
}

void sub_10001EDB8(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Request to fetch active dataset record with xpanid %@", buf, 0xCu);
  }

  v5 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForFetchOneActiveDataSetRecordOperationForXPANId:a1[4]];
  v6 = a1[5];
  v14 = 0;
  v7 = [v6 _doFetchActiveDataSetRecords:v5 error:&v14];
  v8 = v14;
  v9 = v8;
  if (!v7)
  {
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ([v7 count])
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (v10)
  {
LABEL_9:
    v11 = [NSError storeError:3 description:@"Error : No records found"];

    (*(a1[6] + 16))();
    v9 = v11;
  }

LABEL_10:
  v12 = a1[6];
  v13 = [v7 anyObject];
  (*(v12 + 16))(v12, v13, v9);

  objc_autoreleasePoolPop(v2);
}

void sub_10001F03C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Request to fetch active dataset record with xpanid %@", buf, 0xCu);
  }

  if ([*(a1 + 40) checkWiFiStatus])
  {
    v5 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForFetchOneActiveDataSetRecordOperationForXPANId:*(a1 + 32)];
    v6 = *(a1 + 40);
    v16 = 0;
    v7 = [v6 _doFetchActiveDataSetRecords:v5 error:&v16];
    v8 = v16;
    v9 = [v7 anyObject];
    v10 = v9;
    if (v8 || !v9)
    {
      v14 = *(*(a1 + 48) + 16);
    }

    else
    {
      v11 = *(a1 + 40);
      v12 = [v9 network];
      v13 = [v12 extendedPANID];
      LODWORD(v11) = [v11 checkIfXpanIDMatchToMDNSScan:v13];

      if (!v11)
      {
        v15 = [NSError storeError:20 description:@"Thread network credentials does not match with any of the active thread networks around"];
        (*(*(a1 + 48) + 16))();

        goto LABEL_12;
      }

      v14 = *(*(a1 + 48) + 16);
    }

    v14();
LABEL_12:

    goto LABEL_13;
  }

  v10 = [NSError storeError:19 description:@"Error : Device is not connected to the network"];
  (*(*(a1 + 48) + 16))();
LABEL_13:

  objc_autoreleasePoolPop(v2);
}

void sub_10001F350(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) discriminatorId];
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Request to fetch active dataset record with borderAgent %@", buf, 0xCu);
  }

  v5 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForFetchActiveDataSetRecordOperationForBorderAgent:*(a1 + 32)];
  v6 = *(a1 + 40);
  v14 = 0;
  v7 = [v6 _doFetchActiveDataSetRecords:v5 error:&v14];
  v8 = v14;
  v9 = v8;
  if (!v7)
  {
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ([v7 count])
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (v10)
  {
LABEL_9:
    v11 = [NSError storeError:3 description:@"Error : No records found"];

    (*(*(a1 + 48) + 16))();
    v9 = v11;
  }

LABEL_10:
  v12 = *(a1 + 48);
  v13 = [v7 anyObject];
  (*(v12 + 16))(v12, v13, v9);

  objc_autoreleasePoolPop(v2);
}

void sub_10001F5E4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) discriminatorId];
    *buf = 138412290;
    v28 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Request to fetch active dataset record with borderAgent %@", buf, 0xCu);
  }

  v5 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForFetchActiveDataSetRecordOperationForBorderAgent:*(a1 + 32)];
  v6 = *(a1 + 40);
  v25 = 0;
  v7 = [v6 _doFetchActiveDataSetRecords:v5 error:&v25];
  v8 = v25;
  if (!v8)
  {
    v19 = v7;
    v20 = v2;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(a1 + 40);
          v15 = [*(*(&v21 + 1) + 8 * v13) credentialsDataSet];
          v16 = [v15 dataSetArray];
          LODWORD(v14) = [v14 areValidDataSetTLVs:v16];

          if (v14)
          {
            v17 = sub_10001B194(1);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = [*(a1 + 32) discriminatorId];
              *buf = 138412290;
              v28 = v18;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Return the record for borderAgent ID %@", buf, 0xCu);
            }

            (*(*(a1 + 48) + 16))();
            v8 = 0;
            goto LABEL_16;
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v8 = [NSError storeError:28 description:@"Error: Does Not Have DataSet TLVs"];
    (*(*(a1 + 48) + 16))();
LABEL_16:
    v7 = v19;
    v2 = v20;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10001FA0C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[THThreadNetworkCredentialsKeychainBackingStore retrieveListOfPreferredNetworksInternallyWithCompletion:ipV4NwSignature:ipv6NwSignature:wifiSSID:showCurrentEntry:completion:]_block_invoke";
    v17 = 1024;
    v18 = 846;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s:%d: Request to fetch list of Preferred Network Entries", buf, 0x12u);
  }

  if (*(a1 + 80) != 1)
  {
    v7 = [[THNetworkSignature alloc] initWithSignatures:*(a1 + 40) ipv6NwSignature:*(a1 + 48) wifSSID:*(a1 + 56) wifiPassword:@"ApplePreferredNetworkRecordLabel"];
    if (!*(a1 + 64) || *(a1 + 40) || *(a1 + 48))
    {
      v8 = *(a1 + 56);
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v8 = *(a1 + 56);
      if (!v8)
      {
        v9 = [THPreferredThreadNetwork keyChainQueryForPreferredNetworkRecordsOperationForNetworkName:?];
        goto LABEL_20;
      }
    }

    if ([v8 length])
    {
      v9 = [THPreferredThreadNetwork keyChainQueryForPreferredNetworkRecordsOperationForWifiNetwork:v7];
LABEL_20:
      v4 = v9;
      v12 = *(a1 + 32);
      v14 = 0;
      v13 = [v12 _doFetchPreferredNetworks:v4 error:&v14];
      v5 = v14;
      (*(*(a1 + 72) + 16))();

      goto LABEL_21;
    }

LABEL_12:
    v10 = *(a1 + 40);
    if (v10 && [v10 length] || (v11 = *(a1 + 48)) != 0 && objc_msgSend(v11, "length"))
    {
      v9 = [THPreferredThreadNetwork keyChainQueryForPreferredNetworkRecordsOperationForNetworkSignature:v7];
    }

    else
    {
      v9 = +[THPreferredThreadNetwork keyChainQueryForFetchPreferredNetworkRecordsOperation];
    }

    goto LABEL_20;
  }

  v4 = [NSMutableArray arrayWithCapacity:1];
  v5 = [*(a1 + 32) getPreferredNetwork:0];
  if (v5)
  {
    [v4 addObject:v5];
    v6 = *(a1 + 72);
    v7 = [NSSet setWithArray:v4];
    (*(v6 + 16))(v6, v7, 0);
  }

  else
  {
    v7 = [NSError storeError:40 description:@"Unable to read current preferred network"];
    (*(*(a1 + 72) + 16))(*(a1 + 72), 0, v7);
  }

LABEL_21:

  objc_autoreleasePoolPop(v2);
}

void sub_1000207AC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 56);
    *buf = 136315906;
    v16 = "[THThreadNetworkCredentialsKeychainBackingStore retrieveAllActiveDataSetRecordsWithFlagForClientKeychainAccessGroup:activeFlag:completion:]_block_invoke";
    v17 = 1024;
    v18 = 992;
    v19 = 2112;
    v20 = v4;
    v21 = 1024;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s:%d: Request to fetch active dataset record with Client Keychain Access Group %@, active flag :%d", buf, 0x22u);
  }

  v6 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForFetchActiveDataSetRecordsOperationForClientKeychainAccessGroup:*(a1 + 32)];
  v7 = *(a1 + 40);
  v14 = 0;
  v8 = [v7 _doFetchActiveDataSetRecords:v6 error:&v14];
  v9 = v14;
  if (v8 && (![v8 count] || *(a1 + 56) != 1 || (objc_msgSend(*(a1 + 40), "getActiveRecords:", v8), v10 = objc_claimAutoreleasedReturnValue(), v8, (v8 = v10) != 0)) && objc_msgSend(v8, "count"))
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11 = sub_10001B194(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10003BF10();
    }

    v12 = [NSError errorWithDomain:NSOSStatusErrorDomain code:0 userInfo:0];
    v13 = [NSError storeError:3 underlyingError:v12 description:@"Failed to retrieve all active border router records"];

    (*(*(a1 + 48) + 16))();
    v9 = v13;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100020AF0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 56);
    *buf = 136315906;
    v16 = "[THThreadNetworkCredentialsKeychainBackingStore retrieveAllActiveDataSetRecordsWithFlagForClientKeychainAccessGroup:activeFlag:compleiton:]_block_invoke";
    v17 = 1024;
    v18 = 1029;
    v19 = 2112;
    v20 = v4;
    v21 = 1024;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s:%d: Request to fetch active dataset record with Client Keychain Access Group %@, active flag :%d", buf, 0x22u);
  }

  v6 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForFetchActiveDataSetRecordsOperationForClientKeychainAccessGroup:*(a1 + 32)];
  v7 = *(a1 + 40);
  v14 = 0;
  v8 = [v7 _doFetchActiveDataSetRecords:v6 error:&v14];
  v9 = v14;
  if (v8 && (![v8 count] || *(a1 + 56) != 1 || (objc_msgSend(*(a1 + 40), "getActiveRecords:", v8), v10 = objc_claimAutoreleasedReturnValue(), v8, (v8 = v10) != 0)) && objc_msgSend(v8, "count"))
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11 = sub_10001B194(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10003BF10();
    }

    v12 = [NSError errorWithDomain:NSOSStatusErrorDomain code:0 userInfo:0];
    v13 = [NSError storeError:3 underlyingError:v12 description:@"Failed to retrieve all active border router records"];

    (*(*(a1 + 48) + 16))();
    v9 = v13;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100020E1C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Request to DELETE credential with identifier %@", &v12, 0xCu);
  }

  v5 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForDeleteActiveDataSetRecordOperationForUniqueIdentifier:*(a1 + 32)];
  v6 = SecItemDelete(v5);
  v7 = sub_10001B194(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[THThreadNetworkCredentialsKeychainBackingStore deleteActiveDataSetRecordWithUniqueIdentifier:completion:]_block_invoke";
    v14 = 1024;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: GOT: (err=%d)", &v12, 0x12u);
  }

  if (v6)
  {
    v8 = SecCopyErrorMessageString(v6, 0);
    v9 = sub_10001B194(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003BF90();
    }

    v10 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v6 userInfo:0];
    v11 = [NSError storeError:2 underlyingError:v10 description:v8];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100021108(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B194(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) discriminatorId];
    v12 = 136315394;
    v13 = "[THThreadNetworkCredentialsKeychainBackingStore deleteActiveDataSetRecordForThreadBorderAgent:completion:]_block_invoke";
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: Request to DELETE credential with Ba %@", &v12, 0x16u);
  }

  v5 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForDeleteActiveDataSetOperationForThreadNetworkBorderAgent:*(a1 + 32)];
  v6 = SecItemDelete(v5);
  v7 = sub_10001B194(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[THThreadNetworkCredentialsKeychainBackingStore deleteActiveDataSetRecordForThreadBorderAgent:completion:]_block_invoke";
    v14 = 1024;
    LODWORD(v15) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: GOT: (err=%d)", &v12, 0x12u);
  }

  if (v6)
  {
    v8 = SecCopyErrorMessageString(v6, 0);
    v9 = sub_10001B194(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003C000();
    }

    v10 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v6 userInfo:0];
    v11 = [NSError storeError:2 underlyingError:v10 description:v8];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100021560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100021580(uint64_t a1, uint64_t a2)
{
  v3 = a2 == 0;
  v4 = sub_10001B194(1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CKKS response for known state is Likely good", buf, 2u);
    }

    v7 = dispatch_group_create();
    *buf = 0;
    v45 = buf;
    v46 = 0x2020000000;
    v47 = 0;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100021CD4;
    v39[3] = &unk_100079000;
    v8 = *(a1 + 40);
    v9 = *(a1 + 72);
    v42 = buf;
    v43 = v9;
    v39[4] = *(a1 + 32);
    v40 = v8;
    v6 = v7;
    v41 = v6;
    v10 = objc_retainBlock(v39);
    dispatch_group_enter(v6);
    v11 = *(a1 + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100021F14;
    block[3] = &unk_100078EC0;
    v38 = *(a1 + 72);
    v36 = *(a1 + 40);
    v37 = *(a1 + 64);
    dispatch_group_notify(v6, v11, block);
    v12 = *(a1 + 56);
    v30 = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_10002217C;
    v33 = &unk_100078EE8;
    v13 = v10;
    v34 = v13;
    v14 = _SecItemAddAndNotifyOnSync();
    v15 = sub_10001B194(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = "error";
      v49 = "[THThreadNetworkCredentialsKeychainBackingStore storeActiveDataSetRecordAndSync:completion:]_block_invoke";
      *v48 = 136315650;
      if (!v14)
      {
        v16 = "success";
      }

      v50 = 1024;
      v51 = 1236;
      v52 = 2080;
      v53 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s:%d _SecItemAddAndNotifyOnSync return value : %s...", v48, 0x1Cu);
    }

    if (v14)
    {
      v17 = sub_10001B194(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v48 = 136315394;
        v49 = "[THThreadNetworkCredentialsKeychainBackingStore storeActiveDataSetRecordAndSync:completion:]_block_invoke";
        v50 = 1024;
        v51 = 1242;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s:%d _SecItemAddAndNotifyOnSync returned error", v48, 0x12u);
      }

      if (v14 != -25299)
      {
        goto LABEL_21;
      }

      v18 = sub_10001B194(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v48 = 136315138;
        v49 = "[THThreadNetworkCredentialsKeychainBackingStore storeActiveDataSetRecordAndSync:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: Credential exists. Will update instead.", v48, 0xCu);
      }

      v19 = [*(a1 + 40) keyChainQueryForActiveDataSetRecordUpdateOperation];
      v20 = [*(a1 + 40) keyChainItemRepresentationForActiveDataSetRecordUpdateOperation];
      v14 = SecItemUpdate(v19, v20);
      if (v14)
      {
        v21 = sub_10001B194(1);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *v48 = 136315394;
          v49 = "[THThreadNetworkCredentialsKeychainBackingStore storeActiveDataSetRecordAndSync:completion:]_block_invoke";
          v50 = 1024;
          v51 = 1250;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s:%d SecItemUpdate returned error", v48, 0x12u);
        }

LABEL_21:
        v22 = sub_10001B194(1);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *v48 = 136315394;
          v49 = "[THThreadNetworkCredentialsKeychainBackingStore storeActiveDataSetRecordAndSync:completion:]_block_invoke";
          v50 = 1024;
          v51 = 1255;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s:%d Returning error", v48, 0x12u);
        }

        [*(a1 + 32) errorout:v14 completion:*(a1 + 64)];
        goto LABEL_31;
      }

      v27 = sub_10001B194(1);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *v48 = 136315394;
        v49 = "[THThreadNetworkCredentialsKeychainBackingStore storeActiveDataSetRecordAndSync:completion:]_block_invoke";
        v50 = 1024;
        v51 = 1260;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s:%d Credential exists, updated successfully..", v48, 0x12u);
      }

      v26 = [*(a1 + 40) computedUniqueIdentifier];
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v23 = dispatch_time(0, 1000000000 * *(a1 + 80));
      v24 = *(a1 + 48);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100022268;
      v28[3] = &unk_100078F10;
      v29 = v13;
      dispatch_after(v23, v24, v28);
      v25 = sub_10001B194(1);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v48 = 136315394;
        v49 = "[THThreadNetworkCredentialsKeychainBackingStore storeActiveDataSetRecordAndSync:completion:]_block_invoke";
        v50 = 1024;
        v51 = 1280;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s:%d Timer Scheduled !....... ", v48, 0x12u);
      }

      v26 = v29;
    }

LABEL_31:
    _Block_object_dispose(buf, 8);
    goto LABEL_32;
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CKKS response for known is Not good", buf, 2u);
  }

  v6 = [NSError storeError:7 description:@"CKKS response for known state is Not good"];
  (*(*(a1 + 64) + 16))();
LABEL_32:
}

void sub_100021CD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  atomic_compare_exchange_strong((*(*(a1 + 56) + 8) + 24), &v4, 1u);
  v5 = v4 == 0;
  v6 = sub_10001B194(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[THThreadNetworkCredentialsKeychainBackingStore storeActiveDataSetRecordAndSync:completion:]_block_invoke";
    v14 = 1024;
    v15 = 1173;
    v16 = 1024;
    LODWORD(v17) = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s:%d nowFinished : %d", &v12, 0x18u);
  }

  if (v5)
  {
    if (v3)
    {
      v7 = sub_10001B194(1);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
LABEL_13:

        dispatch_group_leave(*(a1 + 48));
        goto LABEL_14;
      }

      v12 = 136315650;
      v13 = "[THThreadNetworkCredentialsKeychainBackingStore storeActiveDataSetRecordAndSync:completion:]_block_invoke";
      v14 = 1024;
      v15 = 1185;
      v16 = 2112;
      v17 = v3;
      v8 = "%s:%d Credential sync error, ErrorInfo : %@ ";
      v9 = v7;
      v10 = 28;
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      if (_os_feature_enabled_impl() && ([*(a1 + 32) markAsPreferred:*(a1 + 40)] & 1) == 0)
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
      }

      v7 = sub_10001B194(1);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v11 = *(*(*(a1 + 64) + 8) + 24);
      v12 = 136315650;
      v13 = "[THThreadNetworkCredentialsKeychainBackingStore storeActiveDataSetRecordAndSync:completion:]_block_invoke";
      v14 = 1024;
      v15 = 1183;
      v16 = 1024;
      LODWORD(v17) = v11;
      v8 = "%s:%d Credential sync Complete, syncDone : %d";
      v9 = v7;
      v10 = 24;
    }

    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, v10);
    goto LABEL_13;
  }

LABEL_14:
}

void sub_100021F14(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v2 = sub_10001B194(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(*(a1 + 48) + 8) + 24);
      v10 = 136315650;
      v11 = "[THThreadNetworkCredentialsKeychainBackingStore storeActiveDataSetRecordAndSync:completion:]_block_invoke";
      v12 = 1024;
      v13 = 1205;
      v14 = 1024;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s:%d Inside group notify block, sync is done, syncDone : %d", &v10, 0x18u);
    }

    v4 = [*(a1 + 32) computedUniqueIdentifier];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = [*(a1 + 32) borderAgent];
    v4 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForDeleteActiveDataSetOperationForThreadNetworkBorderAgent:v5];

    v6 = SecItemDelete(v4);
    v7 = sub_10001B194(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "[THThreadNetworkCredentialsKeychainBackingStore storeActiveDataSetRecordAndSync:completion:]_block_invoke";
      v12 = 1024;
      v13 = 1214;
      v14 = 1024;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s:%d sync not done, let's delete the local record, Got on deletion : (err=%d)", &v10, 0x18u);
    }

    v8 = sub_10001B194(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[THThreadNetworkCredentialsKeychainBackingStore storeActiveDataSetRecordAndSync:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Error, Sync failure ", &v10, 0xCu);
    }

    v9 = [NSError storeError:6 description:@"Error, iCloud Sync failure"];
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_10002217C(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_10001B194(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[THThreadNetworkCredentialsKeychainBackingStore storeActiveDataSetRecordAndSync:completion:]_block_invoke";
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Inside Sync completion, didSync : %d, ErrorInfo : %@ ", &v8, 0x1Cu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100022268(uint64_t a1)
{
  v2 = sub_10001B194(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[THThreadNetworkCredentialsKeychainBackingStore storeActiveDataSetRecordAndSync:completion:]_block_invoke";
    v6 = 1024;
    v7 = 1275;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s:%d Timer Fired !!! ", &v4, 0x12u);
  }

  v3 = [NSError storeError:8 description:@"Error, Credentials sync timed out"];
  (*(*(a1 + 32) + 16))();
}

void sub_100022758(uint64_t a1)
{
  v2 = sub_10001B194(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) network];
    v4 = [v3 networkName];
    v5 = [*(a1 + 32) network];
    v6 = [v5 extendedPANID];
    v7 = [*(a1 + 32) uniqueIdentifier];
    v49 = 136316162;
    v50 = "[THThreadNetworkCredentialsKeychainBackingStore updatePreferredNetworkWithNewDatasetRecord:completion:]_block_invoke";
    v51 = 1024;
    v52 = 1337;
    v53 = 2112;
    v54 = v4;
    v55 = 2112;
    v56 = v6;
    v57 = 2112;
    v58 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s:%d: :Request to update preferred credentials with (networkName=%@, xpanid=%@, uuid = %@", &v49, 0x30u);
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = [v8 credentialsDataSet];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [*(a1 + 32) credentialsDataSet];
  v12 = [v11 dataSetArray];
  if (!v12)
  {

    goto LABEL_10;
  }

  v13 = v12;
  v14 = [*(a1 + 32) credentialsDataSet];
  v15 = [v14 dataSetArray];
  v16 = [v15 length];

  if (!v16)
  {
LABEL_10:
    v27 = sub_10001B194(1);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10003C314();
    }

    v25 = @"record parameter is invalid";
    v26 = 4;
    goto LABEL_13;
  }

  v17 = [*(a1 + 32) credentials];
  [v17 setIsActiveDevice:1];

  v18 = [THThreadNetworkCredentialsDataSet alloc];
  v19 = [*(a1 + 32) credentialsDataSet];
  v20 = [v19 dataSetArray];
  v21 = [*(a1 + 32) credentials];
  v22 = [v21 userInfo];
  v23 = [v18 initWithDataSetArray:v20 userInfo:v22];
  v24 = [*(a1 + 32) credentials];
  [v24 setCredentialsDataSet:v23];

  if (![*(a1 + 40) isFrozenRecord:*(a1 + 32)])
  {
    v29 = [*(a1 + 32) keyChainItemRepresentationForActiveDataSetRecordAddOperation];
    v28 = v29;
    if (v29)
    {
      v30 = SecItemAdd(v29, 0);
      v31 = v30;
      if (v30 == -25299)
      {
        v32 = sub_10001B194(1);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_10003C188();
        }

        v33 = [*(a1 + 32) keyChainQueryForActiveDataSetRecordUpdateOperation];
        v34 = [*(a1 + 32) keyChainItemRepresentationForActiveDataSetRecordUpdateOperation];
        v31 = SecItemUpdate(v33, v34);
      }

      if (v31)
      {
        v35 = sub_10001B194(1);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v49 = 136315650;
          v50 = "[THThreadNetworkCredentialsKeychainBackingStore updatePreferredNetworkWithNewDatasetRecord:completion:]_block_invoke";
          v51 = 1024;
          v52 = 1383;
          v53 = 1024;
          LODWORD(v54) = v31;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%s:%d Error while adding/updating the record : (err=%d)", &v49, 0x18u);
        }

        v36 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v31 userInfo:0];
        v37 = [NSError storeError:2 underlyingError:v36 description:@"Error while adding/updating the record"];
        (*(*(a1 + 48) + 16))();
        goto LABEL_24;
      }

      if ([*(a1 + 40) updatePreferredNetworkEntry:*(a1 + 32)])
      {
        v41 = *(a1 + 48);
        v36 = [*(a1 + 32) computedUniqueIdentifier];
        v42 = *(a1 + 32);
        v40 = *(v41 + 16);
        goto LABEL_29;
      }

      v43 = sub_10001B194(1);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_10003C20C();
      }

      if (v30 != -25299)
      {
        v44 = [*(a1 + 32) network];
        v45 = [*(a1 + 32) borderAgent];
        v36 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForDeleteActiveDataSetOperationForNetworkAndBorderAgent:v44 borderAgent:v45];

        v46 = SecItemDelete(v36);
        v47 = sub_10001B194(1);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_10003C290();
        }

        if (v46)
        {
          v37 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v46 userInfo:0];
          v48 = [NSError storeError:2 underlyingError:v37 description:@"Error while adding/updating the record"];
          (*(*(a1 + 48) + 16))();

LABEL_24:
LABEL_30:

          goto LABEL_14;
        }
      }

      v38 = @"No preferred network found";
      v39 = 10;
    }

    else
    {
      v38 = @"Bad network parameter";
      v39 = 4;
    }

    v36 = [NSError storeError:v39 description:v38];
    v40 = *(*(a1 + 48) + 16);
LABEL_29:
    v40();
    goto LABEL_30;
  }

  v25 = @"Can not store frozen credentials";
  v26 = 31;
LABEL_13:
  v28 = [NSError storeError:v26 description:v25];
  (*(*(a1 + 48) + 16))();
LABEL_14:
}

void sub_100022E7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = [v2 dataSetArray];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [*(a1 + 32) dataSetArray];
  if (![v5 length])
  {

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) dataSetArray];
  v12 = 0;
  v8 = [v6 areValidDataSetTLVs:v7 creds:&v12];
  v9 = v12;

  if (v8)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_11;
  }

LABEL_8:
  v10 = sub_10001B194(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[THThreadNetworkCredentialsKeychainBackingStore validateAODInternally:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Error, dataset is not valid ", buf, 0xCu);
  }

  v11 = [NSError storeError:37 description:@"Unable parse the Active Operational Dataset"];
  (*(*(a1 + 48) + 16))();

LABEL_11:
}

void sub_1000230F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = [v2 dataSetArray];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [*(a1 + 32) dataSetArray];
  if (![v5 length])
  {

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) dataSetArray];
  v15 = 0;
  v8 = [v6 areValidDataSetTLVs:v7 creds:&v15];
  v9 = v15;

  if (v8)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000232E0;
    v13[3] = &unk_100079078;
    v10 = *(a1 + 40);
    v14 = *(a1 + 48);
    [v10 storeThreadCredentialActiveDataSetRecord:v9 waitForSync:0 completion:v13];
    v11 = v14;
    goto LABEL_11;
  }

LABEL_8:
  v12 = sub_10001B194(1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[THThreadNetworkCredentialsKeychainBackingStore storeCachedAODasPreferredNetwork:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Error, dataset is not valid ", buf, 0xCu);
  }

  v11 = [NSError storeError:10 description:@"No preferred network found"];
  (*(*(a1 + 48) + 16))();
LABEL_11:
}

void sub_1000233DC(uint64_t a1)
{
  v2 = sub_10001B194(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) network];
    v4 = [v3 networkName];
    v5 = [*(a1 + 32) network];
    v6 = [v5 extendedPANID];
    v7 = [*(a1 + 32) computedUniqueIdentifier];
    v8 = [*(a1 + 32) keychainAccessGroup];
    *buf = 136316418;
    v93 = "[THThreadNetworkCredentialsKeychainBackingStore storeThreadCredentialActiveDataSetRecord:waitForSync:completion:]_block_invoke";
    v94 = 1024;
    v95 = 1469;
    v96 = 2112;
    v97 = v4;
    v98 = 2112;
    v99 = v6;
    v100 = 2112;
    v101 = v7;
    v102 = 2112;
    v103 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s:%d:Request to store credential (networkName=%@, xpanid=%@, uuid = %@, keychainaccessgroup : %@", buf, 0x3Au);
  }

  v9 = *(a1 + 32);
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = [v9 credentialsDataSet];
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [*(a1 + 32) credentialsDataSet];
  v13 = [v12 dataSetArray];
  if (!v13)
  {

    goto LABEL_10;
  }

  v14 = v13;
  v15 = [*(a1 + 32) credentialsDataSet];
  v16 = [v15 dataSetArray];
  v17 = [v16 length];

  if (!v17)
  {
LABEL_10:
    v28 = sub_10001B194(1);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10003C41C();
    }

    v26 = @"record parameter is invalid";
    v27 = 4;
    goto LABEL_13;
  }

  v18 = [*(a1 + 32) credentials];
  [v18 setIsActiveDevice:1];

  v19 = [THThreadNetworkCredentialsDataSet alloc];
  v20 = [*(a1 + 32) credentialsDataSet];
  v21 = [v20 dataSetArray];
  v22 = [*(a1 + 32) credentials];
  v23 = [v22 userInfo];
  v24 = [v19 initWithDataSetArray:v21 userInfo:v23];
  v25 = [*(a1 + 32) credentials];
  [v25 setCredentialsDataSet:v24];

  if ([*(a1 + 40) isFrozenRecord:*(a1 + 32)])
  {
    v26 = @"Can not store frozen credentials";
    v27 = 31;
LABEL_13:
    v29 = [NSError storeError:v27 description:v26];
    (*(*(a1 + 48) + 16))();
    goto LABEL_14;
  }

  v30 = [*(a1 + 32) keychainAccessGroup];
  v31 = [v30 isEqualToString:@"0000000000"];

  if (v31)
  {
    v32 = sub_10001B194(1);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = [*(a1 + 32) network];
      v34 = [v33 networkName];
      v35 = [*(a1 + 32) network];
      v36 = [v35 extendedPANID];
      v37 = [*(a1 + 32) computedUniqueIdentifier];
      v38 = [*(a1 + 32) keychainAccessGroup];
      *buf = 136316418;
      v93 = "[THThreadNetworkCredentialsKeychainBackingStore storeThreadCredentialActiveDataSetRecord:waitForSync:completion:]_block_invoke";
      v94 = 1024;
      v95 = 1492;
      v96 = 2112;
      v97 = v34;
      v98 = 2112;
      v99 = v36;
      v100 = 2112;
      v101 = v37;
      v102 = 2112;
      v103 = v38;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s:%d:Request to store INTERNAL credential (networkName=%@, xpanid=%@, uuid = %@, keychainaccessgroup : %@", buf, 0x3Au);
    }

    v39 = [*(a1 + 40) getRecordForPreferredNetwork:0 anyDsFormat:0];
    v29 = v39;
    if (!v39)
    {
      goto LABEL_49;
    }

    v40 = [v39 credentialsDataSet];
    if (v40)
    {
      v41 = v40;
      v42 = [*(a1 + 32) credentialsDataSet];
      if (v42)
      {
        v43 = v42;
        v44 = [v29 credentialsDataSet];
        v45 = [v44 dataSetArray];
        if ([v45 length])
        {
          v46 = [*(a1 + 32) credentialsDataSet];
          v47 = [v46 dataSetArray];
          if ([v47 length])
          {
            v88 = [v29 credentialsDataSet];
            v48 = [v88 dataSetArray];
            v49 = [*(a1 + 32) credentialsDataSet];
            [v49 dataSetArray];
            v50 = v86 = v46;
            v90 = [v48 isEqualToData:v50];

            if (v90)
            {
              v51 = sub_10001B194(1);
              if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v93 = "[THThreadNetworkCredentialsKeychainBackingStore storeThreadCredentialActiveDataSetRecord:waitForSync:completion:]_block_invoke";
                v94 = 1024;
                v95 = 1504;
                _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "%s:%d: Record matches with preferred network", buf, 0x12u);
              }

              v52 = sub_10001B194(1);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v93 = "[THThreadNetworkCredentialsKeychainBackingStore storeThreadCredentialActiveDataSetRecord:waitForSync:completion:]_block_invoke";
                v94 = 1024;
                v95 = 1506;
                _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "%s:%d: prefRecord =======>", buf, 0x12u);
              }

              [*(a1 + 40) thDumpActiveDatasetRecord:v29];
              v53 = sub_10001B194(1);
              if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v93 = "[THThreadNetworkCredentialsKeychainBackingStore storeThreadCredentialActiveDataSetRecord:waitForSync:completion:]_block_invoke";
                v94 = 1024;
                v95 = 1509;
                _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "%s:%d: Incoming record =====>", buf, 0x12u);
              }

              [*(a1 + 40) thDumpActiveDatasetRecord:*(a1 + 32)];
              v54 = *(a1 + 48);
              v55 = [v29 uniqueIdentifier];
              v56 = *(v54 + 16);
              goto LABEL_66;
            }

            goto LABEL_34;
          }
        }
      }
    }

LABEL_34:
    v57 = [v29 credentialsDataSet];
    if (v57)
    {
      v58 = v57;
      v59 = [*(a1 + 32) credentialsDataSet];
      if (v59)
      {
        v60 = v59;
        v61 = [v29 credentialsDataSet];
        v62 = [v61 dataSetArray];
        if ([v62 length])
        {
          v63 = [*(a1 + 32) credentialsDataSet];
          v64 = [v63 dataSetArray];
          if ([v64 length])
          {
            v89 = [v29 credentialsDataSet];
            v65 = [v89 dataSetArray];
            v66 = [*(a1 + 32) credentialsDataSet];
            [v66 dataSetArray];
            v67 = v87 = v63;
            v91 = [v65 isEqualToData:v67];

            if ((v91 & 1) == 0)
            {
              v68 = sub_10001B194(1);
              if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
                sub_10003C398();
              }

              v69 = sub_10001B194(1);
              if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v93 = "[THThreadNetworkCredentialsKeychainBackingStore storeThreadCredentialActiveDataSetRecord:waitForSync:completion:]_block_invoke";
                v94 = 1024;
                v95 = 1523;
                _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "%s:%d: prefRecord =======>", buf, 0x12u);
              }

              [*(a1 + 40) thDumpActiveDatasetRecord:v29];
              v70 = sub_10001B194(1);
              if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v93 = "[THThreadNetworkCredentialsKeychainBackingStore storeThreadCredentialActiveDataSetRecord:waitForSync:completion:]_block_invoke";
                v94 = 1024;
                v95 = 1526;
                _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "%s:%d: Incoming record =====>", buf, 0x12u);
              }

              [*(a1 + 40) thDumpActiveDatasetRecord:*(a1 + 32)];
            }

            goto LABEL_49;
          }
        }
      }
    }

LABEL_49:
  }

  v71 = [*(a1 + 32) keyChainItemRepresentationForActiveDataSetRecordAddOperation];
  v29 = v71;
  if (!v71)
  {
    v72 = @"Bad network parameter";
    v73 = 4;
    goto LABEL_54;
  }

  if (*(a1 + 56) == 1)
  {
    [*(a1 + 40) storeActiveDataSetRecordAndSync:*(a1 + 32) completion:*(a1 + 48)];
    goto LABEL_14;
  }

  v74 = SecItemAdd(v71, 0);
  if (v74 == -25299)
  {
    v75 = sub_10001B194(1);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v93 = "[THThreadNetworkCredentialsKeychainBackingStore storeThreadCredentialActiveDataSetRecord:waitForSync:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "%s: Credential exists. Will update instead.", buf, 0xCu);
    }

    v76 = [*(a1 + 32) keyChainQueryForActiveDataSetRecordUpdateOperation];
    v77 = [*(a1 + 32) keyChainItemRepresentationForActiveDataSetRecordUpdateOperation];
    v74 = SecItemUpdate(v76, v77);
  }

  if (!v74)
  {
    if (!_os_feature_enabled_impl() || ([*(a1 + 40) markAsPreferred:*(a1 + 32)] & 1) != 0)
    {
      v55 = [*(a1 + 32) computedUniqueIdentifier];
      v56 = *(*(a1 + 48) + 16);
      goto LABEL_66;
    }

    v79 = *(a1 + 32);
    if (v79)
    {
      v80 = [v79 network];
      v81 = [*(a1 + 32) borderAgent];
      v82 = [THThreadNetworkCredentialsActiveDataSetRecord keyChainQueryForDeleteActiveDataSetOperationForNetworkAndBorderAgent:v80 borderAgent:v81];

      v83 = SecItemDelete(v82);
      v84 = sub_10001B194(1);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v93 = "[THThreadNetworkCredentialsKeychainBackingStore storeThreadCredentialActiveDataSetRecord:waitForSync:completion:]_block_invoke";
        v94 = 1024;
        v95 = 1583;
        v96 = 1024;
        LODWORD(v97) = v83;
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "%s:%d Preferred network storing failed, deleted the local record : (err=%d)", buf, 0x18u);
      }
    }

    v85 = sub_10001B194(1);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v93 = "[THThreadNetworkCredentialsKeychainBackingStore storeThreadCredentialActiveDataSetRecord:waitForSync:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "%s: Error, Preferred network storing failure ", buf, 0xCu);
    }

    v72 = @"No preferred network found";
    v73 = 10;
LABEL_54:
    v55 = [NSError storeError:v73 description:v72];
    v56 = *(*(a1 + 48) + 16);
LABEL_66:
    v56();

    goto LABEL_14;
  }

  v78 = sub_10001B194(1);
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v93 = "[THThreadNetworkCredentialsKeychainBackingStore storeThreadCredentialActiveDataSetRecord:waitForSync:completion:]_block_invoke";
    v94 = 1024;
    v95 = 1564;
    v96 = 1024;
    LODWORD(v97) = v74;
    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "%s:%d Error while adding/updating the record : (err=%d)", buf, 0x18u);
  }

  [*(a1 + 40) errorout:v74 completion:*(a1 + 48)];
LABEL_14:
}