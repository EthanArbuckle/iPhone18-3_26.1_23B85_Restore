@interface ICCalculateStringScanner
- (ICCalculateStringScanner)initWithTextStorage:(id)storage;
- (ICTTTextStorage)textStorage;
- (id)offsetsForInlineAttachment:(id)attachment;
- (id)replacementForAttachment:(id)attachment;
- (id)scanStringforRange:(_NSRange)range previewedExpressionString:(id)string;
@end

@implementation ICCalculateStringScanner

- (ICCalculateStringScanner)initWithTextStorage:(id)storage
{
  storageCopy = storage;
  v8.receiver = self;
  v8.super_class = ICCalculateStringScanner;
  v5 = [(ICCalculateStringScanner *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICCalculateStringScanner *)v5 setTextStorage:storageCopy];
  }

  return v6;
}

- (id)scanStringforRange:(_NSRange)range previewedExpressionString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__40;
  v39 = __Block_byref_object_dispose__40;
  textStorage = [(ICCalculateStringScanner *)self textStorage];
  string = [textStorage string];
  v10 = [string substringWithRange:{location, length}];
  v40 = [v10 mutableCopy];

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__40;
  v33 = __Block_byref_object_dispose__40;
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v25 = stringCopy;
  if (stringCopy)
  {
    if ([stringCopy length])
    {
      v11 = [v36[5] rangeOfString:stringCopy];
      v13 = v11;
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = v12;
        if (v11 < v11 + v12)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
          do
          {
            v16 = [v36[5] ic_substringWithRange:{v13, 1, v25}];
            ic_equalsSignCharacterString = [MEMORY[0x1E696AEC0] ic_equalsSignCharacterString];
            v18 = [v16 isEqualToString:ic_equalsSignCharacterString];

            v19 = v13;
            if ((v18 & 1) == 0)
            {
              v20 = @"?";
              if (v13 == v15 + 1 || (v20 = @" ", v13 > v15 + 1))
              {
                [v36[5] replaceCharactersInRange:v13 withString:{1, v20}];
                v19 = v15;
              }

              else
              {
                v19 = v15;
              }
            }

            ++v13;
            v15 = v19;
            --v14;
          }

          while (v14);
        }
      }
    }
  }

  textStorage2 = [(ICCalculateStringScanner *)self textStorage];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __73__ICCalculateStringScanner_scanStringforRange_previewedExpressionString___block_invoke;
  v27[3] = &unk_1E846B9D8;
  v27[8] = location;
  v27[9] = length;
  v27[4] = self;
  v27[5] = v28;
  v27[6] = &v35;
  v27[7] = &v29;
  [textStorage2 enumerateAttributesInRange:location options:length usingBlock:{0, v27}];

  v22 = objc_alloc(MEMORY[0x1E69B7AC8]);
  v23 = [v22 initWithFirstObject:v36[5] secondObject:v30[5]];
  _Block_object_dispose(v28, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);

  return v23;
}

void __73__ICCalculateStringScanner_scanStringforRange_previewedExpressionString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DB5F8]];
  objc_opt_class();
  v9 = ICDynamicCast();
  v10 = v9;
  if (v9 && ([v9 attachment], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    v13 = [*(a1 + 32) replacementForAttachment:v11];
    if (v13)
    {
      v14 = [*(a1 + 32) offsetsForInlineAttachment:v12];
      [*(*(*(a1 + 48) + 8) + 40) replaceCharactersInRange:a3 - *(a1 + 64) + *(*(*(a1 + 40) + 8) + 24) withString:{a4, v13}];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __73__ICCalculateStringScanner_scanStringforRange_previewedExpressionString___block_invoke_2;
      v35[3] = &unk_1E846B9B0;
      v35[4] = *(a1 + 40);
      v36 = *(a1 + 64);
      v15 = [v14 ic_map:v35];
      [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v15];
      v16 = *(*(*(a1 + 40) + 8) + 24);
      *(*(*(a1 + 40) + 8) + 24) = v16 - a4 + [v13 length];
    }
  }

  else
  {
    v17 = MEMORY[0x1E69B7610];
    v18 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69B7610]];
    if (v18 && (v19 = v18, [v7 objectForKeyedSubscript:*v17], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "integerValue"), v20, v19, v21 >= 1))
    {
      v33 = a3 - *(a1 + 64);
      v32 = *(*(*(a1 + 40) + 8) + 24);
      v22 = [*(a1 + 32) textStorage];
      v23 = [v22 string];
      v24 = [v23 substringWithRange:{a3, a4}];

      v34 = v24;
      v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"^(%@)", v24];
      v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([v25 length])
      {
        v27 = 0;
        do
        {
          v28 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(*(a1 + 40) + 8) + 24) - *(a1 + 64)];
          [v26 addObject:v28];

          ++v27;
        }

        while ([v25 length] > v27);
      }

      [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v26];
      [*(*(*(a1 + 48) + 8) + 40) replaceCharactersInRange:v33 + v32 withString:{a4, v25}];
      v29 = *(*(*(a1 + 40) + 8) + 24);
      *(*(*(a1 + 40) + 8) + 24) = v29 - a4 + [v25 length];
    }

    else
    {
      for (i = objc_alloc_init(MEMORY[0x1E695DF70]); a4; --a4)
      {
        v31 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(*(a1 + 40) + 8) + 24) - *(a1 + 64)];
        [i addObject:v31];
      }

      [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:i];
    }
  }
}

uint64_t __73__ICCalculateStringScanner_scanStringforRange_previewedExpressionString___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = v3 + [a2 intValue] - *(a1 + 40);

  return [v2 numberWithInteger:v4];
}

- (id)replacementForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if ([attachmentCopy isCalculateResultAttachment])
  {
    v4 = @"=? ";
  }

  else if ([attachmentCopy isCalculateGraphExpressionAttachment])
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    displayText = [attachmentCopy displayText];
    ic_trailingTrimmedString = [displayText ic_trailingTrimmedString];
    v4 = [v5 initWithFormat:@" %@", ic_trailingTrimmedString];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)offsetsForInlineAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if ([attachmentCopy isCalculateResultAttachment])
  {
    v5 = &unk_1F4FC3B10;
  }

  else if ([attachmentCopy isCalculateGraphExpressionAttachment])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [(ICCalculateStringScanner *)self replacementForAttachment:attachmentCopy];
    if ([v6 length])
    {
      v7 = 0;
      do
      {
        [v5 addObject:&unk_1F4FC3F00];
        ++v7;
      }

      while ([v6 length] > v7);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ICTTTextStorage)textStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_textStorage);

  return WeakRetained;
}

@end