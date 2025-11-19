uint64_t CoreCaptureControlGetTypeID()
{
  result = __kCoreCaptureControlTypeID;
  if (!__kCoreCaptureControlTypeID)
  {
    pthread_once(&__gCoreCaptureControlTypeInit, __CoreCaptureControlRegister);
    return __kCoreCaptureControlTypeID;
  }

  return result;
}

uint64_t __CoreCaptureControlRegister()
{
  result = _CFRuntimeRegisterClass();
  __kCoreCaptureControlTypeID = result;
  return result;
}

void *__CoreCaptureControlRelease(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void *CoreCaptureControlCreate()
{
  if (!__kCoreCaptureControlTypeID)
  {
    pthread_once(&__gCoreCaptureControlTypeInit, __CoreCaptureControlRegister);
  }

  result = _CFRuntimeCreateInstance();
  if (result)
  {
    result[2] = 0;
    result[3] = 0;
    result[4] = 0;
  }

  return result;
}

uint64_t CoreCaptureControlStart(uint64_t a1, const sockaddr *a2, socklen_t a3)
{
  result = connect(a1, a2, a3);
  if (result)
  {
    v5 = *MEMORY[0x277CBECE8];
    v6 = MEMORY[0x277CBF138];
    v7 = MEMORY[0x277CBF150];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v9 = CFDictionaryCreateMutable(v5, 1, v6, v7);
    CFDictionaryAddValue(v9, @"CCIdleTime", @"100");
    CFDictionaryAddValue(Mutable, @"CCStart", v9);
    v10 = CFDictionaryCreateMutable(v5, 1, v6, v7);
    CFDictionaryAddValue(v10, @"CCConfig", Mutable);
    Data = CFPropertyListCreateData(0, v10, kCFPropertyListXMLFormat_v1_0, 0, 0);
    sendXPCRequest(a1, Data);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (Data)
    {
      CFRelease(Data);
    }

    sleep(2u);
    return replyResult;
  }

  return result;
}

void sendXPCRequest(uint64_t a1, CFDataRef theData)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (theData)
    {
      if (CFDataGetBytePtr(theData))
      {
        if (CFDataGetLength(theData))
        {
          BytePtr = CFDataGetBytePtr(theData);
          Length = CFDataGetLength(theData);
          v6 = CFStringCreateWithBytes(0, BytePtr, Length, 0, 0);
          if (v6)
          {
            v7 = v6;
            v8 = xpc_dictionary_create(0, 0, 0);
            if (v8)
            {
              v9 = v8;
              CStringPtr = CFStringGetCStringPtr(v7, 0);
              *&v11 = 0xAAAAAAAAAAAAAAAALL;
              *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
              *buffer = v11;
              v15 = v11;
              v16 = v11;
              v17 = v11;
              v18 = v11;
              v19 = v11;
              v20 = v11;
              v21 = v11;
              v22 = v11;
              v23 = v11;
              v24 = v11;
              v25 = v11;
              v26 = v11;
              v27 = v11;
              v28 = v11;
              v29 = v11;
              if (!CStringPtr)
              {
                if (CFStringGetCString(v7, buffer, 256, 0))
                {
                  CStringPtr = buffer;
                }

                else
                {
                  CStringPtr = 0;
                }
              }

              if (CStringPtr)
              {
                v12 = CStringPtr;
              }

              else
              {
                v12 = &unk_2452A2439;
              }

              xpc_dictionary_set_string(v9, "CCConfig", v12);
              replyResult = 0;
              xpc_connection_send_message_with_reply(*(a1 + 16), v9, *(a1 + 24), &__block_literal_global_44);
              xpc_release(v9);
            }

            else
            {
              fprintf(*MEMORY[0x277D85E08], "%s:%06u: ERROR: Unable to create XPC dictionary\n", "sendXPCRequest", 218);
            }

            CFRelease(v7);
          }

          else
          {
            fprintf(*MEMORY[0x277D85E08], "%s:%06u: ERROR: Unable to allocate string\n");
          }
        }

        else
        {
          fprintf(*MEMORY[0x277D85E08], "%s:%06u: ERROR: Invalid XPC request length\n");
        }
      }

      else
      {
        fprintf(*MEMORY[0x277D85E08], "%s:%06u: ERROR: Invalid XPC request ptr\n");
      }
    }

    else
    {
      fprintf(*MEMORY[0x277D85E08], "%s:%06u: ERROR: Invalid XPC request\n");
    }
  }

  else
  {
    fprintf(*MEMORY[0x277D85E08], "%s:%06u: ERROR: Invalid client argument\n");
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __sendXPCRequest_block_invoke(uint64_t a1, void *a2)
{
  result = MEMORY[0x245D67280](a2);
  if (result == MEMORY[0x277D86480])
  {
    string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
    result = fprintf(*MEMORY[0x277D85E08], "Got an XPC error (processReply): %s\n", string);
    v5 = 0;
  }

  else
  {
    if (result != MEMORY[0x277D86468])
    {
      return result;
    }

    v4 = xpc_dictionary_get_string(a2, "rc");
    fprintf(*MEMORY[0x277D85E08], "Result is %s\n", v4);
    result = strncmp(v4, "rc.ok", 5uLL);
    v5 = result == 0;
  }

  replyResult = v5;
  return result;
}

uint64_t __connect_block_invoke(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x245D67280](a2);
  if (result != MEMORY[0x277D86480])
  {
    if (result == MEMORY[0x277D86450])
    {
      v3 = "XPC_TYPE_CONNECTION";
    }

    else if (result == MEMORY[0x277D864B0])
    {
      v3 = "XPC_TYPE_NULL";
    }

    else if (result == MEMORY[0x277D86448])
    {
      v3 = "XPC_TYPE_BOOL";
    }

    else if (result == MEMORY[0x277D86498])
    {
      v3 = "XPC_TYPE_INT64";
    }

    else if (result == MEMORY[0x277D864C8])
    {
      v3 = "XPC_TYPE_UINT64";
    }

    else if (result == MEMORY[0x277D86470])
    {
      v3 = "XPC_TYPE_DOUBLE";
    }

    else if (result == MEMORY[0x277D86460])
    {
      v3 = "XPC_TYPE_DATE";
    }

    else if (result == MEMORY[0x277D86458])
    {
      v3 = "XPC_TYPE_DATA";
    }

    else if (result == MEMORY[0x277D864C0])
    {
      v3 = "XPC_TYPE_STRING";
    }

    else if (result == MEMORY[0x277D864D0])
    {
      v3 = "XPC_TYPE_UUID";
    }

    else if (result == MEMORY[0x277D86488])
    {
      v3 = "XPC_TYPE_FD";
    }

    else if (result == MEMORY[0x277D864B8])
    {
      v3 = "XPC_TYPE_SHMEM";
    }

    else if (result == MEMORY[0x277D86440])
    {
      v3 = "XPC_TYPE_ARRAY";
    }

    else if (result == MEMORY[0x277D86468])
    {
      v3 = "XPC_TYPE_DICTIONARY";
    }

    else
    {
      v3 = "Unknown type";
    }

    return fprintf(*MEMORY[0x277D85E08], "Unexpected event type %s\n", v3);
  }

  return result;
}

