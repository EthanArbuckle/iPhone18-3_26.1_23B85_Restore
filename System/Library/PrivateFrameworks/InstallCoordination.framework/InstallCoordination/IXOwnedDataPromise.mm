@interface IXOwnedDataPromise
- (BOOL)consumeSandboxExtensionWithError:(id *)a3;
- (BOOL)setTargetLastPathComponent:(id)a3 error:(id *)a4;
- (IXOwnedDataPromise)initWithCoder:(id)a3;
- (IXOwnedDataPromise)initWithName:(id)a3 client:(unint64_t)a4 diskSpaceNeeded:(unint64_t)a5;
- (IXOwnedDataPromise)initWithName:(id)a3 client:(unint64_t)a4 diskSpaceNeeded:(unint64_t)a5 location:(id)a6;
- (IXOwnedDataPromise)initWithSeed:(id)a3;
- (MILocationProtocol)location;
- (NSURL)stagedPath;
- (NSURL)stagingBaseDir;
- (id)description;
- (id)targetLastPathComponentWithError:(id *)a3;
- (void)_clientDelegate_didCancelWithError:(id)a3 client:(unint64_t)a4;
- (void)_clientDelegate_didComplete;
- (void)dealloc;
- (void)releaseSandboxExtension;
- (void)setStagedPath:(id)a3;
@end

@implementation IXOwnedDataPromise

- (IXOwnedDataPromise)initWithSeed:(id)a3
{
  v6.receiver = self;
  v6.super_class = IXOwnedDataPromise;
  v3 = [(IXDataPromise *)&v6 initWithSeed:a3];
  v4 = v3;
  if (v3)
  {
    [(IXOwnedDataPromise *)v3 _internalInit];
  }

  return v4;
}

- (IXOwnedDataPromise)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = IXOwnedDataPromise;
  v3 = [(IXDataPromise *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(IXOwnedDataPromise *)v3 _internalInit];
  }

  return v4;
}

- (IXOwnedDataPromise)initWithName:(id)a3 client:(unint64_t)a4 diskSpaceNeeded:(unint64_t)a5
{
  v10.receiver = self;
  v10.super_class = IXOwnedDataPromise;
  v5 = [(IXDataPromise *)&v10 initWithName:a3 client:a4 diskSpaceNeeded:a5];
  v6 = v5;
  if (v5)
  {
    [(IXOwnedDataPromise *)v5 _internalInit];
    v7 = objc_opt_new();
    v8 = [(IXDataPromise *)v6 seed];
    [v8 setLocation:v7];
  }

  return v6;
}

- (IXOwnedDataPromise)initWithName:(id)a3 client:(unint64_t)a4 diskSpaceNeeded:(unint64_t)a5 location:(id)a6
{
  v10 = a6;
  v15.receiver = self;
  v15.super_class = IXOwnedDataPromise;
  v11 = [(IXDataPromise *)&v15 initWithName:a3 client:a4 diskSpaceNeeded:a5];
  v12 = v11;
  if (v11)
  {
    [(IXOwnedDataPromise *)v11 _internalInit];
    v13 = [(IXDataPromise *)v12 seed];
    [v13 setLocation:v10];
  }

  return v12;
}

- (NSURL)stagedPath
{
  stagedPath = self->_stagedPath;
  if (!stagedPath)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __32__IXOwnedDataPromise_stagedPath__block_invoke;
    v6[3] = &unk_1E85C6500;
    v6[4] = self;
    v4 = [IXServerConnection retrySynchronousIPC:v6];
    stagedPath = self->_stagedPath;
  }

  return stagedPath;
}

id __32__IXOwnedDataPromise_stagedPath__block_invoke(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__9;
  v13 = __Block_byref_object_dispose__9;
  v14 = 0;
  v2 = +[IXServerConnection sharedConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__IXOwnedDataPromise_stagedPath__block_invoke_6;
  v8[3] = &unk_1E85C5560;
  v8[4] = &v9;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v8];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__IXOwnedDataPromise_stagedPath__block_invoke_7;
  v7[3] = &unk_1E85C64D8;
  v7[4] = *(a1 + 32);
  v7[5] = &v9;
  [v3 _remote_IXSOwnedDataPromise:v4 getStagedPath:v7];

  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __32__IXOwnedDataPromise_stagedPath__block_invoke_6(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[IXOwnedDataPromise stagedPath]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to get staged path: %@", &v7, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __32__IXOwnedDataPromise_stagedPath__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[IXOwnedDataPromise stagedPath]_block_invoke";
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to get staged path: %@", &v12, 0x16u);
    }

    v9 = (*(*(a1 + 40) + 8) + 40);
    v10 = a3;
  }

  else
  {
    v9 = (*(a1 + 32) + 40);
    v10 = a2;
  }

  objc_storeStrong(v9, v10);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setStagedPath:(id)a3
{
  objc_storeStrong(&self->_stagedPath, a3);
  v5 = a3;
  v8 = +[IXServerConnection sharedConnection];
  v6 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_4];
  v7 = [(IXDataPromise *)self uniqueIdentifier];
  [v6 _remote_IXSOwnedDataPromise:v7 setStagedPath:v5];
}

