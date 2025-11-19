id SYServiceDataPath()
{
  v0 = +[SYDevice targetableDevice];
  v1 = [v0 pairingStorePath];
  v2 = [v1 stringByAppendingPathComponent:@"CompanionSync"];

  return v2;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void OUTLINED_FUNCTION_2_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

BOOL OUTLINED_FUNCTION_6_0()
{

  return os_log_type_enabled(v0, 0x90u);
}

void OUTLINED_FUNCTION_6_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t _SYAutoTruncateHook(int a1, sqlite3 *db, uint64_t a3, int a4)
{
  if (a4 >= 1000)
  {
    sqlite3_wal_checkpoint_v2(db, 0, 3, 0, 0);
  }

  return 0;
}

void sub_1DF8374E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SYRequestFullSyncReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SYMessageHeader);
        objc_storeStrong((a1 + 8), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !SYMessageHeaderReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
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

    v14 = PBReaderReadString();
    v13 = *(a1 + 16);
    *(a1 + 16) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

void SYLogSQLiteExtendedErrorCode(int a1)
{
  if (a1 >= 102)
  {
    if (a1 <= 0xAu)
    {
      if (a1 <= 5u)
      {
        if (a1 == 4)
        {
          if (_sync_log_facilities_pred != -1)
          {
            SYLogSQLiteExtendedErrorCode_cold_1();
          }

          if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
          {
            SYLogSQLiteExtendedErrorCode_cold_10();
          }
        }

        else if (a1 == 5)
        {
          if (_sync_log_facilities_pred != -1)
          {
            SYLogSQLiteExtendedErrorCode_cold_1();
          }

          if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
          {
            SYLogSQLiteExtendedErrorCode_cold_18();
          }
        }
      }

      else
      {
        switch(a1)
        {
          case 6u:
            if (_sync_log_facilities_pred != -1)
            {
              SYLogSQLiteExtendedErrorCode_cold_1();
            }

            if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
            {
              SYLogSQLiteExtendedErrorCode_cold_20();
            }

            break;
          case 8u:
            if (_sync_log_facilities_pred != -1)
            {
              SYLogSQLiteExtendedErrorCode_cold_1();
            }

            if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
            {
              SYLogSQLiteExtendedErrorCode_cold_12(a1);
            }

            break;
          case 0xAu:
            if (_sync_log_facilities_pred != -1)
            {
              SYLogSQLiteExtendedErrorCode_cold_1();
            }

            if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
            {
              SYLogSQLiteExtendedErrorCode_cold_22(a1);
            }

            break;
        }
      }
    }

    else if (a1 > 0x16u)
    {
      switch(a1)
      {
        case 0x17u:
          if (_sync_log_facilities_pred != -1)
          {
            SYLogSQLiteExtendedErrorCode_cold_1();
          }

          if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
          {
            SYLogSQLiteExtendedErrorCode_cold_2();
          }

          break;
        case 0x1Bu:
          if (_sync_log_facilities_pred != -1)
          {
            SYLogSQLiteExtendedErrorCode_cold_1();
          }

          if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
          {
            SYLogSQLiteExtendedErrorCode_cold_6();
          }

          break;
        case 0x1Cu:
          if (_sync_log_facilities_pred != -1)
          {
            SYLogSQLiteExtendedErrorCode_cold_1();
          }

          if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
          {
            SYLogSQLiteExtendedErrorCode_cold_4();
          }

          break;
      }
    }

    else
    {
      switch(a1)
      {
        case 0xBu:
          if (_sync_log_facilities_pred != -1)
          {
            SYLogSQLiteExtendedErrorCode_cold_1();
          }

          if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
          {
            SYLogSQLiteExtendedErrorCode_cold_14();
          }

          break;
        case 0xEu:
          if (_sync_log_facilities_pred != -1)
          {
            SYLogSQLiteExtendedErrorCode_cold_1();
          }

          if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
          {
            SYLogSQLiteExtendedErrorCode_cold_16(a1);
          }

          break;
        case 0x13u:
          if (_sync_log_facilities_pred != -1)
          {
            SYLogSQLiteExtendedErrorCode_cold_1();
          }

          if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
          {
            SYLogSQLiteExtendedErrorCode_cold_8(a1);
          }

          break;
      }
    }
  }
}

const char *_SQLiteIOError(int a1)
{
  HIDWORD(v2) = a1 - 266;
  LODWORD(v2) = a1 - 266;
  v1 = v2 >> 8;
  if (v1 > 0x1B)
  {
    return "";
  }

  else
  {
    return off_1E86C9CC8[v1];
  }
}

const char *_SQLiteConstraintError(int a1)
{
  HIDWORD(v2) = a1 - 275;
  LODWORD(v2) = a1 - 275;
  v1 = v2 >> 8;
  if (v1 > 9)
  {
    return "";
  }

  else
  {
    return off_1E86C9DA8[v1];
  }
}

id NSErrorFromSQLiteError(int a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errstr(a1)];
  if (a1 >= 102)
  {
    if (a1 <= 0xAu)
    {
      if (a1 <= 5u)
      {
        if (a1 == 4)
        {
          v4 = "";
          v5 = "Abort error: ROLLBACK";
          v6 = a1 == 516;
        }

        else
        {
          if (a1 != 5)
          {
            goto LABEL_39;
          }

          v4 = "";
          if (a1 == 517)
          {
            v4 = "Busy error: SNAPSHOT";
          }

          v5 = "Busy error: RECOVERY";
          v6 = a1 == 261;
        }
      }

      else
      {
        if (a1 != 6)
        {
          if (a1 != 8)
          {
            if (a1 != 10)
            {
              goto LABEL_39;
            }

            v3 = _SQLiteIOError(a1);
            goto LABEL_38;
          }

          HIDWORD(v8) = a1 - 264;
          LODWORD(v8) = a1 - 264;
          v7 = v8 >> 8;
          if (v7 < 4)
          {
            v9 = off_1E86C9E18;
LABEL_27:
            v3 = v9[v7];
LABEL_38:
            v11 = [v2 stringByAppendingFormat:@" - %s", v3];

            v2 = v11;
            goto LABEL_39;
          }

LABEL_28:
          v3 = "";
          goto LABEL_38;
        }

        v4 = "";
        v5 = "Lock error: SHAREDCACHE";
        v6 = a1 == 262;
      }
    }

    else if (a1 > 0x16u)
    {
      switch(a1)
      {
        case 0x17u:
          v4 = "";
          v5 = "Auth error: USER";
          v6 = a1 == 279;
          break;
        case 0x1Bu:
          v4 = "";
          if (a1 == 539)
          {
            v4 = "Notice: RECOVER_ROLLBACK";
          }

          v5 = "Notice: RECOVER_WAL";
          v6 = a1 == 283;
          break;
        case 0x1Cu:
          v4 = "";
          v5 = "Warning: AUTOINDEX";
          v6 = a1 == 284;
          break;
        default:
          goto LABEL_39;
      }
    }

    else
    {
      if (a1 != 11)
      {
        if (a1 != 14)
        {
          if (a1 != 19)
          {
            goto LABEL_39;
          }

          v3 = _SQLiteConstraintError(a1);
          goto LABEL_38;
        }

        HIDWORD(v10) = a1 - 270;
        LODWORD(v10) = a1 - 270;
        v7 = v10 >> 8;
        if (v7 < 4)
        {
          v9 = off_1E86C9DF8;
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      v4 = "";
      v5 = "Corrupt error: VTAB";
      v6 = a1 == 267;
    }

    if (v6)
    {
      v3 = v5;
    }

    else
    {
      v3 = v4;
    }

    goto LABEL_38;
  }

LABEL_39:
  v12 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E696A578];
  v18[0] = v2;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v14 = [v12 initWithDomain:@"SQLiteErrorDomain" code:a1 userInfo:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

uint64_t _sync_log_facilities_init()
{
  v0 = os_log_create("com.apple.companionsync", "general");
  v1 = _sync_log_facilities;
  _sync_log_facilities = v0;

  v2 = os_log_create("com.apple.companionsync", "session");
  v3 = qword_1EDE73420;
  qword_1EDE73420 = v2;

  v4 = os_log_create("com.apple.companionsync", "transport");
  v5 = qword_1EDE73428;
  qword_1EDE73428 = v4;

  v6 = os_log_create("com.apple.companionsync", "persistence");
  v7 = qword_1EDE73430;
  qword_1EDE73430 = v6;

  v8 = os_log_create("com.apple.companionsync", "transactions");
  v9 = qword_1EDE73438;
  qword_1EDE73438 = v8;

  v10 = os_log_create("com.apple.companionsync", "protocol");
  v11 = qword_1EDE73440;
  qword_1EDE73440 = v10;

  v12 = os_log_create("com.apple.companionsync", "streams");
  v13 = qword_1EDE73448;
  qword_1EDE73448 = v12;

  v14 = os_log_create("com.apple.companionsync", "signposts");
  v15 = qword_1EDE73450;
  qword_1EDE73450 = v14;

  qword_1EDE73458 = os_log_create("com.apple.companionsync", "messages");

  return MEMORY[0x1EEE66BB8]();
}

id _SYObfuscate(void *a1)
{
  v1 = a1;
  if (_SYObfuscate_onceToken != -1)
  {
    _SYObfuscate_cold_1();
  }

  if (_SYObfuscate___shouldObfuscate)
  {
    v2 = v1;
  }

  else
  {
    v2 = _obfuscatedDescription(v1);
  }

  v3 = v2;

  return v3;
}

char *_obfuscatedDescription(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v3 = 0;
    goto LABEL_9;
  }

  v2 = objc_autoreleasePoolPush();
  if (objc_opt_respondsToSelector())
  {
    v3 = [v1 CPSafeDescription];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (_obfuscatedDescription_onceToken != -1)
        {
          _obfuscatedDescription_cold_1();
        }

        v8 = [_obfuscatedDescription__numFormatter stringFromNumber:v1];
      }

      else
      {
        v8 = [v1 description];
      }

      v5 = v8;
      if (v8)
      {
        v3 = [v8 UTF8String];
        if (v3)
        {
          memset(&v13, 0, sizeof(v13));
          CC_SHA1_Init(&v13);
          CC_SHA1_Update(&v13, &_createHashRepresentationOfString_seed, 4u);
          v9 = strlen(v3);
          CC_SHA1_Update(&v13, v3, v9);
          CC_SHA1_Final(md, &v13);
          v10 = 0;
          v14[0] = 91;
          v11 = v15;
          do
          {
            v12 = md[v10];
            *(v11 - 1) = _createHashRepresentationOfString_hexNybble[v12 >> 4];
            *v11 = _createHashRepresentationOfString_hexNybble[v12 & 0xF];
            v11 += 2;
            ++v10;
          }

          while (v10 != 4);
          *(v11 - 1) = 93;
          v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v14 length:10 encoding:4];
        }
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_8;
    }

    v4 = [v1 CPObfuscatedDescriptionObject];
    v3 = _obfuscatedDescription();
  }

  v5 = 0;
LABEL_8:
  objc_autoreleasePoolPop(v2);

LABEL_9:
  v6 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t ___obfuscatedDescription_block_invoke()
{
  v0 = objc_opt_new();
  v1 = _obfuscatedDescription__numFormatter;
  _obfuscatedDescription__numFormatter = v0;

  v2 = [MEMORY[0x1E695DF58] systemLocale];
  [_obfuscatedDescription__numFormatter setLocale:v2];

  v3 = _obfuscatedDescription__numFormatter;

  return [v3 setNumberStyle:0];
}

uint64_t OUTLINED_FUNCTION_0()
{

  return _os_once();
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t SYLogErrorInfoReadFrom(uint64_t a1, void *a2)
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
        v20 = PBReaderReadString();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
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
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
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

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return _os_once();
}

uint64_t SYFileTransferInfoReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 32;
LABEL_38:
          v24 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_43;
        }

