@interface NSMutableAttributedString(DataDetectorsSupport)
- (uint64_t)dd_urlifyClientRange:()DataDetectorsSupport index:context:;
- (uint64_t)dd_urlifyResult:()DataDetectorsSupport withBlock:referenceDate:context:;
- (void)dd_appendUrl:()DataDetectorsSupport context:range:backedAttributes:;
- (void)dd_makeLinksForResultsInAttributesOfType:()DataDetectorsSupport context:;
- (void)dd_makeLinksForResultsInAttributesOfType:()DataDetectorsSupport context:range:;
- (void)dd_makeLinksForResultsInAttributesOfType:()DataDetectorsSupport usingURLificationBlock:context:range:;
- (void)dd_replaceResultAttributesWithSimpleLinksForTypes:()DataDetectorsSupport context:;
- (void)dd_resetResults:()DataDetectorsSupport;
@end

@implementation NSMutableAttributedString(DataDetectorsSupport)

- (void)dd_resetResults:()DataDetectorsSupport
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v5 = [a1 length];
  v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:8];
  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __67__NSMutableAttributedString_DataDetectorsSupport__dd_resetResults___block_invoke;
  v21[3] = &unk_278291638;
  v8 = v6;
  v22 = v8;
  v9 = v7;
  v26 = a3;
  v24 = a1;
  v25 = &v27;
  v23 = v9;
  [a1 enumerateAttributesInRange:0 options:v5 usingBlock:{0, v21}];
  if ((a3 & 1) == 0)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    if (qword_280B12328 != -1)
    {
      [NSMutableAttributedString(DataDetectorsSupport) dd_resetResults:];
    }

    v15 = v9;
    v10 = _MergedGlobals_12;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v31 count:16];
    if (v11)
    {
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v17 + 1) + 8 * i);
          [a1 enumerateAttribute:? inRange:? options:? usingBlock:?];
        }

        v11 = [v10 countByEnumeratingWithState:&v17 objects:v31 count:16];
      }

      while (v11);
    }

    v9 = v15;
  }

  if (*(v28 + 24) == 1)
  {
    [a1 endEditing];
  }

  _Block_object_dispose(&v27, 8);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)dd_appendUrl:()DataDetectorsSupport context:range:backedAttributes:
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [MEMORY[0x277CBEB38] dictionaryWithObject:v12 forKey:*MEMORY[0x277D740E8]];
  v16 = v15;
  if (v13)
  {
    [v15 setObject:v13 forKeyedSubscript:@"DDContext"];
  }

  [a1 addAttributes:v16 range:{a5, a6}];
  if ([v14 count])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __95__NSMutableAttributedString_DataDetectorsSupport__dd_appendUrl_context_range_backedAttributes___block_invoke;
    v17[3] = &unk_278291688;
    v18 = v12;
    v19 = v14;
    v20 = a1;
    [a1 enumerateAttributesInRange:a5 options:a6 usingBlock:{0, v17}];
  }
}

