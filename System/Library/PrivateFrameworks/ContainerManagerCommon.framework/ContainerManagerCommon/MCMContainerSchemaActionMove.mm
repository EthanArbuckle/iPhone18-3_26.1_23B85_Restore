@interface MCMContainerSchemaActionMove
+ (id)actionIdentifier;
- (BOOL)performWithError:(id *)error;
- (MCMContainerSchemaActionMove)initWithSourcePathArgument:(id)argument destinationPathArgument:(id)pathArgument destFinalPathArgument:(id)finalPathArgument context:(id)context;
- (NSString)description;
@end

@implementation MCMContainerSchemaActionMove

- (BOOL)performWithError:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  path = [(NSURL *)self->_sourceURL path];
  path2 = [(NSURL *)self->_destURL path];
  if ([path isEqualToString:path2])
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = path;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "ignoring attempt to move [%@] to itself", buf, 0xCu);
    }

    v8 = 0;
    goto LABEL_6;
  }

  v9 = self->_sourceURL;
  destURL = self->_destURL;
  v23 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __49__MCMContainerSchemaActionMove_performWithError___block_invoke;
  v19[3] = &unk_1E86B06E0;
  v19[4] = self;
  v20 = v9;
  v11 = path2;
  v21 = v11;
  v12 = path;
  v22 = v12;
  v13 = v9;
  LOBYTE(destURL) = [(MCMContainerSchemaActionBase *)self fixAndRetryIfPermissionsErrorWithURL:destURL error:&v23 duringBlock:v19];
  v8 = v23;

  if (destURL)
  {
LABEL_6:
    v14 = 1;
    goto LABEL_7;
  }

  v17 = container_log_handle_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v25 = v12;
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = v8;
    _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "failed to move [%@] to [%@]: %@", buf, 0x20u);
  }

  if (error)
  {
    v18 = v8;
    v14 = 0;
    *error = v8;
  }

  else
  {
    v14 = 0;
  }

LABEL_7:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t __49__MCMContainerSchemaActionMove_performWithError___block_invoke(void *a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__9003;
  v43 = __Block_byref_object_dispose__9004;
  v44 = 0;
  v6 = [v5 URLByDeletingLastPathComponent];
  v7 = a1[4];
  v38 = 0;
  v8 = [v7 makedirAtURL:v6 followTerminalSymlink:1 error:&v38];
  v9 = v38;
  if ((v8 & 1) == 0)
  {
    goto LABEL_19;
  }

  v10 = a1[4];
  v11 = a1[5];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __49__MCMContainerSchemaActionMove_performWithError___block_invoke_1;
  v36[3] = &unk_1E86B1090;
  v36[4] = &v39;
  v37 = v9;
  [v10 fixAndRetryIfPermissionsErrorWithURL:v11 error:&v37 duringBlock:v36];
  v12 = v37;

  v13 = v40[5];
  if (!v13)
  {
    v15 = [v12 domain];
    if ([v15 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v16 = [v12 code] == 2;

      if (v16)
      {

        v17 = container_log_handle_for_category();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v31 = a1[6];
          v30 = a1[7];
          *buf = 138412546;
          v46 = v30;
          v47 = 2112;
          v48 = v31;
          _os_log_debug_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_DEBUG, "not moving: [%@] because it does not exist; leaving destination [%@]", buf, 0x16u);
        }

        v12 = 0;
        goto LABEL_12;
      }
    }

    else
    {
    }

    goto LABEL_14;
  }

  if (![v13 isEqualToString:a1[6]])
  {
LABEL_14:
    v19 = +[MCMFileManager defaultManager];
    v20 = [v19 itemExistsAtURL:v5];

    if (!v20)
    {
      goto LABEL_17;
    }

    v21 = a1[4];
    v35 = v12;
    v22 = [v21 backupFileURL:v5 error:&v35];
    v9 = v35;

    if (v22)
    {
      v12 = v9;
LABEL_17:
      v24 = a1[4];
      v23 = a1[5];
      v34 = v12;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __49__MCMContainerSchemaActionMove_performWithError___block_invoke_3;
      v32[3] = &unk_1E86B10B8;
      v33 = v5;
      v18 = [v24 fixAndRetryIfPermissionsErrorWithURL:v23 error:&v34 duringBlock:v32];
      v9 = v34;

      if (!a3)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

LABEL_19:
    v18 = 0;
    if (!a3)
    {
LABEL_22:
      v12 = v9;
      goto LABEL_23;
    }

LABEL_20:
    if ((v18 & 1) == 0)
    {
      v25 = v9;
      v18 = 0;
      *a3 = v9;
    }

    goto LABEL_22;
  }

  v14 = container_log_handle_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v29 = a1[6];
    v28 = a1[7];
    *buf = 138412546;
    v46 = v28;
    v47 = 2112;
    v48 = v29;
    _os_log_debug_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_DEBUG, "not moving: [%@] because it is a symlink to [%@]", buf, 0x16u);
  }

LABEL_12:
  v18 = 1;
LABEL_23:
  _Block_object_dispose(&v39, 8);

  v26 = *MEMORY[0x1E69E9840];
  return v18;
}

BOOL __49__MCMContainerSchemaActionMove_performWithError___block_invoke_1(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = +[MCMFileManager defaultManager];
  v7 = [v6 targetOfSymbolicLinkAtURL:v5 error:a3];

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  result = *(*(*(a1 + 32) + 8) + 40) != 0;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __49__MCMContainerSchemaActionMove_performWithError___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = +[MCMFileManager defaultManager];
  v7 = [v6 moveItemIfExistsAtURL:v5 toURL:*(a1 + 32) error:a3];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (NSString)description
{
  v9 = *MEMORY[0x1E69E9840];
  actionIdentifier = [objc_opt_class() actionIdentifier];
  path = [(NSURL *)self->_sourceURL path];
  path2 = [(NSURL *)self->_destURL path];
  v6 = [actionIdentifier stringByAppendingFormat:@" [%@] → [%@]", path, path2];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (MCMContainerSchemaActionMove)initWithSourcePathArgument:(id)argument destinationPathArgument:(id)pathArgument destFinalPathArgument:(id)finalPathArgument context:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  argumentCopy = argument;
  pathArgumentCopy = pathArgument;
  v18.receiver = self;
  v18.super_class = MCMContainerSchemaActionMove;
  v11 = [(MCMContainerSchemaActionBase *)&v18 initWithContext:context];
  if (v11)
  {
    fileURL = [argumentCopy fileURL];
    sourceURL = v11->_sourceURL;
    v11->_sourceURL = fileURL;

    fileURL2 = [pathArgumentCopy fileURL];
    destURL = v11->_destURL;
    v11->_destURL = fileURL2;

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

  return @"move";
}

@end