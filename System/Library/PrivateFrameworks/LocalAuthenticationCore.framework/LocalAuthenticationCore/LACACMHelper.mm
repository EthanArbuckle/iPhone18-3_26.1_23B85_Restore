@interface LACACMHelper
+ (BOOL)requirement:(__ACMRequirement *)requirement hasFlag:(unint64_t)flag andType:(unsigned int)type;
+ (BOOL)requirement:(__ACMRequirement *)requirement hasState:(unsigned int)state andType:(unsigned int)type;
+ (BOOL)resetRatchet:(id *)ratchet;
+ (char)acmPolicyForPolicy:(int64_t)policy;
+ (id)catacombUUID:(id)d;
+ (id)createUPPControlForTeamID:(id)d;
+ (id)decodeData:(id)data seed:(id)seed externalizedContext:(id)context error:(id *)error;
+ (id)encodeData:(id)data seed:(id)seed externalizedContext:(id)context error:(id *)error;
+ (id)ratchetStatusWithConfig:(id *)config;
+ (id)requirement:(__ACMRequirement *)requirement dataProperty:(unsigned int)property;
+ (id)requirement:(__ACMRequirement *)requirement uint32Property:(unsigned int)property;
+ (int64_t)_errorCodeFromACMStatus:(int)status;
+ (void)notifyBiometricMatchOperationStartAttempted;
- (BOOL)_verifyRequirement:(__ACMRequirement *)requirement satisfiedForType:(unsigned int)type present:(BOOL *)present flags:(unsigned int *)flags;
- (BOOL)addCredential:(unsigned int)credential scope:(unsigned int)scope error:(id *)error;
- (BOOL)addCredential:(unsigned int)credential scope:(unsigned int)scope property:(unsigned int)property data:(id)data error:(id *)error;
- (BOOL)isCredentialOfTypeSet:(unsigned int)set error:(id *)error;
- (BOOL)performContextBlock:(id)block error:(id *)error;
- (BOOL)removeCredentialsOfType:(unsigned int)type error:(id *)error;
- (BOOL)replacePassphraseCredentialWithPurpose:(unsigned int)purpose passphrase:(id)passphrase scope:(unsigned int)scope error:(id *)error;
- (BOOL)setData:(id)data type:(unsigned int)type encoded:(BOOL)encoded error:(id *)error;
- (BOOL)setData:(id)data type:(unsigned int)type error:(id *)error;
- (BOOL)setSecretForPasscodeStash:(id)stash error:(id *)error;
- (BOOL)verifyRequirementOfType:(unsigned int)type policy:(char *)policy mustBePresent:(BOOL)present parameters:(id)parameters flags:(unsigned int *)flags error:(id *)error;
- (LACACMHelper)init;
- (LACACMHelper)initWithACMContext:(__ACMHandle *)context;
- (LACACMHelper)initWithExternalizedContext:(id)context;
- (NSData)externalizedContext;
- (id)ageForDataWithType:(unsigned int)type error:(id *)error;
- (id)dataWithType:(unsigned int)type encoded:(BOOL)encoded error:(id *)error;
- (id)dataWithType:(unsigned int)type error:(id *)error;
- (id)exchangeControlData:(id)data error:(id *)error;
- (id)performDataContextBlock:(id)block error:(id *)error;
- (id)performNumberContextBlock:(id)block error:(id *)error;
- (void)dealloc;
- (void)performContextVerificationWithParameters:(id)parameters block:(id)block completion:(id)completion;
- (void)verifyAclConstraint:(id)constraint operation:(id)operation preflight:(BOOL)preflight parameters:(id)parameters maxGlobalCredentialAge:(unsigned int)age processRequirement:(id)requirement;
- (void)verifyPolicy:(char *)policy preflight:(BOOL)preflight parameters:(id)parameters maxGlobalCredentialAge:(unsigned int)age processRequirement:(id)requirement;
@end

@implementation LACACMHelper

- (void)dealloc
{
  acmContext = self->_acmContext;
  if (acmContext)
  {
    ownership = self->_ownership;
    if (ownership == 1)
    {
      v5 = 0;
      goto LABEL_6;
    }

    if (ownership == 2)
    {
      v5 = 1;
LABEL_6:
      ACMContextDelete(acmContext, v5);
    }
  }

  v6.receiver = self;
  v6.super_class = LACACMHelper;
  [(LACACMHelper *)&v6 dealloc];
}

- (LACACMHelper)initWithACMContext:(__ACMHandle *)context
{
  v7.receiver = self;
  v7.super_class = LACACMHelper;
  v4 = [(LACACMHelper *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_acmContext = context;
    v4->_ownership = 0;
    v4->_acmTrackingNumber = ACMContextGetTrackingNumber(context);
  }

  return v5;
}

- (LACACMHelper)initWithExternalizedContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = LACACMHelper;
  v5 = [(LACACMHelper *)&v8 init];
  if (v5)
  {
    v6 = ACMContextCreateWithExternalForm([contextCopy bytes], objc_msgSend(contextCopy, "length"));
    v5->_acmContext = v6;
    v5->_ownership = 1;
    v5->_acmTrackingNumber = ACMContextGetTrackingNumber(v6);
  }

  return v5;
}

- (LACACMHelper)init
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v3 = ACMContextCreate(&v12);
  if (v3)
  {
    v4 = v3;
    v5 = LACLogACM();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = v4;
      _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "Unable to create ACM context with status: %d", buf, 8u);
    }

    selfCopy = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = LACACMHelper;
    v7 = [(LACACMHelper *)&v11 init];
    if (v7)
    {
      v8 = v12;
      v7->_acmContext = v12;
      v7->_ownership = 2;
      v7->_acmTrackingNumber = ACMContextGetTrackingNumber(v8);
    }

    self = v7;
    selfCopy = self;
  }

  v9 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (NSData)externalizedContext
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  acmContext = self->_acmContext;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__LACACMHelper_externalizedContext__block_invoke;
  v5[3] = &unk_1E7A958D0;
  v5[4] = &v6;
  ACMContextGetExternalForm(acmContext, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __35__LACACMHelper_externalizedContext__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a2 length:a3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)setData:(id)data type:(unsigned int)type error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v9 = LACLogACM();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    typeCopy = type;
    v23 = 1024;
    acmTrackingNumber = [(LACACMHelper *)self acmTrackingNumber];
    _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "Setting data of type %d on ACMContext %u", buf, 0xEu);
  }

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __35__LACACMHelper_setData_type_error___block_invoke;
  v18 = &unk_1E7A97338;
  typeCopy2 = type;
  v19 = dataCopy;
  v10 = dataCopy;
  v11 = _Block_copy(&v15);
  v12 = [(LACACMHelper *)self performContextBlock:v11 error:error, v15, v16, v17, v18];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