- (uint64_t)dd_urlifyResult:()DataDetectorsSupport withBlock:referenceDate:context:
{
  v45[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v38 = a6;
  [v10 coreResult];
  RangeForURLification = DDResultGetRangeForURLification();
  v15 = v14;
  v16 = [MEMORY[0x277CBEBB0] defaultTimeZone];
  v17 = [a1 length];
  v46.location = RangeForURLification;
  v46.length = v15;
  v48.location = 0;
  v48.length = v17;
  v18 = NSIntersectionRange(v46, v48);
  if (v18.location == RangeForURLification && v18.length == v15)
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v19 = *MEMORY[0x277D740E8];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __99__NSMutableAttributedString_DataDetectorsSupport__dd_urlifyResult_withBlock_referenceDate_context___block_invoke;
    v39[3] = &unk_2782916B0;
    v39[4] = a1;
    v39[5] = &v40;
    [a1 enumerateAttribute:v19 inRange:RangeForURLification options:v15 usingBlock:{0, v39}];
    if (v41[3])
    {
      v20 = 0;
LABEL_29:
      _Block_object_dispose(&v40, 8);
      goto LABEL_30;
    }

    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%lu", @"embedded-result", RangeForURLification];
    v21 = [v10 coreResult];
    v22 = v11[2](v11, v21, v37, v12, v16);
    if (v22)
    {
      v23 = [MEMORY[0x277CBEBC0] dd_URLWithPotentiallyInvalidURLString:v22];
LABEL_10:
      v24 = v23;
      if (v23 && (dd_urlLooksSuspicious(v23) & 1) == 0)
      {
        if (DDShouldUseLightLinksForResult())
        {
          v27 = *MEMORY[0x277D741E8];
          v45[0] = *MEMORY[0x277D741F0];
          v45[1] = v27;
          v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
        }

        else
        {
          v36 = [MEMORY[0x277CCA8D8] mainBundle];
          v29 = [v36 bundleIdentifier];
          if ([v29 isEqualToString:@"com.apple.mobilenotes"])
          {
            v30 = *MEMORY[0x277D741E8];
            v44[0] = *MEMORY[0x277D740C0];
            v44[1] = v30;
            v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
            v32 = v29;
            v28 = v31;
          }

          else
          {
            v32 = v29;
            v28 = 0;
          }
        }

        [a1 dd_appendUrl:v24 context:v38 range:RangeForURLification backedAttributes:{v15, v28}];

        v20 = 1;
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_28;
    }

    v25 = *MEMORY[0x277D04140];
    if (DDResultHasType())
    {
      v26 = [v38 objectForKeyedSubscript:@"IncludeMoney"];
      if ([v26 BOOLValue])
      {

        goto LABEL_21;
      }

      v33 = [DDConversionAction actionAvailableForResult:v21];

      if (v33)
      {
LABEL_21:
        v22 = DDInternalURLStringForResultIdentifier();
        if (v22)
        {
          v23 = [MEMORY[0x277CBEBC0] URLWithString:v22];
          goto LABEL_10;
        }

LABEL_24:
        v24 = 0;
        v20 = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

    v22 = 0;
    goto LABEL_24;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v47.location = RangeForURLification;
    v47.length = v15;
    [NSMutableAttributedString(DataDetectorsSupport) dd_urlifyResult:v10 withBlock:v47 referenceDate:0 context:v17];
  }

  v20 = 0;
LABEL_30:

  v34 = *MEMORY[0x277D85DE8];
  return v20;
}

- (uint64_t)dd_urlifyClientRange:()DataDetectorsSupport index:context:
{
  v28[2] = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = [a1 length];
  v29.location = a3;
  v29.length = a4;
  v31.location = 0;
  v31.length = v11;
  v12 = NSIntersectionRange(v29, v31);
  if (v12.location == a3 && v12.length == a4)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v13 = *MEMORY[0x277D740E8];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __86__NSMutableAttributedString_DataDetectorsSupport__dd_urlifyClientRange_index_context___block_invoke;
    v23[3] = &unk_2782916D8;
    v23[4] = &v24;
    [a1 enumerateAttribute:v13 inRange:a3 options:a4 usingBlock:{0, v23}];
    v14 = *(v25 + 24);
    if ((v14 & 1) == 0)
    {
      v15 = MEMORY[0x277CBEBC0];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%lu", @"x-apple-data-detectors-clientdefined", a5];
      v17 = [v15 URLWithString:v16];

      v18 = *MEMORY[0x277D741E8];
      v28[0] = *MEMORY[0x277D741F0];
      v28[1] = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
      [a1 dd_appendUrl:v17 context:v10 range:a3 backedAttributes:{a4, v19}];
    }

    v20 = v14 ^ 1u;
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v30.location = a3;
      v30.length = a4;
      [NSMutableAttributedString(DataDetectorsSupport) dd_urlifyClientRange:v30 index:0 context:v11];
    }

    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)dd_makeLinksForResultsInAttributesOfType:()DataDetectorsSupport usingURLificationBlock:context:range:
{
  v50 = *MEMORY[0x277D85DE8];
  v36 = a4;
  v11 = a5;
  v12 = [v11 objectForKeyedSubscript:@"CoreSpotlightUniqueIdentifier"];
  if (v12)
  {
    v13 = DDTrackEventCreationInHostApplication(0);
  }

  else
  {
    v13 = 0;
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__4;
  v47 = __Block_byref_object_dispose__4;
  v48 = 0;
  if (a6 != 0x7FFFFFFFFFFFFFFFLL && a7)
  {
    v14 = [a1 length];
    if (a6 > v14 || a6 + a7 > v14)
    {
      v26 = v14;
      v27 = MEMORY[0x277D86220];
      v28 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v51.location = a6;
        v51.length = a7;
        v29 = NSStringFromRange(v51);
        [NSMutableAttributedString(DataDetectorsSupport) dd_makeLinksForResultsInAttributesOfType:v29 usingURLificationBlock:buf context:v26 range:?];
      }
    }

    else
    {
      v15 = [v11 objectForKey:@"ReferenceDate"];
      v16 = *MEMORY[0x277D041D8];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __129__NSMutableAttributedString_DataDetectorsSupport__dd_makeLinksForResultsInAttributesOfType_usingURLificationBlock_context_range___block_invoke;
      v37[3] = &unk_278291700;
      v37[4] = a1;
      v40 = v36;
      v35 = v15;
      v38 = v35;
      v17 = v11;
      v42 = v13;
      v39 = v17;
      v41 = &v43;
      [a1 enumerateAttribute:v16 inRange:a6 options:a7 usingBlock:{0, v37}];
      v18 = [v17 objectForKeyedSubscript:@"CustomActionRanges"];
      if (v18)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = [v18 count];
          if (v19)
          {
            for (i = 0; i != v19; ++i)
            {
              v21 = [v18 objectAtIndexedSubscript:{i, v35}];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v23 = [v21 rangeValue];
                if (v23 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  if (v22)
                  {
                    [a1 dd_urlifyClientRange:v23 index:v22 context:{i, v17}];
                  }
                }
              }
            }
          }
        }
      }

      if (v13)
      {
        v24 = [dd_makeLinksForResultsInAttributesOfType_usingURLificationBlock_context_range___trackedCoreSpotlightUniqueIdentifiersCache objectForKey:v12];
        v25 = v24 == 0;

        if (v25)
        {
          [v44[5] enumerateObjectsUsingBlock:&__block_literal_global_12];
          v30 = dd_makeLinksForResultsInAttributesOfType_usingURLificationBlock_context_range___trackedCoreSpotlightUniqueIdentifiersCache;
          if (!dd_makeLinksForResultsInAttributesOfType_usingURLificationBlock_context_range___trackedCoreSpotlightUniqueIdentifiersCache)
          {
            v31 = objc_alloc_init(MEMORY[0x277CBEA78]);
            v32 = dd_makeLinksForResultsInAttributesOfType_usingURLificationBlock_context_range___trackedCoreSpotlightUniqueIdentifiersCache;
            dd_makeLinksForResultsInAttributesOfType_usingURLificationBlock_context_range___trackedCoreSpotlightUniqueIdentifiersCache = v31;

            v30 = dd_makeLinksForResultsInAttributesOfType_usingURLificationBlock_context_range___trackedCoreSpotlightUniqueIdentifiersCache;
          }

          v33 = [MEMORY[0x277CBEB68] null];
          [v30 setObject:v33 forKey:v12];
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          [NSMutableAttributedString(DataDetectorsSupport) dd_makeLinksForResultsInAttributesOfType:usingURLificationBlock:context:range:];
        }
      }

      v27 = v35;
    }
  }

  _Block_object_dispose(&v43, 8);

  v34 = *MEMORY[0x277D85DE8];
}

