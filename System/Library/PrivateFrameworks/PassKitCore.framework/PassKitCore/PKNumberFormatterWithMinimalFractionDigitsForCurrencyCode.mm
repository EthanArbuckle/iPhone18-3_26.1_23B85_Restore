@interface PKNumberFormatterWithMinimalFractionDigitsForCurrencyCode
@end

@implementation PKNumberFormatterWithMinimalFractionDigitsForCurrencyCode

void ___PKNumberFormatterWithMinimalFractionDigitsForCurrencyCode_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.PassKit.currencyformatterWithoutDecimals", 0);
  v1 = qword_1ED6D1548;
  qword_1ED6D1548 = v0;

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = qword_1ED6D1538;
  qword_1ED6D1538 = v2;
}

void ___PKNumberFormatterWithMinimalFractionDigitsForCurrencyCode_block_invoke_2(uint64_t a1)
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
  v4 = [qword_1ED6D1538 objectForKeyedSubscript:v3];
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
    [*(*(*(a1 + 40) + 8) + 40) setMinimumFractionDigits:0];
    [qword_1ED6D1538 setObject:*(*(*(a1 + 40) + 8) + 40) forKeyedSubscript:v10];
  }
}

@end