BOOL __35__LACACMHelper_setData_type_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = ACMContextSetData(a2, *(a1 + 40), [*(a1 + 32) bytes], objc_msgSend(*(a1 + 32), "length"));
  v5 = v4;
  if (a3 && v4)
  {
    if (v4 == -7)
    {
      *a3 = [LACError errorWithCode:-1008 debugDescription:@"Not found."];
    }

    else
    {
      if (v4 == -3)
      {
        v6 = -1001;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to set ACM credential data: %d", 4294967293];
      }

      else
      {
        v6 = -1000;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to set ACM credential data: %d", v4];
      }
      v7 = ;
      *a3 = [LACError errorWithCode:v6 debugDescription:v7];
    }
  }

  return v5 == 0;
}

- (id)exchangeControlData:(id)data error:(id *)error
{
  dataCopy = data;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7;
  v18 = __Block_byref_object_dispose__7;
  v19 = objc_opt_new();
  acmContext = self->_acmContext;
  bytes = [dataCopy bytes];
  v9 = [dataCopy length];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__LACACMHelper_exchangeControlData_error___block_invoke;
  v13[3] = &unk_1E7A958D0;
  v13[4] = &v14;
  v10 = ACMSEPControlEx(acmContext, 0, 0, bytes, v9, v13);
  if (v10)
  {
    if (error)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Control exchange data failed with error code: %d", v10];
      *error = [LACError errorWithCode:-1000 debugDescription:v11];

      error = 0;
    }
  }

  else
  {
    error = v15[5];
  }

  _Block_object_dispose(&v14, 8);

  return error;
}

uint64_t __42__LACACMHelper_exchangeControlData_error___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v3 = result;
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];
    v5 = *(*(v3 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (id)dataWithType:(unsigned int)type error:(id *)error
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__LACACMHelper_dataWithType_error___block_invoke;
  aBlock[3] = &__block_descriptor_36_e41___LACSecureData_24__0____ACMHandle__8__16l;
  typeCopy = type;
  v6 = _Block_copy(aBlock);
  v7 = [(LACACMHelper *)self performDataContextBlock:v6 error:error];

  return v7;
}

id __35__LACACMHelper_dataWithType_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__7;
  v15 = __Block_byref_object_dispose__7;
  v16 = 0;
  v5 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __35__LACACMHelper_dataWithType_error___block_invoke_2;
  v10[3] = &unk_1E7A958D0;
  v10[4] = &v11;
  Data = ACMContextGetData(a2, v5, v10);
  if (!Data)
  {
    v8 = v12[5];
    goto LABEL_11;
  }

  if (a3)
  {
    if (Data == -7)
    {
      [LACError errorWithCode:-1008 debugDescription:@"Not found."];
      *a3 = v8 = 0;
      goto LABEL_11;
    }

    if (Data == -3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get ACM context data: %d", 4294967293];
      [LACError errorWithCode:-1001 debugDescription:v7];
    }

    else
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get ACM context data: %d", Data];
      [LACError errorWithCode:-1000 debugDescription:v7];
    }
    *a3 = ;
  }

  v8 = 0;
LABEL_11:
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __35__LACACMHelper_dataWithType_error___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v3 = result;
    v4 = [LACSecureData secureDataWithBytes:a2 length:a3];
    v5 = *(*(v3 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (id)dataWithType:(unsigned int)type encoded:(BOOL)encoded error:(id *)error
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__LACACMHelper_dataWithType_encoded_error___block_invoke;
  aBlock[3] = &__block_descriptor_37_e41___LACSecureData_24__0____ACMHandle__8__16l;
  encodedCopy = encoded;
  typeCopy = type;
  v7 = _Block_copy(aBlock);
  v8 = [(LACACMHelper *)self performDataContextBlock:v7 error:error];

  return v8;
}

id __43__LACACMHelper_dataWithType_encoded_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7;
  v18 = __Block_byref_object_dispose__7;
  v19 = 0;
  if (*(a1 + 36))
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v13 = v5;
  v11[4] = &v14;
  v12[0] = 14;
  v12[1] = &v13;
  v12[2] = 1;
  v6 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__LACACMHelper_dataWithType_encoded_error___block_invoke_2;
  v11[3] = &unk_1E7A958D0;
  Data = ACMContextGetDataEx(a2, v6, v12, 1, v11);
  if (!Data)
  {
    v9 = v15[5];
    goto LABEL_14;
  }

  if (a3)
  {
    if (Data == -7)
    {
      [LACError errorWithCode:-1008 debugDescription:@"Not found."];
      *a3 = v9 = 0;
      goto LABEL_14;
    }

    if (Data == -3)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get ACM context data: %d", 4294967293];
      [LACError errorWithCode:-1001 debugDescription:v8];
    }

    else
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get ACM context data: %d", Data];
      [LACError errorWithCode:-1000 debugDescription:v8];
    }
    *a3 = ;
  }

  v9 = 0;
LABEL_14:
  _Block_object_dispose(&v14, 8);

  return v9;
}

