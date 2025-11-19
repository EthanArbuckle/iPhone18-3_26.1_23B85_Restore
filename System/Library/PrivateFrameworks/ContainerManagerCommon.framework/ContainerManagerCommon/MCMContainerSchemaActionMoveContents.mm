@interface MCMContainerSchemaActionMoveContents
+ (id)actionIdentifier;
- (BOOL)performWithError:(id *)a3;
- (MCMContainerSchemaActionMoveContents)initWithSourcePathArgument:(id)a3 destinationPathArgument:(id)a4 destFinalPathArgument:(id)a5 context:(id)a6;
- (NSString)description;
@end

@implementation MCMContainerSchemaActionMoveContents

- (BOOL)performWithError:(id *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [(NSURL *)self->_sourceURL path];
  v6 = [(NSURL *)self->_destURL path];
  if ([v5 isEqualToString:v6])
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = v5;
      v21 = 2112;
      v22 = 0;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "ignoring attempt to move [%@] to itself: %@", buf, 0x16u);
    }

    v8 = 0;
    v9 = 1;
  }

  else
  {
    v10 = self->_sourceURL;
    destURL = self->_destURL;
    v17 = v10;
    v18 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__MCMContainerSchemaActionMoveContents_performWithError___block_invoke;
    v16[3] = &unk_1E86B10E0;
    v16[4] = self;
    v12 = v10;
    v9 = [(MCMContainerSchemaActionBase *)self fixAndRetryIfPermissionsErrorWithURL:destURL error:&v18 duringBlock:v16];
    v8 = v18;

    if (a3 && !v9)
    {
      v13 = v8;
      v9 = 0;
      *a3 = v8;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

BOOL __57__MCMContainerSchemaActionMoveContents_performWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v37 = a2;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__7315;
  v51 = __Block_byref_object_dispose__7316;
  v52 = 0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v45[4] = &v47;
  v46 = 0;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __57__MCMContainerSchemaActionMoveContents_performWithError___block_invoke_1;
  v45[3] = &unk_1E86B1090;
  v6 = [v4 fixAndRetryIfPermissionsErrorWithURL:v5 error:&v46 duringBlock:v45];
  v7 = v46;
  v8 = v7;
  if (v6)
  {
    v9 = *(a1 + 32);
    v44 = v8;
    v10 = [v9 makedirAtURL:v37 followTerminalSymlink:1 error:&v44];
    v11 = v44;

    if (v10)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v12 = v48[5];
      v13 = [v12 countByEnumeratingWithState:&v60 objects:v59 count:16];
      if (v13)
      {
        LOBYTE(v14) = 0;
        v36 = *v61;
        obj = v12;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v61 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v60 + 1) + 8 * i);
            v17 = *(a1 + 40);
            v18 = [v16 lastPathComponent];
            v19 = [v17 URLByAppendingPathComponent:v18 isDirectory:0];

            v20 = [v16 lastPathComponent];
            v21 = [v37 URLByAppendingPathComponent:v20 isDirectory:0];

            v43 = 0;
            v22 = +[MCMFileManager defaultManager];
            v42 = v11;
            LOBYTE(v20) = [v22 itemAtURL:v21 followSymlinks:1 exists:&v43 isDirectory:0 error:&v42];
            v23 = v42;

            if ((v20 & 1) == 0)
            {
              v11 = v23;
LABEL_25:

              v8 = v11;
              v27 = obj;
              goto LABEL_26;
            }

            if (v43 == 1)
            {
              v24 = *(a1 + 32);
              v41 = v23;
              v25 = [v24 backupFileURL:v21 error:&v41];
              v11 = v41;

              v23 = v11;
              if (!v25)
              {
                goto LABEL_25;
              }
            }

            v26 = *(a1 + 32);
            v40 = v23;
            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = __57__MCMContainerSchemaActionMoveContents_performWithError___block_invoke_2;
            v38[3] = &unk_1E86B10B8;
            v21 = v21;
            v39 = v21;
            LOBYTE(v26) = [v26 fixAndRetryIfPermissionsErrorWithURL:v19 error:&v40 duringBlock:v38];
            v11 = v40;

            if ((v26 & 1) == 0)
            {
              v28 = container_log_handle_for_category();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v32 = [v19 path];
                v33 = [v21 path];
                *buf = 138412802;
                v54 = v32;
                v55 = 2112;
                v56 = v33;
                v57 = 2112;
                v58 = v11;
                _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, "failed to move [%@] to [%@]: %@", buf, 0x20u);
              }

              LOBYTE(v14) = 0;
              goto LABEL_25;
            }

            LOBYTE(v14) = 1;
          }

          v12 = obj;
          v13 = [obj countByEnumeratingWithState:&v60 objects:v59 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_18;
    }

    LOBYTE(v14) = 0;
    v8 = v11;
  }

  else
  {
    v27 = [v7 domain];
    if ([v27 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v14 = [v8 code] == 2;

      if (v14)
      {

        v11 = 0;
LABEL_18:
        LOBYTE(v14) = 1;
        goto LABEL_31;
      }
    }

    else
    {
      LOBYTE(v14) = 0;
LABEL_26:
    }
  }

  if (a3 && !v14)
  {
    v29 = v8;
    LOBYTE(v14) = 0;
    *a3 = v8;
  }

  v11 = v8;
LABEL_31:
  _Block_object_dispose(&v47, 8);

  v30 = *MEMORY[0x1E69E9840];
  return v14;
}

BOOL __57__MCMContainerSchemaActionMoveContents_performWithError___block_invoke_1(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = +[MCMFileManager defaultManager];
  v7 = [v6 urlsForItemsInDirectoryAtURL:v5 error:a3];

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  result = *(*(*(a1 + 32) + 8) + 40) != 0;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __57__MCMContainerSchemaActionMoveContents_performWithError___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
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
  v3 = [objc_opt_class() actionIdentifier];
  v4 = [(NSURL *)self->_sourceURL path];
  v5 = [(NSURL *)self->_destURL path];
  v6 = [v3 stringByAppendingFormat:@" [%@] → [%@]", v4, v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (MCMContainerSchemaActionMoveContents)initWithSourcePathArgument:(id)a3 destinationPathArgument:(id)a4 destFinalPathArgument:(id)a5 context:(id)a6
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = MCMContainerSchemaActionMoveContents;
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

  return @"move-contents";
}

@end