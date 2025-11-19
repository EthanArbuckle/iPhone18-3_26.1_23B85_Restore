id _sharedXPCClientFactory()
{
  if (_sharedXPCClientFactory_onceToken != -1)
  {
    _sharedXPCClientFactory_cold_1();
  }

  v1 = _sharedXPCClientFactory_sharedFactory;

  return v1;
}

id _sharedQueue()
{
  if (_sharedQueue_onceToken != -1)
  {
    _sharedQueue_cold_1();
  }

  v1 = _sharedQueue_sharedQueue;

  return v1;
}

void ___sharedQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("CCSetDonation.shared", v2);
  v1 = _sharedQueue_sharedQueue;
  _sharedQueue_sharedQueue = v0;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
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

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id CCTypeIdentifierRegistryBridge()
{
  if (CCTypeIdentifierRegistryBridge_onceToken != -1)
  {
    CCTypeIdentifierRegistryBridge_cold_1();
  }

  v1 = CCTypeIdentifierRegistryBridge_registryClass;

  return v1;
}

void __CCTypeIdentifierRegistryBridge_block_invoke()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getCCTypeIdentifierRegistryClass_softClass;
  v6 = getCCTypeIdentifierRegistryClass_softClass;
  if (!getCCTypeIdentifierRegistryClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getCCTypeIdentifierRegistryClass_block_invoke;
    v2[3] = &unk_1E7C8AF28;
    v2[4] = &v3;
    __getCCTypeIdentifierRegistryClass_block_invoke(v2);
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);
  CCTypeIdentifierRegistryBridge_registryClass = v0;
  if (!v0)
  {
    __CCTypeIdentifierRegistryBridge_block_invoke_cold_1();
  }
}

void sub_1B6DB3DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCCTypeIdentifierRegistryClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!IntelligencePlatformLibraryLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __IntelligencePlatformLibraryLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7C8B150;
    v6 = 0;
    IntelligencePlatformLibraryLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!IntelligencePlatformLibraryLibraryCore_frameworkLibrary_1)
  {
    __getCCTypeIdentifierRegistryClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("CCTypeIdentifierRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCCTypeIdentifierRegistryClass_block_invoke_cold_1();
  }

  getCCTypeIdentifierRegistryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id CCDonateServiceRequestDescription(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5)
{
  v8 = a2;
  v21 = a4;
  v9 = [MEMORY[0x1E698E9D0] currentPersonaIdentifierLoggingDescription];
  v10 = MEMORY[0x1E696AEC0];
  v11 = CCTypeIdentifierRegistryBridge();
  v12 = [v11 descriptionForTypeIdentifier:a3];
  if (v8)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@":%@", v8];
  }

  else
  {
    v13 = &stru_1F2EBB700;
  }

  if (a5)
  {
    v14 = MEMORY[0x1E696AEC0];
    v19 = CCDonateServiceOptionsDescription(a5);
    v15 = [v14 stringWithFormat:@":[%@]", v19];
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v15 = &stru_1F2EBB700;
    if (v9)
    {
LABEL_6:
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@":persona=%@", v9];
      v17 = [v10 stringWithFormat:@"<%@:%@:%llu%@%@%@>", v12, v21, a1, v13, v15, v16];

      if (!a5)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  v17 = [v10 stringWithFormat:@"<%@:%@:%llu%@%@%@>", v12, v21, a1, v13, v15, &stru_1F2EBB700];
  if (a5)
  {
LABEL_7:
  }

LABEL_8:
  if (v8)
  {
  }

  return v17;
}

__CFString *CCDonateServiceOptionsDescription(int a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_opt_new();
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"TombstoneSet"];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"RemoteCRDT"];
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }

LABEL_16:
    [v3 addObject:@"FullSet"];
    if ((v1 & 8) == 0)
    {
LABEL_6:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }

LABEL_17:
    [v3 addObject:@"InlineFallback"];
    if ((v1 & 0x10) == 0)
    {
LABEL_7:
      if ((v1 & 0x20) == 0)
      {
LABEL_9:
        v4 = [v3 componentsJoinedByString:@"|"];

        goto LABEL_11;
      }

LABEL_8:
      [v3 addObject:@"AwaitingFullSet"];
      goto LABEL_9;
    }

LABEL_18:
    [v3 addObject:@"DesignateAsFullSet"];
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v4 = &stru_1F2EBB700;
LABEL_11:

  return v4;
}

id CCHash64(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 length];
    v4 = [v2 bytes];
    if (v3 >= 0x10)
    {
      v5 = 0;
      v6 = 0;
      v8 = (v4 + 8);
      do
      {
        v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *(v8 - 1)) ^ ((0x9DDFEA08EB382D69 * *(v8 - 1)) >> 44));
        v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *v8) ^ ((0x9DDFEA08EB382D69 * *v8) >> 44));
        v6 -= 0x622015F714C7D297 * ((v10 ^ (v10 >> 41)) + (v9 ^ (v9 >> 41)));
        v5 += 16;
        v8 += 2;
      }

      while (v5 < (v3 & 0xFFFFFFF0));
    }

    else
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }

    if (v3 > v5)
    {
      __memcpy_chk();
    }

    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v6];
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

id CCAttributionIdentifier(void *a1)
{
  v1 = a1;
  v2 = CCTypeIdentifierRegistryBridge();
  v3 = [v2 descriptionForTypeIdentifier:{objc_msgSend(v1, "itemType")}];

  v4 = [v1 descriptorWithKey:@"sourceIdentifier"];

  v5 = [v4 value];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v3, v5];
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v7;
}

unsigned __int8 *_columnValueFromSQLiteStatement(sqlite3_stmt *a1, uint64_t a2)
{
  v4 = sqlite3_column_type(a1, a2);
  v5 = v4;
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(a1, a2)}];
      goto LABEL_20;
    }

    if (v4 == 2)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(a1, a2)}];
      goto LABEL_20;
    }

LABEL_13:
    v11 = sqlite3_column_text(a1, a2);
    if (v11)
    {
      v12 = v11;
      v8 = objc_alloc(MEMORY[0x1E696AEC0]);
      v9 = v12;
LABEL_15:
      v6 = [v8 initWithUTF8String:v9];
      goto LABEL_20;
    }

    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      _columnValueFromSQLiteStatement_cold_1(a2, v5);
    }

    goto LABEL_19;
  }

  if (v4 == 3)
  {
    v6 = sqlite3_column_text(a1, a2);
    if (!v6)
    {
      goto LABEL_20;
    }

    v7 = v6;
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = v7;
    goto LABEL_15;
  }

  if (v4 == 4)
  {
    v10 = sqlite3_column_blob(a1, a2);
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:v10 length:{sqlite3_column_bytes(a1, a2)}];
    goto LABEL_20;
  }

  if (v4 != 5)
  {
    goto LABEL_13;
  }

LABEL_19:
  v6 = 0;
LABEL_20:

  return v6;
}

uint64_t CCDonateServiceResponseDescription(uint64_t a1)
{
  if (a1 > 0xB)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E7C8BAE8[a1];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"(%u) %@", a1, v3, v1, v2];
}

void CCPBDataWriterWriteStringField(uint64_t a1, void *a2, int a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([v5 length] <= 0xA5 && (__n = 0, objc_msgSend(v5, "getBytes:maxLength:usedLength:encoding:options:range:remainingRange:", __src, 1000, &__n, 4, 4, 0, objc_msgSend(v5, "length"), 0)))
  {
    v6 = __n;
    v7 = *(a1 + 8);
    v8 = v7[3];
    if (v8 < v7[1] + __n + 16)
    {
      if (v8 - v7[2] <= __n + 16)
      {
        v41 = __n + 16;
      }

      else
      {
        v41 = v8 - v7[2];
      }

      [(CCPBMutableData *)v7 _pb_growCapacityBy:v41];
      v7 = *(a1 + 8);
    }

    if (a3 != -1)
    {
      v9 = (8 * a3) | 2u;
      v10 = v7[1];
      if ((8 * a3) < 0x80)
      {
        LOBYTE(v11) = (8 * a3) | 2;
      }

      else
      {
        do
        {
          *v10++ = v9 | 0x80;
          v11 = v9 >> 7;
          v12 = v9 >> 14;
          v9 >>= 7;
        }

        while (v12);
      }

      *v10 = v11;
      *(*(a1 + 8) + 8) = v10 + 1;
      v7 = *(a1 + 8);
    }

    v34 = v7[1];
    if (v6 < 0x80)
    {
      LOBYTE(v36) = v6;
    }

    else
    {
      v35 = v6;
      do
      {
        *v34++ = v35 | 0x80;
        v36 = v35 >> 7;
        v37 = v35 >> 14;
        v35 >>= 7;
      }

      while (v37);
    }

    *v34 = v36;
    *(*(a1 + 8) + 8) = v34 + 1;
    memcpy(*(*(a1 + 8) + 8), __src, v6);
    *(*(a1 + 8) + 8) += v6;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = [v5 dataUsingEncoding:4];
    if ([v14 length])
    {
      v15 = [v14 bytes];
      v16 = [v14 length];
      v17 = *(a1 + 8);
      v18 = v17[3];
      if (v18 < v17[1] + v16 + 16)
      {
        if (v18 - v17[2] <= v16 + 16)
        {
          v39 = v16 + 16;
        }

        else
        {
          v39 = v18 - v17[2];
        }

        [(CCPBMutableData *)v17 _pb_growCapacityBy:v39];
        v17 = *(a1 + 8);
      }

      if (a3 != -1)
      {
        v19 = (8 * a3) | 2u;
        v20 = v17[1];
        if ((8 * a3) < 0x80)
        {
          LOBYTE(v21) = (8 * a3) | 2;
        }

        else
        {
          do
          {
            *v20++ = v19 | 0x80;
            v21 = v19 >> 7;
            v22 = v19 >> 14;
            v19 >>= 7;
          }

          while (v22);
        }

        *v20 = v21;
        *(*(a1 + 8) + 8) = v20 + 1;
        v17 = *(a1 + 8);
      }

      v29 = v17[1];
      if (v16 < 0x80)
      {
        LOBYTE(v31) = v16;
      }

      else
      {
        v30 = v16;
        do
        {
          *v29++ = v30 | 0x80;
          v31 = v30 >> 7;
          v32 = v30 >> 14;
          v30 >>= 7;
        }

        while (v32);
      }

      *v29 = v31;
      *(*(a1 + 8) + 8) = v29 + 1;
      memcpy(*(*(a1 + 8) + 8), v15, v16);
      *(*(a1 + 8) + 8) += v16;
    }

    else
    {
      v23 = *(a1 + 8);
      v24 = v23[3];
      if (v24 < v23[1] + 16)
      {
        if (v24 - v23[2] <= 0x10)
        {
          v40 = 16;
        }

        else
        {
          v40 = v24 - v23[2];
        }

        [(CCPBMutableData *)v23 _pb_growCapacityBy:v40];
        v23 = *(a1 + 8);
      }

      if (a3 != -1)
      {
        v25 = (8 * a3) | 2u;
        v26 = v23[1];
        if ((8 * a3) < 0x80)
        {
          LOBYTE(v27) = (8 * a3) | 2;
        }

        else
        {
          do
          {
            *v26++ = v25 | 0x80;
            v27 = v25 >> 7;
            v28 = v25 >> 14;
            v25 >>= 7;
          }

          while (v28);
        }

        *v26 = v27;
        *(*(a1 + 8) + 8) = v26 + 1;
        v23 = *(a1 + 8);
      }

      v33 = v23[1];
      *v33 = 0;
      *(*(a1 + 8) + 8) = v33 + 1;
    }

    objc_autoreleasePoolPop(v13);
  }

  v38 = *MEMORY[0x1E69E9840];
}

BOOL CCValidateNonNilField(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided object for field %@ is nil, expected non-nil", a1, *MEMORY[0x1E696A278]];
    v12[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v5 errorWithDomain:@"com.apple.CascadeSets.Item" code:2 userInfo:v7];
    if (a3 && v8)
    {
      v8 = v8;
      *a3 = v8;
    }
  }

  result = a2 != 0;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CCValidateIsInstanceOfExpectedClass(void *a1, void *a2, objc_class *a3, void *a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v10 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A278];
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromClass(a3);
    v15 = [v11 stringWithFormat:@"Provided object for field %@ is of class %@, expected class: %@", v7, v13, v14, v20];
    v21[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v17 = [v10 errorWithDomain:@"com.apple.CascadeSets.Item" code:2 userInfo:v16];
    if (a4 && v17)
    {
      v17 = v17;
      *a4 = v17;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return isKindOfClass & 1;
}

id CCPBReaderReadStringNoCopy(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = v1[1];
  while (1)
  {
    v7 = v6 + 1;
    if (v6 == -1 || v7 > v1[5])
    {
      break;
    }

    v8 = *(v1[3] + v6);
    v1[1] = v7;
    v5 |= (v8 & 0x7F) << v3;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v3 += 7;
    v6 = v7;
    v9 = v4++ >= 9;
    if (v9)
    {
      v10 = 0;
      goto LABEL_12;
    }
  }

  v1[2] = 1;
LABEL_9:
  if (v1[2])
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

LABEL_12:
  if ([v1 hasError])
  {
    v11 = 0;
  }

  else
  {
    v12 = v2[1];
    v9 = __CFADD__(v12, v10);
    v13 = v12 + v10;
    if (v9 || v13 > v2[5])
    {
      v11 = 0;
      v2[2] = 1;
    }

    else
    {
      v14 = v2[4];
      v15 = [v14 bytes];
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v15 + v2[1] length:v10 encoding:4 freeWhenDone:0];
      v2[1] += v10;
    }
  }

  return v11;
}

void CCPBDataWriterWriteDataField(uint64_t a1, void *a2, int a3)
{
  v19 = a2;
  v5 = v19;
  v6 = [v19 bytes];
  v7 = [v19 length];
  v8 = *(a1 + 8);
  v9 = v8[3];
  if (v9 < v8[1] + v7 + 16)
  {
    if (v9 - v8[2] <= v7 + 16)
    {
      v18 = v7 + 16;
    }

    else
    {
      v18 = v9 - v8[2];
    }

    [(CCPBMutableData *)v8 _pb_growCapacityBy:v18];
    v8 = *(a1 + 8);
  }

  if (a3 != -1)
  {
    v10 = (8 * a3) | 2u;
    v11 = v8[1];
    if ((8 * a3) < 0x80)
    {
      LOBYTE(v12) = (8 * a3) | 2;
    }

    else
    {
      do
      {
        *v11++ = v10 | 0x80;
        v12 = v10 >> 7;
        v13 = v10 >> 14;
        v10 >>= 7;
      }

      while (v13);
    }

    *v11 = v12;
    *(*(a1 + 8) + 8) = v11 + 1;
    v8 = *(a1 + 8);
  }

  v14 = v8[1];
  if (v7 < 0x80)
  {
    LOBYTE(v16) = v7;
  }

  else
  {
    v15 = v7;
    do
    {
      *v14++ = v15 | 0x80;
      v16 = v15 >> 7;
      v17 = v15 >> 14;
      v15 >>= 7;
    }

    while (v17);
  }

  *v14 = v16;
  *(*(a1 + 8) + 8) = v14 + 1;
  memcpy(*(*(a1 + 8) + 8), v6, v7);
  *(*(a1 + 8) + 8) += v7;
}

id CCPBReaderReadDataNoCopy(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = v1[1];
  while (1)
  {
    v7 = v6 + 1;
    if (v6 == -1 || v7 > v1[5])
    {
      break;
    }

    v8 = *(v1[3] + v6);
    v1[1] = v7;
    v5 |= (v8 & 0x7F) << v3;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v3 += 7;
    v6 = v7;
    v9 = v4++ >= 9;
    if (v9)
    {
      v10 = 0;
      goto LABEL_12;
    }
  }

  v1[2] = 1;
LABEL_9:
  if (v1[2])
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

LABEL_12:
  if ([v1 hasError])
  {
    v11 = 0;
  }

  else
  {
    v12 = v2[1];
    v9 = __CFADD__(v12, v10);
    v13 = v12 + v10;
    if (v9 || v13 > v2[5])
    {
      v11 = 0;
      v2[2] = 1;
    }

    else
    {
      v14 = v2[4];
      v15 = [v14 bytes];
      v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v15 + v2[1] length:v10 freeWhenDone:0];
      v2[1] += v10;
    }
  }

  return v11;
}

