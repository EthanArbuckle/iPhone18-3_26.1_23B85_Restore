void sub_259A55268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_259A57878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t parseSuperBinaryHeader(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a3 && a1 && a2 >= 0x10)
  {
    *a3 = *a1;
    *(a3 + 1) = *(a1 + 1);
    *(a3 + 2) = *(a1 + 2);
    *(a3 + 4) = *(a1 + 4);
    *(a3 + 8) = *(a1 + 8);
    *(a3 + 12) = *(a1 + 12);
    *(a3 + 16) = 0;
    return 1;
  }

  return v3;
}

_BYTE *parseSuperBinaryAndPayloadHeaders(char *a1, unint64_t a2)
{
  result = 0;
  if (a1 && a2 >= 0x10)
  {
    v4 = *(a1 + 2);
    if (v4 < 0x24)
    {
      return 0;
    }

    v5 = (v4 - 16) / 0x14;
    if ((v4 - 16) % 0x14)
    {
      return 0;
    }

    result = 0;
    v6 = *(a1 + 3);
    if (v6 > v4 && *(a1 + 1) == 16)
    {
      v7 = *a1;
      v8 = a1[1];
      v9 = *(a1 + 1);
      result = malloc_type_malloc(20 * (v5 - 1) + 40, 0x100004090BE4F35uLL);
      if (result)
      {
        v10 = 0;
        *result = v7;
        result[1] = v8;
        *(result + 1) = v9;
        *(result + 1) = 16;
        *(result + 2) = v4;
        *(result + 3) = v6;
        *(result + 1) = 0uLL;
        *(result + 4) = 0;
        v11 = 20;
        *(result + 8) = v5;
        while (1)
        {
          v12 = &result[20 * v10 + 20];
          *v12 = *&a1[v11 - 4];
          *(v12 + 4) = a1[v11] | (a1[v11 + 1] << 8) | (a1[v11 + 2] << 16) | (a1[v11 + 3] << 24);
          *(v12 + 8) = a1[v11 + 4];
          *(v12 + 9) = a1[v11 + 5];
          *(v12 + 10) = a1[v11 + 6] | (a1[v11 + 7] << 8);
          v13 = a1[v11 + 8] | (a1[v11 + 9] << 8) | (a1[v11 + 10] << 16) | (a1[v11 + 11] << 24);
          *(v12 + 12) = v13;
          v14 = a1[v11 + 12] | (a1[v11 + 13] << 8) | (a1[v11 + 14] << 16) | (a1[v11 + 15] << 24);
          *(v12 + 16) = v14;
          LODWORD(v12) = *(result + 3);
          v15 = v12 >= v14;
          v16 = v12 - v14;
          if (v16 == 0 || !v15 || v16 < v13 || v13 < v4)
          {
            break;
          }

          v4 = v14 + v13;
          ++v10;
          v11 += 20;
          if (v5 <= v10)
          {
            return result;
          }
        }

        free(result);
        return 0;
      }
    }
  }

  return result;
}

uint64_t printSuperBinaryHeader(FILE *a1, unsigned __int8 *a2)
{
  result = fprintf(a1, "SuperBinaryHeader\n\tVersion = %d.%d.%d\n\tHdrOff  = %08x\n\tHdrLen  = %d\n\tLength  = %d\n\tPloads  = %d\n\n", *a2, a2[1], *(a2 + 1), *(a2 + 1), *(a2 + 2), *(a2 + 3), *(a2 + 8));
  if (*(a2 + 8))
  {
    v5 = 0;
    v6 = (a2 + 20);
    do
    {
      result = fprintf(a1, "\tPayloadHeader\n\t\tTag     = %c%c%c%c\n\t\tVersion = %d.%d.%d\n\t\tFlags   = %08x\n\t\tOff     = %08x\n\t\tLen     = %d\n", *v6, v6[1], v6[2], v6[3], v6[8], v6[9], *(v6 + 5), *(v6 + 1), *(v6 + 3), *(v6 + 4));
      ++v5;
      v6 += 20;
    }

    while (v5 < *(a2 + 8));
  }

  return result;
}