LABEL_32:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_43;
      }

      v23 = objc_alloc_init(SYMessageHeader);
      objc_storeStrong((a1 + 24), v23);
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !SYMessageHeaderReadFrom(v23, a2))
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

    if (v13 == 3)
    {
      v14 = PBReaderReadString();
      v15 = 16;
      goto LABEL_38;
    }

    if (v13 == 4)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
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
          v22 = 0;
          goto LABEL_42;
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

LABEL_42:
      *(a1 + 8) = v22;
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SYSyncBatchReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 4)
        {
          v23 = objc_alloc_init(SYChange);
          [a1 addChanges:v23];
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !SYChangeReadFrom(v23, a2))
          {
LABEL_46:

            return 0;
          }

          goto LABEL_39;
        }

        if (v13 == 3)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            LOBYTE(v26) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v26 & 0x7F) << v16;
            if ((v26 & 0x80) == 0)
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
          v23 = objc_alloc_init(SYMessageHeader);
          objc_storeStrong((a1 + 24), v23);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !SYMessageHeaderReadFrom(v23, a2))
          {
            goto LABEL_46;
          }

LABEL_39:
          PBReaderRecallMark();

          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
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

id GetServiceInstanceTable()
{
  if (GetServiceInstanceTable_onceToken != -1)
  {
    GetServiceInstanceTable_cold_1();
  }

  v1 = GetServiceInstanceTable___table;

  return v1;
}

void sub_1DF83CB74(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);

  objc_exception_rethrow();
}

void sub_1DF83CC30(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);

  objc_exception_rethrow();
}

void sub_1DF83CD0C(void *a1)
{
  objc_begin_catch(a1);

  objc_exception_rethrow();
}

void sub_1DF83CDF0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);

  objc_exception_rethrow();
}

void sub_1DF83CEA4(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);

  objc_exception_rethrow();
}

