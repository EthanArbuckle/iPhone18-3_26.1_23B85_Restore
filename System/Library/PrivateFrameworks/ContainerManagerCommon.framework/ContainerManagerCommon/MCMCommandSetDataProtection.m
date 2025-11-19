@interface MCMCommandSetDataProtection
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)isThirdParty;
- (BOOL)preflightClientAllowed;
- (BOOL)retryIfLocked;
- (BOOL)skipIfUnchanged;
- (MCMCommandSetDataProtection)initWithContainerIdentity:(id)a3 thirdParty:(BOOL)a4 dataProtectionClass:(int)a5 retryIfLocked:(BOOL)a6 skipIfUnchanged:(BOOL)a7 context:(id)a8 resultPromise:(id)a9;
- (MCMCommandSetDataProtection)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (MCMContainerIdentity)containerIdentity;
- (int)dataProtectionClass;
- (void)execute;
@end

@implementation MCMCommandSetDataProtection

- (BOOL)skipIfUnchanged
{
  result = self->_skipIfUnchanged;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)retryIfLocked
{
  result = self->_retryIfLocked;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (int)dataProtectionClass
{
  result = self->_dataProtectionClass;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isThirdParty
{
  result = self->_thirdParty;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMContainerIdentity)containerIdentity
{
  result = self->_containerIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)execute
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [(MCMCommandSetDataProtection *)self containerIdentity];
  v5 = [(MCMCommand *)self resultPromise];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__MCMCommandSetDataProtection_execute__block_invoke;
  aBlock[3] = &unk_1E86B0AA8;
  aBlock[4] = self;
  v6 = v4;
  v45 = v6;
  v7 = v5;
  v46 = v7;
  v35 = _Block_copy(aBlock);
  v8 = [v6 containerClass];
  if (v8 > 0xB || ((1 << v8) & 0xED4) == 0 || (v9 = [v6 containerClass], v9 == 13) || v9 == 7)
  {
    v10 = [[MCMError alloc] initWithErrorType:11 category:3];
    v11 = [[MCMResultBase alloc] initWithError:v10];
    v12 = 0;
LABEL_6:
    v13 = 0;
    v14 = 0;
    goto LABEL_7;
  }

  v18 = [(MCMCommand *)self context];
  v19 = [v18 containerCache];
  v43 = 0;
  v12 = [v19 entryForContainerIdentity:v6 error:&v43];
  v10 = v43;

  if (!v12)
  {
    v11 = [[MCMResultBase alloc] initWithError:v10];
    goto LABEL_6;
  }

  v42 = v10;
  v14 = [v12 metadataWithError:&v42];
  v20 = v42;

  if (!v14)
  {
    v11 = [[MCMResultBase alloc] initWithError:v20];
    v13 = 0;
    goto LABEL_19;
  }

  v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[MCMCommandSetDataProtection dataProtectionClass](self, "dataProtectionClass")}];
  v13 = [v14 metadataBySettingInfoValue:v21 forKey:@"com.apple.MobileInstallation.ContentProtectionClass"];

  if ([(MCMCommandSetDataProtection *)self skipIfUnchanged]&& v13 == v14)
  {
    v11 = 0;
LABEL_19:
    v10 = v20;
    goto LABEL_7;
  }

  v41 = v20;
  v22 = [v13 writeMetadataToDiskWithError:&v41];
  v10 = v41;

  if (v22)
  {
    v33 = [(MCMCommand *)self context];
    v23 = [v33 containerCache];
    v40 = v10;
    v24 = [v23 addContainerMetadata:v13 error:&v40];
    v34 = v40;

    v25 = v24;
    if (!v24)
    {
      v26 = container_log_handle_for_category();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v31 = [v13 identifier];
        v32 = [v13 containerClass];
        *buf = 138412802;
        v48 = v31;
        v49 = 2048;
        v50 = v32;
        v51 = 2112;
        v52 = v34;
        _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Could not update metadata in cache when asked to change data protection on [%@(%llu)]: %@", buf, 0x20u);
      }
    }

    v27 = MCMDataProtectionQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__MCMCommandSetDataProtection_execute__block_invoke_8;
    block[3] = &unk_1E86B0AD0;
    v13 = v13;
    v37 = v13;
    v38 = self;
    v39 = v35;
    dispatch_async(v27, block);

    v11 = 0;
    v12 = v25;
    v10 = v34;
  }

  else
  {
    v28 = container_log_handle_for_category();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [v13 identifier];
      v30 = [v13 containerClass];
      *buf = 138412802;
      v48 = v29;
      v49 = 2048;
      v50 = v30;
      v51 = 2112;
      v52 = v10;
      _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, "Could not save metadata when asked to change data protection on [%@(%llu)]: %@", buf, 0x20u);
    }

    v11 = [[MCMResultBase alloc] initWithError:v10];
  }

