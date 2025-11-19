@interface NRTermsAcknowledgementRegistry
+ (id)errorStringWithEnum:(unint64_t)a3;
+ (id)errorWithEnum:(unint64_t)a3;
- (id)proxyWithErrorHandler:(uint64_t)a1;
- (void)add:(id)a3 forDeviceID:(id)a4 withCompletion:(id)a5;
- (void)checkForAcknowledgement:(id)a3 forDeviceID:(id)a4 withCompletion:(id)a5;
@end

@implementation NRTermsAcknowledgementRegistry

void __44__NRTermsAcknowledgementRegistry_connection__block_invoke()
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5B86390];
  v0 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.nanoregistry.termsacknowledgementregistry" options:4096];
  v1 = qword_1ED6F0A88;
  qword_1ED6F0A88 = v0;

  [qword_1ED6F0A88 setRemoteObjectInterface:v2];
  [qword_1ED6F0A88 resume];
}

- (id)proxyWithErrorHandler:(uint64_t)a1
{
  if (a1)
  {
    v2 = a2;
    if (_MergedGlobals_6 != -1)
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_138);
    }

    v3 = qword_1ED6F0A88;
    v4 = [v3 remoteObjectProxyWithErrorHandler:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)add:(id)a3 forDeviceID:(id)a4 withCompletion:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 termsText];
  v12 = [v11 length];

  if (v12 > 9)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __65__NRTermsAcknowledgementRegistry_add_forDeviceID_withCompletion___block_invoke_2;
    v20[3] = &unk_1E86DACE8;
    v14 = v10;
    v21 = v14;
    v15 = [(NRTermsAcknowledgementRegistry *)self proxyWithErrorHandler:v20];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __65__NRTermsAcknowledgementRegistry_add_forDeviceID_withCompletion___block_invoke_189;
    v17[3] = &unk_1E86DAD10;
    v18 = v8;
    v19 = v14;
    [v15 add:v18 forDeviceID:v9 withCompletion:v17];
  }

  else
  {
    v13 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__NRTermsAcknowledgementRegistry_add_forDeviceID_withCompletion___block_invoke;
    block[3] = &unk_1E86DACC0;
    block[4] = self;
    v23 = v10;
    dispatch_async(v13, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __65__NRTermsAcknowledgementRegistry_add_forDeviceID_withCompletion___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  v4 = [objc_opt_class() errorWithEnum:10];
  (*(v2 + 16))(v2, v4);
}

void __65__NRTermsAcknowledgementRegistry_add_forDeviceID_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = nr_framework_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = nr_framework_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_1E0ADF000, v6, OS_LOG_TYPE_ERROR, "NRTermsAcknowledgementRegistry add:forEventID:withCompletion: XPC error %@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

void __65__NRTermsAcknowledgementRegistry_add_forDeviceID_withCompletion___block_invoke_189(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = nr_framework_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v6 = nr_framework_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        v9 = 138412546;
        v10 = v3;
        v11 = 2112;
        v12 = v8;
        _os_log_error_impl(&dword_1E0ADF000, v6, OS_LOG_TYPE_ERROR, "NRTermsAcknowledgementRegistry add:forEventID:withCompletion: returning error %@ event %@", &v9, 0x16u);
      }
    }
  }

  (*(*(a1 + 40) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

- (void)checkForAcknowledgement:(id)a3 forDeviceID:(id)a4 withCompletion:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 termsText];
  v12 = [v11 length];

  if (v12 > 9)
  {
    if ([v8 eventType])
    {
      v14 = [objc_opt_class() errorWithEnum:3];
      v15 = nr_framework_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

      if (v16)
      {
        v17 = nr_framework_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v29 = v14;
          v30 = 2112;
          v31 = v8;
          _os_log_error_impl(&dword_1E0ADF000, v17, OS_LOG_TYPE_ERROR, "NRTermsAcknowledgementRegistry checkForAcknowledgement:forEventID:withCompletion: exception %@ event %@", buf, 0x16u);
        }
      }

      v10[2](v10, 0, v14);
    }

    else
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __85__NRTermsAcknowledgementRegistry_checkForAcknowledgement_forDeviceID_withCompletion___block_invoke_190;
      v24[3] = &unk_1E86DACE8;
      v18 = v10;
      v25 = v18;
      v19 = [(NRTermsAcknowledgementRegistry *)self proxyWithErrorHandler:v24];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __85__NRTermsAcknowledgementRegistry_checkForAcknowledgement_forDeviceID_withCompletion___block_invoke_191;
      v21[3] = &unk_1E86DAD38;
      v22 = v8;
      v23 = v18;
      [v19 checkForAcknowledgement:v22 forDeviceID:v9 withCompletion:v21];
    }
  }

  else
  {
    v13 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__NRTermsAcknowledgementRegistry_checkForAcknowledgement_forDeviceID_withCompletion___block_invoke;
    block[3] = &unk_1E86DACC0;
    block[4] = self;
    v27 = v10;
    dispatch_async(v13, block);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __85__NRTermsAcknowledgementRegistry_checkForAcknowledgement_forDeviceID_withCompletion___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  v4 = [objc_opt_class() errorWithEnum:10];
  (*(v2 + 16))(v2, 0, v4);
}

void __85__NRTermsAcknowledgementRegistry_checkForAcknowledgement_forDeviceID_withCompletion___block_invoke_190(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = nr_framework_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = nr_framework_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_1E0ADF000, v6, OS_LOG_TYPE_ERROR, "NRTermsAcknowledgementRegistry checkForAcknowledgement:forEventID:withCompletion: XPC error %@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

void __85__NRTermsAcknowledgementRegistry_checkForAcknowledgement_forDeviceID_withCompletion___block_invoke_191(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = nr_framework_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = nr_framework_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        v10 = 138412546;
        v11 = v4;
        v12 = 2112;
        v13 = v9;
        _os_log_error_impl(&dword_1E0ADF000, v7, OS_LOG_TYPE_ERROR, "NRTermsAcknowledgementRegistry checkForAcknowledgement:forEventID:withCompletion: returning error %@ event %@", &v10, 0x16u);
      }
    }
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)errorStringWithEnum:(unint64_t)a3
{
  if (a3 > 0xA)
  {
    return @"🤷‍♂️";
  }

  else
  {
    return off_1E86DADA0[a3];
  }
}

+ (id)errorWithEnum:(unint64_t)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v5 = [NRTermsAcknowledgementRegistry errorStringWithEnum:?];
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 errorWithDomain:@"com.apple.nanoregistry.termsacknowledgementregistry" code:a3 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end