void __36__IXOwnedDataPromise_setStagedPath___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[IXOwnedDataPromise setStagedPath:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Failed to set staged item path: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (NSURL)stagingBaseDir
{
  v2 = [(IXDataPromise *)self seed];
  v3 = [v2 stagingBaseDir];

  return v3;
}

- (MILocationProtocol)location
{
  v2 = [(IXDataPromise *)self seed];
  v3 = [v2 location];

  return v3;
}

- (BOOL)consumeSandboxExtensionWithError:(id *)a3
{
  v5 = [(IXDataPromise *)self seed];
  v6 = [v5 sandboxExtensionToken];

  if (!v6)
  {
    v10 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(IXOwnedDataPromise *)v10 consumeSandboxExtensionWithError:v11, v12, v13, v14, v15, v16, v17];
    }

    _CreateError("[IXOwnedDataPromise consumeSandboxExtensionWithError:]", 152, @"IXErrorDomain", 4uLL, 0, 0, @"Attempting to consume a sandbox extension but don't have a sandbox extension token issued", v18, v31);
    v19 = LABEL_11:;
    if (a3)
    {
      goto LABEL_12;
    }

LABEL_18:
    v21 = 0;
    goto LABEL_19;
  }

  if (self->_sandboxExtensionHandle >= 1)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [IXOwnedDataPromise consumeSandboxExtensionWithError:];
    }

    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [IXOwnedDataPromise consumeSandboxExtensionWithError:];
    }

    _CreateError("[IXOwnedDataPromise consumeSandboxExtensionWithError:]", 158, @"IXErrorDomain", 4uLL, 0, 0, @"Attempting to consume a sandbox extension while already holding one for %@", v9, v6);
    goto LABEL_11;
  }

  v22 = +[IXFileManager defaultManager];
  v32 = 0;
  v23 = [v22 consumeSandboxExtension:v6 error:&v32];
  v19 = v32;

  if ((v23 & 0x8000000000000000) == 0)
  {
    self->_sandboxExtensionHandle = v23;
    v21 = 1;
    goto LABEL_19;
  }

  v24 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [(IXOwnedDataPromise *)self consumeSandboxExtensionWithError:v19, v24];
  }

  v25 = [(IXDataPromise *)self seed];
  v26 = [v25 stagingBaseDir];
  v27 = [v26 path];
  v29 = _CreateError("[IXOwnedDataPromise consumeSandboxExtensionWithError:]", 166, @"IXErrorDomain", 1uLL, v19, 0, @"Failed to get access to installcoordinationd's staging directory at %@", v28, v27);

  v19 = v29;
  if (!a3)
  {
    goto LABEL_18;
  }

LABEL_12:
  v20 = v19;
  v21 = 0;
  *a3 = v19;
LABEL_19:

  return v21;
}

- (BOOL)setTargetLastPathComponent:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__9;
  v28 = __Block_byref_object_dispose__9;
  v29 = 0;
  v7 = +[IXServerConnection sharedConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __55__IXOwnedDataPromise_setTargetLastPathComponent_error___block_invoke;
  v21[3] = &unk_1E85C58D0;
  v8 = v6;
  v22 = v8;
  v23 = &v24;
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v21];
  v10 = [(IXDataPromise *)self uniqueIdentifier];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __55__IXOwnedDataPromise_setTargetLastPathComponent_error___block_invoke_19;
  v18 = &unk_1E85C58D0;
  v11 = v8;
  v19 = v11;
  v20 = &v24;
  [v9 _remote_IXSOwnedDataPromise:v10 setTargetLastPathComponent:v11 withCompletion:&v15];

  v12 = v25[5];
  if (!a4)
  {
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_5:
    [(IXOwnedDataPromise *)self setTargetLastPathComponent:v11, v15, v16, v17, v18];
    goto LABEL_6;
  }

  if (!v12)
  {
    goto LABEL_5;
  }

  *a4 = v12;
LABEL_6:
  v13 = v25[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v13;
}

