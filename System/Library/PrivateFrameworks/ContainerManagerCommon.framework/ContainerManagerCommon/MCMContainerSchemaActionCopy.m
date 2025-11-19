@interface MCMContainerSchemaActionCopy
+ (id)actionIdentifier;
- (BOOL)performWithError:(id *)a3;
- (MCMContainerSchemaActionCopy)initWithSourcePathArgument:(id)a3 destinationPathArgument:(id)a4 destFinalPathArgument:(id)a5 context:(id)a6;
- (NSString)description;
@end

@implementation MCMContainerSchemaActionCopy

- (BOOL)performWithError:(id *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [(NSURL *)self->_sourceURL path];
  v6 = [(NSURL *)self->_destURL path];
  if ([v5 isEqualToString:v6])
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = v5;
      v22 = 2114;
      v23 = 0;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "ignoring attempt to copy [%@] to itself: %{public}@", buf, 0x16u);
    }

    v8 = 0;
    goto LABEL_6;
  }

  v9 = self->_sourceURL;
  destURL = self->_destURL;
  v18 = v9;
  v19 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __49__MCMContainerSchemaActionCopy_performWithError___block_invoke;
  v17[3] = &unk_1E86B10E0;
  v17[4] = self;
  v11 = v9;
  LOBYTE(destURL) = [(MCMContainerSchemaActionBase *)self fixAndRetryIfPermissionsErrorWithURL:destURL error:&v19 duringBlock:v17];
  v8 = v19;

  if (destURL)
  {
LABEL_6:
    v12 = 1;
    goto LABEL_7;
  }

  v15 = container_log_handle_for_category();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    v24 = 2114;
    v25 = v8;
    _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "failed to copy [%@] to [%@]: %{public}@", buf, 0x20u);
  }

  if (a3)
  {
    v16 = v8;
    v12 = 0;
    *a3 = v8;
  }

  else
  {
    v12 = 0;
  }

LABEL_7:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __49__MCMContainerSchemaActionCopy_performWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 URLByDeletingLastPathComponent];
  v7 = *(a1 + 32);
  v27[0] = 0;
  v8 = [v7 makedirAtURL:v6 followTerminalSymlink:1 error:v27];
  v9 = v27[0];
  if (v8)
  {
    v26 = 0;
    v10 = +[MCMFileManager defaultManager];
    v25 = v9;
    v11 = [v10 itemAtURL:v5 followSymlinks:1 exists:&v26 isDirectory:0 error:&v25];
    v12 = v25;

    if (!v11)
    {
      v17 = 0;
      v9 = v12;
      if (!a3)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    if (v26 != 1)
    {
      goto LABEL_6;
    }

    v13 = *(a1 + 32);
    v24 = v12;
    v14 = [v13 backupFileURL:v5 error:&v24];
    v9 = v24;

    if (v14)
    {
      v12 = v9;
LABEL_6:
      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      v23 = v12;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __49__MCMContainerSchemaActionCopy_performWithError___block_invoke_2;
      v21[3] = &unk_1E86B10B8;
      v22 = v5;
      v17 = [v16 fixAndRetryIfPermissionsErrorWithURL:v15 error:&v23 duringBlock:v21];
      v9 = v23;

      if (!a3)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  v17 = 0;
  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_11:
  if ((v17 & 1) == 0)
  {
    v18 = v9;
    *a3 = v9;
  }

LABEL_13:

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t __49__MCMContainerSchemaActionCopy_performWithError___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = +[MCMFileManager defaultManager];
  v7 = [v6 copyItemIfExistsAtURL:v5 toURL:*(a1 + 32) error:a3];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (NSString)description
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() actionIdentifier];
  v4 = [(NSURL *)self->_sourceURL path];
  v5 = [(NSURL *)self->_destURL path];
  v6 = [v3 stringByAppendingFormat:@" [%@] → [%@]", v4, v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (MCMContainerSchemaActionCopy)initWithSourcePathArgument:(id)a3 destinationPathArgument:(id)a4 destFinalPathArgument:(id)a5 context:(id)a6
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = MCMContainerSchemaActionCopy;
  v11 = [(MCMContainerSchemaActionBase *)&v18 initWithContext:a6];
  if (v11)
  {
    v12 = [v9 fileURL];
    sourceURL = v11->_sourceURL;
    v11->_sourceURL = v12;

    v14 = [v10 fileURL];
    destURL = v11->_destURL;
    v11->_destURL = v14;

    if (!v11->_sourceURL || !v11->_destURL)
    {

      v11 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (id)actionIdentifier
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];

  return @"copy";
}

@end