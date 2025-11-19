@interface LACSecureStorage
+ ($536A88BB5CAE6CA76785073378A79450)_convertDataToACMExclaveBatchEnablement:(id)a3 error:(id *)a4;
+ (BOOL)checkKey:(int64_t)a3 supportsOperation:(int64_t)a4;
+ (BOOL)isKeyAvailable:(int64_t)a3;
+ (BOOL)isKeyAvailable:(int64_t)a3 operation:(int64_t)a4;
+ (Class)classForKey:(int64_t)a3;
+ (id)additionalBoolEntitlementForKey:(int64_t)a3 operation:(int64_t)a4 value:(id)a5;
+ (id)maxDataLengthForKey:(int64_t)a3;
+ (id)minDataLengthForKey:(int64_t)a3;
+ (int64_t)policyForKey:(int64_t)a3 operation:(int64_t)a4 value:(id)a5;
- (BOOL)_checkEntitlementForRequest:(id)a3 operation:(int64_t)a4 value:(id)a5 failureHandler:(id)a6;
- (LACSecureStorage)initWithConfig:(id)a3;
- (LACSecureStorageDelegate)delegate;
- (__ACMHandle)_acmContextForUUID:(id)a3 error:(id *)a4;
- (id)_bundleIDForRequest:(id)a3;
- (id)_preprocessValue:(id)a3 forVariable:(unsigned int)a4 error:(id *)a5;
- (id)_rebootErrorForRequest:(id)a3;
- (id)_storageObjectForKey:(int64_t)a3 data:(id)a4 error:(id *)a5;
- (unsigned)_securityBootModeForACMVariable:(unsigned int)a3;
- (void)_acmContextDataKeyForKey:(int64_t)a3 completionHandler:(id)a4;
- (void)_acmSEPControlForKey:(int64_t)a3 completionHandler:(id)a4;
- (void)_acmVariableForKey:(int64_t)a3 completionHandler:(id)a4;
- (void)_contextDataForKey:(int64_t)a3 contextID:(id)a4 completionHandler:(id)a5;
- (void)_exchangeObject:(id)a3 request:(id)a4 completionHandler:(id)a5;
- (void)_protectedDataWithBundleId:(id)a3 contextID:(id)a4 completionHandler:(id)a5;
- (void)_sepControl:(unsigned int)a3 value:(id)a4 request:(id)a5 completionHandler:(id)a6;
- (void)_setContextData:(id)a3 forKey:(int64_t)a4 contextID:(id)a5 completionHandler:(id)a6;
- (void)_setProtectedData:(id)a3 acl:(id)a4 contextID:(id)a5 completionHandler:(id)a6;
- (void)_setStandardSecureBootModeCompletionHandler:(id)a3;
- (void)aclForRequest:(id)a3 completionHandler:(id)a4;
- (void)objectForRequest:(id)a3 completionHandler:(id)a4;
- (void)processError:(id)a3 forRequest:(id)a4 completionHandler:(id)a5;
- (void)removeObjectForRequest:(id)a3 completionHandler:(id)a4;
- (void)setObject:(id)a3 forRequest:(id)a4 completionHandler:(id)a5;
@end

@implementation LACSecureStorage

- (LACSecureStorage)initWithConfig:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LACSecureStorage;
  v6 = [(LACSecureStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, a3);
  }

  return v7;
}

- (void)objectForRequest:(id)a3 completionHandler:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 key];
  v9 = LACLogStorage();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v28 = v8;
    v29 = 1024;
    v30 = [v6 identifier];
    _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "objectForKey:%d rid:%u", buf, 0xEu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__LACSecureStorage_objectForRequest_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7A98288;
  v10 = v6;
  v25 = v10;
  v11 = v7;
  v26 = v11;
  v12 = _Block_copy(aBlock);
  if ([(LACSecureStorage *)self _checkEntitlementForRequest:v10 operation:1 value:0 failureHandler:v12])
  {
    if (v8 == 2)
    {
      v13 = [(LACSecureStorage *)self _bundleIDForRequest:v10];
      v14 = [v10 contextID];
      [(LACSecureStorage *)self _protectedDataWithBundleId:v13 contextID:v14 completionHandler:v12];
    }

    else if (v8 == 21)
    {
      v16 = +[LACPasscodeHelper sharedInstance];
      [v16 passcodeSuccessAge];
      v18 = v17;

      if (v18 <= 0.0)
      {
        (*(v12 + 2))(v12, 0, 0);
      }

      else
      {
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(v18 * 1000.0)];
        (*(v12 + 2))(v12, v19, 0);
      }
    }

    else if ([objc_opt_class() isKeyAvailableForContextData:v8])
    {
      v20 = [v10 contextID];
      [(LACSecureStorage *)self _contextDataForKey:v8 contextID:v20 completionHandler:v12];
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __55__LACSecureStorage_objectForRequest_completionHandler___block_invoke_3;
      v21[3] = &unk_1E7A982D8;
      v21[4] = self;
      v23 = v8;
      v22 = v12;
      [(LACSecureStorage *)self _acmVariableForKey:v8 completionHandler:v21];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __55__LACSecureStorage_objectForRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = LACLogStorage();
  v8 = v7;
  if (v5)
  {
    v9 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v9 = OS_LOG_TYPE_INFO;
  }

  if (os_log_type_enabled(v7, v9))
  {
    v10 = [*(a1 + 32) identifier];
    v11 = @"success";
    if (v5)
    {
      v11 = v5;
    }

    v13[0] = 67109379;
    v13[1] = v10;
    v14 = 2113;
    v15 = v11;
    _os_log_impl(&dword_1B0233000, v8, v9, "objectForKey rid:%u returned %{private}@", v13, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x1E69E9840];
}

void __55__LACSecureStorage_objectForRequest_completionHandler___block_invoke_3(void *a1, uint64_t a2)
{
  if (a2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__LACSecureStorage_objectForRequest_completionHandler___block_invoke_2;
    v7[3] = &unk_1E7A982B0;
    v4 = a1[6];
    v5 = a1[5];
    v8 = a1[4];
    v10 = v4;
    v9 = v5;
    [v8 _variable:a2 completionHandler:v7];
  }

  else
  {
    v6 = *(a1[5] + 16);

    v6();
  }
}

void __55__LACSecureStorage_objectForRequest_completionHandler___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[6];
  v11 = 0;
  v7 = a3;
  v8 = [v5 _storageObjectForKey:v6 data:a2 error:&v11];
  v9 = v11;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  (*(a1[5] + 16))(a1[5], v8, v10);
}

