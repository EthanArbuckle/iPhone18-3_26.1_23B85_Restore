@interface FCMescalSignature
+ (void)signatureFromData:(id)data completion:(id)completion;
@end

@implementation FCMescalSignature

+ (void)signatureFromData:(id)data completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dataCopy = data;
  v7 = +[FCAMSBag bag];
  bytes = [dataCopy bytes];
  v9 = [dataCopy length];

  CC_SHA1(bytes, v9, md);
  v10 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:20];
  v11 = [MEMORY[0x1E698C9F0] signaturePromiseFromData:v10 type:1 bag:v7];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__FCMescalSignature_signatureFromData_completion___block_invoke;
  v14[3] = &unk_1E7C3F2D8;
  v15 = completionCopy;
  v12 = completionCopy;
  [v11 addFinishBlock:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __50__FCMescalSignature_signatureFromData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__FCMescalSignature_signatureFromData_completion___block_invoke_2;
    v10[3] = &unk_1E7C37BC0;
    v11 = v6;
    v12 = *(a1 + 32);
    __50__FCMescalSignature_signatureFromData_completion___block_invoke_2(v10);
  }

  else
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = [v5 base64EncodedStringWithOptions:0];
      (*(v8 + 16))(v8, v9, 0);
    }
  }
}

uint64_t __50__FCMescalSignature_signatureFromData_completion___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543362;
    v7 = v5;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Mescal signing failed to sign data with error: %{public}@", &v6, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, 0, *(a1 + 32));
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

@end