@interface MCMContainerSchemaActionBase
+ (id)actionIdentifier;
+ (id)actionWithName:(id)name arguments:(id)arguments context:(id)context error:(id *)error;
+ (void)_resolveArguments:(id)arguments toPathArgument:(id *)argument context:(id)context;
+ (void)_resolveArguments:(id)arguments toSourcePathArgument:(id *)argument destPathArgument:(id *)pathArgument destFinalPathArgument:(id *)finalPathArgument context:(id)context;
- (BOOL)backupFileURL:(id)l error:(id *)error;
- (BOOL)fixAndRetryIfPermissionsErrorWithURL:(id)l error:(id *)error duringBlock:(id)block;
- (BOOL)makedirAtURL:(id)l followTerminalSymlink:(BOOL)symlink error:(id *)error;
- (BOOL)performWithError:(id *)error;
- (MCMContainerSchemaActionBase)initWithContext:(id)context;
- (MCMContainerSchemaContext)context;
- (MCMFileManagerCreatesDirectories)fmDir;
- (MCMFileManagerQuarantines)fmQuarantine;
- (NSString)description;
- (void)setFmDir:(id)dir;
- (void)setFmQuarantine:(id)quarantine;
@end

@implementation MCMContainerSchemaActionBase

- (void)setFmQuarantine:(id)quarantine
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_fmQuarantine = &self->_fmQuarantine;

  objc_storeStrong(p_fmQuarantine, quarantine);
}

- (MCMFileManagerQuarantines)fmQuarantine
{
  result = self->_fmQuarantine;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setFmDir:(id)dir
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_fmDir = &self->_fmDir;

  objc_storeStrong(p_fmDir, dir);
}

- (MCMFileManagerCreatesDirectories)fmDir
{
  result = self->_fmDir;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMContainerSchemaContext)context
{
  result = self->_context;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)performWithError:(id *)error
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 raise:v4 format:{@"%@ was called on the base class %@", v5, v7}];

  __break(1u);
  return result;
}