- (void)removeObjectForRequest:(id)a3 completionHandler:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 key];
  v9 = LACLogStorage();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v25 = v8;
    v26 = 1024;
    v27 = [v6 identifier];
    _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "removeObjectForKey:%d rid:%u", buf, 0xEu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__LACSecureStorage_removeObjectForRequest_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7A98288;
  v10 = v6;
  v22 = v10;
  v11 = v7;
  v23 = v11;
  v12 = _Block_copy(aBlock);
  if ([(LACSecureStorage *)self _checkEntitlementForRequest:v10 operation:3 value:0 failureHandler:v12])
  {
    if ([objc_opt_class() checkKey:v8 supportsOperation:3])
    {
      if (v8 == 2)
      {
        v13 = [v10 contextID];
        [(LACSecureStorage *)self _setProtectedData:0 acl:0 contextID:v13 completionHandler:v12];
      }

      else if ([objc_opt_class() isKeyAvailableForContextData:v8])
      {
        v17 = [v10 contextID];
        [(LACSecureStorage *)self _setContextData:0 forKey:v8 contextID:v17 completionHandler:v12];
      }

      else
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __61__LACSecureStorage_removeObjectForRequest_completionHandler___block_invoke_11;
        v18[3] = &unk_1E7A98300;
        v18[4] = self;
        v19 = v10;
        v20 = v12;
        [(LACSecureStorage *)self _acmVariableForKey:v8 completionHandler:v18];
      }
    }

    else
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Operation not supported for key: %d.", v8];
      v15 = [LACStorageError errorWithCode:3 debugDescription:v14];
      (*(v11 + 2))(v11, 0, v15);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __61__LACSecureStorage_removeObjectForRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = LACLogStorage();
  v8 = v7;
  if (v5)
  {
    v9 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v9 = OS_LOG_TYPE_INFO;
  }

  if (os_log_type_enabled(v7, v9))
  {
    v10 = [*(a1 + 32) identifier];
    v11 = @"success";
    if (v5)
    {
      v11 = v5;
    }

    v13[0] = 67109379;
    v13[1] = v10;
    v14 = 2113;
    v15 = v11;
    _os_log_impl(&dword_1B0233000, v8, v9, "removeObjectForKey rid:%u returned %{private}@", v13, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __61__LACSecureStorage_removeObjectForRequest_completionHandler___block_invoke_11(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 32) _setVariable:a2 value:0 request:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

- (void)setObject:(id)a3 forRequest:(id)a4 completionHandler:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 key];
  if (![objc_opt_class() checkKey:v11 supportsOperation:4])
  {
    v12 = LACLogStorage();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v39 = v11;
      v40 = 1024;
      v41 = [v9 identifier];
      _os_log_impl(&dword_1B0233000, v12, OS_LOG_TYPE_DEFAULT, "setObject forKey:%d rid:%u", buf, 0xEu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__LACSecureStorage_setObject_forRequest_completionHandler___block_invoke;
    aBlock[3] = &unk_1E7A98288;
    v13 = v9;
    v36 = v13;
    v14 = v10;
    v37 = v14;
    v15 = _Block_copy(aBlock);
    if (![(LACSecureStorage *)self _checkEntitlementForRequest:v13 operation:2 value:v8 failureHandler:v15])
    {
      goto LABEL_25;
    }

    if ([objc_opt_class() checkKey:v11 supportsOperation:2])
    {
      v16 = [objc_opt_class() classForKey:v11];
      if (![v16 isEqual:objc_opt_class()] || objc_msgSend(v8, "length") == 1)
      {
        v17 = [objc_opt_class() maxDataLengthForKey:v11];
        if (v17 && (v18 = [v8 length], v18 > objc_msgSend(v17, "unsignedIntegerValue")))
        {
          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected max %u bytes.", objc_msgSend(v17, "unsignedIntValue")];
          v20 = [LACStorageError errorWithCode:1 debugDescription:v19];
          (*(v14 + 2))(v14, 0, v20);
        }

        else
        {
          v30 = [objc_opt_class() minDataLengthForKey:v11];
          if (v30 && (v23 = [v8 length], v23 < objc_msgSend(v17, "unsignedIntegerValue")))
          {
            v19 = v30;
            v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected min %u bytes.", objc_msgSend(v30, "unsignedIntValue")];
            v25 = [LACStorageError errorWithCode:1 debugDescription:v24];
            (*(v14 + 2))(v14, 0, v25);
          }

          else
          {
            if (v11 == 2)
            {
              v26 = [v13 acl];
              v27 = [v13 contextID];
              [(LACSecureStorage *)self _setProtectedData:v8 acl:v26 contextID:v27 completionHandler:v15];
            }

            else if ([objc_opt_class() isKeyAvailableForContextData:v11])
            {
              v28 = [v13 contextID];
              [(LACSecureStorage *)self _setContextData:v8 forKey:v11 contextID:v28 completionHandler:v15];
            }

            else
            {
              v31[0] = MEMORY[0x1E69E9820];
              v31[1] = 3221225472;
              v31[2] = __59__LACSecureStorage_setObject_forRequest_completionHandler___block_invoke_21;
              v31[3] = &unk_1E7A98328;
              v31[4] = self;
              v32 = v8;
              v33 = v13;
              v34 = v15;
              [(LACSecureStorage *)self _acmVariableForKey:v11 completionHandler:v31];
            }

            v19 = v30;
          }
        }

        goto LABEL_25;
      }

      v21 = [LACStorageError errorWithCode:1 debugDescription:@"Expected BOOL in NSNumber."];
      (*(v14 + 2))(v14, 0, v21);
    }

    else
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Operation not supported for key: %d.", v11];
      v22 = [LACStorageError errorWithCode:3 debugDescription:v21];
      (*(v14 + 2))(v14, 0, v22);
    }

LABEL_25:
    goto LABEL_26;
  }

  [(LACSecureStorage *)self _exchangeObject:v8 request:v9 completionHandler:v10];
LABEL_26:

  v29 = *MEMORY[0x1E69E9840];
}