id _resolveItemMessageSubclass(uint64_t a1, void *a2)
{
  v4 = CCTypeIdentifierRegistryBridge();
  v5 = [v4 itemMessageSubclassForItemType:a1];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided item type %hu is not a valid item identifier", a1];
    v8 = CCUnrecognizedIdentifierErrorForDescription(v7);
    CCSetError(a2, v8);
  }

  return v5;
}

id CCHash64String(void *a1)
{
  v1 = [a1 dataUsingEncoding:4];
  v2 = CCHash64(v1);

  return v2;
}

id _NSNullIfNilObject(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v4 = v3;

  return v4;
}

void *CCSetError(void *result, id a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      result = a2;
      *v3 = a2;
    }
  }

  return result;
}

id getCKDistributedTimestampClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCKDistributedTimestampClass_softClass;
  v7 = getCKDistributedTimestampClass_softClass;
  if (!getCKDistributedTimestampClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCKDistributedTimestampClass_block_invoke;
    v3[3] = &unk_1E7C8AF28;
    v3[4] = &v4;
    __getCKDistributedTimestampClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B6DB683C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CCConcatenateHash64(void *a1, void *a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1 longLongValue];
  v5 = [v3 longLongValue];

  v9[0] = v4;
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DEF0] dataWithBytes:v9 length:16];
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id getCKDistributedTimestampStateVectorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCKDistributedTimestampStateVectorClass_softClass;
  v7 = getCKDistributedTimestampStateVectorClass_softClass;
  if (!getCKDistributedTimestampStateVectorClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCKDistributedTimestampStateVectorClass_block_invoke;
    v3[3] = &unk_1E7C8AF28;
    v3[4] = &v4;
    __getCKDistributedTimestampStateVectorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B6DB7974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCKDistributedTimestampStateVectorClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCKDistributedTimestampStateVectorClass_softClass_0;
  v7 = getCKDistributedTimestampStateVectorClass_softClass_0;
  if (!getCKDistributedTimestampStateVectorClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCKDistributedTimestampStateVectorClass_block_invoke_0;
    v3[3] = &unk_1E7C8AF28;
    v3[4] = &v4;
    __getCKDistributedTimestampStateVectorClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B6DB7A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCKDistributedTimestampStateVectorClass_1()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCKDistributedTimestampStateVectorClass_softClass_1;
  v7 = getCKDistributedTimestampStateVectorClass_softClass_1;
  if (!getCKDistributedTimestampStateVectorClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCKDistributedTimestampStateVectorClass_block_invoke_1;
    v3[3] = &unk_1E7C8AF28;
    v3[4] = &v4;
    __getCKDistributedTimestampStateVectorClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B6DB7B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B6DB85F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6DB865C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB977B28, &qword_1B6E0EC68);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1B6DB86A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6DB86E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6DB8718()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1B6DB877C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6DB87BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1B6DB8B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CCScanHexString(uint64_t a1)
{
  v4 = 0;
  v1 = [MEMORY[0x1E696AE88] scannerWithString:a1];
  [v1 scanHexLongLong:&v4];
  v2 = v4;

  return v2;
}

id CCConcatenatedHash64Prefix(void *a1)
{
  v1 = a1;
  if ([v1 length] == 16)
  {
    v4 = 0;
    [v1 getBytes:&v4 range:{0, 8}];
    v2 = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id CCConcatenatedHash64Suffix(void *a1)
{
  v1 = a1;
  if ([v1 length] == 16)
  {
    v4 = 0;
    [v1 getBytes:&v4 range:{8, 8}];
    v2 = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t CCSerializedSetFormatFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqual:@"binary"])
  {
    v2 = 1;
  }

  else if ([v1 isEqual:@"json"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

CCDevice *_decodeDevice(void *a1)
{
  v1 = a1;
  v2 = [v1 platformString];
  v3 = BMDevicePlatformFromString();

  v4 = [CCDevice alloc];
  v5 = [v1 deviceUUID];
  v6 = [v1 idsDeviceIdentifier];
  v7 = -[CCDevice initWithDeviceUUID:idsDeviceId:platform:options:](v4, "initWithDeviceUUID:idsDeviceId:platform:options:", v5, v6, v3, [v1 options]);

  if (!v7)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _decodeDevice_cold_1(v1);
    }
  }

  return v7;
}

void sub_1B6DBA278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 184), 8);
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

id getCCSerializedSetMessageClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCCSerializedSetMessageClass_softClass;
  v7 = getCCSerializedSetMessageClass_softClass;
  if (!getCCSerializedSetMessageClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCCSerializedSetMessageClass_block_invoke;
    v3[3] = &unk_1E7C8AF28;
    v3[4] = &v4;
    __getCCSerializedSetMessageClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B6DBAB8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _encodeDescriptors(void *a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v5)
  {
    v6 = *v21;
    v18 = v25;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v26 = 0;
        v27 = &v26;
        v28 = 0x2050000000;
        v9 = getCCSerializedSetDescriptorClass_softClass;
        v29 = getCCSerializedSetDescriptorClass_softClass;
        if (!getCCSerializedSetDescriptorClass_softClass)
        {
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v25[0] = __getCCSerializedSetDescriptorClass_block_invoke;
          v25[1] = &unk_1E7C8AF28;
          v25[2] = &v26;
          __getCCSerializedSetDescriptorClass_block_invoke(v24);
          v9 = v27[3];
        }

        v10 = v9;
        _Block_object_dispose(&v26, 8);
        v11 = [v9 alloc];
        v12 = [v8 key];
        v13 = [v8 value];
        v14 = [v11 initWithKey:v12 value:v13 error:a2];

        if (!v14)
        {

          v15 = 0;
          goto LABEL_13;
        }

        [v4 addObject:v14];
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v15 = [v4 copy];
LABEL_13:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void sub_1B6DBB054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCCSerializedSetDeviceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCCSerializedSetDeviceClass_softClass;
  v7 = getCCSerializedSetDeviceClass_softClass;
  if (!getCCSerializedSetDeviceClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCCSerializedSetDeviceClass_block_invoke;
    v3[3] = &unk_1E7C8AF28;
    v3[4] = &v4;
    __getCCSerializedSetDeviceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B6DBB1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCCSerializedSetItemClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCCSerializedSetItemClass_softClass;
  v7 = getCCSerializedSetItemClass_softClass;
  if (!getCCSerializedSetItemClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCCSerializedSetItemClass_block_invoke;
    v3[3] = &unk_1E7C8AF28;
    v3[4] = &v4;
    __getCCSerializedSetItemClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B6DBB844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6DBBE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose((v50 - 248), 8);
  _Block_object_dispose((v50 - 200), 8);
  _Block_object_dispose((v50 - 152), 8);
  _Block_object_dispose((v50 - 120), 8);
  _Unwind_Resume(a1);
}

id _encodeDevice(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_alloc(getCCSerializedSetDeviceClass());
  v5 = [v3 deviceUUID];
  v6 = [v3 idsDeviceIdentifier];
  [v3 platform];
  v7 = BMDevicePlatformToString();
  v8 = MEMORY[0x1E696AD98];
  v9 = [v3 options];

  v10 = [v8 numberWithUnsignedChar:v9];
  v11 = [v4 initWithDeviceUUID:v5 idsDeviceIdentifier:v6 platformString:v7 options:v10 error:a2];

  return v11;
}

Class __getCCSerializedSetMessageClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  result = objc_getClass("CCSerializedSetMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCCSerializedSetMessageClass_block_invoke_cold_1();
  }

  getCCSerializedSetMessageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void IntelligencePlatformLibraryLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!IntelligencePlatformLibraryLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __IntelligencePlatformLibraryLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7C8AF48;
    v3 = 0;
    IntelligencePlatformLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!IntelligencePlatformLibraryLibraryCore_frameworkLibrary)
  {
    IntelligencePlatformLibraryLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __IntelligencePlatformLibraryLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IntelligencePlatformLibraryLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getCCSerializedSetDeviceClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  result = objc_getClass("CCSerializedSetDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCCSerializedSetDeviceClass_block_invoke_cold_1();
  }

  getCCSerializedSetDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCCSerializedSetItemClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  result = objc_getClass("CCSerializedSetItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCCSerializedSetItemClass_block_invoke_cold_1();
  }

  getCCSerializedSetItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCCSerializedSetDescriptorClass_block_invoke(uint64_t a1)
{
  IntelligencePlatformLibraryLibrary();
  result = objc_getClass("CCSerializedSetDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCCSerializedSetDescriptorClass_block_invoke_cold_1();
  }

  getCCSerializedSetDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t CCPBDataWriterWriteBareVarint(_BYTE *a1, unint64_t a2)
{
  v2 = a1;
  if (a2 < 0x80)
  {
    LOBYTE(v3) = a2;
  }

  else
  {
    do
    {
      *v2++ = a2 | 0x80;
      v3 = a2 >> 7;
      v4 = a2 >> 14;
      a2 >>= 7;
    }

    while (v4);
  }

  *v2 = v3;
  return v2 - a1 + 1;
}

void *CCPBDataWriterWriteInt32Field(uint64_t a1, unsigned int a2, int a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 16)
  {
    v16 = v7 - result[2];
    if (v16 <= 0x10)
    {
      v17 = 16;
    }

    else
    {
      v17 = v16;
    }

    [(CCPBMutableData *)result _pb_growCapacityBy:v17];
    result = *(a1 + 8);
  }

  v8 = a2;
  if (a3 != -1)
  {
    v9 = (8 * a3);
    v10 = result[1];
    if (v9 < 0x80)
    {
      LOBYTE(v11) = 8 * a3;
    }

    else
    {
      do
      {
        *v10++ = v9 | 0x80;
        v11 = v9 >> 7;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
    }

    *v10 = v11;
    *(*(a1 + 8) + 8) = v10 + 1;
    result = *(a1 + 8);
  }

  v13 = result[1];
  if (a2 < 0x80)
  {
    LOBYTE(v14) = a2;
  }

  else
  {
    do
    {
      *v13++ = v8 | 0x80;
      v14 = v8 >> 7;
      v15 = v8 >> 14;
      v8 >>= 7;
    }

    while (v15);
  }

  *v13 = v14;
  *(*(a1 + 8) + 8) = v13 + 1;
  return result;
}

void *CCPBDataWriterWriteInt64Field(uint64_t a1, unint64_t a2, int a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 16)
  {
    if (v7 - result[2] <= 0x10)
    {
      v15 = 16;
    }

    else
    {
      v15 = v7 - result[2];
    }

    [(CCPBMutableData *)result _pb_growCapacityBy:v15];
    result = *(a1 + 8);
  }

  if (a3 != -1)
  {
    v8 = (8 * a3);
    v9 = result[1];
    if (v8 < 0x80)
    {
      LOBYTE(v10) = 8 * a3;
    }

    else
    {
      do
      {
        *v9++ = v8 | 0x80;
        v10 = v8 >> 7;
        v11 = v8 >> 14;
        v8 >>= 7;
      }

      while (v11);
    }

    *v9 = v10;
    *(*(a1 + 8) + 8) = v9 + 1;
    result = *(a1 + 8);
  }

  v12 = result[1];
  if (a2 < 0x80)
  {
    LOBYTE(v13) = a2;
  }

  else
  {
    do
    {
      *v12++ = a2 | 0x80;
      v13 = a2 >> 7;
      v14 = a2 >> 14;
      a2 >>= 7;
    }

    while (v14);
  }

  *v12 = v13;
  *(*(a1 + 8) + 8) = v12 + 1;
  return result;
}

void *CCPBDataWriterWriteUint32Field(uint64_t a1, unsigned int a2, int a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 16)
  {
    v16 = v7 - result[2];
    if (v16 <= 0x10)
    {
      v17 = 16;
    }

    else
    {
      v17 = v16;
    }

    [(CCPBMutableData *)result _pb_growCapacityBy:v17];
    result = *(a1 + 8);
  }

  v8 = a2;
  if (a3 != -1)
  {
    v9 = (8 * a3);
    v10 = result[1];
    if (v9 < 0x80)
    {
      LOBYTE(v11) = 8 * a3;
    }

    else
    {
      do
      {
        *v10++ = v9 | 0x80;
        v11 = v9 >> 7;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
    }

    *v10 = v11;
    *(*(a1 + 8) + 8) = v10 + 1;
    result = *(a1 + 8);
  }

  v13 = result[1];
  if (a2 < 0x80)
  {
    LOBYTE(v14) = a2;
  }

  else
  {
    do
    {
      *v13++ = v8 | 0x80;
      v14 = v8 >> 7;
      v15 = v8 >> 14;
      v8 >>= 7;
    }

    while (v15);
  }

  *v13 = v14;
  *(*(a1 + 8) + 8) = v13 + 1;
  return result;
}

void *CCPBDataWriterWriteUint64Field(uint64_t a1, unint64_t a2, int a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 16)
  {
    if (v7 - result[2] <= 0x10)
    {
      v15 = 16;
    }

    else
    {
      v15 = v7 - result[2];
    }

    [(CCPBMutableData *)result _pb_growCapacityBy:v15];
    result = *(a1 + 8);
  }

  if (a3 != -1)
  {
    v8 = (8 * a3);
    v9 = result[1];
    if (v8 < 0x80)
    {
      LOBYTE(v10) = 8 * a3;
    }

    else
    {
      do
      {
        *v9++ = v8 | 0x80;
        v10 = v8 >> 7;
        v11 = v8 >> 14;
        v8 >>= 7;
      }

      while (v11);
    }

    *v9 = v10;
    *(*(a1 + 8) + 8) = v9 + 1;
    result = *(a1 + 8);
  }

  v12 = result[1];
  if (a2 < 0x80)
  {
    LOBYTE(v13) = a2;
  }

  else
  {
    do
    {
      *v12++ = a2 | 0x80;
      v13 = a2 >> 7;
      v14 = a2 >> 14;
      a2 >>= 7;
    }

    while (v14);
  }

  *v12 = v13;
  *(*(a1 + 8) + 8) = v12 + 1;
  return result;
}

void *CCPBDataWriterWriteBOOLField(uint64_t a1, char a2, int a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 16)
  {
    if (v7 - result[2] <= 0x10)
    {
      v13 = 16;
    }

    else
    {
      v13 = v7 - result[2];
    }

    [(CCPBMutableData *)result _pb_growCapacityBy:v13];
    result = *(a1 + 8);
  }

  if (a3 != -1)
  {
    v8 = (8 * a3);
    v9 = result[1];
    if (v8 < 0x80)
    {
      LOBYTE(v10) = 8 * a3;
    }

    else
    {
      do
      {
        *v9++ = v8 | 0x80;
        v10 = v8 >> 7;
        v11 = v8 >> 14;
        v8 >>= 7;
      }

      while (v11);
    }

    *v9 = v10;
    *(*(a1 + 8) + 8) = v9 + 1;
    result = *(a1 + 8);
  }

  v12 = result[1];
  *v12 = a2;
  *(*(a1 + 8) + 8) = v12 + 1;
  return result;
}

void *CCPBDataWriterWriteSint32Field(uint64_t a1, int a2, int a3)
{
  v5 = (2 * a2) ^ (a2 >> 31);
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 16)
  {
    if (v7 - result[2] <= 0x10)
    {
      v15 = 16;
    }

    else
    {
      v15 = v7 - result[2];
    }

    [(CCPBMutableData *)result _pb_growCapacityBy:v15];
    result = *(a1 + 8);
  }

  if (a3 != -1)
  {
    v8 = (8 * a3);
    v9 = result[1];
    if (v8 < 0x80)
    {
      LOBYTE(v10) = 8 * a3;
    }

    else
    {
      do
      {
        *v9++ = v8 | 0x80;
        v10 = v8 >> 7;
        v11 = v8 >> 14;
        v8 >>= 7;
      }

      while (v11);
    }

    *v9 = v10;
    *(*(a1 + 8) + 8) = v9 + 1;
    result = *(a1 + 8);
  }

  v12 = result[1];
  if (v5 < 0x80)
  {
    LOBYTE(v13) = v5;
  }

  else
  {
    do
    {
      *v12++ = v5 | 0x80;
      v13 = v5 >> 7;
      v14 = v5 >> 14;
      v5 >>= 7;
    }

    while (v14);
  }

  *v12 = v13;
  *(*(a1 + 8) + 8) = v12 + 1;
  return result;
}

void *CCPBDataWriterWriteSint64Field(uint64_t a1, uint64_t a2, int a3)
{
  v6 = 2 * a2;
  result = *(a1 + 8);
  v8 = result[3];
  if (v8 < result[1] + 16)
  {
    v17 = v8 - result[2];
    if (v17 <= 0x10)
    {
      v18 = 16;
    }

    else
    {
      v18 = v17;
    }

    [(CCPBMutableData *)result _pb_growCapacityBy:v18];
    result = *(a1 + 8);
  }

  v9 = v6 ^ (a2 >> 63);
  if (a3 != -1)
  {
    v10 = (8 * a3);
    v11 = result[1];
    if (v10 < 0x80)
    {
      LOBYTE(v12) = 8 * a3;
    }

    else
    {
      do
      {
        *v11++ = v10 | 0x80;
        v12 = v10 >> 7;
        v13 = v10 >> 14;
        v10 >>= 7;
      }

      while (v13);
    }

    *v11 = v12;
    *(*(a1 + 8) + 8) = v11 + 1;
    result = *(a1 + 8);
  }

  v14 = result[1];
  if (v9 < 0x80)
  {
    v15 = v6 ^ (a2 >> 63);
  }

  else
  {
    do
    {
      *v14++ = v9 | 0x80;
      v15 = v9 >> 7;
      v16 = v9 >> 14;
      v9 >>= 7;
    }

    while (v16);
  }

  *v14 = v15;
  *(*(a1 + 8) + 8) = v14 + 1;
  return result;
}

void *CCPBDataWriterWriteFloatField(uint64_t a1, int a2, float a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 20)
  {
    if (v7 - result[2] <= 0x14)
    {
      v12 = 20;
    }

    else
    {
      v12 = v7 - result[2];
    }

    [(CCPBMutableData *)result _pb_growCapacityBy:v12];
    result = *(a1 + 8);
  }

  if (a2 != -1)
  {
    v8 = (8 * a2) | 5u;
    v9 = result[1];
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v10) = (8 * a2) | 5;
    }

    else
    {
      do
      {
        *v9++ = v8 | 0x80;
        v10 = v8 >> 7;
        v11 = v8 >> 14;
        v8 >>= 7;
      }

      while (v11);
    }

    *v9 = v10;
    *(*(a1 + 8) + 8) = v9 + 1;
    result = *(a1 + 8);
  }

  *result[1] = a3;
  *(*(a1 + 8) + 8) += 4;
  return result;
}

