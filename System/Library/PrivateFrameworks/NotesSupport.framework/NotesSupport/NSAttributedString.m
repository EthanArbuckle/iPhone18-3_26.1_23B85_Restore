@interface NSAttributedString
@end

@implementation NSAttributedString

void __82__NSAttributedString_IC__ic_enumerateAttributesInClampedRange_options_usingBlock___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, uint64_t a5)
{
  v11 = a2;
  v9 = *(a1 + 32);
  v13.location = a3;
  v13.length = a4;
  v10 = NSIntersectionRange(*(*(*(a1 + 40) + 8) + 48), v13);
  (*(v9 + 16))(v9, v11, v10.location, v10.length, a5);
  *(*(*(a1 + 40) + 8) + 56) += *(*(*(a1 + 40) + 8) + 48) - (a3 + a4);
  *(*(*(a1 + 40) + 8) + 48) = a3 + a4;
}

void __82__NSAttributedString_IC__ic_enumerateClampedAttribute_inRange_options_usingBlock___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, uint64_t a5)
{
  v11 = a2;
  v9 = *(a1 + 32);
  v13.location = a3;
  v13.length = a4;
  v10 = NSIntersectionRange(*(*(*(a1 + 40) + 8) + 48), v13);
  (*(v9 + 16))(v9, v11, v10.location, v10.length, a5);
  *(*(*(a1 + 40) + 8) + 56) += *(*(*(a1 + 40) + 8) + 48) - (a3 + a4);
  *(*(*(a1 + 40) + 8) + 48) = a3 + a4;
}

uint64_t __55__NSAttributedString_IC__ic_containsAttribute_inRange___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void __75__NSAttributedString_IC__ic_attributedStringByRemovingAllAttributesExcept___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = [a2 mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 keyEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (((*(*(a1 + 40) + 16))() & 1) == 0)
        {
          [v7 setObject:0 forKeyedSubscript:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [*(a1 + 32) setAttributes:v7 range:{a3, a4}];
}

uint64_t __74__NSAttributedString_IC__ic_whitespaceAndNewlineCoalescedAttributedString__block_invoke()
{
  -[NSAttributedString(IC) ic_whitespaceAndNewlineCoalescedAttributedString]::regex = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"[\r\n\\s]+" options:0 error:0];

  return MEMORY[0x1EEE66BB8]();
}

void __58__NSAttributedString_IC__ic_allRangesContainingAttribute___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x1E696B098] valueWithRange:?];
    [v2 addObject:?];
  }
}

@end