void __59__LACSecureStorage_setObject_forRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = LACLogStorage();
  v8 = v7;
  if (v6)
  {
    v9 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v9 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v7, v9))
  {
    v10 = [*(a1 + 32) identifier];
    v11 = @"success";
    if (v5)
    {
      v11 = v5;
    }

    v13[0] = 67109379;
    v13[1] = v10;
    v14 = 2113;
    v15 = v11;
    _os_log_impl(&dword_1B0233000, v8, v9, "setObject rid:%u returned %{private}@", v13, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __59__LACSecureStorage_setObject_forRequest_completionHandler___block_invoke_21(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 32) _setVariable:a2 value:*(a1 + 40) request:*(a1 + 48) completionHandler:*(a1 + 56)];
  }

  else
  {
    return (*(*(a1 + 56) + 16))();
  }
}

- (void)aclForRequest:(id)a3 completionHandler:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 key];
  v9 = LACLogStorage();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v8;
    LOWORD(v33) = 1024;
    *(&v33 + 2) = [v6 identifier];
    _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "aclForKey:%d rid:%u", buf, 0xEu);
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__LACSecureStorage_aclForRequest_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7A98350;
  v27 = &v28;
  v10 = v6;
  v25 = v10;
  v11 = v7;
  v26 = v11;
  v12 = _Block_copy(aBlock);
  v13 = [v10 contextID];
  v23 = 0;
  v14 = [(LACSecureStorage *)self _acmContextForUUID:v13 error:&v23];
  v15 = v23;
  v29[3] = v14;

  v16 = v29[3];
  if (v16)
  {
    *buf = 0;
    v33 = buf;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__12;
    v36 = __Block_byref_object_dispose__12;
    v37 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __52__LACSecureStorage_aclForRequest_completionHandler___block_invoke_22;
    v22[3] = &unk_1E7A958D0;
    v22[4] = buf;
    DataProperty = ACMContextGetDataProperty(v16, 7u, 2u, v22);
    if (DataProperty == -7)
    {
      goto LABEL_9;
    }

    if (DataProperty)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ACM failed to retrieve the ACL: %d", DataProperty];
      v20 = [LACStorageError errorWithCode:2 debugDescription:v19];
      v12[2](v12, 0, v20);

      goto LABEL_11;
    }

    v18 = *(v33 + 5);
    if (!v18)
    {
LABEL_9:
      v12[2](v12, 0, 0);
    }

    else
    {
      v12[2](v12, v18, 0);
    }

LABEL_11:
    _Block_object_dispose(buf, 8);

    goto LABEL_12;
  }

  v12[2](v12, 0, v15);
LABEL_12:

  _Block_object_dispose(&v28, 8);
  v21 = *MEMORY[0x1E69E9840];
}

void __52__LACSecureStorage_aclForRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(*(a1 + 48) + 8) + 24);
  if (v7)
  {
    ACMContextDelete(v7, 0);
  }

  v8 = LACLogStorage();
  v9 = v8;
  if (v5)
  {
    v10 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v10 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v8, v10))
  {
    v11 = [*(a1 + 32) identifier];
    v12 = @"success";
    if (v6)
    {
      v12 = v6;
    }

    v14[0] = 67109379;
    v14[1] = v11;
    v15 = 2113;
    v16 = v12;
    _os_log_impl(&dword_1B0233000, v9, v10, "aclForKey rid:%u returned %{private}@", v14, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
  v13 = *MEMORY[0x1E69E9840];
}

void __52__LACSecureStorage_aclForRequest_completionHandler___block_invoke_22(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    a2 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];
  }

  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v3)
  {
  }
}

- (void)processError:(id)a3 forRequest:(id)a4 completionHandler:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = LACLogStorage();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v28 = [v8 key];
    v29 = 1024;
    v30 = [v8 identifier];
    _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "processError key:%d rid:%u", buf, 0xEu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__LACSecureStorage_processError_forRequest_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7A98378;
  v12 = v8;
  v25 = v12;
  v13 = v9;
  v26 = v13;
  v14 = _Block_copy(aBlock);
  v15 = [LACStorageError error:v10 hasCode:5];

  if (v15)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __62__LACSecureStorage_processError_forRequest_completionHandler___block_invoke_32;
    v22[3] = &unk_1E7A97310;
    v16 = v14;
    v23 = v16;
    if ([(LACSecureStorage *)self _checkEntitlementForRequest:v12 operation:2 value:0 failureHandler:v22])
    {
      v17 = [v12 key];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __62__LACSecureStorage_processError_forRequest_completionHandler___block_invoke_2;
      v20[3] = &unk_1E7A983A0;
      v20[4] = self;
      v21 = v16;
      [(LACSecureStorage *)self _acmVariableForKey:v17 completionHandler:v20];
    }

    v18 = v23;
  }

  else
  {
    v18 = [LACStorageError errorWithCode:2 debugDescription:@"The error instance does not require reboot"];
    (*(v14 + 2))(v14, v18);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __62__LACSecureStorage_processError_forRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LACLogStorage();
  v5 = 16 * (v3 != 0);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [*(a1 + 32) identifier];
    v7 = @"success";
    if (v3)
    {
      v7 = v3;
    }

    v9[0] = 67109379;
    v9[1] = v6;
    v10 = 2113;
    v11 = v7;
    _os_log_impl(&dword_1B0233000, v4, v5, "processError rid:%u returned %{private}@", v9, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

void __62__LACSecureStorage_processError_forRequest_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__LACSecureStorage_processError_forRequest_completionHandler___block_invoke_3;
    v6[3] = &unk_1E7A97310;
    v4 = *(a1 + 32);
    v7 = *(a1 + 40);
    [v4 _setSecureBootModeForACMVariable:a2 completionHandler:v6];
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

void __62__LACSecureStorage_processError_forRequest_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v6 = +[LACDeviceLifecycleManager sharedInstance];
    [v6 rebootDeviceWithReason:@"Device needs to reboot to Preboard to set protected variables" completion:*(a1 + 32)];
  }
}