void sub_1DF83D458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t __GetServiceInstanceTable_block_invoke()
{
  GetServiceInstanceTable___table = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __SYZlibStreamGetPort(void *a1)
{
  v1 = [a1 _internal];
  if (v1)
  {
    v2 = v1[4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void _TryPostEvent(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  msg.msgh_id = 0;
  *&msg.msgh_bits = 0x2000000013;
  msg.msgh_remote_port = v5[4];
  msg.msgh_local_port = 0;
  msg.msgh_voucher_port = 0;
  v16 = a1;
  v6 = mach_msg(&msg, 17, 0x20u, 0, 0, 1u, 0);
  if (v6)
  {
    if (a3 <= 3 && v6 == 268435460)
    {
      v7 = dispatch_time(0, (a3 * 250000000.0));
      v8 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___TryPostEvent_block_invoke;
      block[3] = &unk_1E86CA000;
      v13 = a1;
      v12 = v5;
      v14 = a3;
      dispatch_after(v7, v8, block);
    }

    else
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A5A0] code:v6 userInfo:0];
      v10 = *(v5 + 6);
      *(v5 + 6) = v9;

      *(v5 + 7) = 7;
    }
  }
}

void sub_1DF83FA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CreateGzfileError(gzFile_s *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  errnum = 0;
  v1 = gzerror(a1, &errnum);
  if (errnum == -1)
  {
    v6 = objc_alloc(MEMORY[0x1E696ABC0]);
    v5 = [v6 initWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
  }

  else
  {
    v2 = v1;
    if (v1)
    {
      v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v1];
      v10 = *MEMORY[0x1E696A578];
      v11[0] = v3;
      v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    }

    v4 = objc_alloc(MEMORY[0x1E696ABC0]);
    v5 = [v4 initWithDomain:@"SYZlibErrorDomain" code:errnum userInfo:v2];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t _SYProtectionClassFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqualToString:*MEMORY[0x1E696A378]])
    {
      v3 = 1;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E696A380]])
    {
      v3 = 2;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E696A388]])
    {
      v3 = 3;
    }

    else if ([v2 isEqualToString:*MEMORY[0x1E696A3A8]])
    {
      v3 = 4;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t SYErrorInfoReadFrom(uint64_t a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        v21 = PBReaderReadString();
        v22 = 16;
      }

      else
      {
        if (v13 != 3)
        {
          if (v13 == 2)
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
                goto LABEL_37;
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

LABEL_37:
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

          goto LABEL_38;
        }

        v21 = PBReaderReadData();
        v22 = 24;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SYChangeMessageReadFrom(id *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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
        v13 = objc_alloc_init(SYMessageHeader);
        objc_storeStrong(a1 + 2, v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !SYMessageHeaderReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(SYChange);
    [a1 addChanges:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SYChangeReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

char *OUTLINED_FUNCTION_3_0()
{

  return mach_error_string(v0);
}

uint64_t SYBatchSyncStartReadFrom(uint64_t a1, void *a2)
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
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v26[0] & 0x7F) << v17;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_38;
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

LABEL_38:
        *(a1 + 8) = v23;
      }

      else if (v13 == 2)
      {
        v15 = PBReaderReadString();
        v16 = *(a1 + 24);
        *(a1 + 24) = v15;
      }

      else if (v13 == 1)
      {
        v14 = objc_alloc_init(SYMessageHeader);
        objc_storeStrong((a1 + 16), v14);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !SYMessageHeaderReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
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

uint64_t SYLogServiceStateReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v41) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v41 & 0x7F) << v5;
        if ((v41 & 0x80) == 0)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            while (1)
            {
              LOBYTE(v41) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v41 & 0x7F) << v24;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_78;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v26;
            }

LABEL_78:
            v38 = 16;
            goto LABEL_83;
          }

          if (v13 == 7)
          {
            v14 = objc_alloc_init(SYLogTransportOption);
            [a1 addTransportOptions:v14];
            v41 = 0;
            v42 = 0;
            if (!PBReaderPlaceMark() || !SYLogTransportOptionReadFrom(v14, a2))
            {
LABEL_88:

              return 0;
            }

            goto LABEL_60;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v22 = PBReaderReadString();
              v23 = 40;
              goto LABEL_72;
            case 9:
              v22 = PBReaderReadString();
              v23 = 32;
              goto LABEL_72;
            case 0xA:
              v15 = 0;
              v16 = 0;
              v17 = 0;
              *(a1 + 84) |= 1u;
              while (1)
              {
                LOBYTE(v41) = 0;
                v18 = [a2 position] + 1;
                if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
                {
                  v20 = [a2 data];
                  [v20 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v17 |= (v41 & 0x7F) << v15;
                if ((v41 & 0x80) == 0)
                {
                  break;
                }

                v15 += 7;
                v11 = v16++ >= 9;
                if (v11)
                {
                  v21 = 0;
                  goto LABEL_82;
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

LABEL_82:
              v38 = 48;
LABEL_83:
              *(a1 + v38) = v21;
              goto LABEL_86;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v22 = PBReaderReadString();
          v23 = 24;
LABEL_72:
          v37 = *(a1 + v23);
          *(a1 + v23) = v22;

          goto LABEL_86;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SYLogEngineState);
          objc_storeStrong((a1 + 8), v14);
          v41 = 0;
          v42 = 0;
          if (!PBReaderPlaceMark() || !SYLogEngineStateReadFrom(v14, a2))
          {
            goto LABEL_88;
          }

          goto LABEL_60;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(SYLogSessionState);
            objc_storeStrong((a1 + 56), v14);
            v41 = 0;
            v42 = 0;
            if (!PBReaderPlaceMark() || !SYLogSessionStateReadFrom(v14, a2))
            {
              goto LABEL_88;
            }

            goto LABEL_60;
          case 4:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            while (1)
            {
              LOBYTE(v41) = 0;
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
                LOBYTE(v36) = 0;
                goto LABEL_85;
              }
            }

            v36 = (v32 != 0) & ~[a2 hasError];
LABEL_85:
            *(a1 + 80) = v36;
            goto LABEL_86;
          case 5:
            v14 = objc_alloc_init(SYLogDeviceState);
            objc_storeStrong((a1 + 64), v14);
            v41 = 0;
            v42 = 0;
            if (!PBReaderPlaceMark() || !SYLogDeviceStateReadFrom(v14, a2))
            {
              goto LABEL_88;
            }

LABEL_60:
            PBReaderRecallMark();

            goto LABEL_86;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_86:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1DF8475E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF8484E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF8487E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF84B7B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF84BEA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  os_activity_scope_leave((v15 - 48));
  _Unwind_Resume(a1);
}

void sub_1DF84C128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DF84DA58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF84EC8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF84F2A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  os_activity_scope_leave((v15 - 48));
  _Unwind_Resume(a1);
}

void sub_1DF84F518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DF850B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t SYLogEngineStateReadFrom(uint64_t a1, void *a2)
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
        v43 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
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
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 96) |= 2u;
          while (1)
          {
            v46 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v46 & 0x7F) << v35;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_69;
            }
          }

          v20 = (v37 != 0) & ~[a2 hasError];
LABEL_69:
          v41 = 13;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_40:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_71;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 96) |= 1u;
          while (1)
          {
            v45 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v45 & 0x7F) << v21;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_63;
            }
          }

          v20 = (v23 != 0) & ~[a2 hasError];
LABEL_63:
          v41 = 12;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          while (1)
          {
            v44 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v44 & 0x7F) << v28;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_67;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_67:
          *(a1 + 8) = v34;
          goto LABEL_71;
        }

        if (v13 != 2)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 96) |= 4u;
        while (1)
        {
          v47 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v47 & 0x7F) << v14;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_61;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_61:
        v41 = 14;
      }

      *(a1 + v41) = v20;
LABEL_71:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id _ClientNameForServiceName(void *a1)
{
  v1 = a1;
  if (_ClientNameForServiceName_onceToken != -1)
  {
    _ClientNameForServiceName_cold_1();
  }

  v2 = [_ClientNameForServiceName___lookup objectForKeyedSubscript:v1];
  if (!v2)
  {
    v2 = [v1 lastPathComponent];
  }

  return v2;
}

void sub_1DF855F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF856A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v65 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a35);
  objc_destroyWeak(&a40);
  objc_destroyWeak(&a45);
  objc_destroyWeak(&a50);
  objc_destroyWeak(&a55);
  objc_destroyWeak(&a60);
  objc_destroyWeak(&a65);
  objc_destroyWeak((v66 - 200));
  objc_destroyWeak((v66 - 160));
  objc_destroyWeak((v66 - 120));
  objc_destroyWeak((v66 - 112));
  _Unwind_Resume(a1);
}

void sub_1DF85A8FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a2)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF85E1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF85EFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43)
{
  objc_destroyWeak((v43 + 112));
  objc_destroyWeak((v44 + 48));
  objc_destroyWeak(&a43);
  objc_destroyWeak((v45 - 232));
  _Block_object_dispose((v45 - 224), 8);
  _Block_object_dispose((v45 - 192), 8);
  _Block_object_dispose((v45 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1DF85F89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_3_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

_BYTE *OUTLINED_FUNCTION_10(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_12(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

void OUTLINED_FUNCTION_17(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, 0x90u, a4, &a9, 0x1Cu);
}

uint64_t SYLogTransportOptionReadFrom(uint64_t a1, void *a2)
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
        v13 = &OBJC_IVAR___SYLogTransportOption__value;
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

    v13 = &OBJC_IVAR___SYLogTransportOption__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SYResetResponseReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) == 1)
      {
        break;
      }

      if (v13 == 3)
      {
        v21 = objc_alloc_init(SYErrorInfo);
        objc_storeStrong((a1 + 8), v21);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !SYErrorInfoReadFrom(v21, a2))
        {
          goto LABEL_41;
        }

LABEL_34:
        PBReaderRecallMark();

        goto LABEL_39;
      }

      if (v13 == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
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
            LOBYTE(v20) = 0;
            goto LABEL_38;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_38:
        *(a1 + 24) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(SYMessageHeader);
    objc_storeStrong((a1 + 16), v21);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !SYMessageHeaderReadFrom(v21, a2))
    {
LABEL_41:

      return 0;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SYEndSyncSessionReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v23 = objc_alloc_init(SYErrorInfo);
          objc_storeStrong((a1 + 8), v23);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !SYErrorInfoReadFrom(v23, a2))
          {
LABEL_44:

            return 0;
          }

          goto LABEL_39;
        }

        if (v13 == 4)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v26) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v26 & 0x7F) << v16;
            if ((v26 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_41;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_41:
          *(a1 + 32) = v22;
          goto LABEL_42;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v23 = objc_alloc_init(SYMessageHeader);
          objc_storeStrong((a1 + 16), v23);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !SYMessageHeaderReadFrom(v23, a2))
          {
            goto LABEL_44;
          }

LABEL_39:
          PBReaderRecallMark();

          goto LABEL_42;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = *(a1 + 24);
          *(a1 + 24) = v14;

          goto LABEL_42;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1DF8624A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DF863090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _SessionIdentifierDateFormatter()
{
  if (_SessionIdentifierDateFormatter_onceToken != -1)
  {
    _SessionIdentifierDateFormatter_cold_1();
  }

  v1 = _SessionIdentifierDateFormatter___formatter;

  return v1;
}

void sub_1DF864704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, os_activity_scope_state_s state, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1DF866D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  os_activity_scope_leave((v8 - 88));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _dispatch_sync_safe_tagged(NSObject *a1, void *a2, void *a3)
{
  if (dispatch_get_specific(__SYService_Queue_Tag_Key) == a2)
  {
    v5 = a3[2];

    v5(a3);
  }

  else
  {

    dispatch_sync(a1, a3);
  }
}

void sub_1DF868720(void *a1)
{
  objc_begin_catch(a1);

  objc_exception_rethrow();
}

void sub_1DF868734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_activity_scope_state_s a9)
{
  objc_end_catch();
  os_activity_scope_leave(&a9);
  _Unwind_Resume(a1);
}

