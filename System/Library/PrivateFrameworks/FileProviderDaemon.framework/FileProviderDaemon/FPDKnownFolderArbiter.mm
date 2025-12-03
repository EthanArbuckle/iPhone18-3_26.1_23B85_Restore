@interface FPDKnownFolderArbiter
- (FPDKnownFolderArbiter)initWithServer:(id)server;
- (void)attachKnownFolders:(id)folders options:(unint64_t)options request:(id)request completionHandler:(id)handler;
- (void)claimKnownFolders:(id)folders domain:(id)domain localizedReason:(id)reason request:(id)request completionHandler:(id)handler;
- (void)detachKnownFolders:(id)folders request:(id)request completionHandler:(id)handler;
- (void)releaseKnownFolders:(unint64_t)folders domain:(id)domain localizedReason:(id)reason options:(unint64_t)options request:(id)request completionHandler:(id)handler;
- (void)selectNewDomain:(id)domain knownFolders:(unint64_t)folders skipReleasePrompt:(BOOL)prompt request:(id)request completionHandler:(id)handler;
@end

@implementation FPDKnownFolderArbiter

- (FPDKnownFolderArbiter)initWithServer:(id)server
{
  serverCopy = server;
  v10.receiver = self;
  v10.super_class = FPDKnownFolderArbiter;
  v5 = [(FPDKnownFolderArbiter *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_server, serverCopy);
    v7 = objc_opt_new();
    operationQueue = v6->_operationQueue;
    v6->_operationQueue = v7;

    [(NSOperationQueue *)v6->_operationQueue setName:@"Known Folder Arbiter"];
    [(NSOperationQueue *)v6->_operationQueue setMaxConcurrentOperationCount:1];
  }

  return v6;
}

- (void)detachKnownFolders:(id)folders request:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  foldersCopy = folders;
  v11 = [FPDClaimKnownFolderOperation alloc];
  WeakRetained = objc_loadWeakRetained(&self->_server);
  v13 = [(FPDClaimKnownFolderOperation *)v11 initWithDescriptors:foldersCopy server:WeakRetained request:requestCopy];

  LODWORD(foldersCopy) = [requestCopy qos];
  [(FPDClaimKnownFolderOperation *)v13 setQualityOfService:foldersCopy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__FPDKnownFolderArbiter_detachKnownFolders_request_completionHandler___block_invoke;
  v15[3] = &unk_1E83C17B8;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(FPOperation *)v13 setFinishedBlock:v15];
  [(NSOperationQueue *)self->_operationQueue addOperation:v13];
}

- (void)attachKnownFolders:(id)folders options:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  foldersCopy = folders;
  v13 = [FPDAttachKnownFolderOperation alloc];
  WeakRetained = objc_loadWeakRetained(&self->_server);
  v15 = [(FPDAttachKnownFolderOperation *)v13 initWithKnownFolderURLs:foldersCopy onlyForDomain:0 server:WeakRetained options:options request:requestCopy];

  LODWORD(options) = [requestCopy qos];
  [(FPDAttachKnownFolderOperation *)v15 setQualityOfService:options];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __78__FPDKnownFolderArbiter_attachKnownFolders_options_request_completionHandler___block_invoke;
  v17[3] = &unk_1E83C17B8;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [(FPOperation *)v15 setFinishedBlock:v17];
  [(NSOperationQueue *)self->_operationQueue addOperation:v15];
}

