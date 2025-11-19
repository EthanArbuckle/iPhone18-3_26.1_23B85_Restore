@interface MDSetKeywordsToNamesDictionary
@end

@implementation MDSetKeywordsToNamesDictionary

CFTypeRef ____MDSetKeywordsToNamesDictionary_block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if (result)
  {
    result = CFRetain(result);
    _keywordsToNamesDictionary = result;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

@end