void *CCPBDataWriterWriteDoubleField(uint64_t a1, int a2, double a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 24)
  {
    if (v7 - result[2] <= 0x18)
    {
      v12 = 24;
    }

    else
    {
      v12 = v7 - result[2];
    }

    [(CCPBMutableData *)result _pb_growCapacityBy:v12];
    result = *(a1 + 8);
  }

  if (a2 != -1)
  {
    v8 = (8 * a2) | 1u;
    v9 = result[1];
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v10) = (8 * a2) | 1;
    }

    else
    {
      do
      {
        *v9++ = v8 | 0x80;
        v10 = v8 >> 7;
        v11 = v8 >> 14;
        v8 >>= 7;
      }

      while (v11);
    }

    *v9 = v10;
    *(*(a1 + 8) + 8) = v9 + 1;
    result = *(a1 + 8);
  }

  *result[1] = a3;
  *(*(a1 + 8) + 8) += 8;
  return result;
}

void *CCPBDataWriterWriteFixed32Field(uint64_t a1, int a2, int a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 20)
  {
    if (v7 - result[2] <= 0x14)
    {
      v12 = 20;
    }

    else
    {
      v12 = v7 - result[2];
    }

    [(CCPBMutableData *)result _pb_growCapacityBy:v12];
    result = *(a1 + 8);
  }

  if (a3 != -1)
  {
    v8 = (8 * a3) | 5u;
    v9 = result[1];
    if ((8 * a3) < 0x80)
    {
      LOBYTE(v10) = (8 * a3) | 5;
    }

    else
    {
      do
      {
        *v9++ = v8 | 0x80;
        v10 = v8 >> 7;
        v11 = v8 >> 14;
        v8 >>= 7;
      }

      while (v11);
    }

    *v9 = v10;
    *(*(a1 + 8) + 8) = v9 + 1;
    result = *(a1 + 8);
  }

  *result[1] = a2;
  *(*(a1 + 8) + 8) += 4;
  return result;
}

void *CCPBDataWriterWriteFixed64Field(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 24)
  {
    if (v7 - result[2] <= 0x18)
    {
      v12 = 24;
    }

    else
    {
      v12 = v7 - result[2];
    }

    [(CCPBMutableData *)result _pb_growCapacityBy:v12];
    result = *(a1 + 8);
  }

  if (a3 != -1)
  {
    v8 = (8 * a3) | 1u;
    v9 = result[1];
    if ((8 * a3) < 0x80)
    {
      LOBYTE(v10) = (8 * a3) | 1;
    }

    else
    {
      do
      {
        *v9++ = v8 | 0x80;
        v10 = v8 >> 7;
        v11 = v8 >> 14;
        v8 >>= 7;
      }

      while (v11);
    }

    *v9 = v10;
    *(*(a1 + 8) + 8) = v9 + 1;
    result = *(a1 + 8);
  }

  *result[1] = a2;
  *(*(a1 + 8) + 8) += 8;
  return result;
}

void *CCPBDataWriterWriteSfixed32Field(uint64_t a1, int a2, int a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 20)
  {
    if (v7 - result[2] <= 0x14)
    {
      v12 = 20;
    }

    else
    {
      v12 = v7 - result[2];
    }

    [(CCPBMutableData *)result _pb_growCapacityBy:v12];
    result = *(a1 + 8);
  }

  if (a3 != -1)
  {
    v8 = (8 * a3) | 5u;
    v9 = result[1];
    if ((8 * a3) < 0x80)
    {
      LOBYTE(v10) = (8 * a3) | 5;
    }

    else
    {
      do
      {
        *v9++ = v8 | 0x80;
        v10 = v8 >> 7;
        v11 = v8 >> 14;
        v8 >>= 7;
      }

      while (v11);
    }

    *v9 = v10;
    *(*(a1 + 8) + 8) = v9 + 1;
    result = *(a1 + 8);
  }

  *result[1] = a2;
  *(*(a1 + 8) + 8) += 4;
  return result;
}

void *CCPBDataWriterWriteSfixed64Field(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 24)
  {
    if (v7 - result[2] <= 0x18)
    {
      v12 = 24;
    }

    else
    {
      v12 = v7 - result[2];
    }

    [(CCPBMutableData *)result _pb_growCapacityBy:v12];
    result = *(a1 + 8);
  }

  if (a3 != -1)
  {
    v8 = (8 * a3) | 1u;
    v9 = result[1];
    if ((8 * a3) < 0x80)
    {
      LOBYTE(v10) = (8 * a3) | 1;
    }

    else
    {
      do
      {
        *v9++ = v8 | 0x80;
        v10 = v8 >> 7;
        v11 = v8 >> 14;
        v8 >>= 7;
      }

      while (v11);
    }

    *v9 = v10;
    *(*(a1 + 8) + 8) = v9 + 1;
    result = *(a1 + 8);
  }

  *result[1] = a2;
  *(*(a1 + 8) + 8) += 8;
  return result;
}

void *CCPBDataWriterPlaceMark(uint64_t a1, void *a2, int a3)
{
  result = *(a1 + 8);
  v7 = result[3];
  if (v7 < result[1] + 10)
  {
    if (v7 - result[2] <= 0xA)
    {
      v12 = 10;
    }

    else
    {
      v12 = v7 - result[2];
    }

    [(CCPBMutableData *)result _pb_growCapacityBy:v12];
    result = *(a1 + 8);
  }

  if (a3 != -1)
  {
    v8 = (8 * a3) | 2u;
    v9 = result[1];
    if ((8 * a3) < 0x80)
    {
      LOBYTE(v10) = (8 * a3) | 2;
    }

    else
    {
      do
      {
        *v9++ = v8 | 0x80;
        v10 = v8 >> 7;
        v11 = v8 >> 14;
        v8 >>= 7;
      }

      while (v11);
    }

    *v9 = v10;
    *(*(a1 + 8) + 8) = v9 + 1;
    result = *(a1 + 8);
  }

  ++result[1];
  *a2 = *(*(a1 + 8) + 8) - *(*(a1 + 8) + 16);
  return result;
}

void *CCPBDataWriterRecallMark(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 8);
  v5 = result[1];
  v6 = result[2];
  v7 = *a2;
  v8 = v5 - (*a2 + v6);
  v9 = -1;
  v10 = v8;
  do
  {
    ++v9;
    v11 = v10 > 0x7F;
    v10 >>= 7;
  }

  while (v11);
  if (v9)
  {
    v12 = result[3];
    if (v12 < v5 + v9)
    {
      v16 = v12 - v6;
      if (v16 <= v9)
      {
        v17 = v9;
      }

      else
      {
        v17 = v16;
      }

      [(CCPBMutableData *)result _pb_growCapacityBy:v17];
      v6 = *(*(a1 + 8) + 16);
      v7 = *a2;
    }

    result = memmove((v6 + v7 + v9), (v6 + v7), v8);
    v6 = *(*(a1 + 8) + 16);
    v7 = *a2;
  }

  v13 = (v6 + v7 - 1);
  if (v8 < 0x80)
  {
    LOBYTE(v14) = v8;
  }

  else
  {
    do
    {
      *v13++ = v8 | 0x80;
      v14 = v8 >> 7;
      v15 = v8 >> 14;
      v8 >>= 7;
    }

    while (v15);
  }

  *v13 = v14;
  *(*(a1 + 8) + 8) += v9;
  return result;
}

void CCPBDataWriterWriteRepeatedUInt32Field(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CCPBDataWriterWriteRepeatedUInt32Field_block_invoke;
  v9[3] = &unk_1E7C8AF68;
  v10 = v6;
  v7 = v6;
  [v5 enumerateUInt32ValuesWithBlock:v9];

  v8 = [v7 immutableData];
  CCPBDataWriterWriteDataField(a1, v8, a3);
}

void __CCPBDataWriterWriteRepeatedUInt32Field_block_invoke(uint64_t a1, unsigned int a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = v4[3];
  v6 = v4[1];
  if (v5 < (v6 + 10))
  {
    if (v5 - v4[2] <= 0xA)
    {
      v10 = 10;
    }

    else
    {
      v10 = v5 - v4[2];
    }

    [(CCPBMutableData *)v4 _pb_growCapacityBy:v10];
    v6 = *(*(*(a1 + 32) + 8) + 8);
  }

  v7 = a2;
  if (a2 < 0x80)
  {
    LOBYTE(v8) = a2;
  }

  else
  {
    do
    {
      *v6++ = v7 | 0x80;
      v8 = v7 >> 7;
      v9 = v7 >> 14;
      v7 >>= 7;
    }

    while (v9);
  }

  *v6 = v8;
  *(*(*(a1 + 32) + 8) + 8) = v6 + 1;
}

void CCPBDataWriterWriteRepeatedUInt64Field(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CCPBDataWriterWriteRepeatedUInt64Field_block_invoke;
  v9[3] = &unk_1E7C8AF90;
  v10 = v6;
  v7 = v6;
  [v5 enumerateUInt64ValuesWithBlock:v9];

  v8 = [v7 immutableData];
  CCPBDataWriterWriteDataField(a1, v8, a3);
}

void __CCPBDataWriterWriteRepeatedUInt64Field_block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = v4[3];
  v6 = v4[1];
  if (v5 < (v6 + 10))
  {
    if (v5 - v4[2] <= 0xA)
    {
      v9 = 10;
    }

    else
    {
      v9 = v5 - v4[2];
    }

    [(CCPBMutableData *)v4 _pb_growCapacityBy:v9];
    v6 = *(*(*(a1 + 32) + 8) + 8);
  }

  if (a2 < 0x80)
  {
    LOBYTE(v7) = a2;
  }

  else
  {
    do
    {
      *v6++ = a2 | 0x80;
      v7 = a2 >> 7;
      v8 = a2 >> 14;
      a2 >>= 7;
    }

    while (v8);
  }

  *v6 = v7;
  *(*(*(a1 + 32) + 8) + 8) = v6 + 1;
}

void CCPBDataWriterWriteRepeatedInt32Field(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CCPBDataWriterWriteRepeatedInt32Field_block_invoke;
  v9[3] = &unk_1E7C8AFB8;
  v10 = v6;
  v7 = v6;
  [v5 enumerateInt32ValuesWithBlock:v9];

  v8 = [v7 immutableData];
  CCPBDataWriterWriteDataField(a1, v8, a3);
}

void __CCPBDataWriterWriteRepeatedInt32Field_block_invoke(uint64_t a1, unsigned int a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = v4[3];
  v6 = v4[1];
  if (v5 < (v6 + 10))
  {
    if (v5 - v4[2] <= 0xA)
    {
      v10 = 10;
    }

    else
    {
      v10 = v5 - v4[2];
    }

    [(CCPBMutableData *)v4 _pb_growCapacityBy:v10];
    v6 = *(*(*(a1 + 32) + 8) + 8);
  }

  v7 = a2;
  if (a2 < 0x80)
  {
    LOBYTE(v8) = a2;
  }

  else
  {
    do
    {
      *v6++ = v7 | 0x80;
      v8 = v7 >> 7;
      v9 = v7 >> 14;
      v7 >>= 7;
    }

    while (v9);
  }

  *v6 = v8;
  *(*(*(a1 + 32) + 8) + 8) = v6 + 1;
}

void CCPBDataWriterWriteRepeatedInt64Field(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CCPBDataWriterWriteRepeatedInt64Field_block_invoke;
  v9[3] = &unk_1E7C8AFE0;
  v10 = v6;
  v7 = v6;
  [v5 enumerateInt64ValuesWithBlock:v9];

  v8 = [v7 immutableData];
  CCPBDataWriterWriteDataField(a1, v8, a3);
}

void __CCPBDataWriterWriteRepeatedInt64Field_block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = v4[3];
  v6 = v4[1];
  if (v5 < (v6 + 10))
  {
    if (v5 - v4[2] <= 0xA)
    {
      v9 = 10;
    }

    else
    {
      v9 = v5 - v4[2];
    }

    [(CCPBMutableData *)v4 _pb_growCapacityBy:v9];
    v6 = *(*(*(a1 + 32) + 8) + 8);
  }

  if (a2 < 0x80)
  {
    LOBYTE(v7) = a2;
  }

  else
  {
    do
    {
      *v6++ = a2 | 0x80;
      v7 = a2 >> 7;
      v8 = a2 >> 14;
      a2 >>= 7;
    }

    while (v8);
  }

  *v6 = v7;
  *(*(*(a1 + 32) + 8) + 8) = v6 + 1;
}

void CCPBDataWriterWriteRepeatedFloatField(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CCPBDataWriterWriteRepeatedFloatField_block_invoke;
  v9[3] = &unk_1E7C8B008;
  v10 = v6;
  v7 = v6;
  [v5 enumerateFloatValuesWithBlock:v9];

  v8 = [v7 immutableData];
  CCPBDataWriterWriteDataField(a1, v8, a3);
}

void __CCPBDataWriterWriteRepeatedFloatField_block_invoke(uint64_t a1, float a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = v4[3];
  v6 = v4[1];
  if (v5 < (v6 + 1))
  {
    v7 = v5 - v4[2];
    if (v7 <= 4)
    {
      v8 = 4;
    }

    else
    {
      v8 = v7;
    }

    [(CCPBMutableData *)v4 _pb_growCapacityBy:v8];
    v6 = *(*(*(a1 + 32) + 8) + 8);
  }

  *v6 = a2;
  *(*(*(a1 + 32) + 8) + 8) += 4;
}

void CCPBDataWriterWriteRepeatedDoubleField(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CCPBDataWriterWriteRepeatedDoubleField_block_invoke;
  v9[3] = &unk_1E7C8B030;
  v10 = v6;
  v7 = v6;
  [v5 enumerateDoubleValuesWithBlock:v9];

  v8 = [v7 immutableData];
  CCPBDataWriterWriteDataField(a1, v8, a3);
}

void __CCPBDataWriterWriteRepeatedDoubleField_block_invoke(uint64_t a1, double a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = v4[3];
  v6 = v4[1];
  if (v5 < (v6 + 1))
  {
    v7 = v5 - v4[2];
    if (v7 <= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = v7;
    }

    [(CCPBMutableData *)v4 _pb_growCapacityBy:v8];
    v6 = *(*(*(a1 + 32) + 8) + 8);
  }

  *v6 = a2;
  *(*(*(a1 + 32) + 8) + 8) += 8;
}

