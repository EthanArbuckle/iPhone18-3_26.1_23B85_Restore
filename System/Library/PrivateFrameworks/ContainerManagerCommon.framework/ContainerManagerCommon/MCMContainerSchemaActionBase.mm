@interface MCMContainerSchemaActionBase
+ (id)actionIdentifier;
+ (id)actionWithName:(id)a3 arguments:(id)a4 context:(id)a5 error:(id *)a6;
+ (void)_resolveArguments:(id)a3 toPathArgument:(id *)a4 context:(id)a5;
+ (void)_resolveArguments:(id)a3 toSourcePathArgument:(id *)a4 destPathArgument:(id *)a5 destFinalPathArgument:(id *)a6 context:(id)a7;
- (BOOL)backupFileURL:(id)a3 error:(id *)a4;
- (BOOL)fixAndRetryIfPermissionsErrorWithURL:(id)a3 error:(id *)a4 duringBlock:(id)a5;
- (BOOL)makedirAtURL:(id)a3 followTerminalSymlink:(BOOL)a4 error:(id *)a5;
- (BOOL)performWithError:(id *)a3;
- (MCMContainerSchemaActionBase)initWithContext:(id)a3;
- (MCMContainerSchemaContext)context;
- (MCMFileManagerCreatesDirectories)fmDir;
- (MCMFileManagerQuarantines)fmQuarantine;
- (NSString)description;
- (void)setFmDir:(id)a3;
- (void)setFmQuarantine:(id)a3;
@end

@implementation MCMContainerSchemaActionBase

- (void)setFmQuarantine:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_fmQuarantine = &self->_fmQuarantine;

  objc_storeStrong(p_fmQuarantine, a3);
}

- (MCMFileManagerQuarantines)fmQuarantine
{
  result = self->_fmQuarantine;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setFmDir:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_fmDir = &self->_fmDir;

  objc_storeStrong(p_fmDir, a3);
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

- (BOOL)performWithError:(id *)a3
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

- (BOOL)fixAndRetryIfPermissionsErrorWithURL:(id)a3 error:(id *)a4 duringBlock:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(MCMContainerSchemaActionBase *)self context];
  v11 = [v10 containerPath];

  v12 = [(MCMContainerSchemaActionBase *)self context];
  v13 = [v12 identifier];

  v14 = [(MCMContainerSchemaActionBase *)self context];
  v15 = [v14 libraryRepair];

  if (v15)
  {
    v16 = [v8 path];
    v17 = [v11 containerRootURL];
    v18 = [v17 path];
    v19 = [v16 hasPrefix:v18];

    v20 = [(MCMContainerSchemaActionBase *)self context];
    v21 = [v20 libraryRepair];
    v22 = v21;
    if (v19)
    {
      v23 = [v21 fixAndRetryIfPermissionsErrorWithURL:v8 containerPath:v11 containerIdentifier:v13 error:a4 duringBlock:v9];
    }

    else
    {
      v23 = [v21 fixAndRetryIfPermissionsErrorWithURL:v8 error:a4 duringBlock:v9];
    }

    v24 = v23;
  }

  else
  {
    v24 = v9[2](v9, v8, a4);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (BOOL)makedirAtURL:(id)a3 followTerminalSymlink:(BOOL)a4 error:(id *)a5
{
  v52 = a4;
  v69 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MCMContainerSchemaActionBase *)self context];
  v8 = [v7 containerPath];
  v9 = [v8 containerDataURL];
  v51 = [v9 path];

  v10 = v6;
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
    v15 = [(MCMContainerSchemaActionBase *)self context];
    v16 = [v15 posixMode];
    v17 = [(MCMContainerSchemaActionBase *)self context];
    v18 = [v17 posixOwner];
    v19 = [(MCMContainerSchemaActionBase *)self context];
    v20 = [v19 dataProtectionClass];
    v67 = 0;
    v21 = [v14 createDirectoryAtURL:v10 withIntermediateDirectories:1 mode:v16 owner:v18 dataProtectionClass:v20 error:&v67];
    v22 = v67;

    if ((v21 & 1) == 0)
    {
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __73__MCMContainerSchemaActionBase_makedirAtURL_followTerminalSymlink_error___block_invoke;
      v63[3] = &unk_1E86B05C8;
      v10 = v10;
      v64 = v10;
      v65 = self;
      v66 = v22;
      v47 = v22;
      v22 = __73__MCMContainerSchemaActionBase_makedirAtURL_followTerminalSymlink_error___block_invoke(v63);

      v42 = v64;
      goto LABEL_20;
    }

    v23 = [(MCMContainerSchemaActionBase *)self fmQuarantine];
    v24 = [v23 quarantineNeededForDirectoryURL:v10];

    if (v24)
    {
      v25 = [(MCMContainerSchemaActionBase *)self fmQuarantine];
      v26 = containermanager_copy_global_configuration();
      v27 = [v26 csIdentifier];
      v62 = v22;
      v28 = [v25 quarantineURL:v10 identifier:v27 error:&v62];
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
  if (!v52 || v30 != 40960)
  {
    if (v30 == 0x4000 || ([v10 path], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "hasPrefix:", v51), v38, !v39))
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
    v33 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v34 = [v32 stringByAddingPercentEncodingWithAllowedCharacters:v33];

    v35 = MEMORY[0x1E695DFF8];
    v36 = [v10 URLByDeletingLastPathComponent];
    v37 = [v35 URLWithString:v34 relativeToURL:v36];

    v10 = v37;
    goto LABEL_16;
  }

  v42 = 0;