void sub_1DF868C48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1DF868DA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1DF86A058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF86D720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose((v30 - 208), 8);
  _Block_object_dispose(&a30, 8);
  os_activity_scope_leave((v30 - 224));
  _Unwind_Resume(a1);
}

void sub_1DF86F938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 144), 8);
  os_activity_scope_leave((v9 - 112));
  _Unwind_Resume(a1);
}

void sub_1DF8709D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void sub_1DF8711CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1DF871DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void ___dispatch_async_autoreleased_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void ___dispatch_sync_autoreleased_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, 0x90u, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_8_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_13_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, 0x90u, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_14_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*(*result + 8) + 40);
  return result;
}

uint64_t ExecuteSQL(sqlite3 *a1, char *a2, ...)
{
  va_start(va, a2);
  if (!a1)
  {
    return 1;
  }

  errmsg = 0;
  v3 = sqlite3_vmprintf(a2, va);
  v4 = sqlite3_exec(a1, v3, 0, 0, &errmsg);
  if (v4 && errmsg)
  {
    fprintf(*MEMORY[0x1E69E9848], "execute() Error: %s \n", errmsg);
    sqlite3_free(errmsg);
  }

  sqlite3_free(v3);
  return v4;
}

void _LogInfoForPath(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v16 = 0;
    v4 = [v3 attributesOfItemAtPath:v2 error:&v16];
    v5 = v16;

    if (v4)
    {
      v6 = v2;
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v9 = qword_1EDE73430;
      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        _LogInfoForPath_cold_2(v2, v9, v5);
      }

      v10 = [v2 stringByDeletingLastPathComponent];
      if (!v10)
      {
        v6 = v2;
LABEL_27:
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
        {
          _LogInfoForPath_cold_5();
        }

        goto LABEL_31;
      }

      v11 = v10;
      while (1)
      {
        v12 = [v11 length];
        if (v12 == [v2 length] || (objc_msgSend(v11, "isEqualToString:", v2) & 1) != 0)
        {
          v6 = v2;
LABEL_26:

          goto LABEL_27;
        }

        v6 = v11;

        v13 = [MEMORY[0x1E696AC08] defaultManager];
        v15 = 0;
        v4 = [v13 attributesOfItemAtPath:v6 error:&v15];
        v5 = v15;

        if (v4)
        {
          break;
        }

        v11 = [v6 stringByDeletingLastPathComponent];

        v2 = v6;
        if (!v11)
        {
          goto LABEL_26;
        }
      }
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v7 = qword_1EDE73430;
    if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_1DF835000, v7, OS_LOG_TYPE_DEFAULT, "Attributes for '%@': %@", buf, 0x16u);
    }

LABEL_31:
    goto LABEL_32;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v8 = qword_1EDE73430;
  if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
  {
    _LogInfoForPath_cold_7(v8);
  }

LABEL_32:
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t BindString(sqlite3_stmt *a1, int a2, id a3)
{
  v6 = a3;
  v7 = [a3 UTF8String];
  v8 = strlen(v7);

  return sqlite3_bind_text(a1, a2, v7, v8, 0);
}

void sub_1DF873FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF874218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF874580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF8746A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_5_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t SYEndSyncSessionResponseReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v23 = objc_alloc_init(SYErrorInfo);
          objc_storeStrong((a1 + 8), v23);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !SYErrorInfoReadFrom(v23, a2))
          {
LABEL_44:

            return 0;
          }

          goto LABEL_39;
        }

        if (v13 == 4)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v26) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v26 & 0x7F) << v16;
            if ((v26 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_41;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_41:
          *(a1 + 32) = v22;
          goto LABEL_42;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v23 = objc_alloc_init(SYMessageHeader);
          objc_storeStrong((a1 + 16), v23);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !SYMessageHeaderReadFrom(v23, a2))
          {
            goto LABEL_44;
          }

LABEL_39:
          PBReaderRecallMark();

          goto LABEL_42;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = *(a1 + 24);
          *(a1 + 24) = v14;

          goto LABEL_42;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SYResetRequestReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SYMessageHeader);
        objc_storeStrong((a1 + 16), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !SYMessageHeaderReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
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

    v14 = PBReaderReadString();
    v13 = *(a1 + 8);
    *(a1 + 8) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SYMessageHeaderReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v39) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
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
        switch(v13)
        {
          case 4:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            while (1)
            {
              LOBYTE(v39) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v39 & 0x7F) << v24;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_59;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v26;
            }

LABEL_59:
            *(a1 + 48) = v30;
            goto LABEL_69;
          case 6:
            *(a1 + 52) |= 1u;
            v39 = 0;
            v31 = [a2 position] + 8;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v39 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v34 = v39;
            v35 = 16;
            goto LABEL_68;
          case 5:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v39) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v39 & 0x7F) << v15;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_63;
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

LABEL_63:
            *(a1 + 8) = v21;
            goto LABEL_69;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v39 = 0;
            v22 = [a2 position] + 8;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v39 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v34 = v39;
            v35 = 24;
LABEL_68:
            *(a1 + v35) = v34;
            goto LABEL_69;
          case 2:
            v14 = objc_alloc_init(SYPeer);
            objc_storeStrong((a1 + 32), v14);
            v39 = 0;
            v40 = 0;
            if (!PBReaderPlaceMark() || !SYPeerReadFrom(v14, a2))
            {
LABEL_71:

              return 0;
            }

            goto LABEL_52;
          case 3:
            v14 = objc_alloc_init(SYVectorClock);
            objc_storeStrong((a1 + 40), v14);
            v39 = 0;
            v40 = 0;
            if (!PBReaderPlaceMark() || !SYVectorClockReadFrom(v14, a2))
            {
              goto LABEL_71;
            }

LABEL_52:
            PBReaderRecallMark();

            goto LABEL_69;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_69:
      v37 = [a2 position];
    }

    while (v37 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ExecuteSQL_0(sqlite3 *a1, char *a2, ...)
{
  va_start(va, a2);
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    va_copy(&v9[1], va);
    v4 = sqlite3_vmprintf(a2, va);
    v9[0] = 0;
    v5 = sqlite3_exec(a1, v4, 0, 0, v9);
    if (v5 && v9[0])
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v6 = qword_1EDE73430;
      if (os_log_type_enabled(qword_1EDE73430, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v11 = a2;
        v12 = 1024;
        v13 = v5;
        v14 = 2082;
        v15 = v9[0];
        _os_log_error_impl(&dword_1DF835000, v6, OS_LOG_TYPE_ERROR, "sqlite3_exec(%s) Error: %{companionsync:sqlite3err}d %{public}s\n", buf, 0x1Cu);
      }

      sqlite3_free(v9[0]);
    }

    sqlite3_free(v4);
  }

  else
  {
    v5 = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

id ReadString(sqlite3_stmt *a1)
{
  v1 = sqlite3_column_text(a1, 0);
  if (v1)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v1];
  }

  return v1;
}

void sub_1DF8780B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF878554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BindString_0(sqlite3_stmt *a1, int a2, id a3)
{
  if (a3)
  {
    v5 = [a3 UTF8String];
    v6 = strlen(v5);

    return sqlite3_bind_text(a1, a2, v5, v6, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {

    return sqlite3_bind_null(a1, a2);
  }
}

void sub_1DF87990C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 104), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DF87A0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF87A2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF87ACFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF87AF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF87B338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ReadDate(sqlite3_stmt *a1)
{
  v1 = sqlite3_column_double(a1, 0);
  if (v1 == 0.0)
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:v1];
  }

  return v2;
}

uint64_t BindDate(sqlite3_stmt *a1, void *a2)
{
  if (a2)
  {
    [a2 timeIntervalSince1970];

    return sqlite3_bind_double(a1, 1, v3);
  }

  else
  {

    return sqlite3_bind_null(a1, 1);
  }
}

void sub_1DF87B7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF87BB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void BindData(sqlite3_stmt *a1, int a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (v5)
  {
    v6 = v5;
    sqlite3_bind_blob(a1, a2, [v7 bytes], objc_msgSend(v7, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(a1, a2);
  }
}

void sub_1DF87C438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF87C664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF87CA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF87CC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ReadData(sqlite3_stmt *a1)
{
  v2 = sqlite3_column_bytes(a1, 0);
  v3 = sqlite3_column_blob(a1, 0);
  if (v2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:v3 length:v2];
  }

  return v4;
}

void sub_1DF87CF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF87D1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF87D3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF87D604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF87D844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF87DC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _DictionaryFromData(void *a1)
{
  v1 = MEMORY[0x1E696ACD0];
  v2 = a1;
  v3 = [[v1 alloc] initForReadingFromData:v2 error:0];

  v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithCoder:v3];

  return v4;
}

