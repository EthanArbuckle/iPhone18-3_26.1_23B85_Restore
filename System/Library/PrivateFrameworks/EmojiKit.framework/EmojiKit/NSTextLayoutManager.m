@interface NSTextLayoutManager
@end

@implementation NSTextLayoutManager

uint64_t __90__NSTextLayoutManager_Helper__enumerateTextParagraphsFromLocation_options_usingBlock_emk___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 textElement];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

uint64_t __81__NSTextLayoutManager_Helper___enumerateTextLineFragmentsInTextRange_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v28 = [v3 rangeInElement];
  v4 = [*(a1 + 32) textRangeByIntersectingWithTextRange:?];
  v5 = v4;
  if (v4 && ([v4 isEmpty] & 1) == 0)
  {
    v7 = *(a1 + 40);
    v8 = [v28 location];
    v9 = [v5 location];
    v10 = [v7 offsetFromLocation:v8 toLocation:v9];

    v11 = *(a1 + 40);
    v12 = [v28 location];
    v13 = [v5 endLocation];
    v14 = [v11 offsetFromLocation:v12 toLocation:v13];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [v3 textLineFragments];
    v31 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v31)
    {
      v25 = v5;
      v26 = v3;
      v15 = 0;
      range2 = v14 - v10;
      v29 = *v33;
LABEL_6:
      v16 = 0;
      while (1)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(obj);
        }

        [*(*(&v32 + 1) + 8 * v16) characterRange];
        length = v38.length;
        v38.location = v15;
        v39.location = v10;
        v39.length = range2;
        v18 = NSIntersectionRange(v38, v39);
        if (v18.length)
        {
          v19 = *(a1 + 40);
          v20 = [v28 location];
          v21 = [v19 locationFromLocation:v20 withOffset:v18.location];

          v22 = [*(a1 + 40) locationFromLocation:v21 withOffset:v18.length];
          v23 = [objc_alloc(MEMORY[0x277D742D0]) initWithLocation:v21 endLocation:v22];
          v6 = (*(*(a1 + 48) + 16))();

          if (!v6)
          {
            break;
          }
        }

        v15 += length;
        ++*(*(*(a1 + 56) + 8) + 24);
        if (v31 == ++v16)
        {
          v31 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
          if (v31)
          {
            goto LABEL_6;
          }

          v6 = 1;
          break;
        }
      }

      v5 = v25;
      v3 = v26;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __69__NSTextLayoutManager_Helper___enumerateAllTokenListsUsingBlock_emk___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 attributedString];
  v5 = [v3 elementRange];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__NSTextLayoutManager_Helper___enumerateAllTokenListsUsingBlock_emk___block_invoke_2;
  v8[3] = &unk_2781C2138;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  v10 = v5;
  v11 = *(a1 + 48);
  v7 = v5;
  [v4 _enumerateTokenListsInReverse:0 handler_emk:v8];
}

void __69__NSTextLayoutManager_Helper___enumerateAllTokenListsUsingBlock_emk___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = a2;
  v10 = [v8 location];
  v11 = [*(a1 + 48) location];
  v12 = [v7 offsetFromLocation:v10 toLocation:v11];

  v13 = *(a1 + 32);
  v14 = [*(a1 + 40) location];
  v17 = [v13 locationFromLocation:v14 withOffset:v12 + a3];

  v15 = [*(a1 + 32) locationFromLocation:v17 withOffset:a4];
  v16 = [objc_alloc(MEMORY[0x277D742D0]) initWithLocation:v17 endLocation:v15];
  (*(*(a1 + 56) + 16))();
}

@end