@interface MCMContainerSchemaActionMkdir
+ (id)actionIdentifier;
- (BOOL)performWithError:(id *)a3;
- (MCMContainerSchemaActionMkdir)initWithPathArgument:(id)a3 context:(id)a4;
- (NSString)description;
@end

@implementation MCMContainerSchemaActionMkdir

- (BOOL)performWithError:(id *)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = [(NSURL *)self->_url URLByDeletingLastPathComponent];
  v17[4] = self;
  v18[0] = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __50__MCMContainerSchemaActionMkdir_performWithError___block_invoke;
  v17[3] = &unk_1E86B10B8;
  v6 = [(MCMContainerSchemaActionBase *)self fixAndRetryIfPermissionsErrorWithURL:v5 error:v18 duringBlock:v17];
  v7 = v18[0];
  v8 = v7;
  if (v6)
  {
    url = self->_url;
    v15[4] = self;
    v16 = v7;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__MCMContainerSchemaActionMkdir_performWithError___block_invoke_2;
    v15[3] = &unk_1E86B10B8;
    v10 = [(MCMContainerSchemaActionBase *)self fixAndRetryIfPermissionsErrorWithURL:url error:&v16 duringBlock:v15];
    v11 = v16;

    v8 = v11;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (!v10)
  {
    v12 = v8;
    *a3 = v8;
  }

LABEL_7:

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t __50__MCMContainerSchemaActionMkdir_performWithError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E69E9840];

  return [v3 makedirAtURL:a2 followTerminalSymlink:1 error:a3];
}

uint64_t __50__MCMContainerSchemaActionMkdir_performWithError___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E69E9840];

  return [v3 makedirAtURL:a2 followTerminalSymlink:0 error:a3];
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

- (MCMContainerSchemaActionMkdir)initWithPathArgument:(id)a3 context:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12.receiver = self;
  v12.super_class = MCMContainerSchemaActionMkdir;
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

  return @"mkdir";
}

@end