void __55__IXOwnedDataPromise_setTargetLastPathComponent_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __55__IXOwnedDataPromise_setTargetLastPathComponent_error___block_invoke_cold_1(a1);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __55__IXOwnedDataPromise_setTargetLastPathComponent_error___block_invoke_19(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __55__IXOwnedDataPromise_setTargetLastPathComponent_error___block_invoke_cold_1(a1);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (id)targetLastPathComponentWithError:(id *)a3
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__9;
  v24 = __Block_byref_object_dispose__9;
  v25 = [(IXOwnedDataPromise *)self targetLastPathComponent];
  v5 = v21[5];
  if (!v5)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__9;
    v18 = __Block_byref_object_dispose__9;
    v19 = 0;
    v6 = +[IXServerConnection sharedConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__IXOwnedDataPromise_targetLastPathComponentWithError___block_invoke;
    v13[3] = &unk_1E85C5560;
    v13[4] = &v14;
    v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v13];
    v8 = [(IXDataPromise *)self uniqueIdentifier];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__IXOwnedDataPromise_targetLastPathComponentWithError___block_invoke_20;
    v12[3] = &unk_1E85C6528;
    v12[4] = &v14;
    v12[5] = &v20;
    [v7 _remote_IXSOwnedDataPromise:v8 getTargetLastPathComponent:v12];

    v9 = v21[5];
    if (a3)
    {
      if (!v9)
      {
        *a3 = v15[5];
LABEL_7:
        _Block_object_dispose(&v14, 8);

        v5 = v21[5];
        goto LABEL_8;
      }
    }

    else if (!v9)
    {
      goto LABEL_7;
    }

    [(IXOwnedDataPromise *)self setTargetLastPathComponent:?];
    goto LABEL_7;
  }

LABEL_8:
  v10 = v5;
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __55__IXOwnedDataPromise_targetLastPathComponentWithError___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __55__IXOwnedDataPromise_targetLastPathComponentWithError___block_invoke_cold_1(a1);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void __55__IXOwnedDataPromise_targetLastPathComponentWithError___block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __55__IXOwnedDataPromise_targetLastPathComponentWithError___block_invoke_20_cold_1();
    }

    v9 = 32;
  }

  else
  {
    v9 = 40;
    a3 = a2;
  }

  objc_storeStrong((*(*(a1 + v9) + 8) + 40), a3);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(IXDataPromise *)self name];
  v7 = [(IXDataPromise *)self seed];
  v8 = [v7 uniqueIdentifier];
  v9 = IXStringForClientID([(IXDataPromise *)self creatorIdentifier]);
  v10 = [(IXOwnedDataPromise *)self location];
  v11 = [v3 stringWithFormat:@"<%@<%p> name:%@ uuid:%@ creator:%@ location:%@>", v5, self, v6, v8, v9, v10];

  return v11;
}

- (void)releaseSandboxExtension
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: Failed to release sandbox extension: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(IXOwnedDataPromise *)self releaseSandboxExtension];
  v3.receiver = self;
  v3.super_class = IXOwnedDataPromise;
  [(IXDataPromise *)&v3 dealloc];
}

- (void)_clientDelegate_didComplete
{
  [(IXOwnedDataPromise *)self releaseSandboxExtension];
  v3.receiver = self;
  v3.super_class = IXOwnedDataPromise;
  [(IXDataPromise *)&v3 _clientDelegate_didComplete];
}

- (void)_clientDelegate_didCancelWithError:(id)a3 client:(unint64_t)a4
{
  v6 = a3;
  [(IXOwnedDataPromise *)self releaseSandboxExtension];
  v7.receiver = self;
  v7.super_class = IXOwnedDataPromise;
  [(IXDataPromise *)&v7 _clientDelegate_didCancelWithError:v6 client:a4];
}

- (void)consumeSandboxExtensionWithError:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [a1 seed];
  v6 = [v5 stagingBaseDir];
  v7 = [v6 path];
  v10[0] = 136315650;
  OUTLINED_FUNCTION_0_1();
  v11 = v8;
  v12 = a2;
  _os_log_error_impl(&dword_1DA47A000, a3, OS_LOG_TYPE_ERROR, "%s: Failed to get access to installcoordinationd's staging directory at %@ : %@", v10, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)consumeSandboxExtensionWithError:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(&dword_1DA47A000, v0, OS_LOG_TYPE_FAULT, "%s: Attempting to consume a sandbox extension while already holding one for %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)consumeSandboxExtensionWithError:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0_1();
  v4 = v0;
  v5 = 0;
  _os_log_error_impl(&dword_1DA47A000, v1, OS_LOG_TYPE_ERROR, "%s: Attempting to consume a sandbox extension while already holding one for %@ : %@", v3, 0x20u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)consumeSandboxExtensionWithError:(uint64_t)a3 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, a1, a3, "%s: Attempting to consume a sandbox extension but don't have a sandbox extension token issued : %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __55__IXOwnedDataPromise_setTargetLastPathComponent_error___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5 = 136315650;
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_6_0(&dword_1DA47A000, v2, v3, "%s: Failed to set target last path component to %@ : %@", v5);
  v4 = *MEMORY[0x1E69E9840];
}

void __55__IXOwnedDataPromise_targetLastPathComponentWithError___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(*(*(a1 + 32) + 8) + 40);
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v2, v3, "%s: Failed to get target last path component : %@", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __55__IXOwnedDataPromise_targetLastPathComponentWithError___block_invoke_20_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: Failed to get target last path component : %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

@end