- (void)dd_makeLinksForResultsInAttributesOfType:()DataDetectorsSupport context:
{
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [NSMutableAttributedString(DataDetectorsSupport) dd_makeLinksForResultsInAttributesOfType:context:];
  }

  v7 = [DDOperation urlificationBlockForTypes:a3];
  [a1 dd_makeLinksForResultsInAttributesOfType:a3 usingURLificationBlock:v7 context:v6 range:{0, objc_msgSend(a1, "length")}];
}

- (void)dd_makeLinksForResultsInAttributesOfType:()DataDetectorsSupport context:range:
{
  v10 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [NSMutableAttributedString(DataDetectorsSupport) dd_makeLinksForResultsInAttributesOfType:context:];
  }

  v11 = [DDOperation urlificationBlockForTypes:a3];
  [a1 dd_makeLinksForResultsInAttributesOfType:a3 usingURLificationBlock:v11 context:v10 range:{a5, a6}];
}

- (void)dd_replaceResultAttributesWithSimpleLinksForTypes:()DataDetectorsSupport context:
{
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [NSMutableAttributedString(DataDetectorsSupport) dd_replaceResultAttributesWithSimpleLinksForTypes:context:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __109__NSMutableAttributedString_DataDetectorsSupport__dd_replaceResultAttributesWithSimpleLinksForTypes_context___block_invoke;
  v7[3] = &__block_descriptor_40_e229___NSString_40__0____DDResult____CFRuntimeBase_QAQ____DDQueryRange____DDQueryOffset_b16b16b32____DDQueryOffset_b16b16b32_____qq_q____CFArray_____CFString_____CFString__v____CFDictionary_qCf_8__NSString_16__NSDate_24__NSTimeZone_32l;
  v7[4] = a3;
  [a1 dd_makeLinksForResultsInAttributesOfType:a3 usingURLificationBlock:v7 context:v6 range:{0, objc_msgSend(a1, "length")}];
  [a1 removeAttribute:*MEMORY[0x277D041D8] range:{0, objc_msgSend(a1, "length")}];
}

- (void)dd_urlifyResult:()DataDetectorsSupport withBlock:referenceDate:context:.cold.1(int a1, NSRange range, NSUInteger a3, NSUInteger a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = NSStringFromRange(range);
  v16.location = a3;
  v16.length = a4;
  v7 = NSStringFromRange(v16);
  OUTLINED_FUNCTION_2_4();
  v12 = v6;
  v13 = v8;
  v14 = v9;
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Bad result %@: its range %@ is not completely included in the range %@ of the string it is attached to", v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dd_urlifyClientRange:()DataDetectorsSupport index:context:.cold.1(NSRange a1, NSUInteger a2, NSUInteger a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromRange(a1);
  v13.location = a2;
  v13.length = a3;
  v6 = NSStringFromRange(v13);
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Bad custom client range %@ not completely included in the range %@ of the string it is attached to", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dd_makeLinksForResultsInAttributesOfType:()DataDetectorsSupport usingURLificationBlock:context:range:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)dd_makeLinksForResultsInAttributesOfType:()DataDetectorsSupport usingURLificationBlock:context:range:.cold.2(void *a1, uint8_t *buf, uint64_t a3)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "dd_makeLinksForResults called with an invalid range %@ (self length = %lu))", buf, 0x16u);
}

- (void)dd_makeLinksForResultsInAttributesOfType:()DataDetectorsSupport context:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)dd_replaceResultAttributesWithSimpleLinksForTypes:()DataDetectorsSupport context:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end