uint64_t AUSandboxPlatformInitWithBundleIdentifierHomeDirectory(NSObject *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x277D86220];
  }

  bzero(v4, 0x400uLL);
  if (_set_user_dir_suffix())
  {
    if (confstr(65537, v4, 0x400uLL))
    {
      result = 0;
      goto LABEL_12;
    }

    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      AUSandboxPlatformInitWithBundleIdentifierHomeDirectory_cold_2();
    }
  }

  else if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    AUSandboxPlatformInitWithBundleIdentifierHomeDirectory_cold_1();
  }

  result = 1;
LABEL_12:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

uint64_t MAUError(int a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v4;
  if (a2)
  {
    [v4 setObject:a2 forKey:*MEMORY[0x277CCA450]];
  }

  v6 = MEMORY[0x277CCA9B8];

  return [v6 errorWithDomain:@"com.apple.MobileAccessoryUpdater" code:a1 userInfo:v5];
}

uint64_t archivedKeyedData(uint64_t a1, uint64_t a2)
{
  v4 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v4 encodeObject:a2 forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", a1)}];
  v5 = [v4 encodedData];

  return v5;
}

uint64_t unarchivedKeyedObject(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  v3 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:a2 error:&v21];
  [v3 setDecodingFailurePolicy:0];
  if (v3)
  {
    v10 = v21 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v11 = [v3 decodeObjectOfClasses:objc_msgSend(v12 forKey:{"setWithObjects:", v13, v14, v15, v16, v17, v18, objc_opt_class(), 0), objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", a1)}];
    [v3 finishDecoding];
  }

  else
  {
    FudLog(3, @"Failed to create unarchiver object", v4, v5, v6, v7, v8, v9, v20);
    return 0;
  }

  return v11;
}

uint64_t objectFromXpcDictionary(void *a1, const char *a2)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, a2, &length);
  if (!data)
  {
    return 0;
  }

  v4 = data;
  v5 = objc_alloc(MEMORY[0x277CBEA90]);
  v6 = [v5 initWithBytes:v4 length:length];
  v7 = unarchivedKeyedObject(a2, v6);

  return v7;
}

void dumpXPCObject()
{
  v0 = MEMORY[0x259CA9DD0]();
  if (v0)
  {
    v7 = v0;
    FudLog(7, @"Dumping xpc object: %s", v1, v2, v3, v4, v5, v6, v0);

    free(v7);
  }
}

uint64_t FUDError(int a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v4;
  if (a2)
  {
    [v4 setObject:a2 forKey:*MEMORY[0x277CCA450]];
  }

  v6 = MEMORY[0x277CCA9B8];

  return [v6 errorWithDomain:@"com.apple.MobileAccessoryUpdater.fud" code:a1 userInfo:v5];
}

void addObjectToXpcDictionary(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = archivedKeyedData(a2, a3);
    v6 = [v5 bytes];
    v7 = [v5 length];

    xpc_dictionary_set_data(a1, a2, v6, v7);
  }
}

void objectFinalizer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    FudLog(5, @"Releasing xpc context:%@", a3, a4, a5, a6, a7, a8, a1);
  }
}

__CFString *getOperationNameFromCode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 - 100;
  result = @"Session";
  switch(v9)
  {
    case 0:
      return @"Accessory Attached";
    case 1:
      return @"Accessory Detached";
    case 7:
      return result;
    case 8:
      v11 = kMAU_STEP_BOOTSTRAP;
      goto LABEL_15;
    case 9:
      v11 = kMAU_STEP_FIND;
      goto LABEL_15;
    case 10:
      v11 = kMAU_STEP_DOWNLOAD;
      goto LABEL_15;
    case 11:
      v11 = kMAU_STEP_PREPARE;
      goto LABEL_15;
    case 12:
      v11 = kMAU_STEP_APPLY;
      goto LABEL_15;
    case 13:
      v11 = kMAU_STEP_FINISH;
      goto LABEL_15;
    case 14:
      v11 = kMAU_STEP_CONTINUE;
      goto LABEL_15;
    case 15:
      v11 = kMAU_STEP_END;
      goto LABEL_15;
    case 18:
      v11 = kMAU_STEP_DONE;
      goto LABEL_15;
    case 19:
      v11 = kMAU_STEP_AU_NOTIFICATION;
LABEL_15:
      result = *v11;
      break;
    default:
      FudLog(3, @"Unknown operation: %d", a3, a4, a5, a6, a7, a8, a1);
      result = 0;
      break;
  }

  return result;
}

