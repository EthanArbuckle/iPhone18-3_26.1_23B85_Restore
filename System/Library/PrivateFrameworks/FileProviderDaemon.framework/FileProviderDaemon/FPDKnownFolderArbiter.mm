@interface FPDKnownFolderArbiter
- (FPDKnownFolderArbiter)initWithServer:(id)a3;
- (void)attachKnownFolders:(id)a3 options:(unint64_t)a4 request:(id)a5 completionHandler:(id)a6;
- (void)claimKnownFolders:(id)a3 domain:(id)a4 localizedReason:(id)a5 request:(id)a6 completionHandler:(id)a7;
- (void)detachKnownFolders:(id)a3 request:(id)a4 completionHandler:(id)a5;
- (void)releaseKnownFolders:(unint64_t)a3 domain:(id)a4 localizedReason:(id)a5 options:(unint64_t)a6 request:(id)a7 completionHandler:(id)a8;
- (void)selectNewDomain:(id)a3 knownFolders:(unint64_t)a4 skipReleasePrompt:(BOOL)a5 request:(id)a6 completionHandler:(id)a7;
@end

@implementation FPDKnownFolderArbiter

- (FPDKnownFolderArbiter)initWithServer:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FPDKnownFolderArbiter;
  v5 = [(FPDKnownFolderArbiter *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_server, v4);
    v7 = objc_opt_new();
    operationQueue = v6->_operationQueue;
    v6->_operationQueue = v7;

    [(NSOperationQueue *)v6->_operationQueue setName:@"Known Folder Arbiter"];
    [(NSOperationQueue *)v6->_operationQueue setMaxConcurrentOperationCount:1];
  }

  return v6;
}

- (void)detachKnownFolders:(id)a3 request:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [FPDClaimKnownFolderOperation alloc];
  WeakRetained = objc_loadWeakRetained(&self->_server);
  v13 = [(FPDClaimKnownFolderOperation *)v11 initWithDescriptors:v10 server:WeakRetained request:v9];

  LODWORD(v10) = [v9 qos];
  [(FPDClaimKnownFolderOperation *)v13 setQualityOfService:v10];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__FPDKnownFolderArbiter_detachKnownFolders_request_completionHandler___block_invoke;
  v15[3] = &unk_1E83C17B8;
  v16 = v8;
  v14 = v8;
  [(FPOperation *)v13 setFinishedBlock:v15];
  [(NSOperationQueue *)self->_operationQueue addOperation:v13];
}

- (void)attachKnownFolders:(id)a3 options:(unint64_t)a4 request:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [FPDAttachKnownFolderOperation alloc];
  WeakRetained = objc_loadWeakRetained(&self->_server);
  v15 = [(FPDAttachKnownFolderOperation *)v13 initWithKnownFolderURLs:v12 onlyForDomain:0 server:WeakRetained options:a4 request:v11];

  LODWORD(a4) = [v11 qos];
  [(FPDAttachKnownFolderOperation *)v15 setQualityOfService:a4];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __78__FPDKnownFolderArbiter_attachKnownFolders_options_request_completionHandler___block_invoke;
  v17[3] = &unk_1E83C17B8;
  v18 = v10;
  v16 = v10;
  [(FPOperation *)v15 setFinishedBlock:v17];
  [(NSOperationQueue *)self->_operationQueue addOperation:v15];
}