uint64_t __43__LACACMHelper_dataWithType_encoded_error___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v3 = result;
    v4 = [LACSecureData secureDataWithBytes:a2 length:a3];
    v5 = *(*(v3 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)encodeData:(id)data seed:(id)seed externalizedContext:(id)context error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  seedCopy = seed;
  contextCopy = context;
  v25[0] = 0;
  v12 = ACMEncryptDataEx(2, [contextCopy bytes], objc_msgSend(contextCopy, "length"), objc_msgSend(seedCopy, "bytes"), objc_msgSend(seedCopy, "length"), objc_msgSend(dataCopy, "bytes"), objc_msgSend(dataCopy, "length"), 0, v25);
  if (v12)
  {
    if (error)
    {
      if (v12 == -7)
      {
        [LACError errorWithCode:-1008 debugDescription:@"Not found."];
        *error = v19 = 0;
        goto LABEL_22;
      }

      if (v12 == -3)
      {
        v13 = -1001;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to obtain encryption size %d", 4294967293];
      }

      else
      {
        v13 = -1000;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to obtain encryption size %d", v12];
      }
      v20 = ;
      *error = [LACError errorWithCode:v13 debugDescription:v20];
    }

    v19 = 0;
  }

  else
  {
    if (!v25[0])
    {
      v17 = [LACSecureData alloc];
      v18 = objc_alloc_init(MEMORY[0x1E695DEF0]);
      v19 = [(LACSecureData *)v17 initWithData:v18];

      goto LABEL_22;
    }

    v24[1] = v24;
    v14 = v24 - ((v25[0] + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v14, v25[0]);
    v15 = ACMEncryptDataEx(2, [contextCopy bytes], objc_msgSend(contextCopy, "length"), objc_msgSend(seedCopy, "bytes"), objc_msgSend(seedCopy, "length"), objc_msgSend(dataCopy, "bytes"), objc_msgSend(dataCopy, "length"), v14, v25);
    if (!v15)
    {
      v19 = [LACSecureData secureDataWithBytes:v14 length:v25[0]];
      goto LABEL_22;
    }

    if (error)
    {
      if (v15 == -7)
      {
        [LACError errorWithCode:-1008 debugDescription:@"Not found."];
        *error = v19 = 0;
        goto LABEL_22;
      }

      if (v15 == -3)
      {
        v16 = -1001;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to encrypt data %d", 4294967293];
      }

      else
      {
        v16 = -1000;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to encrypt data %d", v15];
      }
      v21 = ;
      *error = [LACError errorWithCode:v16 debugDescription:v21];
    }

    v19 = 0;
  }

LABEL_22:

  v22 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)decodeData:(id)data seed:(id)seed externalizedContext:(id)context error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  seedCopy = seed;
  contextCopy = context;
  v25[0] = 0;
  v12 = ACMDecryptDataEx(2, [contextCopy bytes], objc_msgSend(contextCopy, "length"), objc_msgSend(seedCopy, "bytes"), objc_msgSend(seedCopy, "length"), objc_msgSend(dataCopy, "bytes"), objc_msgSend(dataCopy, "length"), 0, v25);
  if (v12)
  {
    if (error)
    {
      if (v12 == -7)
      {
        [LACError errorWithCode:-1008 debugDescription:@"Not found."];
        *error = v19 = 0;
        goto LABEL_22;
      }

      if (v12 == -3)
      {
        v13 = -1001;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to obtain plain data size %d", 4294967293];
      }

      else
      {
        v13 = -1000;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to obtain plain data size %d", v12];
      }
      v20 = ;
      *error = [LACError errorWithCode:v13 debugDescription:v20];
    }

    v19 = 0;
  }

  else
  {
    if (!v25[0])
    {
      v17 = [LACSecureData alloc];
      v18 = objc_alloc_init(MEMORY[0x1E695DEF0]);
      v19 = [(LACSecureData *)v17 initWithData:v18];

      goto LABEL_22;
    }

    v24[1] = v24;
    v14 = v24 - ((v25[0] + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v14, v25[0]);
    v15 = ACMDecryptDataEx(2, [contextCopy bytes], objc_msgSend(contextCopy, "length"), objc_msgSend(seedCopy, "bytes"), objc_msgSend(seedCopy, "length"), objc_msgSend(dataCopy, "bytes"), objc_msgSend(dataCopy, "length"), v14, v25);
    if (!v15)
    {
      v19 = [LACSecureData secureDataWithBytes:v14 length:v25[0]];
      goto LABEL_22;
    }

    if (error)
    {
      if (v15 == -7)
      {
        [LACError errorWithCode:-1008 debugDescription:@"Not found."];
        *error = v19 = 0;
        goto LABEL_22;
      }

      if (v15 == -3)
      {
        v16 = -1001;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decrypt data %d", 4294967293];
      }

      else
      {
        v16 = -1000;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decrypt data %d", v15];
      }
      v21 = ;
      *error = [LACError errorWithCode:v16 debugDescription:v21];
    }

    v19 = 0;
  }

LABEL_22:

  v22 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)ageForDataWithType:(unsigned int)type error:(id *)error
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__LACACMHelper_ageForDataWithType_error___block_invoke;
  aBlock[3] = &__block_descriptor_36_e36___NSNumber_24__0____ACMHandle__8__16l;
  typeCopy = type;
  v6 = _Block_copy(aBlock);
  v7 = [(LACACMHelper *)self performNumberContextBlock:v6 error:error];

  return v7;
}

id __41__LACACMHelper_ageForDataWithType_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v5 = *(a1 + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __41__LACACMHelper_ageForDataWithType_error___block_invoke_2;
  v17[3] = &unk_1E7A958D0;
  v17[4] = &v18;
  DataProperty = ACMContextGetDataProperty(a2, v5, 1u, v17);
  if (!DataProperty)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__LACACMHelper_ageForDataWithType_error___block_invoke_40;
    v12[3] = &unk_1E7A958D0;
    v12[4] = &v13;
    v8 = ACMGetEnvironmentVariable(71, v12);
    if (v8)
    {
      if (!a3)
      {
LABEL_19:
        v10 = 0;
        goto LABEL_20;
      }

      if (v8 != -7)
      {
        if (v8 == -3)
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get SEPTimeSinceBootInMs: %d", 4294967293];
          [LACError errorWithCode:-1001 debugDescription:v9];
        }

        else
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get SEPTimeSinceBootInMs: %d", v8];
          [LACError errorWithCode:-1000 debugDescription:v9];
        }
        *a3 = ;

        goto LABEL_19;
      }

      [LACError errorWithCode:-1008 debugDescription:@"Not found."];
      *a3 = v10 = 0;
    }

    else
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v14[3] - v19[3]];
    }

LABEL_20:
    _Block_object_dispose(&v13, 8);
    goto LABEL_21;
  }

  if (a3)
  {
    if (DataProperty == -7)
    {
      [LACError errorWithCode:-1008 debugDescription:@"Not found."];
      *a3 = v10 = 0;
      goto LABEL_21;
    }

    if (DataProperty == -3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get ACM context data ModificationTimestamp: %d", 4294967293];
      [LACError errorWithCode:-1001 debugDescription:v7];
    }

    else
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get ACM context data ModificationTimestamp: %d", DataProperty];
      [LACError errorWithCode:-1000 debugDescription:v7];
    }
    *a3 = ;
  }

  v10 = 0;
