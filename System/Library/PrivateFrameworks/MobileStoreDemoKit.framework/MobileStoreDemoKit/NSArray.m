@interface NSArray
@end

@implementation NSArray

uint64_t __42__NSArray_xpcarrayConv__initWithXPCArray___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x259CB0BB0]();
  if (v6 == MEMORY[0x277D86448])
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [MEMORY[0x277CCABB0] numberWithBool:xpc_BOOL_get_value(v5)];
LABEL_22:
    v14 = v10;
    [v9 addObject:v10];

    v8 = 1;
    goto LABEL_23;
  }

  if (v6 == MEMORY[0x277D864C0])
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [MEMORY[0x277CCACA8] stringWithCString:xpc_string_get_string_ptr(v5) encoding:4];
    goto LABEL_22;
  }

  if (v6 == MEMORY[0x277D86498])
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:xpc_int64_get_value(v5)];
    goto LABEL_22;
  }

  if (v6 == MEMORY[0x277D864C8])
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:xpc_uint64_get_value(v5)];
    goto LABEL_22;
  }

  if (v6 == MEMORY[0x277D86458])
  {
    bytes_ptr = xpc_data_get_bytes_ptr(v5);
    length = xpc_data_get_length(v5);
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:bytes_ptr length:length];
    goto LABEL_22;
  }

  if (v6 == MEMORY[0x277D86470])
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:xpc_double_get_value(v5)];
    goto LABEL_22;
  }

  if (v6 == MEMORY[0x277D86468])
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithXPCDictionary:v5];
    goto LABEL_22;
  }

  if (v6 == MEMORY[0x277D86440])
  {
    v13 = *(a1 + 32);
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [v13 initWithXPCArray:v5];
    goto LABEL_22;
  }

  if (v6 == MEMORY[0x277D86460])
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:xpc_date_get_value(v5)];
    goto LABEL_22;
  }

  v7 = defaultLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __42__NSArray_xpcarrayConv__initWithXPCArray___block_invoke_cold_1(a2, v7);
  }

  v8 = 0;
LABEL_23:

  return v8;
}

void __42__NSArray_xpcarrayConv__xpcArrayFromArray__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v8 = xpc_string_create([v6 UTF8String]);
LABEL_5:
    v9 = v8;
    xpc_array_append_value(v7, v8);

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v8 = xpc_data_create([v6 bytes], objc_msgSend(v6, "length"));
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v6;
    v11 = [v10 objCType];
    if (*v11 == 105 && !v11[1] || (v12 = [v10 objCType], *v12 == 115) && !v12[1] || (v13 = objc_msgSend(v10, "objCType"), *v13 == 113) && !v13[1] || (v14 = objc_msgSend(v10, "objCType"), *v14 == 113) && !v14[1])
    {
      v20 = *(a1 + 32);
      v21 = xpc_int64_create([v10 longLongValue]);
    }

    else
    {
      v15 = [v10 objCType];
      if (*v15 == 102 && !v15[1] || (v16 = [v10 objCType], *v16 == 100) && !v16[1])
      {
        v20 = *(a1 + 32);
        [v10 doubleValue];
        v21 = xpc_double_create(v23);
      }

      else
      {
        v17 = [v10 objCType];
        if (*v17 != 66 || v17[1])
        {
          v18 = [v10 objCType];
          if (*v18 != 99 || v18[1])
          {
            v19 = defaultLogHandle();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              __42__NSArray_xpcarrayConv__xpcArrayFromArray__block_invoke_cold_2(v10, v19);
            }

            *a4 = 1;
            *(*(*(a1 + 40) + 8) + 24) = 0;
            goto LABEL_40;
          }
        }

        v20 = *(a1 + 32);
        v21 = xpc_BOOL_create([v10 BOOLValue]);
      }
    }

    v25 = v21;
    xpc_array_append_value(v20, v21);

LABEL_40:
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v8 = [v6 xpcArrayFromArray];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v8 = [v6 createXPCDictionary];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    [v6 timeIntervalSince1970];
    v8 = xpc_date_create(v22);
    goto LABEL_5;
  }

  v24 = defaultLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    __42__NSArray_xpcarrayConv__xpcArrayFromArray__block_invoke_cold_1(v24);
  }

  *a4 = 1;
  *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_6:
}

void __42__NSArray_xpcarrayConv__initWithXPCArray___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_259B7D000, a2, OS_LOG_TYPE_ERROR, "The value at index %lu in this xpcArray are of an unsupported type", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __42__NSArray_xpcarrayConv__xpcArrayFromArray__block_invoke_cold_2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 136315138;
  v5 = [a1 objCType];
  _os_log_error_impl(&dword_259B7D000, a2, OS_LOG_TYPE_ERROR, "Unsupported NSNumber type: %s for xpc dictionary encoding", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end