@interface CDMProtoSpanMatcherHelper
+ (BOOL)isTrailingSpanAdjacent:(id)a3 secondSpan:(id)a4 tokenChain:(id)a5;
+ (void)enumerateTokenChain:(id)a3 useNormalizedValues:(BOOL)a4 withCallback:(id)a5;
@end

@implementation CDMProtoSpanMatcherHelper

+ (BOOL)isTrailingSpanAdjacent:(id)a3 secondSpan:(id)a4 tokenChain:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 endTokenIndex];
  if (v10 == [v8 startTokenIndex])
  {
    goto LABEL_2;
  }

  v12 = [v7 endTokenIndex];
  if (v12 > [v8 startTokenIndex] || (v13 = objc_msgSend(v7, "endTokenIndex"), objc_msgSend(v9, "tokens"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v15 == v13))
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v16 = [v7 endTokenIndex];
  v17 = [v9 tokens];
  if ([v17 count] < v16)
  {

    goto LABEL_13;
  }

  v18 = [v8 startTokenIndex];
  v19 = [v9 tokens];
  v20 = [v19 count];

  if (v20 <= v18)
  {
    goto LABEL_13;
  }

  LODWORD(v21) = [v7 endTokenIndex];
  if (v21 >= [v8 startTokenIndex])
  {
LABEL_2:
    v11 = 1;
    goto LABEL_14;
  }

  v21 = v21;
  do
  {
    v22 = [v9 tokens];
    v23 = [v22 objectAtIndexedSubscript:v21];
    v24 = [v23 isSignificant];

    if (v24)
    {
      break;
    }

    ++v21;
  }

  while ([v8 startTokenIndex] > v21);
  v11 = v24 ^ 1;
LABEL_14:

  return v11;
}

+ (void)enumerateTokenChain:(id)a3 useNormalizedValues:(BOOL)a4 withCallback:(id)a5
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v44 = a5;
  v7 = [v6 tokens];
  if ([v7 count])
  {
    v9 = 0;
    *&v8 = 136316162;
    v42 = v8;
    v43 = v6;
    do
    {
      v10 = [v7 objectAtIndexedSubscript:{v9, v42}];
      v11 = [v10 isSignificant];

      if (v11)
      {
        v51 = 0;
        v12 = [MEMORY[0x1E696AD60] string];
        if ([v7 count] > v9 && (v51 & 1) == 0)
        {
          v13 = v9;
          while (1)
          {
            v14 = [v7 objectAtIndexedSubscript:v13];
            v15 = [v14 isSignificant];

            if ((v15 & 1) == 0)
            {
              v26 = [v7 objectAtIndexedSubscript:v13];
              v27 = [v26 value];
              [v12 appendString:v27];
              goto LABEL_14;
            }

            v16 = [v7 objectAtIndexedSubscript:v9];
            v17 = [v16 begin];
            v18 = [v7 objectAtIndexedSubscript:v13];
            v19 = [v18 end];
            v20 = [v7 objectAtIndexedSubscript:v9];
            v21 = v19 - [v20 begin];

            v46 = v13 - v9 + 1;
            if (a4)
            {
              break;
            }

            v22 = [v7 objectAtIndexedSubscript:v13];
            v23 = [v22 getHasCleanValues];

            if (!v23)
            {
              break;
            }

            v24 = [v6 normalizedString];
            v25 = [v24 length];

            if (v21 + v17 > v25)
            {
              v26 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = [v6 normalizedString];
                v28 = [v6 normalizedString];
                v29 = [v28 length];
                *buf = v42;
                v54 = "+[CDMProtoSpanMatcherHelper enumerateTokenChain:useNormalizedValues:withCallback:]";
                v55 = 2048;
                v56 = v17;
                v57 = 2048;
                v58 = v21;
                v59 = 2112;
                v60 = v27;
                v61 = 2048;
                v62 = v29;
                _os_log_impl(&dword_1DC287000, v26, OS_LOG_TYPE_INFO, "%s [WARN]: Skipping this callback as charRange.location=%lu + charRange.length=%lu would be out-of-bound for text=[%@] with length=%lu", buf, 0x34u);

                goto LABEL_14;
              }

              goto LABEL_15;
            }

            v39 = [v6 normalizedString];
            v40 = [v39 substringWithRange:{v17, v21}];

            v44[2](v44, v40, v17, v21, v9, v46, &v51);
LABEL_28:
            if ([v7 count] <= ++v13 || (v51 & 1) != 0)
            {
              goto LABEL_30;
            }
          }

          v30 = [v7 objectAtIndexedSubscript:v13];
          v31 = [v30 normalizedValues];
          v32 = [v31 count];

          if (v32)
          {
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v33 = [v7 objectAtIndexedSubscript:v13];
            v34 = [v33 normalizedValues];

            v35 = [v34 countByEnumeratingWithState:&v47 objects:v52 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v48;
              do
              {
                for (i = 0; i != v36; ++i)
                {
                  if (*v48 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  [v12 appendString:*(*(&v47 + 1) + 8 * i)];
                }

                v36 = [v34 countByEnumeratingWithState:&v47 objects:v52 count:16];
              }

              while (v36);
            }

            v44[2](v44, v12, v17, v21, v9, v46, &v51);
            v6 = v43;
            goto LABEL_28;
          }

          v26 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = [v7 objectAtIndexedSubscript:v13];
            *buf = 136315394;
            v54 = "+[CDMProtoSpanMatcherHelper enumerateTokenChain:useNormalizedValues:withCallback:]";
            v55 = 2112;
            v56 = v27;
            _os_log_impl(&dword_1DC287000, v26, OS_LOG_TYPE_INFO, "%s [WARN]: A significant token: (%@) does not have normalized values. This won't break but should not happen", buf, 0x16u);
LABEL_14:
          }

LABEL_15:

          goto LABEL_28;
        }

LABEL_30:
      }

      ++v9;
    }

    while ([v7 count] > v9);
  }

  v41 = *MEMORY[0x1E69E9840];
}

