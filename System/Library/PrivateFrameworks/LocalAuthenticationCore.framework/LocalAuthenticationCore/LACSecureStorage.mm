@interface LACSecureStorage
+ ($536A88BB5CAE6CA76785073378A79450)_convertDataToACMExclaveBatchEnablement:(id)enablement error:(id *)error;
+ (BOOL)checkKey:(int64_t)key supportsOperation:(int64_t)operation;
+ (BOOL)isKeyAvailable:(int64_t)available;
+ (BOOL)isKeyAvailable:(int64_t)available operation:(int64_t)operation;
+ (Class)classForKey:(int64_t)key;
+ (id)additionalBoolEntitlementForKey:(int64_t)key operation:(int64_t)operation value:(id)value;
+ (id)maxDataLengthForKey:(int64_t)key;
+ (id)minDataLengthForKey:(int64_t)key;
+ (int64_t)policyForKey:(int64_t)key operation:(int64_t)operation value:(id)value;
- (BOOL)_checkEntitlementForRequest:(id)request operation:(int64_t)operation value:(id)value failureHandler:(id)handler;
- (LACSecureStorage)initWithConfig:(id)config;
- (LACSecureStorageDelegate)delegate;
- (__ACMHandle)_acmContextForUUID:(id)d error:(id *)error;
- (id)_bundleIDForRequest:(id)request;
- (id)_preprocessValue:(id)value forVariable:(unsigned int)variable error:(id *)error;
- (id)_rebootErrorForRequest:(id)request;
- (id)_storageObjectForKey:(int64_t)key data:(id)data error:(id *)error;
- (unsigned)_securityBootModeForACMVariable:(unsigned int)variable;
- (void)_acmContextDataKeyForKey:(int64_t)key completionHandler:(id)handler;
- (void)_acmSEPControlForKey:(int64_t)key completionHandler:(id)handler;
- (void)_acmVariableForKey:(int64_t)key completionHandler:(id)handler;
- (void)_contextDataForKey:(int64_t)key contextID:(id)d completionHandler:(id)handler;
- (void)_exchangeObject:(id)object request:(id)request completionHandler:(id)handler;
- (void)_protectedDataWithBundleId:(id)id contextID:(id)d completionHandler:(id)handler;
- (void)_sepControl:(unsigned int)control value:(id)value request:(id)request completionHandler:(id)handler;
- (void)_setContextData:(id)data forKey:(int64_t)key contextID:(id)d completionHandler:(id)handler;
- (void)_setProtectedData:(id)data acl:(id)acl contextID:(id)d completionHandler:(id)handler;
- (void)_setStandardSecureBootModeCompletionHandler:(id)handler;
- (void)aclForRequest:(id)request completionHandler:(id)handler;
- (void)objectForRequest:(id)request completionHandler:(id)handler;
- (void)processError:(id)error forRequest:(id)request completionHandler:(id)handler;
- (void)removeObjectForRequest:(id)request completionHandler:(id)handler;
- (void)setObject:(id)object forRequest:(id)request completionHandler:(id)handler;
@end

@implementation LACSecureStorage

- (LACSecureStorage)initWithConfig:(id)config
{
  configCopy = config;
  v9.receiver = self;
  v9.super_class = LACSecureStorage;
  v6 = [(LACSecureStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, config);
  }

  return v7;
}