LABEL_21:
  _Block_object_dispose(&v18, 8);

  return v10;
}

void __41__LACACMHelper_ageForDataWithType_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2 && a3 == 8)
  {
    *(*(*(a1 + 32) + 8) + 24) = *a2;
  }

  else
  {
    v3 = LACLogACM();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __41__LACACMHelper_ageForDataWithType_error___block_invoke_2_cold_1();
    }
  }
}

void __41__LACACMHelper_ageForDataWithType_error___block_invoke_40(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2 && a3 == 8)
  {
    *(*(*(a1 + 32) + 8) + 24) = *a2;
  }

  else
  {
    v3 = LACLogACM();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __41__LACACMHelper_ageForDataWithType_error___block_invoke_40_cold_1();
    }
  }
}

+ (id)createUPPControlForTeamID:(id)d
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  memset(v15, 0, 28);
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v7 = 2;
  *(&v8 + 4) = 0x100000005;
  dCopy = d;
  v15[7] = [dCopy lengthOfBytesUsingEncoding:4];
  [dCopy UTF8String];
  [dCopy lengthOfBytesUsingEncoding:4];

  __memcpy_chk();
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&v7 length:148];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)performContextBlock:(id)block error:(id *)error
{
  blockCopy = block;
  v7 = blockCopy;
  acmContext = self->_acmContext;
  if (!acmContext)
  {
    v9 = [LACError errorWithCode:-1000 debugDescription:@"Missing ACM context."];
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = 0;
  (*(blockCopy + 2))(blockCopy, acmContext, &v12);
  v9 = v12;
  if (error)
  {
LABEL_3:
    v9 = v9;
    *error = v9;
  }

LABEL_4:
  v10 = v9 == 0;

  return v10;
}

- (id)performDataContextBlock:(id)block error:(id *)error
{
  blockCopy = block;
  v7 = blockCopy;
  acmContext = self->_acmContext;
  if (acmContext)
  {
    v12 = 0;
    v9 = (*(blockCopy + 2))(blockCopy, acmContext, &v12);
    v10 = v12;
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = [LACError errorWithCode:-1000 debugDescription:@"Missing ACM context."];
  v9 = 0;
  if (error)
  {
LABEL_3:
    v10 = v10;
    *error = v10;
  }

LABEL_4:

  return v9;
}

- (id)performNumberContextBlock:(id)block error:(id *)error
{
  blockCopy = block;
  v7 = blockCopy;
  acmContext = self->_acmContext;
  if (acmContext)
  {
    v12 = 0;
    v9 = (*(blockCopy + 2))(blockCopy, acmContext, &v12);
    v10 = v12;
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = [LACError errorWithCode:-1000 debugDescription:@"Missing ACM context."];
  v9 = 0;
  if (error)
  {
LABEL_3:
    v10 = v10;
    *error = v10;
  }

LABEL_4:

  return v9;
}

+ (id)ratchetStatusWithConfig:(id *)config
{
  v18 = 0;
  v17 = 0x200000001;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__7;
  v15 = __Block_byref_object_dispose__7;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__LACACMHelper_ratchetStatusWithConfig___block_invoke;
  v10[3] = &unk_1E7A958D0;
  v10[4] = &v11;
  v5 = ACMSEPControl(&v17, 12, v10);
  if (config)
  {
    v6 = v5;
    if (v5)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to fetch ratchet state and config (stat: %d)", v5];
      *config = +[LACError errorWithCode:debugDescription:](LACError, "errorWithCode:debugDescription:", [self _errorCodeFromACMStatus:v6], v7);
    }
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __40__LACACMHelper_ratchetStatusWithConfig___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x1EEE66BB8]();
}

+ (int64_t)_errorCodeFromACMStatus:(int)status
{
  switch(status)
  {
    case -7:
      v3 = &LACErrorCodeRequestFailed;
      break;
    case 0:
      return 0x7FFFFFFFFFFFFFFFLL;
    case -3:
      v3 = &LACErrorCodeParameter;
      break;
    default:
      v3 = &LACErrorCodeInternal;
      break;
  }

  return *v3;
}

- (void)performContextVerificationWithParameters:(id)parameters block:(id)block completion:(id)completion
{
  parametersCopy = parameters;
  blockCopy = block;
  completionCopy = completion;
  if (self->_acmContext)
  {
    makeACMParameters = [parametersCopy makeACMParameters];
    v12 = makeACMParameters;
    if (makeACMParameters)
    {
      bytes = [makeACMParameters bytes];
    }

    else
    {
      bytes = 0;
    }

    acmContext = self->_acmContext;
    parameterCount = [parametersCopy parameterCount];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __74__LACACMHelper_performContextVerificationWithParameters_block_completion___block_invoke;
    v18[3] = &unk_1E7A973C0;
    v19 = v12;
    v20 = completionCopy;
    v17 = blockCopy[2];
    missingACMContextError = v12;
    v17(blockCopy, acmContext, bytes, parameterCount, v18);
  }

  else
  {
    missingACMContextError = [(LACACMHelper *)self missingACMContextError];
    (*(completionCopy + 2))(completionCopy, 4294967291, 0, 0, missingACMContextError);
  }
}

- (BOOL)addCredential:(unsigned int)credential scope:(unsigned int)scope error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = LACLogACM();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    credentialCopy = credential;
    v19 = 1024;
    scopeCopy = scope;
    v21 = 1024;
    acmTrackingNumber = [(LACACMHelper *)self acmTrackingNumber];
    _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "Adding ACM credential %d for scope %d on ACMContext %u", buf, 0x14u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__LACACMHelper_addCredential_scope_error___block_invoke;
  v14[3] = &unk_1E7A97408;
  v14[4] = self;
  scopeCopy2 = scope;
  credentialCopy2 = credential;
  v10 = _Block_copy(v14);
  v11 = [(LACACMHelper *)self performContextBlock:v10 error:error];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t __42__LACACMHelper_addCredential_scope_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = &__42__LACACMHelper_addCredential_scope_error___block_invoke_2;
  v8[3] = &__block_descriptor_44_e31_B24__0r____ACMCredential__8__16l;
  v8[4] = a2;
  v9 = *(a1 + 40);
  v5 = _Block_copy(v8);
  v6 = [*(a1 + 32) performCredentialBlock:v5 credentialType:*(a1 + 44) error:a3];

  return v6;
}

- (BOOL)addCredential:(unsigned int)credential scope:(unsigned int)scope property:(unsigned int)property data:(id)data error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v13 = LACLogACM();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    credentialCopy = credential;
    v30 = 1024;
    scopeCopy = scope;
    v32 = 1024;
    acmTrackingNumber = [(LACACMHelper *)self acmTrackingNumber];
    _os_log_impl(&dword_1B0233000, v13, OS_LOG_TYPE_DEFAULT, "Adding ACM credential %d for scope %d on ACMContext %u", buf, 0x14u);
  }

  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __56__LACACMHelper_addCredential_scope_property_data_error___block_invoke;
  v22 = &unk_1E7A97458;
  propertyCopy = property;
  scopeCopy2 = scope;
  v23 = dataCopy;
  selfCopy = self;
  credentialCopy2 = credential;
  v14 = dataCopy;
  v15 = _Block_copy(&v19);
  v16 = [(LACACMHelper *)self performContextBlock:v15 error:error, v19, v20, v21, v22];

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __56__LACACMHelper_addCredential_scope_property_data_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = &__56__LACACMHelper_addCredential_scope_property_data_error___block_invoke_2;
  aBlock[3] = &unk_1E7A97430;
  v12 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = a2;
  v13 = *(a1 + 52);
  v6 = _Block_copy(aBlock);
  v7 = [*(a1 + 40) performCredentialBlock:v6 credentialType:*(a1 + 56) error:a3];

  return v7;
}