- (BOOL)fixAndRetryIfPermissionsErrorWithURL:(id)l error:(id *)error duringBlock:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  lCopy = l;
  blockCopy = block;
  context = [(MCMContainerSchemaActionBase *)self context];
  containerPath = [context containerPath];

  context2 = [(MCMContainerSchemaActionBase *)self context];
  identifier = [context2 identifier];

  context3 = [(MCMContainerSchemaActionBase *)self context];
  libraryRepair = [context3 libraryRepair];

  if (libraryRepair)
  {
    path = [lCopy path];
    containerRootURL = [containerPath containerRootURL];
    path2 = [containerRootURL path];
    v19 = [path hasPrefix:path2];

    context4 = [(MCMContainerSchemaActionBase *)self context];
    libraryRepair2 = [context4 libraryRepair];
    v22 = libraryRepair2;
    if (v19)
    {
      v23 = [libraryRepair2 fixAndRetryIfPermissionsErrorWithURL:lCopy containerPath:containerPath containerIdentifier:identifier error:error duringBlock:blockCopy];
    }

    else
    {
      v23 = [libraryRepair2 fixAndRetryIfPermissionsErrorWithURL:lCopy error:error duringBlock:blockCopy];
    }

    v24 = v23;
  }

  else
  {
    v24 = blockCopy[2](blockCopy, lCopy, error);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (BOOL)makedirAtURL:(id)l followTerminalSymlink:(BOOL)symlink error:(id *)error
{
  symlinkCopy = symlink;
  v69 = *MEMORY[0x1E69E9840];
  lCopy = l;
  context = [(MCMContainerSchemaActionBase *)self context];
  containerPath = [context containerPath];
  containerDataURL = [containerPath containerDataURL];
  path = [containerDataURL path];

  v10 = lCopy;
  memset(v68, 0, 144);
  v11 = (*(*MEMORY[0x1E69E9990] + 48))(120);
  v50 = v10;
  if (v11 < 1)
  {
    v22 = 0;
LABEL_19:
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __73__MCMContainerSchemaActionBase_makedirAtURL_followTerminalSymlink_error___block_invoke_182;
    v53[3] = &unk_1E86B0B98;
    v54 = v50;
    v41 = __73__MCMContainerSchemaActionBase_makedirAtURL_followTerminalSymlink_error___block_invoke_182(v53);

    v42 = v54;
    v22 = v41;
    goto LABEL_20;
  }

  v12 = 0;
  v13 = v11 + 1;
  while ((*(*MEMORY[0x1E69E9988] + 456))([v10 fileSystemRepresentation], v68))
  {
    if (*__error() != 2)
    {
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __73__MCMContainerSchemaActionBase_makedirAtURL_followTerminalSymlink_error___block_invoke_174;
      v57[3] = &unk_1E86B0B98;
      v10 = v10;
      v58 = v10;
      v22 = __73__MCMContainerSchemaActionBase_makedirAtURL_followTerminalSymlink_error___block_invoke_174(v57);

      v42 = v58;
      goto LABEL_20;
    }

    v14 = +[MCMFileManager defaultManager];
    context2 = [(MCMContainerSchemaActionBase *)self context];
    posixMode = [context2 posixMode];
    context3 = [(MCMContainerSchemaActionBase *)self context];
    posixOwner = [context3 posixOwner];
    context4 = [(MCMContainerSchemaActionBase *)self context];
    dataProtectionClass = [context4 dataProtectionClass];
    v67 = 0;
    v21 = [v14 createDirectoryAtURL:v10 withIntermediateDirectories:1 mode:posixMode owner:posixOwner dataProtectionClass:dataProtectionClass error:&v67];
    v22 = v67;

    if ((v21 & 1) == 0)
    {
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __73__MCMContainerSchemaActionBase_makedirAtURL_followTerminalSymlink_error___block_invoke;
      v63[3] = &unk_1E86B05C8;
      v10 = v10;
      v64 = v10;
      selfCopy = self;
      v66 = v22;
      v47 = v22;
      v22 = __73__MCMContainerSchemaActionBase_makedirAtURL_followTerminalSymlink_error___block_invoke(v63);

      v42 = v64;
      goto LABEL_20;
    }

    fmQuarantine = [(MCMContainerSchemaActionBase *)self fmQuarantine];
    v24 = [fmQuarantine quarantineNeededForDirectoryURL:v10];

    if (v24)
    {
      fmQuarantine2 = [(MCMContainerSchemaActionBase *)self fmQuarantine];
      v26 = containermanager_copy_global_configuration();
      csIdentifier = [v26 csIdentifier];
      v62 = v22;
      v28 = [fmQuarantine2 quarantineURL:v10 identifier:csIdentifier error:&v62];
      v29 = v62;

      if ((v28 & 1) == 0)
      {
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __73__MCMContainerSchemaActionBase_makedirAtURL_followTerminalSymlink_error___block_invoke_168;
        v59[3] = &unk_1E86B0BE8;
        v10 = v10;
        v60 = v10;
        v61 = v29;
        v48 = v29;
        v22 = __73__MCMContainerSchemaActionBase_makedirAtURL_followTerminalSymlink_error___block_invoke_168(v59);

        v42 = v60;
        goto LABEL_20;
      }

      v22 = v29;
    }

LABEL_16:
    --v13;
    v12 = v22;
    if (v13 <= 1)
    {
      goto LABEL_19;
    }
  }

  v30 = v68[2] & 0xF000;
  if (!symlinkCopy || v30 != 40960)
  {
    if (v30 == 0x4000 || ([v10 path], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "hasPrefix:", path), v38, !v39))
    {
      v44 = 1;
      goto LABEL_25;
    }

    v55 = v12;
    v40 = [(MCMContainerSchemaActionBase *)self backupFileURL:v10 error:&v55];
    v22 = v55;

    if (!v40)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v31 = +[MCMFileManager defaultManager];
  v56 = v12;
  v32 = [v31 targetOfSymbolicLinkAtURL:v10 error:&v56];
  v22 = v56;

  if (v32)
  {
    uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v34 = [v32 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

    v35 = MEMORY[0x1E695DFF8];
    uRLByDeletingLastPathComponent = [v10 URLByDeletingLastPathComponent];
    v37 = [v35 URLWithString:v34 relativeToURL:uRLByDeletingLastPathComponent];

    v10 = v37;
    goto LABEL_16;
  }

  v42 = 0;
LABEL_20:

LABEL_21:
  if (error)
  {
    v43 = v22;
    v44 = 0;
    *error = v22;
  }

  else
  {
    v44 = 0;
  }

  v12 = v22;
LABEL_25:

  v45 = *MEMORY[0x1E69E9840];
  return v44;
}

id __73__MCMContainerSchemaActionBase_makedirAtURL_followTerminalSymlink_error___block_invoke(uint64_t a1)
{
  v24[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) context];
  v5 = [v2 initWithFormat:@"Failed to create sub-dir at %@ (protClass: %d)", v3, objc_msgSend(v4, "dataProtectionClass")];

  v23[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMContainerSchemaActionBase makedirAtURL:followTerminalSymlink:error:]_block_invoke"];
  v24[0] = v6;
  v24[1] = &unk_1F5A766F0;
  v7 = *MEMORY[0x1E696A578];
  v23[1] = @"SourceFileLine";
  v23[2] = v7;
  v24[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];

  if (*(a1 + 48))
  {
    v9 = [v8 mutableCopy];
    [v9 setObject:*(a1 + 48) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v10 = [v9 copy];

    if (*(a1 + 48))
    {
      v11 = container_log_handle_for_category();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v12 = *(a1 + 48);
      *buf = 138543618;
      v20 = v5;
      v21 = 2114;
      v22 = v12;
      v13 = "%{public}@ (%{public}@)";
      v14 = v11;
      v15 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v10 = v8;
  }

  v11 = container_log_handle_for_category();
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v20 = v5;
  v13 = "%{public}@";
  v14 = v11;
  v15 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
LABEL_7:

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:6 userInfo:v10];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

id __73__MCMContainerSchemaActionBase_makedirAtURL_followTerminalSymlink_error___block_invoke_168(uint64_t a1)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to quarantine sub-dir at %@", *(a1 + 32)];
  v20[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMContainerSchemaActionBase makedirAtURL:followTerminalSymlink:error:]_block_invoke"];
  v21[0] = v3;
  v21[1] = &unk_1F5A76708;
  v4 = *MEMORY[0x1E696A578];
  v20[1] = @"SourceFileLine";
  v20[2] = v4;
  v21[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  if (*(a1 + 40))
  {
    v6 = [v5 mutableCopy];
    [v6 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v7 = [v6 copy];

    if (*(a1 + 40))
    {
      v8 = container_log_handle_for_category();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v9 = *(a1 + 40);
      *buf = 138543618;
      v17 = v2;
      v18 = 2114;
      v19 = v9;
      v10 = "%{public}@ (%{public}@)";
      v11 = v8;
      v12 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = container_log_handle_for_category();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v17 = v2;
  v10 = "%{public}@";
  v11 = v8;
  v12 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
LABEL_7:

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:169 userInfo:v7];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id __73__MCMContainerSchemaActionBase_makedirAtURL_followTerminalSymlink_error___block_invoke_174(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Failed to stat [%@] when creating directories", v3];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMContainerSchemaActionBase makedirAtURL:followTerminalSymlink:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A76720;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __73__MCMContainerSchemaActionBase_makedirAtURL_followTerminalSymlink_error___block_invoke_182(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"failed to resolve [%@] after %ld tries", v3, sysconf(120)];

  v11[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMContainerSchemaActionBase makedirAtURL:followTerminalSymlink:error:]_block_invoke"];
  v12[0] = v5;
  v12[1] = &unk_1F5A76738;
  v6 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v6;
  v12[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:62 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)backupFileURL:(id)l error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  lCopy = l;
  context = [(MCMContainerSchemaActionBase *)self context];
  containerPath = [context containerPath];
  containerDataURL = [containerPath containerDataURL];
  path = [containerDataURL path];

  path2 = [lCopy path];
  context2 = [(MCMContainerSchemaActionBase *)self context];
  homeDirectoryURL = [context2 homeDirectoryURL];
  path3 = [homeDirectoryURL path];
  v15 = [path2 hasPrefix:path3];

  if ((v15 & 1) == 0)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __52__MCMContainerSchemaActionBase_backupFileURL_error___block_invoke;
    v41[3] = &unk_1E86B0BE8;
    v42 = lCopy;
    selfCopy = self;
    v18 = __52__MCMContainerSchemaActionBase_backupFileURL_error___block_invoke(v41);
    v19 = 0;
    domain = v42;
    goto LABEL_5;
  }

  memset(&v47, 0, sizeof(v47));
  if (lstat([lCopy fileSystemRepresentation], &v47))
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __52__MCMContainerSchemaActionBase_backupFileURL_error___block_invoke_142;
    v39[3] = &unk_1E86B0B98;
    v16 = lCopy;
    v40 = v16;
    v17 = __52__MCMContainerSchemaActionBase_backupFileURL_error___block_invoke_142(v39);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __52__MCMContainerSchemaActionBase_backupFileURL_error___block_invoke_148;
    v36[3] = &unk_1E86B0BE8;
    v37 = v16;
    v38 = v17;
    v18 = __52__MCMContainerSchemaActionBase_backupFileURL_error___block_invoke_148(v36);

    v19 = 0;
    domain = v40;
    goto LABEL_5;
  }

  v22 = v47.st_mode & 0xF000;
  if (v22 != 0x4000 && v22 != 0x8000)
  {
    if (unlink([lCopy fileSystemRepresentation]) && *__error() != 2)
    {
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __52__MCMContainerSchemaActionBase_backupFileURL_error___block_invoke_154;
      v44[3] = &unk_1E86B0550;
      v30 = lCopy;
      v46 = v47;
      v45 = v30;
      v31 = __52__MCMContainerSchemaActionBase_backupFileURL_error___block_invoke_154(v44);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __52__MCMContainerSchemaActionBase_backupFileURL_error___block_invoke_160;
      v33[3] = &unk_1E86B0BE8;
      v34 = v30;
      v35 = v31;
      v18 = __52__MCMContainerSchemaActionBase_backupFileURL_error___block_invoke_160(v33);

      v19 = 0;
      domain = v45;
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  path4 = [lCopy path];
  v24 = [path4 hasPrefix:path];

  if (!v24)
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  v25 = +[MCMFileManager defaultManager];
  [v25 stripACLFromURL:lCopy error:0];

  v26 = +[MCMFileManager defaultManager];
  v32 = 0;
  v27 = [v26 removeItemAtURL:lCopy error:&v32];
  v18 = v32;

  if (v27)
  {
LABEL_17:
    v19 = 1;
    goto LABEL_18;
  }

  domain = [v18 domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A798]])
  {
    v19 = [v18 code] == 2;
  }

  else
  {
    v19 = 0;
  }

LABEL_5:

  if (error && !v19)
  {
    v21 = v18;
    v19 = 0;
    *error = v18;
  }

LABEL_18:

  v28 = *MEMORY[0x1E69E9840];
  return v19;
}

id __52__MCMContainerSchemaActionBase_backupFileURL_error___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [*(a1 + 40) context];
  v5 = [v4 homeDirectoryURL];
  v6 = [v5 path];
  v7 = [v2 initWithFormat:@"Request to backup file [%@] not in user's home directory: [%@]", v3, v6];

  v14[0] = @"FunctionName";
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMContainerSchemaActionBase backupFileURL:error:]_block_invoke"];
  v15[0] = v8;
  v15[1] = &unk_1F5A76678;
  v9 = *MEMORY[0x1E696A578];
  v14[1] = @"SourceFileLine";
  v14[2] = v9;
  v15[2] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:82 userInfo:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __52__MCMContainerSchemaActionBase_backupFileURL_error___block_invoke_142(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = __error();
  v5 = [v2 initWithFormat:@"Could not read file to back up: [%@]: %s", v3, strerror(*v4)];

  v12[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMContainerSchemaActionBase backupFileURL:error:]_block_invoke"];
  v13[0] = v6;
  v13[1] = &unk_1F5A76690;
  v7 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v7;
  v13[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __52__MCMContainerSchemaActionBase_backupFileURL_error___block_invoke_148(uint64_t a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not backup file: [%@]", v3];

  v13[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMContainerSchemaActionBase backupFileURL:error:]_block_invoke"];
  v14[0] = v5;
  v14[1] = &unk_1F5A766A8;
  v6 = *MEMORY[0x1E696A578];
  v13[1] = @"SourceFileLine";
  v13[2] = v6;
  v14[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  if (*(a1 + 40))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    v7 = v9;
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:82 userInfo:v7];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __52__MCMContainerSchemaActionBase_backupFileURL_error___block_invoke_154(uint64_t a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = *(a1 + 44);
  v5 = __error();
  v6 = [v2 initWithFormat:@"Could not unlink path to back up [%@], mode = 0x%x: %s", v3, v4, strerror(*v5)];

  v13[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMContainerSchemaActionBase backupFileURL:error:]_block_invoke"];
  v14[0] = v7;
  v14[1] = &unk_1F5A766C0;
  v8 = *MEMORY[0x1E696A578];
  v13[1] = @"SourceFileLine";
  v13[2] = v8;
  v14[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __52__MCMContainerSchemaActionBase_backupFileURL_error___block_invoke_160(uint64_t a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not backup file: [%@]", v3];

  v13[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMContainerSchemaActionBase backupFileURL:error:]_block_invoke"];
  v14[0] = v5;
  v14[1] = &unk_1F5A766D8;
  v6 = *MEMORY[0x1E696A578];
  v13[1] = @"SourceFileLine";
  v13[2] = v6;
  v14[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  if (*(a1 + 40))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    v7 = v9;
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:82 userInfo:v7];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (NSString)description
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = *MEMORY[0x1E69E9840];

  return [v2 stringWithFormat:@"<undefined action>"];
}

- (MCMContainerSchemaActionBase)initWithContext:(id)context
{
  v13 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = MCMContainerSchemaActionBase;
  v6 = [(MCMContainerSchemaActionBase *)&v12 init];
  if (v6)
  {
    v7 = +[MCMFileManager defaultManager];
    objc_storeStrong(&v6->_fmDir, v7);
    fmQuarantine = v6->_fmQuarantine;
    v6->_fmQuarantine = v7;
    v9 = v7;

    objc_storeStrong(&v6->_context, context);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (void)_resolveArguments:(id)arguments toPathArgument:(id *)argument context:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  firstObject = [arguments firstObject];
  string = [firstObject string];
  v9 = [string hasPrefix:@"/"];

  if ((v9 & 1) == 0)
  {
    containerPath = [contextCopy containerPath];
    containerDataURL = [containerPath containerDataURL];
    path = [containerDataURL path];
    string2 = [firstObject string];
    v14 = [path stringByAppendingPathComponent:string2];

    v15 = objc_alloc(objc_opt_class());
    firstObject = [v15 initWithString:v14];
  }

  if (argument)
  {
    v16 = firstObject;
    *argument = firstObject;
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (void)_resolveArguments:(id)arguments toSourcePathArgument:(id *)argument destPathArgument:(id *)pathArgument destFinalPathArgument:(id *)finalPathArgument context:(id)context
{
  v48 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  contextCopy = context;
  firstObject = [argumentsCopy firstObject];
  if (firstObject)
  {
    [argumentsCopy removeObjectAtIndex:0];
  }

  firstObject2 = [argumentsCopy firstObject];
  v14 = firstObject2;
  if (firstObject2)
  {
    v15 = firstObject2;
  }

  else
  {
    v15 = firstObject;
  }

  v16 = v15;

  v17 = v16;
  if (firstObject)
  {
    string = [firstObject string];
    v19 = [string hasPrefix:@"/"];

    if ((v19 & 1) == 0)
    {
      homeDirectoryURL = [contextCopy homeDirectoryURL];
      path = [homeDirectoryURL path];
      string2 = [firstObject string];
      v23 = [path stringByAppendingPathComponent:string2];

      v24 = objc_alloc(objc_opt_class());
      firstObject = [v24 initWithString:v23];
    }
  }

  if (!v17)
  {
    v27 = 0;
    if (!argument)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  string3 = [v17 string];
  v26 = [string3 hasPrefix:@"/"];

  if (v26)
  {
    v27 = v17;
    if (!argument)
    {
      goto LABEL_15;
    }

LABEL_14:
    v28 = firstObject;
    *argument = firstObject;
    goto LABEL_15;
  }

  finalPathArgumentCopy = finalPathArgument;
  string4 = [v17 string];
  containerPath = [contextCopy containerPath];
  containerDataURL = [containerPath containerDataURL];
  path2 = [containerDataURL path];
  v36 = [path2 stringByAppendingPathComponent:string4];

  v37 = objc_alloc(objc_opt_class());
  v27 = [v37 initWithString:v36];

  containerPath2 = [contextCopy containerPath];
  finalContainerPath = [contextCopy finalContainerPath];
  LOBYTE(containerDataURL) = [containerPath2 isEqual:finalContainerPath];

  v17 = v27;
  if ((containerDataURL & 1) == 0)
  {
    finalContainerPath2 = [contextCopy finalContainerPath];
    containerDataURL2 = [finalContainerPath2 containerDataURL];
    path3 = [containerDataURL2 path];
    [path3 stringByAppendingPathComponent:string4];
    v43 = v45 = string4;

    v44 = objc_alloc(objc_opt_class());
    v17 = [v44 initWithString:v43];

    string4 = v45;
  }

  finalPathArgument = finalPathArgumentCopy;
  if (argument)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (pathArgument)
  {
    v29 = v27;
    *pathArgument = v27;
  }

  if (finalPathArgument)
  {
    v30 = v17;
    *finalPathArgument = v17;
  }

  v31 = *MEMORY[0x1E69E9840];
}

+ (id)actionIdentifier
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return @"<unknown action>";
}

+ (id)actionWithName:(id)name arguments:(id)arguments context:(id)context error:(id *)error
{
  v34[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  nameCopy = name;
  v12 = [arguments mutableCopy];
  if (actionWithName_arguments_context_error__onceToken != -1)
  {
    dispatch_once(&actionWithName_arguments_context_error__onceToken, &__block_literal_global_6582);
  }

  lowercaseString = [nameCopy lowercaseString];

  v14 = [actionWithName_arguments_context_error__classLookup objectForKeyedSubscript:lowercaseString];
  if (v14)
  {
    v15 = [v14 alloc];
    if (v15)
    {
      v16 = v15;
      if ([v15 conformsToProtocol:&unk_1F5A838B0])
      {
        v33 = 0;
        v34[0] = 0;
        v32 = 0;
        [self _resolveArguments:v12 toSourcePathArgument:v34 destPathArgument:&v33 destFinalPathArgument:&v32 context:contextCopy];
        v17 = v34[0];
        v18 = v33;
        v19 = v32;
        v20 = [v16 initWithSourcePathArgument:v17 destinationPathArgument:v18 destFinalPathArgument:v19 context:contextCopy];
      }

      else
      {
        if (![v16 conformsToProtocol:&unk_1F5A7C7B8])
        {

          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __71__MCMContainerSchemaActionBase_actionWithName_arguments_context_error___block_invoke_2;
          v29[3] = &unk_1E86B0B98;
          v30 = lowercaseString;
          v21 = __71__MCMContainerSchemaActionBase_actionWithName_arguments_context_error___block_invoke_2(v29);
          v20 = 0;
          v17 = v30;
          goto LABEL_13;
        }

        v31 = 0;
        [self _resolveArguments:v12 toPathArgument:&v31 context:contextCopy];
        v17 = v31;
        v20 = [v16 initWithPathArgument:v17 context:contextCopy];
      }

      v21 = 0;
    }

    else
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __71__MCMContainerSchemaActionBase_actionWithName_arguments_context_error___block_invoke_128;
      v25[3] = &unk_1E86B0B98;
      v26 = lowercaseString;
      v21 = __71__MCMContainerSchemaActionBase_actionWithName_arguments_context_error___block_invoke_128(v25);
      v20 = 0;
      v17 = v26;
    }
  }

  else
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __71__MCMContainerSchemaActionBase_actionWithName_arguments_context_error___block_invoke_122;
    v27[3] = &unk_1E86B0B98;
    v28 = lowercaseString;
    v21 = __71__MCMContainerSchemaActionBase_actionWithName_arguments_context_error___block_invoke_122(v27);
    v20 = 0;
    v17 = v28;
  }

LABEL_13:

  if (error && !v20)
  {
    v22 = v21;
    *error = v21;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

id __71__MCMContainerSchemaActionBase_actionWithName_arguments_context_error___block_invoke_2(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown initializer for action [%@]", *(a1 + 32)];
  v11[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[MCMContainerSchemaActionBase actionWithName:arguments:context:error:]_block_invoke_2"];
  v12[0] = v2;
  v12[1] = &unk_1F5A76630;
  v3 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v3;
  v12[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:81 userInfo:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __71__MCMContainerSchemaActionBase_actionWithName_arguments_context_error___block_invoke_122(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown action [%@]", *(a1 + 32)];
  v11[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[MCMContainerSchemaActionBase actionWithName:arguments:context:error:]_block_invoke"];
  v12[0] = v2;
  v12[1] = &unk_1F5A76648;
  v3 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v3;
  v12[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:81 userInfo:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __71__MCMContainerSchemaActionBase_actionWithName_arguments_context_error___block_invoke_128(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"action [%@] missing argument", *(a1 + 32)];
  v11[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[MCMContainerSchemaActionBase actionWithName:arguments:context:error:]_block_invoke"];
  v12[0] = v2;
  v12[1] = &unk_1F5A76660;
  v3 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v3;
  v12[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v1;
    _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:81 userInfo:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void __71__MCMContainerSchemaActionBase_actionWithName_arguments_context_error___block_invoke()
{
  v12[8] = *MEMORY[0x1E69E9840];
  v0 = +[MCMContainerSchemaActionMove actionIdentifier];
  v11[0] = v0;
  v12[0] = objc_opt_class();
  v1 = +[MCMContainerSchemaActionMoveContents actionIdentifier];
  v11[1] = v1;
  v12[1] = objc_opt_class();
  v2 = +[MCMContainerSchemaActionCopy actionIdentifier];
  v11[2] = v2;
  v12[2] = objc_opt_class();
  v3 = +[MCMContainerSchemaActionCopyContents actionIdentifier];
  v11[3] = v3;
  v12[3] = objc_opt_class();
  v4 = +[MCMContainerSchemaActionSymlink actionIdentifier];
  v11[4] = v4;
  v12[4] = objc_opt_class();
  v5 = +[MCMContainerSchemaActionUnlink actionIdentifier];
  v11[5] = v5;
  v12[5] = objc_opt_class();
  v6 = +[MCMContainerSchemaActionMkdir actionIdentifier];
  v11[6] = v6;
  v12[6] = objc_opt_class();
  v7 = +[MCMContainerSchemaActionStopBackupExclude actionIdentifier];
  v11[7] = v7;
  v12[7] = objc_opt_class();
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:8];
  v9 = actionWithName_arguments_context_error__classLookup;
  actionWithName_arguments_context_error__classLookup = v8;

  v10 = *MEMORY[0x1E69E9840];
}

@end