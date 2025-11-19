@interface IXPromisedAppReference
+ (id)acquireReferenceToAppWithIdentity:(id)a3 inDomain:(unint64_t)a4 forClient:(unint64_t)a5 ifMatchingPredicate:(id)a6 error:(id *)a7;
+ (id)acquireReferenceToAppWithIdentity:(id)a3 inDomain:(unint64_t)a4 forClient:(unint64_t)a5 matchingAppInRecord:(id)a6 error:(id *)a7;
- (IXApplicationIdentity)identity;
- (IXPromisedAppReference)initWithCoder:(id)a3;
- (IXPromisedAppReference)initWithName:(id)a3 client:(unint64_t)a4 forAppWithIdentity:(id)a5 inDomain:(unint64_t)a6 ifMatchingPredicate:(id)a7 error:(id *)a8;
- (IXPromisedAppReference)initWithSeed:(id)a3;
- (id)placeholderPromiseForInstallType:(unint64_t)a3 withError:(id *)a4;
- (unint64_t)installationDomain;
- (void)encodeWithCoder:(id)a3;
- (void)resetWithCompletion:(id)a3;
@end

@implementation IXPromisedAppReference

- (IXPromisedAppReference)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = IXPromisedAppReference;
  return [(IXOwnedDataPromise *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = IXPromisedAppReference;
  [(IXDataPromise *)&v3 encodeWithCoder:a3];
}

+ (id)acquireReferenceToAppWithIdentity:(id)a3 inDomain:(unint64_t)a4 forClient:(unint64_t)a5 ifMatchingPredicate:(id)a6 error:(id *)a7
{
  v11 = MEMORY[0x1E696AEC0];
  v12 = a6;
  v13 = a3;
  v14 = [v11 stringWithFormat:@"%@/%lu", v13, a4];
  v15 = [objc_alloc(objc_opt_class()) initWithName:v14 client:a5 forAppWithIdentity:v13 inDomain:a4 ifMatchingPredicate:v12 error:a7];

  return v15;
}

+ (id)acquireReferenceToAppWithIdentity:(id)a3 inDomain:(unint64_t)a4 forClient:(unint64_t)a5 matchingAppInRecord:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = [a6 uniqueInstallIdentifier];
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uniqueInstallIdentifier = %@", v13];
  v15 = [a1 acquireReferenceToAppWithIdentity:v12 inDomain:a4 forClient:a5 ifMatchingPredicate:v14 error:a7];

  return v15;
}

- (IXPromisedAppReference)initWithName:(id)a3 client:(unint64_t)a4 forAppWithIdentity:(id)a5 inDomain:(unint64_t)a6 ifMatchingPredicate:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = [v15 location];
  v37.receiver = self;
  v37.super_class = IXPromisedAppReference;
  v18 = [(IXOwnedDataPromise *)&v37 initWithName:v14 client:a4 diskSpaceNeeded:0 location:v17];

  if (!v18)
  {
    goto LABEL_7;
  }

  v19 = [(IXDataPromise *)v18 seed];
  [v19 setInstallationDomain:a6];

  v20 = [(IXDataPromise *)v18 seed];
  [v20 setIdentity:v15];

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__1;
  v35 = __Block_byref_object_dispose__1;
  v36 = 0;
  v21 = +[IXServerConnection sharedConnection];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __100__IXPromisedAppReference_initWithName_client_forAppWithIdentity_inDomain_ifMatchingPredicate_error___block_invoke;
  v30[3] = &unk_1E85C5560;
  v30[4] = &v31;
  v22 = [v21 synchronousRemoteObjectProxyWithErrorHandler:v30];
  v23 = [(IXDataPromise *)v18 seed];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __100__IXPromisedAppReference_initWithName_client_forAppWithIdentity_inDomain_ifMatchingPredicate_error___block_invoke_11;
  v27[3] = &unk_1E85C6040;
  v29 = &v31;
  v28 = v18;
  [v22 _remote_createAppReferenceDataPromiseWithSeed:v23 ifMatchingPredicate:v16 completion:v27];

  v24 = v32[5];
  if (!v24)
  {

    _Block_object_dispose(&v31, 8);
LABEL_7:
    v25 = v18;
    goto LABEL_8;
  }

  if (a8)
  {
    *a8 = v24;
  }

  _Block_object_dispose(&v31, 8);
  v25 = 0;
