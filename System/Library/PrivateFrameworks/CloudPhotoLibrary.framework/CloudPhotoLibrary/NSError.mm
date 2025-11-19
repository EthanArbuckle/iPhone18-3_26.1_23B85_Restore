@interface NSError
@end

@implementation NSError

void __57__NSError_CPLAdditions___cplSafeUserInfoForXPCDidChange___block_invoke()
{
  v7[10] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E696A598];
  v7[0] = *MEMORY[0x1E696A588];
  v7[1] = v0;
  v1 = *MEMORY[0x1E696A8A8];
  v7[2] = *MEMORY[0x1E696A590];
  v7[3] = v1;
  v2 = *MEMORY[0x1E696A8F8];
  v7[4] = *MEMORY[0x1E696A478];
  v7[5] = v2;
  v3 = *MEMORY[0x1E696A368];
  v7[6] = *MEMORY[0x1E696A998];
  v7[7] = v3;
  v7[8] = @"CPLErrorLearnMoreLink";
  v7[9] = @"CPLErrorServerGeneratedLocalizedDescription";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:10];
  v5 = _cplSafeUserInfoForXPCDidChange__safeKeys;
  _cplSafeUserInfoForXPCDidChange__safeKeys = v4;

  v6 = *MEMORY[0x1E69E9840];
}

void __50__NSError_CPLAdditions__cplShortDomainDescription__block_invoke()
{
  v5[9] = *MEMORY[0x1E69E9840];
  v4[0] = *MEMORY[0x1E696A250];
  v4[1] = @"CloudPhotoLibraryErrorDomain";
  v5[0] = @"cocoa";
  v5[1] = @"cpl";
  v0 = *MEMORY[0x1E696A798];
  v4[2] = *MEMORY[0x1E696A768];
  v4[3] = v0;
  v5[2] = @"os";
  v5[3] = @"posix";
  v4[4] = *MEMORY[0x1E696A5A0];
  v4[5] = @"CKErrorDomain";
  v5[4] = @"mach";
  v5[5] = @"cloudkit";
  v4[6] = @"CKInternalErrorDomain";
  v4[7] = @"CKUnderlyingErrorDomain";
  v5[6] = @"cloudkit-internal";
  v5[7] = @"cloudkit-internal";
  v4[8] = @"SqliteErrorDomain";
  v5[8] = @"sqlite";
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:9];
  v2 = cplShortDomainDescription_wellKnownDomainToShortDomain;
  cplShortDomainDescription_wellKnownDomainToShortDomain = v1;

  v3 = *MEMORY[0x1E69E9840];
}

@end