id _DataFromDictionary(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E696ACC8];
    v2 = a1;
    v3 = [[v1 alloc] initRequiringSecureCoding:1];
    [v2 encodeWithCoder:v3];

    v4 = [v3 encodedData];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1DF87E18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF87E57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF87E958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF87EB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF87ED2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF87F4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF87FB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF87FD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SYLogSessionStateReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v73) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v73 & 0x7F) << v5;
      if ((v73 & 0x80) == 0)
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
        v13 = PBReaderReadString();
        v14 = 40;
        goto LABEL_71;
      case 2u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        while (1)
        {
          LOBYTE(v73) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v73 & 0x7F) << v37;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v43 = 0;
            goto LABEL_110;
          }
        }

        if ([a2 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v39;
        }

LABEL_110:
        *(a1 + 64) = v43;
        goto LABEL_125;
      case 3u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        while (1)
        {
          LOBYTE(v73) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v73 & 0x7F) << v25;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            LOBYTE(v24) = 0;
            goto LABEL_104;
          }
        }

        v24 = (v27 != 0) & ~[a2 hasError];
LABEL_104:
        v66 = 84;
        goto LABEL_119;
      case 4u:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 88) |= 0x20u;
        while (1)
        {
          LOBYTE(v73) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v73 & 0x7F) << v31;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            LOBYTE(v24) = 0;
            goto LABEL_106;
          }
        }

        v24 = (v33 != 0) & ~[a2 hasError];
LABEL_106:
        v66 = 83;
        goto LABEL_119;
      case 5u:
        *(a1 + 88) |= 2u;
        v73 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v67 = [a2 data];
          [v67 getBytes:&v73 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v68 = v73;
        v69 = 24;
        goto LABEL_124;
      case 6u:
        *(a1 + 88) |= 1u;
        v73 = 0;
        v44 = [a2 position] + 8;
        if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 8, v45 <= objc_msgSend(a2, "length")))
        {
          v70 = [a2 data];
          [v70 getBytes:&v73 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v68 = v73;
        v69 = 8;
LABEL_124:
        *(a1 + v69) = v68;
        goto LABEL_125;
      case 7u:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        while (1)
        {
          LOBYTE(v73) = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v49 |= (v73 & 0x7F) << v47;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v11 = v48++ >= 9;
          if (v11)
          {
            v53 = 0;
            goto LABEL_114;
          }
        }

        if ([a2 hasError])
        {
          v53 = 0;
        }

        else
        {
          v53 = v49;
        }

LABEL_114:
        *(a1 + 16) = v53;
        goto LABEL_125;
      case 8u:
        v15 = objc_alloc_init(SYLogErrorInfo);
        objc_storeStrong((a1 + 32), v15);
        v73 = 0;
        v74 = 0;
        if (PBReaderPlaceMark() && SYLogErrorInfoReadFrom(v15, a2))
        {
          goto LABEL_57;
        }

        goto LABEL_127;
      case 9u:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 88) |= 4u;
        while (1)
        {
          LOBYTE(v73) = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (v73 & 0x7F) << v60;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v11 = v61++ >= 9;
          if (v11)
          {
            LOBYTE(v24) = 0;
            goto LABEL_118;
          }
        }

        v24 = (v62 != 0) & ~[a2 hasError];
LABEL_118:
        v66 = 80;
        goto LABEL_119;
      case 0xAu:
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 88) |= 8u;
        while (1)
        {
          LOBYTE(v73) = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v73 & 0x7F) << v18;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            LOBYTE(v24) = 0;
            goto LABEL_102;
          }
        }

        v24 = (v20 != 0) & ~[a2 hasError];
LABEL_102:
        v66 = 81;
        goto LABEL_119;
      case 0xBu:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 88) |= 0x10u;
        while (1)
        {
          LOBYTE(v73) = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v73 & 0x7F) << v54;
          if ((v73 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v11 = v55++ >= 9;
          if (v11)
          {
            LOBYTE(v24) = 0;
            goto LABEL_116;
          }
        }

        v24 = (v56 != 0) & ~[a2 hasError];
LABEL_116:
        v66 = 82;
LABEL_119:
        *(a1 + v66) = v24;
        goto LABEL_125;
      case 0xCu:
        v15 = objc_alloc_init(SYLogTransportOption);
        [a1 addTransportOptions:v15];
        v73 = 0;
        v74 = 0;
        if (!PBReaderPlaceMark() || !SYLogTransportOptionReadFrom(v15, a2))
        {
          goto LABEL_127;
        }

        goto LABEL_57;
      case 0xDu:
        v15 = objc_alloc_init(SYLogPeerIDPair);
        [a1 addPeer:v15];
        v73 = 0;
        v74 = 0;
        if (PBReaderPlaceMark() && SYLogPeerIDPairReadFrom(v15, a2))
        {
LABEL_57:
          PBReaderRecallMark();

LABEL_125:
          v71 = [a2 position];
          if (v71 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_127:

        return 0;
      case 0xEu:
        v13 = PBReaderReadString();
        v14 = 56;
LABEL_71:
        v46 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_125;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_125;
    }
  }
}

void sub_1DF8837D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  os_activity_scope_leave((v15 - 48));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DF884314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_activity_scope_state_s state)
{
  objc_sync_exit(v13);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1DF885978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF887490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state)
{
  objc_sync_exit(v15);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

uint64_t SYBatchSyncEndReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v18) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v15 = PBReaderReadString();
        v14 = *(a1 + 24);
        *(a1 + 24) = v15;
        goto LABEL_27;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(SYMessageHeader);
        objc_storeStrong((a1 + 16), v14);
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !SYMessageHeaderReadFrom(v14, a2))
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v16 = [a2 position];
      if (v16 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(SYErrorInfo);
    objc_storeStrong((a1 + 8), v14);
    v18 = 0;
    v19 = 0;
    if (!PBReaderPlaceMark() || !SYErrorInfoReadFrom(v14, a2))
    {
LABEL_31:

      return 0;
    }

LABEL_26:
    PBReaderRecallMark();
LABEL_27:

    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

void LogWithTrace(uint64_t a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73440, OS_LOG_TYPE_DEBUG))
  {
    v2 = [MEMORY[0x1E696AF00] callStackSymbols];
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v3 = qword_1EDE73440;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LogWithTrace_cold_3(a1, v3);
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LogWithTrace_cold_4(v2, v3);
    }
  }
}

void _SYRebuildDeviceList_ForUnitTests()
{
  v0 = +[_SYDeviceMonitor sharedInstance];
  [v0 _rebuildDeviceList];
}

void _SYEmptyDeviceList_ForUnitTests()
{
  v0 = +[_SYDeviceMonitor sharedInstance];
  [v0 _clearDeviceList];
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DF88F5E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF88FD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DF890890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t SYSyncSessionRestartResponseReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 4)
        {
          v23 = objc_alloc_init(SYErrorInfo);
          objc_storeStrong((a1 + 8), v23);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !SYErrorInfoReadFrom(v23, a2))
          {
LABEL_44:

            return 0;
          }

          goto LABEL_39;
        }

        if (v13 == 3)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            LOBYTE(v26) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v26 & 0x7F) << v16;
            if ((v26 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_41;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_41:
          *(a1 + 32) = v22;
          goto LABEL_42;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v23 = objc_alloc_init(SYMessageHeader);
          objc_storeStrong((a1 + 16), v23);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !SYMessageHeaderReadFrom(v23, a2))
          {
            goto LABEL_44;
          }

LABEL_39:
          PBReaderRecallMark();

          goto LABEL_42;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = *(a1 + 24);
          *(a1 + 24) = v14;

          goto LABEL_42;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SYSyncBatchResponseReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 4)
        {
          v23 = objc_alloc_init(SYErrorInfo);
          objc_storeStrong((a1 + 16), v23);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !SYErrorInfoReadFrom(v23, a2))
          {
LABEL_46:

            return 0;
          }

          goto LABEL_39;
        }

        if (v13 == 3)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            LOBYTE(v26) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v26 & 0x7F) << v16;
            if ((v26 & 0x80) == 0)
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
          v23 = objc_alloc_init(SYMessageHeader);
          objc_storeStrong((a1 + 24), v23);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !SYMessageHeaderReadFrom(v23, a2))
          {
            goto LABEL_46;
          }

LABEL_39:
          PBReaderRecallMark();

          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
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

