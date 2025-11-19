@interface PKNumberFormatterWithMinimalFractionDigits
@end

@implementation PKNumberFormatterWithMinimalFractionDigits

void ___PKNumberFormatterWithMinimalFractionDigits_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.PassKit.currencyformatterWithMinimalFractionDigits", 0);
  v1 = qword_1ED6D1530;
  qword_1ED6D1530 = v0;

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = qword_1ED6D1520;
  qword_1ED6D1520 = v2;
}

void ___PKNumberFormatterWithMinimalFractionDigits_block_invoke_2(uint64_t a1)
{
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v2 = [qword_1ED6D1520 objectForKeyedSubscript:?];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v5 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 32) + 8) + 40) setNumberStyle:1];
    [*(*(*(a1 + 32) + 8) + 40) setMinimumFractionDigits:*(a1 + 40) & ~(*(a1 + 40) >> 63)];
    [qword_1ED6D1520 setObject:*(*(*(a1 + 32) + 8) + 40) forKeyedSubscript:v8];
  }
}

@end