LABEL_20:

LABEL_21:
  if (a5)
  {
    v43 = v22;
    v44 = 0;
    *a5 = v22;
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

- (BOOL)backupFileURL:(id)a3 error:(id *)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MCMContainerSchemaActionBase *)self context];
  v8 = [v7 containerPath];
  v9 = [v8 containerDataURL];
  v10 = [v9 path];

  v11 = [v6 path];
  v12 = [(MCMContainerSchemaActionBase *)self context];
  v13 = [v12 homeDirectoryURL];
  v14 = [v13 path];
  v15 = [v11 hasPrefix:v14];

  if ((v15 & 1) == 0)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __52__MCMContainerSchemaActionBase_backupFileURL_error___block_invoke;
    v41[3] = &unk_1E86B0BE8;
    v42 = v6;
    v43 = self;
    v18 = __52__MCMContainerSchemaActionBase_backupFileURL_error___block_invoke(v41);
    v19 = 0;
    v20 = v42;
    goto LABEL_5;
  }

  memset(&v47, 0, sizeof(v47));
  if (lstat([v6 fileSystemRepresentation], &v47))
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __52__MCMContainerSchemaActionBase_backupFileURL_error___block_invoke_142;
    v39[3] = &unk_1E86B0B98;
    v16 = v6;
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
    v20 = v40;
    goto LABEL_5;
  }

  v22 = v47.st_mode & 0xF000;
  if (v22 != 0x4000 && v22 != 0x8000)
  {
    if (unlink([v6 fileSystemRepresentation]) && *__error() != 2)
    {
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __52__MCMContainerSchemaActionBase_backupFileURL_error___block_invoke_154;
      v44[3] = &unk_1E86B0550;
      v30 = v6;
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
      v20 = v45;
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  v23 = [v6 path];
  v24 = [v23 hasPrefix:v10];

  if (!v24)
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  v25 = +[MCMFileManager defaultManager];
  [v25 stripACLFromURL:v6 error:0];

  v26 = +[MCMFileManager defaultManager];
  v32 = 0;
  v27 = [v26 removeItemAtURL:v6 error:&v32];
  v18 = v32;

  if (v27)
  {
LABEL_17:
    v19 = 1;
    goto LABEL_18;
  }

  v20 = [v18 domain];
  if ([v20 isEqualToString:*MEMORY[0x1E696A798]])
  {
    v19 = [v18 code] == 2;
  }

  else
  {
    v19 = 0;
  }

LABEL_5:

  if (a4 && !v19)
  {
    v21 = v18;
    v19 = 0;
    *a4 = v18;
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

- (MCMContainerSchemaActionBase)initWithContext:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
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

    objc_storeStrong(&v6->_context, a3);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (void)_resolveArguments:(id)a3 toPathArgument:(id *)a4 context:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = a5;
  v7 = [a3 firstObject];
  v8 = [v7 string];
  v9 = [v8 hasPrefix:@"/"];

  if ((v9 & 1) == 0)
  {
    v10 = [v18 containerPath];
    v11 = [v10 containerDataURL];
    v12 = [v11 path];
    v13 = [v7 string];
    v14 = [v12 stringByAppendingPathComponent:v13];

    v15 = objc_alloc(objc_opt_class());
    v7 = [v15 initWithString:v14];
  }

  if (a4)
  {
    v16 = v7;
    *a4 = v7;
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (void)_resolveArguments:(id)a3 toSourcePathArgument:(id *)a4 destPathArgument:(id *)a5 destFinalPathArgument:(id *)a6 context:(id)a7
{
  v48 = *MEMORY[0x1E69E9840];
  v47 = a3;
  v11 = a7;
  v12 = [v47 firstObject];
  if (v12)
  {
    [v47 removeObjectAtIndex:0];
  }

  v13 = [v47 firstObject];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  v16 = v15;

  v17 = v16;
  if (v12)
  {
    v18 = [v12 string];
    v19 = [v18 hasPrefix:@"/"];

    if ((v19 & 1) == 0)
    {
      v20 = [v11 homeDirectoryURL];
      v21 = [v20 path];
      v22 = [v12 string];
      v23 = [v21 stringByAppendingPathComponent:v22];

      v24 = objc_alloc(objc_opt_class());
      v12 = [v24 initWithString:v23];
    }
  }

  if (!v17)
  {
    v27 = 0;
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v25 = [v17 string];
  v26 = [v25 hasPrefix:@"/"];

  if (v26)
  {
    v27 = v17;
    if (!a4)
    {
      goto LABEL_15;
    }

LABEL_14:
    v28 = v12;
    *a4 = v12;
    goto LABEL_15;
  }

  v46 = a6;
  v32 = [v17 string];
  v33 = [v11 containerPath];
  v34 = [v33 containerDataURL];
  v35 = [v34 path];
  v36 = [v35 stringByAppendingPathComponent:v32];

  v37 = objc_alloc(objc_opt_class());
  v27 = [v37 initWithString:v36];

  v38 = [v11 containerPath];
  v39 = [v11 finalContainerPath];
  LOBYTE(v34) = [v38 isEqual:v39];

  v17 = v27;
  if ((v34 & 1) == 0)
  {
    v40 = [v11 finalContainerPath];
    v41 = [v40 containerDataURL];
    v42 = [v41 path];
    [v42 stringByAppendingPathComponent:v32];
    v43 = v45 = v32;

    v44 = objc_alloc(objc_opt_class());
    v17 = [v44 initWithString:v43];

    v32 = v45;
  }

  a6 = v46;
  if (a4)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (a5)
  {
    v29 = v27;
    *a5 = v27;
  }

  if (a6)
  {
    v30 = v17;
    *a6 = v17;
  }

  v31 = *MEMORY[0x1E69E9840];
}

+ (id)actionIdentifier
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return @"<unknown action>";
}

+ (id)actionWithName:(id)a3 arguments:(id)a4 context:(id)a5 error:(id *)a6
{
  v34[1] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a3;
  v12 = [a4 mutableCopy];
  if (actionWithName_arguments_context_error__onceToken != -1)
  {
    dispatch_once(&actionWithName_arguments_context_error__onceToken, &__block_literal_global_6582);
  }

  v13 = [v11 lowercaseString];

  v14 = [actionWithName_arguments_context_error__classLookup objectForKeyedSubscript:v13];
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
        [a1 _resolveArguments:v12 toSourcePathArgument:v34 destPathArgument:&v33 destFinalPathArgument:&v32 context:v10];
        v17 = v34[0];
        v18 = v33;
        v19 = v32;
        v20 = [v16 initWithSourcePathArgument:v17 destinationPathArgument:v18 destFinalPathArgument:v19 context:v10];
      }

      else
      {
        if (![v16 conformsToProtocol:&unk_1F5A7C7B8])
        {

          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __71__MCMContainerSchemaActionBase_actionWithName_arguments_context_error___block_invoke_2;
          v29[3] = &unk_1E86B0B98;
          v30 = v13;
          v21 = __71__MCMContainerSchemaActionBase_actionWithName_arguments_context_error___block_invoke_2(v29);
          v20 = 0;
          v17 = v30;
          goto LABEL_13;
        }

        v31 = 0;
        [a1 _resolveArguments:v12 toPathArgument:&v31 context:v10];
        v17 = v31;
        v20 = [v16 initWithPathArgument:v17 context:v10];
      }

      v21 = 0;
    }

    else
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __71__MCMContainerSchemaActionBase_actionWithName_arguments_context_error___block_invoke_128;
      v25[3] = &unk_1E86B0B98;
      v26 = v13;
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
    v28 = v13;
    v21 = __71__MCMContainerSchemaActionBase_actionWithName_arguments_context_error___block_invoke_122(v27);
    v20 = 0;
    v17 = v28;
  }

LABEL_13:

  if (a6 && !v20)
  {
    v22 = v21;
    *a6 = v21;
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