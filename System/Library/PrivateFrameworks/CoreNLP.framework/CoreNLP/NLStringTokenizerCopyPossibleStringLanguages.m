@interface NLStringTokenizerCopyPossibleStringLanguages
@end

@implementation NLStringTokenizerCopyPossibleStringLanguages

__CFArray *___NLStringTokenizerCopyPossibleStringLanguages_block_invoke_2(uint64_t a1)
{
  result = CoreNLP::NLLangid::copyPossibleLanguageStrings(_NLStringTokenizerCopyPossibleStringLanguages::nlLangid, *(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end