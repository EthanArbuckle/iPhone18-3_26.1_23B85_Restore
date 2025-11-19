void genericIncomingConnectionCallback(uint64_t a1)
{
  cf = 0;
  if (DLShouldLog(5))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/GenericConnectionCallbacks.c", "genericIncomingConnectionCallback", 5, @"genericIncomingConnectionCallback called", v4, v5, v6, v7, v12);
  }

  if (DLDeviceReady(a1, &cf, v2, v3, v4, v5, v6, v7))
  {
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/GenericConnectionCallbacks.c", "genericIncomingConnectionCallback", 3, @"DLDeviceReady failed: %@", v8, v9, v10, v11, cf);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void genericConnectionMadeCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (DLShouldLog(5))
  {

    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/GenericConnectionCallbacks.c", "genericConnectionMadeCallback", 5, @"genericConnectionMadeCallback called", v9, v10, v11, v12, a9);
  }
}

uint64_t genericConnectionFailedCallback(uint64_t a1, __CFString *a2)
{
  if (DLShouldLog(5))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/GenericConnectionCallbacks.c", "genericConnectionFailedCallback", 5, @"genericConnectionFailedCallback called with reason %@", v4, v5, v6, v7, a2);
  }

  v8 = *(*(a1 + 40) + 32);
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = @"Lost connection";
  }

  return v8(a1, v9);
}

uint64_t genericAcceptFailedCallback(uint64_t a1, __CFString *a2)
{
  if (DLShouldLog(5))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/GenericConnectionCallbacks.c", "genericAcceptFailedCallback", 5, @"genericAcceptFailedCallback called with reason %@", v4, v5, v6, v7, a2);
  }

  v8 = *(*(a1 + 40) + 32);
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = @"Accept failed";
  }

  return v8(a1, v9);
}

void genericDisconnectCallback(uint64_t a1, char a2)
{
  if (DLShouldLog(5))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/GenericConnectionCallbacks.c", "genericDisconnectCallback", 5, @"genericDisconnectCallback called with reason: %@", v3, v4, v5, v6, a2);
  }
}

uint64_t genericConnectionLostCallback(uint64_t a1)
{
  if (DLShouldLog(5))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/GenericConnectionCallbacks.c", "genericConnectionLostCallback", 5, @"genericConnectionLostCallback called", v2, v3, v4, v5, v8);
  }

  v6 = *(*(a1 + 40) + 32);

  return v6(a1, @"Lost connection");
}

void genericProcessMessageCallback(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (DLShouldLog(7))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/GenericConnectionCallbacks.c", "genericProcessMessageCallback", 7, @"genericProcessMessageCallback called with message: %@", v10, v11, v12, v13, a2);
  }

  if (DLShouldLog(4))
  {

    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/GenericConnectionCallbacks.c", "genericProcessMessageCallback", 4, @"genericProcessMessageCallback was never overridden. This method does nothing. Your app will probably hang here.", v14, v15, v16, v17, a9);
  }
}

void genericPingCallback(uint64_t a1, char a2)
{
  if (DLShouldLog(6))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/GenericConnectionCallbacks.c", "genericPingCallback", 6, @"genericPingCallback called with reason: %@", v3, v4, v5, v6, a2);
  }
}

void printFileTransferStatus(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"DLFileDest");
  v3 = CFDictionaryGetValue(a1, @"DLFileAttributesKey");
  valuePtr = 0;
  v4 = CFDictionaryGetValue(a1, @"DLFileStatusKey");
  if (v4)
  {
    CFNumberGetValue(v4, kCFNumberIntType, &valuePtr);
    if (valuePtr == 1)
    {
      if (v3)
      {
        v23 = 0;
        v24 = 0;
        v13 = CFDictionaryGetValue(v3, @"FileSize");
        v14 = CFDictionaryGetValue(a1, @"DLFileOffsetKey");
        CFNumberGetValue(v13, kCFNumberSInt64Type, &v24);
        CFNumberGetValue(v14, kCFNumberSInt64Type, &v23);
        if (DLShouldLog(5))
        {
          _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/GenericConnectionCallbacks.c", "printFileTransferStatus", 5, @"Transfer status for %@: %3.2f%% complete.", v15, v16, v17, v18, Value);
        }
      }

      else if (DLShouldLog(5))
      {
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/GenericConnectionCallbacks.c", "printFileTransferStatus", 5, @"Transfer status for %@: UNKNOWN", v19, v20, v21, v22, Value);
      }
    }

    else if (valuePtr == 3)
    {
      if (DLShouldLog(5))
      {
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/GenericConnectionCallbacks.c", "printFileTransferStatus", 5, @"Transfer of file %@ failed.", v9, v10, v11, v12, Value);
      }
    }

    else if (valuePtr == 2 && DLShouldLog(5))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/GenericConnectionCallbacks.c", "printFileTransferStatus", 5, @"Transfer of file %@ completed successfully.", v5, v6, v7, v8, Value);
    }
  }
}

void genericSendFileCallback(uint64_t a1, const __CFData *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v16 = 0;
  if (a3)
  {
    printFileTransferStatus(a3);
    if (a2)
    {
      DLHandleSentFilePiece(a1, a2, a3, &v16);
    }
  }

  else if (DLShouldLog(3))
  {

    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/GenericConnectionCallbacks.c", "genericSendFileCallback", 3, @"No info dictionary passed to genericSendFileCallback", v12, v13, v14, v15, a9);
  }
}

void genericRequestFileCallback(uint64_t a1, __CFString *a2, uint64_t a3)
{
  if (DLShouldLog(5))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/GenericConnectionCallbacks.c", "genericRequestFileCallback", 5, @"genericRequestFileCallback called for file %@ and info %@", v6, v7, v8, v9, a2);
  }

  v18 = 0;
  if (DLSendFile(a1, a2, a3, &v18, v6, v7, v8, v9) && DLShouldLog(3))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/GenericConnectionCallbacks.c", "genericRequestFileCallback", 3, @"Could not send the file at %@: %@", v10, v11, v12, v13, a2);
  }

  if (DLWaitForMessage(a1))
  {
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/GenericConnectionCallbacks.c", "genericRequestFileCallback", 3, @"Could not send the file at %@: %@", v14, v15, v16, v17, a2);
    }
  }
}

void genericProgressCallback(__n128 a1)
{
  v1 = a1.n128_u8[0];
  if (DLShouldLog(6))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/GenericConnectionCallbacks.c", "genericProgressCallback", 6, @"genericProgressCallback called with percentage: %f", v2, v3, v4, v5, v1);
  }
}

CFDataRef _DLHandlerThreadMessagePortCallback(int a1, int a2, CFDataRef xmlData, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v253 = 0;
  errorString = 0;
  if (a2 >= 16 && DLShouldLog(4))
  {
    v245 = a4;
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLHandlerThreadMessagePortCallback", 4, @"Handler thread invoked with unknown msgid %d for connection %p", a5, a6, a7, a8, v10);
  }

  if (!a4)
  {
    if (!DLShouldLog(3))
    {
      return 0;
    }

    v16 = @"Handler thread can't get connection from info parameter, just returning";
    goto LABEL_10;
  }

  if (sSaveCallHistory == 1)
  {
    v11 = v10 <= 0xF ? sDLMessageStrings[v10] : "(Invalid Message Code)";
    v18 = CFStringCreateWithFormat(0, 0, @"-> Handling %s", v11, v245);
    _DLCallHistoryAddEntry(v18);
    if (v18)
    {
      CFRelease(v18);
    }
  }

  if (v10 <= 8)
  {
    if (v10 > 5)
    {
      if ((v10 - 7) < 2)
      {
        v27 = *(a4 + 64);
        if (v27)
        {
          if (_DLSendData(v27, xmlData, &errorString) && DLShouldLog(3))
          {
            _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLHandlerThreadMessagePortCallback", 3, @"Could not send disconnect message: '%@'", v28, v29, v30, v31, errorString);
          }

          if (errorString)
          {
            CFRelease(errorString);
            errorString = 0;
          }

          _DLCleanupStreamHandler(a4);
        }

        if (v10 == 8)
        {
          v32 = *(a4 + 88);
          if (v32)
          {
            DLThreadDeleteReceivePort(v32);
          }

          v33 = *(a4 + 104);
          if (v33)
          {
            DLThreadDeleteSendPort(v33);
          }

          Current = CFRunLoopGetCurrent();
          CFRunLoopStop(Current);
        }

        v35 = *(a4 + 96);
        v36 = sHandlerThreadConnectionSessionNumber | v10;
        if (v35)
        {
          DLThreadSendMessage(v35, v36, 0);
        }

        else
        {
          _DLMainThreadMessagePortCallback(0, v36, 0, a4, a5, a6, a7, a8);
        }

        return 0;
      }

      if (v10 == 6)
      {
        _DLHandlerThreadWriteMessage(a4, xmlData, xmlData, a4, a5, a6, a7, a8, v244);
        return 0;
      }

      goto LABEL_105;
    }

    if (v10 != 1 && v10 != 3)
    {
      if (v10 == 5)
      {
        Message = _DLHandlerThreadReadMessage(a4);
        v20 = *(a4 + 96);
        v21 = sHandlerThreadConnectionSessionNumber | 5u;
        v22 = a4;
LABEL_151:
        _SendMessage(v22, v20, _DLMainThreadMessagePortCallback, v21, Message);
        return 0;
      }

      goto LABEL_105;
    }

    v54 = *(a4 + 64);
    sHandlerThreadConnectionSessionNumber = *(a4 + 4);
    if (!v54)
    {
      Value = CFDictionaryGetValue(*(a4 + 120), @"DLInfoStreamTypeKey");
      StreamHandlerForType(Value, a4 + 64, &errorString);
    }

    if (v10 == 1)
    {
      if (StreamHandlerAccept(*(a4 + 64), *(a4 + 120), &errorString))
      {
        if (DLShouldLog(3))
        {
          _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLHandlerThreadMessagePortCallback", 3, @"Error calling accept: %@", v56, v57, v58, v59, errorString);
        }

        v60 = 0;
        v10 = 2;
LABEL_148:
        if (errorString)
        {
          CFRelease(errorString);
          errorString = 0;
        }

        v20 = *(a4 + 96);
        v21 = sHandlerThreadConnectionSessionNumber | v10;
        v22 = a4;
        Message = v60;
        goto LABEL_151;
      }

      if (_DLCheckVersionForAccept(a4, &v253))
      {
        v60 = 0;
        v10 = 1;
      }

      else
      {
        v136 = v253;
        if (!v253)
        {
          v136 = CFRetain(@"Unknown error");
          v253 = v136;
        }

        v60 = _DLCreateMessageDataV(@"DLAcceptMessage", 1, v89, v90, v91, v92, v93, v94, v136);
        v10 = 2;
      }
    }

    else
    {
      if (errorString)
      {
        CFRelease(errorString);
        errorString = 0;
      }

      v62 = StreamHandlerConnect(*(a4 + 64), *(a4 + 120), &errorString);
      if (v62)
      {
        v63 = v62;
        if (DLShouldLog(3))
        {
          _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLHandlerThreadMessagePortCallback", 3, @"Error calling connect: %@", v66, v67, v68, v69, errorString);
        }

        v70 = errorString;
        if (v63 == -5)
        {
          v70 = @"DLErrorConnectingLocked";
        }

        v253 = v70;
        v60 = _DLCreateMessageDataV(@"DLConnectMessage", 1, v64, v65, v66, v67, v68, v69, v70);
        v10 = 4;
        goto LABEL_148;
      }

      if (_DLCheckVersionForConnect(a4, &v253))
      {
        v60 = 0;
      }

      else
      {
        v137 = v253;
        if (!v253)
        {
          v137 = CFRetain(@"Unknown error");
          v253 = v137;
        }

        v60 = _DLCreateMessageDataV(@"DLConnectMessage", 1, v95, v96, v97, v98, v99, v100, v137);
        v10 = 4;
      }
    }

    if (v253)
    {
      CFRelease(v253);
      v253 = 0;
    }

    goto LABEL_148;
  }

  if (v10 <= 12)
  {
    switch(v10)
    {
      case 9:
        _DLCleanupStreamHandler(a4);
        return 0;
      case 10:
        if (*(a4 + 64))
        {
          v71 = CFPropertyListCreateFromXMLData(0, xmlData, 0, &errorString);
          v72 = _DLGetParameterAtIndexWithDefaultValue(v71, 1, 0);
          v73 = _DLGetParameterAtIndexWithDefaultValue(v71, 2, 0);
          v74 = _DLGetParameterAtIndexWithDefaultValue(v71, 3, 0);
          if (v74)
          {
            MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v74);
          }

          else
          {
            MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          }

          v127 = MutableCopy;
          CFDictionarySetValue(MutableCopy, @"DLFileSource", v72);
          CFDictionarySetValue(v127, @"DLFileDest", v73);
          v134 = _DLCreateMessageDataV(@"DLRequestFile", 3, v128, v129, v130, v131, v132, v133, v72);
          _DLSendDataAndDisconnectOnError(a4, v134);
          CFRelease(v134);
          CFRelease(v127);
          if (!v71)
          {
            return 0;
          }

          v135 = v71;
          goto LABEL_279;
        }

        if (!DLShouldLog(4))
        {
          return 0;
        }

        v16 = @"RequestFileMessage called in HandlerThread, but StreamHandler is NULL";
        goto LABEL_116;
      case 11:
        if (*(a4 + 64))
        {
          v23 = CFPropertyListCreateFromXMLData(0, xmlData, 0, &errorString);
          v24 = _DLGetParameterAtIndexWithDefaultValue(v23, 1, 0);
          v25 = _DLGetParameterAtIndexWithDefaultValue(v23, 2, 0);
          if (v25)
          {
            Mutable = CFDictionaryCreateMutableCopy(0, 0, v25);
          }

          else
          {
            Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          }

          v101 = Mutable;
          if (v24)
          {
            CFDictionarySetValue(Mutable, @"DLFileSource", v24);
          }

          v102 = DLCreateCStringFromCFString(v24);
          if (v102)
          {
            v103 = v102;
            v104 = fopen(v102, "r");
            if (v104)
            {
              v105 = v104;
              free(v103);
              v106 = DLCopyFileAttributes(v24);
              CFDictionarySetValue(v101, @"DLFileAttributesKey", v106);
              v107 = CFDictionaryGetValue(v106, @"FileSize");
              if (v106)
              {
                CFRelease(v106);
              }

              if (!v107)
              {
                goto LABEL_266;
              }

              valuePtr = 0;
              CFNumberGetValue(v107, kCFNumberIntType, &valuePtr);
              *__error() = 0;
              theData = 0;
              context = 0;
              v261 = 0;
              v108 = CFDictionaryGetValue(v101, @"DLFileEncryptionKey");
              if (v108)
              {
                v109 = v108;
                if (DLShouldLog(6))
                {
                  _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLWriteFileBytes", 6, @"The caller has requested that this file be encrypted before sending it. Starting up the encryption engine", v110, v111, v112, v113, v244);
                }

                v261 = 1;
                v262 = 0;
                v114 = createFileAuthBlob(v109, &theData, &v262);
                if (!v114)
                {
                  if (DLShouldLog(3))
                  {
                    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLWriteFileBytes", 3, @"Could not create encrypted auth data", v206, v207, v208, v209, v244);
                  }

                  if (v262)
                  {
                    CFRelease(v262);
                  }

                  goto LABEL_242;
                }

                BytePtr = CFDataGetBytePtr(theData);
                v116 = CFDataGetBytePtr(v262);
                v117 = CCCryptorCreate(0, 0, 1u, BytePtr, 0x20uLL, v116, &context);
                if (v262)
                {
                  CFRelease(v262);
                  v262 = 0;
                }

                if (v117)
                {
                  if (DLShouldLog(3))
                  {
                    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLWriteFileBytes", 3, @"Could not create an encryptor! Refusing to send the file", v118, v119, v120, v121, v244);
                  }

LABEL_242:
                  LOBYTE(v107) = 1;
LABEL_260:
                  if (context)
                  {
                    CCCryptorRelease(context);
                  }

                  if (v114)
                  {
                    CFRelease(v114);
                  }

                  if (theData)
                  {
                    CFRelease(theData);
                  }

LABEL_266:
                  fclose(v105);
                  v144 = errorString;
                  goto LABEL_267;
                }

                if (DLShouldLog(6))
                {
                  _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLWriteFileBytes", 6, @"Successfully created an encryptor. Hang on to your initialization vectors, it's going to be a wild ride!", v214, v215, v216, v217, v244);
                }
              }

              else
              {
                v114 = 0;
              }

              v147 = CFNumberCreate(0, kCFNumberCharType, &v261);
              CFDictionarySetValue(v101, @"DLFileIsEncrypted", v147);
              if (v147)
              {
                CFRelease(v147);
              }

              CFDictionaryRemoveValue(v101, @"DLFileEncryptionKey");
              v262 = -1;
              v148 = CFDictionaryGetValue(v101, @"DLFileAttributesKey");
              if (v148)
              {
                v149 = CFDictionaryGetValue(v148, @"FileSize");
                if (v149)
                {
                  CFNumberGetValue(v149, kCFNumberLongLongType, &v262);
                }
              }

              if (v262 == -1)
              {
                if (DLShouldLog(3))
                {
                  _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLWriteFileBytes", 3, @"Could not get the file size from the file info dictionary. Refusing to send this file", v210, v211, v212, v213, v244);
                }

                LOBYTE(v107) = 0;
              }

              else
              {
                keyExistsAndHasValidFormat = 0;
                AppIntegerValue = CFPreferencesGetAppIntegerValue(@"ChunkSize", @"com.apple.DeviceLink", &keyExistsAndHasValidFormat);
                if (AppIntegerValue <= 0 || keyExistsAndHasValidFormat == 0)
                {
                  v152 = 0x2000;
                }

                else
                {
                  v152 = AppIntegerValue & 0x7FFFFFFF;
                }

                v153 = v152 + 16;
                v251 = v114;
                if (v114)
                {
                  v153 += CFDataGetLength(v114);
                }

                v154 = malloc_type_calloc(1uLL, v153, 0x100004077774924uLL);
                if (v154)
                {
                  v155 = v154;
                  v259 = 0;
                  bytesDeallocator = *MEMORY[0x277CBED00];
                  while (1)
                  {
                    bzero(v155, v153);
                    if (v261 == 1 && v259 == 0)
                    {
                      Length = CFDataGetLength(v251);
                      v274.location = 0;
                      v274.length = Length;
                      CFDataGetBytes(v251, v274, v155);
                    }

                    else
                    {
                      Length = 0;
                    }

                    v158 = fread(&v155[Length], 1uLL, v152, v105);
                    if (!v158 && !feof(v105))
                    {
                      break;
                    }

                    v159 = CFNumberCreate(0, kCFNumberLongLongType, &v259);
                    CFDictionarySetValue(v101, @"DLFileOffsetKey", v159);
                    CFRelease(v159);
                    if (v158 >= v152)
                    {
                      if (v259 + v158 < v262)
                      {
                        v160 = 1;
                      }

                      else
                      {
                        v160 = 2;
                      }
                    }

                    else
                    {
                      v160 = 2;
                    }

                    v258 = v160;
                    v161 = CFNumberCreate(0, kCFNumberIntType, &v258);
                    CFDictionarySetValue(v101, @"DLFileStatusKey", v161);
                    if (v161)
                    {
                      CFRelease(v161);
                    }

                    if (v261 == 1)
                    {
                      v256 = 0;
                      dataOutMoved = 0;
                      v162 = CCCryptorUpdate(context, &v155[Length], v158, &v155[Length], v153 - Length, &dataOutMoved);
                      if (v162)
                      {
                        v163 = v162;
                        if (DLShouldLog(3))
                        {
                          _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLWriteFileBytes", 3, @"There was an error while encrypting the file data: %d", v164, v165, v166, v167, v163);
                        }
                      }

                      else if (DLShouldLog(6))
                      {
                        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLWriteFileBytes", 6, @"%d bytes of data successfully encrypted", v170, v171, v172, v173, dataOutMoved);
                      }

                      if (v258 == 2)
                      {
                        if (DLShouldLog(6))
                        {
                          _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLWriteFileBytes", 6, @"Finalizing bytes", v174, v175, v176, v177, v244);
                        }

                        v178 = CCCryptorFinal(context, &v155[Length + dataOutMoved], v153 - Length - dataOutMoved, &v256);
                        if (v178)
                        {
                          v179 = v178;
                          if (v178 == -4301)
                          {
                            _DLHandlerThreadMessagePortCallback_cold_1();
                          }

                          if (DLShouldLog(3))
                          {
                            _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLWriteFileBytes", 3, @"There was an error finalizing the encrypted bytes: %d", v180, v181, v182, v183, v179);
                          }
                        }

                        else if (DLShouldLog(6))
                        {
                          _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLWriteFileBytes", 6, @"Finalized %d bytes of data", v184, v185, v186, v187, v256);
                        }
                      }

                      v169 = dataOutMoved + Length + v256;
                      v168 = v155;
                    }

                    else
                    {
                      v168 = v155;
                      v169 = v158;
                    }

                    v188 = CFDataCreateWithBytesNoCopy(0, v168, v169, bytesDeallocator);
                    v195 = _DLCreateMessageDataV(@"DLSendFile", 2, v189, v190, v191, v192, v193, v194, v188);
                    v202 = _DLSendData(*(a4 + 64), v195, &errorString);
                    if (v195)
                    {
                      CFRelease(v195);
                    }

                    if (v188)
                    {
                      CFRelease(v188);
                    }

                    if (v202)
                    {
                      if (DLShouldLog(3))
                      {
                        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLWriteFileBytes", 3, @"Could not send data: '%@'", v222, v223, v224, v225, errorString);
                      }

                      v226 = CFStringCreateWithFormat(0, 0, @"Could not send data: %@", errorString, v101);
                      goto LABEL_257;
                    }

                    v203 = v259;
                    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v259 + 0x1999999999999998, 1) < 0x1999999999999999uLL || v258 == 2)
                    {
                      v204 = _DLCreateMessageDataV(@"DLSendFile", 2, v196, v197, v198, v199, v200, v201, 0);
                      _SendMessage(a4, *(a4 + 96), _DLMainThreadMessagePortCallback, sHandlerThreadConnectionSessionNumber | 0xBu, v204);
                      v203 = v259;
                    }

                    v205 = v203 + v152;
                    v259 = v205;
                    if (v205 && v205 >= v262)
                    {
                      LOBYTE(v107) = 1;
                      goto LABEL_258;
                    }
                  }

                  if (DLShouldLog(3))
                  {
                    v227 = ferror(v105);
                    v228 = __error();
                    strerror(*v228);
                    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLWriteFileBytes", 3, @"Error while reading from file: (%d) %s", v229, v230, v231, v232, v227);
                  }

                  v233 = v259;
                  v234 = __error();
                  v247 = strerror(*v234);
                  v226 = CFStringCreateWithFormat(0, 0, @"Could not read file bytes at offset %lld: %s", v233, v247);
LABEL_257:
                  LOBYTE(v107) = 0;
                  errorString = v226;
LABEL_258:
                  free(v155);
                }

                else
                {
                  if (DLShouldLog(3))
                  {
                    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLWriteFileBytes", 3, @"Could not malloc- out of memory!", v218, v219, v220, v221, v244);
                  }

                  errorString = CFStringCreateWithFormat(0, 0, @"Could not malloc- out of memory!");
                  LOBYTE(v107) = 1;
                }

                v114 = v251;
              }

              goto LABEL_260;
            }

            if (DLShouldLog(3))
            {
              _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLWriteFile", 3, @"Could not open file stream from file at %@", v140, v141, v142, v143, v24);
            }

            v126 = CFStringCreateWithFormat(0, 0, @"Could not open the file stream at %@", v24);
          }

          else
          {
            if (DLShouldLog(3))
            {
              _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLWriteFile", 3, @"Could not get file system file name from CFString %@", v122, v123, v124, v125, v24);
            }

            v126 = CFStringCreateWithFormat(0, 0, @"Could not get a file system name for %@", v24);
          }

          v144 = v126;
          LOBYTE(v107) = 0;
          errorString = v126;
LABEL_267:
          if (v144)
          {
            CFDictionarySetValue(v101, @"DLFileErrorString", v144);
            CFRelease(errorString);
          }

          if ((v107 & 1) == 0)
          {
            LODWORD(context) = 3;
            v235 = CFNumberCreate(0, kCFNumberIntType, &context);
            CFDictionarySetValue(v101, @"DLFileStatusKey", v235);
            if (v235)
            {
              CFRelease(v235);
            }

            v242 = _DLCreateMessageDataV(@"DLSendFile", 2, v236, v237, v238, v239, v240, v241, 0);
            v243 = v242;
            if (v242)
            {
              CFRetain(v242);
            }

            _SendMessage(a4, *(a4 + 96), _DLMainThreadMessagePortCallback, sHandlerThreadConnectionSessionNumber | 0xBu, v243);
            _DLSendDataAndDisconnectOnError(a4, v243);
          }

          if (v23)
          {
            CFRelease(v23);
          }

          if (!v101)
          {
            return 0;
          }

          v135 = v101;
LABEL_279:
          CFRelease(v135);
          return 0;
        }

        if (!DLShouldLog(4))
        {
          return 0;
        }

        v16 = @"SendFileMessage called in HandlerThread, but StreamHandler is NULL";
LABEL_116:
        v17 = 4;
        goto LABEL_11;
    }

LABEL_105:
    if (!DLShouldLog(3))
    {
      return 0;
    }

    v244 = v10;
    v16 = @"DLHandlerThreadMessagePortCallback called with an unknown message: %d";
LABEL_10:
    v17 = 3;