- (void)objectForRequest:(id)request completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  v8 = [requestCopy key];
  v9 = LACLogStorage();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v28 = v8;
    v29 = 1024;
    identifier = [requestCopy identifier];
    _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "objectForKey:%d rid:%u", buf, 0xEu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__LACSecureStorage_objectForRequest_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7A98288;
  v10 = requestCopy;
  v25 = v10;
  v11 = handlerCopy;
  v26 = v11;
  v12 = _Block_copy(aBlock);
  if ([(LACSecureStorage *)self _checkEntitlementForRequest:v10 operation:1 value:0 failureHandler:v12])
  {
    if (v8 == 2)
    {
      v13 = [(LACSecureStorage *)self _bundleIDForRequest:v10];
      contextID = [v10 contextID];
      [(LACSecureStorage *)self _protectedDataWithBundleId:v13 contextID:contextID completionHandler:v12];
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
      contextID2 = [v10 contextID];
      [(LACSecureStorage *)self _contextDataForKey:v8 contextID:contextID2 completionHandler:v12];
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

- (void)removeObjectForRequest:(id)request completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  v8 = [requestCopy key];
  v9 = LACLogStorage();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v25 = v8;
    v26 = 1024;
    identifier = [requestCopy identifier];
    _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "removeObjectForKey:%d rid:%u", buf, 0xEu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__LACSecureStorage_removeObjectForRequest_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7A98288;
  v10 = requestCopy;
  v22 = v10;
  v11 = handlerCopy;
  v23 = v11;
  v12 = _Block_copy(aBlock);
  if ([(LACSecureStorage *)self _checkEntitlementForRequest:v10 operation:3 value:0 failureHandler:v12])
  {
    if ([objc_opt_class() checkKey:v8 supportsOperation:3])
    {
      if (v8 == 2)
      {
        contextID = [v10 contextID];
        [(LACSecureStorage *)self _setProtectedData:0 acl:0 contextID:contextID completionHandler:v12];
      }

      else if ([objc_opt_class() isKeyAvailableForContextData:v8])
      {
        contextID2 = [v10 contextID];
        [(LACSecureStorage *)self _setContextData:0 forKey:v8 contextID:contextID2 completionHandler:v12];
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

- (void)setObject:(id)object forRequest:(id)request completionHandler:(id)handler
{
  v42 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  requestCopy = request;
  handlerCopy = handler;
  v11 = [requestCopy key];
  if (![objc_opt_class() checkKey:v11 supportsOperation:4])
  {
    v12 = LACLogStorage();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v39 = v11;
      v40 = 1024;
      identifier = [requestCopy identifier];
      _os_log_impl(&dword_1B0233000, v12, OS_LOG_TYPE_DEFAULT, "setObject forKey:%d rid:%u", buf, 0xEu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__LACSecureStorage_setObject_forRequest_completionHandler___block_invoke;
    aBlock[3] = &unk_1E7A98288;
    v13 = requestCopy;
    v36 = v13;
    v14 = handlerCopy;
    v37 = v14;
    v15 = _Block_copy(aBlock);
    if (![(LACSecureStorage *)self _checkEntitlementForRequest:v13 operation:2 value:objectCopy failureHandler:v15])
    {
      goto LABEL_25;
    }

    if ([objc_opt_class() checkKey:v11 supportsOperation:2])
    {
      v16 = [objc_opt_class() classForKey:v11];
      if (![v16 isEqual:objc_opt_class()] || objc_msgSend(objectCopy, "length") == 1)
      {
        v17 = [objc_opt_class() maxDataLengthForKey:v11];
        if (v17 && (v18 = [objectCopy length], v18 > objc_msgSend(v17, "unsignedIntegerValue")))
        {
          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected max %u bytes.", objc_msgSend(v17, "unsignedIntValue")];
          v20 = [LACStorageError errorWithCode:1 debugDescription:v19];
          (*(v14 + 2))(v14, 0, v20);
        }

        else
        {
          v30 = [objc_opt_class() minDataLengthForKey:v11];
          if (v30 && (v23 = [objectCopy length], v23 < objc_msgSend(v17, "unsignedIntegerValue")))
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
              contextID = [v13 contextID];
              [(LACSecureStorage *)self _setProtectedData:objectCopy acl:v26 contextID:contextID completionHandler:v15];
            }

            else if ([objc_opt_class() isKeyAvailableForContextData:v11])
            {
              contextID2 = [v13 contextID];
              [(LACSecureStorage *)self _setContextData:objectCopy forKey:v11 contextID:contextID2 completionHandler:v15];
            }

            else
            {
              v31[0] = MEMORY[0x1E69E9820];
              v31[1] = 3221225472;
              v31[2] = __59__LACSecureStorage_setObject_forRequest_completionHandler___block_invoke_21;
              v31[3] = &unk_1E7A98328;
              v31[4] = self;
              v32 = objectCopy;
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

  [(LACSecureStorage *)self _exchangeObject:objectCopy request:requestCopy completionHandler:handlerCopy];
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

- (void)aclForRequest:(id)request completionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  v8 = [requestCopy key];
  v9 = LACLogStorage();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v8;
    LOWORD(v33) = 1024;
    *(&v33 + 2) = [requestCopy identifier];
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
  v10 = requestCopy;
  v25 = v10;
  v11 = handlerCopy;
  v26 = v11;
  v12 = _Block_copy(aBlock);
  contextID = [v10 contextID];
  v23 = 0;
  v14 = [(LACSecureStorage *)self _acmContextForUUID:contextID error:&v23];
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
      dataProperty = [MEMORY[0x1E696AEC0] stringWithFormat:@"ACM failed to retrieve the ACL: %d", DataProperty];
      v20 = [LACStorageError errorWithCode:2 debugDescription:dataProperty];
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

- (void)processError:(id)error forRequest:(id)request completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  errorCopy = error;
  v11 = LACLogStorage();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v28 = [requestCopy key];
    v29 = 1024;
    identifier = [requestCopy identifier];
    _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "processError key:%d rid:%u", buf, 0xEu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__LACSecureStorage_processError_forRequest_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7A98378;
  v12 = requestCopy;
  v25 = v12;
  v13 = handlerCopy;
  v26 = v13;
  v14 = _Block_copy(aBlock);
  v15 = [LACStorageError error:errorCopy hasCode:5];

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

+ (BOOL)isKeyAvailable:(int64_t)available operation:(int64_t)operation
{
  v7 = [self isKeyAvailable:?];
  if (v7)
  {

    LOBYTE(v7) = [self checkKey:available supportsOperation:operation];
  }

  return v7;
}

+ (BOOL)isKeyAvailable:(int64_t)available
{
  result = 1;
  if (available > 0x1A)
  {
    return (available - 1001) < 2;
  }

  if (((1 << available) & 0x7FB58DE) != 0)
  {
    return result;
  }

  if (((1 << available) & 0xA000) == 0)
  {
    return (available - 1001) < 2;
  }

  v4 = +[LACSysUtility sharedInstance];
  hasCodeSigningMonitor = [v4 hasCodeSigningMonitor];

  return hasCodeSigningMonitor;
}

+ (BOOL)checkKey:(int64_t)key supportsOperation:(int64_t)operation
{
  if (key <= 20)
  {
    if (key > 13)
    {
      if (key != 14 && key != 15)
      {
        return operation != 4;
      }
    }

    else if (key != 12)
    {
      if (key != 13)
      {
        return operation != 4;
      }

      goto LABEL_12;
    }

LABEL_10:
    v4 = &LACStorageOperationQuery;
    return *v4 == operation;
  }

  if (key <= 22)
  {
    goto LABEL_10;
  }

  if (key == 1002)
  {
LABEL_12:
    v4 = &LACStorageOperationDataExchange;
    return *v4 == operation;
  }

  return operation != 4;
}

+ (Class)classForKey:(int64_t)key
{
  v4 = 0x1E696AD98;
  if (key <= 0x1A)
  {
    if (((1 << key) & 0x23E58D2) != 0)
    {
      goto LABEL_5;
    }

    if (((1 << key) & 0x4C1800C) != 0)
    {
      v4 = 0x1E695DEF0;
      goto LABEL_5;
    }

    if (key == 24)
    {
      v4 = 0x1E695DF20;
      goto LABEL_5;
    }
  }

  if (key == 1001)
  {
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  v6 = 0;

  return v6;
}

+ (id)maxDataLengthForKey:(int64_t)key
{
  if (key <= 0x14)
  {
    if (((1 << key) & 0x1E1052) != 0)
    {
      return &unk_1F2693820;
    }

    if (key == 3)
    {
      return &unk_1F2693838;
    }

    if (key == 7)
    {
      return &unk_1F2693820;
    }
  }

  if (key == 1001)
  {
    return &unk_1F2693820;
  }

  return 0;
}

+ (id)minDataLengthForKey:(int64_t)key
{
  if (key == 4 || key == 1)
  {
    return &unk_1F2693820;
  }

  else
  {
    return 0;
  }
}

+ (id)additionalBoolEntitlementForKey:(int64_t)key operation:(int64_t)operation value:(id)value
{
  v6 = 0;
  switch(key)
  {
    case 4:
      v9 = operation == 3 || operation == 2;
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
      v9 = operation == 3 || operation == 2;
      v10 = LACEntitlementStorageSetLockdownMode;
      goto LABEL_29;
    case 7:
      v9 = operation == 3 || operation == 2;
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
      v9 = operation == 3 || operation == 2;
      v10 = LACEntitlementStorageSetDSLStrictModeEnabled;
LABEL_29:
      v11 = *v10;
      if (!v9)
      {
        v11 = 0;
      }

      goto LABEL_36;
    default:
      if (key == 1001)
      {
        if (operation == 1)
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
        if (key != 1002)
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

+ (int64_t)policyForKey:(int64_t)key operation:(int64_t)operation value:(id)value
{
  valueCopy = value;
  v8 = 0;
  if (key > 17)
  {
    if ((key - 18) < 3)
    {
      if (operation == 2)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          bOOLValue = [valueCopy BOOLValue];
          v10 = &LACPolicyTouchIDEnrollment;
          goto LABEL_24;
        }
      }

LABEL_39:
      v8 = 0;
      goto LABEL_40;
    }

    if (key != 25)
    {
      if (key != 1002)
      {
        goto LABEL_40;
      }

      v11 = &LACPolicyTouchIDEnrollment;
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  if (key > 5)
  {
    if (key == 6)
    {
      if (operation != 3)
      {
        if (operation != 2)
        {
          goto LABEL_39;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) == 0 || ([valueCopy BOOLValue])
        {
          goto LABEL_39;
        }
      }

      v11 = &LACPolicyDeviceOwnerAuthentication;
      goto LABEL_31;
    }

    if (key != 7)
    {
      if (key != 17)
      {
        goto LABEL_40;
      }

LABEL_21:
      if (operation == 2)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          bOOLValue = [valueCopy BOOLValue];
          v10 = &LACPolicyDoublePressBypass;
LABEL_24:
          v13 = *v10;
          if (bOOLValue)
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
    if (operation != 3)
    {
      if (operation != 2)
      {
        goto LABEL_39;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) == 0 || ([valueCopy BOOLValue])
      {
        goto LABEL_39;
      }
    }

    v11 = &LACPolicyLocationBasedDeviceOwnerAuthenticationWithBiometricRatchet;
LABEL_31:
    v8 = *v11;
    goto LABEL_40;
  }

  if (key == 1)
  {
    goto LABEL_21;
  }

  if (key != 3)
  {
    goto LABEL_40;
  }

  if (operation != 2)
  {
    goto LABEL_39;
  }

  data = [MEMORY[0x1E695DEF0] data];
  if ([valueCopy isEqual:data])
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

+ ($536A88BB5CAE6CA76785073378A79450)_convertDataToACMExclaveBatchEnablement:(id)enablement error:(id *)error
{
  if (enablement)
  {
    v5 = MEMORY[0x1E696ACD0];
    enablementCopy = enablement;
    v7 = objc_opt_class();
    v16 = 0;
    v8 = [v5 unarchivedDictionaryWithKeysOfClass:v7 objectsOfClass:objc_opt_class() fromData:enablementCopy error:&v16];

    v9 = v16;
    v10 = v9;
    if (v8)
    {
      v11 = exclaveBatchValueInNSDictionary(v8, 20);
      v12 = exclaveBatchValueInNSDictionary(v8, 18);
      v13 = exclaveBatchValueInNSDictionary(v8, 19);
    }

    else if (error)
    {
      v14 = v9;
      v13 = 0;
      v12 = 0;
      v11 = 0;
      *error = v10;
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

- (void)_exchangeObject:(id)object request:(id)request completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  requestCopy = request;
  handlerCopy = handler;
  v11 = [requestCopy key];
  v12 = LACLogStorage();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v27 = v11;
    v28 = 1024;
    identifier = [requestCopy identifier];
    _os_log_impl(&dword_1B0233000, v12, OS_LOG_TYPE_DEFAULT, "exchangeData forKey:%d rid:%u", buf, 0xEu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__LACSecureStorage__exchangeObject_request_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7A98288;
  v13 = requestCopy;
  v24 = v13;
  v14 = handlerCopy;
  v25 = v14;
  v15 = _Block_copy(aBlock);
  if ([(LACSecureStorage *)self _checkEntitlementForRequest:v13 operation:4 value:objectCopy failureHandler:v15])
  {
    if ([objectCopy length] < 0x101)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __62__LACSecureStorage__exchangeObject_request_completionHandler___block_invoke_44;
      v19[3] = &unk_1E7A98328;
      v19[4] = self;
      v20 = objectCopy;
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

- (BOOL)_checkEntitlementForRequest:(id)request operation:(int64_t)operation value:(id)value failureHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  valueCopy = value;
  v13 = [objc_opt_class() additionalBoolEntitlementForKey:objc_msgSend(requestCopy operation:"key") value:{operation, valueCopy}];

  if (!v13 || -[LACSecureStorageConfiguration bypassEntitlementChecks](self->_config, "bypassEntitlementChecks") || ([requestCopy client], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "checkEntitlement:", v13), v14, (v15 & 1) != 0))
  {
    v16 = 1;
  }

  else
  {
    v18 = [LACError missingEntitlementError:v13];
    handlerCopy[2](handlerCopy, 0, v18);

    v16 = 0;
  }

  return v16;
}

- (void)_acmSEPControlForKey:(int64_t)key completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = handlerCopy;
  if (key == 1002)
  {
    v6 = handlerCopy[2];
    goto LABEL_5;
  }

  if (key == 13)
  {
    v6 = handlerCopy[2];
LABEL_5:
    v6();
    goto LABEL_7;
  }

  v7 = [LACStorageError errorWithCode:2 debugDescription:@"Unknown storage for data exchange"];
  (v8[2])(v8, 0, v7);

LABEL_7:
}

- (void)_acmVariableForKey:(int64_t)key completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = handlerCopy;
  switch(key)
  {
    case 1:
      v6 = handlerCopy[2];
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
      v6 = handlerCopy[2];
      goto LABEL_22;
    case 4:
      v6 = handlerCopy[2];
      goto LABEL_22;
    case 6:
      v6 = handlerCopy[2];
      goto LABEL_22;
    case 7:
      v6 = handlerCopy[2];
      goto LABEL_22;
    case 11:
      v6 = handlerCopy[2];
      goto LABEL_22;
    case 12:
    case 14:
      v6 = handlerCopy[2];
      goto LABEL_22;
    case 15:
      v6 = handlerCopy[2];
      goto LABEL_22;
    case 16:
      v6 = handlerCopy[2];
      goto LABEL_22;
    case 17:
      v6 = handlerCopy[2];
      goto LABEL_22;
    case 18:
      v6 = handlerCopy[2];
      goto LABEL_22;
    case 19:
      v6 = handlerCopy[2];
      goto LABEL_22;
    case 20:
      v6 = handlerCopy[2];
      goto LABEL_22;
    case 22:
      v6 = handlerCopy[2];
      goto LABEL_22;
    case 23:
      v6 = handlerCopy[2];
      goto LABEL_22;
    case 24:
      v6 = handlerCopy[2];
      goto LABEL_22;
    case 25:
      v6 = handlerCopy[2];
      goto LABEL_22;
    default:
      if (key == 1001)
      {
        v6 = handlerCopy[2];
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

- (void)_acmContextDataKeyForKey:(int64_t)key completionHandler:(id)handler
{
  if (key == 26)
  {
    v5 = *(handler + 2);
    handlerCopy = handler;
    v5();
  }

  else
  {
    handlerCopy2 = handler;
    handlerCopy = [LACStorageError errorWithCode:2 debugDescription:@"Unknown storage for ACMContextData"];
    (*(handler + 2))(handlerCopy2, 0);
  }
}

- (unsigned)_securityBootModeForACMVariable:(unsigned int)variable
{
  if (variable > 59)
  {
    if (variable != 60)
    {
      if (variable == 67)
      {
        return 7;
      }

      return -1;
    }

    return 4;
  }

  else
  {
    if (variable != 54)
    {
      if (variable == 55)
      {
        return 6;
      }

      return -1;
    }

    return 5;
  }
}

- (void)_setStandardSecureBootModeCompletionHandler:(id)handler
{
  handlerCopy = handler;
  AMFIGetSecurityBootModeArmed();
  (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E118], 0);
}

- (id)_rebootErrorForRequest:(id)request
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"com.apple.LocalAuthentication.Storage.error.key.RequiredBootMode";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(request, "key")}];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [LACStorageError errorWithCode:5 userInfo:v4 debugDescription:@"Storage requires reboot"];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_preprocessValue:(id)value forVariable:(unsigned int)variable error:(id *)error
{
  valueCopy = value;
  v9 = valueCopy;
  if (variable != 67)
  {
    v12 = valueCopy;
    goto LABEL_12;
  }

  if (!valueCopy)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v14 = 0;
  v10 = [objc_opt_class() _convertDataToACMExclaveBatchEnablement:valueCopy error:&v14];
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

  if (!error)
  {
    goto LABEL_10;
  }

  [LACStorageError errorWithCode:2 debugDescription:@"Failed to convert NSDictionary to ACM batch enablement data"];
  *error = v12 = 0;
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

- (void)_sepControl:(unsigned int)control value:(id)value request:(id)request completionHandler:(id)handler
{
  valueCopy = value;
  requestCopy = request;
  handlerCopy = handler;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__12;
  v32 = __Block_byref_object_dispose__12;
  data = [MEMORY[0x1E695DEF0] data];
  contextID = [requestCopy contextID];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__LACSecureStorage__sepControl_value_request_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7A983C8;
  v27 = &v34;
  v13 = handlerCopy;
  v26 = v13;
  v14 = _Block_copy(aBlock);
  if (contextID)
  {
    v24 = 0;
    v15 = [(LACSecureStorage *)self _acmContextForUUID:contextID error:&v24];
    v16 = v24;
    _errorNotSupported = v16;
    v35[3] = v15;
    if (!v15)
    {
      v14[2](v14, 0, v16);
      goto LABEL_14;
    }
  }

  v18 = v35[3];
  bytes = [valueCopy bytes];
  v20 = [valueCopy length];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __64__LACSecureStorage__sepControl_value_request_completionHandler___block_invoke_2;
  v23[3] = &unk_1E7A958D0;
  v23[4] = &v28;
  v21 = ACMSEPControlEx(v18, 0, 0, bytes, v20, v23);
  if (v21 == -17)
  {
LABEL_9:
    _errorNotSupported = [LACStorageError errorWithCode:0 debugDescription:@"Storage policy not satisfied."];
    v14[2](v14, 0, _errorNotSupported);
LABEL_14:

    goto LABEL_15;
  }

  if (v21)
  {
    if (contextID || v21 != -3)
    {
      if (v21 == -14)
      {
        _errorNotSupported = [(LACSecureStorage *)self _errorNotSupported];
        v14[2](v14, 0, _errorNotSupported);
      }

      else
      {
        _errorNotSupported = [MEMORY[0x1E696AEC0] stringWithFormat:@"ACMSEPControl failed: %d", v21];
        v22 = [LACStorageError errorWithCode:2 debugDescription:_errorNotSupported];
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

- (void)_setProtectedData:(id)data acl:(id)acl contextID:(id)d completionHandler:(id)handler
{
  dataCopy = data;
  aclCopy = acl;
  dCopy = d;
  handlerCopy = handler;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__LACSecureStorage__setProtectedData_acl_contextID_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7A983C8;
  v26 = &v27;
  v14 = handlerCopy;
  v25 = v14;
  v15 = _Block_copy(aBlock);
  v23 = 0;
  v16 = [(LACSecureStorage *)self _acmContextForUUID:dCopy error:&v23];
  v17 = v23;
  v28[3] = v16;
  if (v16)
  {
    v22[0] = 11;
    v22[1] = [aclCopy bytes];
    v22[2] = [aclCopy length];
    if (aclCopy)
    {
      v18 = v22;
    }

    else
    {
      LODWORD(v18) = 0;
    }

    v19 = ACMContextSetDataEx(v28[3], 7, v18, aclCopy != 0, [dataCopy bytes], objc_msgSend(dataCopy, "length"));
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

- (void)_setContextData:(id)data forKey:(int64_t)key contextID:(id)d completionHandler:(id)handler
{
  dataCopy = data;
  dCopy = d;
  handlerCopy = handler;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__LACSecureStorage__setContextData_forKey_contextID_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7A983C8;
  v24 = &v25;
  v13 = handlerCopy;
  v23 = v13;
  v14 = _Block_copy(aBlock);
  v21 = 0;
  v15 = [(LACSecureStorage *)self _acmContextForUUID:dCopy error:&v21];
  v16 = v21;
  v26[3] = v15;
  if (v15)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__LACSecureStorage__setContextData_forKey_contextID_completionHandler___block_invoke_2;
    v17[3] = &unk_1E7A98418;
    v20 = &v25;
    v18 = dataCopy;
    v19 = v14;
    [(LACSecureStorage *)self _acmContextDataKeyForKey:key completionHandler:v17];
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

- (void)_protectedDataWithBundleId:(id)id contextID:(id)d completionHandler:(id)handler
{
  idCopy = id;
  dCopy = d;
  handlerCopy = handler;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__LACSecureStorage__protectedDataWithBundleId_contextID_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7A983C8;
  v34 = &v35;
  v11 = handlerCopy;
  v33 = v11;
  v12 = _Block_copy(aBlock);
  v31 = 0;
  v13 = [(LACSecureStorage *)self _acmContextForUUID:dCopy error:&v31];
  v14 = v31;
  v36[3] = v13;
  if (v13)
  {
    v30 = 4620;
    v15 = [MEMORY[0x1E695DF88] dataWithBytes:&v30 length:2];
    v16 = [idCopy dataUsingEncoding:4];
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
      data = [MEMORY[0x1E696AEC0] stringWithFormat:@"ACM failed to retrieve protected data: %d", Data];
      v21 = [LACStorageError errorWithCode:2 debugDescription:data];
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

- (void)_contextDataForKey:(int64_t)key contextID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__LACSecureStorage__contextDataForKey_contextID_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7A983C8;
  v20 = &v21;
  v10 = handlerCopy;
  v19 = v10;
  v11 = _Block_copy(aBlock);
  v17 = 0;
  v12 = [(LACSecureStorage *)self _acmContextForUUID:dCopy error:&v17];
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
    [(LACSecureStorage *)self _acmContextDataKeyForKey:key completionHandler:v14];
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

- (__ACMHandle)_acmContextForUUID:(id)d error:(id *)error
{
  dCopy = d;
  delegate = [(LACSecureStorage *)self delegate];

  if (delegate)
  {
    delegate2 = [(LACSecureStorage *)self delegate];
    v14 = 0;
    v9 = [delegate2 acmContextForUUID:dCopy error:&v14];
    v10 = v14;

    if (v10)
    {
      if (error)
      {
        v11 = [LACError errorWithCode:2 underlyingError:v10 debugDescription:@"Failed to create ACMContextRef from externalized form"];
LABEL_5:
        v12 = 0;
        *error = v11;
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

      if (error)
      {
        v11 = [LACError errorWithCode:2 debugDescription:@"Failed to create ACMContextRef from externalized form"];
        goto LABEL_5;
      }
    }

    v12 = 0;
    goto LABEL_12;
  }

  if (error)
  {
    [LACError errorWithCode:2 debugDescription:@"Failed to create ACMContextRef from externalized form - missing delegate"];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_13:

  return v12;
}

- (id)_storageObjectForKey:(int64_t)key data:(id)data error:(id *)error
{
  dataCopy = data;
  v8 = objc_alloc_init(LACStorageObjectEncoder);
  v9 = [(LACStorageObjectEncoder *)v8 encodeValue:dataCopy forKey:key error:error];

  return v9;
}

- (id)_bundleIDForRequest:(id)request
{
  requestCopy = request;
  v4 = +[LACClientInfoProvider sharedInstance];
  client = [requestCopy client];

  v6 = [v4 infoForXPCClient:client];

  bundleId = [v6 bundleId];

  return bundleId;
}

- (LACSecureStorageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end