- (BOOL)replacePassphraseCredentialWithPurpose:(unsigned int)purpose passphrase:(id)passphrase scope:(unsigned int)scope error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  passphraseCopy = passphrase;
  v11 = LACLogACM();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    purposeCopy = purpose;
    v24 = 1024;
    acmTrackingNumber = [(LACACMHelper *)self acmTrackingNumber];
    _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "Replacing ACM passphrase credential with purpose %d on ACMContext %u", buf, 0xEu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__LACACMHelper_replacePassphraseCredentialWithPurpose_passphrase_scope_error___block_invoke;
  aBlock[3] = &unk_1E7A97480;
  purposeCopy2 = purpose;
  scopeCopy = scope;
  v18 = passphraseCopy;
  selfCopy = self;
  v12 = passphraseCopy;
  v13 = _Block_copy(aBlock);
  v14 = [(LACACMHelper *)self performContextBlock:v13 error:error];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t __78__LACACMHelper_replacePassphraseCredentialWithPurpose_passphrase_scope_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = &__78__LACACMHelper_replacePassphraseCredentialWithPurpose_passphrase_scope_error___block_invoke_2;
  aBlock[3] = &unk_1E7A97430;
  v12 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = a2;
  v13 = *(a1 + 52);
  v6 = _Block_copy(aBlock);
  v7 = [*(a1 + 40) performCredentialBlock:v6 credentialType:2 error:a3];

  return v7;
}

- (BOOL)removeCredentialsOfType:(unsigned int)type error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = LACLogACM();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    typeCopy = type;
    v16 = 1024;
    acmTrackingNumber = [(LACACMHelper *)self acmTrackingNumber];
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Removing ACM credential %d on ACMContext %u", buf, 0xEu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__LACACMHelper_removeCredentialsOfType_error___block_invoke;
  aBlock[3] = &__block_descriptor_36_e26_B24__0____ACMHandle__8__16l;
  typeCopy2 = type;
  v8 = _Block_copy(aBlock);
  v9 = [(LACACMHelper *)self performContextBlock:v8 error:error];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

BOOL __46__LACACMHelper_removeCredentialsOfType_error___block_invoke(uint64_t a1, _OWORD *a2, void *a3)
{
  v4 = ACMContextRemoveCredentialsByTypeAndScope(a2, *(a1 + 32), 1);
  v5 = v4;
  if (a3 && v4)
  {
    if (v4 == -7)
    {
      *a3 = [LACError errorWithCode:-1008 debugDescription:@"Not found."];
    }

    else
    {
      if (v4 == -3)
      {
        v6 = -1001;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to remove ACM credential: %d", 4294967293];
      }

      else
      {
        v6 = -1000;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to remove ACM credential: %d", v4];
      }
      v7 = ;
      *a3 = [LACError errorWithCode:v6 debugDescription:v7];
    }
  }

  return v5 == 0;
}

- (BOOL)isCredentialOfTypeSet:(unsigned int)set error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = LACLogACM();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    setCopy = set;
    v16 = 1024;
    acmTrackingNumber = [(LACACMHelper *)self acmTrackingNumber];
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Checking ACM credential %d on ACMContext %u", buf, 0xEu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__LACACMHelper_isCredentialOfTypeSet_error___block_invoke;
  aBlock[3] = &__block_descriptor_36_e26_B24__0____ACMHandle__8__16l;
  setCopy2 = set;
  v8 = _Block_copy(aBlock);
  v9 = [(LACACMHelper *)self performContextBlock:v8 error:error];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

BOOL __44__LACACMHelper_isCredentialOfTypeSet_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = ACMContextContainsCredentialTypeEx(a2, *(a1 + 32), 0);
  v5 = v4;
  if (a3 && v4)
  {
    if (v4 == -7)
    {
      *a3 = [LACError errorWithCode:-1008 debugDescription:@"Not found."];
    }

    else
    {
      if (v4 == -3)
      {
        v6 = -1001;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to query ACM credential: %d", 4294967293];
      }

      else
      {
        v6 = -1000;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to query ACM credential: %d", v4];
      }
      v7 = ;
      *a3 = [LACError errorWithCode:v6 debugDescription:v7];
    }
  }

  return v5 == 0;
}