LABEL_11:
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLHandlerThreadMessagePortCallback", v17, v16, v12, v13, v14, v15, v244);
    return 0;
  }

  if (v10 != 13)
  {
    if (v10 == 14)
    {
      v37 = CFPropertyListCreateFromXMLData(0, xmlData, 0, 0);
      ValueAtIndex = CFArrayGetValueAtIndex(v37, 1);
      v270 = 0;
      cf = 0;
      context = a4;
      v265 = CFArrayGetValueAtIndex(v37, 2);
      v267 = 0u;
      v268 = 0u;
      v269 = 0u;
      v266 = a4;
      v272 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v246 = *(a4 + 160);
      v249 = *(a4 + 168);
      v83 = _DLCreateMessageDataV(@"DLMessageUploadFiles", 3, v77, v78, v79, v80, v81, v82, v265);
      v84 = _DLSendDataAndDisconnectOnError(a4, v83);
      v85 = v84;
      if (v84)
      {
        LODWORD(v270) = v84;
        cf = @"Error sending header";
      }

      if (v83)
      {
        CFRelease(v83);
      }

      if (v85 && v85 != -13)
      {
        goto LABEL_175;
      }

      CFDictionaryApplyFunction(ValueAtIndex, _DLUploadFilesFromDeviceCallback, &context);
      v86 = CFDataCreate(0, 0, 0);
      v87 = _DLSendDataAndDisconnectOnError(a4, v86);
      if (v87 && (!v270 || v270 == -13))
      {
        LODWORD(v270) = v87;
        if (cf)
        {
          CFRelease(cf);
        }

        cf = @"Error sending footer";
      }

      if (v86)
      {
        CFRelease(v86);
      }

      v88 = _DLHandlerThreadReadMessage(a4);
      if (v88)
      {
        goto LABEL_169;
      }

      if (v270 && v270 != -13)
      {
        goto LABEL_175;
      }
    }

    else
    {
      if (v10 != 15)
      {
        goto LABEL_105;
      }

      v37 = CFPropertyListCreateFromXMLData(0, xmlData, 0, 0);
      v38 = CFArrayGetValueAtIndex(v37, 1);
      v39 = CFArrayGetValueAtIndex(v37, 2);
      v40 = copyKeysFromDictionary(v38);
      v270 = 0;
      cf = 0;
      context = a4;
      v265 = v39;
      v267 = 0u;
      v268 = 0u;
      v269 = 0u;
      v266 = a4;
      v272 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v248 = *(a4 + 160);
      v250 = *(a4 + 168);
      v47 = _DLCreateMessageDataV(@"DLMessageDownloadFiles", 4, v41, v42, v43, v44, v45, v46, v40);
      v48 = _DLSendDataAndDisconnectOnError(a4, v47);
      v49 = v48;
      if (v48)
      {
        LODWORD(v270) = v48;
        cf = @"Error sending header";
      }

      if (v47)
      {
        CFRelease(v47);
      }

      if (v40)
      {
        CFRelease(v40);
      }

      if (v49 && v49 != -13)
      {
LABEL_175:
        if (v37)
        {
          CFRelease(v37);
        }

        v146 = _DLCreateStatusResponseData(v270);
        _DLBulkOperationContextDealloc(&context);
        return v146;
      }

      if (!v49)
      {
        goto LABEL_57;
      }

LABEL_56:
      if (v49 == -13)
      {
        while (1)
        {
LABEL_57:
          v50 = _DLHandlerThreadReadMessage(a4);
          if (!v50)
          {
            LODWORD(v270) = -1;
            if (cf)
            {
              CFRelease(cf);
            }

            v138 = @"Error reading request";
            goto LABEL_163;
          }

          v51 = v50;
          if (!CFDataGetLength(v50))
          {
            v139 = v51;
            goto LABEL_167;
          }

          v52 = DLCreateStringFromData(v51);
          CFRelease(v51);
          if (!v52)
          {
            LODWORD(v270) = -1;
            if (cf)
            {
              CFRelease(cf);
            }

            v138 = @"Error creating from path";
LABEL_163:
            cf = v138;
            v49 = -1;
            goto LABEL_168;
          }

          v53 = CFDictionaryGetValue(v38, v52);
          if (!v53)
          {
            break;
          }

          _DLDownloadFileToDevice(&context, v52, v53);
          CFRelease(v52);
          v49 = v270;
          if (v270)
          {
            goto LABEL_56;
          }
        }

        LODWORD(v270) = -1;
        if (cf)
        {
          CFRelease(cf);
        }

        cf = @"Received unexpected from path";
        v49 = -1;
        v139 = v52;
LABEL_167:
        CFRelease(v139);
      }

LABEL_168:
      v88 = _DLHandlerThreadReadMessage(a4);
      if (v88)
      {
LABEL_169:
        v262 = 0;
        theData = 0;
        v145 = _DLGetStatusResponseFromData(v88, &v262, &theData);
        _DLBulkOperationContextMergeResults(&context, v145, theData, v262);
        goto LABEL_175;
      }

      if (v49 && v49 != -13)
      {
        goto LABEL_175;
      }
    }

    LODWORD(v270) = -1;
    if (cf)
    {
      CFRelease(cf);
    }

    cf = @"Error reading status response";
    goto LABEL_175;
  }

  _DLHandlerThreadWriteMessage(a4, xmlData, xmlData, a4, a5, a6, a7, a8, v244);

  return _DLHandlerThreadReadMessage(a4);
}

void _DLRequestRead(uint64_t a1)
{
  if (sSaveCallHistory == 1)
  {
    _DLCallHistoryAddEntry(@"RequestRead");
  }

  *(a1 + 145) = 1;
  v2 = *(a1 + 104);
  if (v2)
  {

    DLThreadSendMessage(v2, 5, 0);
  }

  else
  {
    CFRunLoopSourceSignal(*(a1 + 112));
    Current = CFRunLoopGetCurrent();

    CFRunLoopWakeUp(Current);
  }
}

void _DLCallHistoryMain(__CFString *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = CFStringCreateWithFormat(0, 0, @"%@ : %@", a1, a2);
    _DLCallHistoryAddEntry(v3);
    if (v3 != a1)
    {

      CFRelease(v3);
    }
  }

  else
  {

    _DLCallHistoryAddEntry(a1);
  }
}

void _DLRequestWriteV(uint64_t a1, const void *a2, int a3, __CFString **a4)
{
  if (sSaveCallHistory == 1)
  {
    _DLCallHistoryMain(@"RequestWrite", a2);
  }

  v8 = _DLCreateMessageDataWithArgs(a2, a3, a4);
  if (v8)
  {
    v9 = *(a1 + 104);

    _SendMessage(a1, v9, _DLHandlerThreadMessagePortCallback, 6, v8);
  }
}

CFTypeRef _DLCreateMessageDataWithArgs(const void *a1, int a2, __CFString **a3)
{
  v3 = a2;
  errorString = 0;
  v28 = a3;
  Mutable = CFArrayCreateMutable(0, a2 + 1, MEMORY[0x277CBF128]);
  CFArrayAppendValue(Mutable, a1);
  if (v3 >= 1)
  {
    do
    {
      v6 = v28++;
      v7 = *v6;
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = @"___EmptyParameterString___";
      }

      CFArrayAppendValue(Mutable, v8);
      --v3;
    }

    while (v3);
  }

  v9 = CFWriteStreamCreateWithAllocatedBuffers(0, 0);
  v10 = v9;
  if (v9 && CFWriteStreamOpen(v9))
  {
    if (CFPropertyListIsValid(Mutable, kCFPropertyListBinaryFormat_v1_0))
    {
      v11 = CFPropertyListWriteToStream(Mutable, v10, kCFPropertyListBinaryFormat_v1_0, &errorString);
      CFRelease(Mutable);
      if (v11)
      {
        v12 = CFWriteStreamCopyProperty(v10, *MEMORY[0x277CBF068]);
      }

      else
      {
        if (DLShouldLog(3))
        {
          _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCreateMessageDataWithArgs", 3, @"Could not write property list to message data stream: '%@'", v22, v23, v24, v25, errorString);
        }

        if (errorString)
        {
          CFRelease(errorString);
          v12 = 0;
          errorString = 0;
        }

        else
        {
          v12 = 0;
        }
      }

      CFWriteStreamClose(v10);
      Mutable = v10;
      goto LABEL_25;
    }

    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCreateMessageDataWithArgs", 3, @"Plist is not valid: %@", v18, v19, v20, v21, Mutable);
    }
  }

  else
  {
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCreateMessageDataWithArgs", 3, @"Could not open stream for writing message data", v13, v14, v15, v16, v26);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  v12 = 0;
  result = 0;
  if (Mutable)
  {
LABEL_25:
    CFRelease(Mutable);
    return v12;
  }

  return result;
}

void _SendMessage(uint64_t a1, __CFMessagePort *a2, void (*a3)(void, uint64_t, const __CFData *, uint64_t), uint64_t a4, const __CFData *a5)
{
  if (a2)
  {

    DLThreadSendMessage(a2, a4, a5);
  }

  else
  {
    a3(0, a4, a5, a1);
    if (a5)
    {

      CFRelease(a5);
    }
  }
}

const __CFString *_DLGetParameterAtIndexWithDefaultValue(const __CFArray *a1, CFIndex a2, uint64_t a3)
{
  if (CFArrayGetCount(a1) <= a2)
  {
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLGetParameterAtIndexWithDefaultValue", 3, @"Error in DeviceLinkConnection, requested parameter at index %d is beyond the end of the parameter array: %@", v8, v9, v10, v11, a2);
    }
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
    v7 = CFGetTypeID(ValueAtIndex);
    if (v7 == CFStringGetTypeID())
    {
      if (CFStringCompare(ValueAtIndex, @"___EmptyParameterString___", 0))
      {
        return ValueAtIndex;
      }
    }

    else
    {
      return ValueAtIndex;
    }
  }

  return a3;
}

void _DLHandlerThreadWriteMessage(uint64_t a1, const __CFData *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 64))
  {

    _DLSendDataAndDisconnectOnError(a1, a2);
  }

  else if (DLShouldLog(4))
  {

    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLHandlerThreadWriteMessage", 4, @"WriteMessage called in HandlerThread, but StreamHandler is NULL", v10, v11, v12, v13, a9);
  }
}

uint64_t _DLSendDataAndDisconnectOnError(uint64_t a1, CFDataRef theData)
{
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);

    return _DLSendBytesAndDisconnectOnError(a1, BytePtr, Length);
  }

  else
  {

    return DLSetStatus(4294967293, 0, @"_DLSendDataAndDisconnectOnError: data parameter is NULL");
  }
}

CFDataRef _DLHandlerThreadReadMessage(uint64_t a1)
{
  v13 = 0;
  cf = 0;
  v1 = *(a1 + 64);
  if (v1)
  {
    if (StreamHandlerReceive(v1, &v13, &cf))
    {
      if (DLShouldLog(3))
      {
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLHandlerThreadReadMessage", 3, @"Could not receive message: '%@'", v2, v3, v4, v5, cf);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      v13 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else if (DLShouldLog(4))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLHandlerThreadReadMessage", 4, @"ReadMessage called in HandlerThread, but StreamHandler is NULL", v6, v7, v8, v9, v11);
  }

  return v13;
}

uint64_t _DLCreateDeviceLinkConnectionForDevice(int a1, void (**a2)(uint64_t a1), uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, int a7, CFTypeRef *a8)
{
  if (!a2)
  {
    v15 = @"_DLCreateDeviceLinkConnectionForDevice: Callbacks parameter is NULL";
LABEL_7:
    v16 = 4294967293;
    goto LABEL_8;
  }

  if (!a5)
  {
    v15 = @"_DLCreateDeviceLinkConnectionForDevice: Connection [out] parameter is NULL";
    goto LABEL_7;
  }

  v13 = _DLCreateDeviceLinkConnection(@"Device", a1, a2, a3, a4);
  if (v13)
  {
    *(v13 + 48) = a2;
    *(v13 + 24) = a6;
    *(v13 + 32) = -1;
    *(v13 + 36) = a7;
    *a5 = v13;
    return 0;
  }

  v15 = @"_DLCreateDeviceLinkConnectionForDevice: Could not create a connection";
  v16 = 0xFFFFFFFFLL;
LABEL_8:

  return DLSetStatus(v16, a8, v15);
}

uint64_t _DLCreateDeviceLinkConnection(const void *a1, int a2, void (**a3)(uint64_t a1), uint64_t a4, uint64_t a5)
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SaveCallHistory", @"com.apple.DeviceLink", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat == 1 && AppBooleanValue == 1)
  {
    if (DLShouldLog(4))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCreateDeviceLinkConnection", 4, @"Turning on call history for DeviceLink", v12, v13, v14, v15, v29);
    }

    sSaveCallHistory = 1;
    sCallHistoryMutex = DLCreateMutex();
  }

  if (!*a3)
  {
    *a3 = genericIncomingConnectionCallback;
  }

  if (!a3[1])
  {
    a3[1] = genericConnectionMadeCallback;
  }

  if (!a3[2])
  {
    a3[2] = genericConnectionFailedCallback;
  }

  if (!a3[3])
  {
    a3[3] = genericAcceptFailedCallback;
  }

  if (!a3[4])
  {
    a3[4] = genericDisconnectCallback;
  }

  if (!a3[5])
  {
    a3[5] = genericConnectionLostCallback;
  }

  if (!a3[6])
  {
    a3[6] = genericProcessMessageCallback;
  }

  if (!a3[7])
  {
    a3[7] = genericPingCallback;
  }

  if (!a3[8])
  {
    a3[8] = genericRequestFileCallback;
  }

  if (!a3[9])
  {
    a3[9] = genericSendFileCallback;
  }

  v16 = malloc_type_calloc(0xD8uLL, 1uLL, 0x10F004014C8966FuLL);
  v17 = v16;
  v16[5] = a3;
  *v16 = 0;
  v16[1] = a4;
  v16[2] = a5;
  *(v16 + 146) = 1;
  if (a2)
  {
    v16[14] = 0;
    v18 = CFRetain(a1);
    *(v17 + 72) = v18;
    v30 = v18;
    v19 = CFStringCreateWithFormat(0, 0, @"%@.%@");
    *(v17 + 80) = DLThreadCreateReceivePort(v19, v17, _DLMainThreadMessagePortCallback);
    *(v17 + 96) = DLThreadCreateSendPort(v19);
    if (v19)
    {
      CFRelease(v19);
    }

    v20 = *(v17 + 80);
    if (!v20 || !*(v17 + 96))
    {
      goto LABEL_37;
    }

    DLThreadAddMessagePortToRunloop(v20);
    *(v17 + 128) = DLCreateCondition();
    *(v17 + 136) = DLCreateMutex();
    *(v17 + 144) = 0;
    if (DLThreadCreateThread(_DLHandlerThreadEntryPoint, v17))
    {
      if (DLShouldLog(3))
      {
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLSetupHandlerThreadAndMessagePorts", 3, @"Could not create a message handler thread", v21, v22, v23, v24, v30);
      }

LABEL_37:
      free(v17);
      return 0;
    }

    DLWait(*(v17 + 128), *(v17 + 136), (v17 + 144));
  }

  else
  {
    context.version = 0;
    memset(&context.retain, 0, 56);
    context.info = v16;
    context.perform = _RunLoopReadSourceCallback;
    v16[12] = 0;
    v16[13] = 0;
    v16[14] = CFRunLoopSourceCreate(0, 0, &context);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, *(v17 + 112), *MEMORY[0x277CBF048]);
  }

  context.version = 0;
  *(v17 + 160) = CFNumberCreate(0, kCFNumberDoubleType, &context);
  valuePtr = 0;
  *(v17 + 168) = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"BufferSize", @"com.apple.DeviceLink", 0);
  if (AppIntegerValue)
  {
    v27 = AppIntegerValue + 1;
  }

  else
  {
    v27 = 262145;
  }

  *(v17 + 184) = v27;
  *(v17 + 176) = malloc_type_malloc(v27, 0x100004077774924uLL);
  return v17;
}

uint64_t _DLCreateDeviceLinkConnectionForComputer(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, int a7, CFTypeRef *a8)
{
  if (!a2)
  {
    v15 = @"_DLCreateDeviceLinkConnectionForComputer: Callbacks parameter is NULL";
LABEL_9:
    v16 = 4294967293;
    goto LABEL_10;
  }

  if (!*(a2 + 88))
  {
    v15 = @"_DLCreateDeviceLinkConnectionForComputer: DeviceReady callback is NULL";
    goto LABEL_9;
  }

  if (!a5)
  {
    v15 = @"_DLCreateDeviceLinkConnectionForComputer: Connection [out] parameter is NULL";
    goto LABEL_9;
  }

  v13 = _DLCreateDeviceLinkConnection(@"Computer", a1, a2, a3, a4);
  if (v13)
  {
    *(v13 + 56) = a2;
    *(v13 + 24) = a6;
    *(v13 + 32) = -1;
    *(v13 + 36) = a7;
    *a5 = v13;
    return 0;
  }

  v15 = @"_DLCreateDeviceLinkConnectionForComputer: Could not create a connection";
  v16 = 0xFFFFFFFFLL;
LABEL_10:

  return DLSetStatus(v16, a8, v15);
}

uint64_t DLCreateDeviceLinkConnectionForDevice(int a1, void (**a2)(uint64_t a1), uint64_t a3, void *a4, CFTypeRef *a5)
{
  if (!a2)
  {
    v10 = @"DLCreateDeviceLinkConnectionForDevice: Callbacks parameter is NULL";
LABEL_7:
    v11 = 4294967293;
    goto LABEL_8;
  }

  if (!a4)
  {
    v10 = @"DLCreateDeviceLinkConnectionForDevice: Connection [out] parameter is NULL";
    goto LABEL_7;
  }

  v8 = _DLCreateDeviceLinkConnection(@"Device", a1, a2, a3, 0);
  if (v8)
  {
    v8[6] = a2;
    v8[3] = 0;
    v8[4] = 0xFFFFFFFFLL;
    *a4 = v8;
    return 0;
  }

  v10 = @"DLCreateDeviceLinkConnectionForDevice: Could not create a connection";
  v11 = 0xFFFFFFFFLL;
LABEL_8:

  return DLSetStatus(v11, a5, v10);
}

uint64_t DLCreateDeviceLinkConnectionForComputer(int a1, uint64_t a2, uint64_t a3, void *a4, CFTypeRef *a5)
{
  if (!a2)
  {
    v10 = @"DLCreateDeviceLinkConnectionForComputer: Callbacks parameter is NULL";
LABEL_9:
    v11 = 4294967293;
    goto LABEL_10;
  }

  if (!*(a2 + 88))
  {
    v10 = @"DLCreateDeviceLinkConnectionForComputer: DeviceReady callback is NULL";
    goto LABEL_9;
  }

  if (!a4)
  {
    v10 = @"DLCreateDeviceLinkConnectionForComputer: Connection [out] parameter is NULL";
    goto LABEL_9;
  }

  v8 = _DLCreateDeviceLinkConnection(@"Computer", a1, a2, a3, 0);
  if (v8)
  {
    v8[7] = a2;
    v8[3] = 0;
    v8[4] = 0xFFFFFFFFLL;
    *a4 = v8;
    return 0;
  }

  v10 = @"DLCreateDeviceLinkConnectionForDevice: Could not create a connection";
  v11 = 0xFFFFFFFFLL;
LABEL_10:

  return DLSetStatus(v11, a5, v10);
}

uint64_t DLDeleteDeviceLinkConnection(uint64_t a1)
{
  *a1 = 5;
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 72) = 0;
  }

  DLDeleteCondition(*(a1 + 128));
  DLDeleteMutex(*(a1 + 136));
  v3 = *(a1 + 152);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 152) = 0;
  }

  v4 = *(a1 + 160);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 160) = 0;
  }

  v5 = *(a1 + 168);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 168) = 0;
  }

  free(*(a1 + 176));
  *(a1 + 176) = 0;
  v12 = *(a1 + 192);
  if (v12)
  {
    fclose(v12);
    *(a1 + 192) = 0;
  }

  v13 = _DLCreateMessageDataV(@"DLMessageDisconnect", 1, v6, v7, v8, v9, v10, v11, @"Connection is being deleted");
  if (sSaveCallHistory == 1)
  {
    _DLCallHistoryAddEntry(@"Exit (Delete Connection)");
  }

  _SendMessage(a1, *(a1 + 104), _DLHandlerThreadMessagePortCallback, 8, v13);
  DLRegenerateUniqueProcessName();
  return 0;
}

uint64_t _DLCheckForDisconnect(_DWORD *a1, _DWORD *a2, void *a3)
{
  CFRunLoopRunInMode(*MEMORY[0x277CBF058], 0.0, 1u);
  if (*a1 != 4)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = -14;
  }

  if (a3)
  {
    *a3 = @"Disconnected";
  }

  return 1;
}

uint64_t DLLockdownCheckin(__CFDictionary *a1)
{
  v17 = 0;
  v2 = secure_lockdown_checkin();
  if (v2)
  {
    v3 = v2;
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLLockdownCheckin", 3, @"Could not check in with lockdown: %d", v4, v5, v6, v7, v3);
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    lockdown_get_securecontext();
    valuePtr = lockdown_get_socket();
    if (DLShouldLog(6))
    {
      v9 = DLGetProcessName();
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLLockdownCheckin", 6, @"%@ launched from lockdown on socket %d with%s SSL", v10, v11, v12, v13, v9);
    }

    CFDictionarySetValue(a1, @"DLInfoStreamTypeKey", @"DLInfoStreamTypeTCP");
    CFDictionarySetValue(a1, @"DLInfoLockdownAccept", *MEMORY[0x277CBED28]);
    v14 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(a1, @"DLInfoSocketKey", v14);
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = CFNumberCreate(0, kCFNumberNSIntegerType, &v17);
    CFDictionarySetValue(a1, @"DLInfoLockdownConnection", v15);
    if (v15)
    {
      CFRelease(v15);
    }

    return 0;
  }
}

uint64_t DLLockdownXPCCheckin(const void *a1, const void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    DLLockdownXPCCheckin_cold_4();
  }

  if (!a2)
  {
    DLLockdownXPCCheckin_cold_3();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v12 = a1;
    _os_log_impl(&dword_259A8F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "lockdown_checkin_xpc, serviceName:%{public}s", buf, 0xCu);
  }

  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  dispatch_retain(v4);
  CFRetain(a2);
  v5 = lockdown_checkin_xpc();
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      DLLockdownXPCCheckin_cold_1(v6);
    }

    dispatch_release(v4);
    dispatch_release(v4);
    CFRelease(a2);
LABEL_12:
    result = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  v7 = dispatch_time(0, 600000000000);
  v8 = dispatch_group_wait(v4, v7);
  dispatch_release(v4);
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      DLLockdownXPCCheckin_cold_2();
    }

    goto LABEL_12;
  }

  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (result)
  {
    *buf = 138412290;
    v12 = a2;
    _os_log_impl(&dword_259A8F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "lockdown_checkin_xpc succeeded: %@", buf, 0xCu);
    result = 0;
  }

LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __DLLockdownXPCCheckin_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = a3;
    _os_log_impl(&dword_259A8F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "lockdown_checkin_xpc connection handler called: %@", buf, 0xCu);
  }

  if ((atomic_exchange(DLLockdownXPCCheckin_sCheckInDone, 1u) & 1) == 0)
  {
    securecontext = lockdown_get_securecontext();
    socket = lockdown_get_socket();
    valuePtr = socket;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = DLGetProcessName();
      v8 = "";
      *buf = 138543874;
      v15 = v7;
      if (!securecontext)
      {
        v8 = "out";
      }

      v16 = 1024;
      v17 = socket;
      v18 = 2080;
      v19 = v8;
      _os_log_impl(&dword_259A8F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ launched from lockdown on socket %d with%s SSL", buf, 0x1Cu);
    }

    CFDictionarySetValue(*(a1 + 32), @"DLInfoStreamTypeKey", @"DLInfoStreamTypeTCP");
    CFDictionarySetValue(*(a1 + 32), @"DLInfoLockdownAccept", *MEMORY[0x277CBED28]);
    v9 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(*(a1 + 32), @"DLInfoSocketKey", v9);
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = CFNumberCreate(0, kCFNumberNSIntegerType, &v13);
    CFDictionarySetValue(*(a1 + 32), @"DLInfoLockdownConnection", v10);
    if (v10)
    {
      CFRelease(v10);
    }

    CFRelease(*(a1 + 32));
    dispatch_group_leave(*(a1 + 40));
    dispatch_release(*(a1 + 40));
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t DLWaitForConnection(uint64_t a1, CFTypeRef cf, CFTypeRef *a3)
{
  if (*a1 == 1)
  {
    if (DLShouldLog(4))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLWaitForConnection", 4, @"DLWaitForConnection called, but already waiting for a connection", v3, v4, v5, v6, v23);
    }

    return 0;
  }

  *a1 = 1;
  v9 = *(a1 + 120);
  if (cf && v9 != cf)
  {
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 120) = 0;
    }

    v9 = CFRetain(cf);
    *(a1 + 120) = v9;
    goto LABEL_10;
  }

  if (v9)
  {
LABEL_10:
    if (CFDictionaryContainsKey(v9, @"DLInfoSessionNumberKey"))
    {
      Value = CFDictionaryGetValue(*(a1 + 120), @"DLInfoSessionNumberKey");
      CFNumberGetValue(Value, kCFNumberSInt32Type, (a1 + 4));
    }

    else
    {
      sConnectionSerial = (sConnectionSerial & 0xFFFFFF00) + 256;
      *(a1 + 4) = sConnectionSerial;
    }

    if (DLShouldLog(7))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLWaitForConnection", 7, @"Next expected session number: %d, connection %p", v11, v12, v13, v14, BYTE1(*(a1 + 4)));
    }

    v15 = CFDictionaryContainsKey(*(a1 + 120), @"DLInfoAllowSleepKey");
    v16 = DLShouldLog(6);
    if (v15)
    {
      if (v16)
      {
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLWaitForConnection", 6, @"Allowing sleep during connections", v17, v18, v19, v20, v23);
      }

      *(a1 + 146) = 0;
    }

    else if (v16)
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLWaitForConnection", 6, @"Preventing sleep during connections", v17, v18, v19, v20, v23);
    }

    *(a1 + 145) = 1;
    if (sSaveCallHistory == 1)
    {
      _DLCallHistoryAddEntry(@"Accept");
    }

    v21 = *(a1 + 104);
    if (v21)
    {
      DLThreadSendMessage(v21, 1, 0);
    }

    else
    {
      _DLHandlerThreadMessagePortCallback(0, 1, 0, a1, v17, v18, v19, v20);
    }

    return 0;
  }

  return DLSetStatus(4294967293, a3, @"DLWaitForConnection: info parameter is NULL and no info previously set");
}

