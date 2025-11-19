@interface NSString
@end

@implementation NSString

id __71__NSString_Regex__calc_stringByReplacingOccurrencesOfRegex_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = [v4 range];
  v7 = [v3 substringWithRange:{v5, v6}];
  v8 = [v4 range];
  v10 = v9;

  v11 = (*(v2 + 16))(v2, v7, v8, v10);

  return v11;
}

void __81__NSString_Regex__calc_stringByReplacingOccurrencesOfRegex_usingBlockWithResult___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(*(a1 + 40) + 8) + 40);
  if (!v6)
  {
    v7 = objc_opt_new();
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = *(*(*(a1 + 40) + 8) + 40);
  }

  v10 = *(*(*(a1 + 48) + 8) + 24);
  v11 = [*(a1 + 32) substringWithRange:{v10, a2 - v10}];
  [v6 appendString:v11];

  *(*(*(a1 + 48) + 8) + 24) = a2 + a3;
}

void __81__NSString_Regex__calc_stringByReplacingOccurrencesOfRegex_usingBlockWithResult___block_invoke_3(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1[4];
    v4 = a2;
    v5 = [v4 range];
    (*(v3 + 16))(v3, v5, v6);
    v7 = a1[5];
    v8 = *(*(a1[6] + 8) + 40);
    v9 = (*(v7 + 16))();

    [v8 appendString:v9];
  }
}

uint64_t __81__NSString_Regex__calc_stringByReplacingOccurrencesOfRegex_usingBlockWithResult___block_invoke_2()
{
  v0 = objc_opt_new();
  v1 = calc_stringByReplacingOccurrencesOfRegex_usingBlockWithResult__regexes;
  calc_stringByReplacingOccurrencesOfRegex_usingBlockWithResult__regexes = v0;

  calc_stringByReplacingOccurrencesOfRegex_usingBlockWithResult__lock = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

@end