void CCPBDataWriterWriteRepeatedBoolField(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CCPBDataWriterWriteRepeatedBoolField_block_invoke;
  v9[3] = &unk_1E7C8B058;
  v10 = v6;
  v7 = v6;
  [v5 enumerateBoolValuesWithBlock:v9];

  v8 = [v7 immutableData];
  CCPBDataWriterWriteDataField(a1, v8, a3);
}

void __CCPBDataWriterWriteRepeatedBoolField_block_invoke(uint64_t a1, char a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = v4[3];
  v6 = v4[1];
  if (v5 < (v6 + 10))
  {
    if (v5 - v4[2] <= 0xA)
    {
      v7 = 10;
    }

    else
    {
      v7 = v5 - v4[2];
    }

    [(CCPBMutableData *)v4 _pb_growCapacityBy:v7];
    v6 = *(*(*(a1 + 32) + 8) + 8);
  }

  *v6 = a2;
  *(*(*(a1 + 32) + 8) + 8) = v6 + 1;
}

void sub_1B6DBF688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _missingRecordPropertyError(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A278];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Device record (%@) missing required property: %@", a1, a2];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 errorWithDomain:@"com.apple.CascadeSets.CCDatabaseDeviceMapping" code:2 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id _unsupportedFormatError(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported site identifier format: %u", a1, *MEMORY[0x1E696A278]];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v1 errorWithDomain:@"com.apple.CascadeSets.CCDatabaseDeviceMapping" code:1 userInfo:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

Class __getCKDistributedSiteIdentifierClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CloudKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CloudKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7C8B080;
    v6 = 0;
    CloudKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CloudKitLibraryCore_frameworkLibrary)
  {
    __getCKDistributedSiteIdentifierClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("CKDistributedSiteIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKDistributedSiteIdentifierClass_block_invoke_cold_1();
  }

  getCKDistributedSiteIdentifierClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CloudKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CloudKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id CCSetLibraryConfigurationRegistryBridge()
{
  if (CCSetLibraryConfigurationRegistryBridge_onceToken != -1)
  {
    CCSetLibraryConfigurationRegistryBridge_cold_1();
  }

  v1 = CCSetLibraryConfigurationRegistryBridge_registryClass;

  return v1;
}

void __CCSetLibraryConfigurationRegistryBridge_block_invoke()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getCCSetLibraryConfigurationRegistryClass_softClass;
  v6 = getCCSetLibraryConfigurationRegistryClass_softClass;
  if (!getCCSetLibraryConfigurationRegistryClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getCCSetLibraryConfigurationRegistryClass_block_invoke;
    v2[3] = &unk_1E7C8AF28;
    v2[4] = &v3;
    __getCCSetLibraryConfigurationRegistryClass_block_invoke(v2);
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);
  CCSetLibraryConfigurationRegistryBridge_registryClass = v0;
  if (!v0)
  {
    __CCSetLibraryConfigurationRegistryBridge_block_invoke_cold_1();
  }
}

void sub_1B6DC0934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCCSetLibraryConfigurationRegistryClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!IntelligencePlatformLibraryLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __IntelligencePlatformLibraryLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7C8B138;
    v6 = 0;
    IntelligencePlatformLibraryLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!IntelligencePlatformLibraryLibraryCore_frameworkLibrary_0)
  {
    __getCCSetLibraryConfigurationRegistryClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("CCSetLibraryConfigurationRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCCSetLibraryConfigurationRegistryClass_block_invoke_cold_1();
  }

  getCCSetLibraryConfigurationRegistryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __IntelligencePlatformLibraryLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IntelligencePlatformLibraryLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __IntelligencePlatformLibraryLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IntelligencePlatformLibraryLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1B6DC1770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CCDatabaseValueAsData(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = [v1 databaseValue_toData];
  }

  v3 = v2;

  return v3;
}

id CCDatabaseValueAsNumber(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = [v1 databaseValue_toNumber];
  }

  v3 = v2;

  return v3;
}

id CCDatabaseValueAsString(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = [v1 databaseValue_toString];
  }

  v3 = v2;

  return v3;
}

id _NSStringFromXPCDictionary(void *a1, const char *a2)
{
  string = xpc_dictionary_get_string(a1, a2);
  if (string)
  {
    string = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
  }

  return string;
}

void sub_1B6DC44A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6DC47A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6DC63C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t CCItemStateDescription(uint64_t a1)
{
  if (a1 > 2)
  {
    v3 = @"Undefined";
  }

  else
  {
    v3 = off_1E7C8B348[a1];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%u)", v3, a1, v1, v2];
}

uint64_t CCPBReaderReadBigEndianFixed16(void *a1)
{
  v1 = a1;
  v2 = v1[1];
  if (v2 <= 0xFFFFFFFFFFFFFFFDLL && (v3 = v2 + 2, v2 + 2 <= v1[5]))
  {
    v4 = *(v1[3] + v2);
    v1[1] = v3;
  }

  else
  {
    v4 = 0;
    v1[2] = 1;
  }

  v5 = __rev16(v4);

  return v5;
}

uint64_t CCPBReaderReadBigEndianFixed32(void *a1)
{
  v1 = a1;
  v2 = v1[1];
  if (v2 <= 0xFFFFFFFFFFFFFFFBLL && (v3 = v2 + 4, v2 + 4 <= v1[5]))
  {
    v4 = *(v1[3] + v2);
    v1[1] = v3;
  }

  else
  {
    v4 = 0;
    v1[2] = 1;
  }

  v5 = bswap32(v4);

  return v5;
}

unint64_t CCPBReaderReadBigEndianFixed64(void *a1)
{
  v1 = a1;
  v2 = v1[1];
  if (v2 <= 0xFFFFFFFFFFFFFFF7 && (v3 = v2 + 8, v2 + 8 <= v1[5]))
  {
    v4 = *(v1[3] + v2);
    v1[1] = v3;
  }

  else
  {
    v4 = 0;
    v1[2] = 1;
  }

  v5 = bswap64(v4);

  return v5;
}

id CCPBReaderReadString(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = v1[1];
  while (1)
  {
    v7 = v6 + 1;
    if (v6 == -1 || v7 > v1[5])
    {
      break;
    }

    v8 = *(v1[3] + v6);
    v1[1] = v7;
    v5 |= (v8 & 0x7F) << v3;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v3 += 7;
    v6 = v7;
    v9 = v4++ >= 9;
    if (v9)
    {
      v10 = 0;
      goto LABEL_12;
    }
  }

  v1[2] = 1;
LABEL_9:
  if (v1[2])
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

LABEL_12:
  if ([v1 hasError])
  {
    v11 = 0;
  }

  else
  {
    v12 = v2[1];
    v9 = __CFADD__(v12, v10);
    v13 = v12 + v10;
    if (v9 || v13 > v2[5])
    {
      v11 = 0;
      v2[2] = 1;
    }

    else
    {
      v14 = [v2[4] bytes];
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v14 + v2[1] length:v10 encoding:4];
      v2[1] += v10;
    }
  }

  return v11;
}

id CCPBReaderReadData(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = v1[1];
  while (1)
  {
    v7 = v6 + 1;
    if (v6 == -1 || v7 > v1[5])
    {
      break;
    }

    v8 = *(v1[3] + v6);
    v1[1] = v7;
    v5 |= (v8 & 0x7F) << v3;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v3 += 7;
    v6 = v7;
    if (v4++ >= 9)
    {
      v10 = 0;
      goto LABEL_12;
    }
  }

  v1[2] = 1;
LABEL_9:
  if (v1[2])
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

LABEL_12:
  if ([v1 hasError])
  {
    v11 = 0;
  }

  else
  {
    v12 = v2[1];
    if (__CFADD__(v12, v10) || (v12 + v10) > v2[5])
    {
      v11 = 0;
      v2[2] = 1;
    }

    else
    {
      v11 = [v2[4] subdataWithRange:?];
      v2[1] += v10;
    }
  }

  return v11;
}

uint64_t CCPBReaderPlaceMark(void *a1, unint64_t *a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = v3[1];
  while (1)
  {
    v9 = v8 + 1;
    if (v8 == -1 || v9 > v3[5])
    {
      break;
    }

    v10 = *(v3[3] + v8);
    v3[1] = v9;
    v7 |= (v10 & 0x7F) << v5;
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v5 += 7;
    v8 = v9;
    if (v6++ >= 9)
    {
      v12 = 0;
      goto LABEL_12;
    }
  }

  v3[2] = 1;
LABEL_9:
  if (v3[2])
  {
    v12 = 0;
  }

  else
  {
    v12 = v7;
  }

LABEL_12:
  if ([v3 hasError])
  {
    v13 = 0;
  }

  else
  {
    v14 = v4[1] + v12;
    if (v14 <= v4[5])
    {
      *a2 = v14;
      a2[1] = v4[5];
      v4[5] = v4[1] + v12;
      v13 = 1;
    }

    else
    {
      v13 = 0;
      v4[2] = 1;
    }
  }

  return v13;
}

uint64_t CCPBReaderRecallMark(uint64_t result, void *a2)
{
  *(result + 8) = *a2;
  *(result + 40) = a2[1];
  return result;
}

uint64_t _CCPBReaderSkipValueWithTag(void *a1, int a2, int a3, uint64_t a4)
{
  v7 = a1;
  v8 = v7;
  v9 = 0;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v31 = 0;
      v32 = v7[1];
      while (1)
      {
        v33 = v32 + 1;
        if (v32 == -1 || v33 > v7[5])
        {
          break;
        }

        v34 = *(v7[3] + v32);
        v7[1] = v33;
        v9 = 1;
        if (v34 < 0)
        {
          v32 = v33;
          v17 = v31++ > 8;
          if (!v17)
          {
            continue;
          }
        }

        goto LABEL_55;
      }

      v9 = 1;
      v7[2] = 1;
      goto LABEL_55;
    }

    if (a3 != 1)
    {
      goto LABEL_55;
    }

    v21 = v7[1];
    if (v21 <= 0xFFFFFFFFFFFFFFF7)
    {
      v22 = v21 + 8;
      goto LABEL_51;
    }

    goto LABEL_52;
  }

  switch(a3)
  {
    case 2:
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = v7[1];
      while (1)
      {
        v27 = v26 + 1;
        if (v26 == -1 || v27 > v7[5])
        {
          break;
        }

        v28 = *(v7[3] + v26);
        v7[1] = v27;
        v25 |= (v28 & 0x7F) << v23;
        if ((v28 & 0x80) == 0)
        {
          goto LABEL_48;
        }

        v23 += 7;
        v26 = v27;
        v29 = v24++ >= 9;
        if (v29)
        {
          v25 = 0;
          goto LABEL_50;
        }
      }

      v7[2] = 1;
      v27 = v26;
LABEL_48:
      v25 = v25;
      if (v7[2])
      {
        v25 = 0;
      }

LABEL_50:
      v29 = __CFADD__(v27, v25);
      v22 = v27 + v25;
      if (!v29)
      {
LABEL_51:
        if (v22 <= v7[5])
        {
          v7[1] = v22;
LABEL_54:
          v9 = 1;
          break;
        }
      }

LABEL_52:
      v9 = 1;
      v7[2] = 1;
      break;
    case 5:
      v30 = v7[1];
      if (v30 <= 0xFFFFFFFFFFFFFFFBLL)
      {
        v22 = v30 + 4;
        goto LABEL_51;
      }

      goto LABEL_52;
    case 3:
      if (([v7 hasError] & 1) == 0)
      {
        v10 = a4 + 1;
        while (2)
        {
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = v8[1];
          while (1)
          {
            v15 = v14 + 1;
            if (v14 == -1 || v15 > v8[5])
            {
              break;
            }

            v16 = *(v8[3] + v14);
            v8[1] = v15;
            v13 |= (v16 & 0x7F) << v11;
            if ((v16 & 0x80) == 0)
            {
              goto LABEL_15;
            }

            v11 += 7;
            v14 = v15;
            v17 = v12++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = 0;
              goto LABEL_21;
            }
          }

          v8[2] = 1;
LABEL_15:
          if (v8[2])
          {
            v13 = 0;
          }

          v19 = v13 & 7;
          v18 = v13 >> 3;
          if (v19 == 4 && v18 == a2)
          {
            goto LABEL_54;
          }

LABEL_21:
          if (v10 < 0x41)
          {
            _CCPBReaderSkipValueWithTag(v8, v18, v19, v10);
          }

          else
          {
            v8[2] = 2;
          }

          if (![v8 hasError])
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_54;
  }

LABEL_55:

  return v9;
}

uint64_t CCPBReaderReadVarIntBuf(_BYTE *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 1;
  while (1)
  {
    if (!a2)
    {
      return 0;
    }

    v5 |= (*a1 & 0x7F) << v4;
    if ((*a1 & 0x80) == 0)
    {
      break;
    }

    v4 += 7;
    --a2;
    ++a1;
    if (++v6 == 11)
    {
      result = 0;
      *a4 = 11;
      *a3 = 0;
      return result;
    }
  }

  *a3 = v5;
  *a4 = v6;
  return 1;
}

void CCPBReaderAppendRepeatedUInt32FieldValues(void *a1, void *a2)
{
  v21 = a2;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1[1];
  while (1)
  {
    v7 = v6 + 1;
    if (v6 == -1 || v7 > a1[5])
    {
      break;
    }

    v8 = *(a1[3] + v6);
    a1[1] = v7;
    v5 |= (v8 & 0x7F) << v3;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v3 += 7;
    v6 = v7;
    v9 = v4++ >= 9;
    if (v9)
    {
      v10 = 0;
      goto LABEL_12;
    }
  }

  a1[2] = 1;
LABEL_9:
  if (a1[2])
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

LABEL_12:
  if (([a1 hasError] & 1) == 0)
  {
    v11 = a1[1];
    v9 = __CFADD__(v11, v10);
    v12 = v11 + v10;
    if (v9 || v12 > a1[5])
    {
      v13 = 1;
LABEL_16:
      a1[2] = v13;
      goto LABEL_17;
    }

    while (1)
    {
      v14 = a1[1];
      if (v14 >= v12)
      {
        break;
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = v14 + 1;
        if (v14 == -1 || v18 > a1[5])
        {
          break;
        }

        v19 = *(a1[3] + v14);
        a1[1] = v18;
        v17 |= (v19 & 0x7F) << v15;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_29;
        }

        v15 += 7;
        v14 = v18;
        v9 = v16++ >= 9;
        if (v9)
        {
          v20 = 0;
          goto LABEL_32;
        }
      }

      a1[2] = 1;
LABEL_29:
      if (a1[2])
      {
        v20 = 0;
      }

      else
      {
        v20 = v17;
      }

LABEL_32:
      [v21 appendUInt32Value:v20];
      if ([a1 hasError])
      {
        goto LABEL_17;
      }
    }

    if (v14 != v12)
    {
      v13 = 3;
      goto LABEL_16;
    }
  }

LABEL_17:
}

void CCPBReaderAppendRepeatedUInt64FieldValues(void *a1, void *a2)
{
  v21 = a2;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1[1];
  while (1)
  {
    v7 = v6 + 1;
    if (v6 == -1 || v7 > a1[5])
    {
      break;
    }

    v8 = *(a1[3] + v6);
    a1[1] = v7;
    v5 |= (v8 & 0x7F) << v3;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v3 += 7;
    v6 = v7;
    v9 = v4++ >= 9;
    if (v9)
    {
      v10 = 0;
      goto LABEL_12;
    }
  }

  a1[2] = 1;
LABEL_9:
  if (a1[2])
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

LABEL_12:
  if (([a1 hasError] & 1) == 0)
  {
    v11 = a1[1];
    v9 = __CFADD__(v11, v10);
    v12 = v11 + v10;
    if (v9 || v12 > a1[5])
    {
      v13 = 1;
LABEL_16:
      a1[2] = v13;
      goto LABEL_17;
    }

    while (1)
    {
      v14 = a1[1];
      if (v14 >= v12)
      {
        break;
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = v14 + 1;
        if (v14 == -1 || v18 > a1[5])
        {
          break;
        }

        v19 = *(a1[3] + v14);
        a1[1] = v18;
        v17 |= (v19 & 0x7F) << v15;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_29;
        }

        v15 += 7;
        v14 = v18;
        v9 = v16++ >= 9;
        if (v9)
        {
          v20 = 0;
          goto LABEL_32;
        }
      }

      a1[2] = 1;
LABEL_29:
      if (a1[2])
      {
        v20 = 0;
      }

      else
      {
        v20 = v17;
      }

LABEL_32:
      [v21 appendUInt64Value:v20];
      if ([a1 hasError])
      {
        goto LABEL_17;
      }
    }

    if (v14 != v12)
    {
      v13 = 3;
      goto LABEL_16;
    }
  }

