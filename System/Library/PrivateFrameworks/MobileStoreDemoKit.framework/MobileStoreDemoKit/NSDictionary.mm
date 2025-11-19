@interface NSDictionary
@end

@implementation NSDictionary

uint64_t __51__NSDictionary_xpcdictConv__initWithXPCDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x277CCACA8] stringWithCString:a2 encoding:4];
  v7 = MEMORY[0x259CB0BB0](v5);
  if (v7 == MEMORY[0x277D86448])
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [MEMORY[0x277CCABB0] numberWithBool:xpc_BOOL_get_value(v5)];
LABEL_22:
    v15 = v11;
    [v10 setObject:v11 forKey:v6];

    v9 = 1;
    goto LABEL_23;
  }

  if (v7 == MEMORY[0x277D864C0])
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [MEMORY[0x277CCACA8] stringWithCString:xpc_string_get_string_ptr(v5) encoding:4];
    goto LABEL_22;
  }

  if (v7 == MEMORY[0x277D86498])
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:xpc_int64_get_value(v5)];
    goto LABEL_22;
  }

  if (v7 == MEMORY[0x277D864C8])
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:xpc_uint64_get_value(v5)];
    goto LABEL_22;
  }

  if (v7 == MEMORY[0x277D86468])
  {
    v12 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [v12 initWithXPCDictionary:v5];
    goto LABEL_22;
  }

  if (v7 == MEMORY[0x277D86458])
  {
    bytes_ptr = xpc_data_get_bytes_ptr(v5);
    length = xpc_data_get_length(v5);
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:bytes_ptr length:length];
    goto LABEL_22;
  }

  if (v7 == MEMORY[0x277D86440])
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [MEMORY[0x277CBEA60] arrayWithXPCArray:v5];
    goto LABEL_22;
  }

  if (v7 == MEMORY[0x277D86470])
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:xpc_double_get_value(v5)];
    goto LABEL_22;
  }

  if (v7 == MEMORY[0x277D86460])
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:xpc_date_get_value(v5)];
    goto LABEL_22;
  }

  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __51__NSDictionary_xpcdictConv__initWithXPCDictionary___block_invoke_cold_1(v6, v8);
  }

  v9 = 0;
LABEL_23:

  return v9;
}

void __51__NSDictionary_xpcdictConv__initWithXPCDictionary___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_259B7D000, a2, OS_LOG_TYPE_ERROR, "The value for key %{public}@ has a type that is not supported yet", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end