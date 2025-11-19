@interface IXUnregisterOSModuleToken
- (BOOL)acquireTerminationAssertionsWithError:(id *)a3;
- (BOOL)isValid;
- (IXUnregisterOSModuleToken)initWithModuleURL:(id)a3 options:(id)a4;
- (void)dealloc;
- (void)invalidate;
@end

@implementation IXUnregisterOSModuleToken

- (IXUnregisterOSModuleToken)initWithModuleURL:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = IXUnregisterOSModuleToken;
  v8 = [(IXUnregisterOSModuleToken *)&v13 init];
  if (v8)
  {
    v9 = [v6 copy];
    moduleURL = v8->_moduleURL;
    v8->_moduleURL = v9;

    objc_storeStrong(&v8->_options, a4);
    terminationAssertion = v8->_terminationAssertion;
    v8->_terminationAssertion = 0;
  }

  return v8;
}

- (BOOL)isValid
{
  v2 = [(IXUnregisterOSModuleToken *)self terminationAssertion];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)acquireTerminationAssertionsWithError:(id *)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = [(IXUnregisterOSModuleToken *)self moduleURL];
  v6 = [MEMORY[0x1E69635F8] enumeratorForApplicationsOnSameVolumeWithinDirectoryAtURL:v5 enumerationOptions:0 filteringOptions:0];
  if (!v6)
  {
    v23 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(IXUnregisterOSModuleToken *)v5 acquireTerminationAssertionsWithError:v23];
    }

    v24 = [v5 path];
    v19 = _CreateError("[IXUnregisterOSModuleToken acquireTerminationAssertionsWithError:]", 60, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to enumerate apps on module at %@", v25, v24);

    v17 = 0;
    v16 = 0;
    v7 = 0;
LABEL_15:
    if (!a3)
    {
      goto LABEL_17;
    }

LABEL_16:
    v26 = v19;
    *a3 = v19;
    goto LABEL_17;
  }

  v7 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = [v6 allObjects];
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v31 + 1) + 8 * i) bundleIdentifier];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);
  }

  v14 = MEMORY[0x1E696AEC0];
  v15 = [v5 path];
  v16 = [v14 stringWithFormat:@"installcoordinationd os-module-unregister moduleURL:%@", v15];

  v30 = 0;
  v17 = [[IXTerminationAssertion alloc] initForBundleIDs:v7 description:v16 terminationResistance:50 error:&v30];
  v18 = v30;
  v19 = v18;
  if (!v17)
  {
    goto LABEL_15;
  }

  v29 = v18;
  v20 = [v17 acquireAssertion:&v29];
  v21 = v29;

  if (v20)
  {
    [(IXUnregisterOSModuleToken *)self setTerminationAssertion:v17];
    v22 = 1;
    v19 = v21;
    goto LABEL_19;
  }

  v19 = v21;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (!v17)
  {
    v22 = 0;
    goto LABEL_21;
  }

  [v17 invalidate];
  v22 = 0;
LABEL_19:

LABEL_21:
  v27 = *MEMORY[0x1E69E9840];
  return v22;
}

- (void)invalidate
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(IXUnregisterOSModuleToken *)self terminationAssertion];
  v4 = v3;
  if (v3)
  {
    [v3 invalidate];
    [(IXUnregisterOSModuleToken *)self setTerminationAssertion:0];
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(IXUnregisterOSModuleToken *)self moduleURL];
      v7 = [v6 path];
      v10 = 136315394;
      v11 = "[IXUnregisterOSModuleToken invalidate]";
      v12 = 2112;
      v13 = v7;
      v8 = "%s: Invalidated unregister token for OSModule at %@";
LABEL_6:
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_INFO, v8, &v10, 0x16u);
    }
  }

  else
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(IXUnregisterOSModuleToken *)self moduleURL];
      v7 = [v6 path];
      v10 = 136315394;
      v11 = "[IXUnregisterOSModuleToken invalidate]";
      v12 = 2112;
      v13 = v7;
      v8 = "%s: Token for OSModule at %@ already invalidated";
      goto LABEL_6;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 8) path];
  v5[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(&dword_1DA47A000, a2, OS_LOG_TYPE_FAULT, "%s: IXUnregisterOSModuleToken deallocated without being invalidated for OSModule at %@", v5, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)acquireTerminationAssertionsWithError:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [a1 path];
  v6[0] = 136315650;
  OUTLINED_FUNCTION_0_1();
  v7 = v4;
  v8 = 0;
  _os_log_error_impl(&dword_1DA47A000, a2, OS_LOG_TYPE_ERROR, "%s: Failed to enumerate apps on module at %@ : %@", v6, 0x20u);

  v5 = *MEMORY[0x1E69E9840];
}

@end