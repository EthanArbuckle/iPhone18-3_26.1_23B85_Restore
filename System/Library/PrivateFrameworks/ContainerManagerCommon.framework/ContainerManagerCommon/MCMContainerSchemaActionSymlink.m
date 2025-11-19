@interface MCMContainerSchemaActionSymlink
+ (id)actionIdentifier;
- (BOOL)performWithError:(id *)a3;
- (MCMContainerSchemaActionSymlink)initWithSourcePathArgument:(id)a3 destinationPathArgument:(id)a4 destFinalPathArgument:(id)a5 context:(id)a6;
- (NSString)description;
@end

@implementation MCMContainerSchemaActionSymlink

- (BOOL)performWithError:(id *)a3
{
  v32[1] = *MEMORY[0x1E69E9840];
  v4 = [(NSURL *)self->_finalLinkURL path];
  v5 = self->_targetPath;
  v6 = MEMORY[0x1E695DF70];
  v7 = [v4 pathComponents];
  v8 = [v6 arrayWithArray:v7];

  v9 = MEMORY[0x1E695DF70];
  v10 = [(NSString *)v5 pathComponents];
  v11 = [v9 arrayWithArray:v10];
  while (1)
  {

    if (![v8 count] || !objc_msgSend(v11, "count"))
    {
      break;
    }

    v10 = [v8 objectAtIndexedSubscript:0];
    v12 = [v11 objectAtIndexedSubscript:0];
    if (([v10 isEqualToString:v12] & 1) == 0)
    {

      break;
    }

    [v8 removeObjectAtIndex:0];
    [v11 removeObjectAtIndex:0];
  }

  if ([v8 count])
  {
    [v8 removeObjectAtIndex:0];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  if ([v8 count])
  {
    v14 = 0;
    do
    {
      [v13 addObject:@".."];
      ++v14;
    }

    while (v14 < [v8 count]);
  }

  [v13 addObjectsFromArray:v11];
  v15 = [MEMORY[0x1E696AEC0] pathWithComponents:v13];

  targetPath = self->_targetPath;
  self->_targetPath = v15;

  v17 = self->_targetPath;
  v18 = self->_finalLinkURL;
  linkURL = self->_linkURL;
  v32[0] = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __52__MCMContainerSchemaActionSymlink_performWithError___block_invoke;
  v29[3] = &unk_1E86B06B8;
  v29[4] = self;
  v20 = v18;
  v30 = v20;
  v21 = v17;
  v31 = v21;
  v22 = [(MCMContainerSchemaActionBase *)self fixAndRetryIfPermissionsErrorWithURL:linkURL error:v32 duringBlock:v29];
  v23 = v32[0];
  v24 = v23;
  if (a3 && !v22)
  {
    v25 = v23;
    *a3 = v24;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t __52__MCMContainerSchemaActionSymlink_performWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 URLByDeletingLastPathComponent];
  if (![*(a1 + 32) makedirAtURL:v6 followTerminalSymlink:1 error:a3])
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_7;
  }

  if (![*(a1 + 40) isEqual:v5])
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_9;
  }

  v7 = +[MCMFileManager defaultManager];
  v20[0] = 0;
  v8 = [v7 targetOfSymbolicLinkAtURL:v5 error:v20];
  v9 = v20[0];

  if (!v8)
  {
    v14 = [v9 domain];
    v15 = *MEMORY[0x1E696A798];
    if ([v14 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v16 = [v9 code];

      if (v16 == 17)
      {
        v8 = 0;
        if (([*(a1 + 32) backupFileURL:v5 error:a3] & 1) == 0)
        {
          goto LABEL_7;
        }

LABEL_9:
        v11 = +[MCMFileManager defaultManager];
        v10 = [v11 symbolicallyLinkURL:v5 toSymlinkTarget:*(a1 + 48) error:a3];

        goto LABEL_10;
      }
    }

    else
    {
    }

    v17 = [v9 domain];
    if ([v17 isEqualToString:v15])
    {
      v18 = [v9 code];

      if (v18 == 2)
      {
        v8 = 0;
        goto LABEL_9;
      }
    }

    else
    {
    }

    v19 = v9;
    v8 = 0;
    v10 = 0;
    *a3 = v9;
    goto LABEL_10;
  }

  if (([v8 isEqualToString:*(a1 + 48)] & 1) == 0)
  {
    if ([*(a1 + 32) backupFileURL:v5 error:a3])
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = 1;
LABEL_10:

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (NSString)description
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() actionIdentifier];
  v4 = [(NSURL *)self->_linkURL path];
  v5 = [v3 stringByAppendingFormat:@" [%@] → [%@]", v4, self->_targetPath];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (MCMContainerSchemaActionSymlink)initWithSourcePathArgument:(id)a3 destinationPathArgument:(id)a4 destFinalPathArgument:(id)a5 context:(id)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v22.receiver = self;
  v22.super_class = MCMContainerSchemaActionSymlink;
  v13 = [(MCMContainerSchemaActionBase *)&v22 initWithContext:a6];
  if (v13)
  {
    v14 = [v11 fileURL];
    linkURL = v13->_linkURL;
    v13->_linkURL = v14;

    v16 = [v12 fileURL];
    finalLinkURL = v13->_finalLinkURL;
    v13->_finalLinkURL = v16;

    v18 = [v10 string];
    targetPath = v13->_targetPath;
    v13->_targetPath = v18;

    if (!v13->_linkURL || !v13->_targetPath)
    {

      v13 = 0;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (id)actionIdentifier
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];

  return @"symlink";
}

@end