LABEL_17:
}

void CCPBReaderAppendRepeatedInt32FieldValues(void *a1, void *a2)
{
  v21 = a2;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1[1];
  while (1)
  {
    v7 = v6 + 1;
    if (v6 == -1 || v7 > a1[5])
    {
      break;
    }

    v8 = *(a1[3] + v6);
    a1[1] = v7;
    v5 |= (v8 & 0x7F) << v3;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v3 += 7;
    v6 = v7;
    v9 = v4++ >= 9;
    if (v9)
    {
      v10 = 0;
      goto LABEL_12;
    }
  }

  a1[2] = 1;
LABEL_9:
  if (a1[2])
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

LABEL_12:
  if (([a1 hasError] & 1) == 0)
  {
    v11 = a1[1];
    v9 = __CFADD__(v11, v10);
    v12 = v11 + v10;
    if (v9 || v12 > a1[5])
    {
      v13 = 1;
LABEL_16:
      a1[2] = v13;
      goto LABEL_17;
    }

    while (1)
    {
      v14 = a1[1];
      if (v14 >= v12)
      {
        break;
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = v14 + 1;
        if (v14 == -1 || v18 > a1[5])
        {
          break;
        }

        v19 = *(a1[3] + v14);
        a1[1] = v18;
        v17 |= (v19 & 0x7F) << v15;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_29;
        }

        v15 += 7;
        v14 = v18;
        v9 = v16++ >= 9;
        if (v9)
        {
          v20 = 0;
          goto LABEL_32;
        }
      }

      a1[2] = 1;
LABEL_29:
      if (a1[2])
      {
        v20 = 0;
      }

      else
      {
        v20 = v17;
      }

LABEL_32:
      [v21 appendInt32Value:v20];
      if ([a1 hasError])
      {
        goto LABEL_17;
      }
    }

    if (v14 != v12)
    {
      v13 = 3;
      goto LABEL_16;
    }
  }

LABEL_17:
}

void CCPBReaderAppendRepeatedInt64FieldValues(void *a1, void *a2)
{
  v21 = a2;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1[1];
  while (1)
  {
    v7 = v6 + 1;
    if (v6 == -1 || v7 > a1[5])
    {
      break;
    }

    v8 = *(a1[3] + v6);
    a1[1] = v7;
    v5 |= (v8 & 0x7F) << v3;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v3 += 7;
    v6 = v7;
    v9 = v4++ >= 9;
    if (v9)
    {
      v10 = 0;
      goto LABEL_12;
    }
  }

  a1[2] = 1;
LABEL_9:
  if (a1[2])
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

LABEL_12:
  if (([a1 hasError] & 1) == 0)
  {
    v11 = a1[1];
    v9 = __CFADD__(v11, v10);
    v12 = v11 + v10;
    if (v9 || v12 > a1[5])
    {
      v13 = 1;
LABEL_16:
      a1[2] = v13;
      goto LABEL_17;
    }

    while (1)
    {
      v14 = a1[1];
      if (v14 >= v12)
      {
        break;
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = v14 + 1;
        if (v14 == -1 || v18 > a1[5])
        {
          break;
        }

        v19 = *(a1[3] + v14);
        a1[1] = v18;
        v17 |= (v19 & 0x7F) << v15;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_29;
        }

        v15 += 7;
        v14 = v18;
        v9 = v16++ >= 9;
        if (v9)
        {
          v20 = 0;
          goto LABEL_32;
        }
      }

      a1[2] = 1;
LABEL_29:
      if (a1[2])
      {
        v20 = 0;
      }

      else
      {
        v20 = v17;
      }

LABEL_32:
      [v21 appendInt64Value:v20];
      if ([a1 hasError])
      {
        goto LABEL_17;
      }
    }

    if (v14 != v12)
    {
      v13 = 3;
      goto LABEL_16;
    }
  }

LABEL_17:
}

void CCPBReaderAppendRepeatedFloatFieldValues(void *a1, void *a2)
{
  v16 = a2;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1[1];
  while (1)
  {
    v7 = v6 + 1;
    if (v6 == -1 || v7 > a1[5])
    {
      break;
    }

    v8 = *(a1[3] + v6);
    a1[1] = v7;
    v5 |= (v8 & 0x7F) << v3;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v3 += 7;
    v6 = v7;
    v9 = v4++ >= 9;
    if (v9)
    {
      v10 = 0;
      goto LABEL_12;
    }
  }

  a1[2] = 1;
LABEL_9:
  if (a1[2])
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

LABEL_12:
  if (([a1 hasError] & 1) == 0)
  {
    v12 = a1[1];
    v9 = __CFADD__(v12, v10);
    v13 = v12 + v10;
    if (v9 || v13 > a1[5])
    {
      v14 = 1;
LABEL_16:
      a1[2] = v14;
      goto LABEL_17;
    }

    while (1)
    {
      v15 = a1[1];
      if (v15 >= v13)
      {
        break;
      }

      if (v15 <= 0xFFFFFFFFFFFFFFFBLL && v15 + 4 <= a1[5])
      {
        LODWORD(v11) = *(a1[3] + v15);
        a1[1] = v15 + 4;
      }

      else
      {
        a1[2] = 1;
        v11 = 0.0;
      }

      [v16 appendFloatValue:v11];
      if ([a1 hasError])
      {
        goto LABEL_17;
      }
    }

    if (v15 != v13)
    {
      v14 = 3;
      goto LABEL_16;
    }
  }

LABEL_17:
}

void CCPBReaderAppendRepeatedDoubleFieldValues(void *a1, void *a2)
{
  v16 = a2;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1[1];
  while (1)
  {
    v7 = v6 + 1;
    if (v6 == -1 || v7 > a1[5])
    {
      break;
    }

    v8 = *(a1[3] + v6);
    a1[1] = v7;
    v5 |= (v8 & 0x7F) << v3;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v3 += 7;
    v6 = v7;
    v9 = v4++ >= 9;
    if (v9)
    {
      v10 = 0;
      goto LABEL_12;
    }
  }

  a1[2] = 1;
LABEL_9:
  if (a1[2])
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

LABEL_12:
  if (([a1 hasError] & 1) == 0)
  {
    v11 = a1[1];
    v9 = __CFADD__(v11, v10);
    v12 = v11 + v10;
    if (v9 || v12 > a1[5])
    {
      v13 = 1;
LABEL_16:
      a1[2] = v13;
      goto LABEL_17;
    }

    while (1)
    {
      v14 = a1[1];
      if (v14 >= v12)
      {
        break;
      }

      if (v14 <= 0xFFFFFFFFFFFFFFF7 && v14 + 8 <= a1[5])
      {
        v15 = *(a1[3] + v14);
        a1[1] = v14 + 8;
      }

      else
      {
        a1[2] = 1;
        v15 = 0.0;
      }

      [v16 appendDoubleValue:v15];
      if ([a1 hasError])
      {
        goto LABEL_17;
      }
    }

    if (v14 != v12)
    {
      v13 = 3;
      goto LABEL_16;
    }
  }

LABEL_17:
}

void CCPBReaderAppendRepeatedBoolFieldValues(void *a1, void *a2)
{
  v22 = a2;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1[1];
  while (1)
  {
    v7 = v6 + 1;
    if (v6 == -1 || v7 > a1[5])
    {
      break;
    }

    v8 = *(a1[3] + v6);
    a1[1] = v7;
    v5 |= (v8 & 0x7F) << v3;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v3 += 7;
    v6 = v7;
    v9 = v4++ >= 9;
    if (v9)
    {
      v10 = 0;
      goto LABEL_12;
    }
  }

  a1[2] = 1;
LABEL_9:
  if (a1[2])
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

LABEL_12:
  if (([a1 hasError] & 1) == 0)
  {
    v11 = a1[1];
    v9 = __CFADD__(v11, v10);
    v12 = v11 + v10;
    if (v9 || v12 > a1[5])
    {
      v13 = 1;
LABEL_16:
      a1[2] = v13;
      goto LABEL_17;
    }

    while (1)
    {
      v14 = a1[1];
      if (v14 >= v12)
      {
        break;
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = v14 + 1;
        if (v14 == -1 || v18 > a1[5])
        {
          break;
        }

        v19 = *(a1[3] + v14);
        a1[1] = v18;
        v17 |= (v19 & 0x7F) << v15;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_29;
        }

        v15 += 7;
        v14 = v18;
        v9 = v16++ >= 9;
        if (v9)
        {
          v20 = 0;
          goto LABEL_35;
        }
      }

      a1[2] = 1;
LABEL_29:
      if (a1[2])
      {
        v21 = 1;
      }

      else
      {
        v21 = v17 == 0;
      }

      v20 = !v21;
LABEL_35:
      [v22 appendBoolValue:v20];
      if ([a1 hasError])
      {
        goto LABEL_17;
      }
    }

    if (v14 != v12)
    {
      v13 = 3;
      goto LABEL_16;
    }
  }

LABEL_17:
}

void CCPBReaderAppendRepeatedEnumFieldValues(void *a1, void *a2)
{
  v21 = a2;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1[1];
  while (1)
  {
    v7 = v6 + 1;
    if (v6 == -1 || v7 > a1[5])
    {
      break;
    }

    v8 = *(a1[3] + v6);
    a1[1] = v7;
    v5 |= (v8 & 0x7F) << v3;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    v3 += 7;
    v6 = v7;
    v9 = v4++ >= 9;
    if (v9)
    {
      v10 = 0;
      goto LABEL_12;
    }
  }

  a1[2] = 1;
LABEL_9:
  if (a1[2])
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

LABEL_12:
  if (([a1 hasError] & 1) == 0)
  {
    v11 = a1[1];
    v9 = __CFADD__(v11, v10);
    v12 = v11 + v10;
    if (v9 || v12 > a1[5])
    {
      v13 = 1;
LABEL_16:
      a1[2] = v13;
      goto LABEL_17;
    }

    while (1)
    {
      v14 = a1[1];
      if (v14 >= v12)
      {
        break;
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = v14 + 1;
        if (v14 == -1 || v18 > a1[5])
        {
          break;
        }

        v19 = *(a1[3] + v14);
        a1[1] = v18;
        v17 |= (v19 & 0x7F) << v15;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_29;
        }

        v15 += 7;
        v14 = v18;
        v9 = v16++ >= 9;
        if (v9)
        {
          v20 = 0;
          goto LABEL_32;
        }
      }

      a1[2] = 1;
LABEL_29:
      if (a1[2])
      {
        v20 = 0;
      }

      else
      {
        v20 = v17;
      }

LABEL_32:
      [v21 appendRawEnumValue:v20];
      if ([a1 hasError])
      {
        goto LABEL_17;
      }
    }

    if (v14 != v12)
    {
      v13 = 3;
      goto LABEL_16;
    }
  }

LABEL_17:
}

id _errorDescriptionForCommand()
{
  v0 = MEMORY[0x1E696AEC0];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [v0 stringWithFormat:@"Failed to execute %@", v2];

  return v3;
}

id _createSQLiteAPIErrorFromResultCode(int a1, uint64_t a2)
{
  if (a1)
  {
    v4 = sqlite3_errstr(a1);
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v4];
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = v6;
      if (v5)
      {
        [v6 setObject:v5 forKey:*MEMORY[0x1E696A578]];
      }
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v9 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    [v7 setObject:v9 forKey:@"CCSQLiteAPIErrorExtendedCode"];

    v10 = MEMORY[0x1E696ABC0];
    v11 = [v7 copy];
    v8 = [v10 errorWithDomain:@"com.apple.CascadeSets.SQLiteAPI" code:a1 userInfo:v11];
  }

  else
  {
    v8 = 0;
  }

  v12 = _NSNullIfNilObject(v8);

  return v12;
}

uint64_t CCSQLiteDatabaseExtendedErrorCode(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:*MEMORY[0x1E696AA08]];

  v3 = [v2 userInfo];
  v4 = [v3 objectForKey:@"CCSQLiteAPIErrorExtendedCode"];

  if (v4)
  {
    v5 = [v4 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1B6DCD9CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getCKDistributedTimestampStateVectorClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CloudKitLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CloudKitLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7C8B4C8;
    v6 = 0;
    CloudKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!CloudKitLibraryCore_frameworkLibrary_0)
  {
    __getCKDistributedTimestampStateVectorClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("CKDistributedTimestampStateVector");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKDistributedTimestampStateVectorClass_block_invoke_cold_1();
  }

  getCKDistributedTimestampStateVectorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CloudKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CloudKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B6DD2480(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

id _donationInactiveError(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A578];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Donation %@ request (%@) cannot be processed on an inactive donation.", a1, a2];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 errorWithDomain:@"com.apple.CascadeSets.Donate" code:4 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

void sub_1B6DD35F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _donationResponseError(void *a1, void *a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = a2;
  v7 = a1;
  v8 = CCDonateErrorCodeFromServiceResponse(a3);
  v16 = *MEMORY[0x1E696A578];
  v9 = MEMORY[0x1E696AEC0];
  v10 = CCDonateServiceResponseDescription(a3);
  v11 = [v9 stringWithFormat:@"Donation %@ request (%@) failed: %@", v7, v6, v10, v16];

  v17[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v13 = [v5 errorWithDomain:@"com.apple.CascadeSets.Donate" code:v8 userInfo:v12];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void sub_1B6DD3A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6DD3C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6DD3DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *CCRemoteUpdateTypeDescription(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%u)", a1];
  }

  else
  {
    v2 = off_1E7C8B648[(a1 - 1)];
  }

  return v2;
}

uint64_t ___sharedXPCClientFactory_block_invoke()
{
  _sharedXPCClientFactory_sharedFactory = objc_alloc_init(CCDonateXPCClientFactory);

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_0_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1B6DD7234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

__CFString *CCSharedItemChangeTypeToString(int a1)
{
  v1 = @"None";
  if (!a1)
  {
    v1 = @"SharedItemAdded";
  }

  if (a1 == 2)
  {
    return @"SharedItemRemoved";
  }

  else
  {
    return v1;
  }
}

__CFString *CCStringFromItemFieldDataType(unsigned int a1)
{
  if (a1 > 0x15)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7C8B6B0[a1];
  }
}

__CFString *CCSetStoreAdminServiceResultDescription(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%u)", a1];
  }

  else
  {
    v2 = off_1E7C8B7B0[(a1 - 1)];
  }

  return v2;
}

