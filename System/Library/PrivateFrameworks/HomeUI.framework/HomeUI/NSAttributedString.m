@interface NSAttributedString
@end

@implementation NSAttributedString

void __84__NSAttributedString_HUAdditions__hu_attributedStringWithDefaultAttributes_inRange___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15 = a2;
  v7 = [v15 image];

  if (v7)
  {
    v8 = [v15 image];
    v9 = [v8 imageWithConfiguration:*(a1 + 32)];
    [v15 setImage:v9];

    v10 = [*(a1 + 40) attributesAtIndex:a3 effectiveRange:0];
    v11 = [v10 mutableCopy];

    v12 = *MEMORY[0x277D74118];
    v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277D74118]];
    v14 = [v13 mutableCopy];

    [v14 setLineBreakMode:1];
    [v11 setObject:v14 forKeyedSubscript:v12];
    [*(a1 + 40) setAttributes:v11 range:{a3, a4}];
  }
}

void __78__NSAttributedString_HUAdditions__hu_safeAttributedStringWithHTML_attributes___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = *MEMORY[0x277D740E8];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 isEqualToString:v10])
        {
          v13 = [v6 objectForKeyedSubscript:v12];
          v14 = [v13 host];

          if (!v14)
          {
            [*(a1 + 32) removeAttribute:v12 range:{a3, a4}];
          }
        }

        else if (([*(a1 + 40) containsObject:v12] & 1) == 0)
        {
          [*(a1 + 32) removeAttribute:v12 range:{a3, a4}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

@end