uint64_t DLConnect(uint64_t a1, CFTypeRef cf, CFTypeRef *a3)
{
  *a1 = 2;
  v4 = *(a1 + 120);
  if (cf && v4 != cf)
  {
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 120) = cf;
    CFRetain(cf);
    v4 = *(a1 + 120);
    goto LABEL_7;
  }

  if (v4)
  {
LABEL_7:
    if (CFDictionaryContainsKey(v4, @"DLInfoSessionNumberKey"))
    {
      Value = CFDictionaryGetValue(*(a1 + 120), @"DLInfoSessionNumberKey");
      CFNumberGetValue(Value, kCFNumberSInt32Type, (a1 + 4));
    }

    else
    {
      sConnectionSerial = (sConnectionSerial & 0xFFFFFF00) + 256;
      *(a1 + 4) = sConnectionSerial;
    }

    if (DLShouldLog(7))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLConnect", 7, @"Next expected session number: %d, connection: %p", v7, v8, v9, v10, BYTE1(*(a1 + 4)));
    }

    v11 = CFDictionaryContainsKey(*(a1 + 120), @"DLInfoAllowSleepKey");
    v12 = DLShouldLog(5);
    if (v11)
    {
      if (v12)
      {
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLConnect", 5, @"Allowing sleep during connections", v13, v14, v15, v16, v23);
      }

      *(a1 + 146) = 0;
    }

    else if (v12)
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLConnect", 5, @"Preventing sleep during connections", v13, v14, v15, v16, v23);
    }

    *(a1 + 145) = 1;
    if (sSaveCallHistory == 1)
    {
      _DLCallHistoryAddEntry(@"Connect");
    }

    if (DLShouldLog(6))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLConnect", 6, @"Sending connect message to handler thread", v17, v18, v19, v20, v23);
    }

    v21 = *(a1 + 104);
    if (v21)
    {
      DLThreadSendMessage(v21, 3, 0);
    }

    else
    {
      _DLHandlerThreadMessagePortCallback(0, 3, 0, a1, v17, v18, v19, v20);
    }

    return 0;
  }

  return DLSetStatus(4294967293, a3, @"DLConnect: info parameter is NULL and no info previously set");
}

uint64_t DLWaitForMessage(uint64_t a1)
{
  if (sSaveCallHistory == 1)
  {
    _DLCallHistoryAddEntry(@"WaitForMessage");
  }

  _DLRequestRead(a1);
  return 0;
}

uint64_t DLDeviceReady(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 48))
  {
    _DLRequestWrite(a1, @"DLMessageDeviceReady", 0, a4, a5, a6, a7, a8, v11);
    _DLRequestRead(a1);
    *a1 = 3;
    return 0;
  }

  else
  {

    return DLSetStatus(4294967292, a2, @"DLDeviceReady: Computer cannot call this method");
  }
}

uint64_t DLDisconnect(uint64_t a1, __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = _DLCreateMessageDataV(@"DLMessageDisconnect", 1, a3, a4, a5, a6, a7, a8, a2);
  if (sSaveCallHistory == 1)
  {
    _DLCallHistoryAddEntry(@"Disconnect");
  }

  _SendMessage(a1, *(a1 + 104), _DLHandlerThreadMessagePortCallback, 7, v9);
  *a1 = 4;
  return 0;
}

uint64_t DLProcessMessage(uint64_t a1, __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _DLRequestWrite(a1, @"DLMessageProcessMessage", 1, a4, a5, a6, a7, a8, a2);
  _DLRequestRead(a1);
  return 0;
}

uint64_t DLRequestFile(uint64_t a1, __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return 4294967293;
  }

  v9 = _DLCreateMessageDataV(@"DLRequestFile", 3, a3, a4, a5, a6, a7, a8, a2);
  if (sSaveCallHistory == 1)
  {
    _DLCallHistoryAddEntry(@"Request File");
  }

  _SendMessage(a1, *(a1 + 104), _DLHandlerThreadMessagePortCallback, 10, v9);
  _DLRequestRead(a1);
  return 0;
}

uint64_t DLSendFile(uint64_t a1, __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return 4294967293;
  }

  v9 = _DLCreateMessageDataV(@"DLSendFile", 2, a3, a4, a5, a6, a7, a8, a2);
  if (sSaveCallHistory == 1)
  {
    _DLCallHistoryAddEntry(@"Send File");
  }

  _SendMessage(a1, *(a1 + 104), _DLHandlerThreadMessagePortCallback, 11, v9);
  return 0;
}

uint64_t DLHandleSentFilePieceEncrypted(uint64_t a1, const __CFData *a2, CFDictionaryRef theDict, const __CFData *a4, CFStringRef *a5)
{
  if (!a2)
  {
    return 0;
  }

  v69 = 0;
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"DLFileStatusKey");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  }

  v11 = CFDictionaryGetValue(theDict, @"DLFileDest");
  v12 = CFDictionaryGetValue(theDict, @"DLFileOffsetKey");
  v67 = 0;
  if (v12)
  {
    CFNumberGetValue(v12, kCFNumberLongLongType, &v67);
  }

  if (!a4 || *(a1 + 200))
  {
    goto LABEL_8;
  }

  if (v67)
  {
    if (!DLShouldLog(3))
    {
      goto LABEL_33;
    }

    v34 = @"Encrypted bytes were received but we don't have a key to decrypt them with. Refusing to save the bytes";
    goto LABEL_32;
  }

  dataOutMoved = 0;
  v37 = createFileKeyFromAuthBlob(a2, a4, &dataOutMoved, &v69);
  if (!v37)
  {
    if (!DLShouldLog(3))
    {
LABEL_33:
      if (a5)
      {
        *a5 = @"CouldNotDecrypt";
      }

      return 0xFFFFFFFFLL;
    }

    v34 = @"Could not decrypt the file encryption key. Refusing to decode this file";
LABEL_32:
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLHandleSentFilePieceEncrypted", 3, v34, v30, v31, v32, v33, v65);
    goto LABEL_33;
  }

  v38 = v37;
  BytePtr = CFDataGetBytePtr(v37);
  v40 = CFDataGetBytePtr(dataOutMoved);
  v41 = CCCryptorCreate(1u, 0, 1u, BytePtr, 0x20uLL, v40, (a1 + 200));
  if (v41)
  {
    v42 = v41;
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLHandleSentFilePieceEncrypted", 3, @"Could not set up a decryptor: %d", v43, v44, v45, v46, v42);
    }

    if (a5)
    {
      *a5 = @"CouldNotDecrypt";
    }

    if (dataOutMoved)
    {
      CFRelease(dataOutMoved);
    }

    return 0xFFFFFFFFLL;
  }

  CFRelease(v38);
LABEL_8:
  if (!*(a1 + 192))
  {
    if (v11)
    {
      v13 = DLCreateCStringFromCFString(v11);
      if (v13)
      {
        v14 = v13;
        v15 = fopen(v13, "w");
        *(a1 + 192) = v15;
        if (!v15)
        {
          if (a5)
          {
            *a5 = CFStringCreateWithFormat(0, 0, @"Could not open the file at %s for writing", v14);
          }

          free(v14);
          return 0xFFFFFFFFLL;
        }

        free(v14);
      }
    }
  }

  Length = CFDataGetLength(a2);
  v17 = Length;
  if (!a4)
  {
    v20 = CFDataGetBytePtr(a2);
    goto LABEL_22;
  }

  if (!*(a1 + 200))
  {
    if (!DLShouldLog(3))
    {
      goto LABEL_33;
    }

    v34 = @"We don't have a decryption key to decrypt these bytes. Refusing to save to disk";
    goto LABEL_32;
  }

  v18 = Length + 16;
  v19 = malloc_type_calloc(Length + 16, 1uLL, 0x100004077774924uLL);
  if (!v19)
  {
    if (a5)
    {
      v35 = CFDataGetLength(a2);
      v36 = CFStringCreateWithFormat(0, 0, @"Could not allocate a buffer for %ld bytes of data: out of memory.", v35);
      result = 0;
      *a5 = v36;
      return result;
    }

    return 0;
  }

  v20 = v19;
  dataOutMoved = 0;
  v21 = *(a1 + 200);
  v22 = CFDataGetBytePtr(a2);
  v23 = CCCryptorUpdate(v21, &v22[v69], v17 - v69, v20, v17 + 16, &dataOutMoved);
  if (v23)
  {
    v24 = v23;
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLHandleSentFilePieceEncrypted", 3, @"Could not decrypt file bytes: %d", v25, v26, v27, v28, v24);
    }

LABEL_19:
    free(v20);
    goto LABEL_33;
  }

  if (DLShouldLog(6))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLHandleSentFilePieceEncrypted", 6, @"Decrypted %d bytes", v47, v48, v49, v50, dataOutMoved);
  }

  v17 = dataOutMoved;
  if (valuePtr == 2)
  {
    if (DLShouldLog(6))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLHandleSentFilePieceEncrypted", 6, @"Finalizing bytes and shutting down the decryptor", v51, v52, v53, v54, v65);
    }

    v55 = CCCryptorFinal(*(a1 + 200), &v20[dataOutMoved], v18 - dataOutMoved, &dataOutMoved);
    if (v55)
    {
      v56 = v55;
      if (DLShouldLog(3))
      {
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLHandleSentFilePieceEncrypted", 3, @"Could not finalize file bytes: %d", v57, v58, v59, v60, v56);
      }

      goto LABEL_19;
    }

    if (DLShouldLog(6))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLHandleSentFilePieceEncrypted", 6, @"Finalized %d bytes", v61, v62, v63, v64, dataOutMoved);
    }

    v17 += dataOutMoved;
    CCCryptorRelease(*(a1 + 200));
    *(a1 + 200) = 0;
  }

LABEL_22:
  fwrite(v20, v17, 1uLL, *(a1 + 192));
  if (v20 != CFDataGetBytePtr(a2))
  {
    free(v20);
  }

  if ((valuePtr & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  fclose(*(a1 + 192));
  *(a1 + 192) = 0;
  result = *(a1 + 200);
  if (result)
  {
    CCCryptorRelease(result);
    result = 0;
    *(a1 + 200) = 0;
  }

  return result;
}

uint64_t DLKillConnection(uint64_t a1)
{
  cf = 0;
  if (*a1 == 1)
  {
    if (DLShouldLog(5))
    {
      v5 = @"Not killing waiting connection, because that would be rude";
      v6 = 5;
LABEL_19:
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLKillConnection", v6, v5, v1, v2, v3, v4, v15);
    }
  }

  else
  {
    *(a1 + 4) = 0;
    if (DLShouldLog(7))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLKillConnection", 7, @"Killing Connection. Next expected session number: %d, Connection: %p", v8, v9, v10, v11, BYTE1(*(a1 + 4)));
    }

    v12 = *(a1 + 64);
    if (v12)
    {
      if (StreamHandlerClose(v12, &cf) && DLShouldLog(3))
      {
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLKillConnection", 3, @"Closing the stream handler directly in DLKillConnection: '%@'", v8, v9, v10, v11, cf);
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    if (sSaveCallHistory == 1)
    {
      _DLCallHistoryAddEntry(@"Kill");
    }

    v13 = *(a1 + 104);
    if (v13)
    {
      DLThreadSendMessage(v13, 9, 0);
    }

    else
    {
      _DLHandlerThreadMessagePortCallback(0, 9, 0, a1, v8, v9, v10, v11);
    }

    if (DLShouldLog(7))
    {
      v15 = *(a1 + 4) >> 8;
      v5 = @"After _SendMessage: %d, Connection: %p";
      v6 = 7;
      goto LABEL_19;
    }
  }

  return 0;
}

uint64_t _DLGetStatusResponseFromData(CFDataRef xmlData, void *a2, CFStringRef *a3)
{
  valuePtr = 0;
  v5 = CFPropertyListCreateFromXMLData(0, xmlData, 0, 0);
  if (v5)
  {
    v6 = v5;
    if (CFArrayGetCount(v5) == 4)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
      if (CFStringCompare(ValueAtIndex, @"DLMessageStatusResponse", 0) == kCFCompareEqualTo)
      {
        v10 = CFArrayGetValueAtIndex(v6, 1);
        CFNumberGetValue(v10, kCFNumberIntType, &valuePtr);
        if (a3)
        {
          v11 = CFArrayGetValueAtIndex(v6, 2);
          *a3 = v11;
          CFRetain(v11);
        }

        if (a2)
        {
          v12 = CFArrayGetValueAtIndex(v6, 3);
          *a2 = v12;
          CFRetain(v12);
        }

        goto LABEL_12;
      }

      valuePtr = -1;
      if (a3)
      {
        v8 = CFStringCreateWithFormat(0, 0, @"Unexpected response message: %@", ValueAtIndex);
LABEL_11:
        *a3 = v8;
      }
    }

    else
    {
      valuePtr = -1;
      if (a3)
      {
        Count = CFArrayGetCount(v6);
        v8 = CFStringCreateWithFormat(0, 0, @"Too few components in status response: %ld", Count);
        goto LABEL_11;
      }
    }

LABEL_12:
    CFRelease(v6);
    return valuePtr;
  }

  if (a3)
  {
    *a3 = @"Error deserializing status response data";
  }

  return 0xFFFFFFFFLL;
}

uint64_t _DLProcessSyncMessageWithStatusResponseV(uint64_t a1, void *a2, CFStringRef *a3, SInt32 a4, const void *a5, int a6, __CFString **a7)
{
  v15 = _DLCreateMessageDataWithArgs(a5, a6, a7);
  v16 = *(a1 + 104);
  if (v16)
  {
    v17 = DLThreadSendSyncMessage(v16, a4, v15);
  }

  else
  {
    v17 = _DLHandlerThreadMessagePortCallback(0, a4, v15, a1, v11, v12, v13, v14);
    if (v15)
    {
      CFRelease(v15);
    }
  }

  if (v17)
  {
    v18 = _DLGetStatusResponseFromData(v17, a2, a3);
    CFRelease(v17);
    return v18;
  }

  else
  {
    if (a3)
    {
      *a3 = @"Error receiving status response";
    }

    return 0xFFFFFFFFLL;
  }
}

CFTypeRef _DLCreateStatusResponseData(int a1)
{
  valuePtr = a1;
  v1 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v8 = _DLCreateMessageDataV(@"DLMessageStatusResponse", 3, v2, v3, v4, v5, v6, v7, v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v8;
}

uint64_t _DLOperationProgressContextInit(uint64_t result, uint64_t a2, CFNumberRef number, const __CFNumber *a4, const __CFNumber *a5)
{
  *(result + 48) = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  *result = a2;
  if (a5 && a4 && number)
  {
    if (*(*(a2 + 40) + 80))
    {
      v7 = result;
      CFNumberGetValue(number, kCFNumberDoubleType, (result + 16));
      CFNumberGetValue(a4, kCFNumberDoubleType, v7 + 24);
      result = CFNumberGetValue(a5, kCFNumberLongLongType, v7 + 40);
      v7[48] = 1;
    }
  }

  return result;
}

uint64_t _DLOperationProgressContextUpdate(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    if (*(result + 48))
    {
      v3 = *(result + 40);
      v4 = *(result + 32) + a2;
      if (v4 >= v3)
      {
        v4 = *(result + 40);
      }

      *(result + 32) = v4;
      valuePtr = *(result + 16) + v4 / v3 * (*(result + 24) - *(result + 16));
      v5 = *(*result + 160);
      if (v5)
      {
        CFRelease(v5);
        *(*v2 + 160) = 0;
      }

      v6 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
      v7 = *v2;
      *(v7 + 160) = v6;
      return (*(*(v7 + 40) + 80))();
    }
  }

  return result;
}

CFMutableDictionaryRef _DLBulkOperationContextInit(uint64_t a1, uint64_t a2, uint64_t a3, CFNumberRef number, const __CFNumber *a5, const __CFNumber *a6)
{
  *a1 = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  _DLOperationProgressContextInit(a1 + 16, a2, number, a5, a6);
  result = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a1 + 88) = result;
  return result;
}

void _DLBulkOperationContextDealloc(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 80) = 0;
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 88) = 0;
  }
}

void _DLBulkOperationContextSetStatus(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a1 + 72);
    if (!v4 || v4 == -13)
    {
      *(a1 + 72) = a2;
      v7 = *(a1 + 80);
      if (v7)
      {
        CFRelease(v7);
      }

      *(a1 + 80) = a3;
    }
  }
}

__CFDictionary *_DLBulkOperationContextCreateResult(int a1, const void *a2)
{
  valuePtr = a1;
  if (!a1)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, @"DLFileErrorCode", v4);
  if (v4)
  {
    CFRelease(v4);
  }

  if (a2)
  {
    CFDictionarySetValue(Mutable, @"DLFileErrorString", a2);
  }

  return Mutable;
}

void _DLBulkOperationContextAddResult(uint64_t a1, const void *a2, const void *a3)
{
  CFDictionarySetValue(*(a1 + 88), a2, a3);
  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = v4 == -13;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    *(a1 + 72) = -13;
    v6 = *(a1 + 80);
    if (v6)
    {
      CFRelease(v6);
    }

    *(a1 + 80) = @"Multi status";
  }
}

void _DLBulkOperationContextMergeResults(uint64_t a1, int a2, uint64_t a3, CFDictionaryRef theDict)
{
  if (theDict)
  {
    if (CFDictionaryGetCount(theDict))
    {
      CFDictionaryApplyFunction(theDict, _DLBulkOperationContextMergeResultsCallback, a1);
      v8 = *(a1 + 72);
      if (!v8 || v8 == -13)
      {
        *(a1 + 72) = -13;
        v9 = *(a1 + 80);
        if (v9)
        {
          CFRelease(v9);
        }

        *(a1 + 80) = @"Multi status";
      }
    }
  }

  _DLBulkOperationContextSetStatus(a1, a2, a3);
}

uint64_t _DLBulkOperationContextUpdate(uint64_t result, const void *a2, const void *a3, uint64_t a4)
{
  v4 = *(result + 72);
  if (v4)
  {
    v5 = v4 == -13;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v7 = result;
    if (a3)
    {
      _DLBulkOperationContextAddResult(result, a2, a3);
    }

    v8 = *v7;
    result = CFRunLoopRunInMode(*MEMORY[0x277CBF058], 0.0, 1u);
    if (*v8 == 4)
    {
      *(v7 + 72) = -14;
      *(v7 + 80) = @"Disconnected";
    }

    else
    {
      v9 = *(v7 + 72);
      if (!v9 || v9 == -13)
      {

        return _DLOperationProgressContextUpdate(v7 + 16, a4);
      }
    }
  }

  return result;
}

CFTypeRef _DLCreateBulkOperationContextStatusResponseData(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  return _DLCreateStatusResponseData(*(a1 + 72));
}

void _DLBulkOperationContextSendStatusResponse(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  valuePtr = *(a1 + 72);
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  _DLRequestWrite(v1, @"DLMessageStatusResponse", 3, v5, v6, v7, v8, v9, v4);
  _DLRequestRead(v1);
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t _DLSingleFromMultiError(uint64_t result, const __CFString *a2, CFDictionaryRef theDict, __CFString **a4)
{
  keys[1] = *MEMORY[0x277D85DE8];
  valuePtr = result;
  if (result == -13)
  {
    if (!theDict || CFDictionaryGetCount(theDict) != 1)
    {
      if (a4)
      {
        v7 = @"Unexpected bulk operation result count";
        goto LABEL_9;
      }

LABEL_10:
      result = 0xFFFFFFFFLL;
      goto LABEL_11;
    }

    values = 0;
    keys[0] = 0;
    CFDictionaryGetKeysAndValues(theDict, keys, &values);
    if (CFStringCompare(keys[0], a2, 0))
    {
      if (a4)
      {
        v7 = @"Unexpected bulk operation result key";
LABEL_9:
        *a4 = v7;
        goto LABEL_10;
      }

      goto LABEL_10;
    }

    v9 = values;
    Value = CFDictionaryGetValue(values, @"DLFileErrorCode");
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    if (a4)
    {
      v11 = CFDictionaryGetValue(v9, @"DLFileErrorString");
      *a4 = v11;
      if (v11)
      {
        CFRetain(v11);
      }
    }

    result = valuePtr;
  }

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

CFTypeRef DLSetProgress(uint64_t a1, CFTypeRef cf, const void *a3)
{
  v6 = *(a1 + 160);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 160) = 0;
  }

  *(a1 + 160) = CFRetain(cf);
  v7 = *(a1 + 168);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 168) = 0;
  }

  if (a3)
  {
    result = CFRetain(a3);
  }

  else
  {
    result = 0;
  }

  *(a1 + 168) = result;
  return result;
}

uint64_t DLCreateDirectory(uint64_t a1, __CFString *a2, uint64_t a3, CFStringRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v17 = *(a1 + 160);
  v10 = _DLProcessSyncMessageWithStatusResponse(a1, 0, a4, 13, @"DLMessageCreateDirectory", 3, a7, a8, a2);
  if (DLShouldLog(6))
  {
    if (a4)
    {
      v15 = *a4;
    }

    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLCreateDirectory", 6, @"CreateDirectory(%@): %d %@", v11, v12, v13, v14, v9);
  }

  return v10;
}

uint64_t DLContentsOfDirectory(uint64_t a1, __CFString *a2, uint64_t a3, void *a4, CFStringRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v17 = *(a1 + 160);
  v10 = _DLProcessSyncMessageWithStatusResponse(a1, a4, a5, 13, @"DLContentsOfDirectory", 3, a7, a8, a2);
  if (DLShouldLog(6))
  {
    if (a5)
    {
      v15 = *a5;
    }

    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLContentsOfDirectory", 6, @"ContentsOfDirectory(%@): %d %@", v11, v12, v13, v14, v9);
  }

  return v10;
}

uint64_t DLCopyItem(uint64_t a1, __CFString *a2, uint64_t a3, uint64_t a4, CFStringRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v17 = *(a1 + 160);
  v18 = *(a1 + 168);
  v10 = _DLProcessSyncMessageWithStatusResponse(a1, 0, a5, 13, @"DLMessageCopyItem", 5, a7, a8, a2);
  if (DLShouldLog(6))
  {
    if (a5)
    {
      v15 = *a5;
    }

    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLCopyItem", 6, @"CopyItem(%@, %@): %d %@", v11, v12, v13, v14, v9);
  }

  return v10;
}

uint64_t DLMoveItem(uint64_t a1, const __CFString *a2, void *a3, uint64_t a4, CFStringRef *a5)
{
  keys[1] = *MEMORY[0x277D85DE8];
  values = a3;
  keys[0] = a2;
  v9 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  cf = 0;
  v13 = DLMoveItems(a1, v9, a4, &cf, a5, v10, v11, v12);
  v14 = _DLSingleFromMultiError(v13, a2, cf, a5);
  if (v9)
  {
    CFRelease(v9);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t DLMoveItems(uint64_t a1, __CFString *a2, uint64_t a3, void *a4, CFStringRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 32) >= 200)
  {
    v10 = @"DLMessageMoveItems";
  }

  else
  {
    v10 = @"DLMessageMoveFiles";
  }

  v19 = *(a1 + 160);
  v11 = _DLProcessSyncMessageWithStatusResponse(a1, a4, a5, 13, v10, 3, a7, a8, a2);
  if (DLShouldLog(6))
  {
    Count = CFDictionaryGetCount(a2);
    if (a5)
    {
      v17 = *a5;
    }

    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLMoveItems", 6, @"MoveItems(%d): %d %@", v13, v14, v15, v16, Count);
  }

  return v11;
}

uint64_t _DLRemoveDirectory(uint64_t a1, __CFString *a2, uint64_t a3, CFStringRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v17 = *(a1 + 160);
  v10 = _DLProcessSyncMessageWithStatusResponse(a1, 0, a4, 13, @"DLMessageRemoveDirectory", 3, a7, a8, a2);
  if (DLShouldLog(6))
  {
    if (a4)
    {
      v15 = *a4;
    }

    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLRemoveDirectory", 6, @"RemoveDirectory(%@): %d %@", v11, v12, v13, v14, v9);
  }

  return v10;
}

