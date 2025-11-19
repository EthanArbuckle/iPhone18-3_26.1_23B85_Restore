@interface NSAttributedString
@end

@implementation NSAttributedString

void __90__NSAttributedString_SecureCoding__ln_attributedStringByRemovingNonSecureCodingAttributes__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [MEMORY[0x1E695DF70] array];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __90__NSAttributedString_SecureCoding__ln_attributedStringByRemovingNonSecureCodingAttributes__block_invoke_2;
  v20[3] = &unk_1E72B12A8;
  v9 = v8;
  v21 = v9;
  [v7 enumerateKeysAndObjectsUsingBlock:v20];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(a1 + 32) removeAttribute:*(*(&v16 + 1) + 8 * v14++) range:{a3, a4, v16}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __90__NSAttributedString_SecureCoding__ln_attributedStringByRemovingNonSecureCodingAttributes__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (([a3 conformsToProtocol:&unk_1F0300760] & 1) == 0)
  {
    [*(a1 + 32) addObject:v5];
  }
}

@end