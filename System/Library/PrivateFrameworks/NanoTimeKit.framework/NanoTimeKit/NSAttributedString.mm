@interface NSAttributedString
@end

@implementation NSAttributedString

uint64_t __94__NSAttributedString_NTKUtilities__NTKReplaceTimeDesignatorAttributesFrom_withDesignatorFont___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = result;
    [*(result + 32) removeAttribute:*MEMORY[0x277CBB6D0] range:{a3, a4}];
    v7 = *MEMORY[0x277D740A8];
    v8 = *(v6 + 32);
    v9 = *(v6 + 40);

    return [v8 addAttribute:v7 value:v9 range:{a3, a4}];
  }

  return result;
}

void __108__NSAttributedString_NTKUtilities___attributedStringFromAttributesTable_defaultAttributes_format_arguments___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v7)
  {
    v8 = a3 - *(*(*(a1 + 48) + 8) + 24);
    v12 = v7;
    v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277D74060]];
    if (v9)
    {
      v10 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v9];
      v11 = [v10 length];
      [*(a1 + 40) replaceCharactersInRange:v8 withAttributedString:{a4, v10}];
      *(*(*(a1 + 48) + 8) + 24) += a4 - v11;
    }

    else
    {
      [*(a1 + 40) setAttributes:v12 range:{v8, a4}];
    }

    v7 = v12;
  }
}

uint64_t __108__NSAttributedString_NTKUtilities___attributedStringFromAttributesTable_defaultAttributes_format_arguments___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __108__NSAttributedString_NTKUtilities___attributedStringFromAttributesTable_defaultAttributes_format_arguments___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [v3 objectForKeyedSubscript:*(*(&v9 + 1) + 8 * v7)];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 BOOLValue])
        {
          (*(*(a1 + 32) + 16))();
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

@end