@interface MCMContainerSchemaActionStopBackupExclude
+ (id)actionIdentifier;
- (BOOL)performWithError:(id *)a3;
- (MCMContainerSchemaActionStopBackupExclude)initWithPathArgument:(id)a3 context:(id)a4;
- (NSString)description;
@end

@implementation MCMContainerSchemaActionStopBackupExclude

- (BOOL)performWithError:(id *)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  url = self->_url;
  v13[0] = 0;
  v5 = [(MCMContainerSchemaActionBase *)self fixAndRetryIfPermissionsErrorWithURL:url error:v13 duringBlock:&__block_literal_global_5411];
  v6 = v13[0];
  v7 = [v6 domain];
  if ([v7 isEqualToString:*MEMORY[0x1E696A798]])
  {
    v8 = [v6 code];

    if (v8 == 2)
    {

      v6 = 0;
      v5 = 1;
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (a3)
  {
    v9 = v5;
  }

  else
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    v10 = v6;
    v5 = 0;
    *a3 = v6;
  }

LABEL_10:

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __62__MCMContainerSchemaActionStopBackupExclude_performWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = +[MCMFileManager defaultManager];
  v6 = [v5 removeExclusionFromBackupFromURL:v4 error:a3];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (NSString)description
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() actionIdentifier];
  v4 = [(NSURL *)self->_url path];
  v5 = [v3 stringByAppendingFormat:@" [%@]", v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (MCMContainerSchemaActionStopBackupExclude)initWithPathArgument:(id)a3 context:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12.receiver = self;
  v12.super_class = MCMContainerSchemaActionStopBackupExclude;
  v7 = [(MCMContainerSchemaActionBase *)&v12 initWithContext:a4];
  if (v7)
  {
    v8 = [v6 fileURL];
    url = v7->_url;
    v7->_url = v8;

    if (!v7->_url)
    {

      v7 = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)actionIdentifier
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];

  return @"stop-backup-exclude";
}

@end