@interface MDCopyTokensFromString
@end

@implementation MDCopyTokensFromString

uint64_t ____MDCopyTokensFromString_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  result = _CFBundleGetBundleWithIdentifierAndLibraryName();
  if (result)
  {
    v1 = result;
    _locAndToken = copyNonDefaultLocalizedString(result, @"SEARCH_SYNTAX_AND", @"AND");
    _locOrToken = copyNonDefaultLocalizedString(v1, @"SEARCH_SYNTAX_OR", @"OR");
    result = copyNonDefaultLocalizedString(v1, @"SEARCH_SYNTAX_NOT", @"NOT");
    _locNotToken = result;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

@end