uint64_t SYStartSyncSessionResponseReadFrom(uint64_t a1, void *a2)
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
            v33 = objc_alloc_init(SYMessageHeader);
            objc_storeStrong((a1 + 16), v33);
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark() || !SYMessageHeaderReadFrom(v33, a2))
            {
LABEL_73:

              return 0;
            }

            goto LABEL_60;
          case 2:
            v34 = PBReaderReadString();
            v35 = 32;
            goto LABEL_63;
          case 3:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            while (1)
            {
              LOBYTE(v40) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v40 & 0x7F) << v21;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_69;
              }
            }

            v20 = (v23 != 0) & ~[a2 hasError];
LABEL_69:
            v37 = 40;
            goto LABEL_70;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 7)
        {
          v34 = PBReaderReadData();
          v35 = 24;
LABEL_63:
          v36 = *(a1 + v35);
          *(a1 + v35) = v34;

          goto LABEL_71;
        }

        if (v13 == 6)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          while (1)
          {
            LOBYTE(v40) = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v40 & 0x7F) << v27;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_67;
            }
          }

          v20 = (v29 != 0) & ~[a2 hasError];
LABEL_67:
          v37 = 41;
          goto LABEL_70;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v33 = objc_alloc_init(SYErrorInfo);
          objc_storeStrong((a1 + 8), v33);
          v40 = 0;
          v41 = 0;
          if (!PBReaderPlaceMark() || !SYErrorInfoReadFrom(v33, a2))
          {
            goto LABEL_73;
          }

LABEL_60:
          PBReaderRecallMark();

          goto LABEL_71;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v40) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v40 & 0x7F) << v14;
            if ((v40 & 0x80) == 0)
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
          v37 = 42;
LABEL_70:
          *(a1 + v37) = v20;
          goto LABEL_71;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_71:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SYBatchChunkAckReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 4)
        {
          v23 = objc_alloc_init(SYErrorInfo);
          objc_storeStrong((a1 + 16), v23);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !SYErrorInfoReadFrom(v23, a2))
          {
LABEL_46:

            return 0;
          }

          goto LABEL_39;
        }

        if (v13 == 3)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            LOBYTE(v26) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v26 & 0x7F) << v16;
            if ((v26 & 0x80) == 0)
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
          v23 = objc_alloc_init(SYMessageHeader);
          objc_storeStrong((a1 + 24), v23);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !SYMessageHeaderReadFrom(v23, a2))
          {
            goto LABEL_46;
          }

LABEL_39:
          PBReaderRecallMark();

          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
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

void ExecuteSQL_1(sqlite3 *a1, char *a2, ...)
{
  va_start(va, a2);
  if (a1)
  {
    errmsg = 0;
    v3 = sqlite3_vmprintf(a2, va);
    if (sqlite3_exec(a1, v3, 0, 0, &errmsg))
    {
      if (errmsg)
      {
        fprintf(*MEMORY[0x1E69E9848], "execute() Error: %s \n", errmsg);
        sqlite3_free(errmsg);
      }
    }

    sqlite3_free(v3);
  }
}

uint64_t BindData_0(sqlite3_stmt *a1, int a2, id a3)
{
  v6 = a3;
  v7 = a3;
  v8 = [v7 bytes];
  v9 = [v7 length];

  return sqlite3_bind_blob(a1, a2, v8, v9, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_1DF8975E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ReadData_0(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_bytes(a1, a2);
  v5 = sqlite3_column_blob(a1, a2);
  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:v5 length:v4];
  }

  return v6;
}

id ReadString_0(sqlite3_stmt *a1)
{
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:{sqlite3_column_text(a1, 0)}];

  return v1;
}

id ReadDate_0(sqlite3_stmt *a1, int a2)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(a1, a2)}];

  return v2;
}

void sub_1DF897F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id IDSOptionsFromSYServiceOptions(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __IDSOptionsFromSYServiceOptions_block_invoke;
    v5[3] = &unk_1E86CB038;
    v3 = v2;
    v6 = v3;
    [v1 enumerateKeysAndObjectsUsingBlock:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __IDSOptionsFromSYServiceOptions_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (([v9 hasPrefix:@"SYServiceOption"] & 1) != 0 || objc_msgSend(v9, "hasPrefix:", @"SYEngine"))
  {
    if (![v9 isEqualToString:@"SYServiceOptionMessageTimeout"])
    {
      goto LABEL_7;
    }

    v6 = *(a1 + 32);
    v7 = *MEMORY[0x1E69A47D8];
    v8 = v5;
  }

  else
  {
    v6 = *(a1 + 32);
    v8 = v5;
    v7 = v9;
  }

  [v6 setObject:v8 forKeyedSubscript:v7];
LABEL_7:
}

void sub_1DF89A258(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1DF89B404(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

void sub_1DF89B574(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

uint64_t SYFullSyncRequestAckReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
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
          v24 = objc_alloc_init(SYMessageHeader);
          objc_storeStrong((a1 + 16), v24);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !SYMessageHeaderReadFrom(v24, a2))
          {
LABEL_47:

            return 0;
          }

          goto LABEL_40;
        }

        if (v13 == 2)
        {
          v21 = PBReaderReadString();
          v22 = 32;
LABEL_34:
          v23 = *(a1 + v22);
          *(a1 + v22) = v21;

          goto LABEL_45;
        }
      }

      else
      {
        switch(v13)
        {
          case 5:
            v21 = PBReaderReadString();
            v22 = 24;
            goto LABEL_34;
          case 4:
            v24 = objc_alloc_init(SYErrorInfo);
            objc_storeStrong((a1 + 8), v24);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !SYErrorInfoReadFrom(v24, a2))
            {
              goto LABEL_47;
            }

LABEL_40:
            PBReaderRecallMark();

            goto LABEL_45;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v27) = 0;
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
                LOBYTE(v20) = 0;
                goto LABEL_44;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_44:
            *(a1 + 40) = v20;
            goto LABEL_45;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1DF89EE84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF89FF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SYRejectedVersionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = &OBJC_IVAR___SYSyncBatchResponse__index;
    v6 = 0x1E86C9000uLL;
    v7 = &OBJC_IVAR___SYSyncBatchResponse__index;
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v38) = 0;
        v11 = [a2 position] + 1;
        if (v11 >= [a2 position] && (v12 = objc_msgSend(a2, "position") + 1, v12 <= objc_msgSend(a2, "length")))
        {
          v13 = [a2 data];
          [v13 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v10 |= (v38 & 0x7F) << v8;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [a2 hasError] ? 0 : v10;
LABEL_16:
      if (([a2 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) == 3)
      {
        if ((v15 & 7) == 2)
        {
          v38 = 0;
          v39 = 0;
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
              v40 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v40 & 0x7F) << v23;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v14 = v24++ >= 9;
              if (v14)
              {
                goto LABEL_39;
              }
            }

            [a2 hasError];
LABEL_39:
            PBRepeatedUInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v29 = v6;
          v30 = v5;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          while (1)
          {
            LOBYTE(v38) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v38 & 0x7F) << v31;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v14 = v32++ >= 9;
            if (v14)
            {
              goto LABEL_53;
            }
          }

          [a2 hasError];
LABEL_53:
          PBRepeatedUInt32Add();
          v5 = v30;
          v6 = v29;
          v7 = &OBJC_IVAR___SYSyncBatchResponse__index;
        }
      }

      else if (v16 == 2)
      {
        v18 = PBReaderReadString();
        v19 = v5[83];
        v20 = *(a1 + v19);
        *(a1 + v19) = v18;
      }

      else if (v16 == 1)
      {
        v17 = objc_alloc_init(*(v6 + 1952));
        objc_storeStrong((a1 + v7[82]), v17);
        v38 = 0;
        v39 = 0;
        if (!PBReaderPlaceMark() || !SYMessageHeaderReadFrom(v17, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v37 = [a2 position];
    }

    while (v37 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1DF8A2488(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_1DF8A2924(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void _AssertState(char a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  buf[3] = *MEMORY[0x1E69E9840];
  v11 = a3;
  if ((a1 & 1) == 0)
  {
    v17 = v11;
    _os_assumes_log();
    v13 = NSStringFromSelector(a2);
    if (_sync_log_facilities_pred != -1)
    {
      _os_once();
    }

    v14 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, 0x90u))
    {
      LODWORD(buf[0]) = 138543362;
      *(buf + 4) = v13;
      _os_log_error_impl(&dword_1DF835000, v14, 0x90u, "*** NMS State assertion failure in [NMSMessageCenter %{public}@]", buf, 0xCu);
    }

    buf[0] = &a9;
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = [v15 initWithFormat:v17 arguments:buf[0]];
    objc_exception_throw([objc_alloc(MEMORY[0x1E695DF30]) initWithName:@"NMSInvalidStateException" reason:v16 userInfo:0]);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1DF8A41D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t shouldLogTraffic()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"NMSLogTraffic"];

  return v1;
}

void sub_1DF8A4ADC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1DF8A5618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NMSPriorityString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<unknown priority: %lu>", a1];
  }

  else
  {
    v1 = off_1E86CB4A0[a1];
  }

  return v1;
}

id allowedClasses()
{
  if (allowedClasses_onceToken != -1)
  {
    allowedClasses_cold_1();
  }

  v1 = allowedClasses_allowed;

  return v1;
}

uint64_t __allowedClasses_block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = allowedClasses_allowed;
  allowedClasses_allowed = v10;

  return MEMORY[0x1EEE66BB8](v10, v11);
}

