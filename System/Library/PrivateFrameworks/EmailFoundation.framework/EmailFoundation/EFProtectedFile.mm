@interface EFProtectedFile
- (BOOL)backgroundProcessingIsAllowed;
- (EFProtectedFile)initWithFilePath:(id)a3 isSensitive:(BOOL)a4 protectionType:(id)a5;
- (id)requestBackgroundProcessingForDuration:(double)a3 error:(id *)a4;
@end

@implementation EFProtectedFile

void ___ef_log_EFProtectedFile_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EFProtectedFile");
  v1 = _ef_log_EFProtectedFile_log;
  _ef_log_EFProtectedFile_log = v0;
}

- (EFProtectedFile)initWithFilePath:(id)a3 isSensitive:(BOOL)a4 protectionType:(id)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v19.receiver = self;
  v19.super_class = EFProtectedFile;
  v10 = [(EFProtectedFile *)&v19 init];
  if (v10)
  {
    v11 = [[_EFProtectedFile alloc] initWithFilePath:v8 isSensitive:a4 protectionType:v9];
    file = v10->_file;
    v10->_file = v11;

    v13 = [_EFBackgroundProcessingAssertion alloc];
    v20[0] = v10->_file;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v15 = [(_EFBackgroundProcessingAssertion *)v13 initWithProtectedFiles:v14];
    assertion = v10->_assertion;
    v10->_assertion = v15;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)backgroundProcessingIsAllowed
{
  v2 = [(EFProtectedFile *)self assertion];
  v3 = [(_EFBackgroundProcessingAssertion *)v2 isActive];

  return v3;
}

- (id)requestBackgroundProcessingForDuration:(double)a3 error:(id *)a4
{
  v11 = 0;
  v7 = [(EFProtectedFile *)self assertion];
  LODWORD(a4) = [(_EFBackgroundProcessingAssertion *)v7 incrementAssertionForDuration:a4 outResetCount:a3 error:?];

  if (a4)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__EFProtectedFile_requestBackgroundProcessingForDuration_error___block_invoke;
    v10[3] = &unk_1E82499B8;
    v10[4] = self;
    v10[5] = v11;
    v8 = [EFManualCancelationToken tokenWithCancelationBlock:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __64__EFProtectedFile_requestBackgroundProcessingForDuration_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assertion];
  [(_EFBackgroundProcessingAssertion *)v2 decrementAssertionWithResetCount:?];
}

@end