void _DLRemoveItemUsingOldProtocolCallback(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  v4 = DLStringByAppendingPathComponent(*(a3 + 8), a1);
  DLRemoveItem(*a3, v4, 0, 0);
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t DLRemoveItem(uint64_t a1, const __CFString *a2, uint64_t a3, CFStringRef *a4)
{
  values[1] = *MEMORY[0x277D85DE8];
  values[0] = a2;
  v8 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
  cf = 0;
  v12 = DLRemoveItems(a1, v8, a3, &cf, a4, v9, v10, v11);
  v13 = _DLSingleFromMultiError(v12, a2, cf, a4);
  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void _DLRemoveItemsUsingOldProtocolCallback(__CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theDict = 0;
  if (!DLContentsOfDirectory(*a3, a1, 0, &theDict, 0, a6, a7, a8))
  {
    context[0] = *a3;
    context[1] = a1;
    CFDictionaryApplyFunction(theDict, _DLRemoveItemUsingOldProtocolCallback, context);
    if (!_DLRemoveDirectory(*a3, a1, 0, 0, v10, v11, v12, v13))
    {
      CFDictionaryRemoveValue(*(a3 + 8), a1);
    }
  }

  if (theDict)
  {
    CFRelease(theDict);
  }
}

uint64_t _DLRemoveItemsUsingOldProtocol(uint64_t a1, __CFString *a2, uint64_t a3, CFDictionaryRef *a4, CFStringRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MutableCopy = 0;
  theDict = 0;
  v19 = *(a1 + 160);
  context = a1;
  v11 = _DLProcessSyncMessageWithStatusResponse(a1, &theDict, a5, 13, @"DLMessageRemoveFiles", 3, a7, a8, a2);
  if (DLShouldLog(6))
  {
    Count = CFArrayGetCount(a2);
    if (a5)
    {
      v17 = *a5;
    }

    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLRemoveItemsUsingOldProtocol", 6, @"RemoveFiles(%d): %d %@", v13, v14, v15, v16, Count);
  }

  if (v11 == -13)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
    CFDictionaryApplyFunction(theDict, _DLRemoveItemsUsingOldProtocolCallback, &context);
    if (CFDictionaryGetCount(MutableCopy))
    {
      if (a4)
      {
        *a4 = MutableCopy;
        v11 = 4294967283;
        goto LABEL_16;
      }

      v11 = 4294967283;
    }

    else if (a5 && *a5)
    {
      CFRelease(*a5);
      v11 = 0;
      *a5 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
    MutableCopy = 0;
  }

LABEL_16:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v11;
}

uint64_t DLRemoveItems(uint64_t a1, __CFString *a2, uint64_t a3, CFDictionaryRef *a4, CFStringRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 32) < 200)
  {
    v10 = _DLRemoveItemsUsingOldProtocol(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v19 = *(a1 + 160);
    v10 = _DLProcessSyncMessageWithStatusResponse(a1, a4, a5, 13, @"DLMessageRemoveItems", 3, a7, a8, a2);
  }

  v11 = v10;
  if (DLShouldLog(6))
  {
    Count = CFArrayGetCount(a2);
    if (a5)
    {
      v17 = *a5;
    }

    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLRemoveItems", 6, @"RemoveItems(%d): %d %@", v13, v14, v15, v16, Count);
  }

  return v11;
}

BOOL _DLBulkOperationSendChunk(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = _DLSendBytesAndDisconnectOnError(*a1, a2, a3);
  _DLBulkOperationContextSetStatus(a1, v4, @"Error sending chunk");
  v5 = *(a1 + 72);
  return !v5 || v5 == -13;
}

uint64_t _DLSendBytesAndDisconnectOnError(uint64_t a1, uint64_t a2, unsigned int a3)
{
  cf = 0;
  v4 = *(a1 + 64);
  v18 = 0;
  v5 = StreamHandlerSend(v4, a2, a3, &v18, &cf);
  if (v5)
  {
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLSendBytesAndDisconnectOnError", 3, @"Could not send data: '%@'", v6, v7, v8, v9, cf);
    }

    CFRelease(cf);
    _DLCleanupStreamHandler(a1);
    v14 = *(a1 + 96);
    v15 = sHandlerThreadConnectionSessionNumber | 0xCu;
    if (v14)
    {
      DLThreadSendMessage(v14, v15, 0);
    }

    else
    {
      _DLMainThreadMessagePortCallback(0, v15, 0, a1, v10, v11, v12, v13);
    }
  }

  if (v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

BOOL _DLBulkOperationSendFinalChunk(uint64_t a1, char a2, __CFString *a3)
{
  if (a3)
  {
    v5 = DLCreateDataFromString(a3);
  }

  else
  {
    v5 = CFDataCreate(0, 0, 0);
  }

  v6 = v5;
  Length = CFDataGetLength(v5);
  v8 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  *v8 = -a2;
  v11.location = 0;
  v11.length = Length;
  CFDataGetBytes(v6, v11, v8 + 1);
  v9 = _DLBulkOperationSendChunk(a1, v8, Length + 1);
  if (v6)
  {
    CFRelease(v6);
  }

  free(v8);
  return v9;
}

uint64_t _DLSendFileForBulkOperation(uint64_t a1, uint64_t a2, CFStringRef *a3)
{
  v6 = *a1;
  v7 = *(*a1 + 176);
  v8 = *(*a1 + 184);
  v9 = _DLGetDeviceIOCallbacks(*(a1 + 8));
  fcntl(a2, 48, 1);
  v10 = v8 - 1;
  v11 = *MEMORY[0x277CBF058];
  while (1)
  {
    while (1)
    {
      v12 = (v9[3])(v9[5], a2, v7 + 1, v10);
      if ((v12 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (*__error() != 4)
      {
        v15 = DLStatusFromOSStatus(-1, a3);
        if (a3)
        {
LABEL_12:
          v16 = *a3;
          goto LABEL_13;
        }

LABEL_10:
        v16 = 0;
LABEL_13:
        _DLBulkOperationSendFinalChunk(a1, v15, v16);
        v14 = *(a1 + 72);
        goto LABEL_16;
      }
    }

    v13 = v12;
    if (!v12)
    {
      v15 = 0;
      if (a3)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    CFRunLoopRunInMode(v11, 0.0, 1u);
    if (*v6 == 4)
    {
      v15 = 0;
      v14 = -14;
      *(a1 + 72) = -14;
      *(a1 + 80) = @"Disconnected";
      goto LABEL_16;
    }

    *v7 = 12;
    _DLBulkOperationSendChunk(a1, v7, v13 + 1);
    v14 = *(a1 + 72);
    if (v14)
    {
      if (v14 != -13)
      {
        break;
      }
    }

    _DLOperationProgressContextUpdate(a1 + 16, v13);
  }

  v15 = 0;
LABEL_16:
  if (v14 == -13 || v14 == 0)
  {
    return v15;
  }

  else
  {
    return v14;
  }
}

uint64_t (**_DLGetDeviceIOCallbacks(const __CFDictionary *a1))(int, char *, int)
{
  if (!a1)
  {
    return &_DLDefaultDeviceIOCallbacks;
  }

  Value = CFDictionaryGetValue(a1, @"DLDeviceIOCallbacks");
  if (!Value)
  {
    return &_DLDefaultDeviceIOCallbacks;
  }

  valuePtr = 0;
  CFNumberGetValue(Value, kCFNumberLongType, &valuePtr);
  return valuePtr;
}

uint64_t _DLReceiveFileForBulkOperation(uint64_t a1, uint64_t a2, CFStringRef *a3)
{
  v5 = a1;
  v6 = *a1;
  v7 = _DLGetDeviceIOCallbacks(*(a1 + 8));
  fcntl(a2, 48, 1);
  Message = _DLHandlerThreadReadMessage(v6);
  if (Message)
  {
    v9 = Message;
    v10 = 0;
    v31 = v5;
    mode = *MEMORY[0x277CBF058];
    v30 = v6;
    while (1)
    {
      BytePtr = CFDataGetBytePtr(v9);
      Length = CFDataGetLength(v9);
      v13 = Length - 1;
      if (Length < 1)
      {
        break;
      }

      v14 = *BytePtr;
      if (v14 != 12)
      {
        if (!v10)
        {
          v10 = -v14;
          v25 = CFDataCreate(0, BytePtr + 1, v13);
          v26 = v25;
          if (a3)
          {
            *a3 = DLCreateStringFromData(v25);
          }

          if (v26)
          {
            CFRelease(v26);
          }
        }

        goto LABEL_37;
      }

      if (a2 != -1)
      {
        v15 = Length;
        if (Length != 1)
        {
          v16 = 1;
          while (1)
          {
            v17 = (v7[4])(v7[5], a2, &BytePtr[v16], v15 - v16);
            v18 = DLStatusFromOSStatus(v17, a3);
            if (v18)
            {
              break;
            }

            v16 += v17;
            if (v16 >= v15)
            {
              v10 = 0;
              goto LABEL_12;
            }
          }

          v10 = v18;
          a2 = 0xFFFFFFFFLL;
LABEL_12:
          v6 = v30;
          v5 = v31;
        }
      }

      _DLOperationProgressContextUpdate(v5 + 16, v13);
      CFRunLoopRunInMode(mode, 0.0, 1u);
      if (*v6 == 4)
      {
        *(v5 + 72) = -14;
        v24 = @"Disconnected";
LABEL_36:
        *(v5 + 80) = v24;
        goto LABEL_37;
      }

      CFRelease(v9);
      v9 = _DLHandlerThreadReadMessage(v6);
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    v21 = *(v5 + 72);
    if (v21)
    {
      v22 = v21 == -13;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      *(v5 + 72) = -1;
      v23 = *(v5 + 80);
      if (v23)
      {
        CFRelease(v23);
      }

      v24 = @"Empty response";
      goto LABEL_36;
    }

LABEL_37:
    CFRelease(v9);
  }

  else
  {
    v10 = 0;
LABEL_17:
    v19 = *(v5 + 72);
    if (!v19 || v19 == -13)
    {
      *(v5 + 72) = -1;
      v20 = *(v5 + 80);
      if (v20)
      {
        CFRelease(v20);
      }

      *(v5 + 80) = @"Error reading response";
    }
  }

  v27 = *(v5 + 72);
  if (v27 == -13 || v27 == 0)
  {
    return v10;
  }

  else
  {
    return v27;
  }
}

uint64_t DLUploadFile(uint64_t a1, const __CFString *a2, void *a3, uint64_t a4, CFStringRef *a5)
{
  keys[1] = *MEMORY[0x277D85DE8];
  values = a3;
  keys[0] = a2;
  v9 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  cf = 0;
  v13 = DLUploadFiles(a1, v9, a4, &cf, a5, v10, v11, v12);
  v14 = _DLSingleFromMultiError(v13, a2, cf, a5);
  if (v9)
  {
    CFRelease(v9);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t DLUploadFiles(uint64_t a1, __CFString *a2, uint64_t a3, void *a4, CFStringRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = _DLProcessSyncMessageWithStatusResponse(a1, a4, a5, 14, @"DLMessageUploadFiles", 2, a7, a8, a2);
  if (DLShouldLog(6))
  {
    Count = CFDictionaryGetCount(a2);
    if (a5)
    {
      v16 = *a5;
    }

    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLUploadFiles", 6, @"DownloadFiles(%d): %d %@", v12, v13, v14, v15, Count);
  }

  return v10;
}

void _DLUploadFilesFromDeviceCallback(__CFString *a1, __CFString *a2, uint64_t a3)
{
  v23 = 0;
  cf = 0;
  v6 = *a3;
  v7 = _DLGetDeviceIOCallbacks(*(a3 + 8));
  v8 = *(a3 + 72);
  if (v8)
  {
    v9 = v8 == -13;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    goto LABEL_25;
  }

  v10 = v7;
  v11 = DLGetFileSystemRepresentation(a1, &v23, &cf);
  if (!v11)
  {
    v12 = (*v10)(v10[5], v23, 256, 0);
    if ((v12 & 0x80000000) == 0)
    {
      v13 = v12;
      v14 = DLCreateDataFromString(a1);
      v11 = _DLSendDataAndDisconnectOnError(v6, v14);
      if (v14)
      {
        CFRelease(v14);
      }

      if (v11)
      {
        v15 = @"Error sending from path data";
      }

      else
      {
        v16 = DLCreateDataFromString(a2);
        v11 = _DLSendDataAndDisconnectOnError(v6, v16);
        if (v16)
        {
          CFRelease(v16);
        }

        if (!v11)
        {
          v11 = _DLSendFileForBulkOperation(a3, v13, &cf);
          goto LABEL_18;
        }

        v15 = @"Error sending to path data";
      }

      _DLBulkOperationContextSetStatus(a3, v11, v15);
LABEL_18:
      (v10[1])(v10[5], v13);
      goto LABEL_19;
    }

    v11 = DLStatusFromOSStatus(-1, &cf);
  }

LABEL_19:
  v17 = *(a3 + 72);
  if (!v17 || v17 == -13)
  {
    Result = _DLBulkOperationContextCreateResult(v11, cf);
    _DLBulkOperationContextUpdate(a3, a1, Result, 0);
    if (Result)
    {
      CFRelease(Result);
    }

    if (DLShouldLog(6))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLUploadFilesFromDeviceCallback", 6, @"UploadFile(%@, %@): %d %@", v19, v20, v21, v22, a1);
    }
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  free(v23);
}

uint64_t DLDownloadFile(uint64_t a1, const __CFString *a2, void *a3, uint64_t a4, CFStringRef *a5)
{
  keys[1] = *MEMORY[0x277D85DE8];
  values = a3;
  keys[0] = a2;
  v9 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  cf = 0;
  v13 = DLDownloadFiles(a1, v9, a4, &cf, a5, v10, v11, v12);
  v14 = _DLSingleFromMultiError(v13, a2, cf, a5);
  if (v9)
  {
    CFRelease(v9);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t DLDownloadFiles(uint64_t a1, __CFString *a2, uint64_t a3, void *a4, CFStringRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = _DLProcessSyncMessageWithStatusResponse(a1, a4, a5, 15, @"DLMessageDownloadFiles", 2, a7, a8, a2);
  if (DLShouldLog(6))
  {
    Count = CFDictionaryGetCount(a2);
    if (a5)
    {
      v16 = *a5;
    }

    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLDownloadFiles", 6, @"DownloadFiles(%d): %d %@", v12, v13, v14, v15, Count);
  }

  return v10;
}

void _DLDownloadFileToDevice(uint64_t a1, const void *a2, const __CFString *a3)
{
  cf = 0;
  v6 = _DLGetDeviceIOCallbacks(*(a1 + 8));
  __from = 0;
  __to = 0;
  v7 = DLGetFileSystemRepresentation(a3, &__to, &cf);
  if (v7)
  {
    v8 = v7;
LABEL_6:
    v10 = 0xFFFFFFFFLL;
LABEL_7:
    _DLReceiveFileForBulkOperation(a1, v10, 0);
    goto LABEL_8;
  }

  v9 = CFStringCreateWithFormat(0, 0, @"%@.%@", a3, @"download");
  v8 = DLGetFileSystemRepresentation(v9, &__from, &cf);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    goto LABEL_6;
  }

  v10 = (*v6)(v6[5], __from, 1793, 420);
  if ((v10 & 0x80000000) != 0)
  {
    v19 = DLStatusFromOSStatus(-1, &cf);
    if (v19)
    {
      v8 = v19;
      goto LABEL_7;
    }
  }

  v8 = _DLReceiveFileForBulkOperation(a1, v10, &cf);
LABEL_8:
  (v6[1])(v6[5], v10);
  if (v8)
  {
    unlink(__from);
  }

  else
  {
    rename(__from, __to, v11);
    v8 = DLStatusFromOSStatus(v12, &cf);
  }

  v13 = *(a1 + 72);
  if (!v13 || v13 == -13)
  {
    Result = _DLBulkOperationContextCreateResult(v8, cf);
    _DLBulkOperationContextUpdate(a1, a2, Result, 0);
    if (Result)
    {
      CFRelease(Result);
    }

    if (DLShouldLog(6))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLDownloadFileToDevice", 6, @"DownloadFile(%@, %@): %d %@", v15, v16, v17, v18, a2);
    }
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  free(__to);
  free(__from);
}

uint64_t DLGetFreeDiskSpace(uint64_t a1, void *a2, CFStringRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  number = 0;
  if (*(a1 + 32) > 299)
  {
    v11 = _DLProcessSyncMessageWithStatusResponse(a1, &number, a3, 13, @"DLMessageGetFreeDiskSpace", 0, a7, a8, v18);
    v9 = v11;
    if (a2 && !v11)
    {
      valuePtr = 0;
      CFNumberGetValue(number, kCFNumberLongLongType, &valuePtr);
      *a2 = valuePtr;
    }
  }

  else
  {
    if (!a3)
    {
      v9 = 4294967294;
      if (!DLShouldLog(6))
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    *a3 = @"DLGetFreeDiskSpace unimplemented by computer version";
    v9 = 4294967294;
  }

  if (!DLShouldLog(6))
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v16 = *a3;
  }

LABEL_11:
  _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLGetFreeDiskSpace", 6, @"GetFreeDiskSpace(): %d %@ %@", v12, v13, v14, v15, v9);
LABEL_12:
  if (number)
  {
    CFRelease(number);
  }

  return v9;
}

uint64_t DLPurgeDiskSpace(uint64_t a1, void *a2, uint64_t a3, int a4, CFStringRef *a5)
{
  valuePtr = a3;
  v22 = a4;
  number = 0;
  v8 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberIntType, &v22);
  if (*(a1 + 32) > 399)
  {
    v13 = _DLProcessSyncMessageWithStatusResponse(a1, &number, a5, 13, @"DLMessagePurgeDiskSpace", 2, v9, v10, v8);
    v12 = v13;
    if (a2 && !v13)
    {
      v20 = 0;
      CFNumberGetValue(number, kCFNumberLongLongType, &v20);
      *a2 = v20;
    }
  }

  else
  {
    if (!a5)
    {
      v12 = 4294967294;
      if (!DLShouldLog(6))
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    *a5 = @"DLPurgeDiskSpace unimplemented by computer version";
    v12 = 4294967294;
  }

  if (!DLShouldLog(6))
  {
    goto LABEL_12;
  }

  if (a5)
  {
    v18 = *a5;
  }

LABEL_11:
  _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "DLPurgeDiskSpace", 6, @"PurgeDiskSpace(): %d %@ %@", v14, v15, v16, v17, v12);
LABEL_12:
  if (number)
  {
    CFRelease(number);
    number = 0;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v12;
}

pthread_mutex_t *_DLCallHistoryAddEntry(void *value)
{
  if (sCallHistoryMutex)
  {
    DLLock(sCallHistoryMutex);
  }

  Mutable = sCallHistory;
  if (!sCallHistory)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    sCallHistory = Mutable;
  }

  CFArrayAppendValue(Mutable, value);
  result = sCallHistoryMutex;
  if (sCallHistoryMutex)
  {

    return DLUnlock(result);
  }

  return result;
}

uint64_t _DLCheckVersionForAccept(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  v4 = CFNumberCreate(0, kCFNumberIntType, &kDLProtocolVersion);
  v5 = CFNumberCreate(0, kCFNumberIntType, (a1 + 36));
  v12 = _DLCreateMessageDataV(@"DLMessageVersionExchange", 2, v6, v7, v8, v9, v10, v11, v4);
  v13 = _DLSendData(*(a1 + 64), v12, a2);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCheckVersionForAccept", 3, @"Could not send data: '%@'", v14, v15, v16, v17, *a2);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (!v5)
    {
      return 0;
    }

    goto LABEL_9;
  }

  CFRelease(v4);
  CFRelease(v5);
  if (DLShouldLog(6))
  {
    v61 = *(a1 + 36);
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCheckVersionForAccept", 6, @"Accepting side sent version numbers. DeviceLink %d, protocol %d", v19, v20, v21, v22, kDLProtocolVersion);
  }

  if (StreamHandlerReceive(*(a1 + 64), &cf, a2))
  {
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCheckVersionForAccept", 3, @"Could not receive message: '%@'", v23, v24, v25, v26, *a2);
    }

    v18 = cf;
    if (!cf)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (!cf)
  {
    if (!DLShouldLog(3))
    {
      return 0;
    }

    v46 = @"Did not receive version number data from connecting side";
LABEL_40:
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCheckVersionForAccept", 3, v46, v42, v43, v44, v45, v60);
    return 0;
  }

  v5 = CFPropertyListCreateFromXMLData(0, cf, 0, a2);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (!v5)
  {
    if (!DLShouldLog(3))
    {
      return 0;
    }

    v60 = *a2;
    v46 = @"Did not receive version number array from connecting side: %@";
    goto LABEL_40;
  }

  v29 = _DLGetParameterAtIndexWithDefaultValue(v5, 1, 0);
  if (!v29 || (v30 = v29, v31 = CFGetTypeID(v29), v31 != CFStringGetTypeID()))
  {
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCheckVersionForAccept", 3, @"Invalid version received from the connect side", v47, v48, v49, v50, v60);
    }

LABEL_9:
    v18 = v5;
LABEL_16:
    CFRelease(v18);
    return 0;
  }

  v32 = _DLGetParameterAtIndexWithDefaultValue(v5, 2, 0);
  valuePtr = 0;
  if (v32)
  {
    CFNumberGetValue(v32, kCFNumberIntType, &valuePtr);
  }

  if (DLShouldLog(6))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCheckVersionForAccept", 6, @"Accepting side received ok/nogo from connect side: %@", v33, v34, v35, v36, v30);
  }

  if (CFStringCompare(v30, @"DLVersionsOk", 0))
  {
    if (CFStringCompare(v30, @"DLErrorAcceptingDeviceLinkGreater", 0))
    {
      if (DLShouldLog(3))
      {
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCheckVersionForAccept", 3, @"Connecting side told the accepting side that the version numbers mismatch: %@", v37, v38, v39, v40, v30);
      }

      v41 = CFRetain(v30);
      v27 = 0;
      *a2 = v41;
      goto LABEL_44;
    }

    if (DLShouldLog(4))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCheckVersionForAccept", 4, @"Our DeviceLink version (%d) is greater than the connecting side's version (%d), but that's ok", v51, v52, v53, v54, kDLProtocolVersion);
    }
  }

  v27 = 1;
LABEL_44:
  v55 = kDLProtocolVersion;
  if (kDLProtocolVersion >= valuePtr)
  {
    v55 = valuePtr;
  }

  *(a1 + 32) = v55;
  if (DLShouldLog(6))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCheckVersionForAccept", 6, @"Using DeviceLink protocol version %d", v56, v57, v58, v59, *(a1 + 32));
  }

  CFRelease(v5);
  return v27;
}

uint64_t _DLCheckVersionForConnect(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  if (StreamHandlerReceive(*(a1 + 64), &cf, a2))
  {
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCheckVersionForConnect", 3, @"Could not receive message: '%@'", v4, v5, v6, v7, *a2);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    return 0;
  }

  if (!cf)
  {
    if (DLShouldLog(3))
    {
      v18 = @"Did not receive version number data from accepting side";
LABEL_54:
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCheckVersionForConnect", 3, v18, v14, v15, v16, v17, v80);
    }

    return 0;
  }

  v8 = CFPropertyListCreateFromXMLData(0, cf, 0, a2);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (!v8)
  {
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCheckVersionForConnect", 3, @"Did not receive version number array from accepting side: %@", v19, v20, v21, v22, *a2);
    }

    return 0;
  }

  valuePtr = 0;
  v9 = _DLGetParameterAtIndexWithDefaultValue(v8, 0, 0);
  if (v9 && CFStringCompare(v9, @"DLMessageVersionExchange", 0) == kCFCompareEqualTo)
  {
    v23 = _DLGetParameterAtIndexWithDefaultValue(v8, 1, 0);
    v24 = _DLGetParameterAtIndexWithDefaultValue(v8, 2, 0);
    if (v23)
    {
      CFNumberGetValue(v23, kCFNumberIntType, &valuePtr + 4);
    }

    if (v24)
    {
      CFNumberGetValue(v24, kCFNumberIntType, &valuePtr);
    }

    if (DLShouldLog(6))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCheckVersionForConnect", 6, @"Connecting side received version numbers from the accepting side. DeviceLink %d, app %d", v25, v26, v27, v28, SBYTE4(valuePtr));
    }
  }

  else if (DLShouldLog(6))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCheckVersionForConnect", 6, @"Connecting side received message from accepting side, but either message was NULL or a mismatch on the expected %@: %@", v10, v11, v12, v13, @"DLMessageVersionExchange");
  }

  CFRelease(v8);
  if (!HIDWORD(valuePtr))
  {
    v81 = 0;
    v40 = _DLCreateMessageDataV(@"DLMessageDisconnect", 1, v29, v30, v31, v32, v33, v34, @"Protocol version mismatch");
    v41 = _DLSendData(*(a1 + 64), v40, &v81);
    if (v40)
    {
      CFRelease(v40);
    }

    if (v41)
    {
      if (DLShouldLog(3))
      {
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCheckVersionForConnect", 3, @"Could not send disconnect message: '%@'", v42, v43, v44, v45, v81);
      }

      if (v81)
      {
        CFRelease(v81);
        v81 = 0;
      }
    }

    _DLCleanupStreamHandler(a1);
    return 0;
  }

  if (kDLProtocolVersion > SHIDWORD(valuePtr))
  {
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCheckVersionForConnect", 3, @"Connecting side determined that its DeviceLink protocol version is greater (connect: %d, accept: %d)", v35, v36, v37, v38, kDLProtocolVersion);
    }

    goto LABEL_28;
  }

  if (kDLProtocolVersion < SHIDWORD(valuePtr))
  {
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCheckVersionForConnect", 3, @"Connecting side determined that its DeviceLink protocol version is lesser (connect: %d, accept: %d)", v46, v47, v48, v49, kDLProtocolVersion);
    }

    v50 = @"DLErrorAcceptingDeviceLinkGreater";
    goto LABEL_41;
  }

  v71 = *(a1 + 36);
  if (v71 <= valuePtr)
  {
    if (v71 >= valuePtr)
    {
LABEL_28:
      v39 = @"DLVersionsOk";
LABEL_42:
      v51 = 1;
      goto LABEL_43;
    }

    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCheckVersionForConnect", 3, @"Connecting side determined that its app protocol version is lesser (connect: %d, accept: %d)", v76, v77, v78, v79, *(a1 + 36));
    }

    v50 = @"DLErrorAcceptingProtocolGreater";
LABEL_41:
    v39 = CFRetain(v50);
    *a2 = v39;
    goto LABEL_42;
  }

  if (DLShouldLog(3))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCheckVersionForConnect", 3, @"Connecting side determined that its app protocol version is greater (connect: %d, accept: %d)", v72, v73, v74, v75, *(a1 + 36));
  }

  v39 = CFRetain(@"DLErrorConnectingProtocolGreater");
  v51 = 0;
  *a2 = v39;
LABEL_43:
  v52 = kDLProtocolVersion;
  if (kDLProtocolVersion >= SHIDWORD(valuePtr))
  {
    v52 = HIDWORD(valuePtr);
  }

  *(a1 + 32) = v52;
  if (DLShouldLog(6))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCheckVersionForConnect", 6, @"Using DeviceLink protocol version %d", v53, v54, v55, v56, *(a1 + 32));
  }

  v57 = CFNumberCreate(0, kCFNumberIntType, &kDLProtocolVersion);
  v64 = _DLCreateMessageDataV(@"DLMessageVersionExchange", 2, v58, v59, v60, v61, v62, v63, v39);
  if (v57)
  {
    CFRelease(v57);
  }

  v65 = _DLSendData(*(a1 + 64), v64, a2);
  if (v64)
  {
    CFRelease(v64);
  }

  if (v65)
  {
    if (DLShouldLog(3))
    {
      v80 = *a2;
      v18 = @"Could not send version response: '%@'";
      goto LABEL_54;
    }

    return 0;
  }

  if (DLShouldLog(6))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCheckVersionForConnect", 6, @"Connecting side sent %@", v67, v68, v69, v70, v39);
  }

  return v51;
}

