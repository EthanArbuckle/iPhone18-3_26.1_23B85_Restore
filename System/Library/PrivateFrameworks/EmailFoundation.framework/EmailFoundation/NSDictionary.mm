@interface NSDictionary
@end

@implementation NSDictionary

void __49__NSDictionary_EmailFoundationAdditions__ef_all___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  *(*(*(a1 + 40) + 8) + 24) = (*(*(a1 + 32) + 16))();
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

void __49__NSDictionary_EmailFoundationAdditions__ef_any___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  *(*(*(a1 + 40) + 8) + 24) = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

void __55__NSDictionary_EmailFoundationAdditions__ef_mapValues___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
  if (!v3)
  {
  }
}

@end