@interface CDPRecoveryKeyValidatorProxyImpl
- (BOOL)confirmRecoveryKey:(id)a3 error:(id *)a4;
- (CDPRecoveryKeyValidatorProxyImpl)initWithRemoteObject:(id)a3;
- (id)generateRecoveryKeyWithError:(id *)a3;
- (void)confirmRecoveryKey:(id)a3 completion:(id)a4;
- (void)generateRecoveryKey:(id)a3;
@end

@implementation CDPRecoveryKeyValidatorProxyImpl

- (CDPRecoveryKeyValidatorProxyImpl)initWithRemoteObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDPRecoveryKeyValidatorProxyImpl;
  v6 = [(CDPRecoveryKeyValidatorProxyImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_validator, a3);
  }

  return v7;
}

- (void)confirmRecoveryKey:(id)a3 completion:(id)a4
{
  v6 = a4;
  validator = self->_validator;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__CDPRecoveryKeyValidatorProxyImpl_confirmRecoveryKey_completion___block_invoke;
  v9[3] = &unk_1E869D6C8;
  v10 = v6;
  v8 = v6;
  [(CDPRecoveryKeyValidator *)validator confirmRecoveryKey:a3 completion:v9];
}

void __66__CDPRecoveryKeyValidatorProxyImpl_confirmRecoveryKey_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__CDPRecoveryKeyValidatorProxyImpl_confirmRecoveryKey_completion___block_invoke_2;
  block[3] = &unk_1E869DBD0;
  v6 = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)generateRecoveryKey:(id)a3
{
  v4 = a3;
  validator = self->_validator;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__CDPRecoveryKeyValidatorProxyImpl_generateRecoveryKey___block_invoke;
  v7[3] = &unk_1E869DC98;
  v8 = v4;
  v6 = v4;
  [(CDPRecoveryKeyValidator *)validator generateRecoveryKey:v7];
}

void __56__CDPRecoveryKeyValidatorProxyImpl_generateRecoveryKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CDPRecoveryKeyValidatorProxyImpl_generateRecoveryKey___block_invoke_2;
  block[3] = &unk_1E869D878;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)generateRecoveryKeyWithError:(id *)a3
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2;
  v24 = __Block_byref_object_dispose__2;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v5 = dispatch_semaphore_create(0);
  validator = self->_validator;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__CDPRecoveryKeyValidatorProxyImpl_generateRecoveryKeyWithError___block_invoke;
  v10[3] = &unk_1E869DCC0;
  v12 = &v20;
  v13 = &v14;
  v7 = v5;
  v11 = v7;
  [(CDPRecoveryKeyValidator *)validator generateRecoveryKey:v10];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (a3)
  {
    *a3 = v15[5];
  }

  v8 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

void __65__CDPRecoveryKeyValidatorProxyImpl_generateRecoveryKeyWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)confirmRecoveryKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  v21 = 0;
  v7 = dispatch_semaphore_create(0);
  validator = self->_validator;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__CDPRecoveryKeyValidatorProxyImpl_confirmRecoveryKey_error___block_invoke;
  v12[3] = &unk_1E869DCE8;
  v14 = &v22;
  v15 = &v16;
  v9 = v7;
  v13 = v9;
  [(CDPRecoveryKeyValidator *)validator confirmRecoveryKey:v6 completion:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  if (a4)
  {
    *a4 = v17[5];
  }

  v10 = *(v23 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void __61__CDPRecoveryKeyValidatorProxyImpl_confirmRecoveryKey_error___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

@end