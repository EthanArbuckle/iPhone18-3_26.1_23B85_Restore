@interface NSData
@end

@implementation NSData

uint64_t __40__NSData_FCANEF__fc_anefEncryptWithKey___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 length];
    v6 = [*(a1 + 40) length];
    v9 = 134218240;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "failed to encrypt data due to invalid key (plaintext length = %lu, key length = %lu)", &v9, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __40__NSData_FCANEF__fc_anefEncryptWithKey___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 length];
    v7 = [*(a1 + 40) length];
    v10[0] = 67109632;
    v10[1] = v3;
    v11 = 2048;
    v12 = v6;
    v13 = 2048;
    v14 = v7;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "failed to encrypt data with CC error: %d (plaintext length = %lu, key length = %lu)", v10, 0x1Cu);
  }

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __40__NSData_FCANEF__fc_anefDecryptWithKey___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 length];
    v6 = [*(a1 + 40) length];
    v9 = 134218240;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "failed to decrypt data due to invalid key (ciphertext length = %lu, key length = %lu)", &v9, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __40__NSData_FCANEF__fc_anefDecryptWithKey___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 length];
    v7 = [*(a1 + 40) length];
    v10[0] = 67109632;
    v10[1] = v3;
    v11 = 2048;
    v12 = v6;
    v13 = 2048;
    v14 = v7;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "failed to decrypt data with CC error: %d (ciphertext length = %lu, key length = %lu)", v10, 0x1Cu);
  }

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

@end