- (void)claimKnownFolders:(id)folders domain:(id)domain localizedReason:(id)reason request:(id)request completionHandler:(id)handler
{
  v46 = *MEMORY[0x1E69E9840];
  foldersCopy = folders;
  domainCopy = domain;
  reasonCopy = reason;
  requestCopy = request;
  handlerCopy = handler;
  v17 = fp_current_or_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    providerDomainID = [domainCopy providerDomainID];
    fp_obfuscatedProviderDomainID = [providerDomainID fp_obfuscatedProviderDomainID];
    *buf = 138412802;
    v41 = foldersCopy;
    v42 = 2114;
    v43 = fp_obfuscatedProviderDomainID;
    v44 = 2114;
    v45 = requestCopy;
    _os_log_debug_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] 🖥️  claiming known folders %@ from %{public}@ for %{public}@", buf, 0x20u);
  }

  desktopLocation = [foldersCopy desktopLocation];
  if (desktopLocation && (v19 = desktopLocation, [foldersCopy documentsLocation], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
  {
    volume = [domainCopy volume];
    role = [volume role];

    if (role == 1)
    {
      v23 = [FPDClaimKnownFolderOperation alloc];
      WeakRetained = objc_loadWeakRetained(&self->_server);
      v25 = [(FPDClaimKnownFolderOperation *)v23 initWithKnownFolderLocations:foldersCopy domain:domainCopy server:WeakRetained localizedReason:reasonCopy request:requestCopy];

      -[FPDClaimKnownFolderOperation setQualityOfService:](v25, "setQualityOfService:", [requestCopy qos]);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __92__FPDKnownFolderArbiter_claimKnownFolders_domain_localizedReason_request_completionHandler___block_invoke;
      v36[3] = &unk_1E83C17B8;
      v37 = handlerCopy;
      [(FPOperation *)v25 setFinishedBlock:v36];
      [(NSOperationQueue *)self->_operationQueue addOperation:v25];
    }

    else
    {
      provider = [domainCopy provider];
      v25 = [provider providerDomainForDomain:domainCopy];

      if ([(FPDClaimKnownFolderOperation *)v25 isiCloudDriveProvider])
      {
        v27 = FPLoc();
      }

      else
      {
        domainFullDisplayName = [(FPDClaimKnownFolderOperation *)v25 domainFullDisplayName];
        v27 = FPLoc();
      }

      v28 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A798];
      v38 = *MEMORY[0x1E696A578];
      v39 = v27;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:{1, domainFullDisplayName}];
      v31 = [v28 errorWithDomain:v29 code:18 userInfo:v30];
      (*(handlerCopy + 2))(handlerCopy, v31);
    }
  }

  else
  {
    v25 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"Desktop and Documents must be claimed"];
    (*(handlerCopy + 2))(handlerCopy, v25);
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)releaseKnownFolders:(unint64_t)folders domain:(id)domain localizedReason:(id)reason options:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  requestCopy = request;
  handlerCopy = handler;
  v16 = fp_current_or_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    providerDomainID = [domainCopy providerDomainID];
    fp_obfuscatedProviderDomainID = [providerDomainID fp_obfuscatedProviderDomainID];
    *buf = 67109634;
    foldersCopy = folders;
    v27 = 2114;
    v28 = fp_obfuscatedProviderDomainID;
    v29 = 2114;
    v30 = requestCopy;
    _os_log_debug_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] 🖥️  releasing known folders %x from %{public}@ for %{public}@", buf, 0x1Cu);
  }

  if ((~folders & 3) != 0)
  {
    v19 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"Desktop and Documents must be released together"];
    handlerCopy[2](handlerCopy, v19);
  }

  else
  {
    v17 = [FPDAttachKnownFolderOperation alloc];
    WeakRetained = objc_loadWeakRetained(&self->_server);
    v19 = [(FPDAttachKnownFolderOperation *)v17 initWithKnownFolders:folders onlyForDomain:domainCopy server:WeakRetained options:options request:requestCopy];

    -[FPDAttachKnownFolderOperation setQualityOfService:](v19, "setQualityOfService:", [requestCopy qos]);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __102__FPDKnownFolderArbiter_releaseKnownFolders_domain_localizedReason_options_request_completionHandler___block_invoke;
    v23[3] = &unk_1E83C17B8;
    v24 = handlerCopy;
    [(FPOperation *)v19 setFinishedBlock:v23];
    [(NSOperationQueue *)self->_operationQueue addOperation:v19];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)selectNewDomain:(id)domain knownFolders:(unint64_t)folders skipReleasePrompt:(BOOL)prompt request:(id)request completionHandler:(id)handler
{
  promptCopy = prompt;
  v39 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  requestCopy = request;
  handlerCopy = handler;
  v15 = fp_current_or_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    identifier = [domainCopy identifier];
    fp_obfuscatedProviderDomainID = [identifier fp_obfuscatedProviderDomainID];
    *buf = 138543874;
    v34 = fp_obfuscatedProviderDomainID;
    v35 = 1024;
    foldersCopy = folders;
    v37 = 2112;
    v38 = requestCopy;
    _os_log_debug_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] 🖥️  select %{public}@ to back known folders %x for %@", buf, 0x1Cu);
  }

  if ((~folders & 3) != 0)
  {
    v19 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"Desktop and Documents must be selected together"];
    handlerCopy[2](handlerCopy, v19);
  }

  else
  {
    if (promptCopy)
    {
      v16 = 0;
    }

    else
    {
      v16 = 2;
    }

    if (domainCopy)
    {
      v17 = [FPDClaimKnownFolderOperation alloc];
      WeakRetained = objc_loadWeakRetained(&self->_server);
      v19 = [(FPDClaimKnownFolderOperation *)v17 initWithKnownFolders:folders domain:domainCopy server:WeakRetained attachOptions:v16 request:requestCopy];

      -[FPDClaimKnownFolderOperation setQualityOfService:](v19, "setQualityOfService:", [requestCopy qos]);
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __98__FPDKnownFolderArbiter_selectNewDomain_knownFolders_skipReleasePrompt_request_completionHandler___block_invoke_2;
      v29 = &unk_1E83C17B8;
      v30 = handlerCopy;
      [(FPOperation *)v19 setFinishedBlock:&v26];
      [(NSOperationQueue *)self->_operationQueue addOperation:v19, v26, v27, v28, v29];
      v20 = v30;
    }

    else
    {
      v21 = [FPDAttachKnownFolderOperation alloc];
      v22 = objc_loadWeakRetained(&self->_server);
      v19 = [(FPDAttachKnownFolderOperation *)v21 initWithKnownFolders:folders onlyForDomain:0 server:v22 options:v16 | 1 request:requestCopy];

      -[FPDClaimKnownFolderOperation setQualityOfService:](v19, "setQualityOfService:", [requestCopy qos]);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __98__FPDKnownFolderArbiter_selectNewDomain_knownFolders_skipReleasePrompt_request_completionHandler___block_invoke;
      v31[3] = &unk_1E83C17B8;
      v32 = handlerCopy;
      [(FPOperation *)v19 setFinishedBlock:v31];
      [(NSOperationQueue *)self->_operationQueue addOperation:v19];
      v20 = v32;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

@end