void OUTLINED_FUNCTION_5_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t SYClockReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 1)
      {
        v20 = objc_alloc_init(SYPeer);
        objc_storeStrong((a1 + 16), v20);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !SYPeerReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 2)
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

uint64_t SYOutOfBandDataReadFrom(uint64_t a1, void *a2)
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

uint64_t SYSyncSessionRestartRequestReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SYMessageHeader);
        objc_storeStrong((a1 + 8), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !SYMessageHeaderReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
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

    v14 = PBReaderReadString();
    v13 = *(a1 + 16);
    *(a1 + 16) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SYChangeReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          while (1)
          {
            v34 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v34 & 0x7F) << v24;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_50;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v26;
          }

LABEL_50:
          *(a1 + 40) = v30;
          goto LABEL_55;
        }

        if (v13 != 2)
        {
LABEL_45:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_55;
        }

        v21 = PBReaderReadString();
        v22 = 24;
        goto LABEL_35;
      }

      if (v13 == 5)
      {
        break;
      }

      if (v13 == 4)
      {
        v21 = PBReaderReadData();
        v22 = 16;
        goto LABEL_35;
      }

      if (v13 != 3)
      {
        goto LABEL_45;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v35 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v35 & 0x7F) << v14;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_54;
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

LABEL_54:
      *(a1 + 8) = v20;
LABEL_55:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = PBReaderReadString();
    v22 = 32;
LABEL_35:
    v23 = *(a1 + v22);
    *(a1 + v22) = v21;

    goto LABEL_55;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SYStartSyncSessionReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v29 = PBReaderReadData();
            v30 = 24;
            goto LABEL_64;
          }

          if (v13 == 8)
          {
            v29 = PBReaderReadString();
            v30 = 32;
LABEL_64:
            v38 = *(a1 + v30);
            *(a1 + v30) = v29;

            goto LABEL_76;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            while (1)
            {
              LOBYTE(v43[0]) = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v34 |= (v43[0] & 0x7F) << v32;
              if ((v43[0] & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v11 = v33++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_68;
              }
            }

            v20 = (v34 != 0) & ~[a2 hasError];
LABEL_68:
            v39 = 48;
            goto LABEL_73;
          }

          if (v13 == 6)
          {
            v43[0] = 0;
            v21 = [a2 position] + 8;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:v43 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v43[0];
            goto LABEL_76;
          }
        }

        goto LABEL_65;
      }

      if (v13 > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
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
              LOBYTE(v20) = 0;
              goto LABEL_70;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_70:
          v39 = 50;
LABEL_73:
          *(a1 + v39) = v20;
          goto LABEL_76;
        }

LABEL_65:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_76;
      }

      v31 = objc_alloc_init(SYMessageHeader);
      objc_storeStrong((a1 + 16), v31);
      v43[0] = 0;
      v43[1] = 0;
      if (!PBReaderPlaceMark() || !SYMessageHeaderReadFrom(v31, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_76:
      v41 = [a2 position];
      if (v41 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v29 = PBReaderReadString();
      v30 = 40;
      goto LABEL_64;
    }

    if (v13 == 4)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      while (1)
      {
        LOBYTE(v43[0]) = 0;
        v26 = [a2 position] + 1;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v25 |= (v43[0] & 0x7F) << v23;
        if ((v43[0] & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v11 = v24++ >= 9;
        if (v11)
        {
          LOBYTE(v20) = 0;
          goto LABEL_72;
        }
      }

      v20 = (v25 != 0) & ~[a2 hasError];
LABEL_72:
      v39 = 49;
      goto LABEL_73;
    }

    goto LABEL_65;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SYBatchSyncChunkReadFrom(uint64_t a1, void *a2)
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
        if (v13 == 4)
        {
          v23 = PBReaderReadData();
          if (v23)
          {
            [a1 addObjects:v23];
          }

LABEL_39:

          goto LABEL_44;
        }

        if (v13 == 3)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
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
          v23 = objc_alloc_init(SYMessageHeader);
          objc_storeStrong((a1 + 16), v23);
          v26[0] = 0;
          v26[1] = 0;
          if (!PBReaderPlaceMark() || !SYMessageHeaderReadFrom(v23, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_39;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
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

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DF8B2760(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1DF8B3244(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1DF8B3DF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id SYMessageClassForID(int a1, int a2)
{
  v3 = 0;
  if (a1 <= 103)
  {
    switch(a1)
    {
      case 'e':
        v4 = off_1E86C9800;
        if (!a2)
        {
          v4 = off_1E86C97F8;
        }

        break;
      case 'f':
        v4 = off_1E86C9830;
        if (!a2)
        {
          v4 = off_1E86C9828;
        }

        break;
      case 'g':
        v4 = off_1E86C9858;
        if (!a2)
        {
          v4 = off_1E86C9850;
        }

        break;
      default:
        goto LABEL_24;
    }

    goto LABEL_23;
  }

  switch(a1)
  {
    case 'h':
      v4 = off_1E86C9870;
      if (!a2)
      {
        v4 = off_1E86C9868;
      }

      goto LABEL_23;
    case 'i':
      v4 = off_1E86C9760;
      if (!a2)
      {
        v4 = off_1E86C9758;
      }

LABEL_23:
      v5 = *v4;
      v3 = objc_opt_class();
      break;
    case 'j':
      v3 = objc_opt_class();
      break;
  }

LABEL_24:

  return v3;
}

void sub_1DF8B47F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1DF8B4D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF8B553C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1DF8B5B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF8B5FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF8B725C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, os_activity_scope_state_s state)
{
  objc_destroyWeak((v33 + 64));
  objc_destroyWeak((v34 - 176));
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void _SYTransportLogMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = +[SYTransportLog sharedInstance];
  v11 = v10;
  if (v10)
  {
    [v10 _logOSMessage:a4 args:&a9 returnAddress:*(vars0 + 8)];
  }
}

uint64_t SYLogMultiSuspendableQueueStateReadFrom(uint64_t a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v21 = PBReaderReadString();
        v22 = 24;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 32) |= 1u;
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
                goto LABEL_37;
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

LABEL_37:
            *(a1 + 16) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadString();
        v22 = 8;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1DF8B9D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DF8BA340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SYLogPeerIDPairReadFrom(uint64_t a1, void *a2)
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
        v13 = &OBJC_IVAR___SYLogPeerIDPair__generationID;
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

    v13 = &OBJC_IVAR___SYLogPeerIDPair__peerID;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

id CoalesceOptionDictionaries(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!(v3 | v4))
  {
    v6 = 0;
    goto LABEL_9;
  }

  if (v3)
  {
    if (v4)
    {
      v6 = [v3 mutableCopy];
      [v6 addEntriesFromDictionary:v5];
      goto LABEL_9;
    }

    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v6 = v7;
LABEL_9:

  return v6;
}

NSObject *_EnqueueOnNewGroup(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = dispatch_group_create();
  v3 = v1;
  objc_sync_enter(v3);
  [v3 compact];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (v8)
        {
          dispatch_group_enter(v2);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = ___EnqueueOnNewGroup_block_invoke;
          block[3] = &unk_1E86C9FB0;
          v12 = v2;
          dispatch_barrier_async(v8, block);
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v4);
  v9 = *MEMORY[0x1E69E9840];

  return v2;
}

intptr_t _dispatch_group_wait_off_main_thread(void *a1, dispatch_time_t a2, double a3)
{
  v5 = a1;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___dispatch_group_wait_off_main_thread_block_invoke;
    block[3] = &unk_1E86CB938;
    block[4] = &v21;
    dispatch_group_notify(v5, MEMORY[0x1E69E96A0], block);
    v6 = [MEMORY[0x1E695DFD0] currentRunLoop];
    v7 = [v6 currentMode];
    v8 = v7;
    v9 = *MEMORY[0x1E695D918];
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    if (a3 >= 0.0)
    {
      v11 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:a3];
    }

    else
    {
      v11 = [MEMORY[0x1E695DF00] distantFuture];
    }

    v13 = v11;
    while (1)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = [MEMORY[0x1E695DFD0] currentRunLoop];
      v16 = [v15 runMode:v10 beforeDate:v13];

      objc_autoreleasePoolPop(v14);
      v17 = v22;
      if (!v16 || (v22[3] & 1) != 0)
      {
        break;
      }

      [v13 timeIntervalSinceNow];
      if (v18 <= 0.0)
      {
        v17 = v22;
        break;
      }
    }

    v12 = -(*(v17 + 24) ^ 1);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v12 = dispatch_group_wait(v5, a2);
  }

  return v12;
}

void sub_1DF8BB838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _CleanupAllocations(void *a1)
{
  v3 = a1;
  v1 = objc_autoreleasePoolPush();
  v2 = [v3 objectsPassingTest:&__block_literal_global_17];
  if ([v2 count])
  {
    [v3 minusSet:v2];
  }

  objc_autoreleasePoolPop(v1);
}

void sub_1DF8BC820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _SYStatisticsPrune(int a1, sqlite3 *db, uint64_t a3, int a4)
{
  if (a4 >= 1001)
  {
    sqlite3_wal_checkpoint_v2(db, 0, 3, 0, 0);
    v4 = +[SYStatisticStore sharedInstance];
    [v4 _pruneOldData];
  }

  return 0;
}

uint64_t ExecuteSQL_2(sqlite3 *a1, char *a2, ...)
{
  va_start(va, a2);
  if (!a1)
  {
    return 1;
  }

  va_copy(&v6[1], va);
  v3 = sqlite3_vmprintf(a2, va);
  v6[0] = 0;
  v4 = sqlite3_exec(a1, v3, 0, 0, v6);
  if (v4 && v6[0])
  {
    if (_stats_log_pred != -1)
    {
      [SYStatisticStore _tableEmpty:];
    }

    if (os_log_type_enabled(_stats_log, OS_LOG_TYPE_ERROR))
    {
      ExecuteSQL_cold_2();
    }

    sqlite3_free(v6[0]);
  }

  sqlite3_free(v3);
  return v4;
}

uint64_t _stats_log_init()
{
  v0 = os_log_create("com.apple.companionsync", "message-statistics");
  v1 = _stats_log;
  _stats_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return _os_once();
}

void SYThrowWrongSessionType(uint64_t a1, const char *a2)
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = objc_opt_class();
  v7 = NSStringFromClass(v5);
  v6 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Class %@ does not implement message %@. You are using the wrong kind of session.", v7, v6}];
}

id UserInfoDictionaryWithAssociatedSessionID(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = @"AssociatedSessionIdentifier";
    v7[0] = a1;
    v1 = MEMORY[0x1E695DF20];
    v2 = a1;
    v3 = [v1 dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

dispatch_queue_t MakeDefaultDelegateQueue(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  v2 = [v1 lastPathComponent];
  snprintf(__str, 0x80uLL, "%s Session Default Delegate Queue", [v2 UTF8String]);

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create_with_target_V2(__str, v3, 0);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t SYSyncEndResponseReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v23 = objc_alloc_init(SYErrorInfo);
          objc_storeStrong((a1 + 8), v23);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !SYErrorInfoReadFrom(v23, a2))
          {
LABEL_46:

            return 0;
          }

          goto LABEL_39;
        }

        if (v13 == 4)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v26) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v26 & 0x7F) << v16;
            if ((v26 & 0x80) == 0)
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
          *(a1 + 16) = v22;
          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v23 = objc_alloc_init(SYMessageHeader);
          objc_storeStrong((a1 + 24), v23);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !SYMessageHeaderReadFrom(v23, a2))
          {
            goto LABEL_46;
          }

