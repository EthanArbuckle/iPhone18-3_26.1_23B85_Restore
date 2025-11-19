@interface NSMutableAttributedString
@end

@implementation NSMutableAttributedString

void __67__NSMutableAttributedString_DataDetectorsSupport__dd_resetResults___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *MEMORY[0x277D740E8];
  v9 = [v7 valueForKey:*MEMORY[0x277D740E8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v9;
    if (!v10)
    {
LABEL_10:
      v13 = 0;
      [v7 objectForKeyedSubscript:{*MEMORY[0x277D041D8], v37}];
      goto LABEL_11;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  v11 = [v10 scheme];
  if ([v11 isEqualToString:*MEMORY[0x277D04208]])
  {
LABEL_9:

    goto LABEL_19;
  }

  v12 = [v10 scheme];
  if ([v12 isEqualToString:@"x-apple-data-detectors-clientdefined"])
  {

    goto LABEL_9;
  }

  v39 = v12;
  v40 = v11;
  v13 = 1;
  [v7 objectForKeyedSubscript:{*MEMORY[0x277D041D8], v39}];
  v14 = LABEL_11:;
  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = v14;
  v16 = v8;
  v17 = v9;
  v18 = [v7 objectForKeyedSubscript:@"DDFoundExistingLink"];
  if (([v18 BOOLValue] & 1) == 0)
  {
    v45 = dd_urlLooksSuspicious(v10);

    if (v13)
    {
    }

    v9 = v17;
    v8 = v16;
    if (v45)
    {
      goto LABEL_54;
    }

LABEL_19:
    v20 = [v7 objectForKeyedSubscript:@"DDAttributeBackup"];
    [*(a1 + 32) removeAllObjects];
    [*(a1 + 40) removeAllObjects];
    v44 = v7;
    v46 = v20;
    v42 = v9;
    v43 = v10;
    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v41 = v8;
        v21 = [MEMORY[0x277CBEB68] null];
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v22 = [v20 keyEnumerator];
        v23 = [v22 countByEnumeratingWithState:&v51 objects:v56 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v52;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              while (1)
              {
                if (*v52 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v51 + 1) + 8 * i);
                v28 = [v46 objectForKeyedSubscript:v27];
                if (![v28 isEqual:v21])
                {
                  break;
                }

                [*(a1 + 32) addObject:v27];

                if (v24 == ++i)
                {
                  goto LABEL_23;
                }
              }

              [*(a1 + 40) setObject:v28 forKeyedSubscript:v27];
            }

LABEL_23:
            v24 = [v22 countByEnumeratingWithState:&v51 objects:v56 count:16];
          }

          while (v24);
        }

        v10 = v43;
        v7 = v44;
        v8 = v41;
      }

      [*(a1 + 32) addObject:@"DDAttributeBackup"];
    }

    if (v10)
    {
      [*(a1 + 32) addObject:v8];
    }

    v29 = [v7 objectForKeyedSubscript:@"DDContext"];
    if (v29)
    {
      [*(a1 + 32) addObject:@"DDContext"];
    }

    if ((*(a1 + 64) & 1) == 0)
    {
      [*(a1 + 32) addObject:*MEMORY[0x277D041D8]];
      [*(a1 + 32) addObject:@"DDFoundExistingLink"];
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v30 = *(a1 + 32);
    v31 = [v30 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v48;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v48 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v47 + 1) + 8 * j);
          if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
          {
            [*(a1 + 48) beginEditing];
            *(*(*(a1 + 56) + 8) + 24) = 1;
          }

          [*(a1 + 48) removeAttribute:v35 range:{a3, a4}];
        }

        v32 = [v30 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v32);
    }

    v10 = v43;
    v7 = v44;
    v9 = v42;
    if ([*(a1 + 40) count])
    {
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
      {
        [*(a1 + 48) beginEditing];
        *(*(*(a1 + 56) + 8) + 24) = 1;
      }

      [*(a1 + 48) addAttributes:*(a1 + 40) range:{a3, a4}];
    }

    v19 = v46;
    goto LABEL_53;
  }

  v9 = v17;
LABEL_14:
  if (v13)
  {

    v19 = v40;
LABEL_53:
  }

LABEL_54:

  v36 = *MEMORY[0x277D85DE8];
}

void __67__NSMutableAttributedString_DataDetectorsSupport__dd_resetResults___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v8 = v7;
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 32) beginEditing];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    [*(a1 + 32) removeAttribute:*(a1 + 40) range:{a3, a4}];
    v7 = v8;
  }
}

