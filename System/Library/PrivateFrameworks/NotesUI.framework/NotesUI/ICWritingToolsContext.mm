@interface ICWritingToolsContext
- (ICWritingToolsContext)initWithAttributedString:(id)string originalString:(id)originalString originalRange:(_NSRange)range rangeMapping:(id)mapping;
- (_NSRange)rangeInOriginalStringCorrespondingToRange:(_NSRange)range;
- (void)updateRangeMapping:(id)mapping withinRange:(_NSRange)range;
@end

@implementation ICWritingToolsContext

- (ICWritingToolsContext)initWithAttributedString:(id)string originalString:(id)originalString originalRange:(_NSRange)range rangeMapping:(id)mapping
{
  length = range.length;
  location = range.location;
  v44 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  originalStringCopy = originalString;
  mappingCopy = mapping;
  if (location != [originalStringCopy length] || length)
  {
    selfCopy = self;
    v32 = length;
    v33 = originalStringCopy;
    v34 = stringCopy;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [mappingCopy allKeys];
    v16 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v40;
      v14 = location;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v39 + 1) + 8 * i);
          [v20 rangeValue];
          v22 = v21;
          v23 = [mappingCopy objectForKeyedSubscript:v20];
          rangeValue = [v23 rangeValue];
          v26 = v25;

          if (location >= rangeValue + v26)
          {
            v14 = v22 + v14 - v26;
          }

          else if (location > rangeValue)
          {
            v27 = os_log_create("com.apple.notes", "WritingTools");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              [ICWritingToolsContext initWithAttributedString:v38 originalString:v27 originalRange:? rangeMapping:?];
            }
          }
        }

        v17 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v17);
    }

    else
    {
      v14 = location;
    }

    originalStringCopy = v33;
    stringCopy = v34;
    self = selfCopy;
    v15 = v32;
  }

  else
  {
    v14 = [stringCopy length];
    v15 = 0;
  }

  v36.receiver = self;
  v36.super_class = ICWritingToolsContext;
  v28 = [(UIWritingToolsCoordinatorContext *)&v36 initWithAttributedString:stringCopy range:v14, v15];
  v29 = v28;
  if (v28)
  {
    [(ICWritingToolsContext *)v28 setOriginalString:originalStringCopy];
    [(ICWritingToolsContext *)v29 setRangeMapping:mappingCopy];
  }

  return v29;
}

- (_NSRange)rangeInOriginalStringCorrespondingToRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v39 = *MEMORY[0x1E69E9840];
  rangeMapping = [(ICWritingToolsContext *)self rangeMapping];
  v6 = [rangeMapping count];

  if (v6)
  {
    rangeMapping2 = [(ICWritingToolsContext *)self rangeMapping];
    allKeys = [rangeMapping2 allKeys];
    v9 = [allKeys sortedArrayUsingComparator:&__block_literal_global_5];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    v29 = length;
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = 0;
      v32 = location + length;
      v31 = *v35;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          rangeValue = [v15 rangeValue];
          v18 = v17;
          rangeMapping3 = [(ICWritingToolsContext *)self rangeMapping];
          v20 = [rangeMapping3 objectForKeyedSubscript:v15];
          [v20 rangeValue];
          v22 = v21;

          v23 = v22 - v18;
          v24 = rangeValue + v18;
          if (rangeValue < v32 && v24 > location)
          {
            v26 = v22 - v18;
          }

          else
          {
            v26 = 0;
          }

          v12 += v26;
          if (v24 > location)
          {
            v23 = 0;
          }

          v13 += v23;
        }

        v11 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    location += v13;
    length = v12 + v29;
  }

  v27 = location;
  v28 = length;
  result.length = v28;
  result.location = v27;
  return result;
}

uint64_t __67__ICWritingToolsContext_rangeInOriginalStringCorrespondingToRange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rangeValue];
  v6 = [v4 rangeValue];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

- (void)updateRangeMapping:(id)mapping withinRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  v44 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  v7 = mappingCopy;
  if (location)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v9 = v7;
    obj = [v7 allKeys];
    v10 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v39;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v38 + 1) + 8 * i);
          rangeValue = [v14 rangeValue];
          v17 = v16;
          v18 = [v9 objectForKeyedSubscript:v14];
          v19 = [MEMORY[0x1E696B098] valueWithRange:{rangeValue + location, v17}];
          [dictionary setObject:v18 forKeyedSubscript:v19];
        }

        v11 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v11);
    }

    v20 = [dictionary copy];
    v7 = v9;
  }

  else
  {
    v20 = mappingCopy;
  }

  v21 = selfCopy;
  rangeMapping = [(ICWritingToolsContext *)selfCopy rangeMapping];
  v23 = [rangeMapping mutableCopy];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  rangeMapping2 = [(ICWritingToolsContext *)v21 rangeMapping];
  v25 = [rangeMapping2 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v35;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(rangeMapping2);
        }

        v29 = *(*(&v34 + 1) + 8 * j);
        v45.location = [v29 rangeValue];
        v46.location = location;
        v46.length = length;
        if (NSIntersectionRange(v45, v46).length)
        {
          [v23 removeObjectForKey:v29];
        }
      }

      v26 = [rangeMapping2 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v26);
  }

  [v23 addEntriesFromDictionary:v20];
  v30 = [v23 copy];
  [v32 setRangeMapping:v30];
}

- (void)initWithAttributedString:(os_log_t)log originalString:originalRange:rangeMapping:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1D4171000, log, OS_LOG_TYPE_ERROR, "Unexpectedly getting asked to form Writing Tools Context for range in between table.", buf, 2u);
}

@end