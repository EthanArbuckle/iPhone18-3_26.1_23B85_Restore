@interface NSAttributedString(Shared)
- (id)abstractAttachmentsInContext:()Shared range:options:;
- (id)ic_attributedStringByFlatteningInlineAttachmentsWithContext:()Shared flattenUnsupportedInlineAttachmentsOnly:updateRangeValueToObjectMapBlock:replacementAttributedStringBlock:;
- (id)ic_attributedStringByRefreshingParagraphStyleUUIDs;
- (id)ic_attributedStringWithOnlyAdaptiveImageAttributeIfNecessary;
- (id)ic_searchableStringInContext:()Shared;
- (void)ic_enumerateAbstractAttachmentsInContext:()Shared range:options:usingBlock:;
- (void)ic_enumerateAttachmentsInContext:()Shared range:options:usingBlock:;
- (void)ic_enumerateAttachmentsInContext:()Shared usingBlock:;
- (void)ic_enumerateInlineAttachmentsInContext:()Shared range:options:usingBlock:;
@end

@implementation NSAttributedString(Shared)

- (void)ic_enumerateAttachmentsInContext:()Shared usingBlock:
{
  v6 = a4;
  v7 = a3;
  [a1 ic_enumerateAttachmentsInContext:v7 range:0 usingBlock:{objc_msgSend(a1, "length"), v6}];
}

- (void)ic_enumerateAttachmentsInContext:()Shared range:options:usingBlock:
{
  v12 = a3;
  v13 = a7;
  v22.location = [a1 ic_range];
  v22.length = v14;
  v21.location = a4;
  v21.length = a5;
  v15 = NSIntersectionRange(v21, v22);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__NSAttributedString_Shared__ic_enumerateAttachmentsInContext_range_options_usingBlock___block_invoke;
  v18[3] = &unk_2781980B8;
  v19 = v12;
  v20 = v13;
  v16 = v13;
  v17 = v12;
  [a1 enumerateAttribute:@"NSAttachment" inRange:v15.location options:v15.length usingBlock:{a6, v18}];
}

- (void)ic_enumerateInlineAttachmentsInContext:()Shared range:options:usingBlock:
{
  v12 = a3;
  v13 = a7;
  v22.location = [a1 ic_range];
  v22.length = v14;
  v21.location = a4;
  v21.length = a5;
  v15 = NSIntersectionRange(v21, v22);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __94__NSAttributedString_Shared__ic_enumerateInlineAttachmentsInContext_range_options_usingBlock___block_invoke;
  v18[3] = &unk_2781980B8;
  v19 = v12;
  v20 = v13;
  v16 = v13;
  v17 = v12;
  [a1 enumerateAttribute:@"NSAttachment" inRange:v15.location options:v15.length usingBlock:{a6, v18}];
}

- (id)abstractAttachmentsInContext:()Shared range:options:
{
  v10 = MEMORY[0x277CBEB18];
  v11 = a3;
  v12 = [v10 array];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__NSAttributedString_Shared__abstractAttachmentsInContext_range_options___block_invoke;
  v16[3] = &unk_278195550;
  v17 = v12;
  v13 = v12;
  [a1 ic_enumerateAbstractAttachmentsInContext:v11 range:a4 options:a5 usingBlock:{a6, v16}];

  v14 = [MEMORY[0x277CBEA60] arrayWithArray:v13];

  return v14;
}

- (void)ic_enumerateAbstractAttachmentsInContext:()Shared range:options:usingBlock:
{
  v12 = a3;
  v13 = a7;
  v22.location = [a1 ic_range];
  v22.length = v14;
  v21.location = a4;
  v21.length = a5;
  v15 = NSIntersectionRange(v21, v22);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __96__NSAttributedString_Shared__ic_enumerateAbstractAttachmentsInContext_range_options_usingBlock___block_invoke;
  v18[3] = &unk_2781980B8;
  v19 = v12;
  v20 = v13;
  v16 = v13;
  v17 = v12;
  [a1 enumerateAttribute:@"NSAttachment" inRange:v15.location options:v15.length usingBlock:{a6, v18}];
}

- (id)ic_attributedStringByRefreshingParagraphStyleUUIDs
{
  v1 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:a1];
  v2 = ICTTAttributeNameParagraphStyle;
  v3 = [v1 ic_range];
  v5 = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__NSAttributedString_Shared__ic_attributedStringByRefreshingParagraphStyleUUIDs__block_invoke;
  v9[3] = &unk_2781980E0;
  v10 = v1;
  v6 = v1;
  [v6 enumerateAttribute:v2 inRange:v3 options:v5 usingBlock:{0, v9}];
  v7 = [v6 copy];

  return v7;
}

