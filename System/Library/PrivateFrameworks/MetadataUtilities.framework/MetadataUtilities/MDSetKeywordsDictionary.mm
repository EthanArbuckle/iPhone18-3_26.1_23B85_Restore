@interface MDSetKeywordsDictionary
@end

@implementation MDSetKeywordsDictionary

CFTypeRef ____MDSetKeywordsDictionary_block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if (result)
  {
    result = CFRetain(result);
    _keywordsDictionary = result;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

@end