void __95__NSMutableAttributedString_DataDetectorsSupport__dd_appendUrl_context_range_backedAttributes___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = *(a1 + 32);
  if (v9)
  {
    v4 = [*(a1 + 32) scheme];
    if ([v4 isEqualToString:*MEMORY[0x277D04208]])
    {
      v24 = a3;
      v25 = a4;

LABEL_8:
      v13 = [v8 objectForKeyedSubscript:@"DDAttributeBackup"];

      if (!v13)
      {
        v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v23 = a1;
        v14 = *(a1 + 40);
        v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v27;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              while (1)
              {
                if (*v27 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v20 = *(*(&v26 + 1) + 8 * i);
                v21 = [v8 objectForKeyedSubscript:v20];
                if (v21)
                {
                  break;
                }

                v19 = [MEMORY[0x277CBEB68] null];
                [v4 setObject:v19 forKeyedSubscript:v20];

                if (v16 == ++i)
                {
                  goto LABEL_11;
                }
              }

              [v4 setObject:v21 forKeyedSubscript:v20];
            }

LABEL_11:
            v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
          }

          while (v16);
        }

        [*(v23 + 48) addAttribute:@"DDAttributeBackup" value:v4 range:{v24, v25}];
LABEL_22:

        goto LABEL_23;
      }

      goto LABEL_23;
    }
  }

  v10 = [v8 valueForKey:*MEMORY[0x277D041D8]];
  if (!v10)
  {

    if (!v9)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v24 = a3;
  v25 = a4;
  v11 = [v8 valueForKey:@"DDFoundExistingLink"];
  v12 = [v11 BOOLValue];

  if (v9)
  {
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_23:

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __99__NSMutableAttributedString_DataDetectorsSupport__dd_urlifyResult_withBlock_referenceDate_context___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    result = [*(result + 32) addAttribute:@"DDFoundExistingLink" value:MEMORY[0x277CBEC38] range:{a3, a4}];
    *a5 = 1;
  }

  return result;
}

uint64_t __86__NSMutableAttributedString_DataDetectorsSupport__dd_urlifyClientRange_index_context___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void __129__NSMutableAttributedString_DataDetectorsSupport__dd_makeLinksForResultsInAttributesOfType_usingURLificationBlock_context_range___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 type];
    v6 = [v5 isEqualToString:*MEMORY[0x277D04170]];

    if (v6)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = [v4 subResults];
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          v11 = 0;
          do
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(a1 + 32) dd_urlifyResult:*(*(&v17 + 1) + 8 * v11++) withBlock:*(a1 + 56) referenceDate:*(a1 + 40) context:*(a1 + 48)];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v9);
      }
    }

    else if ([*(a1 + 32) dd_urlifyResult:v4 withBlock:*(a1 + 56) referenceDate:*(a1 + 40) context:*(a1 + 48)])
    {
      if (*(a1 + 72) == 1)
      {
        [v4 coreResult];
        if (DDResultGetCategory() == 4)
        {
          v12 = *(*(*(a1 + 64) + 8) + 40);
          if (!v12)
          {
            v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v14 = *(*(a1 + 64) + 8);
            v15 = *(v14 + 40);
            *(v14 + 40) = v13;

            v12 = *(*(*(a1 + 64) + 8) + 40);
          }

          [v12 addObject:v4];
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __129__NSMutableAttributedString_DataDetectorsSupport__dd_makeLinksForResultsInAttributesOfType_usingURLificationBlock_context_range___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __129__NSMutableAttributedString_DataDetectorsSupport__dd_makeLinksForResultsInAttributesOfType_usingURLificationBlock_context_range___block_invoke_2_cold_1(v2);
  }

  Helper_x8__OBJC_CLASS___SGNLEventSuggestionsMetrics = gotLoadHelper_x8__OBJC_CLASS___SGNLEventSuggestionsMetrics(v3);
  [*(v5 + 96) shownViaDataDetectorsLinkInApp:{2, Helper_x8__OBJC_CLASS___SGNLEventSuggestionsMetrics}];
}

id __109__NSMutableAttributedString_DataDetectorsSupport__dd_replaceResultAttributesWithSimpleLinksForTypes_context___block_invoke(uint64_t a1, uint64_t a2)
{
  Category = DDResultGetCategory();
  if (Category == 1)
  {
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (Category != 2)
    {
      if (Category == 3 && (*(a1 + 32) & 4) != 0)
      {
        v5 = DDMapURLForResult(a2);
        if (v5)
        {
          v6 = v5;
          v7 = [MEMORY[0x277CC1E80] defaultWorkspace];
          v8 = [v7 URLOverrideForURL:v6];
        }

        else
        {
          v8 = 0;
        }

        v11 = [v8 absoluteString];

        v9 = v11;

        return v9;
      }

      goto LABEL_8;
    }

    if ((*(a1 + 32) & 1) == 0)
    {
LABEL_8:
      v9 = 0;

      return v9;
    }
  }

  v9 = DDResultCopyExtractedURL();

  return v9;
}

void __129__NSMutableAttributedString_DataDetectorsSupport__dd_makeLinksForResultsInAttributesOfType_usingURLificationBlock_context_range___block_invoke_2_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 matchedString];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

@end