+ (BOOL)isKeyAvailable:(int64_t)a3 operation:(int64_t)a4
{
  v7 = [a1 isKeyAvailable:?];
  if (v7)
  {

    LOBYTE(v7) = [a1 checkKey:a3 supportsOperation:a4];
  }

  return v7;
}

+ (BOOL)isKeyAvailable:(int64_t)a3
{
  result = 1;
  if (a3 > 0x1A)
  {
    return (a3 - 1001) < 2;
  }

  if (((1 << a3) & 0x7FB58DE) != 0)
  {
    return result;
  }

  if (((1 << a3) & 0xA000) == 0)
  {
    return (a3 - 1001) < 2;
  }

  v4 = +[LACSysUtility sharedInstance];
  v5 = [v4 hasCodeSigningMonitor];

  return v5;
}

+ (BOOL)checkKey:(int64_t)a3 supportsOperation:(int64_t)a4
{
  if (a3 <= 20)
  {
    if (a3 > 13)
    {
      if (a3 != 14 && a3 != 15)
      {
        return a4 != 4;
      }
    }

    else if (a3 != 12)
    {
      if (a3 != 13)
      {
        return a4 != 4;
      }

      goto LABEL_12;
    }

LABEL_10:
    v4 = &LACStorageOperationQuery;
    return *v4 == a4;
  }

  if (a3 <= 22)
  {
    goto LABEL_10;
  }

  if (a3 == 1002)
  {
LABEL_12:
    v4 = &LACStorageOperationDataExchange;
    return *v4 == a4;
  }

  return a4 != 4;
}

+ (Class)classForKey:(int64_t)a3
{
  v4 = 0x1E696AD98;
  if (a3 <= 0x1A)
  {
    if (((1 << a3) & 0x23E58D2) != 0)
    {
      goto LABEL_5;
    }

    if (((1 << a3) & 0x4C1800C) != 0)
    {
      v4 = 0x1E695DEF0;
      goto LABEL_5;
    }

    if (a3 == 24)
    {
      v4 = 0x1E695DF20;
      goto LABEL_5;
    }
  }

  if (a3 == 1001)
  {
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  v6 = 0;

  return v6;
}

+ (id)maxDataLengthForKey:(int64_t)a3
{
  if (a3 <= 0x14)
  {
    if (((1 << a3) & 0x1E1052) != 0)
    {
      return &unk_1F2693820;
    }

    if (a3 == 3)
    {
      return &unk_1F2693838;
    }

    if (a3 == 7)
    {
      return &unk_1F2693820;
    }
  }

  if (a3 == 1001)
  {
    return &unk_1F2693820;
  }

  return 0;
}

+ (id)minDataLengthForKey:(int64_t)a3
{
  if (a3 == 4 || a3 == 1)
  {
    return &unk_1F2693820;
  }

  else
  {
    return 0;
  }
}

+ (id)additionalBoolEntitlementForKey:(int64_t)a3 operation:(int64_t)a4 value:(id)a5
{
  v6 = 0;
  switch(a3)
  {
    case 4:
      v9 = a4 == 3 || a4 == 2;
      v10 = LACEntitlementStorageSetOwnerPresence;
      goto LABEL_29;
    case 5:
    case 8:
    case 9:
    case 10:
    case 11:
    case 22:
    case 23:
      goto LABEL_5;
    case 6:
      v9 = a4 == 3 || a4 == 2;
      v10 = LACEntitlementStorageSetLockdownMode;
      goto LABEL_29;
    case 7:
      v9 = a4 == 3 || a4 == 2;
      v10 = LACEntitlementStorageSetDSLModeEnabled;
      goto LABEL_29;
    case 12:
      v7 = LACEntitlementStorageBiometricLivenessFlag;
      goto LABEL_35;
    case 13:
    case 15:
      v7 = LACEntitlementStorageUPP;
      goto LABEL_35;
    case 14:
      v7 = LACEntitlementStorageBiometricSuccessAge;
      goto LABEL_35;
    case 16:
    case 26:
      v7 = LACEntitlementStoragePSSO;
      goto LABEL_35;
    case 17:
    case 18:
    case 19:
    case 20:
    case 24:
      goto LABEL_2;
    case 21:
      v7 = LACEntitlementStoragePasscodeSuccessAge;
      goto LABEL_35;
    case 25:
      v9 = a4 == 3 || a4 == 2;
      v10 = LACEntitlementStorageSetDSLStrictModeEnabled;
LABEL_29:
      v11 = *v10;
      if (!v9)
      {
        v11 = 0;
      }

      goto LABEL_36;
    default:
      if (a3 == 1001)
      {
        if (a4 == 1)
        {
          v7 = LACEntitlementStorageGetDSLMode;
        }

        else
        {
          v7 = LACEntitlementStorageSetDSLMode;
        }
      }

      else
      {
        if (a3 != 1002)
        {
LABEL_5:

          return v6;
        }

LABEL_2:
        v7 = LACEntitlementStoragePreboard;
      }

LABEL_35:
      v11 = *v7;
LABEL_36:
      v6 = v11;

      return v6;
  }
}

+ (int64_t)policyForKey:(int64_t)a3 operation:(int64_t)a4 value:(id)a5
{
  v7 = a5;
  v8 = 0;
  if (a3 > 17)
  {
    if ((a3 - 18) < 3)
    {
      if (a4 == 2)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v7 BOOLValue];
          v10 = &LACPolicyTouchIDEnrollment;
          goto LABEL_24;
        }
      }

LABEL_39:
      v8 = 0;
      goto LABEL_40;
    }

    if (a3 != 25)
    {
      if (a3 != 1002)
      {
        goto LABEL_40;
      }

      v11 = &LACPolicyTouchIDEnrollment;
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  if (a3 > 5)
  {
    if (a3 == 6)
    {
      if (a4 != 3)
      {
        if (a4 != 2)
        {
          goto LABEL_39;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) == 0 || ([v7 BOOLValue])
        {
          goto LABEL_39;
        }
      }

      v11 = &LACPolicyDeviceOwnerAuthentication;
      goto LABEL_31;
    }

    if (a3 != 7)
    {
      if (a3 != 17)
      {
        goto LABEL_40;
      }

LABEL_21:
      if (a4 == 2)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v7 BOOLValue];
          v10 = &LACPolicyDoublePressBypass;
LABEL_24:
          v13 = *v10;
          if (v9)
          {
            v8 = v13;
          }

          else
          {
            v8 = 0;
          }

          goto LABEL_40;
        }
      }

      goto LABEL_39;
    }