uint64_t __55__CDMProtoSpanMatcherHelper_voiceCommandSpanComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  LODWORD(v5) = [v6 endTokenIndex];
  v8 = v5 - [v6 startTokenIndex];
  LODWORD(v5) = [v7 endTokenIndex];
  v9 = v5 - [v7 startTokenIndex];
  if (v8 > v9)
  {
    goto LABEL_2;
  }

  if (v8 < v9)
  {
LABEL_4:
    v10 = 1;
    goto LABEL_12;
  }

  if (![v6 matcherNames] || !objc_msgSend(v7, "matcherNames"))
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  if (*[v6 matcherNames] != 2 || *objc_msgSend(v7, "matcherNames") == 2)
  {
    if (*[v6 matcherNames] != 2 && *objc_msgSend(v7, "matcherNames") == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

LABEL_2:
  v10 = -1;
LABEL_12:

  return v10;
}

uint64_t __55__CDMProtoSpanMatcherHelper_descendingLengthComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 startTokenIndex];
  v7 = [v5 endTokenIndex];

  v8 = [v4 startTokenIndex];
  v9 = [v4 endTokenIndex];

  if (v7 - v6 > v9 - v8)
  {
    return -1;
  }

  else
  {
    return v7 - v6 < v9 - v8;
  }
}

uint64_t __58__CDMProtoSpanMatcherHelper_ascendingStartIndexComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 startTokenIndex];
  v7 = [v5 startTokenIndex];
  if (v6 >= v7)
  {
    if (v6 <= v7)
    {
      v9 = [v4 endTokenIndex];
      v10 = [v5 endTokenIndex];
      if (v9 > v10)
      {
        v8 = -1;
      }

      else
      {
        v8 = v9 < v10;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

@end