- (BOOL)verifyRequirementOfType:(unsigned int)type policy:(char *)policy mustBePresent:(BOOL)present parameters:(id)parameters flags:(unsigned int *)flags error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v14 = LACLogACM();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 67109890;
    *v38 = type;
    *&v38[4] = 2080;
    *&v38[6] = policy;
    v39 = 2114;
    v40 = parametersCopy;
    v41 = 1024;
    acmTrackingNumber = [(LACACMHelper *)self acmTrackingNumber];
    _os_log_impl(&dword_1B0233000, v14, OS_LOG_TYPE_INFO, "Verifying ACM requirement %d using policy %s %{public}@ on ACMContext %u", buf, 0x22u);
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__LACACMHelper_verifyRequirementOfType_policy_mustBePresent_parameters_flags_error___block_invoke;
  aBlock[3] = &unk_1E7A974F0;
  v15 = parametersCopy;
  v27 = v15;
  selfCopy = self;
  typeCopy = type;
  v29 = &v33;
  policyCopy = policy;
  flagsCopy = flags;
  v16 = _Block_copy(aBlock);
  v17 = [(LACACMHelper *)self performContextBlock:v16 error:error];
  v18 = LACLogACM();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    if (v17)
    {
      v19 = "satisfied";
    }

    else
    {
      v19 = *(v34 + 24) ? "not satisfied" : "not present";
    }

    acmTrackingNumber2 = [(LACACMHelper *)self acmTrackingNumber];
    if (flags)
    {
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*flags];
    }

    else
    {
      v21 = 0;
    }

    *buf = 136316162;
    *v38 = policy;
    *&v38[8] = 1024;
    *&v38[10] = type;
    v39 = 2080;
    v40 = v19;
    v41 = 1024;
    acmTrackingNumber = acmTrackingNumber2;
    v43 = 2114;
    v44 = v21;
    _os_log_impl(&dword_1B0233000, v18, OS_LOG_TYPE_DEFAULT, "Verified using ACM policy %s that requirement %d is %s on ACMContext %u, flags: %{public}@", buf, 0x2Cu);
    if (flags)
    {
    }
  }

  if (v17)
  {
    v22 = 1;
  }

  else
  {
    v22 = (*(v34 + 24) | present) ^ 1;
  }

  _Block_object_dispose(&v33, 8);
  v23 = *MEMORY[0x1E69E9840];
  return v22 & 1;
}

uint64_t __84__LACACMHelper_verifyRequirementOfType_policy_mustBePresent_parameters_flags_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v6 = [*(a1 + 32) makeACMParameters];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 bytes];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 56);
  v10 = [*(a1 + 32) parameterCount];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__LACACMHelper_verifyRequirementOfType_policy_mustBePresent_parameters_flags_error___block_invoke_2;
  v18[3] = &unk_1E7A974C8;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v20 = &v24;
  v21 = v12;
  v18[4] = v11;
  v23 = *(a1 + 72);
  v22 = *(a1 + 64);
  v13 = v7;
  v19 = v13;
  ACMContextVerifyPolicyEx(a2, v9, 1, v8, v10, 0, v18);
  if (a3)
  {
    if (*(v25 + 24) == 1)
    {
      *a3 = 0;
    }

    else
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requirement %d not satisfied.", *(a1 + 72)];
      v15 = [LACError errorWithCode:-1 debugDescription:v14];
      *a3 = v15;
    }
  }

  v16 = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  return v16;
}

void __84__LACACMHelper_verifyRequirementOfType_policy_mustBePresent_parameters_flags_error___block_invoke_2(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a2)
  {
    v5 = LACLogACM();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __84__LACACMHelper_verifyRequirementOfType_policy_mustBePresent_parameters_flags_error___block_invoke_2_cold_1(a2, v5);
    }
  }

  else if (a3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _verifyRequirement:a4 satisfiedForType:*(a1 + 72) present:*(*(a1 + 56) + 8) + 24 flags:*(a1 + 64)];
  }
}

- (BOOL)_verifyRequirement:(__ACMRequirement *)requirement satisfiedForType:(unsigned int)type present:(BOOL *)present flags:(unsigned int *)flags
{
  Type = ACMRequirementGetType(requirement);
  if (Type == type)
  {
    if (flags)
    {
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __66__LACACMHelper__verifyRequirement_satisfiedForType_present_flags___block_invoke;
      v23 = &__block_descriptor_40_e13_v24__0r_v8Q16l;
      flagsCopy = flags;
      ACMRequirementGetProperty();
    }

    if (present)
    {
      *present = 1;
    }

    v12 = ACMRequirementGetState(requirement) == 2;
  }

  else if (Type == 7)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __66__LACACMHelper__verifyRequirement_satisfiedForType_present_flags___block_invoke_89;
    v14[3] = &unk_1E7A97538;
    v14[4] = self;
    v14[5] = &v16;
    typeCopy = type;
    v14[6] = present;
    v14[7] = flags;
    ACMRequirementGetSubrequirements(requirement, v14);
    v12 = *(v17 + 24);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void __66__LACACMHelper__verifyRequirement_satisfiedForType_present_flags___block_invoke(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (a2 && a3 == 4)
  {
    **(a1 + 32) = *a2;
  }

  else
  {
    v3 = LACLogACM();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __66__LACACMHelper__verifyRequirement_satisfiedForType_present_flags___block_invoke_cold_1();
    }
  }
}

uint64_t __66__LACACMHelper__verifyRequirement_satisfiedForType_present_flags___block_invoke_89(uint64_t result, uint64_t a2)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v2 = result;
    result = [*(result + 32) _verifyRequirement:a2 satisfiedForType:*(v2 + 64) present:*(v2 + 48) flags:*(v2 + 56)];
    *(*(*(v2 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)verifyPolicy:(char *)policy preflight:(BOOL)preflight parameters:(id)parameters maxGlobalCredentialAge:(unsigned int)age processRequirement:(id)requirement
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__LACACMHelper_verifyPolicy_preflight_parameters_maxGlobalCredentialAge_processRequirement___block_invoke;
  v7[3] = &__block_descriptor_45_e67_v36__0____ACMHandle__8____I_vI_16I24___v__iB____ACMRequirement___28l;
  v7[4] = policy;
  preflightCopy = preflight;
  ageCopy = age;
  [(LACACMHelper *)self performContextVerificationWithParameters:parameters block:v7 completion:requirement];
}

- (void)verifyAclConstraint:(id)constraint operation:(id)operation preflight:(BOOL)preflight parameters:(id)parameters maxGlobalCredentialAge:(unsigned int)age processRequirement:(id)requirement
{
  constraintCopy = constraint;
  requirementCopy = requirement;
  parametersCopy = parameters;
  operationCopy = operation;
  constraintCopy2 = constraint;
  bytes = [constraintCopy2 bytes];
  v21 = [constraintCopy2 length];

  uTF8String = [operationCopy UTF8String];
  v23 = [operationCopy length];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __109__LACACMHelper_verifyAclConstraint_operation_preflight_parameters_maxGlobalCredentialAge_processRequirement___block_invoke;
  v24[3] = &__block_descriptor_69_e67_v36__0____ACMHandle__8____I_vI_16I24___v__iB____ACMRequirement___28l;
  v24[4] = bytes;
  v24[5] = v21;
  v24[6] = uTF8String;
  v24[7] = v23;
  preflightCopy = preflight;
  ageCopy = age;
  [(LACACMHelper *)self performContextVerificationWithParameters:parametersCopy block:v24 completion:requirementCopy];
}

void __109__LACACMHelper_verifyAclConstraint_operation_preflight_parameters_maxGlobalCredentialAge_processRequirement___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v9 = a5;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 56);
  v13 = *(a1 + 68);
  v14 = *(a1 + 64);
  v16 = *(a1 + 48);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __109__LACACMHelper_verifyAclConstraint_operation_preflight_parameters_maxGlobalCredentialAge_processRequirement___block_invoke_2;
  v17[3] = &unk_1E7A97580;
  v20 = v10;
  v21 = v11;
  v25 = v13;
  v22 = a3;
  v23 = a4;
  v24 = v14;
  v18 = v9;
  v19 = a2;
  v15 = v9;
  ACMContextVerifyAclConstraintForOperation(a2, v10, v11, v16, v12, v13, a3, a4, v14, v17);
}

