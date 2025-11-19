@interface PKNumberFormatterForCurrencyCodeExcludingCurrencySymbols
@end

@implementation PKNumberFormatterForCurrencyCodeExcludingCurrencySymbols

void ___PKNumberFormatterForCurrencyCodeExcludingCurrencySymbols_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.PassKit.currencyformatterExcludingCurrencySymbols", 0);
  v1 = qword_1ED6D1560;
  qword_1ED6D1560 = v0;

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = qword_1ED6D1550;
  qword_1ED6D1550 = v2;
}

void ___PKNumberFormatterForCurrencyCodeExcludingCurrencySymbols_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v10 = v3;
  v4 = [qword_1ED6D1550 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [*(*(*(a1 + 40) + 8) + 40) setCurrencyCode:*(a1 + 32)];
    [*(*(*(a1 + 40) + 8) + 40) setNumberStyle:2];
    [*(*(*(a1 + 40) + 8) + 40) setCurrencySymbol:&stru_1F227FD28];
    [*(*(*(a1 + 40) + 8) + 40) setInternationalCurrencySymbol:&stru_1F227FD28];
    [qword_1ED6D1550 setObject:*(*(*(a1 + 40) + 8) + 40) forKeyedSubscript:v10];
  }
}

@end