uint64_t sendReplyMessageToExternalClient(void *a1, xpc_object_t xdict, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (xdict)
    {
      remote_connection = xpc_dictionary_get_remote_connection(xdict);
      if (remote_connection)
      {
        xpc_connection_send_message(remote_connection, a1);
        return 1;
      }

      v11 = @"Failed to get xpc connection from replyTo dict";
    }

    else
    {
      v11 = @"Can't reply to NULL message";
    }
  }

  else
  {
    v11 = @"Can't send NULL xpc message";
  }

  FudLog(3, v11, a3, a4, a5, a6, a7, a8, v12);
  return 0;
}

uint64_t sendMessageToExternalClient(_xpc_connection_s *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a2)
    {
      xpc_connection_send_message(a1, a2);
      return 1;
    }

    v9 = @"Can't send NULL message";
  }

  else
  {
    v9 = @"Can't send message to NULL connection";
  }

  FudLog(3, v9, a3, a4, a5, a6, a7, a8, vars0);
  return 0;
}

uint64_t clientHasEntitlement(const __CFString *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  FudLog(7, @"Checking for entitlement %@", a3, a4, a5, a6, a7, a8, a1);
  v10 = *MEMORY[0x277CBECE8];
  v11 = a2[1];
  *token.val = *a2;
  *&token.val[4] = v11;
  v12 = SecTaskCreateWithAuditToken(v10, &token);
  if (!v12)
  {
    FudLog(3, @"Failed to get task for audit token", v13, v14, v15, v16, v17, v18, v37);
    return 0;
  }

  v19 = v12;
  FudLog(7, @"Got SecTaskRef task, copying entitlementValue", v13, v14, v15, v16, v17, v18, v37);
  *token.val = 0;
  v20 = SecTaskCopyValueForEntitlement(v19, a1, &token);
  if (*token.val)
  {
    FudLog(3, @"Failed to copy value for entitlement %@: Error: %@", v21, v22, v23, v24, v25, v26, a1);
    CFRelease(*token.val);
    CFRelease(v19);
    return 0;
  }

  v28 = v20;
  FudLog(7, @"Checking isEntitled", v21, v22, v23, v24, v25, v26, v38);
  if (v28)
  {
    v29 = CFGetTypeID(v28);
    v27 = v29 == CFBooleanGetTypeID() && CFEqual(v28, *MEMORY[0x277CBED28]) != 0;
    CFRelease(v28);
  }

  else
  {
    v27 = 0;
  }

  CFRelease(v19);
  FudLog(7, @"isEntitled = %d", v30, v31, v32, v33, v34, v35, v27);
  return v27;
}

uint64_t FudLogger()
{
  if (FudLogger_onceToken != -1)
  {
    FudLogger_cold_1();
  }

  return __osl;
}

os_log_t __FudLogger_block_invoke()
{
  result = os_log_create("com.apple.mobileaccessoryupdater", "default");
  __osl = result;
  return result;
}