LABEL_39:
          PBReaderRecallMark();

          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
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

uint64_t SYLogDeviceStateReadFrom(uint64_t a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = PBReaderReadString();
        v15 = 8;
LABEL_36:
        v24 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_41;
      }

      if (v13 != 4)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_41;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        v27 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v27 & 0x7F) << v16;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_40;
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

LABEL_40:
      *(a1 + 32) = v22;
LABEL_41:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v14 = PBReaderReadString();
      v15 = 24;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_32;
      }

      v14 = PBReaderReadString();
      v15 = 16;
    }

    goto LABEL_36;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SYVectorClockReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(SYClock);
        [a1 addClocks:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SYClockReadFrom(v13, a2))
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

uint64_t SYPeerReadFrom(uint64_t a1, void *a2)
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
        v13 = &OBJC_IVAR___SYPeer__generationID;
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

    v13 = &OBJC_IVAR___SYPeer__peerID;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SYSyncAllObjectsReadFrom(uint64_t a1, void *a2)
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
        if (v13 == 4)
        {
          v23 = PBReaderReadData();
          if (v23)
          {
            [a1 addAllObjects:v23];
          }

LABEL_39:

          goto LABEL_44;
        }

        if (v13 == 3)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
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
          v23 = objc_alloc_init(SYMessageHeader);
          objc_storeStrong((a1 + 24), v23);
          v26[0] = 0;
          v26[1] = 0;
          if (!PBReaderPlaceMark() || !SYMessageHeaderReadFrom(v23, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_39;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
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

void SYLogSQLiteExtendedErrorCode_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1DF835000, v0, v1, "%{public}s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void SYLogSQLiteExtendedErrorCode_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1DF835000, v0, v1, "%{public}s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void SYLogSQLiteExtendedErrorCode_cold_6()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1DF835000, v0, v1, "%{public}s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void SYLogSQLiteExtendedErrorCode_cold_8(int a1)
{
  v8 = *MEMORY[0x1E69E9840];
  _SQLiteConstraintError(a1);
  OUTLINED_FUNCTION_3(&dword_1DF835000, v1, v2, "%{public}s", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

void SYLogSQLiteExtendedErrorCode_cold_10()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1DF835000, v0, v1, "%{public}s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void SYLogSQLiteExtendedErrorCode_cold_12(int a1)
{
  v12 = *MEMORY[0x1E69E9840];
  HIDWORD(v2) = a1 - 264;
  LODWORD(v2) = a1 - 264;
  v1 = v2 >> 8;
  if (v1 <= 3)
  {
    v3 = off_1E86C9E18[v1];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1DF835000, v4, v5, "%{public}s", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x1E69E9840];
}

void SYLogSQLiteExtendedErrorCode_cold_14()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1DF835000, v0, v1, "%{public}s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void SYLogSQLiteExtendedErrorCode_cold_16(int a1)
{
  v12 = *MEMORY[0x1E69E9840];
  HIDWORD(v2) = a1 - 270;
  LODWORD(v2) = a1 - 270;
  v1 = v2 >> 8;
  if (v1 <= 3)
  {
    v3 = off_1E86C9DF8[v1];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1DF835000, v4, v5, "%{public}s", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x1E69E9840];
}

void SYLogSQLiteExtendedErrorCode_cold_18()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1DF835000, v0, v1, "%{public}s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void SYLogSQLiteExtendedErrorCode_cold_20()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1DF835000, v0, v1, "%{public}s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void SYLogSQLiteExtendedErrorCode_cold_22(int a1)
{
  v8 = *MEMORY[0x1E69E9840];
  _SQLiteIOError(a1);
  OUTLINED_FUNCTION_3(&dword_1DF835000, v1, v2, "%{public}s", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

void _LogInfoForPath_cold_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = _SYObfuscate(a3);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_6_1(&dword_1DF835000, v6, v7, "Failed to get attrs of path '%@', will print attrs of closest non-failing parent. Error = %{public}@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x1E69E9840];
}

void _LogInfoForPath_cold_5()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(&dword_1DF835000, v0, OS_LOG_TYPE_ERROR, "Unable to get any attributes for any parent. Error = %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void LogWithTrace_cold_3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 136446210;
  v4 = a1;
  _os_log_debug_impl(&dword_1DF835000, a2, OS_LOG_TYPE_DEBUG, "%{public}s", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void LogWithTrace_cold_4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1DF835000, a2, OS_LOG_TYPE_DEBUG, "Backtrace:\n%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void ExecuteSQL_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_5(&dword_1DF835000, v0, v1, "sqlite3_exec(%{public}s) Error - %{companionsync:sqlite3err, public}d");
  v2 = *MEMORY[0x1E69E9840];
}

NSRange NSRangeFromString(NSString *aString)
{
  v1 = MEMORY[0x1EEDC70A0](aString);
  result.length = v2;
  result.location = v1;
  return result;
}