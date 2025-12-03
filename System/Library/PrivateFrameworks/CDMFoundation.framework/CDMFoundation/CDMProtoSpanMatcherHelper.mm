@interface CDMProtoSpanMatcherHelper
+ (BOOL)isTrailingSpanAdjacent:(id)adjacent secondSpan:(id)span tokenChain:(id)chain;
+ (void)enumerateTokenChain:(id)chain useNormalizedValues:(BOOL)values withCallback:(id)callback;
@end

@implementation CDMProtoSpanMatcherHelper

+ (BOOL)isTrailingSpanAdjacent:(id)adjacent secondSpan:(id)span tokenChain:(id)chain
{
  adjacentCopy = adjacent;
  spanCopy = span;
  chainCopy = chain;
  endTokenIndex = [adjacentCopy endTokenIndex];
  if (endTokenIndex == [spanCopy startTokenIndex])
  {
    goto LABEL_2;
  }

  endTokenIndex2 = [adjacentCopy endTokenIndex];
  if (endTokenIndex2 > [spanCopy startTokenIndex] || (v13 = objc_msgSend(adjacentCopy, "endTokenIndex"), objc_msgSend(chainCopy, "tokens"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v15 == v13))
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  endTokenIndex3 = [adjacentCopy endTokenIndex];
  tokens = [chainCopy tokens];
  if ([tokens count] < endTokenIndex3)
  {

    goto LABEL_13;
  }

  startTokenIndex = [spanCopy startTokenIndex];
  tokens2 = [chainCopy tokens];
  v20 = [tokens2 count];

  if (v20 <= startTokenIndex)
  {
    goto LABEL_13;
  }

  LODWORD(v21) = [adjacentCopy endTokenIndex];
  if (v21 >= [spanCopy startTokenIndex])
  {
LABEL_2:
    v11 = 1;
    goto LABEL_14;
  }

  v21 = v21;
  do
  {
    tokens3 = [chainCopy tokens];
    v23 = [tokens3 objectAtIndexedSubscript:v21];
    isSignificant = [v23 isSignificant];

    if (isSignificant)
    {
      break;
    }

    ++v21;
  }

  while ([spanCopy startTokenIndex] > v21);
  v11 = isSignificant ^ 1;
LABEL_14:

  return v11;
}

+ (void)enumerateTokenChain:(id)chain useNormalizedValues:(BOOL)values withCallback:(id)callback
{
  v63 = *MEMORY[0x1E69E9840];
  chainCopy = chain;
  callbackCopy = callback;
  tokens = [chainCopy tokens];
  if ([tokens count])
  {
    v9 = 0;
    *&v8 = 136316162;
    v42 = v8;
    v43 = chainCopy;
    do
    {
      v10 = [tokens objectAtIndexedSubscript:{v9, v42}];
      isSignificant = [v10 isSignificant];

      if (isSignificant)
      {
        v51 = 0;
        string = [MEMORY[0x1E696AD60] string];
        if ([tokens count] > v9 && (v51 & 1) == 0)
        {
          v13 = v9;
          while (1)
          {
            v14 = [tokens objectAtIndexedSubscript:v13];
            isSignificant2 = [v14 isSignificant];

            if ((isSignificant2 & 1) == 0)
            {
              v26 = [tokens objectAtIndexedSubscript:v13];
              value = [v26 value];
              [string appendString:value];
              goto LABEL_14;
            }

            v16 = [tokens objectAtIndexedSubscript:v9];
            begin = [v16 begin];
            v18 = [tokens objectAtIndexedSubscript:v13];
            v19 = [v18 end];
            v20 = [tokens objectAtIndexedSubscript:v9];
            v21 = v19 - [v20 begin];

            v46 = v13 - v9 + 1;
            if (values)
            {
              break;
            }

            v22 = [tokens objectAtIndexedSubscript:v13];
            getHasCleanValues = [v22 getHasCleanValues];

            if (!getHasCleanValues)
            {
              break;
            }

            normalizedString = [chainCopy normalizedString];
            v25 = [normalizedString length];

            if (v21 + begin > v25)
            {
              v26 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                value = [chainCopy normalizedString];
                normalizedString2 = [chainCopy normalizedString];
                v29 = [normalizedString2 length];
                *buf = v42;
                v54 = "+[CDMProtoSpanMatcherHelper enumerateTokenChain:useNormalizedValues:withCallback:]";
                v55 = 2048;
                v56 = begin;
                v57 = 2048;
                v58 = v21;
                v59 = 2112;
                v60 = value;
                v61 = 2048;
                v62 = v29;
                _os_log_impl(&dword_1DC287000, v26, OS_LOG_TYPE_INFO, "%s [WARN]: Skipping this callback as charRange.location=%lu + charRange.length=%lu would be out-of-bound for text=[%@] with length=%lu", buf, 0x34u);

                goto LABEL_14;
              }

              goto LABEL_15;
            }

            normalizedString3 = [chainCopy normalizedString];
            v40 = [normalizedString3 substringWithRange:{begin, v21}];

            callbackCopy[2](callbackCopy, v40, begin, v21, v9, v46, &v51);
LABEL_28:
            if ([tokens count] <= ++v13 || (v51 & 1) != 0)
            {
              goto LABEL_30;
            }
          }

          v30 = [tokens objectAtIndexedSubscript:v13];
          normalizedValues = [v30 normalizedValues];
          v32 = [normalizedValues count];

          if (v32)
          {
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v33 = [tokens objectAtIndexedSubscript:v13];
            normalizedValues2 = [v33 normalizedValues];

            v35 = [normalizedValues2 countByEnumeratingWithState:&v47 objects:v52 count:16];
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
                    objc_enumerationMutation(normalizedValues2);
                  }

                  [string appendString:*(*(&v47 + 1) + 8 * i)];
                }

                v36 = [normalizedValues2 countByEnumeratingWithState:&v47 objects:v52 count:16];
              }

              while (v36);
            }

            callbackCopy[2](callbackCopy, string, begin, v21, v9, v46, &v51);
            chainCopy = v43;
            goto LABEL_28;
          }

          v26 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            value = [tokens objectAtIndexedSubscript:v13];
            *buf = 136315394;
            v54 = "+[CDMProtoSpanMatcherHelper enumerateTokenChain:useNormalizedValues:withCallback:]";
            v55 = 2112;
            v56 = value;
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

    while ([tokens count] > v9);
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