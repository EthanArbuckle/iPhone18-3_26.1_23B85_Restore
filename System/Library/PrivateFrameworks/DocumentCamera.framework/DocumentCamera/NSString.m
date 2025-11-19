@interface NSString
@end

@implementation NSString

void __54__NSString_DC__dc_whitespaceAndNewlineCoalescedString__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"[\r\n\\s]+" options:0 error:0];
  v1 = dc_whitespaceAndNewlineCoalescedString_regex;
  dc_whitespaceAndNewlineCoalescedString_regex = v0;
}

void __58__NSString_DC__dc_stringByReplacingCharactersInStringMap___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v12 = v3;
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v12;
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  v8 = MEMORY[0x277CCAE60];
  v9 = [v3 range];
  v11 = [v8 valueWithRange:{v9, v10}];
  [v4 addObject:v11];
}

unint64_t __38__NSString_DC__dc_lengthOfLongestLine__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 length];
  if (v3 <= result)
  {
    v5 = result;
  }

  else
  {
    v5 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

@end