LABEL_27:
    if (a4 != 3)
    {
      if (a4 != 2)
      {
        goto LABEL_39;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) == 0 || ([v7 BOOLValue])
      {
        goto LABEL_39;
      }
    }

    v11 = &LACPolicyLocationBasedDeviceOwnerAuthenticationWithBiometricRatchet;
LABEL_31:
    v8 = *v11;
    goto LABEL_40;
  }

  if (a3 == 1)
  {
    goto LABEL_21;
  }

  if (a3 != 3)
  {
    goto LABEL_40;
  }

  if (a4 != 2)
  {
    goto LABEL_39;
  }

  v12 = [MEMORY[0x1E695DEF0] data];
  if ([v7 isEqual:v12])
  {
    v8 = 0;
  }

  else
  {
    v8 = 1024;
  }

LABEL_40:
  return v8;
}

+ ($536A88BB5CAE6CA76785073378A79450)_convertDataToACMExclaveBatchEnablement:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v5 = MEMORY[0x1E696ACD0];
    v6 = a3;
    v7 = objc_opt_class();
    v16 = 0;
    v8 = [v5 unarchivedDictionaryWithKeysOfClass:v7 objectsOfClass:objc_opt_class() fromData:v6 error:&v16];

    v9 = v16;
    v10 = v9;
    if (v8)
    {
      v11 = exclaveBatchValueInNSDictionary(v8, 20);
      v12 = exclaveBatchValueInNSDictionary(v8, 18);
      v13 = exclaveBatchValueInNSDictionary(v8, 19);
    }

    else if (a4)
    {
      v14 = v9;
      v13 = 0;
      v12 = 0;
      v11 = 0;
      *a4 = v10;
    }

    else
    {
      v13 = 0;
      v12 = 0;
      v11 = 0;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v11 = 0;
  }

  return ((v13 << 16) | (v12 << 8) | v11);
}

- (void)_exchangeObject:(id)a3 request:(id)a4 completionHandler:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 key];
  v12 = LACLogStorage();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v27 = v11;
    v28 = 1024;
    v29 = [v9 identifier];
    _os_log_impl(&dword_1B0233000, v12, OS_LOG_TYPE_DEFAULT, "exchangeData forKey:%d rid:%u", buf, 0xEu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__LACSecureStorage__exchangeObject_request_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7A98288;
  v13 = v9;
  v24 = v13;
  v14 = v10;
  v25 = v14;
  v15 = _Block_copy(aBlock);
  if ([(LACSecureStorage *)self _checkEntitlementForRequest:v13 operation:4 value:v8 failureHandler:v15])
  {
    if ([v8 length] < 0x101)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __62__LACSecureStorage__exchangeObject_request_completionHandler___block_invoke_44;
      v19[3] = &unk_1E7A98328;
      v19[4] = self;
      v20 = v8;
      v21 = v13;
      v22 = v15;
      [(LACSecureStorage *)self _acmSEPControlForKey:v11 completionHandler:v19];
    }

    else
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected max %u bytes.", 256];
      v17 = [LACStorageError errorWithCode:1 debugDescription:v16];
      (*(v14 + 2))(v14, 0, v17);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __62__LACSecureStorage__exchangeObject_request_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = LACLogStorage();
  v8 = v7;
  if (v6)
  {
    v9 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v9 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v7, v9))
  {
    v10 = [*(a1 + 32) identifier];
    v11 = @"success";
    if (v5)
    {
      v11 = v5;
    }

    v13[0] = 67109379;
    v13[1] = v10;
    v14 = 2113;
    v15 = v11;
    _os_log_impl(&dword_1B0233000, v8, v9, "exchangeData rid:%u returned %{private}@", v13, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __62__LACSecureStorage__exchangeObject_request_completionHandler___block_invoke_44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 32) _sepControl:a2 value:*(a1 + 40) request:*(a1 + 48) completionHandler:*(a1 + 56)];
  }

  else
  {
    return (*(*(a1 + 56) + 16))();
  }
}