uint64_t _DLMainThreadMessagePortCallback(int a1, uint64_t a2, uint64_t xmlData, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = xmlData;
  v10 = a2;
  errorString = 0;
  v11 = a2 & 0xFFFFFF00;
  v12 = a2;
  if (a2 >= 0x10u && DLShouldLog(4))
  {
    v95 = a4;
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLMainThreadMessagePortCallback", 4, @"Main thread invoked with unknown msgid %d for connection %p", a5, a6, a7, a8, v12);
  }

  if (v11 != a4[1])
  {
    if (!DLShouldLog(4))
    {
      return 0;
    }

    v96 = (a4[1] >> 8);
    v94 = v10 >> 8;
    v18 = @"Connection session number %d from incoming message doesn't match current connection %d (connection %p)";
    v19 = 4;
LABEL_10:
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLMainThreadMessagePortCallback", v19, v18, v14, v15, v16, v17, v94);
    return 0;
  }

  if (sSaveCallHistory == 1)
  {
    v13 = v12 <= 0xF ? sDLMessageStrings[v12] : "(Invalid Message Code)";
    v20 = CFStringCreateWithFormat(0, 0, @"<- Main %s", v13, v95);
    _DLCallHistoryAddEntry(v20);
    if (v20)
    {
      CFRelease(v20);
    }
  }

  if (v10 > 5u)
  {
    if (v10 <= 0xAu)
    {
      switch(v10)
      {
        case 6u:
          if (!DLShouldLog(3))
          {
            return 0;
          }

          v18 = @"DLMainThreadMessagePortCallback called with DLWriteMessage";
          goto LABEL_94;
        case 7u:
          _DLReleaseIOPMAssertion(a4);
          (*(*(a4 + 5) + 32))(a4, 0);
          return 0;
        case 8u:
          v21 = *(a4 + 10);
          if (v21)
          {
            DLThreadDeleteReceivePort(v21);
          }

          v22 = *(a4 + 12);
          if (v22)
          {
            DLThreadDeleteSendPort(v22);
          }

          v23 = *(a4 + 15);
          if (v23)
          {
            CFRelease(v23);
          }

          free(a4);
          return 0;
      }

LABEL_92:
      if (!DLShouldLog(3))
      {
        return 0;
      }

      LOBYTE(v94) = v12;
      v18 = @"DLMainThreadMessagePortCallback called with unknown message type: %d";
LABEL_94:
      v19 = 3;
      goto LABEL_10;
    }

    if (v10 != 11)
    {
      if (v10 == 12)
      {
        _DLReleaseIOPMAssertion(a4);
        (*(*(a4 + 5) + 40))(a4);
        return 0;
      }

      if (v10 == 13)
      {
        if (!DLShouldLog(3))
        {
          return 0;
        }

        v18 = @"DLMainThreadMessagePortCallback called with DLWriteThenReadMessage";
        goto LABEL_94;
      }

      goto LABEL_92;
    }

    if (v9)
    {
      v9 = CFPropertyListCreateFromXMLData(0, v9, 0, &errorString);
    }

    Count = CFArrayGetCount(v9);
    if (Count < 2)
    {
      v50 = 0;
    }

    else
    {
      v49 = Count;
      v50 = _DLGetParameterAtIndexWithDefaultValue(v9, 1, 0);
      if (v49 != 2)
      {
        v51 = _DLGetParameterAtIndexWithDefaultValue(v9, 2, 0);
        goto LABEL_103;
      }
    }

    v51 = 0;
LABEL_103:
    (*(*(a4 + 5) + 72))(a4, v50, v51);
    if (!v9)
    {
      return 0;
    }

LABEL_104:
    CFRelease(v9);
    return 0;
  }

  if (v10 <= 2u)
  {
    if (v10 == 1)
    {
      _DLCreateIOPMAssertion(a4, a2, xmlData, a4, a5, a6, a7, a8, v94);
      if (v9)
      {
        v9 = CFPropertyListCreateFromXMLData(0, v9, 0, &errorString);
        if (!v9)
        {
          if (DLShouldLog(3))
          {
            _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLMainThreadMessagePortCallback", 3, @"Could not create a property list from the message XML data: '%@'", v42, v43, v44, v45, errorString);
          }

          v9 = 0;
        }
      }

      if (errorString)
      {
        CFRelease(errorString);
        errorString = 0;
      }

      (**(a4 + 5))(a4, v9);
    }

    else
    {
      if (v10 != 2)
      {
        goto LABEL_92;
      }

      if (v9 && (v40 = CFPropertyListCreateFromXMLData(0, v9, 0, &errorString), (v9 = v40) != 0))
      {
        v41 = _DLGetParameterAtIndexWithDefaultValue(v40, 1, 0);
      }

      else
      {
        v41 = 0;
      }

      *a4 = 0;
      (*(*(a4 + 5) + 24))(a4, v41);
    }

    goto LABEL_99;
  }

  if (v10 == 3)
  {
    _DLCreateIOPMAssertion(a4, a2, xmlData, a4, a5, a6, a7, a8, v94);
    (*(*(a4 + 5) + 8))(a4);
    _DLRequestRead(a4);
    return 0;
  }

  if (v10 == 4)
  {
    if (v9 && (v46 = CFPropertyListCreateFromXMLData(0, v9, 0, &errorString), (v9 = v46) != 0))
    {
      v47 = _DLGetParameterAtIndexWithDefaultValue(v46, 1, 0);
    }

    else
    {
      v47 = 0;
    }

    *a4 = 0;
    (*(*(a4 + 5) + 16))(a4, v47);
LABEL_99:
    if (!v9)
    {
      return 0;
    }

    goto LABEL_104;
  }

  if (v10 != 5)
  {
    goto LABEL_92;
  }

  if (!v9)
  {
    errorString = CFRetain(@"NULL data returned from read");
    goto LABEL_106;
  }

  v24 = CFPropertyListCreateFromXMLData(0, v9, 0, &errorString);
  if (!v24)
  {
LABEL_106:
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLMainThreadMessagePortCallback", 3, @"Error creating components from read data: '%@'", v52, v53, v54, v55, errorString);
    }

    (*(*(a4 + 5) + 40))(a4);
    v25 = 0;
    v56 = 1;
    goto LABEL_167;
  }

  v25 = v24;
  v26 = CFArrayGetCount(v24);
  if (v26 < 1)
  {
    goto LABEL_166;
  }

  v27 = v26;
  ValueAtIndex = CFArrayGetValueAtIndex(v25, 0);
  if (sSaveCallHistory == 1)
  {
    _DLCallHistoryMain(@"HandleIncomingMessage", ValueAtIndex);
  }

  if (!ValueAtIndex && DLShouldLog(4))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLHandleIncomingMessage", 4, @"HandleIncomingMessage called with NULL message!", v29, v30, v31, v32, v94);
  }

  if (CFStringCompare(ValueAtIndex, @"DLMessageDeviceReady", 0) == kCFCompareEqualTo)
  {
    (*(*(a4 + 7) + 88))(a4);
    goto LABEL_166;
  }

  if (CFStringCompare(ValueAtIndex, @"DLMessageDisconnect", 0) == kCFCompareEqualTo)
  {
    _DLCleanupStreamHandler(a4);
    if (v27 == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = _DLGetParameterAtIndexWithDefaultValue(v25, 1, 0);
    }

    (*(*(a4 + 5) + 32))(a4, v57);
    goto LABEL_166;
  }

  if (CFStringCompare(ValueAtIndex, @"DLMessageProcessMessage", 0) == kCFCompareEqualTo)
  {
    if (v27 == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = _DLGetParameterAtIndexWithDefaultValue(v25, 1, 0);
    }

    (*(*(a4 + 5) + 48))(a4, v58);
    goto LABEL_166;
  }

  if (CFStringCompare(ValueAtIndex, @"DLMessagePing", 0) == kCFCompareEqualTo)
  {
    if (v27 == 1)
    {
      v59 = 0;
    }

    else
    {
      v59 = _DLGetParameterAtIndexWithDefaultValue(v25, 1, 0);
    }

    (*(*(a4 + 5) + 56))(a4, v59);
LABEL_124:
    _DLRequestRead(a4);
    goto LABEL_166;
  }

  if (CFStringCompare(ValueAtIndex, @"DLRequestFile", 0) == kCFCompareEqualTo)
  {
    if (v27 == 1)
    {
      v60 = 0;
LABEL_156:
      v81 = 0;
      goto LABEL_157;
    }

    v60 = _DLGetParameterAtIndexWithDefaultValue(v25, 1, 0);
    if (v27 < 3)
    {
      goto LABEL_156;
    }

    v62 = _DLGetParameterAtIndexWithDefaultValue(v25, 2, 0);
    v63 = v62;
    if (v27 == 3)
    {
      if (!v62)
      {
        goto LABEL_156;
      }
    }

    else
    {
      v79 = _DLGetParameterAtIndexWithDefaultValue(v25, 3, 0);
      if (!v63)
      {
        goto LABEL_156;
      }

      if (v79)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v79);
LABEL_160:
        v81 = MutableCopy;
        CFDictionarySetValue(MutableCopy, @"DLFileDest", v63);
LABEL_157:
        (*(*(a4 + 5) + 64))(a4, v60, v81);
        if (v81)
        {
          CFRelease(v81);
        }

        goto LABEL_166;
      }
    }

    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    goto LABEL_160;
  }

  if (CFStringCompare(ValueAtIndex, @"DLSendFile", 0) == kCFCompareEqualTo)
  {
    if (v27 == 1)
    {
      v61 = 0;
    }

    else
    {
      v61 = _DLGetParameterAtIndexWithDefaultValue(v25, 1, 0);
      if (v27 >= 3)
      {
        v71 = _DLGetParameterAtIndexWithDefaultValue(v25, 2, 0);
LABEL_138:
        (*(*(a4 + 5) + 72))(a4, v61, v71);
        LODWORD(valuePtr) = 0;
        Value = CFDictionaryGetValue(v71, @"DLFileStatusKey");
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
        if (valuePtr != 1)
        {
          goto LABEL_166;
        }

        if (sSaveCallHistory == 1)
        {
          _DLCallHistoryAddEntry(@"WaitForMessage");
        }

        goto LABEL_124;
      }
    }

    v71 = 0;
    goto LABEL_138;
  }

  if (CFStringCompare(ValueAtIndex, @"DLMessageCreateDirectory", 0) == kCFCompareEqualTo)
  {
    v64 = _DLGetParameterAtIndexWithDefaultValue(v25, 1, 0);
    _DLGetParameterAtIndexWithDefaultValue(v25, 2, 0);
    v65 = _DLGetParameterAtIndexWithDefaultValue(v25, 3, 0);
    if (v64 && v65)
    {
      goto LABEL_188;
    }

    if (!DLShouldLog(4))
    {
      goto LABEL_166;
    }

    v70 = @"CreateDirectory message received with too few components";
LABEL_165:
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLHandleIncomingMessage", 4, v70, v66, v67, v68, v69, v94);
    goto LABEL_166;
  }

  if (CFStringCompare(ValueAtIndex, @"DLMessageRemoveDirectory", 0) == kCFCompareEqualTo)
  {
    v73 = _DLGetParameterAtIndexWithDefaultValue(v25, 1, 0);
    valuePtr = v73;
    _DLGetParameterAtIndexWithDefaultValue(v25, 2, 0);
    v74 = _DLGetParameterAtIndexWithDefaultValue(v25, 3, 0);
    if (v73 && v74)
    {
      _DLMainThreadMessagePortCallback_cold_2(&valuePtr);
    }

    if (!DLShouldLog(4))
    {
      goto LABEL_166;
    }

    v70 = @"RemoveDirectory message received with too few components";
    goto LABEL_165;
  }

  if (CFStringCompare(ValueAtIndex, @"DLContentsOfDirectory", 0) == kCFCompareEqualTo)
  {
    v77 = _DLGetParameterAtIndexWithDefaultValue(v25, 1, 0);
    _DLGetParameterAtIndexWithDefaultValue(v25, 2, 0);
    v78 = _DLGetParameterAtIndexWithDefaultValue(v25, 3, 0);
    if (v77 && v78)
    {
      goto LABEL_188;
    }

    if (!DLShouldLog(4))
    {
      goto LABEL_166;
    }

    v70 = @"ContentsOfDirectory message received with too few components";
    goto LABEL_165;
  }

  if (CFStringCompare(ValueAtIndex, @"DLMessageMoveFiles", 0) == kCFCompareEqualTo || CFStringCompare(ValueAtIndex, @"DLMessageMoveItems", 0) == kCFCompareEqualTo)
  {
    v75 = _DLGetParameterAtIndexWithDefaultValue(v25, 1, 0);
    _DLGetParameterAtIndexWithDefaultValue(v25, 2, 0);
    v76 = _DLGetParameterAtIndexWithDefaultValue(v25, 3, 0);
    if (v75 && v76)
    {
      goto LABEL_188;
    }

    if (!DLShouldLog(4))
    {
      goto LABEL_166;
    }

    v70 = @"MoveItems message received with too few components";
    goto LABEL_165;
  }

  if (CFStringCompare(ValueAtIndex, @"DLMessageRemoveFiles", 0) == kCFCompareEqualTo || CFStringCompare(ValueAtIndex, @"DLMessageRemoveItems", 0) == kCFCompareEqualTo)
  {
    v82 = _DLGetParameterAtIndexWithDefaultValue(v25, 1, 0);
    _DLGetParameterAtIndexWithDefaultValue(v25, 2, 0);
    v83 = _DLGetParameterAtIndexWithDefaultValue(v25, 3, 0);
    if (v82 && v83)
    {
      goto LABEL_188;
    }

    if (!DLShouldLog(4))
    {
      goto LABEL_166;
    }

    v70 = @"RemoveItems message received with too few components";
    goto LABEL_165;
  }

  if (CFStringCompare(ValueAtIndex, @"DLMessageCopyItem", 0) == kCFCompareEqualTo)
  {
    v85 = _DLGetParameterAtIndexWithDefaultValue(v25, 1, 0);
    v86 = _DLGetParameterAtIndexWithDefaultValue(v25, 2, 0);
    _DLGetParameterAtIndexWithDefaultValue(v25, 3, 0);
    v87 = _DLGetParameterAtIndexWithDefaultValue(v25, 4, 0);
    v88 = _DLGetParameterAtIndexWithDefaultValue(v25, 5, 0);
    if (v85 && v86 && v87 && v88)
    {
      goto LABEL_188;
    }

    if (!DLShouldLog(4))
    {
      goto LABEL_166;
    }

    v70 = @"CopyItem message received with too few components";
    goto LABEL_165;
  }

  if (CFStringCompare(ValueAtIndex, @"DLMessageUploadFiles", 0) == kCFCompareEqualTo)
  {
    _DLGetParameterAtIndexWithDefaultValue(v25, 1, 0);
    v89 = _DLGetParameterAtIndexWithDefaultValue(v25, 2, 0);
    v90 = _DLGetParameterAtIndexWithDefaultValue(v25, 3, 0);
    if (v89 && v90)
    {
      goto LABEL_188;
    }

    if (!DLShouldLog(4))
    {
      goto LABEL_166;
    }

    v70 = @"UploadFiles message received with too few components";
    goto LABEL_165;
  }

  if (CFStringCompare(ValueAtIndex, @"DLMessageDownloadFiles", 0))
  {
    if (CFStringCompare(ValueAtIndex, @"DLMessageGetFreeDiskSpace", 0))
    {
      if (CFStringCompare(ValueAtIndex, @"DLMessagePurgeDiskSpace", 0) == kCFCompareEqualTo)
      {
        _DLMainThreadMessagePortCallback_cold_1(v25);
      }

      v33 = *(a4 + 3);
      if (!v33 || v33(a4, v25))
      {
        if (DLShouldLog(4))
        {
          _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLHandleIncomingMessage", 4, @"HandleIncomingMessage called with unknown message: %@", v36, v37, v38, v39, v25);
        }

        DLDisconnect(a4, @"Unknown Message Received", v34, v35, v36, v37, v38, v39);
      }

      goto LABEL_166;
    }

LABEL_188:
    abort();
  }

  v91 = _DLGetParameterAtIndexWithDefaultValue(v25, 1, 0);
  _DLGetParameterAtIndexWithDefaultValue(v25, 2, 0);
  v92 = _DLGetParameterAtIndexWithDefaultValue(v25, 3, 0);
  v93 = _DLGetParameterAtIndexWithDefaultValue(v25, 4, 0);
  if (v91 && v92 && v93)
  {
    goto LABEL_188;
  }

  if (DLShouldLog(4))
  {
    v70 = @"DownloadFiles message received with too few components";
    goto LABEL_165;
  }

LABEL_166:
  v56 = 0;
LABEL_167:
  if (errorString)
  {
    CFRelease(errorString);
    errorString = 0;
  }

  if ((v56 & 1) == 0)
  {
    CFRelease(v25);
  }

  *(a4 + 145) = 0;
  return 0;
}

void _DLCleanupStreamHandler(uint64_t a1)
{
  cf = 0;
  _DLReleaseIOPMAssertion(a1);
  v2 = *(a1 + 64);
  if (v2)
  {
    if (StreamHandlerClose(v2, &cf) && DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCleanupStreamHandler", 3, @"Closing the stream handler in handler thread: '%@'", v3, v4, v5, v6, cf);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (StreamHandlerDeleteStreamHandler(*(a1 + 64), &cf) && DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCleanupStreamHandler", 3, @"Deleting the stream handler: '%@'", v7, v8, v9, v10, cf);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    *(a1 + 64) = 0;
  }
}

uint64_t _DLSendData(uint64_t a1, CFDataRef theData, CFTypeRef *a3)
{
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    v9 = 0;
    return StreamHandlerSend(a1, BytePtr, Length, &v9, a3);
  }

  else
  {

    return DLSetStatus(4294967293, a3, @"_DLSendAndReleaseData: data parameter is NULL");
  }
}

void _DLCreateIOPMAssertion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 146))
  {
    if (DLShouldLog(6))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCreateIOPMAssertion", 6, @"Grabbing PreventIdleSleep assertion...", v10, v11, v12, v13, v19);
    }

    v14 = DLGetProcessName();
    if (IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, v14, (a1 + 208)) && DLShouldLog(3))
    {

      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLCreateIOPMAssertion", 3, @"Could not grab idle sleep prevention assertion!", v15, v16, v17, v18, a9);
    }
  }
}

void _DLReleaseIOPMAssertion(uint64_t a1)
{
  if (*(a1 + 146))
  {
    if (DLShouldLog(6))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLReleaseIOPMAssertion", 6, @"Releasing PreventIdleSleep assertion...", v2, v3, v4, v5, v11);
    }

    v6 = *(a1 + 208);
    if (v6)
    {
      if (IOPMAssertionRelease(v6))
      {
        if (DLShouldLog(3))
        {
          _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLReleaseIOPMAssertion", 3, @"Could not release idle sleep prevention assertion", v7, v8, v9, v10, v11);
        }
      }

      *(a1 + 208) = 0;
    }
  }
}

uint64_t _DLHandlerThreadEntryPoint(uint64_t a1)
{
  v8 = *(a1 + 72);
  v2 = CFStringCreateWithFormat(0, 0, @"%@.%@");
  *(a1 + 88) = DLThreadCreateReceivePort(v2, a1, _DLHandlerThreadMessagePortCallback);
  *(a1 + 104) = DLThreadCreateSendPort(v2);
  if (v2)
  {
    CFRelease(v2);
  }

  DLThreadAddMessagePortToRunloop(*(a1 + 88));
  DLSignal(*(a1 + 128), *(a1 + 136), (a1 + 144));
  DLThreadRun();
  if (DLShouldLog(5))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLHandlerThreadEntryPoint", 5, @"Handler thread exited run loop", v3, v4, v5, v6, v8);
  }

  return 0;
}

pthread_cond_t *DLCreateCondition()
{
  v0 = malloc_type_calloc(0x30uLL, 1uLL, 0x1000040EED21634uLL);
  v1 = pthread_cond_init(v0, 0);
  if (v1)
  {
    v2 = v1;
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkThread.c", "DLCreateCondition", 3, @"Error initializing condition: %d", v3, v4, v5, v6, v2);
    }

    free(v0);
    return 0;
  }

  return v0;
}

void DLDeleteCondition(pthread_cond_t *a1)
{
  v2 = pthread_cond_destroy(a1);
  free(a1);
  if (v2)
  {
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkThread.c", "DLDeleteCondition", 3, @"Error destroying condition: %d", v3, v4, v5, v6, v2);
    }
  }
}

pthread_mutex_t *DLCreateMutex()
{
  v0 = malloc_type_calloc(0x40uLL, 1uLL, 0x1000040FA0F61DDuLL);
  if (pthread_mutex_init(v0, 0))
  {
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkThread.c", "DLCreateMutex", 3, @"Error initializing mutex: %d");
    }

    free(v0);
    return 0;
  }

  return v0;
}

void DLDeleteMutex(pthread_mutex_t *a1)
{
  v2 = pthread_mutex_destroy(a1);
  free(a1);
  if (v2)
  {
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkThread.c", "DLDeleteMutex", 3, @"Error destroying mutex: %d", v3, v4, v5, v6, v2);
    }
  }
}

BOOL DLLock(pthread_mutex_t *a1)
{
  v1 = pthread_mutex_lock(a1);
  if (v1 && DLShouldLog(3))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkThread.c", "DLLock", 3, @"Error locking mutex: %d");
  }

  return v1 == 0;
}

BOOL DLUnlock(pthread_mutex_t *a1)
{
  v1 = pthread_mutex_unlock(a1);
  if (v1 && DLShouldLog(3))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkThread.c", "DLUnlock", 3, @"Error unlocking mutex: %d");
  }

  return v1 == 0;
}

void DLWait(pthread_cond_t *a1, pthread_mutex_t *a2, _BYTE *a3)
{
  v6 = pthread_mutex_lock(a2);
  if (v6)
  {
    v7 = v6;
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkThread.c", "DLWait", 3, @"Error locking mutex to wait on condition: %d", v8, v9, v10, v11, v7);
    }
  }

  else
  {
    while (!*a3)
    {
      if (DLShouldLog(5))
      {
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkThread.c", "DLWait", 5, @"Waiting for flag to be set...", v12, v13, v14, v15, v32);
      }

      v16 = pthread_cond_wait(a1, a2);
      if (v16)
      {
        v17 = v16;
        if (DLShouldLog(3))
        {
          _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkThread.c", "DLWait", 3, @"Error waiting on condition: %d", v18, v19, v20, v21, v17);
        }

        break;
      }
    }

    if (DLShouldLog(5))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkThread.c", "DLWait", 5, @"Done waiting for flag to be set, ready to rock and roll", v22, v23, v24, v25, v32);
    }

    v26 = pthread_mutex_unlock(a2);
    if (v26)
    {
      v27 = v26;
      if (DLShouldLog(3))
      {
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkThread.c", "DLWait", 3, @"Error unlocking mutex after waiting on condition: %d", v28, v29, v30, v31, v27);
      }
    }
  }
}

void DLSignal(pthread_cond_t *a1, pthread_mutex_t *a2, _BYTE *a3)
{
  v6 = pthread_mutex_lock(a2);
  if (v6)
  {
    v7 = v6;
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkThread.c", "DLSignal", 3, @"Error locking mutex to broadcast condition: %d", v8, v9, v10, v11, v7);
    }
  }

  else
  {
    *a3 = 1;
    v12 = pthread_cond_broadcast(a1);
    if (v12)
    {
      v13 = v12;
      if (DLShouldLog(3))
      {
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkThread.c", "DLSignal", 3, @"Error broadcasting for condition: %d", v14, v15, v16, v17, v13);
      }
    }

    v18 = pthread_mutex_unlock(a2);
    if (v18)
    {
      v19 = v18;
      if (DLShouldLog(3))
      {
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkThread.c", "DLSignal", 3, @"Error unlocking mutex after broadcasting condition: %d", v20, v21, v22, v23, v19);
      }
    }
  }
}

__CFMessagePort *DLThreadCreateReceivePort(uint64_t a1, uint64_t a2, uint64_t a3)
{
  shouldFreeInfo = 0;
  v6 = malloc_type_calloc(0x10uLL, 1uLL, 0x80040803F642BuLL);
  *v6 = a2;
  v6[1] = a3;
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = v6;
  v7 = DLGetUniqueProcessName();
  v8 = @"default";
  if (v7)
  {
    v8 = v7;
  }

  v9 = CFStringCreateWithFormat(0, 0, @"com.apple.DeviceLink.%@.%@", v8, a1, context.version, context.info, context.retain, context.release, context.copyDescription);
  v10 = CFMessagePortCreateLocal(0, v9, _DeviceLinkThreadMessageCallback, &context, &shouldFreeInfo);
  if (!v10 || shouldFreeInfo == 1)
  {
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkThread.c", "DLThreadCreateReceivePort", 3, @"Can't create message port for %@ (%@)", v12, v13, v14, v15, a1);
    }

    v11 = 0;
  }

  else
  {
    v11 = v10;
    CFMessagePortSetInvalidationCallBack(v10, _DeviceLinkThreadPortInvalidationCallback);
  }

  CFRelease(v9);
  return v11;
}

uint64_t _DeviceLinkThreadMessageCallback(__CFMessagePort *a1, uint64_t a2, const __CFData *a3, uint64_t a4)
{
  if (DLShouldLog(7))
  {
    v12 = decodeMsgId(a2);
    if (a3)
    {
      CFDataGetLength(a3);
    }

    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkThread.c", "_DeviceLinkThreadMessageCallback", 7, @"Callback with message %@-%d and %d bytes of data (0x%08x)", v8, v9, v10, v11, v12);
  }

  *buffer = 0;
  if (a3 && CFDataGetLength(a3) == 8)
  {
    v21.location = 0;
    v21.length = 8;
    CFDataGetBytes(a3, v21, buffer);
  }

  if (a1 && CFMessagePortIsValid(a1))
  {
    v13 = (*(a4 + 8))(a1, a2, *buffer, *a4);
  }

  else
  {
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkThread.c", "_DeviceLinkThreadMessageCallback", 3, @"Can't send message to nil or invalid port", v14, v15, v16, v17, v19);
    }

    v13 = 0;
  }

  if (*buffer)
  {
    CFRelease(*buffer);
  }

  return v13;
}