id CCInvalidSetItemTypeIdentifierErrorForIdentifier(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The provided type identifier %hu is not a valid item type identifier", a1, *MEMORY[0x1E696A278]];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v1 errorWithDomain:@"com.apple.CascadeSets.Set" code:1 userInfo:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id CCInvalidBufferErrorForMessage(uint64_t a1, uint64_t a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Protocol buffer deserialization failed for message: %@", a1, *MEMORY[0x1E696A278]];
  v11[0] = v4;
  v10[1] = *MEMORY[0x1E696AA08];
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CascadeSets.Serialization" code:a2 userInfo:0];
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [v3 errorWithDomain:@"com.apple.CascadeSets.Item" code:4 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id CCSkipFieldErrorForMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Protocol buffer could not skip field with tag %u type %u failed for message: %@", a2, a3, a1, *MEMORY[0x1E696A278]];
  v13[0] = v6;
  v12[1] = *MEMORY[0x1E696AA08];
  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CascadeSets.Serialization" code:a4 userInfo:0];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = [v5 errorWithDomain:@"com.apple.CascadeSets.Item" code:4 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id CCMismatchedFieldAccessorErrorForField(void *a1, void *a2, void *a3, void *a4)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696ABC0];
  v23 = *MEMORY[0x1E696A750];
  v8 = MEMORY[0x1E696AEC0];
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = a1;
  v13 = [[v8 alloc] initWithFormat:@"Using selector %@ on a field with name: %@ of dataType: %@ - use %@ instead", v11, v12, v10, v9];

  v14 = objc_alloc(MEMORY[0x1E696ABC0]);
  v25 = *MEMORY[0x1E696A578];
  v26[0] = v13;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v16 = [v14 initWithDomain:@"com.apple.CascadeSets.Item" code:1 userInfo:v15];

  v22 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v24 = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v19 = [v7 errorWithDomain:@"com.apple.CascadeSets.Item" code:1 userInfo:v18];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

id CCErrorByJoiningMismatchedFieldAccessorErrorUnderlyingErrors(void *a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  v6 = MEMORY[0x1E696A750];
  if (v3)
  {
    v7 = [v3 userInfo];
    v8 = [v7 objectForKeyedSubscript:*v6];

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 addObjectsFromArray:v8];
      }
    }
  }

  if (v4)
  {
    v9 = [v4 userInfo];
    v10 = [v9 objectForKeyedSubscript:*v6];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 addObjectsFromArray:v10];
      }
    }
  }

  if ([v5 count])
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *v6;
    v17[0] = v5;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v13 = [v11 initWithDomain:@"com.apple.CascadeSets.Item" code:1 userInfo:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id CCUnrecognizedIdentifierErrorForDescription(void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = a1;
  v3 = [v1 alloc];
  v8 = *MEMORY[0x1E696A278];
  v9[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v5 = [v3 initWithDomain:@"com.apple.CascadeSets.Item" code:6 userInfo:v4];
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id CCMissingSourceItemIdentifierErrorForMessage(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided data for message %@ is missing a source identifer", v2, *MEMORY[0x1E696A278]];

  v10[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v3 initWithDomain:@"com.apple.CascadeSets.Item" code:7 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

__CFString *CCSetEnumeratorOptionsDescription(int a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_opt_new();
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"EnumerateUserVaultSets"];
    }

    if ((v1 & 2) != 0)
    {
      [v3 addObject:@"FullSort"];
    }

    v4 = [v3 componentsJoinedByString:@"|"];
  }

  else
  {
    v4 = &stru_1F2EBB700;
  }

  return v4;
}

id getCKMergeableDeltaVectorsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCKMergeableDeltaVectorsClass_softClass;
  v7 = getCKMergeableDeltaVectorsClass_softClass;
  if (!getCKMergeableDeltaVectorsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCKMergeableDeltaVectorsClass_block_invoke;
    v3[3] = &unk_1E7C8AF28;
    v3[4] = &v4;
    __getCKMergeableDeltaVectorsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B6DDEB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6DDEF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6DDF048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCKDistributedTimestampStateVectorClass_block_invoke_0(uint64_t a1)
{
  CloudKitLibrary();
  result = objc_getClass("CKDistributedTimestampStateVector");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKDistributedTimestampStateVectorClass_block_invoke_cold_1_0();
  }

  getCKDistributedTimestampStateVectorClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CloudKitLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!CloudKitLibraryCore_frameworkLibrary_1)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __CloudKitLibraryCore_block_invoke_1;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7C8B870;
    v3 = 0;
    CloudKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!CloudKitLibraryCore_frameworkLibrary_1)
  {
    CloudKitLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __CloudKitLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CloudKitLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getCKDistributedTimestampClass_block_invoke(uint64_t a1)
{
  CloudKitLibrary();
  result = objc_getClass("CKDistributedTimestamp");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKDistributedTimestampClass_block_invoke_cold_1();
  }

  getCKDistributedTimestampClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCKMergeableDeltaVectorsClass_block_invoke(uint64_t a1)
{
  CloudKitLibrary();
  result = objc_getClass("CKMergeableDeltaVectors");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKMergeableDeltaVectorsClass_block_invoke_cold_1();
  }

  getCKMergeableDeltaVectorsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_1_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void CCSetAndReportError(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5 = v3;
    *a1 = v4;
  }

  v6 = [v4 domain];
  v7 = [v6 length];

  if (v7)
  {
    v8 = v4;
    AnalyticsSendEventLazy();
  }
}

id __CCSetAndReportError_block_invoke(uint64_t a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) underlyingErrors];
  v3 = [v2 firstObject];

  v4 = [*(a1 + 32) description];
  v12[0] = @"domain";
  v5 = [*(a1 + 32) domain];
  v13[0] = v5;
  v12[1] = @"code";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
  v13[1] = v6;
  v12[2] = @"underlyingCode";
  if (v3)
  {
    [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "code")}];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v7 = ;
  v13[2] = v7;
  v12[3] = @"description";
  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  if (!v4)
  {
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t CCValidateUInt32Field(void *a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if ([v6 compare:&unk_1F2EC9318] == -1)
  {
    v7 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A278];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided NSNumber %@ for uint32_t field %@ is less than 0", v6, v5];
    v20[0] = v8;
    v9 = MEMORY[0x1E695DF20];
    v10 = v20;
    v11 = &v19;
  }

  else
  {
    if ([v6 compare:&unk_1F2EC9330] != 1)
    {
      v14 = 1;
      goto LABEL_10;
    }

    v7 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A278];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided NSNumber %@ for uint32_t field %@ is greater than UINT32_MAX", v6, v5];
    v18 = v8;
    v9 = MEMORY[0x1E695DF20];
    v10 = &v18;
    v11 = &v17;
  }

  v12 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
  v13 = [v7 errorWithDomain:@"com.apple.CascadeSets.Item" code:3 userInfo:v12];
  if (a3 && v13)
  {
    v13 = v13;
    *a3 = v13;
  }

  v14 = 0;
LABEL_10:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t CCValidateUInt64Field(void *a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if ([v6 compare:&unk_1F2EC9318] == -1)
  {
    v7 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A278];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided NSNumber %@ for uint64_t field %@ is less than 0", v6, v5];
    v20[0] = v8;
    v9 = MEMORY[0x1E695DF20];
    v10 = v20;
    v11 = &v19;
  }

  else
  {
    if ([v6 compare:&unk_1F2EC9348] != 1)
    {
      v14 = 1;
      goto LABEL_10;
    }

    v7 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A278];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided NSNumber %@ for uint64_t field %@ is greater than UINT64_MAX", v6, v5];
    v18 = v8;
    v9 = MEMORY[0x1E695DF20];
    v10 = &v18;
    v11 = &v17;
  }

  v12 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
  v13 = [v7 errorWithDomain:@"com.apple.CascadeSets.Item" code:3 userInfo:v12];
  if (a3 && v13)
  {
    v13 = v13;
    *a3 = v13;
  }

  v14 = 0;
LABEL_10:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t CCValidateInt32Field(void *a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if ([v6 compare:&unk_1F2EC9360] == -1)
  {
    v7 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A278];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided NSNumber %@ for int32_t field %@ is less than INT32_MIN", v6, v5];
    v20[0] = v8;
    v9 = MEMORY[0x1E695DF20];
    v10 = v20;
    v11 = &v19;
  }

  else
  {
    if ([v6 compare:&unk_1F2EC9378] != 1)
    {
      v14 = 1;
      goto LABEL_10;
    }

    v7 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A278];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided NSNumber %@ for int32_t field %@ is greater than INT32_MAX", v6, v5];
    v18 = v8;
    v9 = MEMORY[0x1E695DF20];
    v10 = &v18;
    v11 = &v17;
  }

  v12 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
  v13 = [v7 errorWithDomain:@"com.apple.CascadeSets.Item" code:3 userInfo:v12];
  if (a3 && v13)
  {
    v13 = v13;
    *a3 = v13;
  }

  v14 = 0;
LABEL_10:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t CCValidateInt64Field(void *a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if ([v6 compare:&unk_1F2EC9390] == -1)
  {
    v7 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A278];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided NSNumber %@ for int64_t field %@ is less than INT64_MIN", v6, v5];
    v20[0] = v8;
    v9 = MEMORY[0x1E695DF20];
    v10 = v20;
    v11 = &v19;
  }

  else
  {
    if ([v6 compare:&unk_1F2EC93A8] != 1)
    {
      v14 = 1;
      goto LABEL_10;
    }

    v7 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A278];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided NSNumber %@ for int64_t field %@ is greater than INT64_MAX", v6, v5];
    v18 = v8;
    v9 = MEMORY[0x1E695DF20];
    v10 = &v18;
    v11 = &v17;
  }

  v12 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
  v13 = [v7 errorWithDomain:@"com.apple.CascadeSets.Item" code:3 userInfo:v12];
  if (a3 && v13)
  {
    v13 = v13;
    *a3 = v13;
  }

  v14 = 0;
LABEL_10:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t CCValidateFloatField(void *a1, void *a2, void *a3)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = [v6 compare:&unk_1F2EC9318];
  if (!v7)
  {
    goto LABEL_9;
  }

  if (v7 == 1)
  {
    if ([v6 compare:&unk_1F2EC96D8] != -1)
    {
      if ([v6 compare:&unk_1F2EC96E8] == 1)
      {
        v8 = MEMORY[0x1E696ABC0];
        v22 = *MEMORY[0x1E696A278];
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided NSNumber %@ for float field %@ is outside of FLT_MAX", v6, v5];
        v23 = v9;
        v10 = MEMORY[0x1E695DF20];
        v11 = &v23;
        v12 = &v22;
        goto LABEL_12;
      }

LABEL_9:
      v13 = 1;
      goto LABEL_16;
    }

    v8 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A278];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided NSNumber %@ for float field %@ is outside of FLT_MIN", v6, v5];
    v25[0] = v9;
    v10 = MEMORY[0x1E695DF20];
    v11 = v25;
    v12 = &v24;
  }

  else if ([v6 compare:&unk_1F2EC96F8] == 1)
  {
    v8 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A278];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided NSNumber %@ for float field %@ is outside of -FLT_MIN", v6, v5];
    v21 = v9;
    v10 = MEMORY[0x1E695DF20];
    v11 = &v21;
    v12 = &v20;
  }

  else
  {
    if ([v6 compare:&unk_1F2EC9708] != -1)
    {
      goto LABEL_9;
    }

    v8 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A278];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided NSNumber %@ for float field %@ is outside of -FLT_MAX", v6, v5];
    v19 = v9;
    v10 = MEMORY[0x1E695DF20];
    v11 = &v19;
    v12 = &v18;
  }

LABEL_12:
  v14 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
  v15 = [v8 errorWithDomain:@"com.apple.CascadeSets.Item" code:3 userInfo:v14];
  if (a3 && v15)
  {
    v15 = v15;
    *a3 = v15;
  }

  v13 = 0;
LABEL_16:

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t CCValidateBoolField(void *a1, void *a2, void *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  ByteSize = CFNumberGetByteSize(v6);
  if (ByteSize == 1)
  {
    if ([(__CFNumber *)v6 compare:&unk_1F2EC9318]== -1)
    {
      v8 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A278];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided NSNumber %@ for BOOL field %@ is less than zero and is not likely to be a boxed BOOLean", v6, v5];
      v21 = v9;
      v10 = MEMORY[0x1E695DF20];
      v11 = &v21;
      v12 = &v20;
    }

    else
    {
      if ([(__CFNumber *)v6 compare:&unk_1F2EC93C0]!= 1)
      {
        v15 = 1;
        goto LABEL_11;
      }

      v8 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A278];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided NSNumber %@ for BOOL field %@ is greater than one and is not likely to be a boxed BOOLean", v6, v5];
      v19 = v9;
      v10 = MEMORY[0x1E695DF20];
      v11 = &v19;
      v12 = &v18;
    }
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A278];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided NSNumber %@ for BOOL field %@ is has storage size %ld and is not likely to be a boxed BOOLean", v6, v5, ByteSize];
    v23[0] = v9;
    v10 = MEMORY[0x1E695DF20];
    v11 = v23;
    v12 = &v22;
  }

  v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
  v14 = [v8 errorWithDomain:@"com.apple.CascadeSets.Item" code:3 userInfo:v13];
  if (a3 && v14)
  {
    v14 = v14;
    *a3 = v14;
  }

  v15 = 0;
LABEL_11:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t CCValidateEnumField(void *a1, uint64_t a2, unsigned int (*a3)(uint64_t), void *a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  if (a2 && !a3(a2))
  {
    v9 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A278];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided value %u for enum field %@ is not a valid enum value", a2, v7];
    v16[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v9 errorWithDomain:@"com.apple.CascadeSets.Item" code:3 userInfo:v11];
    if (a4 && v12)
    {
      v12 = v12;
      *a4 = v12;
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

BOOL CCValidateRepeatedEnumField(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __CCValidateRepeatedEnumField_block_invoke;
  v13[3] = &unk_1E7C8B8B8;
  v16 = &v20;
  v17 = a3;
  v15 = v18;
  v9 = v7;
  v14 = v9;
  [v8 enumerateUInt32ValuesWithBlock:v13];
  v10 = v21[5];
  if (a4 && v10)
  {
    v10 = v10;
    *a4 = v10;
  }

  v11 = v10 == 0;

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);

  return v11;
}

void sub_1B6DE045C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void __CCValidateRepeatedEnumField_block_invoke(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a2 && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && !(*(a1 + 56))(a2))
  {
    v4 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A278];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provided value %u for enum field %@ is not a valid enum value", a2, *(a1 + 32)];
    v12[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v7 = [v4 errorWithDomain:@"com.apple.CascadeSets.Item" code:3 userInfo:v6];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t CCValidateArrayValues(void *a1, void *a2, objc_class *a3, void *a4)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v33;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v26 = MEMORY[0x1E696ABC0];
            v36 = *MEMORY[0x1E696A278];
            v27 = MEMORY[0x1E696AEC0];
            v28 = objc_opt_class();
            v20 = NSStringFromClass(v28);
            v21 = NSStringFromClass(a3);
            v22 = [v27 stringWithFormat:@"Provided array element for field %@ is of class %@, expected class: %@", v7, v20, v21];
            v37 = v22;
            v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
            v29 = [v26 errorWithDomain:@"com.apple.CascadeSets.Item" code:2 userInfo:v24];
            if (a4 && v29)
            {
              v29 = v29;
              *a4 = v29;
            }

            goto LABEL_18;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v32 objects:v38 count:16];
        v15 = 1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v16 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A278];
    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_opt_class();
    v9 = NSStringFromClass(v18);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v17 stringWithFormat:@"Provided object for field %@ is of class %@, expected class: %@", v7, v9, v20];
    v40[0] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v23 = [v16 errorWithDomain:@"com.apple.CascadeSets.Item" code:2 userInfo:v22];
    v24 = v23;
    if (a4 && v23)
    {
      v25 = v23;
      *a4 = v24;
    }

LABEL_18:

    v15 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v15;
}

BOOL CCIsEmptyOrWhitespace(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  if (v2)
  {
    if ([v3 characterIsMember:{objc_msgSend(v1, "characterAtIndex:", 0)}])
    {
      v4 = 1;
      do
      {
        v5 = v4;
        if (v2 == v4)
        {
          break;
        }

        v6 = [v3 characterIsMember:{objc_msgSend(v1, "characterAtIndex:", v4)}];
        v4 = v5 + 1;
      }

      while ((v6 & 1) != 0);
      v7 = v5 >= v2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

id CCDateFormattedStringFromTimeMicros(uint64_t a1)
{
  if (a1 < 1)
  {
    v3 = 0;
  }

  else
  {
    if (CCDateFormattedStringFromTimeMicros_onceToken != -1)
    {
      CCDateFormattedStringFromTimeMicros_cold_1();
    }

    v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:a1 / 1000000.0];
    v3 = [CCDateFormattedStringFromTimeMicros_formatter stringFromDate:v2];
  }

  return v3;
}

uint64_t __CCDateFormattedStringFromTimeMicros_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v1 = CCDateFormattedStringFromTimeMicros_formatter;
  CCDateFormattedStringFromTimeMicros_formatter = v0;

  v2 = CCDateFormattedStringFromTimeMicros_formatter;
  v3 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v2 setTimeZone:v3];

  v4 = [CCDateFormattedStringFromTimeMicros_formatter formatOptions] & 0xFFFFFFFFFFFFF3FFLL;
  v5 = CCDateFormattedStringFromTimeMicros_formatter;

  return [v5 setFormatOptions:v4 | 0x880];
}

id CCSecondsFromNowUntilDate(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v1 timeIntervalSinceNow];
    v3 = [MEMORY[0x1E696AD98] numberWithLongLong:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id CCDateAsSecondsFromNow(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 longLongValue];
    v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1B6DE1E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

void sub_1B6DE29E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_1B6DE4370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1B6DE5CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_5_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 8);
  return result;
}

uint64_t *OUTLINED_FUNCTION_8_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_1B6DE64C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t CCDonateErrorCodeFromServiceResponse(__int16 a1)
{
  if ((a1 - 4) > 7u)
  {
    return 0;
  }

  else
  {
    return qword_1B6E0EAB0[(a1 - 4)];
  }
}

void sub_1B6DE75EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v29 - 112), 8);

  _Unwind_Resume(a1);
}