rsize_t __109__LACACMHelper_verifyAclConstraint_operation_preflight_parameters_maxGlobalCredentialAge_processRequirement___block_invoke_2(uint64_t a1, int a2)
{
  if (a2 == -3 && +[LACMobileGestalt isDaytona])
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 80);
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
    v8 = *(a1 + 76);
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);

    return ACMContextVerifyAclConstraint(v9, v3, v4, v5, v6, v7, v8, v10);
  }

  else
  {
    v12 = *(*(a1 + 32) + 16);

    return v12();
  }
}

+ (BOOL)resetRatchet:(id *)ratchet
{
  v4 = LACLogACM();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0233000, v4, OS_LOG_TYPE_DEFAULT, "Reseting ACM Ratchet", buf, 2u);
  }

  v11 = 0;
  v10 = 0x100000001;
  v5 = ACMSEPControl(&v10, 12, 0);
  v6 = v5;
  if (ratchet && v5)
  {
    if (v5 == -7)
    {
      *ratchet = [LACError errorWithCode:-1008 debugDescription:@"Not found."];
    }

    else
    {
      if (v5 == -3)
      {
        v7 = -1001;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to reset ACM Ratchet: %d", 4294967293];
      }

      else
      {
        v7 = -1000;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to reset ACM Ratchet: %d", v5];
      }
      v8 = ;
      *ratchet = [LACError errorWithCode:v7 debugDescription:v8];
    }
  }

  return v6 == 0;
}

- (BOOL)setData:(id)data type:(unsigned int)type encoded:(BOOL)encoded error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v11 = LACLogACM();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    typeCopy = type;
    v26 = 1024;
    acmTrackingNumber = [(LACACMHelper *)self acmTrackingNumber];
    _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "Setting data of type %d on ACMContext %u", buf, 0xEu);
  }

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __43__LACACMHelper_setData_type_encoded_error___block_invoke;
  v20 = &unk_1E7A975C8;
  encodedCopy = encoded;
  v21 = dataCopy;
  typeCopy2 = type;
  v12 = dataCopy;
  v13 = _Block_copy(&v17);
  v14 = [(LACACMHelper *)self performContextBlock:v13 error:error, v17, v18, v19, v20];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

BOOL __43__LACACMHelper_setData_type_encoded_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 44) == 1)
  {
    v6 = 2 * ([*(a1 + 32) length] != 0);
  }

  else
  {
    v6 = 0;
  }

  v13 = v6;
  v12[0] = 14;
  v12[1] = &v13;
  v12[2] = 1;
  v7 = ACMContextSetDataEx(a2, *(a1 + 40), v12, 1, [*(a1 + 32) bytes], objc_msgSend(*(a1 + 32), "length"));
  v8 = v7;
  if (a3 && v7)
  {
    if (v7 == -7)
    {
      *a3 = [LACError errorWithCode:-1008 debugDescription:@"Not found."];
    }

    else
    {
      if (v7 == -3)
      {
        v9 = -1001;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to set ACM credential data: %d", 4294967293];
      }

      else
      {
        v9 = -1000;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to set ACM credential data: %d", v7];
      }
      v10 = ;
      *a3 = [LACError errorWithCode:v9 debugDescription:v10];
    }
  }

  return v8 == 0;
}

- (BOOL)setSecretForPasscodeStash:(id)stash error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  stashCopy = stash;
  v7 = LACLogACM();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    acmTrackingNumber = [(LACACMHelper *)self acmTrackingNumber];
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Setting secret to passcode stash on ACMContext %u", buf, 8u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__LACACMHelper_setSecretForPasscodeStash_error___block_invoke;
  aBlock[3] = &unk_1E7A975F0;
  v14 = stashCopy;
  v8 = stashCopy;
  v9 = _Block_copy(aBlock);
  v10 = [(LACACMHelper *)self performContextBlock:v9 error:error];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

BOOL __48__LACACMHelper_setSecretForPasscodeStash_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  v12 = 4;
  DWORD1(v13) = 1;
  if ([*(a1 + 32) length] <= 0x20)
  {
    [*(a1 + 32) bytes];
    [*(a1 + 32) length];
    __memcpy_chk();
  }

  v6 = ACMSEPControlEx(a2, 0, 0, &v12, 44, 0);
  v7 = v6;
  if (a3 && v6)
  {
    if (v6 == -7)
    {
      *a3 = [LACError errorWithCode:-1008 debugDescription:@"Not found."];
    }

    else
    {
      if (v6 == -3)
      {
        v8 = -1001;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to validate secret for ACM passcode stash, acmErr: %d", 4294967293];
      }

      else
      {
        v8 = -1000;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to validate secret for ACM passcode stash, acmErr: %d", v6];
      }
      v9 = ;
      *a3 = [LACError errorWithCode:v8 debugDescription:v9];
    }
  }

  result = v7 == 0;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