void _DeviceLinkThreadPortInvalidationCallback(char a1)
{
  if (DLShouldLog(7))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkThread.c", "_DeviceLinkThreadPortInvalidationCallback", 7, @"Message port at 0x%08x is invalidated", v2, v3, v4, v5, a1);
  }
}

__CFMessagePort *DLThreadCreateSendPort(uint64_t a1)
{
  v2 = DLGetUniqueProcessName();
  v3 = @"default";
  if (v2)
  {
    v3 = v2;
  }

  v4 = CFStringCreateWithFormat(0, 0, @"com.apple.DeviceLink.%@.%@", v3, a1);
  Remote = CFMessagePortCreateRemote(0, v4);
  v6 = Remote;
  if (Remote)
  {
    CFMessagePortSetInvalidationCallBack(Remote, _DeviceLinkThreadPortInvalidationCallback);
  }

  CFRelease(v4);
  return v6;
}

__CFMessagePort *DLThreadAddMessagePortToRunloop(__CFMessagePort *local)
{
  if (local)
  {
    local = CFMessagePortCreateRunLoopSource(0, local, 0);
    if (local)
    {
      v1 = local;
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, v1, *MEMORY[0x277CBF058]);
      CFRelease(v1);
      return 1;
    }
  }

  return local;
}

void DLThreadDeleteSendPort(__CFMessagePort *a1)
{
  if (a1)
  {
    CFMessagePortInvalidate(a1);

    CFRelease(a1);
  }
}

void DLThreadDeleteReceivePort(__CFMessagePort *a1)
{
  if (a1)
  {
    memset(&v3, 0, sizeof(v3));
    CFMessagePortGetContext(a1, &v3);
    info = v3.info;
    v3.info = 0;
    free(info);
    CFMessagePortInvalidate(a1);
    CFRelease(a1);
  }
}

CFDataRef _DLThreadSendMessage(__CFMessagePort *a1, SInt32 a2, const __CFData *a3, int a4)
{
  v5 = a3;
  returnData = 0;
  *bytes = a3;
  if (DLShouldLog(7))
  {
    v12 = decodeMsgId(a2);
    if (v5)
    {
      CFDataGetLength(v5);
    }

    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkThread.c", "_DLThreadSendMessage", 7, @"Invoked with message %@-%d and %d bytes of data (0x%08x)", v8, v9, v10, v11, v12);
  }

  if (v5)
  {
    v5 = CFDataCreate(0, bytes, 8);
  }

  if (a1 && CFMessagePortIsValid(a1) == 1)
  {
    v13 = 0.0;
    if (a4)
    {
      v13 = 86400.0;
    }

    v14 = *MEMORY[0x277CBF058];
    if (a4)
    {
      v15 = *MEMORY[0x277CBF058];
    }

    else
    {
      v15 = 0;
    }

    v16 = CFMessagePortSendRequest(a1, a2, v5, 5.0, v13, v15, &returnData);
    if (v16)
    {
      v17 = v16;
      if (DLShouldLog(3))
      {
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkThread.c", "_DLThreadSendMessage", 3, @"Error %d returned from call to CFMessagePortSendRequest", v18, v19, v20, v21, v17);
      }
    }
  }

  else if (DLShouldLog(3))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkThread.c", "_DLThreadSendMessage", 3, @"Can't send message to nil or invalid port", v22, v23, v24, v25, v27);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return returnData;
}

__CFString *decodeMsgId(unsigned int a1)
{
  if (a1 > 0x11)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_2798E5818 + a1);
  }
}

void DLThreadSendMessage(__CFMessagePort *a1, SInt32 a2, const __CFData *a3)
{
  v3 = _DLThreadSendMessage(a1, a2, a3, 0);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t DLSetStatus(uint64_t a1, CFTypeRef *a2, CFTypeRef cf)
{
  v3 = cf;
  if (a2)
  {
    *a2 = CFRetain(cf);
  }

  else if (DLLoggingEnabled(3) || DLOutputEnabled(3))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "DLSetStatus", 3, @"An error occured, but no error string pointer was passed to the function. The error was:\n%@", v5, v6, v7, v8, v3);
  }

  return a1;
}

BOOL DLShouldLog(int a1)
{
  if (DLLoggingEnabled(a1))
  {
    return 1;
  }

  return DLOutputEnabled(a1);
}

void _DLLog(const char *a1, const char *a2, int a3, const __CFString *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = 0x27F9E2000uLL;
  v14 = sLogMutex;
  v15 = (sLogMutex || (v14 = DLCreateMutex(), (sLogMutex = v14) != 0)) && DLLock(v14);
  if (!a1)
  {
    a1 = "UNKNOWN";
  }

  if (a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = "UNKNOWN";
  }

  v17 = strlen(a1) - 2;
  v18 = &a1[v17];
  do
  {
    v19 = v18;
    v20 = v17;
    if (v18 + 1 <= a1)
    {
      break;
    }

    --v18;
    --v17;
  }

  while (*v19 != 47);
  if (v20)
  {
    v21 = v19 + 1;
  }

  else
  {
    v21 = v19;
  }

  if ((a3 - 3) > 4)
  {
    v22 = "UNKNOWN";
  }

  else
  {
    v22 = (&off_2798E58B0)[a3 - 3];
  }

  v23 = *MEMORY[0x277CBECE8];
  v24 = CFStringCreateWithFormatAndArguments(*MEMORY[0x277CBECE8], 0, a4, &a9);
  if (!DLLoggingEnabled(a3))
  {
    v28 = @"Log error";
    goto LABEL_47;
  }

  v25 = dateFormat;
  if (dateFormat)
  {
    Current = CFAbsoluteTimeGetCurrent();
    StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(v23, v25, Current);
  }

  else
  {
    StringWithAbsoluteTime = &stru_286ABDCB8;
  }

  v29 = DLGetProcessName();
  v30 = getpid();
  v31 = pthread_self();
  v28 = CFStringCreateWithFormat(0, 0, @"%@|%@|%ld:%lu|%s:%s| %s: %@\n", StringWithAbsoluteTime, v29, v30, v31, v21, v16, v22, v24);
  if (StringWithAbsoluteTime)
  {
    CFRelease(StringWithAbsoluteTime);
  }

  v32 = 0x27F9E2000uLL;
  if ((logStream & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

  v35 = CFCopyHomeDirectoryURLForUser();
  if (!v35)
  {
    CFPrintf(@"Could not get a home directory path");
    v13 = 0x27F9E2000;
    goto LABEL_47;
  }

  v36 = v35;
  v37 = CFURLCreateCopyAppendingPathComponent(0, v35, @"Library/Logs", 1u);
  CFRelease(v36);
  v13 = 0x27F9E2000;
  if (!v37)
  {
    CFPrintf(@"Could not get a log directory path from %@", 0);
    goto LABEL_47;
  }

  v82 = v16;
  if (sLogDirectoryName)
  {
    v38 = sLogDirectoryName;
  }

  else
  {
    v38 = @"DeviceLink";
  }

  v39 = CFURLCreateCopyAppendingPathComponent(0, v37, v38, 1u);
  CFRelease(v37);
  if (!v39)
  {
    CFPrintf(@"Could not get the current process' log directory path at %@", 0);
    goto LABEL_88;
  }

  v40 = CFURLCopyFileSystemPath(v39, kCFURLPOSIXPathStyle);
  if (!v40)
  {
    CFPrintf(@"Could not get a string for the current process' log directory path at %@", v39);
    v77 = v39;
LABEL_84:
    CFRelease(v77);
    goto LABEL_88;
  }

  v41 = v40;
  DLEnsureDirectoryExists(v40);
  CFRelease(v41);
  v42 = DLGetProcessName();
  if (v42 && (v43 = v42, Length = CFStringGetLength(v42), v45.location = CFStringFind(v43, @"/", 4uLL).location + 1, Length - v45.location >= 1))
  {
    v45.length = Length - v45.location;
    v46 = CFStringCreateWithSubstring(0, v43, v45);
  }

  else
  {
    v46 = @"DeviceLink";
  }

  v59 = CFURLCreateCopyAppendingPathComponent(0, v39, v46, 0);
  CFRelease(v39);
  if (!v59)
  {
    CFPrintf(@"Could not create a log base filename from %@", 0);
    if (v46)
    {
      v77 = v46;
      goto LABEL_84;
    }

LABEL_88:
    v16 = v82;
    goto LABEL_47;
  }

  v80 = v21;
  StringForLogFile = _createStringForLogFile(v59, 0);
  if (!StringForLogFile)
  {
    CFPrintf(@"Could not get a string for the log file name %@", v59);
    if (v46)
    {
      CFRelease(v46);
    }

    CFRelease(v59);
    goto LABEL_88;
  }

  v61 = StringForLogFile;
  v62 = v15;
  memset(&usedBufLen, 0, sizeof(usedBufLen));
  v79 = DLCreateCStringFromCFString(StringForLogFile);
  v63 = stat(v79, &usedBufLen);
  CFRelease(v61);
  v64 = 522;
  if (v63)
  {
    v15 = v62;
  }

  else
  {
    v15 = v62;
    if (usedBufLen.st_size >= 16777217)
    {
      cf = v22;
      v65 = 1;
      do
      {
        v66 = _createStringForLogFile(v59, v65);
        v67 = DLCreateCStringFromCFString(v66);
        v68 = stat(v67, &usedBufLen);
        free(v67);
        if (v66)
        {
          CFRelease(v66);
        }

        if (v68)
        {
          v65 = v65;
        }

        else
        {
          v65 = (v65 + 1);
        }
      }

      while (!v68 && v65 < 0xB);
      if (v65 >= 0xA)
      {
        v65 = 10;
      }

      else
      {
        v65 = v65;
      }

      do
      {
        v69 = _createStringForLogFile(v59, v65);
        v65 = (v65 - 1);
        v70 = _createStringForLogFile(v59, v65);
        v71 = DLCreateCStringFromCFString(v69);
        v72 = DLCreateCStringFromCFString(v70);
        rename(v72, v71, v73);
        if (v74 < 0)
        {
          v75 = __error();
          v76 = strerror(*v75);
          CFPrintf(@"Could not move log file from %s to %s: %s", v72, v71, v76);
        }

        free(v71);
        free(v72);
      }

      while ((v65 + 1) > 1);
      v64 = 1538;
      v13 = 0x27F9E2000;
      v15 = v62;
      v22 = cf;
    }
  }

  logStream = open(v79, v64, 384);
  CFRelease(v59);
  v16 = v82;
  v21 = v80;
  if ((logStream & 0x80000000) == 0)
  {
    atexit(_closeLogStream);
    if (v46)
    {
      CFRelease(v46);
    }

    free(v79);
    v32 = 0x27F9E2000;
LABEL_26:
    v81 = v16;
    v33 = 134217984;
    *&usedBufLen.st_dev = 0;
    v84.length = CFStringGetLength(v28);
    v84.location = 0;
    if (CFStringGetBytes(v28, v84, 0x8000100u, 0, 0, 0, v84.length, &usedBufLen.st_dev) <= 0)
    {
      CFPrintf(@"Can't determine byte count for log line, falling back to ASCII.\nLine is %@\n", v28);
      v34 = CFStringGetLength(v28);
      v33 = 1536;
    }

    else
    {
      v34 = *&usedBufLen.st_dev;
    }

    v47 = malloc_type_malloc(((v34 << 32) + 0x100000000) >> 32, 0x100004077774924uLL);
    if (CFStringGetCString(v28, v47, ((v34 << 32) + 0x100000000) >> 32, v33))
    {
      if (write(*(v32 + 1988), v47, v34) < 0 && DLOutputEnabled(3))
      {
        CFPrintf(@"Error writing to the log file stream: %s\n", v47);
      }

      free(v47);
    }

    else
    {
      FastestEncoding = CFStringGetFastestEncoding(v28);
      v49 = CFStringGetFastestEncoding(v28);
      NameOfEncoding = CFStringGetNameOfEncoding(v49);
      SmallestEncoding = CFStringGetSmallestEncoding(v28);
      v52 = CFStringGetSmallestEncoding(v28);
      v53 = CFStringGetNameOfEncoding(v52);
      CFPrintf(@"Could not get C string to log to the log file, fastest string encoding is %d: %@, smallest string encoding is %d: %@, line is %@\n", FastestEncoding, NameOfEncoding, SmallestEncoding, v53, v28);
    }

    v16 = v81;
    v13 = 0x27F9E2000uLL;
    goto LABEL_47;
  }

  CFPrintf(@"Could not open log file at %s\n", v79);
  if (v46)
  {
    CFRelease(v46);
  }

  free(v79);
LABEL_47:
  if (DLOutputEnabled(a3))
  {
    v54 = getpid();
    v55 = pthread_self();
    v56 = CFStringCreateWithFormat(0, 0, @"%ld:%lu|%s:%s| %s: %@", v54, v55, v21, v16, v22, v24);
    v57 = DLCreateCStringFromCFString(v56);
    if (v57)
    {
      v58 = v57;
      syslog(a3, "%s", v57);
      free(v58);
    }

    CFRelease(v56);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v15)
  {
    DLUnlock(*(v13 + 2024));
  }
}

CFStringRef DLCopyHomeDirPath()
{
  v0 = CFCopyHomeDirectoryURLForUser();
  if (v0)
  {
    v1 = v0;
    v2 = CFURLCopyFileSystemPath(v0, kCFURLPOSIXPathStyle);
    CFRelease(v1);
    return v2;
  }

  else
  {
    fwrite("Could not get a home URL for the default user\n", 0x2EuLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }
}

CFStringRef _DLWarnAboutUsingCopyHomeDirPathAndCallDLCopyHomeDirPath()
{
  if ((_DLWarnAboutUsingCopyHomeDirPathAndCallDLCopyHomeDirPath_pScreamedAndShouted & 1) == 0)
  {
    _DLWarnAboutUsingCopyHomeDirPathAndCallDLCopyHomeDirPath_pScreamedAndShouted = 1;
    if (DLLoggingEnabled(3) || DLOutputEnabled(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "_DLWarnAboutUsingCopyHomeDirPathAndCallDLCopyHomeDirPath", 3, @"*** The function copyHomeDirPath has been deprecated and will be removed in a future release. Change your code to use DLCopyHomeDirPath.", v1, v2, v3, v4, vars0);
    }

    v0 = vars8;
  }

  return DLCopyHomeDirPath();
}

CFStringRef DLCopyTempDir()
{
  v3 = *MEMORY[0x277D85DE8];
  strcpy(buffer, "/tmp");
  result = CFStringCreateWithFileSystemRepresentation(0, buffer);
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

CFStringRef DLStringByAppendingPathComponent(const __CFString *a1, const __CFString *a2)
{
  if (CFStringGetLength(a1))
  {
    v4 = DLCreateCStringFromCFString(a1);
    memset(&v11, 0, sizeof(v11));
    v5 = stat(v4, &v11) >= 0 && (v11.st_mode & 0x4000) != 0;
    v6 = CFURLCreateWithFileSystemPath(0, a1, kCFURLPOSIXPathStyle, v5);
    v7 = CFURLCreateCopyAppendingPathComponent(0, v6, a2, v5);
    v8 = CFURLCopyFileSystemPath(v7, kCFURLPOSIXPathStyle);
    CFRelease(v6);
    CFRelease(v7);
    free(v4);
    return v8;
  }

  else
  {
    v10.length = CFStringGetLength(a2);
    v10.location = 0;

    return CFStringCreateWithSubstring(0, a2, v10);
  }
}

void *DLCreateCStringFromCFString(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  v5 = v4;
  if (v4)
  {
    bzero(v4, MaximumSizeForEncoding + 1);
    if (!CFStringGetCString(a1, v5, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      free(v5);
      return 0;
    }
  }

  return v5;
}

CFStringRef DLStringByRemovingLastPathComponent(const __CFString *a1)
{
  v2 = DLCreateCStringFromCFString(a1);
  memset(&v8, 0, sizeof(v8));
  v3 = stat(v2, &v8) >= 0 && (v8.st_mode & 0x4000) != 0;
  v4 = CFURLCreateWithFileSystemPath(0, a1, kCFURLPOSIXPathStyle, v3);
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, v4);
  v6 = CFURLCopyFileSystemPath(PathComponent, kCFURLPOSIXPathStyle);
  CFRelease(v4);
  CFRelease(PathComponent);
  free(v2);
  return v6;
}

void DLEnsureDirectoryExists(const __CFString *a1)
{
  if (a1)
  {
    MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(a1);
    v3 = malloc_type_calloc(1uLL, MaximumSizeOfFileSystemRepresentation, 0x100004077774924uLL);
    if (v3)
    {
      v4 = v3;
      if (CFStringGetFileSystemRepresentation(a1, v3, MaximumSizeOfFileSystemRepresentation) == 1)
      {
        memset(&v17, 0, sizeof(v17));
        if (stat(v4, &v17))
        {
          bzero(v4, MaximumSizeOfFileSystemRepresentation);
          ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, a1, @"/");
          if (ArrayBySeparatingStrings)
          {
            v6 = ArrayBySeparatingStrings;
            Count = CFArrayGetCount(ArrayBySeparatingStrings);
            if (Count >= 2)
            {
              v8 = Count & 0x7FFFFFFF;
              v9 = 1;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
                v11 = CFStringGetMaximumSizeOfFileSystemRepresentation(ValueAtIndex);
                v12 = malloc_type_calloc(1uLL, v11, 0x100004077774924uLL);
                if (CFStringGetFileSystemRepresentation(ValueAtIndex, v12, v11) != 1)
                {
                  fwrite("DLEnsureDirectoryExists: Can't get File System encoded char* for path component string\n", 0x57uLL, 1uLL, *MEMORY[0x277D85DF8]);
                  free(v12);
                  goto LABEL_23;
                }

                *&v4[strlen(v4)] = 47;
                strcat(v4, v12);
                free(v12);
                if (stat(v4, &v17))
                {
                  if (mkdir(v4, 0x1FFu) && *__error() != 17)
                  {
                    break;
                  }
                }

                if (v8 == ++v9)
                {
                  goto LABEL_23;
                }
              }

              v14 = *MEMORY[0x277D85DF8];
              v15 = __error();
              v16 = strerror(*v15);
              fprintf(v14, "DLEnsureDirectoryExists: Can't make directory for %s: %s\n", v4, v16);
            }

LABEL_23:
            CFRelease(v6);
          }
        }

        free(v4);
      }

      else
      {
        fwrite("DLEnsureDirectoryExists: Can't get File System encoded char* for path component string\n", 0x57uLL, 1uLL, *MEMORY[0x277D85DF8]);

        free(v4);
      }
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "DLEnsureDirectoryExists: can't malloc %ld bytes", MaximumSizeOfFileSystemRepresentation);
    }
  }

  else
  {
    v13 = *MEMORY[0x277D85DF8];

    fwrite("DLEnsureDirectoryExists called on a NULL path\n", 0x2EuLL, 1uLL, v13);
  }
}

__CFDictionary *DLCopyFileAttributes(const __CFString *a1)
{
  if (a1)
  {
    v2 = DLCreateCStringFromCFString(a1);
    if (v2)
    {
      v3 = v2;
      memset(&valuePtr, 0, sizeof(valuePtr));
      if (!stat(v2, &valuePtr))
      {
        free(v3);
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionaryAddValue(Mutable, @"Filename", a1);
        _DLAddNumberToDict(&valuePtr, kCFNumberSInt32Type, @"DeviceIdentifier", Mutable, v14, v15, v16, v17, v77);
        _DLAddNumberToDict(&valuePtr.st_ino, kCFNumberSInt32Type, @"FileSystemFileNumber", Mutable, v18, v19, v20, v21, v78);
        _DLAddNumberToDict(&valuePtr.st_mode, kCFNumberSInt16Type, @"FileMode", Mutable, v22, v23, v24, v25, v79);
        _DLAddNumberToDict(&valuePtr.st_nlink, kCFNumberSInt16Type, @"LinkCount", Mutable, v26, v27, v28, v29, v80);
        _DLAddNumberToDict(&valuePtr.st_uid, kCFNumberSInt32Type, @"OwnerAccountID", Mutable, v30, v31, v32, v33, v81);
        _DLAddNumberToDict(&valuePtr.st_gid, kCFNumberSInt32Type, @"GroupOwnerAccountID", Mutable, v34, v35, v36, v37, v82);
        _DLAddNumberToDict(&valuePtr.st_rdev, kCFNumberSInt32Type, @"DeviceType", Mutable, v38, v39, v40, v41, v83);
        _DLAddDateToDict(&valuePtr.st_atimespec.tv_sec, @"AccessTime", Mutable, v42, v43, v44, v45, v46, v84);
        _DLAddDateToDict(&valuePtr.st_mtimespec.tv_sec, @"ModificationTime", Mutable, v47, v48, v49, v50, v51, v85);
        _DLAddDateToDict(&valuePtr.st_ctimespec.tv_sec, @"ChangeTime", Mutable, v52, v53, v54, v55, v56, v86);
        _DLAddNumberToDict(&valuePtr.st_size, kCFNumberSInt64Type, @"FileSize", Mutable, v57, v58, v59, v60, v87);
        _DLAddNumberToDict(&valuePtr.st_blocks, kCFNumberSInt64Type, @"BlockCount", Mutable, v61, v62, v63, v64, v88);
        _DLAddNumberToDict(&valuePtr.st_blksize, kCFNumberSInt32Type, @"BlockSize", Mutable, v65, v66, v67, v68, v89);
        _DLAddNumberToDict(&valuePtr.st_flags, kCFNumberSInt32Type, @"FileFlags", Mutable, v69, v70, v71, v72, v90);
        _DLAddNumberToDict(&valuePtr.st_gen, kCFNumberSInt32Type, @"GenerationNumber", Mutable, v73, v74, v75, v76, v91);
        return Mutable;
      }

      if (DLLoggingEnabled(3) || DLOutputEnabled(3))
      {
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "DLCopyFileAttributes", 3, @"Could not stat the file at %s", v4, v5, v6, v7, v3);
      }
    }

    else if (DLLoggingEnabled(3) || DLOutputEnabled(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "DLCopyFileAttributes", 3, @"Could not create a C string from the CFString %@", v8, v9, v10, v11, a1);
    }
  }

  return 0;
}

const __CFDictionary *_DLIsType(const __CFDictionary *result, int a2)
{
  valuePtr = 0;
  if (result)
  {
    v3 = result;
    result = CFDictionaryGetCount(result);
    if (result)
    {
      Value = CFDictionaryGetValue(v3, @"FileMode");
      CFNumberGetValue(Value, kCFNumberSInt16Type, &valuePtr);
      return ((a2 & valuePtr & 0xF000) == a2);
    }
  }

  return result;
}

void *DLMemoryPoolAddObject(__CFArray *a1, void *value)
{
  if (a1 && value)
  {
    CFArrayAppendValue(a1, value);
  }

  return value;
}

uint64_t DLStatusFromOSStatus(int a1, CFStringRef *a2)
{
  if (a1 != -1)
  {
    return 0;
  }

  if (a2)
  {
    v4 = __error();
    v5 = strerror(*v4);
    v6 = __error();
    *a2 = CFStringCreateWithFormat(0, 0, @"%s (%d)", v5, *v6);
  }

  v7 = *__error();
  if (v7 <= 19)
  {
    if (v7 == 2)
    {
      return 4294967290;
    }

    if (v7 != 5)
    {
      if (v7 == 17)
      {
        return 4294967289;
      }

      return 0xFFFFFFFFLL;
    }

    return 4294967285;
  }

  else if (v7 > 27)
  {
    if (v7 != 28)
    {
      if (v7 == 62)
      {
        return 4294967286;
      }

      return 0xFFFFFFFFLL;
    }

    return 4294967281;
  }

  else
  {
    if (v7 != 20)
    {
      if (v7 == 21)
      {
        return 4294967287;
      }

      return 0xFFFFFFFFLL;
    }

    return 4294967288;
  }
}

uint64_t DLGetProcessName()
{
  result = _DLProcessName;
  if (!_DLProcessName)
  {
    v1 = *_CFGetProgname();
    if (!v1)
    {
      v1 = "Unknown";
    }

    v2 = CFStringCreateWithFormat(0, 0, @"%s", v1);
    DLSetProcessName(v2);
    CFRelease(v2);
    return _DLProcessName;
  }

  return result;
}

void DLSetProcessName(CFStringRef theString)
{
  if (theString)
  {
    if (_DLProcessName)
    {
      CFRelease(_DLProcessName);
      _DLProcessName = 0;
    }

    _DLProcessName = CFStringCreateCopy(0, theString);

    DLRegenerateUniqueProcessName();
  }
}

uint64_t DLGetUniqueProcessName()
{
  result = _DLUniqueProcessName;
  if (!_DLUniqueProcessName)
  {
    DLGetProcessName();
    return _DLUniqueProcessName;
  }

  return result;
}

void DLRegenerateUniqueProcessName()
{
  if (!_DLProcessName)
  {
    DLGetProcessName();
  }

  v0 = DLCreateUUID();
  if (_DLUniqueProcessName)
  {
    CFRelease(_DLUniqueProcessName);
    _DLUniqueProcessName = 0;
  }

  ValueAtIndex = _DLProcessName;
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, _DLProcessName, @"/");
  if (ArrayBySeparatingStrings)
  {
    v3 = ArrayBySeparatingStrings;
    Count = CFArrayGetCount(ArrayBySeparatingStrings);
    if (Count >= 2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, (Count - 1));
    }

    _DLUniqueProcessName = CFStringCreateWithFormat(0, 0, @"%@.%@", ValueAtIndex, v0);
    CFRelease(v3);
  }

  else
  {
    _DLUniqueProcessName = CFStringCreateWithFormat(0, 0, @"%@.%@", ValueAtIndex, v0);
  }

  CFRelease(v0);
}

