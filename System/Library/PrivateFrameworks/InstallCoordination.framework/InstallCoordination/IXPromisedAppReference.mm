@interface IXPromisedAppReference
+ (id)acquireReferenceToAppWithIdentity:(id)identity inDomain:(unint64_t)domain forClient:(unint64_t)client ifMatchingPredicate:(id)predicate error:(id *)error;
+ (id)acquireReferenceToAppWithIdentity:(id)identity inDomain:(unint64_t)domain forClient:(unint64_t)client matchingAppInRecord:(id)record error:(id *)error;
- (IXApplicationIdentity)identity;
- (IXPromisedAppReference)initWithCoder:(id)coder;
- (IXPromisedAppReference)initWithName:(id)name client:(unint64_t)client forAppWithIdentity:(id)identity inDomain:(unint64_t)domain ifMatchingPredicate:(id)predicate error:(id *)error;
- (IXPromisedAppReference)initWithSeed:(id)seed;
- (id)placeholderPromiseForInstallType:(unint64_t)type withError:(id *)error;
- (unint64_t)installationDomain;
- (void)encodeWithCoder:(id)coder;
- (void)resetWithCompletion:(id)completion;
@end

@implementation IXPromisedAppReference

- (IXPromisedAppReference)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = IXPromisedAppReference;
  return [(IXOwnedDataPromise *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = IXPromisedAppReference;
  [(IXDataPromise *)&v3 encodeWithCoder:coder];
}

+ (id)acquireReferenceToAppWithIdentity:(id)identity inDomain:(unint64_t)domain forClient:(unint64_t)client ifMatchingPredicate:(id)predicate error:(id *)error
{
  v11 = MEMORY[0x1E696AEC0];
  predicateCopy = predicate;
  identityCopy = identity;
  domain = [v11 stringWithFormat:@"%@/%lu", identityCopy, domain];
  v15 = [objc_alloc(objc_opt_class()) initWithName:domain client:client forAppWithIdentity:identityCopy inDomain:domain ifMatchingPredicate:predicateCopy error:error];

  return v15;
}

+ (id)acquireReferenceToAppWithIdentity:(id)identity inDomain:(unint64_t)domain forClient:(unint64_t)client matchingAppInRecord:(id)record error:(id *)error
{
  identityCopy = identity;
  uniqueInstallIdentifier = [record uniqueInstallIdentifier];
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uniqueInstallIdentifier = %@", uniqueInstallIdentifier];
  v15 = [self acquireReferenceToAppWithIdentity:identityCopy inDomain:domain forClient:client ifMatchingPredicate:v14 error:error];

  return v15;
}

- (IXPromisedAppReference)initWithName:(id)name client:(unint64_t)client forAppWithIdentity:(id)identity inDomain:(unint64_t)domain ifMatchingPredicate:(id)predicate error:(id *)error
{
  nameCopy = name;
  identityCopy = identity;
  predicateCopy = predicate;
  location = [identityCopy location];
  v37.receiver = self;
  v37.super_class = IXPromisedAppReference;
  v18 = [(IXOwnedDataPromise *)&v37 initWithName:nameCopy client:client diskSpaceNeeded:0 location:location];

  if (!v18)
  {
    goto LABEL_7;
  }

  seed = [(IXDataPromise *)v18 seed];
  [seed setInstallationDomain:domain];

  seed2 = [(IXDataPromise *)v18 seed];
  [seed2 setIdentity:identityCopy];

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
  seed3 = [(IXDataPromise *)v18 seed];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __100__IXPromisedAppReference_initWithName_client_forAppWithIdentity_inDomain_ifMatchingPredicate_error___block_invoke_11;
  v27[3] = &unk_1E85C6040;
  v29 = &v31;
  v28 = v18;
  [v22 _remote_createAppReferenceDataPromiseWithSeed:seed3 ifMatchingPredicate:predicateCopy completion:v27];

  v24 = v32[5];
  if (!v24)
  {

    _Block_object_dispose(&v31, 8);
LABEL_7:
    v25 = v18;
    goto LABEL_8;
  }

  if (error)
  {
    *error = v24;
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

- (id)placeholderPromiseForInstallType:(unint64_t)type withError:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  seed = [(IXDataPromise *)self seed];
  identity = [seed identity];
  creatorIdentifier = [seed creatorIdentifier];
  v22 = 0;
  v9 = IXApplicationRecordForIdentityInDomain(identity, [seed installationDomain], &v22);
  v10 = v22;
  if (v9)
  {
    v11 = [v9 URL];
    v21 = v10;
    v12 = [IXPlaceholder placeholderForInstallable:v11 client:creatorIdentifier installType:type metadata:0 error:&v21];
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
      v26 = identity;
      v27 = 2112;
      v28 = v20;
      v29 = 2112;
      v30 = v10;
      _os_log_error_impl(&dword_1DA47A000, v15, OS_LOG_TYPE_ERROR, "%s: Could not get LSApplicationRecord for app with identity %@ in domain %@ : %@", buf, 0x2Au);
    }

    v14 = MIStringForInstallationDomain();
    v13 = _CreateError("[IXPromisedAppReference placeholderPromiseForInstallType:withError:]", 125, @"IXErrorDomain", 0x32uLL, v10, 0, @"Could not get LSApplicationRecord for app with identity %@ in domain %@", v16, identity);
    v12 = 0;
  }

  if (error && !v12)
  {
    v17 = v13;
    *error = v13;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)resetWithCompletion:(id)completion
{
  v3 = kIXLoggingSubsystem;
  completionCopy = completion;
  v5 = IXGetLoggingHandle(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [IXPromisedAppReference resetWithCompletion:v5];
  }

  v7 = _CreateError("[IXPromisedAppReference resetWithCompletion:]", 141, @"IXErrorDomain", 4uLL, 0, 0, @"Resetting a promised app referece doesn't make sense.", v6, v8);
  completionCopy[2](completionCopy, v7);
}

- (IXApplicationIdentity)identity
{
  seed = [(IXDataPromise *)self seed];
  identity = [seed identity];

  return identity;
}

- (unint64_t)installationDomain
{
  seed = [(IXDataPromise *)self seed];
  installationDomain = [seed installationDomain];

  return installationDomain;
}

- (IXPromisedAppReference)initWithSeed:(id)seed
{
  v4.receiver = self;
  v4.super_class = IXPromisedAppReference;
  return [(IXOwnedDataPromise *)&v4 initWithSeed:seed];
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