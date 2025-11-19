@interface LSBundleRecord
@end

@implementation LSBundleRecord

uint64_t __75__LSBundleRecord_IconServicesAdditions___IS_iconProvidingLineageForRecord___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 iconDictionary];
  if (![v3 count])
  {

    goto LABEL_5;
  }

  v4 = [v2 isWildcard];

  if (v4)
  {
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v5 = 1;
LABEL_6:

  return v5;
}

id __75__LSBundleRecord_IconServicesAdditions___IS_iconProvidingLineageForRecord___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CFSetGetValue(*(a1 + 32), v3);
  if (!v4)
  {
    v4 = CFSetGetValue(*(a1 + 40), v3);
  }

  return v4;
}

uint64_t __75__LSBundleRecord_IconServicesAdditions___IS_iconProvidingLineageForRecord___block_invoke_3(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = (*(a1[6] + 16))();
  if (v6)
  {
    v10 = v6;
    v7 = (*(a1[7] + 16))();
    v8 = a1[4];
    if (v7)
    {
      [v8 addObject:v10];
      *(*(a1[8] + 8) + 24) = 1;
      *a4 = 1;
    }

    else
    {
      [v8 addObject:a1[5]];
    }
  }

  else
  {
    *a4 = 1;
  }

  return MEMORY[0x1EEE66BB8]();
}

@end