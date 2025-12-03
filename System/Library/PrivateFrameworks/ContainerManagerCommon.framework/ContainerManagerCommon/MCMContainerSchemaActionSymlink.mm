@interface MCMContainerSchemaActionSymlink
+ (id)actionIdentifier;
- (BOOL)performWithError:(id *)error;
- (MCMContainerSchemaActionSymlink)initWithSourcePathArgument:(id)argument destinationPathArgument:(id)pathArgument destFinalPathArgument:(id)finalPathArgument context:(id)context;
- (NSString)description;
@end

@implementation MCMContainerSchemaActionSymlink

- (BOOL)performWithError:(id *)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  path = [(NSURL *)self->_finalLinkURL path];
  v5 = self->_targetPath;
  v6 = MEMORY[0x1E695DF70];
  pathComponents = [path pathComponents];
  v8 = [v6 arrayWithArray:pathComponents];

  v9 = MEMORY[0x1E695DF70];
  pathComponents2 = [(NSString *)v5 pathComponents];
  v11 = [v9 arrayWithArray:pathComponents2];
  while (1)
  {

    if (![v8 count] || !objc_msgSend(v11, "count"))
    {
      break;
    }

    pathComponents2 = [v8 objectAtIndexedSubscript:0];
    v12 = [v11 objectAtIndexedSubscript:0];
    if (([pathComponents2 isEqualToString:v12] & 1) == 0)
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

  array = [MEMORY[0x1E695DF70] array];
  if ([v8 count])
  {
    v14 = 0;
    do
    {
      [array addObject:@".."];
      ++v14;
    }

    while (v14 < [v8 count]);
  }

  [array addObjectsFromArray:v11];
  v15 = [MEMORY[0x1E696AEC0] pathWithComponents:array];

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
  if (error && !v22)
  {
    v25 = v23;
    *error = v24;
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
  actionIdentifier = [objc_opt_class() actionIdentifier];
  path = [(NSURL *)self->_linkURL path];
  v5 = [actionIdentifier stringByAppendingFormat:@" [%@] → [%@]", path, self->_targetPath];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (MCMContainerSchemaActionSymlink)initWithSourcePathArgument:(id)argument destinationPathArgument:(id)pathArgument destFinalPathArgument:(id)finalPathArgument context:(id)context
{
  v23 = *MEMORY[0x1E69E9840];
  argumentCopy = argument;
  pathArgumentCopy = pathArgument;
  finalPathArgumentCopy = finalPathArgument;
  v22.receiver = self;
  v22.super_class = MCMContainerSchemaActionSymlink;
  v13 = [(MCMContainerSchemaActionBase *)&v22 initWithContext:context];
  if (v13)
  {
    fileURL = [pathArgumentCopy fileURL];
    linkURL = v13->_linkURL;
    v13->_linkURL = fileURL;

    fileURL2 = [finalPathArgumentCopy fileURL];
    finalLinkURL = v13->_finalLinkURL;
    v13->_finalLinkURL = fileURL2;

    string = [argumentCopy string];
    targetPath = v13->_targetPath;
    v13->_targetPath = string;

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