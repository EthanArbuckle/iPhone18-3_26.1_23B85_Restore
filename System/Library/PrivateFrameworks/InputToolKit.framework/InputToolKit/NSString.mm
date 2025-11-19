@interface NSString
@end

@implementation NSString

uint64_t __56__NSString_ITK__itk_whitespaceAndNewlineCoalescedString__block_invoke()
{
  itk_whitespaceAndNewlineCoalescedString_regex = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"[\r\n\\s]+" options:0 error:0];

  return MEMORY[0x2821F96F8]();
}

void __46__NSString_ITK__itk_uniqueWordsWithMinLength___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  if ([v9 isEqualToString:*MEMORY[0x277CCA428]] && objc_msgSend(v9, "length") >= *(a1 + 48))
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) substringWithRange:{a3, a4}];
    [v7 addObject:v8];
  }
}

uint64_t __46__NSString_ITK__itk_uniqueWordsWithMinLength___block_invoke_95(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 32) + 8) + 40) appendString:a2];
  v3 = *(*(*(a1 + 32) + 8) + 40);

  return [v3 appendString:@" "];
}

void __60__NSString_ITK__itk_stringByReplacingCharactersInStringMap___block_invoke(uint64_t a1, void *a2)
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

unint64_t __40__NSString_ITK__itk_lengthOfLongestLine__block_invoke(uint64_t a1, void *a2)
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