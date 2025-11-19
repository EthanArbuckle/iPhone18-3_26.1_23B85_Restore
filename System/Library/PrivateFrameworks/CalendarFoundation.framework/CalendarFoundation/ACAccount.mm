@interface ACAccount
@end

@implementation ACAccount

uint64_t __72__ACAccount_CalAdditions___diffPropertiesWithAccount_firstPropertyOnly___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    v3 = *(a1 + 48) ^ 1;
  }

  else
  {
    v3 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3 & 1;
  return result;
}

void __53__ACAccount_CalAdditions___calDAVDataclassProperties__block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"CalAccountPropertyCalDAVSyncHasTakenPlace";
  v5[1] = @"CalAccountPropertyCalDAVAttachmentDownloadHasTakenPlace";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = _calDAVDataclassProperties_calDAVDataclassProperties;
  _calDAVDataclassProperties_calDAVDataclassProperties = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end