@interface DASFileProtection
@end

@implementation DASFileProtection

uint64_t __26___DASFileProtection_none__block_invoke()
{
  v0 = [_DASFileProtection alloc];
  none_fileCompletionNone = [(_DASFileProtection *)v0 initWithProtection:*MEMORY[0x1E696A3A8]];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __30___DASFileProtection_complete__block_invoke()
{
  v0 = [_DASFileProtection alloc];
  complete_fileCompletionComplete = [(_DASFileProtection *)v0 initWithProtection:*MEMORY[0x1E696A378]];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __40___DASFileProtection_completeUnlessOpen__block_invoke()
{
  v0 = [_DASFileProtection alloc];
  completeUnlessOpen_fileCompletionCompleteUnlessOpen = [(_DASFileProtection *)v0 initWithProtection:*MEMORY[0x1E696A380]];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __58___DASFileProtection_completeUntilFirstUserAuthentication__block_invoke()
{
  v0 = [_DASFileProtection alloc];
  completeUntilFirstUserAuthentication_fileCompletionCompleteUntilFirstUserAuthentication = [(_DASFileProtection *)v0 initWithProtection:*MEMORY[0x1E696A388]];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __46___DASFileProtection_completeWhenUserInactive__block_invoke()
{
  v0 = [_DASFileProtection alloc];
  completeWhenUserInactive_fileCompletionCompleteWhenUserInactive = [(_DASFileProtection *)v0 initWithProtection:*MEMORY[0x1E696A398]];

  return MEMORY[0x1EEE66BB8]();
}

@end