- (BOOL)_checkEntitlementForRequest:(id)a3 operation:(int64_t)a4 value:(id)a5 failureHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = [objc_opt_class() additionalBoolEntitlementForKey:objc_msgSend(v10 operation:"key") value:{a4, v12}];

  if (!v13 || -[LACSecureStorageConfiguration bypassEntitlementChecks](self->_config, "bypassEntitlementChecks") || ([v10 client], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "checkEntitlement:", v13), v14, (v15 & 1) != 0))
  {
    v16 = 1;
  }

  else
  {
    v18 = [LACError missingEntitlementError:v13];
    v11[2](v11, 0, v18);

    v16 = 0;
  }

  return v16;
}

- (void)_acmSEPControlForKey:(int64_t)a3 completionHandler:(id)a4
{
  v5 = a4;
  v8 = v5;
  if (a3 == 1002)
  {
    v6 = v5[2];
    goto LABEL_5;
  }

  if (a3 == 13)
  {
    v6 = v5[2];
LABEL_5:
    v6();
    goto LABEL_7;
  }

  v7 = [LACStorageError errorWithCode:2 debugDescription:@"Unknown storage for data exchange"];
  (v8[2])(v8, 0, v7);

LABEL_7:
}

- (void)_acmVariableForKey:(int64_t)a3 completionHandler:(id)a4
{
  v5 = a4;
  v8 = v5;
  switch(a3)
  {
    case 1:
      v6 = v5[2];
      goto LABEL_22;
    case 2:
    case 5:
    case 8:
    case 9:
    case 10:
    case 13:
    case 21:
      goto LABEL_5;
    case 3:
      v6 = v5[2];
      goto LABEL_22;
    case 4:
      v6 = v5[2];
      goto LABEL_22;
    case 6:
      v6 = v5[2];
      goto LABEL_22;
    case 7:
      v6 = v5[2];
      goto LABEL_22;
    case 11:
      v6 = v5[2];
      goto LABEL_22;
    case 12:
    case 14:
      v6 = v5[2];
      goto LABEL_22;
    case 15:
      v6 = v5[2];
      goto LABEL_22;
    case 16:
      v6 = v5[2];
      goto LABEL_22;
    case 17:
      v6 = v5[2];
      goto LABEL_22;
    case 18:
      v6 = v5[2];
      goto LABEL_22;
    case 19:
      v6 = v5[2];
      goto LABEL_22;
    case 20:
      v6 = v5[2];
      goto LABEL_22;
    case 22:
      v6 = v5[2];
      goto LABEL_22;
    case 23:
      v6 = v5[2];
      goto LABEL_22;
    case 24:
      v6 = v5[2];
      goto LABEL_22;
    case 25:
      v6 = v5[2];
      goto LABEL_22;
    default:
      if (a3 == 1001)
      {
        v6 = v5[2];
LABEL_22:
        v6();
      }

      else
      {
LABEL_5:
        v7 = [LACStorageError errorWithCode:2 debugDescription:@"Unknown storage"];
        (v8[2])(v8, 0, v7);
      }

      return;
  }
}

- (void)_acmContextDataKeyForKey:(int64_t)a3 completionHandler:(id)a4
{
  if (a3 == 26)
  {
    v5 = *(a4 + 2);
    v7 = a4;
    v5();
  }

  else
  {
    v6 = a4;
    v7 = [LACStorageError errorWithCode:2 debugDescription:@"Unknown storage for ACMContextData"];
    (*(a4 + 2))(v6, 0);
  }
}

- (unsigned)_securityBootModeForACMVariable:(unsigned int)a3
{
  if (a3 > 59)
  {
    if (a3 != 60)
    {
      if (a3 == 67)
      {
        return 7;
      }

      return -1;
    }

    return 4;
  }

  else
  {
    if (a3 != 54)
    {
      if (a3 == 55)
      {
        return 6;
      }

      return -1;
    }

    return 5;
  }
}

- (void)_setStandardSecureBootModeCompletionHandler:(id)a3
{
  v3 = a3;
  AMFIGetSecurityBootModeArmed();
  (*(v3 + 2))(v3, MEMORY[0x1E695E118], 0);
}