+ (char)acmPolicyForPolicy:(int64_t)policy
{
  policyCopy = policy;
  if (policy <= 3)
  {
    switch(policy)
    {
      case 1:
        return "DeviceOwnerAuthenticationWithBiometrics";
      case 2:
        return "DeviceOwnerAuthentication";
      case 3:
        return "DeviceOwnerAuthenticationWithWatch";
      default:
LABEL_12:
        v5 = LACLogACM();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [(LACACMHelper *)policyCopy acmPolicyForPolicy:v5];
        }

        return 0;
    }
  }

  else
  {
    switch(policy)
    {
      case 1003:
        result = "HumanPresence";
        break;
      case 1004:
        result = "Stockholm";
        break;
      case 1005:
        result = "Oslo";
        break;
      case 1006:
        result = "OsloPIN";
        break;
      case 1007:
      case 1010:
      case 1013:
        result = "TouchIdEnrollment";
        break;
      case 1008:
        result = "UserIdentificationWithBiometrics";
        break;
      case 1009:
      case 1011:
      case 1012:
      case 1014:
      case 1021:
      case 1022:
      case 1027:
        goto LABEL_12;
      case 1015:
        result = "DoublePressBypass";
        break;
      case 1016:
        result = "Prague";
        break;
      case 1017:
        result = "PraguePIN";
        break;
      case 1018:
        result = "Marzipan";
        break;
      case 1019:
        result = "MarzipanPIN";
        break;
      case 1020:
        result = "PraguePrerequisite";
        break;
      case 1023:
        result = "DeviceOwner";
        break;
      case 1024:
        result = "DeveloperModeSigning";
        break;
      case 1025:
        result = "LBDeviceOwnerAuthentication";
        break;
      case 1026:
        result = "BiometricRatchetAuthentication";
        break;
      case 1028:
        result = "LocationBasedTrustComputer";
        break;
      default:
        if (policy != 4)
        {
          goto LABEL_12;
        }

        result = "DeviceOwnerAuthenticationWithBiometricsOrWatch";
        break;
    }
  }

  return result;
}

+ (id)requirement:(__ACMRequirement *)requirement uint32Property:(unsigned int)property
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  ACMRequirementGetProperty();
  v4 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v4;
}

uint64_t __43__LACACMHelper_requirement_uint32Property___block_invoke(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (a2 && a3 == 4)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*a2];
    v6 = *(*(v4 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (BOOL)requirement:(__ACMRequirement *)requirement hasFlag:(unint64_t)flag andType:(unsigned int)type
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  if (ACMRequirementGetType(requirement) == type)
  {
    v8 = [LACACMHelper requirement:requirement uint32Property:100];
    v9 = ([v8 unsignedIntValue] & flag) != 0;
  }

  else
  {
    v9 = 0;
  }

  v17 = v9;
  if (v15[3])
  {
    v10 = 1;
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__LACACMHelper_requirement_hasFlag_andType___block_invoke;
    v12[3] = &unk_1E7A97618;
    typeCopy = type;
    v12[4] = &v14;
    v12[5] = flag;
    ACMRequirementGetSubrequirements(requirement, v12);
    v10 = *(v15 + 24);
  }

  _Block_object_dispose(&v14, 8);
  return v10 & 1;
}

BOOL __44__LACACMHelper_requirement_hasFlag_andType___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [LACACMHelper requirement:a2 hasFlag:*(a1 + 40) andType:*(a1 + 48)];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

+ (id)requirement:(__ACMRequirement *)requirement dataProperty:(unsigned int)property
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  ACMRequirementGetProperty();
  v4 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v4;
}

uint64_t __41__LACACMHelper_requirement_dataProperty___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v3 = result;
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];
    v5 = *(*(v3 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

uint64_t __40__LACACMHelper_BOOLEnvironmentVariable___block_invoke(uint64_t result, _BYTE *a2, uint64_t a3)
{
  if (a2 && a3 == 1)
  {
    v4 = result;
    v5 = [MEMORY[0x1E696AD98] numberWithInt:*a2 != 0];
    v6 = *(*(v4 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)catacombUUID:(id)d
{
  dCopy = d;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__7;
  v14 = __Block_byref_object_dispose__7;
  v15 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__LACACMHelper_catacombUUID___block_invoke;
  v7[3] = &unk_1E7A97640;
  v9 = &v10;
  v4 = dCopy;
  v8 = v4;
  ACMGetEnvironmentVariable(36, v7);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __29__LACACMHelper_catacombUUID___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 && a3 <= 0xBE0)
  {
    v5 = v12;
    __memcpy_chk();
    if (a3 - 152 > 0x97 || v13 != -1)
    {
      v9 = [*(a1 + 32) unsignedIntValue];
      if (a3 < 0x98)
      {
        goto LABEL_10;
      }

      v10 = a3 / 0x98u;
      v5 = v12;
      while (*(v5 + 4) != v9)
      {
        v5 += 152;
        if (!--v10)
        {
          goto LABEL_10;
        }
      }
    }

    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:v5 + 20 length:16];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];
}

+ (BOOL)requirement:(__ACMRequirement *)requirement hasState:(unsigned int)state andType:(unsigned int)type
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v8 = ACMRequirementGetState(requirement) == state && ACMRequirementGetType(requirement) == type;
  v17 = v8;
  if (v15[3])
  {
    v9 = 1;
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__LACACMHelper_requirement_hasState_andType___block_invoke;
    v11[3] = &unk_1E7A97668;
    stateCopy = state;
    typeCopy = type;
    v11[4] = &v14;
    ACMRequirementGetSubrequirements(requirement, v11);
    v9 = *(v15 + 24);
  }

  _Block_object_dispose(&v14, 8);
  return v9 & 1;
}

BOOL __45__LACACMHelper_requirement_hasState_andType___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [LACACMHelper requirement:a2 hasState:*(a1 + 40) andType:*(a1 + 44)];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

+ (void)notifyBiometricMatchOperationStartAttempted
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v6 = 0x400000001;
  v2 = ACMSEPControl(&v6, 12, 0);
  v3 = LACLogACM();
  v4 = 16 * (v2 != 0);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 67109120;
    v9 = v2;
    _os_log_impl(&dword_1B0233000, v3, v4, "Biometric attempt notification finished with status (%d)", buf, 8u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __41__LACACMHelper_ageForDataWithType_error___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __41__LACACMHelper_ageForDataWithType_error___block_invoke_40_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __84__LACACMHelper_verifyRequirementOfType_policy_mustBePresent_parameters_flags_error___block_invoke_2_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Policy verification failed: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void __66__LACACMHelper__verifyRequirement_satisfiedForType_present_flags___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)acmPolicyForPolicy:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "No known ACM policy for LA policy %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end