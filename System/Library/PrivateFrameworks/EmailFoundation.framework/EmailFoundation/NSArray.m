@interface NSArray
@end

@implementation NSArray

void __62__NSArray_EmailFoundationAdditions__ef_lastObjectPassingTest___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

id __52__NSArray_EmailFoundationAdditions__ef_mapSelector___block_invoke(uint64_t a1, id a2)
{
  v2 = [a2 *(a1 + 32)];

  return v2;
}

id __59__NSArray_EmailFoundationAdditions__ef_compactMapSelector___block_invoke(uint64_t a1, id a2)
{
  v2 = [a2 *(a1 + 32)];

  return v2;
}

id __59__NSArray_EmailFoundationAdditions__ef_longestCommonPrefix__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v7 = 0;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
  }

  else
  {
    v8 = [v6 description];
  }

  v9 = v8;
  if (v8)
  {
    if (v5)
    {
      v7 = [v5 commonPrefixWithString:v8 options:2];
      if (![v7 length])
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }

      goto LABEL_13;
    }

    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  v7 = v10;
LABEL_13:

LABEL_14:

  return v7;
}

@end