uint64_t CoreCaptureControlStop(uint64_t a1, const sockaddr *a2, socklen_t a3)
{
  result = connect(a1, a2, a3);
  if (result)
  {
    v5 = *MEMORY[0x277CBECE8];
    v6 = MEMORY[0x277CBF138];
    v7 = MEMORY[0x277CBF150];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v9 = CFDictionaryCreateMutable(v5, 1, v6, v7);
    CFDictionaryAddValue(v9, @"CCIdleTime", @"100");
    CFDictionaryAddValue(Mutable, @"CCStop", v9);
    v10 = CFDictionaryCreateMutable(v5, 1, v6, v7);
    CFDictionaryAddValue(v10, @"CCConfig", Mutable);
    Data = CFPropertyListCreateData(0, v10, kCFPropertyListXMLFormat_v1_0, 0, 0);
    sendXPCRequest(a1, Data);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (Data)
    {
      CFRelease(Data);
    }

    sleep(2u);
    return replyResult;
  }

  return result;
}

uint64_t CoreCaptureControlCapture(uint64_t a1, const sockaddr *a2, const char *a3, const char *a4)
{
  result = connect(a1, a2, a3);
  if (result)
  {
    v9 = *MEMORY[0x277CBECE8];
    v10 = MEMORY[0x277CBF138];
    v11 = MEMORY[0x277CBF150];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v13 = CFDictionaryCreateMutable(v9, 1, v10, v11);
    v14 = CFStringCreateWithCString(0, a2, 0);
    v15 = CFStringCreateWithCString(0, a3, 0);
    cf = CFStringCreateWithCString(0, a4, 0);
    CFDictionaryAddValue(v13, @"CaptureReason", cf);
    v16 = CFDictionaryCreateMutable(v9, 1, v10, v11);
    CFDictionaryAddValue(v16, v15, v13);
    v17 = CFDictionaryCreateMutable(v9, 1, v10, v11);
    CFDictionaryAddValue(v17, v14, v16);
    CFDictionaryAddValue(Mutable, @"CCConfigurePipe", v17);
    v18 = CFDictionaryCreateMutable(v9, 1, v10, v11);
    CFDictionaryAddValue(v18, @"CCConfig", Mutable);
    Data = CFPropertyListCreateData(0, v18, kCFPropertyListXMLFormat_v1_0, 0, 0);
    sendXPCRequest(a1, Data);
    if (v13)
    {
      CFRelease(v13);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (Data)
    {
      CFRelease(Data);
    }

    sleep(2u);
    return replyResult;
  }

  return result;
}

uint64_t CoreCaptureControlCaptureWithComponentDirectory(uint64_t a1, const sockaddr *a2, const char *a3)
{
  result = connect(a1, a2, a3);
  if (result)
  {
    v7 = *MEMORY[0x277CBECE8];
    v8 = MEMORY[0x277CBF138];
    v9 = MEMORY[0x277CBF150];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v11 = CFDictionaryCreateMutable(v7, 1, v8, v9);
    v12 = CFStringCreateWithCString(0, a3, 0);
    CFDictionaryAddValue(v11, @"CaptureReason", v12);
    v13 = CFDictionaryCreateMutable(v7, 1, v8, v9);
    v14 = CFStringCreateWithCString(0, a2, 0);
    CFDictionaryAddValue(v13, v14, v11);
    CFDictionaryAddValue(Mutable, @"CCCaptureDirectory", v13);
    v15 = CFDictionaryCreateMutable(v7, 1, v8, v9);
    CFDictionaryAddValue(v15, @"CCConfig", Mutable);
    Data = CFPropertyListCreateData(0, v15, kCFPropertyListXMLFormat_v1_0, 0, 0);
    sendXPCRequest(a1, Data);
    if (v11)
    {
      CFRelease(v11);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (Data)
    {
      CFRelease(Data);
    }

    sleep(2u);
    return replyResult;
  }

  return result;
}

uint64_t CoreCaptureControlConfigureProfile(uint64_t a1, const sockaddr *a2, socklen_t a3)
{
  result = connect(a1, a2, a3);
  if (result)
  {
    v6 = strlen(a2);
    v7 = CFDataCreateWithBytesNoCopy(0, &a2->sa_len, v6, *MEMORY[0x277CBED00]);
    sendXPCRequest(a1, v7);
    if (v7)
    {
      CFRelease(v7);
    }

    sleep(2u);
    return replyResult;
  }

  return result;
}

uint64_t CoreCaptureControlConfigureStream(uint64_t a1, const sockaddr *a2, const char *a3, const char *a4, uint64_t *a5)
{
  valuePtr[1] = *MEMORY[0x277D85DE8];
  result = connect(a1, a2, a3);
  if (!result)
  {
    goto LABEL_63;
  }

  v39 = a1;
  v11 = *MEMORY[0x277CBECE8];
  v12 = MEMORY[0x277CBF138];
  v13 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v15 = CFDictionaryCreateMutable(v11, 0, v12, v13);
  cf = CFStringCreateWithCString(0, a2, 0);
  key = CFStringCreateWithCString(0, a3, 0);
  v16 = CFStringCreateWithCString(0, a4, 0);
  if ((*a5 & 7) == 0)
  {
    v36 = 0;
    ArrayBySeparatingStrings = 0;
    v38 = 0;
    v35 = 0;
    goto LABEL_16;
  }

  v17 = CFDictionaryCreateMutable(v11, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v18 = *a5;
  if (*a5)
  {
    v38 = CFNumberCreate(0, kCFNumberSInt64Type, a5 + 1);
    CFDictionaryAddValue(v17, @"LogLevel", v38);
    v18 = *a5;
    if ((*a5 & 2) != 0)
    {
LABEL_5:
      valuePtr[0] = 0xAAAAAAAAAAAAAAAALL;
      if (isValidNumber(a5[2], valuePtr))
      {
        v36 = CFNumberCreate(0, kCFNumberSInt64Type, valuePtr);
        CFDictionaryAddValue(v17, @"LogFlags", v36);
        ArrayBySeparatingStrings = 0;
      }

      else
      {
        v19 = CFStringCreateWithCString(0, a5[2], 0);
        ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v19, @",");
        CFDictionaryAddValue(v17, @"LogFlags", ArrayBySeparatingStrings);
        CFRelease(v19);
        v36 = 0;
      }

      if ((*a5 & 4) == 0)
      {
        goto LABEL_13;
      }

LABEL_10:
      v35 = CFNumberCreate(0, kCFNumberSInt64Type, a5 + 3);
      CFDictionaryAddValue(v17, @"LogOptions", v35);
      goto LABEL_14;
    }
  }

  else
  {
    v38 = 0;
    if ((v18 & 2) != 0)
    {
      goto LABEL_5;
    }
  }

  v36 = 0;
  ArrayBySeparatingStrings = 0;
  if ((v18 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  v35 = 0;
LABEL_14:
  CFDictionaryAddValue(v15, @"CoreCapture", v17);
  if (v17)
  {
    CFRelease(v17);
  }

LABEL_16:
  if ((*a5 & 0x18) != 0)
  {
    v20 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if ((*a5 & 8) != 0)
    {
      v34 = CFNumberCreate(0, kCFNumberSInt64Type, a5 + 4);
      CFDictionaryAddValue(v20, @"LogLevel", v34);
      if ((*a5 & 0x10) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v34 = 0;
      if ((*a5 & 0x10) != 0)
      {
LABEL_19:
        valuePtr[0] = 0xAAAAAAAAAAAAAAAALL;
        if (!isValidNumber(a5[5], valuePtr))
        {
          v23 = CFStringCreateWithCString(0, a5[2], 0);
          v33 = CFStringCreateArrayBySeparatingStrings(0, v23, @",");
          CFDictionaryAddValue(v20, @"LogFlags", v33);
          CFRelease(v23);
          v21 = 0;
LABEL_26:
          v22 = v15;
          CFDictionaryAddValue(v15, @"Console", v20);
          if (v20)
          {
            CFRelease(v20);
          }

          goto LABEL_28;
        }

        v21 = CFNumberCreate(0, kCFNumberSInt64Type, valuePtr);
        CFDictionaryAddValue(v20, @"LogFlags", v21);
LABEL_24:
        v33 = 0;
        goto LABEL_26;
      }
    }

    v21 = 0;
    goto LABEL_24;
  }

  v22 = v15;
  v21 = 0;
  v33 = 0;
  v34 = 0;
LABEL_28:
  v24 = MEMORY[0x277CBF138];
  v25 = MEMORY[0x277CBF150];
  v26 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v27 = v16;
  CFDictionaryAddValue(v26, v16, v22);
  v28 = CFDictionaryCreateMutable(v11, 0, v24, v25);
  CFDictionaryAddValue(v28, key, v26);
  v29 = CFDictionaryCreateMutable(v11, 0, v24, v25);
  CFDictionaryAddValue(v29, cf, v28);
  CFDictionaryAddValue(Mutable, @"CCConfigureStream", v29);
  v30 = CFDictionaryCreateMutable(v11, 0, v24, v25);
  CFDictionaryAddValue(v30, @"CCConfig", Mutable);
  Data = CFPropertyListCreateData(0, v30, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (v22)
  {
    CFRelease(v22);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (key)
  {
    CFRelease(key);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (ArrayBySeparatingStrings)
  {
    CFRelease(ArrayBySeparatingStrings);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  sendXPCRequest(v39, Data);
  if (Data)
  {
    CFRelease(Data);
  }

  sleep(2u);
  result = replyResult;
LABEL_63:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

const char *isValidNumber(const char *result, unint64_t *a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (result)
  {
    v2 = result;
    if (!*result || (v5[0] = 0xAAAAAAAAAAAAAAAALL, *__error() = 0, *a2 = strtouq(v2, v5, 0), *__error() == 34) && *a2 == -1)
    {
      result = 0;
    }

    else
    {
      __error();
      result = (*v5[0] == 0);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CoreCaptureControlConfigurePipe(uint64_t a1, const sockaddr *a2, const char *a3, uint64_t *a4)
{
  result = connect(a1, a2, a3);
  if (!result)
  {
    return result;
  }

  v27 = a1;
  v9 = *MEMORY[0x277CBECE8];
  v10 = MEMORY[0x277CBF138];
  v11 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = CFDictionaryCreateMutable(v9, 4, v10, v11);
  key = CFStringCreateWithCString(0, a2, 0);
  v14 = CFStringCreateWithCString(0, a3, 0);
  v15 = *a4;
  if (*a4)
  {
    cf = CFStringCreateWithCString(0, a4[1], 0);
    CFDictionaryAddValue(v13, @"LogOptions", cf);
    v15 = *a4;
    if ((*a4 & 2) != 0)
    {
LABEL_4:
      v25 = CFNumberCreate(0, kCFNumberSInt64Type, a4 + 2);
      CFDictionaryAddValue(v13, @"WatermarkLevel", v25);
      v15 = *a4;
      if ((*a4 & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v16 = 0;
      if ((v15 & 8) != 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      v17 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    cf = 0;
    if ((v15 & 2) != 0)
    {
      goto LABEL_4;
    }
  }

  v25 = 0;
  if ((v15 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v16 = CFNumberCreate(0, kCFNumberSInt64Type, a4 + 3);
  CFDictionaryAddValue(v13, @"NotifyTimeout", v16);
  if ((*a4 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  v17 = CFNumberCreate(0, kCFNumberSInt64Type, a4 + 4);
  CFDictionaryAddValue(v13, @"Policy", v17);
LABEL_11:
  v18 = MEMORY[0x277CBF138];
  v19 = MEMORY[0x277CBF150];
  v20 = CFDictionaryCreateMutable(v9, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v21 = v14;
  CFDictionaryAddValue(v20, v14, v13);
  v22 = CFDictionaryCreateMutable(v9, 1, v18, v19);
  CFDictionaryAddValue(v22, key, v20);
  CFDictionaryAddValue(Mutable, @"CCConfigurePipe", v22);
  v23 = CFDictionaryCreateMutable(v9, 1, v18, v19);
  CFDictionaryAddValue(v23, @"CCConfig", Mutable);
  Data = CFPropertyListCreateData(0, v23, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (key)
  {
    CFRelease(key);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  sendXPCRequest(v27, Data);
  if (Data)
  {
    CFRelease(Data);
  }

  sleep(2u);
  return replyResult;
}