- (void)claimKnownFolders:(id)a3 domain:(id)a4 localizedReason:(id)a5 request:(id)a6 completionHandler:(id)a7
{
  v46 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = fp_current_or_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v33 = [v13 providerDomainID];
    v34 = [v33 fp_obfuscatedProviderDomainID];
    *buf = 138412802;
    v41 = v12;
    v42 = 2114;
    v43 = v34;
    v44 = 2114;
    v45 = v15;
    _os_log_debug_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] 🖥️  claiming known folders %@ from %{public}@ for %{public}@", buf, 0x20u);
  }

  v18 = [v12 desktopLocation];
  if (v18 && (v19 = v18, [v12 documentsLocation], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
  {
    v21 = [v13 volume];
    v22 = [v21 role];

    if (v22 == 1)
    {
      v23 = [FPDClaimKnownFolderOperation alloc];
      WeakRetained = objc_loadWeakRetained(&self->_server);
      v25 = [(FPDClaimKnownFolderOperation *)v23 initWithKnownFolderLocations:v12 domain:v13 server:WeakRetained localizedReason:v14 request:v15];

      -[FPDClaimKnownFolderOperation setQualityOfService:](v25, "setQualityOfService:", [v15 qos]);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __92__FPDKnownFolderArbiter_claimKnownFolders_domain_localizedReason_request_completionHandler___block_invoke;
      v36[3] = &unk_1E83C17B8;
      v37 = v16;
      [(FPOperation *)v25 setFinishedBlock:v36];
      [(NSOperationQueue *)self->_operationQueue addOperation:v25];
    }

    else
    {
      v26 = [v13 provider];
      v25 = [v26 providerDomainForDomain:v13];

      if ([(FPDClaimKnownFolderOperation *)v25 isiCloudDriveProvider])
      {
        v27 = FPLoc();
      }

      else
      {
        v35 = [(FPDClaimKnownFolderOperation *)v25 domainFullDisplayName];
        v27 = FPLoc();
      }

      v28 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A798];
      v38 = *MEMORY[0x1E696A578];
      v39 = v27;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:{1, v35}];
      v31 = [v28 errorWithDomain:v29 code:18 userInfo:v30];
      (*(v16 + 2))(v16, v31);
    }
  }

  else
  {
    v25 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"Desktop and Documents must be claimed"];
    (*(v16 + 2))(v16, v25);
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)releaseKnownFolders:(unint64_t)a3 domain:(id)a4 localizedReason:(id)a5 options:(unint64_t)a6 request:(id)a7 completionHandler:(id)a8
{
  v31 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a7;
  v15 = a8;
  v16 = fp_current_or_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v21 = [v13 providerDomainID];
    v22 = [v21 fp_obfuscatedProviderDomainID];
    *buf = 67109634;
    v26 = a3;
    v27 = 2114;
    v28 = v22;
    v29 = 2114;
    v30 = v14;
    _os_log_debug_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] 🖥️  releasing known folders %x from %{public}@ for %{public}@", buf, 0x1Cu);
  }

  if ((~a3 & 3) != 0)
  {
    v19 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"Desktop and Documents must be released together"];
    v15[2](v15, v19);
  }

  else
  {
    v17 = [FPDAttachKnownFolderOperation alloc];
    WeakRetained = objc_loadWeakRetained(&self->_server);
    v19 = [(FPDAttachKnownFolderOperation *)v17 initWithKnownFolders:a3 onlyForDomain:v13 server:WeakRetained options:a6 request:v14];

    -[FPDAttachKnownFolderOperation setQualityOfService:](v19, "setQualityOfService:", [v14 qos]);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __102__FPDKnownFolderArbiter_releaseKnownFolders_domain_localizedReason_options_request_completionHandler___block_invoke;
    v23[3] = &unk_1E83C17B8;
    v24 = v15;
    [(FPOperation *)v19 setFinishedBlock:v23];
    [(NSOperationQueue *)self->_operationQueue addOperation:v19];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)selectNewDomain:(id)a3 knownFolders:(unint64_t)a4 skipReleasePrompt:(BOOL)a5 request:(id)a6 completionHandler:(id)a7
{
  v9 = a5;
  v39 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = fp_current_or_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v24 = [v12 identifier];
    v25 = [v24 fp_obfuscatedProviderDomainID];
    *buf = 138543874;
    v34 = v25;
    v35 = 1024;
    v36 = a4;
    v37 = 2112;
    v38 = v13;
    _os_log_debug_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] 🖥️  select %{public}@ to back known folders %x for %@", buf, 0x1Cu);
  }

  if ((~a4 & 3) != 0)
  {
    v19 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"Desktop and Documents must be selected together"];
    v14[2](v14, v19);
  }

  else
  {
    if (v9)
    {
      v16 = 0;
    }

    else
    {
      v16 = 2;
    }

    if (v12)
    {
      v17 = [FPDClaimKnownFolderOperation alloc];
      WeakRetained = objc_loadWeakRetained(&self->_server);
      v19 = [(FPDClaimKnownFolderOperation *)v17 initWithKnownFolders:a4 domain:v12 server:WeakRetained attachOptions:v16 request:v13];

      -[FPDClaimKnownFolderOperation setQualityOfService:](v19, "setQualityOfService:", [v13 qos]);
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __98__FPDKnownFolderArbiter_selectNewDomain_knownFolders_skipReleasePrompt_request_completionHandler___block_invoke_2;
      v29 = &unk_1E83C17B8;
      v30 = v14;
      [(FPOperation *)v19 setFinishedBlock:&v26];
      [(NSOperationQueue *)self->_operationQueue addOperation:v19, v26, v27, v28, v29];
      v20 = v30;
    }

    else
    {
      v21 = [FPDAttachKnownFolderOperation alloc];
      v22 = objc_loadWeakRetained(&self->_server);
      v19 = [(FPDAttachKnownFolderOperation *)v21 initWithKnownFolders:a4 onlyForDomain:0 server:v22 options:v16 | 1 request:v13];

      -[FPDClaimKnownFolderOperation setQualityOfService:](v19, "setQualityOfService:", [v13 qos]);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __98__FPDKnownFolderArbiter_selectNewDomain_knownFolders_skipReleasePrompt_request_completionHandler___block_invoke;
      v31[3] = &unk_1E83C17B8;
      v32 = v14;
      [(FPOperation *)v19 setFinishedBlock:v31];
      [(NSOperationQueue *)self->_operationQueue addOperation:v19];
      v20 = v32;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

@end