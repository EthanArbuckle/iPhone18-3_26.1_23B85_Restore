@interface NSString
@end

@implementation NSString

void __56__NSString_DSAdditions__ds_commonParentPathForItemURLs___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v12 = a2;
  if ([*(*(*(a1 + 40) + 8) + 40) count] > a3)
  {
    v7 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndexedSubscript:a3];
    v8 = [v12 isEqualToString:v7];

    if (v8)
    {
      goto LABEL_5;
    }

    v9 = [*(a1 + 32) subarrayWithRange:{0, a3}];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  *a4 = 1;
LABEL_5:
}

@end