CFStringRef DLCreateUUID()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v2 = CFUUIDCreateString(v0, v1);
  CFRelease(v1);
  return v2;
}

void CFPrintf(CFStringRef format, ...)
{
  va_start(va, format);
  v1 = CFStringCreateWithFormatAndArguments(*MEMORY[0x277CBECE8], 0, format, va);
  v2 = DLCreateCStringFromCFString(v1);
  if (v2)
  {
    v3 = v2;
    fprintf(*MEMORY[0x277D85E08], "%s\n", v2);
    free(v3);
  }

  else
  {
    fwrite("Error: Could not get C string. CFShow output follows:\n", 0x36uLL, 1uLL, *MEMORY[0x277D85DF8]);
    CFShow(v1);
  }

  CFRelease(v1);
}

BOOL DLLoggingEnabled(int a1)
{
  if ((loggingInitalized & 1) == 0)
  {
    initializeLogging();
  }

  if ((loggingDefaultRead & 1) == 0)
  {
    loggingDefaultRead = 1;
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"LogLevel", @"com.apple.DeviceLink", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat == 1)
    {
      curLogLevel = AppIntegerValue;
    }
  }

  return curLogLevel >= a1;
}

BOOL DLOutputEnabled(int a1)
{
  if ((loggingInitalized & 1) == 0)
  {
    initializeLogging();
  }

  if ((outputDefaultRead & 1) == 0)
  {
    outputDefaultRead = 1;
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"OutputLevel", @"com.apple.DeviceLink", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat == 1)
    {
      curOutputLevel = AppIntegerValue;
    }
  }

  return curOutputLevel >= a1;
}

const char *DLSetLogDirectoryName(const char *cStr)
{
  if (cStr)
  {
    v1 = cStr;
    if (sLogDirectoryName)
    {
      CFRelease(sLogDirectoryName);
      sLogDirectoryName = 0;
    }

    sLogDirectoryName = CFStringCreateWithCString(0, v1, 0x8000100u);

    return DLGetProcessName();
  }

  return cStr;
}

__CFData *createDecryptedData(const __CFData *a1, CFDataRef theData, const __CFData *a3)
{
  if (!a1 || !theData)
  {
    if (DLLoggingEnabled(3) || DLOutputEnabled(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "createDecryptedData", 3, @"Cannot decrypt without a key or data!", v8, v9, v10, v11, dataOut);
    }

    return 0;
  }

  dataOutMoved = 0;
  BytePtr = CFDataGetBytePtr(theData);
  if (a3)
  {
    v7 = CFDataGetBytePtr(a3);
  }

  else
  {
    v7 = 0;
  }

  v12 = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (CCCrypt(1u, 0, 1u, BytePtr, 0x20uLL, v7, v12, Length, 0, 0, &dataOutMoved) != -4301 && CFDataGetLength(a1) && (DLLoggingEnabled(3) || DLOutputEnabled(3)))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "createDecryptedData", 3, @"Woah- CCCrypt was ok with a 0 length buffer for the decrypted data. Something is going wrong.", v14, v15, v16, v17, dataOuta);
  }

  Mutable = CFDataCreateMutable(0, dataOutMoved);
  CFDataSetLength(Mutable, dataOutMoved);
  v19 = CFDataGetBytePtr(theData);
  if (a3)
  {
    a3 = CFDataGetBytePtr(a3);
  }

  v20 = CFDataGetBytePtr(a1);
  v21 = CFDataGetLength(a1);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  v23 = CCCrypt(1u, 0, 1u, v19, 0x20uLL, a3, v20, v21, MutableBytePtr, dataOutMoved, &dataOutMoved);
  CFDataSetLength(Mutable, dataOutMoved);
  if (v23)
  {
    if (DLLoggingEnabled(4) || DLOutputEnabled(4))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "createDecryptedData", 4, @"Could not decrypt data: %d", v24, v25, v26, v27, v23);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

__CFData *createEncryptedData(const __CFData *a1, CFDataRef theData, const __CFData *a3)
{
  if (!a1 || !theData)
  {
    if (DLLoggingEnabled(3) || DLOutputEnabled(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "createEncryptedData", 3, @"Cannot encrypt without a key or data!", v8, v9, v10, v11, dataOut);
    }

    return 0;
  }

  dataOutMoved = 0;
  BytePtr = CFDataGetBytePtr(theData);
  if (a3)
  {
    v7 = CFDataGetBytePtr(a3);
  }

  else
  {
    v7 = 0;
  }

  v12 = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (CCCrypt(0, 0, 1u, BytePtr, 0x20uLL, v7, v12, Length, 0, 0, &dataOutMoved) != -4301 && CFDataGetLength(a1) && (DLLoggingEnabled(3) || DLOutputEnabled(3)))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "createEncryptedData", 3, @"Woah- CCCrypt was ok with a 0 length buffer for the encrypted data. Something is going wrong.", v14, v15, v16, v17, dataOuta);
  }

  Mutable = CFDataCreateMutable(0, dataOutMoved);
  CFDataSetLength(Mutable, dataOutMoved);
  v19 = CFDataGetBytePtr(theData);
  if (a3)
  {
    a3 = CFDataGetBytePtr(a3);
  }

  v20 = CFDataGetBytePtr(a1);
  v21 = CFDataGetLength(a1);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  v23 = CCCrypt(0, 0, 1u, v19, 0x20uLL, a3, v20, v21, MutableBytePtr, dataOutMoved, &dataOutMoved);
  CFDataSetLength(Mutable, dataOutMoved);
  if (v23)
  {
    if (DLLoggingEnabled(3) || DLOutputEnabled(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "createEncryptedData", 3, @"Could not encrypt data: %d", v24, v25, v26, v27, v23);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

CFDataRef createRandomBytes(int a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20]();
  v3 = v15 - ((v2 + 15) & 0x1FFFFFFF0);
  v4 = open("/dev/random", 0);
  if (v4)
  {
    v5 = v4;
    v6 = read(v4, v3, a1);
    if (v6 >= a1)
    {
      close(v5);
      result = CFDataCreate(0, v3, a1);
      goto LABEL_9;
    }

    v7 = v6;
    if (DLLoggingEnabled(3) || DLOutputEnabled(3))
    {
      v8 = __error();
      strerror(*v8);
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "createRandomBytes", 3, @"Could not read bytes in from /dev/random. %ld bytes read, %d bytes desired: %s", v9, v10, v11, v12, v7);
    }

    close(v5);
  }

  result = 0;
LABEL_9:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

__CFData *createFileAuthBlob(const __CFData *a1, const __CFData **a2, const __CFData **a3)
{
  RandomBytes = createRandomBytes(16);
  v7 = createRandomBytes(32);
  EncryptedData = createEncryptedData(v7, a1, RandomBytes);
  if (EncryptedData)
  {
    v9 = EncryptedData;
    Length = CFDataGetLength(RandomBytes);
    v11 = CFDataGetLength(v9);
    v12 = Length + v11 + 2;
    Mutable = CFDataCreateMutable(0, (Length + v11 + 2) + 2);
    *bytes = bswap32(v12) >> 16;
    v25 = 1;
    v24 = 0;
    CFDataAppendBytes(Mutable, bytes, 2);
    CFDataAppendBytes(Mutable, &v25, 1);
    CFDataAppendBytes(Mutable, &v24, 1);
    BytePtr = CFDataGetBytePtr(RandomBytes);
    v15 = CFDataGetLength(RandomBytes);
    CFDataAppendBytes(Mutable, BytePtr, v15);
    v16 = CFDataGetBytePtr(v9);
    v17 = CFDataGetLength(v9);
    CFDataAppendBytes(Mutable, v16, v17);
    CFRelease(v9);
    if (!a2)
    {
      if (v7)
      {
        CFRelease(v7);
      }

      if (!a3)
      {
        goto LABEL_18;
      }

LABEL_17:
      *a3 = RandomBytes;
      return Mutable;
    }
  }

  else
  {
    if (DLLoggingEnabled(3) || DLOutputEnabled(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "createFileAuthBlob", 3, @"Could not create encrypted auth data", v18, v19, v20, v21, v23);
    }

    if (RandomBytes)
    {
      CFRelease(RandomBytes);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (!a2)
    {
      Mutable = 0;
      RandomBytes = 0;
      if (!a3)
      {
        return Mutable;
      }

      goto LABEL_17;
    }

    RandomBytes = 0;
    v7 = 0;
    Mutable = 0;
  }

  *a2 = v7;
  if (a3)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (RandomBytes)
  {
    CFRelease(RandomBytes);
  }

  return Mutable;
}

__CFData *createFileKeyFromAuthBlob(const __CFData *a1, const __CFData *a2, const __CFData **a3, void *a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = bswap32(*CFDataGetBytePtr(a1)) >> 16;
  if (DLLoggingEnabled(6) || DLOutputEnabled(6))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "createFileKeyFromAuthBlob", 6, @"Unpacking %d bytes of auth data", v9, v10, v11, v12, v8);
  }

  v13 = CFDataGetBytePtr(a1)[2];
  v14 = CFDataGetBytePtr(a1)[3];
  if (DLLoggingEnabled(6) || DLOutputEnabled(6))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "createFileKeyFromAuthBlob", 6, @"Unpacking auth data v%d.%d", v15, v16, v17, v18, v13);
  }

  BytePtr = CFDataGetBytePtr(a1);
  v20 = CFDataCreate(0, BytePtr + 4, 16);
  v21 = CFDataGetBytePtr(a1);
  v22 = CFDataCreate(0, v21 + 20, v8 - 18);
  v23 = v22;
  if (v20 && v22)
  {
    DecryptedData = createDecryptedData(v22, a2, v20);
    if (!DecryptedData)
    {
      if (DLLoggingEnabled(4) || DLOutputEnabled(4))
      {
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "createFileKeyFromAuthBlob", 4, @"Could not decrypt the encryption key", v30, v31, v32, v33, v35);
      }

      v25 = 0;
      goto LABEL_28;
    }

    v25 = DecryptedData;
    if (a3)
    {
      *a3 = v20;
      if (!a4)
      {
        goto LABEL_28;
      }
    }

    else
    {
      CFRelease(v20);
      if (!a4)
      {
LABEL_28:
        CFRelease(v23);
        return v25;
      }
    }

    *a4 = v8 + 2;
    goto LABEL_28;
  }

  if (DLLoggingEnabled(3) || DLOutputEnabled(3))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "createFileKeyFromAuthBlob", 3, @"Could not extract an iv and/or encryption key from the auth data", v26, v27, v28, v29, v35);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  v25 = 0;
  if (v23)
  {
    goto LABEL_28;
  }

  return v25;
}

uint64_t DLReleaseArgsAndReturn(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = &a9;
  if (a2 >= 1)
  {
    v10 = a2;
    do
    {
      v11 = v13++;
      if (*v11)
      {
        CFRelease(*v11);
      }

      --v10;
    }

    while (v10);
  }

  return a1;
}

__CFString *DLCreateDataFromString(__CFString *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFStringGetLength(result);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v2, 0x8000100u);
    result = malloc_type_malloc(MaximumSizeForEncoding, 0x100004077774924uLL);
    if (result)
    {
      v4 = result;
      length = 0;
      v6.location = 0;
      v6.length = v2;
      if (CFStringGetBytes(v1, v6, 0x8000100u, 0, 1u, result, MaximumSizeForEncoding, &length) == v2)
      {
        return CFDataCreateWithBytesNoCopy(0, v4, length, *MEMORY[0x277CBECF0]);
      }

      else
      {
        free(v4);
        return 0;
      }
    }
  }

  return result;
}

CFStringRef DLCreateStringFromData(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);

  return CFStringCreateWithBytes(0, BytePtr, Length, 0x8000100u, 1u);
}

uint64_t DLGetFileSystemRepresentation(const __CFString *a1, void **a2, void *a3)
{
  if (a2)
  {
    MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(a1);
    v7 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x100004077774924uLL);
    *a2 = v7;
    if (CFStringGetFileSystemRepresentation(a1, v7, MaximumSizeOfFileSystemRepresentation))
    {
      return 0;
    }

    if (a3)
    {
      *a3 = @"Error getting file system representation of path";
    }

    free(*a2);
  }

  else if (a3)
  {
    *a3 = @"Path is null";
  }

  return 0xFFFFFFFFLL;
}

CFPropertyListRef DLCreatePropertyListFromFile(CFURLRef fileURL, CFStringRef *a2)
{
  v4 = CFReadStreamCreateWithFile(0, fileURL);
  if (v4)
  {
    v5 = v4;
    format = 0;
    if (CFReadStreamOpen(v4) == 1)
    {
      v6 = CFPropertyListCreateFromStream(0, v5, 0, 2uLL, &format, a2);
      CFReadStreamClose(v5);
LABEL_17:
      CFRelease(v5);
      return v6;
    }

    Error = CFReadStreamGetError(v5);
    if (Error.domain == 2)
    {
      if (a2)
      {
        v9 = CFStringCreateWithFormat(0, 0, @"MacOStatus error number %d while reading from the file at '%@'", *&Error.error, fileURL, v11, format);
        goto LABEL_15;
      }
    }

    else if (Error.domain == 1)
    {
      if (a2)
      {
        v12 = strerror(Error.error);
        v9 = CFStringCreateWithFormat(0, 0, @"Error number %d while reading from the file at '%@': %s", *&Error.error, fileURL, v12, format);
LABEL_15:
        v6 = 0;
        *a2 = v9;
        goto LABEL_17;
      }
    }

    else if (a2)
    {
      v9 = CFStringCreateWithFormat(0, 0, @"Unknown error number %d while reading from the file at '%@'", *&Error.error, fileURL, v11, format);
      goto LABEL_15;
    }

    v6 = 0;
    goto LABEL_17;
  }

  if (!a2)
  {
    return 0;
  }

  v7 = CFStringCreateWithFormat(0, 0, @"Could not create a read stream for the file at '%@'", fileURL);
  v6 = 0;
  *a2 = v7;
  return v6;
}

uint64_t DLWritePropertyListToFileWithFormat(const void *a1, const __CFURL *a2, CFPropertyListFormat a3, CFStringRef *a4)
{
  v8 = CFWriteStreamCreateWithFile(0, a2);
  if (v8)
  {
    v9 = v8;
    v10 = CFWriteStreamOpen(v8);
    if (v10 == 1)
    {
      CFPropertyListWriteToStream(a1, v9, a3, a4);
      CFWriteStreamClose(v9);
    }

    else
    {
      Error = CFWriteStreamGetError(v9);
      if (Error.domain == 2)
      {
        v12 = CFStringCreateWithFormat(0, 0, @"MacOStatus error number %d while writing to the file at '%@'", *&Error.error, a2);
      }

      else if (Error.domain == 1)
      {
        v14 = strerror(Error.error);
        v12 = CFStringCreateWithFormat(0, 0, @"Error number %d while writing to the file at '%@': %s", *&Error.error, a2, v14);
      }

      else
      {
        v12 = CFStringCreateWithFormat(0, 0, @"Unknown error number %d while writing to the file at '%@'", *&Error.error, a2);
      }

      *a4 = v12;
    }

    CFRelease(v9);
  }

  else
  {
    v10 = 0;
    *a4 = CFStringCreateWithFormat(0, 0, @"Could not create a write stream for the file at '%@'", a2);
  }

  return v10;
}

CFMutableArrayRef copyKeysFromDictionary(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(a1);
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
  CFDictionaryApplyFunction(a1, _gatherDictionaryKeys, Mutable);
  return Mutable;
}

CFMutableArrayRef copyKeysFromDictionaryNoRetain(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(a1);
  Mutable = CFArrayCreateMutable(0, Count, 0);
  CFDictionaryApplyFunction(a1, _gatherDictionaryKeys, Mutable);
  return Mutable;
}

CFMutableArrayRef copyValuesFromDictionary(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(a1);
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
  CFDictionaryApplyFunction(a1, _gatherDictionaryValues, Mutable);
  return Mutable;
}

CFMutableArrayRef copyValuesFromDictionaryNoRetain(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(a1);
  Mutable = CFArrayCreateMutable(0, Count, 0);
  CFDictionaryApplyFunction(a1, _gatherDictionaryValues, Mutable);
  return Mutable;
}

__CFArray *copyKeysAndValuesFromDictionaryNoRetain(__CFArray *result)
{
  if (result)
  {
    v1 = result;
    Count = CFDictionaryGetCount(result);
    Mutable = CFArrayCreateMutable(0, Count, 0);
    v4 = CFDictionaryGetCount(v1);
    v5 = CFArrayCreateMutable(0, v4, 0);

    return _copyKeysAndValuesFromDictionary(v1, Mutable, v5);
  }

  return result;
}

__CFArray *_copyKeysAndValuesFromDictionary(const __CFDictionary *a1, const void *a2, void *a3)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  CFArrayAppendValue(Mutable, a2);
  CFArrayAppendValue(Mutable, a3);
  CFDictionaryApplyFunction(a1, _gatherDictionaryKeysAndValues, a3);
  return Mutable;
}

__CFArray *copyKeysAndValuesFromDictionary(__CFArray *result)
{
  if (result)
  {
    v1 = result;
    Count = CFDictionaryGetCount(result);
    v3 = MEMORY[0x277CBF128];
    Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
    v5 = CFDictionaryGetCount(v1);
    v6 = CFArrayCreateMutable(0, v5, v3);

    return _copyKeysAndValuesFromDictionary(v1, Mutable, v6);
  }

  return result;
}

BOOL DLGetFlockForFileWithCancel(const __CFString *a1, unsigned int (*a2)(uint64_t), uint64_t a3, float a4)
{
  if (!_lockFds)
  {
    _lockFds = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v8 = DLCreateCStringFromCFString(a1);
  if (!v8)
  {
    if (DLLoggingEnabled(3) || DLOutputEnabled(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "DLGetFlockForFileWithCancel", 3, @"Could not get a valid C string for the lock filename", v22, v23, v24, v25, v47);
    }

    return 0;
  }

  v9 = v8;
  v48 = -74;
  v10 = open(v8, 512);
  valuePtr = v10;
  if (v10 == -1)
  {
    if (DLLoggingEnabled(5) || DLOutputEnabled(5))
    {
      v26 = *__error();
      v27 = __error();
      strerror(*v27);
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "DLGetFlockForFileWithCancel", 5, @"Error: Can't get file descriptor for %s: (%d) %s", v28, v29, v30, v31, v9);
    }

    free(v9);
    return 0;
  }

  v11 = v10;
  Current = CFAbsoluteTimeGetCurrent();
  v13 = CFRunLoopTimerCreate(0, Current + (a4 + a4), 0.0, 0, 0, _DLGetFlockTimeoutCallback, 0);
  v14 = CFRunLoopGetCurrent();
  v15 = *MEMORY[0x277CBF058];
  v49 = v13;
  CFRunLoopAddTimer(v14, v13, *MEMORY[0x277CBF058]);
  while (1)
  {
    if (DLLoggingEnabled(5) || DLOutputEnabled(5))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "DLGetFlockForFileWithCancel", 5, @"Attempting to lock descriptor for %s", v16, v17, v18, v19, v9);
    }

    *__error() = 0;
    v20 = flock(v11, 6);
    v21 = v20 == 0;
    if (!v20)
    {
      break;
    }

    CFRunLoopRunInMode(v15, 1.0, 0);
    if (a2 && a2(a3))
    {
      if (DLLoggingEnabled(5) || DLOutputEnabled(5))
      {
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "DLGetFlockForFileWithCancel", 5, @"flock wait canceled by cancel function", v38, v39, v40, v41, v48);
      }

LABEL_31:
      if (DLLoggingEnabled(4) || DLOutputEnabled(4))
      {
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "DLGetFlockForFileWithCancel", 4, @"Could not lock %s", v42, v43, v44, v45, v9);
      }

      close(valuePtr);
      v37 = v49;
      goto LABEL_35;
    }

    a4 = a4 + -1.0;
    if (a4 < 0.0)
    {
      goto LABEL_31;
    }
  }

  v32 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(_lockFds, a1, v32);
  if (v32)
  {
    CFRelease(v32);
  }

  if (a4 < 0.0)
  {
    goto LABEL_31;
  }

  v37 = v49;
  if (DLLoggingEnabled(5) || DLOutputEnabled(5))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "DLGetFlockForFileWithCancel", 5, @"Lock obtained for %s", v33, v34, v35, v36, v9);
  }

LABEL_35:
  CFRunLoopTimerInvalidate(v37);
  CFRelease(v37);
  free(v9);
  return v21;
}

void DLReleaseFlockForFile(void *key, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (key && _lockFds)
  {
    Value = CFDictionaryGetValue(_lockFds, key);
    if (Value)
    {
      valuePtr = -1;
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      if (flock(valuePtr, 8) == -1 && (DLLoggingEnabled(4) || DLOutputEnabled(4)))
      {
        v11 = *__error();
        v12 = __error();
        strerror(*v12);
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "DLReleaseFlockForFile", 4, @"Error: Can't unlock fd for filename %@: (%d) %s", v13, v14, v15, v16, key);
      }

      close(valuePtr);
      CFDictionaryRemoveValue(_lockFds, key);
    }

    else if (DLLoggingEnabled(4) || DLOutputEnabled(4))
    {

      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "DLReleaseFlockForFile", 4, @"Attempting to unlock a lock that doesn't exist", v17, v18, v19, v20, a9);
    }
  }
}

uint64_t DLSetLogLevel(int a1)
{
  loggingDefaultRead = 1;
  curLogLevel = a1;
  return 1;
}

uint64_t DLSetOutputLevel(int a1)
{
  outputDefaultRead = 1;
  curOutputLevel = a1;
  return 1;
}

void initializeLogging()
{
  if ((loggingInitalized & 1) == 0)
  {
    loggingInitalized = 1;
    v0 = CFDateFormatterCreate(*MEMORY[0x277CBECE8], 0, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    dateFormat = v0;
    if (v0)
    {

      CFDateFormatterSetFormat(v0, @"yyyy-MM-dd HH:mm:ss.SSS");
    }
  }
}

uint64_t DLGetListenerSocketFromLaunchd(int a1)
{
  fds = 0;
  cnt = 0;
  v2 = launch_activate_socket("Listeners", &fds, &cnt);
  if (!v2)
  {
    if (fds)
    {
      if (cnt >= 2 && (DLLoggingEnabled(5) || DLOutputEnabled(5)))
      {
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "DLGetListenerSocketFromLaunchd", 5, @"More than one set of sockets for listening, ignoring all but Listeners", v9, v10, v11, v12, v28);
      }

      memset(&changelist, 0, sizeof(changelist));
      v13 = kqueue();
      if (v13 == -1)
      {
        if (!DLLoggingEnabled(5) && !DLOutputEnabled(5))
        {
          goto LABEL_36;
        }

        v27 = @"Can't set up kqueue";
LABEL_35:
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "DLGetListenerSocketFromLaunchd", 5, v27, v23, v24, v25, v26, v28);
LABEL_36:
        free(fds);
        return 0;
      }

      v14 = v13;
      if (cnt)
      {
        v15 = 0;
        while (1)
        {
          changelist.ident = fds[v15];
          *&changelist.filter = 0x1FFFF;
          *(&changelist | 0xC) = 0;
          *((&changelist | 0xC) + 8) = 0;
          *((&changelist | 0xC) + 0x10) = 0;
          if (kevent(v14, &changelist, 1, 0, 0, 0) == -1)
          {
            break;
          }

          if (++v15 >= cnt)
          {
            goto LABEL_15;
          }
        }

        if (!DLLoggingEnabled(5) && !DLOutputEnabled(5))
        {
          goto LABEL_36;
        }

        v27 = @"Failure on kevent call for read";
        goto LABEL_35;
      }

LABEL_15:
      free(fds);
      fds = 0;
      v29[0] = a1;
      v29[1] = 0;
      if (a1)
      {
        v16 = v29;
      }

      else
      {
        v16 = 0;
      }

      v17 = kevent(v14, 0, 0, &changelist, 1, v16);
      if (v17)
      {
        if (v17 != -1)
        {
          return LODWORD(changelist.ident);
        }

        if (!DLLoggingEnabled(5))
        {
          result = DLOutputEnabled(5);
          if (!result)
          {
            return result;
          }
        }

        v22 = @"Failure on kevent call for socket";
      }

      else
      {
        if (!DLLoggingEnabled(5))
        {
          result = DLOutputEnabled(5);
          if (!result)
          {
            return result;
          }
        }

        v22 = @"Timeout waiting for kevent";
      }
    }

    else
    {
      if (!DLLoggingEnabled(5))
      {
        result = DLOutputEnabled(5);
        if (!result)
        {
          return result;
        }
      }

      v22 = @"No listeners found";
    }

    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "DLGetListenerSocketFromLaunchd", 5, v22, v18, v19, v20, v21, v28);
    return 0;
  }

  v3 = v2;
  if (DLLoggingEnabled(3) || (result = DLOutputEnabled(3), result))
  {
    strerror(v3);
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "DLGetListenerSocketFromLaunchd", 3, "Failed to launch_activate_socket: %d, %s", v5, v6, v7, v8, v3);
    return 0;
  }

  return result;
}

void _DLAddNumberToDict(void *valuePtr, CFNumberType a2, const void *a3, __CFDictionary *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (valuePtr && a4)
  {
    v11 = CFNumberCreate(0, a2, valuePtr);
    if (v11)
    {
      v12 = v11;
      CFDictionaryAddValue(a4, a3, v11);

      CFRelease(v12);
    }

    else if (DLLoggingEnabled(3) || DLOutputEnabled(3))
    {

      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "_DLAddNumberToDict", 3, @"Could not create a CFNumber from the passed in value", v13, v14, v15, v16, a9);
    }
  }
}

void _DLAddDateToDict(uint64_t *a1, const void *a2, __CFDictionary *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1 && a3)
  {
    v11 = CFDateCreate(0, *a1);
    if (v11)
    {
      v12 = v11;
      CFDictionaryAddValue(a3, a2, v11);

      CFRelease(v12);
    }

    else if (DLLoggingEnabled(3) || DLOutputEnabled(3))
    {

      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/Utility/DeviceLinkUtility.c", "_DLAddDateToDict", 3, @"Could not create a CFDate from the passed in value", v13, v14, v15, v16, a9);
    }
  }
}

