@interface BRXPCClientUtils
+ (BOOL)executeXPCWithMaxRetries:(unint64_t)retries error:(id *)error block:(id)block;
+ (void)executeAsyncXPCWithMaxRetries:(unint64_t)retries completion:(id)completion xpcInvokeBlock:(id)block;
@end

@implementation BRXPCClientUtils

+ (BOOL)executeXPCWithMaxRetries:(unint64_t)retries error:(id *)error block:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];
  if (retries)
  {
    do
    {

      v16 = 0;
      v8 = blockCopy[2](blockCopy, &v16);
      v9 = v16;
      v7 = v9;
      if ((v8 & 1) != 0 || ![v9 br_isNSXPCConnectionError])
      {
        break;
      }

      v10 = brc_bread_crumbs("+[BRXPCClientUtils executeXPCWithMaxRetries:error:block:]", 32);
      v11 = brc_default_log(1, 0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v10;
        _os_log_impl(&dword_1AE2A9000, v11, OS_LOG_TYPE_DEFAULT, "[NOTICE] Block execution failed because of XPC - retrying%@", buf, 0xCu);
      }

      --retries;
    }

    while (retries);
  }

  else
  {
    v8 = 0;
  }

  if (error)
  {
    v12 = v7;
    *error = v7;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (void)executeAsyncXPCWithMaxRetries:(unint64_t)retries completion:(id)completion xpcInvokeBlock:(id)block
{
  completionCopy = completion;
  blockCopy = block;
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__BRXPCClientUtils_executeAsyncXPCWithMaxRetries_completion_xpcInvokeBlock___block_invoke;
  v16[3] = &unk_1E7A14990;
  v17 = userPersonaUniqueString;
  v18 = completionCopy;
  v19 = blockCopy;
  retriesCopy = retries;
  v12 = blockCopy;
  v13 = userPersonaUniqueString;
  v14 = completionCopy;
  v15 = MEMORY[0x1B26FEA90](v16);
  v12[2](v12, v15);
}

void __76__BRXPCClientUtils_executeAsyncXPCWithMaxRetries_completion_xpcInvokeBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 br_isNSXPCConnectionError] & 1) != 0 && (v4 = *(a1 + 56), v4 != 1))
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __76__BRXPCClientUtils_executeAsyncXPCWithMaxRetries_completion_xpcInvokeBlock___block_invoke_2;
      v9[3] = &unk_1E7A14968;
      v6 = *(a1 + 40);
      v8 = *(a1 + 48);
      v7 = *(a1 + 56);
      v10 = v6;
      v12 = v7;
      v11 = v8;
      [BRPersonaUtils performWithPersonaID:v5 block:v9];
    }

    else
    {
      [BRXPCClientUtils executeAsyncXPCWithMaxRetries:v4 - 1 completion:*(a1 + 40) xpcInvokeBlock:*(a1 + 48)];
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __76__BRXPCClientUtils_executeAsyncXPCWithMaxRetries_completion_xpcInvokeBlock___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs("+[BRXPCClientUtils executeAsyncXPCWithMaxRetries:completion:xpcInvokeBlock:]_block_invoke_2", 54);
    v5 = brc_default_log(0, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __76__BRXPCClientUtils_executeAsyncXPCWithMaxRetries_completion_xpcInvokeBlock___block_invoke_2_cold_1(v4, v5);
    }

    (*(a1[4] + 16))();
  }

  else
  {
    [BRXPCClientUtils executeAsyncXPCWithMaxRetries:a1[6] - 1 completion:a1[4] xpcInvokeBlock:a1[5]];
  }
}

void __76__BRXPCClientUtils_executeAsyncXPCWithMaxRetries_completion_xpcInvokeBlock___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed to adopt persona for _br_addDomain retry%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end