void FudLogv(int a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:a2 arguments:a3), "cStringUsingEncoding:", 4];
  if (a1 <= 7 && __earlyBootMode)
  {
    v5 = getprogname();
    printf("%s: %s\n", v5, v4);
  }

  else if (a1 == 7)
  {
    if (FudLogger_onceToken != -1)
    {
      FudLogger_cold_1();
    }

    v6 = __osl;
    if (os_log_type_enabled(__osl, OS_LOG_TYPE_DEBUG))
    {
      FudLogv_cold_7(v4, v6);
    }
  }

  else if (a1 < 4)
  {
    if (a1 == 3)
    {
      if (FudLogger_onceToken != -1)
      {
        FudLogger_cold_1();
      }

      v8 = __osl;
      if (os_log_type_enabled(__osl, OS_LOG_TYPE_ERROR))
      {
        FudLogv_cold_4(v4, v8);
      }
    }

    else
    {
      if (FudLogger_onceToken != -1)
      {
        FudLogger_cold_1();
      }

      v9 = __osl;
      if (os_log_type_enabled(__osl, OS_LOG_TYPE_FAULT))
      {
        FudLogv_cold_2(v4, v9);
      }
    }
  }

  else
  {
    if (FudLogger_onceToken != -1)
    {
      FudLogger_cold_1();
    }

    v7 = __osl;
    if (os_log_type_enabled(__osl, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = v4;
      _os_log_impl(&dword_259A54000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void *FudLogCopyMessages()
{
  v0 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  [v0 appendFormat:@"SORRY... NO LONGER SUPPORTED\n"];
  return v0;
}

uint64_t updateSuperBinaryPayload(uint64_t a1, unint64_t a2, uint64_t a3, void *__src, size_t __n)
{
  v5 = 0;
  if (a1 && a3)
  {
    v6 = __n;
    v7 = *(a3 + 12);
    if (a2 >= 0x10 && v7 + __n <= a2)
    {
      v9 = *(a1 + 4);
      v10 = *(a1 + 8) - v9;
      if (v10 >= 0x14)
      {
        v11 = 0;
        v12 = v10 / 0x14;
        while (v9 + 20 < a2)
        {
          v13 = a1 + v9;
          if (*(v13 + 12) == v7)
          {
            if (*(v13 + 16) < __n)
            {
              return 0;
            }

            memcpy((a1 + v7), __src, __n);
            *(v13 + 16) = v6;
            return 1;
          }

          ++v11;
          v9 += 20;
          if (v12 <= v11)
          {
            return 0;
          }
        }
      }
    }

    return 0;
  }

  return v5;
}

uint64_t metadataTLVGetNext(_DWORD *a1, unint64_t a2, _DWORD *a3, unsigned int *a4, void *a5, void *a6)
{
  result = 0;
  if (a1)
  {
    if (a1 < a2)
    {
      result = 0;
      if (a3)
      {
        if (a4 && a5 && a6)
        {
          if (((a2 - a1) & 0xFFFFFFF8) != 0 && (*a3 = *a1, v8 = a1[1], *a4 = v8, v9 = a2 - a1 - 8, v9 >= v8))
          {
            v10 = a1 + 2;
            if (v8)
            {
              v11 = v10;
            }

            else
            {
              v11 = 0;
            }

            *a5 = v11;
            v12 = v10 + v8;
            if (v9 == v8)
            {
              v12 = 0;
            }

            *a6 = v12;
            return 1;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void AUSandboxPlatformInitWithBundleIdentifierHomeDirectory_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_0_0(&dword_259A54000, v1, v2, "failed to set temporary directory suffix: %d", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

void AUSandboxPlatformInitWithBundleIdentifierHomeDirectory_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_0_0(&dword_259A54000, v1, v2, "failed to initialize temporary directory: %d", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

FudProgressWeights *getProgressWeightsFromPluginInfo(FudProgressWeights *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [(FudProgressWeights *)a1 objectForKey:@"PrepareWeight"];
    if (v2 && ([v2 floatValue], v4 = v3, (v5 = -[FudProgressWeights objectForKey:](v1, "objectForKey:", @"ApplyWeight")) != 0) && (objc_msgSend(v5, "floatValue"), v7 = v6, (v8 = -[FudProgressWeights objectForKey:](v1, "objectForKey:", @"FinishWeight")) != 0))
    {
      [v8 floatValue];
      v10 = v9;
      v11 = [FudProgressWeights alloc];
      LODWORD(v12) = v4;
      LODWORD(v13) = v7;
      LODWORD(v14) = v10;
      v15 = [(FudProgressWeights *)v11 initWithPrepareWeight:v12 applyWeight:v13 finishWeight:v14];
      v1 = v15;
      if (v15)
      {
        v22 = v15;
      }

      else
      {
        FudLog(3, @"Failed to create progress weights with input weights", v16, v17, v18, v19, v20, v21, v24);
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

void FudLogv_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = a1;
  _os_log_fault_impl(&dword_259A54000, a2, OS_LOG_TYPE_FAULT, "%s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void FudLogv_cold_4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = a1;
  _os_log_error_impl(&dword_259A54000, a2, OS_LOG_TYPE_ERROR, "%s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void FudLogv_cold_7(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = a1;
  _os_log_debug_impl(&dword_259A54000, a2, OS_LOG_TYPE_DEBUG, "%s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}