- (id)_rebootErrorForRequest:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"com.apple.LocalAuthentication.Storage.error.key.RequiredBootMode";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a3, "key")}];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [LACStorageError errorWithCode:5 userInfo:v4 debugDescription:@"Storage requires reboot"];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_preprocessValue:(id)a3 forVariable:(unsigned int)a4 error:(id *)a5
{
  v8 = a3;
  v9 = v8;
  if (a4 != 67)
  {
    v12 = v8;
    goto LABEL_12;
  }

  if (!v8)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v14 = 0;
  v10 = [objc_opt_class() _convertDataToACMExclaveBatchEnablement:v8 error:&v14];
  v11 = v14;
  v16 = BYTE2(v10);
  v15 = v10;
  if (!v11)
  {
    if ([(LACSecureStorage *)self _isAnyKeySetInBatch:*&v10 & 0xFFFFFFLL])
    {
      v12 = [MEMORY[0x1E695DEF0] dataWithBytes:&v15 length:3];
      goto LABEL_11;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  if (!a5)
  {
    goto LABEL_10;
  }

  [LACStorageError errorWithCode:2 debugDescription:@"Failed to convert NSDictionary to ACM batch enablement data"];
  *a5 = v12 = 0;
LABEL_11:

LABEL_12:

  return v12;
}

void __65__LACSecureStorage__setVariable_value_request_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6)
  {
    ACMContextDelete(v6, 0);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __65__LACSecureStorage__setVariable_value_request_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (a3)
  {
    return (*(v4 + 16))();
  }

  else
  {
    return (*(v4 + 16))(v4, 0, *(a1 + 32));
  }
}

- (void)_sepControl:(unsigned int)a3 value:(id)a4 request:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__12;
  v32 = __Block_byref_object_dispose__12;
  v33 = [MEMORY[0x1E695DEF0] data];
  v12 = [v10 contextID];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__LACSecureStorage__sepControl_value_request_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7A983C8;
  v27 = &v34;
  v13 = v11;
  v26 = v13;
  v14 = _Block_copy(aBlock);
  if (v12)
  {
    v24 = 0;
    v15 = [(LACSecureStorage *)self _acmContextForUUID:v12 error:&v24];
    v16 = v24;
    v17 = v16;
    v35[3] = v15;
    if (!v15)
    {
      v14[2](v14, 0, v16);
      goto LABEL_14;
    }
  }

  v18 = v35[3];
  v19 = [v9 bytes];
  v20 = [v9 length];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __64__LACSecureStorage__sepControl_value_request_completionHandler___block_invoke_2;
  v23[3] = &unk_1E7A958D0;
  v23[4] = &v28;
  v21 = ACMSEPControlEx(v18, 0, 0, v19, v20, v23);
  if (v21 == -17)
  {
LABEL_9:
    v17 = [LACStorageError errorWithCode:0 debugDescription:@"Storage policy not satisfied."];
    v14[2](v14, 0, v17);
LABEL_14:

    goto LABEL_15;
  }

  if (v21)
  {
    if (v12 || v21 != -3)
    {
      if (v21 == -14)
      {
        v17 = [(LACSecureStorage *)self _errorNotSupported];
        v14[2](v14, 0, v17);
      }

      else
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ACMSEPControl failed: %d", v21];
        v22 = [LACStorageError errorWithCode:2 debugDescription:v17];
        v14[2](v14, 0, v22);
      }

      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v14[2](v14, v29[5], 0);
LABEL_15:

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
}

void __64__LACSecureStorage__sepControl_value_request_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6)
  {
    ACMContextDelete(v6, 0);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __64__LACSecureStorage__sepControl_value_request_completionHandler___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v3 = result;
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];
    v5 = *(*(v3 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return MEMORY[0x1EEE66BB8](v4, v6);
  }

  return result;
}

uint64_t __48__LACSecureStorage__variable_completionHandler___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = result;
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];
    v5 = *(*(v3 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return MEMORY[0x1EEE66BB8](v4, v6);
  }

  return result;
}

- (void)_setProtectedData:(id)a3 acl:(id)a4 contextID:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__LACSecureStorage__setProtectedData_acl_contextID_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7A983C8;
  v26 = &v27;
  v14 = v13;
  v25 = v14;
  v15 = _Block_copy(aBlock);
  v23 = 0;
  v16 = [(LACSecureStorage *)self _acmContextForUUID:v12 error:&v23];
  v17 = v23;
  v28[3] = v16;
  if (v16)
  {
    v22[0] = 11;
    v22[1] = [v11 bytes];
    v22[2] = [v11 length];
    if (v11)
    {
      v18 = v22;
    }

    else
    {
      LODWORD(v18) = 0;
    }

    v19 = ACMContextSetDataEx(v28[3], 7, v18, v11 != 0, [v10 bytes], objc_msgSend(v10, "length"));
    if (v19)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ACM failed to set protected data: %d", v19];
      v21 = [LACStorageError errorWithCode:2 debugDescription:v20];
      v15[2](v15, 0, v21);
    }

    else
    {
      v15[2](v15, MEMORY[0x1E695E118], 0);
    }
  }

  else
  {
    v15[2](v15, 0, v17);
  }

  _Block_object_dispose(&v27, 8);
}

void __70__LACSecureStorage__setProtectedData_acl_contextID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6)
  {
    ACMContextDelete(v6, 0);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_setContextData:(id)a3 forKey:(int64_t)a4 contextID:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__LACSecureStorage__setContextData_forKey_contextID_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7A983C8;
  v24 = &v25;
  v13 = v12;
  v23 = v13;
  v14 = _Block_copy(aBlock);
  v21 = 0;
  v15 = [(LACSecureStorage *)self _acmContextForUUID:v11 error:&v21];
  v16 = v21;
  v26[3] = v15;
  if (v15)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__LACSecureStorage__setContextData_forKey_contextID_completionHandler___block_invoke_2;
    v17[3] = &unk_1E7A98418;
    v20 = &v25;
    v18 = v10;
    v19 = v14;
    [(LACSecureStorage *)self _acmContextDataKeyForKey:a4 completionHandler:v17];
  }

  else
  {
    (*(v14 + 2))(v14, 0, v16);
  }

  _Block_object_dispose(&v25, 8);
}

void __71__LACSecureStorage__setContextData_forKey_contextID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6)
  {
    ACMContextDelete(v6, 0);
  }

  (*(*(a1 + 32) + 16))();
}