void *std::vector<unsigned short>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(result, a2);
    }

    std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__shared_ptr_emplace<std::vector<unsigned short>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2EBAE10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C9C4F0);
}

void std::__shared_ptr_emplace<std::vector<unsigned short>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7C8ADA0, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__CFString *CCDataResourceStatusToString(unsigned int a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1 >= 5)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v7 = a1;
      _os_log_error_impl(&dword_1B6DB2000, v3, OS_LOG_TYPE_ERROR, "CCDataResourceStatusToString received invalid value %lu", buf, 0xCu);
    }

    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown - %lu", a1];
  }

  else
  {
    v2 = off_1E7C8BC38[a1];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t CCDataResourceStatusIsNotDiscoverable(unsigned int a1)
{
  v1 = a1;
  if (a1 >= 5)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      CCDataResourceStatusIsNotDiscoverable_cold_1(v1, v3);
    }

    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = 0x18u >> a1;
  }

  return v2 & 1;
}

void sub_1B6DECD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1B6DEE0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6DEE608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6DEED84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6DEEFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t CCDatabaseSetClockValueRange(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 unsignedIntValue];
  if (v3)
  {
    [v3 unsignedIntValue];
  }

  return v4;
}

uint64_t CCDatabaseSetAtomState(void *a1)
{
  v1 = [a1 unsignedShortValue];
  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  if (v1 == 2)
  {
    return 2;
  }

  else
  {
    return v2;
  }
}

Class __getCKDistributedTimestampStateVectorClass_block_invoke_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CloudKitLibraryCore_frameworkLibrary_2)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CloudKitLibraryCore_block_invoke_2;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7C8BD88;
    v6 = 0;
    CloudKitLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  if (!CloudKitLibraryCore_frameworkLibrary_2)
  {
    __getCKDistributedTimestampStateVectorClass_block_invoke_cold_2_0(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("CKDistributedTimestampStateVector");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKDistributedTimestampStateVectorClass_block_invoke_cold_1_1();
  }

  getCKDistributedTimestampStateVectorClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CloudKitLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CloudKitLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B6DEFF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6DF06E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B6DF3A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6DF3EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6DF4E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Unwind_Resume(a1);
}

void sub_1B6DF869C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6DF9304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6DFA070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v51 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_1B6DFA600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6DFA9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B6DFBBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_10(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void OUTLINED_FUNCTION_15(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

id MaintenanceServer.init(queue:setBookkeeping:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  objc_allocWithZone(MEMORY[0x1E698EA30]);
  v7 = a1;
  *&v3[OBJC_IVAR___CCMaintenanceServer_listener] = sub_1B6DFE5E8(0xD00000000000001DLL, 0x80000001B6E13B80, v7);
  *&v3[OBJC_IVAR___CCMaintenanceServer_setBookkeeping] = a2;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

Swift::Void __swiftcall MaintenanceServer.activate()()
{
  v1 = *&v0[OBJC_IVAR___CCMaintenanceServer_listener];
  [v1 setDelegate_];
  [v1 activate];
  if (qword_1EB976DE8 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v2 = sub_1B6E0936C();
  __swift_project_value_buffer(v2, qword_1EB976DF0);
  v3 = v0;
  oslog = sub_1B6E0934C();
  v4 = sub_1B6E0943C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v5 = 136315394;
    v8 = v3;
    v9 = [v8 description];
    v10 = sub_1B6E0938C();
    v12 = v11;

    v13 = sub_1B6DFE754(v10, v12, &v16);

    *(v5 + 4) = v13;
    *(v5 + 12) = 2112;
    *(v5 + 14) = v1;
    *v6 = v1;
    v14 = v1;
    _os_log_impl(&dword_1B6DB2000, oslog, v4, "%s activated with listener: %@", v5, 0x16u);
    sub_1B6DFED48(v6);
    OUTLINED_FUNCTION_2_0();
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();
  }
}

uint64_t MaintenanceServer.listener(_:shouldAcceptNewConnection:)(uint64_t a1, void *a2)
{
  v4 = v2;
  v5 = a2;
  v6 = [objc_opt_self() processWithXPCConnection_];
  if (qword_1EB976DE8 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v7 = sub_1B6E0936C();
  v8 = __swift_project_value_buffer(v7, qword_1EB976DF0);
  v9 = v6;
  v10 = v4;
  v11 = sub_1B6E0934C();
  v12 = sub_1B6E0941C();

  os_log_type_enabled(v11, v12);
  OUTLINED_FUNCTION_3_2();
  v45 = v10;
  if (v13)
  {
    v44 = v5;
    v14 = swift_slowAlloc();
    v43 = v8;
    v46 = swift_slowAlloc();
    *v14 = 136315650;
    v3 = v10;
    v15 = [v3 description];
    v16 = sub_1B6E0938C();
    v18 = v17;

    OUTLINED_FUNCTION_3_2();
    v19 = sub_1B6DFE754(v16, v18, &v46);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v20 = sub_1B6DFEE44(v9);
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v20 = v3;
      v22 = 0xE700000000000000;
    }

    v23 = sub_1B6DFE754(v20, v22, &v46);

    *(v14 + 14) = v23;
    *(v14 + 22) = 1024;
    v24 = [v9 pid];

    *(v14 + 24) = v24;
    _os_log_impl(&dword_1B6DB2000, v11, v12, "%s received new connection request from %s(%d)", v14, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_0();
    v5 = v44;
    OUTLINED_FUNCTION_2_0();
  }

  else
  {
  }

  if ([v9 processType] == 3 || objc_msgSend(v9, sel_processType) == 8)
  {
    v25 = [objc_opt_self() interfaceWithProtocol_];
    [v5 setExportedInterface_];
    [v5 setExportedObject_];
    [v5 resume];

    return 1;
  }

  else
  {
    v27 = v9;
    v28 = v45;
    v29 = sub_1B6E0934C();
    v30 = sub_1B6E0942C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v31 = 136315394;
      v32 = v28;
      v33 = [v32 description];
      v34 = sub_1B6E0938C();
      v35 = v3;
      v37 = v36;

      v38 = sub_1B6DFE754(v34, v37, &v46);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2082;
      v39 = sub_1B6DFEE44(v27);
      if (v40)
      {
        v41 = v40;
      }

      else
      {
        v39 = v35;
        v41 = 0xE700000000000000;
      }

      v42 = sub_1B6DFE754(v39, v41, &v46);

      *(v31 + 14) = v42;
      _os_log_impl(&dword_1B6DB2000, v29, v30, "%s refusing connection from %{public}s, process is not biomesyncd", v31, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_2_0();
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_1B6DFDE50()
{
  v20 = v0;
  if (qword_1EB976DE8 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v1 = v0[2];
  v2 = sub_1B6E0936C();
  __swift_project_value_buffer(v2, qword_1EB976DF0);
  v3 = v1;
  v4 = sub_1B6E0934C();
  v5 = sub_1B6E0943C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_1B6E0938C();
    v13 = v12;

    v14 = sub_1B6DFE754(v11, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1B6DB2000, v4, v5, "%s: performNightlyMaintenance", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();
  }

  v15 = *(v0[2] + OBJC_IVAR___CCMaintenanceServer_setBookkeeping);
  objc_allocWithZone(type metadata accessor for ScheduledTaskState());
  swift_unknownObjectRetain();
  v16 = ScheduledTaskState.init(identifier:setBookkeeping:)();
  v0[3] = v16;
  v17 = swift_task_alloc();
  v0[4] = v17;
  *v17 = v0;
  v17[1] = sub_1B6DFE088;

  return sub_1B6E01B28(0, v16);
}

uint64_t sub_1B6DFE088()
{
  OUTLINED_FUNCTION_4_1();
  v2 = *(*v1 + 32);
  v3 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v4 = v3;
  *(v5 + 40) = v0;

  if (v0)
  {
    v6 = sub_1B6DFE1F0;
  }

  else
  {
    v6 = sub_1B6DFE190;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B6DFE190()
{
  OUTLINED_FUNCTION_4_1();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B6DFE1F0()
{
  OUTLINED_FUNCTION_4_1();

  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1();
}

uint64_t sub_1B6DFE2CC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B6DFE374;

  return MaintenanceServer.performNightlyMaintenance()();
}

uint64_t sub_1B6DFE374()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  v6 = v3[4];
  v7 = v3[2];
  v8 = *v1;
  *v5 = *v1;

  v9 = v3[3];
  if (v2)
  {
    v10 = sub_1B6E0932C();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(v9, 0);
  }

  _Block_release(v4[3]);
  v11 = v8[1];

  return v11();
}

id MaintenanceServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MaintenanceServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B6DFE5E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1B6E0937C();

  v6 = [v3 initWithMachServiceName:v5 queue:a3];

  return v6;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1B6DFE684(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1B6DFE6F8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1B6DFE754(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1B6DFE754(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B6DFE818(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1B6DFF08C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1B6DFE818(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B6DFE918(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1B6E0945C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1B6DFE918(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B6DFE964(a1, a2);
  sub_1B6DFEA7C(&unk_1F2EBAE70);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1B6DFE964(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1B6E093BC())
  {
    result = sub_1B6DFEB60(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1B6E0944C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1B6E0945C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B6DFEA7C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1B6DFEBD0(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1B6DFEB60(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB977B00, &qword_1B6E0EBB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1B6DFEBD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB977B00, &qword_1B6E0EBB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

_BYTE **sub_1B6DFECC4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1B6DFECD4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1B6DFED48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB977AF8, &qword_1B6E0EB50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1B6DFEE44(void *a1)
{
  v1 = [a1 executableName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B6E0938C();

  return v3;
}

uint64_t sub_1B6DFEEF8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B6DFEFA4;

  return sub_1B6DFE2CC(v2, v3);
}

uint64_t sub_1B6DFEFA4()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1B6DFF08C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_9()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_0()
{

  JUMPOUT(0x1B8C9CE10);
}

uint64_t sub_1B6DFF178()
{
  v0 = sub_1B6E0936C();
  __swift_allocate_value_buffer(v0, qword_1EB976DF0);
  __swift_project_value_buffer(v0, qword_1EB976DF0);
  return sub_1B6E0935C();
}

uint64_t static Logging.Cascade.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB976DE8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B6E0936C();
  v3 = __swift_project_value_buffer(v2, qword_1EB976DF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t getEnumTagSinglePayload for Logging(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for Logging(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1B6DFF460(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB977B30, &qword_1B6E0EC80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v6 = &v11 - v5;
  v7 = sub_1B6E093EC();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  OUTLINED_FUNCTION_8_1();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  OUTLINED_FUNCTION_8_1();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1B6E0EC90;
  v9[5] = v8;
  sub_1B6E00EBC(0, 0, v6, &unk_1B6E0ECA0, v9);
}

id ScheduledTasks.__allocating_init(setBookkeeping:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___CCScheduledTasks_setBookkeeping] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ScheduledTasks.init(setBookkeeping:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___CCScheduledTasks_setBookkeeping] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Void __swiftcall ScheduledTasks.register()()
{
  if (qword_1EB976DE8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B6E0936C();
  __swift_project_value_buffer(v1, qword_1EB976DF0);
  v2 = v0;
  v3 = sub_1B6E0934C();
  v4 = sub_1B6E0943C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = v2;
    v8 = [v7 description];
    v9 = sub_1B6E0938C();
    v11 = v10;

    v12 = sub_1B6DFE754(v9, v11, &v15);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_1B6DB2000, v3, v4, "%s: registering all tasks.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8C9CE10](v6, -1, -1);
    MEMORY[0x1B8C9CE10](v5, -1, -1);
  }

  v14 = *&v2[OBJC_IVAR___CCScheduledTasks_setBookkeeping];

  sub_1B6DFF828(v14, v13);
}

void sub_1B6DFF828(uint64_t a1, double a2)
{
  gotLoadHelper_x8__OBJC_CLASS___BGSystemTaskScheduler(a2);
  v4 = *(v3 + 1208);
  v5 = [objc_opt_self() sharedScheduler];
  v6 = sub_1B6E0937C();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v9[4] = sub_1B6E01980;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B6E00374;
  v9[3] = &block_descriptor;
  v8 = _Block_copy(v9);
  swift_unknownObjectRetain();

  [v5 registerForTaskWithIdentifier:v6 usingQueue:0 launchHandler:v8];
  _Block_release(v8);
}

id ScheduledTasks.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B6DFFA30(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB977B30, &qword_1B6E0EC80);
  v3 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v5 = aBlock - v4;
  objc_allocWithZone(type metadata accessor for ScheduledTaskState());
  swift_unknownObjectRetain();
  v6 = ScheduledTaskState.init(identifier:setBookkeeping:)();
  if (qword_1EB977AE0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_1EB977B98);
  sub_1B6E017DC(v7, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = a1;
  v9 = v6;
  v10 = a1;
  v11 = sub_1B6DFFED8(0, 0, v5, &unk_1B6E0ECC8, v8);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v9;
  aBlock[4] = sub_1B6E01A94;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B6E00330;
  aBlock[3] = &block_descriptor_46;
  v13 = _Block_copy(aBlock);
  v14 = v9;

  [v10 setExpirationHandler_];
  _Block_release(v13);
}

uint64_t sub_1B6DFFC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B6DFFC80, 0, 0);
}

uint64_t sub_1B6DFFC80()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1B6DFFD1C;
  v4 = *(v0 + 16);

  return sub_1B6E01B28(v1, v4);
}

uint64_t sub_1B6DFFD1C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_0();
  v3 = *(v2 + 32);
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    v7 = sub_1B6DFFE7C;
  }

  else
  {
    v7 = sub_1B6DFFE20;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B6DFFE20()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_4_2();

  return v1();
}

uint64_t sub_1B6DFFE7C()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_4_2();
  v2 = *(v0 + 40);

  return v1();
}

uint64_t sub_1B6DFFED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB977B30, &qword_1B6E0EC80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = v22 - v9;
  sub_1B6E017DC(a3, v22 - v9);
  v11 = sub_1B6E093EC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B6E01874(v10);
  }

  else
  {
    sub_1B6E093DC();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  v13 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1B6E093CC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1B6E093AC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1B6E01874(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B6E01874(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_1B6E00128(uint64_t a1, uint64_t a2)
{
  if (qword_1EB976DE8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B6E0936C();
  __swift_project_value_buffer(v3, qword_1EB976DF0);
  v4 = sub_1B6E0934C();
  v5 = sub_1B6E0943C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB977B40, &qword_1B6E0ECD8);
    v8 = sub_1B6E0939C();
    v10 = sub_1B6DFE754(v8, v9, &v12);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1B6DFE754(0xD000000000000033, 0x80000001B6E13E60, &v12);
    _os_log_impl(&dword_1B6DB2000, v4, v5, "%s: %s: expiration handler fired", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C9CE10](v7, -1, -1);
    MEMORY[0x1B8C9CE10](v6, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB977B38, &qword_1B6E0ECD0);
  sub_1B6E093FC();
  v11 = a2 + OBJC_IVAR___CCScheduledTaskState_expired;
  os_unfair_lock_lock(v11);
  *(v11 + 4) = 1;
  os_unfair_lock_unlock(v11);
}

uint64_t sub_1B6E00330(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1B6E00374(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1B6E00428()
{
  v1 = *(v0 + OBJC_IVAR___CCScheduledTaskState_identifier);
  v2 = *(v0 + OBJC_IVAR___CCScheduledTaskState_identifier + 8);

  return v1;
}

id ScheduledTaskState.init(identifier:setBookkeeping:)()
{
  OUTLINED_FUNCTION_9();
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR___CCScheduledTaskState_expired];
  *v5 = 0;
  v5[4] = 0;
  v6 = &v1[OBJC_IVAR___CCScheduledTaskState_identifier];
  *v6 = v3;
  *(v6 + 1) = v2;
  *&v1[OBJC_IVAR___CCScheduledTaskState_setBookkeeping] = v0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

Swift::Bool __swiftcall ScheduledTaskState.isExpired()()
{
  v1 = v0 + OBJC_IVAR___CCScheduledTaskState_expired;
  os_unfair_lock_lock((v0 + OBJC_IVAR___CCScheduledTaskState_expired));
  v2 = *(v1 + 4);
  os_unfair_lock_unlock(v1);
  return v2;
}

id _s11CascadeSets14ScheduledTasksCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B6E006CC()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *(v0[2] + OBJC_IVAR___CCScheduledTasks_setBookkeeping);
  v2 = objc_allocWithZone(type metadata accessor for ScheduledTaskState());
  swift_unknownObjectRetain();
  v3 = ScheduledTaskState.init(identifier:setBookkeeping:)();
  v0[3] = v3;
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1B6E007B4;

  return sub_1B6E01B28(0, v3);
}

uint64_t sub_1B6E007B4()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_0();
  v3 = *(v2 + 32);
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    v7 = sub_1B6E00914;
  }

  else
  {
    v7 = sub_1B6E008B8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B6E008B8()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_4_2();

  return v1();
}

uint64_t sub_1B6E00914()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_4_2();
  v2 = *(v0 + 40);

  return v1();
}

uint64_t sub_1B6E009EC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B6E00A94;

  return ScheduledTasks.performNightlyDatabaseMaintenance()();
}

uint64_t sub_1B6E00A94()
{
  OUTLINED_FUNCTION_7_1();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  v6 = v3[4];
  v7 = v3[2];
  v8 = *v1;
  *v5 = *v1;

  v9 = v3[3];
  if (v2)
  {
    v10 = sub_1B6E0932C();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(v9, 0);
  }

  _Block_release(v4[3]);
  v11 = v8[1];

  return v11();
}

uint64_t sub_1B6E00C0C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1B6E01AA4;

  return v7();
}

uint64_t sub_1B6E00CF4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1B6E00DDC;

  return v8();
}

uint64_t sub_1B6E00DDC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v4 = v3;

  OUTLINED_FUNCTION_4_2();

  return v5();
}

uint64_t sub_1B6E00EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB977B30, &qword_1B6E0EC80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = v24 - v10;
  sub_1B6E017DC(a3, v24 - v10);
  v12 = sub_1B6E093EC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1B6E01874(v11);
  }

  else
  {
    sub_1B6E093DC();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    v13 = *(a5 + 24);
    v14 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = sub_1B6E093CC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1B6E093AC() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1B6E01874(a3);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B6E01874(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1B6E01158(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B6E01250;

  return v7(a1);
}

uint64_t sub_1B6E01250()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v4 = v3;

  OUTLINED_FUNCTION_4_2();

  return v5();
}

uint64_t sub_1B6E013F8()
{
  OUTLINED_FUNCTION_7_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v1 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 16) = v9;
  *v9 = v0;
  v9[1] = sub_1B6E00DDC;

  return v11(v6, v4, v2);
}

uint64_t sub_1B6E0155C()
{
  OUTLINED_FUNCTION_10_0();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B6E00DDC;

  return sub_1B6E009EC(v2, v3);
}

uint64_t sub_1B6E0162C()
{
  OUTLINED_FUNCTION_7_1();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B6E01AA4;

  return sub_1B6E00C0C(v2, v3, v5);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1B6E01724()
{
  OUTLINED_FUNCTION_7_1();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_1(v5);
  *v6 = v7;
  v6[1] = sub_1B6E01AA4;
  v8 = OUTLINED_FUNCTION_3_3();

  return v9(v8);
}

uint64_t sub_1B6E017DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB977B30, &qword_1B6E0EC80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6E01874(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB977B30, &qword_1B6E0EC80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B6E018DC()
{
  OUTLINED_FUNCTION_10_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_1(v3);
  *v4 = v5;
  v4[1] = sub_1B6E01AA4;
  v6 = OUTLINED_FUNCTION_3_3();

  return v7(v6);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B6E019A0()
{
  OUTLINED_FUNCTION_7_1();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_1(v5);
  *v6 = v7;
  v6[1] = sub_1B6E01AA4;
  v8 = OUTLINED_FUNCTION_3_3();

  return sub_1B6DFFC60(v8, v9, v2, v4, v3);
}

uint64_t objectdestroyTm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t OUTLINED_FUNCTION_4_2()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1B6E01B28(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B6E01B48, 0, 0);
}

uint64_t sub_1B6E01B48()
{
  v34 = v0;
  if (qword_1EB976DE8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_1B6E0936C();
  __swift_project_value_buffer(v2, qword_1EB976DF0);
  v3 = v1;
  v4 = sub_1B6E0934C();
  v5 = sub_1B6E0943C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    v9 = v6;
    v10 = sub_1B6E0939C();
    v12 = sub_1B6DFE754(v10, v11, &v33);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1B6DB2000, v4, v5, "%s: running...", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();
  }

  v13 = v0[8];
  v14 = v0[9];
  v15 = objc_opt_self();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v13;
  v0[6] = sub_1B6E02714;
  v0[7] = v16;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B6E0275C;
  v0[5] = &block_descriptor_0;
  v17 = _Block_copy(v0 + 2);
  v18 = v0[7];
  v19 = v13;
  v20 = v14;

  [v15 runAsPersonaIdentifier:0 block:v17];
  _Block_release(v17);
  [v19 setTaskCompleted];
  v21 = v20;
  v22 = sub_1B6E0934C();
  v23 = sub_1B6E0943C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = v0[9];
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33 = v26;
    *v25 = 136315138;
    v0[2] = v24;
    v27 = v24;
    v28 = sub_1B6E0939C();
    v30 = sub_1B6DFE754(v28, v29, &v33);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_1B6DB2000, v22, v23, "%s: done", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_1B6E01E90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB977B30, &qword_1B6E0EC80);
  __swift_allocate_value_buffer(v0, qword_1EB977B98);
  v1 = __swift_project_value_buffer(v0, qword_1EB977B98);
  v2 = sub_1B6E093EC();

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

void sub_1B6E01F0C(void *a1, void *a2, void *a3)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    aBlock[0] = a1;
    v6 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB977B38, &qword_1B6E0ECD0);
    sub_1B6E0286C();
    if (swift_dynamicCast())
    {
      v7 = v66;
      if ([v66 code] == 1)
      {
        if (qword_1EB976DE8 != -1)
        {
          swift_once();
        }

        v8 = sub_1B6E0936C();
        __swift_project_value_buffer(v8, qword_1EB976DF0);
        v9 = a1;
        v10 = sub_1B6E0934C();
        v11 = sub_1B6E0942C();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          *v12 = 138412290;
          v14 = a1;
          v15 = _swift_stdlib_bridgeErrorToNSError();
          *(v12 + 4) = v15;
          *v13 = v15;
          _os_log_impl(&dword_1B6DB2000, v10, v11, "Failed to asssume default persona for maintenace %@", v12, 0xCu);
          sub_1B6DFED48(v13);
          MEMORY[0x1B8C9CE10](v13, -1, -1);
          MEMORY[0x1B8C9CE10](v12, -1, -1);
        }

        goto LABEL_34;
      }
    }
  }

  if ((sub_1B6E0940C() & 1) == 0)
  {
    v30 = objc_opt_self();
    v31 = sub_1B6E027E0(v30);
    if (v32)
    {
      v33 = v31;
      v34 = v32;
      if (qword_1EB976DE8 != -1)
      {
        swift_once();
      }

      v35 = sub_1B6E0936C();
      __swift_project_value_buffer(v35, qword_1EB976DF0);

      v36 = sub_1B6E0934C();
      v37 = sub_1B6E0943C();

      if (!os_log_type_enabled(v36, v37))
      {

        goto LABEL_33;
      }

      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136315138;
      v40 = sub_1B6DFE754(v33, v34, aBlock);

      *(v38 + 4) = v40;
      _os_log_impl(&dword_1B6DB2000, v36, v37, "Running default maintenance as persona: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1B8C9CE10](v39, -1, -1);
      v41 = v38;
    }

    else
    {
      if (qword_1EB976DE8 != -1)
      {
        swift_once();
      }

      v42 = sub_1B6E0936C();
      __swift_project_value_buffer(v42, qword_1EB976DF0);
      v36 = sub_1B6E0934C();
      v43 = sub_1B6E0943C();
      if (!os_log_type_enabled(v36, v43))
      {
        goto LABEL_33;
      }

      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1B6DB2000, v36, v43, "Running default maintenance", v44, 2u);
      v41 = v44;
    }

    MEMORY[0x1B8C9CE10](v41, -1, -1);
LABEL_33:

    v60 = objc_opt_self();
    v61 = [objc_opt_self() allSetsResourceSpecifierWithOptions_];
    v7 = sub_1B6E0937C();
    v62 = swift_allocObject();
    v62[2] = a2;
    aBlock[4] = sub_1B6E02844;
    aBlock[5] = v62;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B6E0271C;
    aBlock[3] = &block_descriptor_6;
    v63 = _Block_copy(aBlock);
    v64 = a2;

    [v60 performMaintenanceOnAllSets:v61 clientId:v7 shouldDeferBlock:v63];
    _Block_release(v63);

LABEL_34:
LABEL_35:
    v65 = *MEMORY[0x1E69E9840];
    return;
  }

  if (qword_1EB976DE8 != -1)
  {
    swift_once();
  }

  v16 = sub_1B6E0936C();
  __swift_project_value_buffer(v16, qword_1EB976DF0);
  v17 = a2;
  v18 = sub_1B6E0934C();
  v19 = sub_1B6E0943C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136315138;
    v22 = v17;
    v23 = sub_1B6E0939C();
    v25 = sub_1B6DFE754(v23, v24, aBlock);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_1B6DB2000, v18, v19, "%s: cancelled", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1B8C9CE10](v21, -1, -1);
    MEMORY[0x1B8C9CE10](v20, -1, -1);
  }

  if (!a3)
  {
    goto LABEL_35;
  }

  aBlock[0] = 0;
  v26 = [a3 setTaskExpiredWithRetryAfter:aBlock error:0.0];
  v27 = aBlock[0];
  if (!v26)
  {
    v45 = aBlock[0];
    v46 = sub_1B6E0933C();

    swift_willThrow();
    v47 = v17;
    v48 = v46;
    v49 = sub_1B6E0934C();
    v50 = sub_1B6E0942C();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      aBlock[0] = v53;
      *v51 = 136315394;
      v54 = v47;
      v55 = sub_1B6E0939C();
      v57 = sub_1B6DFE754(v55, v56, aBlock);

      *(v51 + 4) = v57;
      *(v51 + 12) = 2112;
      v58 = v46;
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 14) = v59;
      *v52 = v59;
      _os_log_impl(&dword_1B6DB2000, v49, v50, "%s: task failed to set retry: %@", v51, 0x16u);
      sub_1B6DFED48(v52);
      MEMORY[0x1B8C9CE10](v52, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x1B8C9CE10](v53, -1, -1);
      MEMORY[0x1B8C9CE10](v51, -1, -1);
    }

    else
    {
    }

    goto LABEL_35;
  }

  v28 = *MEMORY[0x1E69E9840];

  v29 = v27;
}

uint64_t sub_1B6E0271C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  LOBYTE(v1) = v1(v3);

  return v1 & 1;
}

void sub_1B6E0275C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B6E027E0(void *a1)
{
  v1 = [a1 currentPersonaIdentifierLoggingDescription];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B6E0938C();

  return v3;
}

unint64_t sub_1B6E0286C()
{
  result = qword_1EB977B48;
  if (!qword_1EB977B48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB977B48);
  }

  return result;
}

void _decodeDevice_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 jsonDictionary];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B6DB2000, v2, v3, "Failed to decode serialized set device: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __getCCSerializedSetMessageClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCCSerializedSetMessageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CCSerializedSet.m" lineNumber:26 description:{@"Unable to find class %s", "CCSerializedSetMessage"}];

  __break(1u);
}

void IntelligencePlatformLibraryLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IntelligencePlatformLibraryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CCSerializedSet.m" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}

void __getCCSerializedSetDeviceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCCSerializedSetDeviceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CCSerializedSet.m" lineNumber:28 description:{@"Unable to find class %s", "CCSerializedSetDevice"}];

  __break(1u);
}

void __getCCSerializedSetItemClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCCSerializedSetItemClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CCSerializedSet.m" lineNumber:31 description:{@"Unable to find class %s", "CCSerializedSetItem"}];

  __break(1u);
}

void __getCCSerializedSetDescriptorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCCSerializedSetDescriptorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CCSerializedSet.m" lineNumber:27 description:{@"Unable to find class %s", "CCSerializedSetDescriptor"}];

  __break(1u);
}

void __getCKDistributedSiteIdentifierClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKDistributedSiteIdentifierClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CCDatabaseDeviceMapping.m" lineNumber:19 description:{@"Unable to find class %s", "CKDistributedSiteIdentifier"}];

  __break(1u);
}

void __getCKDistributedSiteIdentifierClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CloudKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CCDatabaseDeviceMapping.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}

void __CCSetLibraryConfigurationRegistryBridge_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<CCSetConfigurationRegistryProtocol>  _Nonnull CCSetLibraryConfigurationRegistryBridge(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CCSetConfigurationRegistry.m" lineNumber:25 description:@"Must have IntelligencePlatformLibrary framework linked to obtain CCSetResourceLibraryConfigurationRegistry"];
}

void __getCCSetLibraryConfigurationRegistryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCCSetLibraryConfigurationRegistryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CCSetConfigurationRegistry.m" lineNumber:16 description:{@"Unable to find class %s", "CCSetLibraryConfigurationRegistry"}];

  __break(1u);
}

void __getCCSetLibraryConfigurationRegistryClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IntelligencePlatformLibraryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CCSetConfigurationRegistry.m" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
}

void __CCTypeIdentifierRegistryBridge_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<CCTypeIdentifierRegistryProtocol, CCTypeIdentifierRegistryProtocolPrivate>  _Nonnull CCTypeIdentifierRegistryBridge(void)_block_invoke"}];
  [v0 handleFailureInFunction:v1 file:@"CCTypeIdentifierRegistryBase.m" lineNumber:36 description:@"Must have IntelligencePlatformLibrary framework linked to obtain CCTypeIdentifierRegistry"];
}

void __getCCTypeIdentifierRegistryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCCTypeIdentifierRegistryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CCTypeIdentifierRegistryBase.m" lineNumber:19 description:{@"Unable to find class %s", "CCTypeIdentifierRegistry"}];

  __break(1u);
}

void __getCCTypeIdentifierRegistryClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IntelligencePlatformLibraryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CCTypeIdentifierRegistryBase.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}

void _columnValueFromSQLiteStatement_cold_1(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3(&dword_1B6DB2000, v5, v6, "value with unknown column type (sqlite_column_index: %@, sqlite_column_type: %@)", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __getCKDistributedTimestampStateVectorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKDistributedTimestampStateVectorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CCSetChangeBookmark.m" lineNumber:20 description:{@"Unable to find class %s", "CKDistributedTimestampStateVector"}];

  __break(1u);
}

void __getCKDistributedTimestampStateVectorClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CloudKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CCSetChangeBookmark.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

void __getCKDistributedTimestampStateVectorClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKDistributedTimestampStateVectorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CCDatabaseSetChangeEnumerator.m" lineNumber:44 description:{@"Unable to find class %s", "CKDistributedTimestampStateVector"}];

  __break(1u);
}

void CloudKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CloudKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CCDatabaseSetChangeEnumerator.m" lineNumber:42 description:{@"%s", *a1}];

  __break(1u);
}

void __getCKDistributedTimestampClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKDistributedTimestampClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CCDatabaseSetChangeEnumerator.m" lineNumber:46 description:{@"Unable to find class %s", "CKDistributedTimestamp"}];

  __break(1u);
}

void __getCKMergeableDeltaVectorsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKMergeableDeltaVectorsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CCDatabaseSetChangeEnumerator.m" lineNumber:45 description:{@"Unable to find class %s", "CKMergeableDeltaVectors"}];

  __break(1u);
}

void CCDataResourceStatusIsNotDiscoverable_cold_1(unsigned __int8 a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "CCDataResourceStatusIsNotDiscoverable received invalid value %lu", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __getCKDistributedTimestampStateVectorClass_block_invoke_cold_1_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKDistributedTimestampStateVectorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CCDatabaseSetStateVectorBuilder.m" lineNumber:15 description:{@"Unable to find class %s", "CKDistributedTimestampStateVector"}];

  __break(1u);
}

void __getCKDistributedTimestampStateVectorClass_block_invoke_cold_2_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CloudKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CCDatabaseSetStateVectorBuilder.m" lineNumber:14 description:{@"%s", *a1}];

  __break(1u);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

double gotLoadHelper_x8__OBJC_CLASS___BGSystemTaskScheduler(double result)
{
  if (!atomic_load(&dlopenHelperFlag_BackgroundSystemTasks))
  {
    return dlopenHelper_BackgroundSystemTasks(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_BackgroundSystemTasks(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/BackgroundSystemTasks.framework/BackgroundSystemTasks", 0);
  atomic_store(1u, &dlopenHelperFlag_BackgroundSystemTasks);
  return a1;
}