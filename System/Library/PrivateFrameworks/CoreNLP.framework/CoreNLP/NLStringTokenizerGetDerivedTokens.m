@interface NLStringTokenizerGetDerivedTokens
@end

@implementation NLStringTokenizerGetDerivedTokens

void ___NLStringTokenizerGetDerivedTokens_block_invoke(uint64_t a1, uint64_t a2, CFStringRef theString, uint64_t a4, _BYTE *a5)
{
  v8 = *(a1 + 48);
  if (v8)
  {
    *(v8 + 16 * *(*(*(a1 + 32) + 8) + 24)) = *a2;
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    *(v9 + 8 * *(*(*(a1 + 32) + 8) + 24)) = *(a2 + 16);
  }

  if (*(a1 + 64))
  {
    v10 = *(a1 + 72);
    if (v10)
    {
      *(v10 + 8 * *(*(*(a1 + 32) + 8) + 24)) = a4;
    }

    if (theString)
    {
      Length = CFStringGetLength(theString);
      v12 = (*(a1 + 80) + 16 * *(*(*(a1 + 32) + 8) + 24));
      *v12 = *(*(*(a1 + 40) + 8) + 24);
      v12[1] = Length;
      *(*(*(a1 + 40) + 8) + 24) += Length;
      CFStringAppend(*(a1 + 64), theString);
    }

    else
    {
      v13 = (*(a1 + 80) + 16 * *(*(*(a1 + 32) + 8) + 24));
      *v13 = *(*(*(a1 + 40) + 8) + 24);
      v13[1] = 0;
    }
  }

  if (++*(*(*(a1 + 32) + 8) + 24) == *(a1 + 88))
  {
    *a5 = 1;
  }
}

@end