void __71__LACSecureStorage__setContextData_forKey_contextID_completionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v9 = a3;
  if (a2)
  {
    v5 = ACMContextSetData(*(*(*(a1 + 48) + 8) + 24), a2, [*(a1 + 32) bytes], objc_msgSend(*(a1 + 32), "length"));
    v6 = *(a1 + 40);
    if (v5)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ACM failed to set ACMContextData. acmErr: %d", v5];
      v8 = [LACStorageError errorWithCode:2 debugDescription:v7];
      (*(v6 + 16))(v6, 0, v8);
    }

    else
    {
      (*(v6 + 16))(v6, MEMORY[0x1E695E118], 0);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_protectedDataWithBundleId:(id)a3 contextID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__LACSecureStorage__protectedDataWithBundleId_contextID_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7A983C8;
  v34 = &v35;
  v11 = v10;
  v33 = v11;
  v12 = _Block_copy(aBlock);
  v31 = 0;
  v13 = [(LACSecureStorage *)self _acmContextForUUID:v9 error:&v31];
  v14 = v31;
  v36[3] = v13;
  if (v13)
  {
    v30 = 4620;
    v15 = [MEMORY[0x1E695DF88] dataWithBytes:&v30 length:2];
    v16 = [v8 dataUsingEncoding:4];
    [v15 appendData:v16];

    v29[0] = 3;
    v29[1] = [v15 bytes];
    v29[2] = [v15 length];
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__12;
    v27 = __Block_byref_object_dispose__12;
    v28 = 0;
    v17 = v36[3];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __75__LACSecureStorage__protectedDataWithBundleId_contextID_completionHandler___block_invoke_2;
    v22[3] = &unk_1E7A958D0;
    v22[4] = &v23;
    Data = ACMContextGetDataEx(v17, 7, v29, 1, v22);
    if (Data == -7)
    {
      goto LABEL_7;
    }

    if (Data)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ACM failed to retrieve protected data: %d", Data];
      v21 = [LACStorageError errorWithCode:2 debugDescription:v20];
      v12[2](v12, 0, v21);

      goto LABEL_9;
    }

    v19 = v24[5];
    if (!v19)
    {
LABEL_7:
      v12[2](v12, 0, 0);
    }

    else
    {
      v12[2](v12, v19, 0);
    }

LABEL_9:
    _Block_object_dispose(&v23, 8);

    goto LABEL_10;
  }

  v12[2](v12, 0, v14);
LABEL_10:

  _Block_object_dispose(&v35, 8);
}

void __75__LACSecureStorage__protectedDataWithBundleId_contextID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6)
  {
    ACMContextDelete(v6, 0);
  }

  (*(*(a1 + 32) + 16))();
}

void __75__LACSecureStorage__protectedDataWithBundleId_contextID_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    a2 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];
  }

  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v3)
  {
  }
}

- (void)_contextDataForKey:(int64_t)a3 contextID:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__LACSecureStorage__contextDataForKey_contextID_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7A983C8;
  v20 = &v21;
  v10 = v9;
  v19 = v10;
  v11 = _Block_copy(aBlock);
  v17 = 0;
  v12 = [(LACSecureStorage *)self _acmContextForUUID:v8 error:&v17];
  v13 = v17;
  v22[3] = v12;
  if (v12)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __67__LACSecureStorage__contextDataForKey_contextID_completionHandler___block_invoke_2;
    v14[3] = &unk_1E7A98440;
    v16 = &v21;
    v15 = v11;
    [(LACSecureStorage *)self _acmContextDataKeyForKey:a3 completionHandler:v14];
  }

  else
  {
    (*(v11 + 2))(v11, 0, v13);
  }

  _Block_object_dispose(&v21, 8);
}

void __67__LACSecureStorage__contextDataForKey_contextID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6)
  {
    ACMContextDelete(v6, 0);
  }

  (*(*(a1 + 32) + 16))();
}

void __67__LACSecureStorage__contextDataForKey_contextID_completionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__12;
    v16 = __Block_byref_object_dispose__12;
    v17 = 0;
    v6 = *(*(*(a1 + 40) + 8) + 24);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__LACSecureStorage__contextDataForKey_contextID_completionHandler___block_invoke_3;
    v11[3] = &unk_1E7A958D0;
    v11[4] = &v12;
    Data = ACMContextGetData(v6, a2, v11);
    if (Data != -7)
    {
      if (Data)
      {
        v8 = *(a1 + 32);
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ACM failed to retrieve ACMContextData. acmErr: %d", Data];
        v10 = [LACStorageError errorWithCode:2 debugDescription:v9];
        (*(v8 + 16))(v8, 0, v10);

        goto LABEL_9;
      }

      v13[5];
    }

    (*(*(a1 + 32) + 16))();
LABEL_9:
    _Block_object_dispose(&v12, 8);

    goto LABEL_10;
  }

  (*(*(a1 + 32) + 16))();
LABEL_10:
}

void __67__LACSecureStorage__contextDataForKey_contextID_completionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    a2 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];
  }

  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v3)
  {
  }
}

- (__ACMHandle)_acmContextForUUID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(LACSecureStorage *)self delegate];

  if (v7)
  {
    v8 = [(LACSecureStorage *)self delegate];
    v14 = 0;
    v9 = [v8 acmContextForUUID:v6 error:&v14];
    v10 = v14;

    if (v10)
    {
      if (a4)
      {
        v11 = [LACError errorWithCode:2 underlyingError:v10 debugDescription:@"Failed to create ACMContextRef from externalized form"];
LABEL_5:
        v12 = 0;
        *a4 = v11;
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v12 = ACMContextCreateWithExternalForm([v9 bytes], objc_msgSend(v9, "length"));
      if (v12)
      {
        goto LABEL_12;
      }

      if (a4)
      {
        v11 = [LACError errorWithCode:2 debugDescription:@"Failed to create ACMContextRef from externalized form"];
        goto LABEL_5;
      }
    }

    v12 = 0;
    goto LABEL_12;
  }

  if (a4)
  {
    [LACError errorWithCode:2 debugDescription:@"Failed to create ACMContextRef from externalized form - missing delegate"];
    *a4 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_13:

  return v12;
}

- (id)_storageObjectForKey:(int64_t)a3 data:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = objc_alloc_init(LACStorageObjectEncoder);
  v9 = [(LACStorageObjectEncoder *)v8 encodeValue:v7 forKey:a3 error:a5];

  return v9;
}

- (id)_bundleIDForRequest:(id)a3
{
  v3 = a3;
  v4 = +[LACClientInfoProvider sharedInstance];
  v5 = [v3 client];

  v6 = [v4 infoForXPCClient:v5];

  v7 = [v6 bundleId];

  return v7;
}

- (LACSecureStorageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end