void _MemoryPoolReleaseCallback(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CFStringRef _createStringForLogFile(const __CFURL *a1, uint64_t a2)
{
  v3 = CFStringCreateWithFormat(0, 0, @"%02d.log", a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFURLCreateCopyAppendingPathExtension(0, a1, v3);
  CFRelease(v4);
  if (!v5)
  {
    return 0;
  }

  v6 = CFURLCopyFileSystemPath(v5, kCFURLPOSIXPathStyle);
  CFRelease(v5);
  return v6;
}

void _gatherDictionaryKeysAndValues(const void *a1, const void *a2, CFArrayRef theArray)
{
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  v7 = CFArrayGetValueAtIndex(theArray, 1);
  CFArrayAppendValue(ValueAtIndex, a1);

  CFArrayAppendValue(v7, a2);
}

void *SetSocketLogCallback(void *result, uint64_t a2)
{
  sSocketLogCallback = result;
  sSocketLogData = a2;
  return result;
}

_DWORD *SocketCreateServerWithSocket(int a1)
{
  v5 = 1;
  v2 = malloc_type_calloc(0x30uLL, 1uLL, 0x102004092D5E0CCuLL);
  if (v2)
  {
    if (!sSocketOldSignalHandler)
    {
      sSocketOldSignalHandler = signal(13, 1);
    }

    v2[2] = 0;
    *v2 = a1;
    if (setsockopt(a1, 0xFFFF, 4, &v5, 4u))
    {
      v3 = 7;
    }

    else
    {
      v3 = 0;
    }

    v2[1] = v3;
  }

  return v2;
}

void *SocketCreateServer(unsigned int a1, int a2)
{
  v8 = 1;
  v4 = malloc_type_calloc(0x30uLL, 1uLL, 0x102004092D5E0CCuLL);
  if (v4)
  {
    if (!sSocketOldSignalHandler)
    {
      sSocketOldSignalHandler = signal(13, 1);
    }

    *(v4 + 2) = 0;
    *(v4 + 33) = 2;
    *(v4 + 17) = bswap32(a1) >> 16;
    *(v4 + 9) = 0;
    v5 = socket(2, 1, 0);
    *v4 = v5;
    if (v5 < 0)
    {
      *(v4 + 1) = 1;
    }

    else
    {
      if (setsockopt(v5, 0xFFFF, 4, &v8, 4u))
      {
        v6 = 7;
      }

      else if (bind(*v4, v4 + 2, 0x10u) < 0)
      {
        v6 = 2;
      }

      else
      {
        if ((listen(*v4, a2) & 0x80000000) == 0)
        {
          *(v4 + 1) = 0;
          return v4;
        }

        v6 = 3;
      }

      *(v4 + 1) = v6;
    }
  }

  return v4;
}

unsigned __int8 *SocketCreateLocalServer(const char *a1, int a2)
{
  v4 = malloc_type_calloc(0x90uLL, 1uLL, 0x3F4FEB65uLL);
  if (v4)
  {
    if (!sSocketOldSignalHandler)
    {
      sSocketOldSignalHandler = signal(13, 1);
    }

    *(v4 + 2) = 1;
    v4[33] = 1;
    v5 = getuid();
    __sprintf_chk(v4 + 34, 0, 0x6EuLL, "/tmp/%s_%d", a1, v5);
    v4[32] = strlen(v4 + 34) + 2;
    v6 = socket(1, 1, 0);
    *v4 = v6;
    if (v6 < 0)
    {
      *(v4 + 1) = 1;
      return v4;
    }

    unlink(v4 + 34);
    if (bind(*v4, v4 + 2, v4[32]) < 0)
    {
      v7 = 2;
    }

    else
    {
      if ((listen(*v4, a2) & 0x80000000) == 0)
      {
        *(v4 + 1) = 0;
        return v4;
      }

      v7 = 3;
    }

    *(v4 + 1) = v7;
  }

  return v4;
}

sockaddr *SocketAccept(int *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[2];
  if (v2 != 1)
  {
    if (!v2)
    {
      v8 = 16;
      v3 = 0x102004092D5E0CCLL;
      v4 = 48;
      goto LABEL_7;
    }

    return 0;
  }

  v8 = 106;
  v3 = 0x102004031C32109;
  v4 = 144;
LABEL_7:
  v5 = malloc_type_calloc(v4, 1uLL, v3);
  if (v5)
  {
    v6 = accept(*a1, v5 + 2, &v8);
    *&v5->sa_len = v6;
    *&v5->sa_data[2] = (v6 >> 29) & 4;
    *&v5->sa_data[6] = 2;
  }

  return v5;
}

void *SocketConnect(const char *a1, unsigned int a2)
{
  v4 = malloc_type_calloc(0x30uLL, 1uLL, 0x102004092D5E0CCuLL);
  if (!v4)
  {
    return v4;
  }

  if (!sSocketOldSignalHandler)
  {
    sSocketOldSignalHandler = signal(13, 1);
  }

  *(v4 + 1) = 0;
  v5 = gethostbyname(a1);
  if (v5)
  {
    v6 = *v5->h_addr_list;
    h_length = v5->h_length;
    __memcpy_chk();
  }

  else
  {
    v19.fds_bits[0] = 0;
    if (inet_pton(2, a1, &v19) != 1)
    {
      *(v4 + 1) = 5;
      return v4;
    }

    *(v4 + 9) = v19.fds_bits[0];
  }

  *(v4 + 33) = 2;
  *(v4 + 17) = bswap32(a2) >> 16;
  v8 = socket(2, 1, 0);
  *v4 = v8;
  if (v8 < 0)
  {
    *(v4 + 1) = 1;
    return v4;
  }

  v9 = fcntl(v8, 4, 4);
  if (v9)
  {
    _SocketErrorCheckAndLogIfError("SocketConnect (fcntl to set non blocking for connect)", v9);
  }

  v10 = connect(*v4, v4 + 2, 0x10u);
  if ((v10 & 0x80000000) == 0)
  {
    return v4;
  }

  v11 = v10;
  if (*__error() != 36)
  {
    _SocketErrorCheckAndLogIfError("SocketConnect (connect)", v11);
    *v4 = 0x6FFFFFFFFLL;
    return v4;
  }

  v18 = xmmword_259AA24A0;
  memset(&v19, 0, sizeof(v19));
  v12 = *v4;
  if (__darwin_check_fd_set_overflow(*v4, &v19, 0))
  {
    *(v19.fds_bits + ((v12 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v12;
  }

  v13 = select(*v4 + 1, &v19, 0, 0, &v18);
  if (!v13)
  {
    v14 = "SocketConnect timeout on select";
LABEL_28:
    SocketLog(v14);
    goto LABEL_29;
  }

  if (v13 == -1)
  {
    _SocketErrorCheckAndLogIfError("SocketConnect (select)", 0xFFFFFFFFLL);
LABEL_29:
    *(v4 + 1) = 6;
LABEL_30:
    if (*v4 >= 1)
    {
      shutdown(*v4, 2);
      close(*v4);
      *v4 = 0;
    }

    return v4;
  }

  v15 = *v4;
  if (!__darwin_check_fd_set_overflow(*v4, &v19, 0) || ((*(v19.fds_bits + ((v15 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v15) & 1) == 0)
  {
    v14 = "SocketConnect: error connecting: read_fd not set";
    goto LABEL_28;
  }

  if (*(v4 + 1) == 6)
  {
    goto LABEL_30;
  }

  v16 = fcntl(*v4, 4, 0);
  if (v16)
  {
    _SocketErrorCheckAndLogIfError("SocketConnect (fcntl to set blocking for reads/writes)", v16);
  }

  return v4;
}

uint64_t _SocketErrorCheckAndLogIfError(const char *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2 <= 0)
  {
    if (a2)
    {
      v4 = *__error();
      v5 = __error();
      v6 = strerror(*v5);
      __sprintf_chk(v9, 0, 0x400uLL, "%s: error %d: %s", a1, v4, v6);
    }

    else
    {
      __strcpy_chk();
      __strcat_chk();
    }

    SocketLog(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t SocketLog(const char *a1)
{
  v2 = sSocketLogCallback;
  if (!sSocketLogCallback)
  {
    return fprintf(*MEMORY[0x277D85DF8], "%s\n", a1);
  }

  v3 = sSocketLogData;

  return v2(a1, v3);
}

unsigned __int8 *SocketConnectLocal(const char *a1)
{
  v2 = malloc_type_calloc(0x90uLL, 1uLL, 0x102004031C32109uLL);
  if (v2)
  {
    if (!sSocketOldSignalHandler)
    {
      sSocketOldSignalHandler = signal(13, 1);
    }

    *(v2 + 1) = 0;
    v3 = 1;
    v2[33] = 1;
    v4 = getuid();
    __sprintf_chk(v2 + 34, 0, 0x6EuLL, "/tmp/%s_%d", a1, v4);
    v2[32] = strlen(v2 + 34) + 2;
    v5 = socket(1, 1, 0);
    *v2 = v5;
    if (v5 < 0)
    {
      goto LABEL_7;
    }

    if (connect(v5, v2 + 2, v2[32]) < 0)
    {
      v3 = 6;
LABEL_7:
      *(v2 + 1) = v3;
    }
  }

  return v2;
}

void SocketDelete(void *a1)
{
  if (a1)
  {
    if (a1[3])
    {
      lockdown_disconnect();
    }

    free(a1);
  }
}

uint64_t SocketSend(uint64_t a1, const void *a2, size_t a3)
{
  processed[128] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v7 = "SocketSend called with NULL socketInfo";
LABEL_9:
    SocketLog(v7);
    result = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
    __sprintf_chk(processed, 0, 0x400uLL, "Skipping SocketSend of bytes, length %d <= 0", 0);
    v7 = processed;
    goto LABEL_9;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    processed[0] = -1;
    v5 = SSLWrite(v4, a2, a3, processed);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = LODWORD(processed[0]);
    }
  }

  else
  {
    v6 = send(*a1, a2, a3, 0);
  }

  _SocketErrorCheckAndLogIfError("SocketSend (data)", v6);
  result = v6;
LABEL_12:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SocketRecv(uint64_t a1, void *a2, size_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  bzero(v13, 0x400uLL);
  if (!a1)
  {
    v9 = "SocketSend called with NULL socketInfo";
LABEL_9:
    SocketLog(v9);
    result = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
    __sprintf_chk(v13, 0, 0x400uLL, "Skipping SocketRecv of bytes, length %d <= 0", 0);
    v9 = v13;
    goto LABEL_9;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    processed = -1;
    v7 = SSLRead(v6, a2, a3, &processed);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = processed;
    }
  }

  else
  {
    v8 = recv(*a1, a2, a3, 64);
  }

  _SocketErrorCheckAndLogIfError("SocketRecv (data)", v8);
  result = v8 & ~(v8 >> 31);
LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SocketStreamHandlerCreator(void *a1, CFTypeRef *a2)
{
  if (a1)
  {
    v4 = malloc_type_calloc(0x38uLL, 1uLL, 0xA0040AD9C97FEuLL);
    *v4 = SocketStreamHandlerAccept;
    v4[1] = SocketStreamHandlerConnect;
    v4[2] = SocketStreamHandlerClose;
    v4[3] = SocketStreamHandlerSend;
    v4[4] = SocketStreamHandlerReceive;
    v4[5] = SocketStreamHandlerDeleteStreamHandler;
    v4[6] = 0;
    *a1 = v4;
    SetSocketLogCallback(_SocketLogCallback, 0);
    return 0;
  }

  else
  {

    return DLSetStatus(4294967293, a2, @"SocketStreamHandlerCreator: No Stream Handler argument specified");
  }
}

uint64_t SocketStreamHandlerAccept(uint64_t a1, CFDictionaryRef theDict, CFTypeRef *a3)
{
  v6 = *(a1 + 48);
  if (v6)
  {
    SocketDelete(v6);
    *(a1 + 48) = 0;
  }

  Value = CFDictionaryGetValue(theDict, @"DLInfoPortKey");
  v8 = CFDictionaryGetValue(theDict, @"DLInfoSocketKey");
  v9 = CFDictionaryGetValue(theDict, @"DLInfoLockdownAccept");
  if (Value)
  {
    valuePtr = 0;
    if (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
    {
      Server = SocketCreateServer(valuePtr, 1);
      if (v9 && v9 != *MEMORY[0x277CBED10])
      {
        goto LABEL_7;
      }

LABEL_25:
      *(a1 + 48) = SocketAccept(Server);
      SocketDelete(Server);
      Server = *(a1 + 48);
      if (!Server)
      {
LABEL_28:
        v18 = @"SocketStreamHandlerAccept: error calling accept on socket";
        v19 = 0xFFFFFFFFLL;
        return DLSetStatus(v19, a3, v18);
      }

      goto LABEL_26;
    }

    v16 = CFStringCreateWithFormat(0, 0, @"SocketStreamHandlerAccept: Port in info dictionary is invalid: %@", Value);
LABEL_22:
    v18 = v16;
    v19 = 4294967293;
    return DLSetStatus(v19, a3, v18);
  }

  if (!v8)
  {

    return DLSetStatus(4294967293, a3, @"SocketStreamHandlerAccept: No port or socket in info dictionary");
  }

  v25 = 0;
  if (!CFNumberGetValue(v8, kCFNumberIntType, &v25))
  {
    v16 = CFStringCreateWithFormat(0, 0, @"SocketStreamHandlerAccept: Socket in info dictionary is invalid: %@", v8);
    goto LABEL_22;
  }

  Server = SocketCreateServerWithSocket(v25);
  if (!v9 || v9 == *MEMORY[0x277CBED10])
  {
    if (DLShouldLog(4))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/SocketStreamHandler.c", "SocketStreamHandlerAccept", 4, @"Not using lockdown", v20, v21, v22, v23, v24);
    }

    goto LABEL_25;
  }

  v11 = CFDictionaryGetValue(theDict, @"DLInfoLockdownConnection");
  if (v11)
  {
    CFNumberGetValue(v11, kCFNumberNSIntegerType, Server + 6);
    if (*(Server + 3))
    {
      *(Server + 2) = lockdown_get_securecontext();
      if (DLShouldLog(6))
      {
        _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/SocketStreamHandler.c", "SocketStreamHandlerAccept", 6, @"Using SSL. SSL pointer is %p (lockConn: %@)", v12, v13, v14, v15, *(Server + 2));
      }
    }
  }

LABEL_7:
  *(a1 + 48) = Server;
  if (!Server)
  {
    goto LABEL_28;
  }

LABEL_26:
  if (Server[1])
  {
    SocketDelete(Server);
    *(a1 + 48) = 0;
    goto LABEL_28;
  }

  return 0;
}

uint64_t SocketStreamHandlerConnect(uint64_t a1, CFDictionaryRef theDict, CFTypeRef *a3)
{
  valuePtr = 0;
  v6 = *(a1 + 48);
  if (v6)
  {
    SocketDelete(v6);
    *(a1 + 48) = 0;
  }

  Value = CFDictionaryGetValue(theDict, @"DLInfoHostnameKey");
  v8 = CFDictionaryGetValue(theDict, @"DLInfoPortKey");
  v9 = CFDictionaryGetValue(theDict, @"DLInfoServiceNameKey");
  if (!CFDictionaryGetValue(theDict, @"DLInfoMuxDeviceIdKey"))
  {
    if (!Value)
    {
      v11 = @"SocketStreamHandlerConnect: No mux device id, AMDeviceRef, or hostname in info dictionary";
      goto LABEL_6;
    }

    v13 = DLCreateCStringFromCFString(Value);
    if (!v13)
    {
      v10 = CFStringCreateWithFormat(0, 0, @"SocketStreamHandlerConnect: Hostname in info dictionary is invalid: %@", Value);
      goto LABEL_5;
    }

    v14 = v13;
    if (v8)
    {
      if (!CFNumberGetValue(v8, kCFNumberIntType, &valuePtr))
      {
        v19 = CFStringCreateWithFormat(0, 0, @"SocketStreamHandlerConnect: Port in info dictionary is invalid: %@", v8);
        v20 = 4294967293;
        return DLSetStatus(v20, a3, v19);
      }

      v15 = valuePtr;
    }

    else
    {
      if (!v9)
      {
        v11 = @"SocketStreamHandlerConnect: No port/service in info dictionary";
        goto LABEL_6;
      }

      v15 = 0;
    }

    v16 = SocketConnect(v14, v15);
    *(a1 + 48) = v16;
    if (v16)
    {
      v17 = v16[1];
      if (!v17)
      {
        return 0;
      }

      v18 = (&SocketErrorStrings)[v17];
      SocketDelete(v16);
      *(a1 + 48) = 0;
      if (v17 == 9)
      {
        v19 = @"SocketStreamHandlerConnect: Cannot connect - the device is locked";
        v20 = 4294967291;
        return DLSetStatus(v20, a3, v19);
      }

      if (v17 == 8)
      {
        v19 = @"SocketStreamHandlerConnect: Cannot connect - we are not paired with this device";
        v20 = 4294967292;
        return DLSetStatus(v20, a3, v19);
      }

      v21 = CFStringCreateWithFormat(0, 0, @"SocketStreamHandlerConnect: Can't connect to host: Socket error %d (%s)", v17, v18);
    }

    else
    {
      v21 = CFStringCreateWithFormat(0, 0, @"SocketStreamHandlerConnect: Can't create socket");
    }

    v19 = v21;
    v20 = 0xFFFFFFFFLL;
    return DLSetStatus(v20, a3, v19);
  }

  v10 = CFStringCreateWithFormat(0, 0, @"SocketStreamHandlerConnect: Connection via direct usbmux is deprecated.");
LABEL_5:
  v11 = v10;
LABEL_6:

  return DLSetStatus(4294967293, a3, v11);
}

uint64_t SocketStreamHandlerClose(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    SocketDelete(v2);
    *(a1 + 48) = 0;
  }

  return 0;
}

uint64_t SocketStreamHandlerSend(uint64_t a1, const void *a2, size_t *a3, CFStringRef *a4)
{
  v6 = SocketSend(*(a1 + 48), a2, *a3);
  if (v6 <= 0)
  {
    if (a4)
    {
      *a4 = CFStringCreateWithFormat(0, 0, @"Can't send data");
    }

    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t SocketStreamHandlerReceive(uint64_t a1, void *a2, size_t *a3, CFStringRef *a4)
{
  v6 = SocketRecv(*(a1 + 48), a2, *a3);
  if (v6 < 1)
  {
    *a3 = 0;
    if (a4)
    {
      *a4 = CFStringCreateWithFormat(0, 0, @"Can't read data");
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
    result = 0;
    *a3 = v7;
  }

  return result;
}

uint64_t SocketStreamHandlerDeleteStreamHandler(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    SocketDelete(v2);
  }

  free(a1);
  return 0;
}

void _SocketLogCallback(char *cStr)
{
  v1 = CFStringCreateWithCString(0, cStr, 0);
  if (DLShouldLog(3))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/SocketStreamHandler.c", "_SocketLogCallback", 3, v1, v2, v3, v4, v5, v6);
  }

  CFRelease(v1);
}

uint64_t StreamHandlerRegisterCreatorForType(void *key, void *value, CFTypeRef *a3)
{
  if (value)
  {
    Mutable = sStreamHandlers;
    if (!sStreamHandlers)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], 0);
      sStreamHandlers = Mutable;
    }

    CFDictionarySetValue(Mutable, key, value);
    return 0;
  }

  else
  {

    return DLSetStatus(4294967293, a3, @"Creator function is NULL");
  }
}

uint64_t StreamHandlerForType(void *key, uint64_t a2, CFTypeRef *a3)
{
  if ((sInitializedStreamHandlers & 1) == 0)
  {
    result = SocketStreamHandlerRegisterCreator(a3);
    if (result)
    {
      return result;
    }

    sInitializedStreamHandlers = 1;
  }

  if (key)
  {
    if (a2)
    {
      if (sStreamHandlers && (Value = CFDictionaryGetValue(sStreamHandlers, key)) != 0)
      {

        return Value(a2, a3);
      }

      else
      {
        v9 = CFStringCreateWithFormat(0, 0, @"StreamHandler is not registered for %@", key);
        if (a3)
        {
          *a3 = v9;
        }

        else if (v9)
        {
          CFRelease(v9);
        }

        return 0xFFFFFFFFLL;
      }
    }

    v8 = @"Out parameter for streamHandler is NULL";
  }

  else
  {
    v8 = @"Parameter for type is NULL";
  }

  return DLSetStatus(4294967293, a3, v8);
}

uint64_t StreamHandlerAccept(uint64_t (**a1)(void), int a2, CFTypeRef *a3)
{
  if (a1)
  {
    return (*a1)();
  }

  else
  {
    return DLSetStatus(4294967293, a3, @"StreamHandler is NULL");
  }
}

uint64_t StreamHandlerConnect(uint64_t a1, int a2, CFTypeRef *a3)
{
  if (a1)
  {
    return (*(a1 + 8))();
  }

  else
  {
    return DLSetStatus(4294967293, a3, @"StreamHandler is NULL");
  }
}

uint64_t StreamHandlerClose(uint64_t a1, CFTypeRef *a2)
{
  if (a1)
  {
    return (*(a1 + 16))();
  }

  else
  {
    return DLSetStatus(4294967293, a2, @"StreamHandler is NULL");
  }
}

uint64_t StreamHandlerSend(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4, CFTypeRef *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a1)
  {
    v15 = bswap32(a3);
    v14 = 0;
    v10 = 4;
    do
    {
      if (_Write(a1, &v15 - v10 + 4, v10, &v14))
      {
        v13 = @"Error writing length of data";
        return DLSetStatus(0xFFFFFFFFLL, a5, v13);
      }

      v10 -= v14;
    }

    while (v10);
    if (a3)
    {
      v11 = a3;
      while (!_Write(a1, a2 + a3 - v11, v11, &v14))
      {
        v11 -= v14;
        if (!v11)
        {
          goto LABEL_11;
        }
      }

      v13 = @"Error writing data";
      return DLSetStatus(0xFFFFFFFFLL, a5, v13);
    }

LABEL_11:
    result = 0;
    if (a4)
    {
      *a4 = a3;
    }
  }

  else
  {

    return DLSetStatus(4294967293, a5, @"StreamHandler is NULL");
  }

  return result;
}

uint64_t _Write(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = a3;
  cf = 0;
  result = (*(a1 + 24))(a1, a2, &v10, &cf);
  if (result)
  {
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/StreamHandler.c", "_WriteFunc", 3, @"Error sending data: %@", v6, v7, v8, v9, cf);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    result = 0xFFFFFFFFLL;
  }

  if (a4)
  {
    *a4 = v10;
  }

  return result;
}

uint64_t StreamHandlerReceive(uint64_t a1, CFDataRef *a2, CFTypeRef *a3)
{
  if (!a1)
  {
    v12 = @"StreamHandler is NULL";
LABEL_13:

    return DLSetStatus(4294967293, a3, v12);
  }

  if (!a2)
  {
    v12 = @"Data is NULL";
    goto LABEL_13;
  }

  v14 = 0;
  v13 = 0;
  v5 = 4;
  *a2 = 0;
  while (!_Read(a1, &v14 - v5 + 4, v5, &v13))
  {
    v5 -= v13;
    if (!v5)
    {
      v6 = v14;
      v7 = bswap32(v14);
      v8 = malloc_type_malloc(v7, 0x4E967EDuLL);
      if (!v6)
      {
LABEL_10:
        v10 = DLDataCreateWithMallocedBytesNoCopy(v8, v7);
        result = 0;
        *a2 = v10;
        return result;
      }

      v9 = v7;
      while (!_Read(a1, &v8[v7 - v9], v9, &v13))
      {
        v9 -= v13;
        if (!v9)
        {
          goto LABEL_10;
        }
      }

      free(v8);
      return 0xFFFFFFFFLL;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t _Read(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = a3;
  cf = 0;
  result = (*(a1 + 32))(a1, a2, &v10, &cf);
  if (result)
  {
    if (DLShouldLog(3))
    {
      _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/StreamHandler.c", "_ReadFunc", 3, @"Error reading data: %@", v6, v7, v8, v9, cf);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    result = 0xFFFFFFFFLL;
  }

  if (a4)
  {
    *a4 = v10;
  }

  return result;
}

uint64_t StreamHandlerDeleteStreamHandler(uint64_t a1, CFTypeRef *a2)
{
  if (a1)
  {
    return (*(a1 + 40))();
  }

  else
  {
    return DLSetStatus(4294967293, a2, @"StreamHandler is NULL");
  }
}

void _DLHandlerThreadMessagePortCallback_cold_1()
{
  if (DLShouldLog(3))
  {
    _DLLog("/Library/Caches/com.apple.xbs/Sources/DeviceLink/WireProtocol/DeviceLinkConnection.c", "_DLWriteFileBytes", 3, @"Could not finalize encryption. Our buffer is too small", v0, v1, v2, v3, vars0);
  }

  __assert_rtn("_DLWriteFileBytes", "DeviceLinkConnection.c", 920, "false");
}

void DLLockdownXPCCheckin_cold_1(int a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_259A8F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "lockdown_checkin_xpc failed: %d", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

void DLLockdownXPCCheckin_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 134217984;
  v2 = 600;
  _os_log_error_impl(&dword_259A8F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "lockdown_checkin_xpc timed out after %llds", &v1, 0xCu);
  v0 = *MEMORY[0x277D85DE8];
}

void _DLMainThreadMessagePortCallback_cold_1(const __CFArray *a1)
{
  _DLGetParameterAtIndexWithDefaultValue(a1, 1, 0);
  _DLGetParameterAtIndexWithDefaultValue(a1, 2, 0);
  abort();
}

CFStreamError CFReadStreamGetError(CFReadStreamRef stream)
{
  v1 = MEMORY[0x28210F9B8](stream);
  result.error = v2;
  result.domain = v1;
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFStreamError CFWriteStreamGetError(CFWriteStreamRef stream)
{
  v1 = MEMORY[0x282110188](stream);
  result.error = v2;
  result.domain = v1;
  return result;
}