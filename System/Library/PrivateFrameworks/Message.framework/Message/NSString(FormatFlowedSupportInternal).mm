@interface NSString(FormatFlowedSupportInternal)
- (uint64_t)mf_lineBreakBeforeIndex:()FormatFlowedSupportInternal withinRange:;
- (uint64_t)mf_nextWordFromIndex:()FormatFlowedSupportInternal forward:;
@end

@implementation NSString(FormatFlowedSupportInternal)

- (uint64_t)mf_lineBreakBeforeIndex:()FormatFlowedSupportInternal withinRange:
{
  v6 = [(__CFString *)self length]- a4;
  if (CFStringGetCharactersPtr(self))
  {
    v7 = 0;
  }

  else
  {
    v7 = malloc_type_malloc(2 * v6, 0x1000040BDFB0063uLL);
    v12.location = a4;
    v12.length = v6;
    CFStringGetCharacters(self, v12, v7);
  }

  _GetTextBreakLocale();
  ubrk_open();
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = ubrk_preceding();
  if (v9 != -1 && v7 != 0)
  {
    v8 = a4 + v9;
  }

  ubrk_close();
  if (v7)
  {
    free(v7);
  }

  return v8;
}

- (uint64_t)mf_nextWordFromIndex:()FormatFlowedSupportInternal forward:
{
  if (!a4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = a3 + 1;
  v7 = [(__CFString *)self length]- (a3 + 1);
  if (CFStringGetCharactersPtr(self))
  {
    v8 = 0;
  }

  else
  {
    v10 = malloc_type_malloc(2 * v7, 0x1000040BDFB0063uLL);
    v14.location = v6;
    v14.length = v7;
    CFStringGetCharacters(self, v14, v10);
    v8 = v10;
  }

  _GetTextBreakLocale();
  ubrk_open();
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v11 = ubrk_following();
  if (v11 != -1 && v8 != 0)
  {
    v9 = a3 + v11 + 2;
  }

  ubrk_close();
  if (v8)
  {
    free(v8);
  }

  return v9;
}

@end