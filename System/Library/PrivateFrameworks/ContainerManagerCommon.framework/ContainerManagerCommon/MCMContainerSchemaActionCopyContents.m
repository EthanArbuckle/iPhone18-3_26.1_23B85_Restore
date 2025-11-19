@interface MCMContainerSchemaActionCopyContents
+ (id)actionIdentifier;
- (BOOL)performWithError:(id *)a3;
- (MCMContainerSchemaActionCopyContents)initWithSourcePathArgument:(id)a3 destinationPathArgument:(id)a4 destFinalPathArgument:(id)a5 context:(id)a6;
- (NSString)description;
@end

@implementation MCMContainerSchemaActionCopyContents

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
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "ignoring attempt to copy [%@] to itself: %@", buf, 0x16u);
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
    v16[2] = __57__MCMContainerSchemaActionCopyContents_performWithError___block_invoke;
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

uint64_t __57__MCMContainerSchemaActionCopyContents_performWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v44 = a2;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__14291;
  v58 = __Block_byref_object_dispose__14292;
  v59 = 0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v52[4] = &v54;
  v53 = 0;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __57__MCMContainerSchemaActionCopyContents_performWithError___block_invoke_1;
  v52[3] = &unk_1E86B1090;
  v6 = [v4 fixAndRetryIfPermissionsErrorWithURL:v5 error:&v53 duringBlock:v52];
  v7 = v53;
  v8 = v7;
  if (v6)
  {
    v9 = *(a1 + 32);
    v51 = v8;
    v10 = [v9 makedirAtURL:v44 followTerminalSymlink:1 error:&v51];
    v11 = v51;

    if (v10)
    {
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v12 = v55[5];
      v13 = [v12 countByEnumeratingWithState:&v67 objects:v66 count:16];
      if (v13)
      {
        v43 = *v68;
        *&v14 = 138412802;
        v40 = v14;
        obj = v12;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v68 != v43)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v67 + 1) + 8 * i);
            v17 = *(a1 + 40);
            v18 = [v16 lastPathComponent];
            v19 = [v17 URLByAppendingPathComponent:v18 isDirectory:0];

            v20 = [v16 lastPathComponent];
            v21 = [v44 URLByAppendingPathComponent:v20 isDirectory:0];

            v50 = 0;
            v22 = +[MCMFileManager defaultManager];
            v49 = v11;
            LOBYTE(v17) = [v22 itemAtURL:v21 followSymlinks:1 exists:&v50 isDirectory:0 error:&v49];
            v23 = v49;

            if ((v17 & 1) == 0)
            {
              v11 = v23;
LABEL_27:

              v32 = obj;
              goto LABEL_28;
            }

            if (v50 == 1)
            {
              v24 = *(a1 + 32);
              v48 = v23;
              v25 = [v24 backupFileURL:v21 error:&v48];
              v11 = v48;

              if (!v25)
              {
                goto LABEL_27;
              }
            }

            else
            {
              v11 = v23;
            }

            v26 = *(a1 + 32);
            v47 = 0;
            v45[0] = MEMORY[0x1E69E9820];
            v45[1] = 3221225472;
            v45[2] = __57__MCMContainerSchemaActionCopyContents_performWithError___block_invoke_2;
            v45[3] = &unk_1E86B10B8;
            v27 = v21;
            v46 = v27;
            LOBYTE(v26) = [v26 fixAndRetryIfPermissionsErrorWithURL:v19 error:&v47 duringBlock:v45];
            v28 = v47;
            if ((v26 & 1) == 0)
            {
              v29 = container_log_handle_for_category();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                v30 = [v19 path];
                v31 = [v27 path];
                *buf = v40;
                v61 = v30;
                v62 = 2112;
                v63 = v31;
                v64 = 2112;
                v65 = v28;
                _os_log_error_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_ERROR, "failed to copy [%@] to [%@]: %@", buf, 0x20u);
              }
            }
          }

          v12 = obj;
          v13 = [obj countByEnumeratingWithState:&v67 objects:v66 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_23;
    }
  }

  else
  {
    v32 = [v7 domain];
    if ([v32 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v33 = [v8 code];
      v34 = v32;
      v35 = v33 == 2;

      if (v35)
      {

        v11 = 0;
LABEL_23:
        v36 = 1;
        goto LABEL_32;
      }

      v11 = v8;
    }

    else
    {
      v11 = v8;
LABEL_28:
    }
  }

  if (a3)
  {
    v37 = v11;
    v36 = 0;
    *a3 = v11;
  }

  else
  {
    v36 = 0;
  }

LABEL_32:

  _Block_object_dispose(&v54, 8);
  v38 = *MEMORY[0x1E69E9840];
  return v36;
}

BOOL __57__MCMContainerSchemaActionCopyContents_performWithError___block_invoke_1(uint64_t a1, void *a2, uint64_t a3)
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

uint64_t __57__MCMContainerSchemaActionCopyContents_performWithError___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
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

- (MCMContainerSchemaActionCopyContents)initWithSourcePathArgument:(id)a3 destinationPathArgument:(id)a4 destFinalPathArgument:(id)a5 context:(id)a6
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = MCMContainerSchemaActionCopyContents;
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

  return @"copy-contents";
}

@end