LABEL_8:

  return v25;
}

void __100__IXPromisedAppReference_initWithName_client_forAppWithIdentity_inDomain_ifMatchingPredicate_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[IXPromisedAppReference initWithName:client:forAppWithIdentity:inDomain:ifMatchingPredicate:error:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __100__IXPromisedAppReference_initWithName_client_forAppWithIdentity_inDomain_ifMatchingPredicate_error___block_invoke_11(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    [*(a1 + 32) _updateInitWithSeed:a2 notifyDaemon:0];
  }
}

- (id)placeholderPromiseForInstallType:(unint64_t)a3 withError:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = [(IXDataPromise *)self seed];
  v7 = [v6 identity];
  v8 = [v6 creatorIdentifier];
  v22 = 0;
  v9 = IXApplicationRecordForIdentityInDomain(v7, [v6 installationDomain], &v22);
  v10 = v22;
  if (v9)
  {
    v11 = [v9 URL];
    v21 = v10;
    v12 = [IXPlaceholder placeholderForInstallable:v11 client:v8 installType:a3 metadata:0 error:&v21];
    v13 = v21;
    v14 = v10;
    v10 = v11;
  }

  else
  {
    v15 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = MIStringForInstallationDomain();
      *buf = 136315906;
      v24 = "[IXPromisedAppReference placeholderPromiseForInstallType:withError:]";
      v25 = 2112;
      v26 = v7;
      v27 = 2112;
      v28 = v20;
      v29 = 2112;
      v30 = v10;
      _os_log_error_impl(&dword_1DA47A000, v15, OS_LOG_TYPE_ERROR, "%s: Could not get LSApplicationRecord for app with identity %@ in domain %@ : %@", buf, 0x2Au);
    }

    v14 = MIStringForInstallationDomain();
    v13 = _CreateError("[IXPromisedAppReference placeholderPromiseForInstallType:withError:]", 125, @"IXErrorDomain", 0x32uLL, v10, 0, @"Could not get LSApplicationRecord for app with identity %@ in domain %@", v16, v7);
    v12 = 0;
  }

  if (a4 && !v12)
  {
    v17 = v13;
    *a4 = v13;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)resetWithCompletion:(id)a3
{
  v3 = kIXLoggingSubsystem;
  v4 = a3;
  v5 = IXGetLoggingHandle(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [IXPromisedAppReference resetWithCompletion:v5];
  }

  v7 = _CreateError("[IXPromisedAppReference resetWithCompletion:]", 141, @"IXErrorDomain", 4uLL, 0, 0, @"Resetting a promised app referece doesn't make sense.", v6, v8);
  v4[2](v4, v7);
}

- (IXApplicationIdentity)identity
{
  v2 = [(IXDataPromise *)self seed];
  v3 = [v2 identity];

  return v3;
}

- (unint64_t)installationDomain
{
  v2 = [(IXDataPromise *)self seed];
  v3 = [v2 installationDomain];

  return v3;
}

- (IXPromisedAppReference)initWithSeed:(id)a3
{
  v4.receiver = self;
  v4.super_class = IXPromisedAppReference;
  return [(IXOwnedDataPromise *)&v4 initWithSeed:a3];
}

- (void)resetWithCompletion:(os_log_t)log .cold.1(os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[IXPromisedAppReference resetWithCompletion:]";
  v4 = 2112;
  v5 = 0;
  _os_log_error_impl(&dword_1DA47A000, log, OS_LOG_TYPE_ERROR, "%s: Resetting a promised app referece doesn't make sense. : %@", &v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

@end