- (id)ic_attributedStringByFlatteningInlineAttachmentsWithContext:()Shared flattenUnsupportedInlineAttachmentsOnly:updateRangeValueToObjectMapBlock:replacementAttributedStringBlock:
{
  v65 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:a1];
  v14 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = [v13 length];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __196__NSAttributedString_Shared__ic_attributedStringByFlatteningInlineAttachmentsWithContext_flattenUnsupportedInlineAttachmentsOnly_updateRangeValueToObjectMapBlock_replacementAttributedStringBlock___block_invoke;
  v58[3] = &unk_278198148;
  v46 = v10;
  v59 = v46;
  v63 = a4;
  v17 = v14;
  v60 = v17;
  v45 = v11;
  v62 = v45;
  v18 = v15;
  v61 = v18;
  v53 = v13;
  [v13 enumerateAttribute:@"NSAttachment" inRange:0 options:v16 usingBlock:{0, v58}];
  [v17 sortUsingComparator:&__block_literal_global_73];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v17;
  v19 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v55;
    v50 = v12;
    v47 = *MEMORY[0x277D74118];
    v48 = *v55;
    v49 = v18;
    do
    {
      v22 = 0;
      v51 = v20;
      do
      {
        if (*v55 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v54 + 1) + 8 * v22);
        v24 = [v23 rangeValue];
        v26 = v25;
        v27 = [v18 objectForKeyedSubscript:v23];
        v28 = v27;
        if (v12 && v27)
        {
          v29 = [v53 attributesAtIndex:v24 effectiveRange:0];
          v30 = [v29 mutableCopy];

          v31 = v12[2](v12, v30, v28);
          v32 = [v31 mutableCopy];

          if (v32)
          {
            objc_opt_class();
            v33 = [v30 objectForKeyedSubscript:ICTTAttributeNameParagraphStyle];
            v34 = ICDynamicCast();

            v35 = ICTTAttributeNameParagraphStyle;
            v37 = [v32 ic_range];
            if (v34)
            {
              [v32 addAttribute:v35 value:v34 range:{v37, v36}];
            }

            else
            {
              [v32 removeAttribute:v35 range:{v37, v36}];
            }

            objc_opt_class();
            v38 = [v30 objectForKeyedSubscript:v47];
            v39 = ICDynamicCast();

            v41 = [v32 ic_range];
            if (v39)
            {
              [v32 addAttribute:v47 value:v39 range:{v41, v40}];
            }

            else
            {
              [v32 removeAttribute:v47 range:{v41, v40}];
            }

            v42 = [v32 copy];
            [v53 replaceCharactersInRange:v24 withAttributedString:{v26, v42}];

            v21 = v48;
            v18 = v49;
          }

          v20 = v51;
          v12 = v50;
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v20);
  }

  v43 = [v53 copy];

  return v43;
}

- (id)ic_attributedStringWithOnlyAdaptiveImageAttributeIfNecessary
{
  v2 = *MEMORY[0x277D74058];
  v3 = [a1 ic_range];
  if ([a1 ic_containsAttribute:v2 inRange:{v3, v4}])
  {
    v5 = objc_alloc(MEMORY[0x277CCAB48]);
    v6 = [a1 string];
    v7 = [v5 initWithString:v6];

    v8 = [a1 ic_range];
    v10 = v9;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __90__NSAttributedString_Shared__ic_attributedStringWithOnlyAdaptiveImageAttributeIfNecessary__block_invoke;
    v14[3] = &unk_278197B70;
    v15 = v7;
    v11 = v7;
    [a1 enumerateAttribute:v2 inRange:v8 options:v10 usingBlock:{0, v14}];
    v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithAttributedString:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)ic_searchableStringInContext:()Shared
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CCAB48]);
  v6 = [a1 string];
  v7 = [v5 initWithString:v6];

  v8 = *MEMORY[0x277D74058];
  v9 = [a1 ic_range];
  v11 = v10;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __59__NSAttributedString_Shared__ic_searchableStringInContext___block_invoke;
  v22[3] = &unk_278197B70;
  v12 = v7;
  v23 = v12;
  [a1 enumerateAttribute:v8 inRange:v9 options:v11 usingBlock:{0, v22}];
  v13 = [a1 length];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __59__NSAttributedString_Shared__ic_searchableStringInContext___block_invoke_2;
  v19[3] = &unk_278198190;
  v20 = v4;
  v14 = v12;
  v21 = v14;
  v15 = v4;
  [a1 enumerateAttribute:@"NSAttachment" inRange:0 options:v13 usingBlock:{2, v19}];
  v16 = v21;
  v17 = v14;

  return v14;
}

@end