@interface RWIProtocolCSSSourceRange
@end

@implementation RWIProtocolCSSSourceRange

uint64_t __72__RWIProtocolCSSSourceRange_IKJSInspector__ik_rangeWithNewLineIndexSet___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 == [*(a1 + 32) startLine])
  {
    *(*(*(a1 + 48) + 8) + 24) = a2 + 1;
  }

  v7 = *(*(*(a1 + 40) + 8) + 24);
  result = [*(a1 + 32) endLine];
  if (v7 == result)
  {
    *(*(*(a1 + 56) + 8) + 24) = a2 + 1;
  }

  if (*(*(*(a1 + 48) + 8) + 24) == -100 || *(*(*(a1 + 56) + 8) + 24) == -100)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    *a3 = 1;
  }

  return result;
}

@end