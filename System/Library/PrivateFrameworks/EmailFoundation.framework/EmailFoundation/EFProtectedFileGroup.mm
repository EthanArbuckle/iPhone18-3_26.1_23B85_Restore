@interface EFProtectedFileGroup
- (BOOL)backgroundProcessingIsAllowed;
- (EFProtectedFileGroup)initWithFilePaths:(id)paths isSensitive:(BOOL)sensitive protectionType:(id)type;
- (id)requestBackgroundProcessingForDuration:(double)duration error:(id *)error;
@end

@implementation EFProtectedFileGroup

- (EFProtectedFileGroup)initWithFilePaths:(id)paths isSensitive:(BOOL)sensitive protectionType:(id)type
{
  pathsCopy = paths;
  typeCopy = type;
  v19.receiver = self;
  v19.super_class = EFProtectedFileGroup;
  v10 = [(EFProtectedFileGroup *)&v19 init];
  if (v10)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __69__EFProtectedFileGroup_initWithFilePaths_isSensitive_protectionType___block_invoke;
    v16[3] = &unk_1E82499E0;
    sensitiveCopy = sensitive;
    v17 = typeCopy;
    v11 = [pathsCopy ef_map:v16];
    files = v10->_files;
    v10->_files = v11;

    v13 = [[_EFBackgroundProcessingAssertion alloc] initWithProtectedFiles:?];
    assertion = v10->_assertion;
    v10->_assertion = v13;
  }

  return v10;
}

id *__69__EFProtectedFileGroup_initWithFilePaths_isSensitive_protectionType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[_EFProtectedFile alloc] initWithFilePath:v3 isSensitive:*(a1 + 40) protectionType:*(a1 + 32)];

  return v4;
}

- (BOOL)backgroundProcessingIsAllowed
{
  assertion = [(EFProtectedFileGroup *)self assertion];
  isActive = [(_EFBackgroundProcessingAssertion *)assertion isActive];

  return isActive;
}

- (id)requestBackgroundProcessingForDuration:(double)duration error:(id *)error
{
  v11 = 0;
  assertion = [(EFProtectedFileGroup *)self assertion];
  LODWORD(error) = [(_EFBackgroundProcessingAssertion *)assertion incrementAssertionForDuration:error outResetCount:duration error:?];

  if (error)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__EFProtectedFileGroup_requestBackgroundProcessingForDuration_error___block_invoke;
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

void __69__EFProtectedFileGroup_requestBackgroundProcessingForDuration_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assertion];
  [(_EFBackgroundProcessingAssertion *)v2 decrementAssertionWithResetCount:?];
}

@end