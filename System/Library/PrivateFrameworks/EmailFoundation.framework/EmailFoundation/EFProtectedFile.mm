@interface EFProtectedFile
- (BOOL)backgroundProcessingIsAllowed;
- (EFProtectedFile)initWithFilePath:(id)path isSensitive:(BOOL)sensitive protectionType:(id)type;
- (id)requestBackgroundProcessingForDuration:(double)duration error:(id *)error;
@end

@implementation EFProtectedFile

void ___ef_log_EFProtectedFile_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EFProtectedFile");
  v1 = _ef_log_EFProtectedFile_log;
  _ef_log_EFProtectedFile_log = v0;
}

- (EFProtectedFile)initWithFilePath:(id)path isSensitive:(BOOL)sensitive protectionType:(id)type
{
  v20[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  typeCopy = type;
  v19.receiver = self;
  v19.super_class = EFProtectedFile;
  v10 = [(EFProtectedFile *)&v19 init];
  if (v10)
  {
    v11 = [[_EFProtectedFile alloc] initWithFilePath:pathCopy isSensitive:sensitive protectionType:typeCopy];
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
  assertion = [(EFProtectedFile *)self assertion];
  isActive = [(_EFBackgroundProcessingAssertion *)assertion isActive];

  return isActive;
}

- (id)requestBackgroundProcessingForDuration:(double)duration error:(id *)error
{
  v11 = 0;
  assertion = [(EFProtectedFile *)self assertion];
  LODWORD(error) = [(_EFBackgroundProcessingAssertion *)assertion incrementAssertionForDuration:error outResetCount:duration error:?];

  if (error)
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