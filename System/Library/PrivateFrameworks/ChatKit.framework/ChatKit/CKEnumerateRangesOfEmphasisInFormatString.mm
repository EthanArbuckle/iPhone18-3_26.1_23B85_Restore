@interface CKEnumerateRangesOfEmphasisInFormatString
@end

@implementation CKEnumerateRangesOfEmphasisInFormatString

double ___CKEnumerateRangesOfEmphasisInFormatString_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = [*(a1 + 32) rangeOfString:@"#" options:0 range:{a2, a3}];
  *a4 = v6;
  a4[1] = v7;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 32);
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v9 + 32) = v6;
    }

    else
    {
      *(v9 + 40) = v6 + v7 - v10;
    }

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      (*(*(a1 + 40) + 16))();
      *(*(*(a1 + 64) + 8) + 24) += 2;
      ++*(*(*(a1 + 56) + 8) + 24);
      result = NAN;
      *(*(*(a1 + 48) + 8) + 32) = xmmword_190DCEFA0;
    }
  }

  return result;
}

@end