LABEL_7:
  v15 = container_log_handle_for_category();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v48 = v10;
    _os_log_debug_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_DEBUG, "Set data protection (start); error = %@", buf, 0xCu);
  }

  if (v11)
  {
    v16 = [(MCMCommand *)self resultPromise];
    [v16 completeWithResult:v11];
  }

  objc_autoreleasePoolPop(v3);
  v17 = *MEMORY[0x1E69E9840];
}

void __38__MCMCommandSetDataProtection_execute__block_invoke(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__12529;
  v21 = __Block_byref_object_dispose__12530;
  v22 = [[MCMError alloc] initWithErrorType:a2];
  if (v18[5])
  {
    goto LABEL_3;
  }

  v3 = MCMSharedFastWorkloop();
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __38__MCMCommandSetDataProtection_execute__block_invoke_4;
  v13 = &unk_1E86B0DB8;
  v4 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = v4;
  v16 = &v17;
  dispatch_async_and_wait(v3, &v10);

  if (v18[5])
  {
LABEL_3:
    v5 = [MCMResultBase alloc];
    v6 = [(MCMResultBase *)v5 initWithError:v18[5]];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;
  [*(a1 + 48) completeWithResult:{v6, v10, v11, v12, v13, v14}];
  v8 = [*(a1 + 32) reply];
  [v8 send];

  _Block_object_dispose(&v17, 8);
  v9 = *MEMORY[0x1E69E9840];
}

void __38__MCMCommandSetDataProtection_execute__block_invoke_8(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = +[MCMDataProtectionManager defaultManager];
  [v3 setDataProtectionOnDataContainerForMetadata:*(a1 + 32) isSecondOrThirdPartyApp:objc_msgSend(*(a1 + 40) retryIfLocked:"isThirdParty") deferUntilNextLaunch:objc_msgSend(*(a1 + 40) withCompletion:{"retryIfLocked"), 0, *(a1 + 48)}];
  v2 = *MEMORY[0x1E69E9840];
}

void __38__MCMCommandSetDataProtection_execute__block_invoke_4(void *a1)
{
  obj[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v4 = [v2 dataProtectionClass];
  v5 = *(a1[6] + 8);
  obj[0] = *(v5 + 40);
  [v2 _updateMetadataForContainerIdentity:v3 dataProtectionClass:v4 error:obj];
  objc_storeStrong((v5 + 40), obj[0]);
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMCommand *)self context];
  v3 = [v2 clientIdentity];
  v4 = [v3 isAllowedToSetDataProtection];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (MCMCommandSetDataProtection)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v14.receiver = self;
  v14.super_class = MCMCommandSetDataProtection;
  v9 = [(MCMCommand *)&v14 initWithMessage:v8 context:a4 reply:a5];
  if (v9)
  {
    v10 = [v8 containerIdentity];
    v11 = *(v9 + 6);
    *(v9 + 6) = v10;

    v9[40] = [v8 isThirdParty];
    *(v9 + 11) = [v8 dataProtectionClass];
    *(v9 + 41) = [v8 retryIfLocked];
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

- (MCMCommandSetDataProtection)initWithContainerIdentity:(id)a3 thirdParty:(BOOL)a4 dataProtectionClass:(int)a5 retryIfLocked:(BOOL)a6 skipIfUnchanged:(BOOL)a7 context:(id)a8 resultPromise:(id)a9
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v21.receiver = self;
  v21.super_class = MCMCommandSetDataProtection;
  v17 = [(MCMCommand *)&v21 initWithContext:a8 resultPromise:a9];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_containerIdentity, a3);
    v18->_thirdParty = a4;
    v18->_dataProtectionClass = a5;
    v18->_retryIfLocked = a6;
    v18->_skipIfUnchanged = a7;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (Class)incomingMessageClass
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return objc_opt_class();
}

+ (unint64_t)command
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 21;
}

@end