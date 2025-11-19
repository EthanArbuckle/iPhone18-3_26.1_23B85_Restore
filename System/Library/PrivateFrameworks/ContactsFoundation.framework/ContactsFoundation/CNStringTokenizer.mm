@interface CNStringTokenizer
+ (id)adjustRanges:(id)a3 toIncludeNonBreakingCharactersInString:(id)a4;
+ (id)tokenizeString:(id)a3;
- (CNStringTokenizer)init;
- (CNStringTokenizer)initWithLocale:(id)a3;
- (id)rangesOfWordTokensInString:(id)a3;
- (id)rangesOfWordUnitTokensInString:(id)a3;
- (id)tokenizeString:(id)a3;
- (void)dealloc;
@end

@implementation CNStringTokenizer

+ (id)tokenizeString:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CNStringTokenizer);
  v5 = [(CNStringTokenizer *)v4 tokenizeString:v3];

  return v5;
}

- (CNStringTokenizer)init
{
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [(CNStringTokenizer *)self initWithLocale:v3];

  return v4;
}

- (CNStringTokenizer)initWithLocale:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNStringTokenizer;
  v5 = [(CNStringTokenizer *)&v10 init];
  if (v5)
  {
    v11.location = -1;
    v11.length = 0;
    v5->_tokenizer = CFStringTokenizerCreate(*MEMORY[0x1E695E480], &stru_1EF441028, v11, 0, v4);
    v6 = objc_alloc_init(CNUnfairLock);
    lock = v5->_lock;
    v5->_lock = v6;

    v8 = v5;
  }

  return v5;
}

- (void)dealloc
{
  tokenizer = self->_tokenizer;
  if (tokenizer)
  {
    CFRelease(tokenizer);
  }

  v4.receiver = self;
  v4.super_class = CNStringTokenizer;
  [(CNStringTokenizer *)&v4 dealloc];
}

- (id)tokenizeString:(id)a3
{
  v4 = a3;
  v5 = [(CNStringTokenizer *)self rangesOfWordTokensInString:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__CNStringTokenizer_tokenizeString___block_invoke;
  v9[3] = &unk_1E6ED7040;
  v10 = v4;
  v6 = v4;
  v7 = [v5 _cn_map:v9];

  return v7;
}

uint64_t __36__CNStringTokenizer_tokenizeString___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 rangeValue];

  return [v2 substringWithRange:{v4, v3}];
}

- (id)rangesOfWordTokensInString:(id)a3
{
  v4 = a3;
  v5 = [(CNStringTokenizer *)self rangesOfWordUnitTokensInString:v4];
  v6 = [objc_opt_class() adjustRanges:v5 toIncludeNonBreakingCharactersInString:v4];

  return v6;
}

- (id)rangesOfWordUnitTokensInString:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(CNStringTokenizer *)self lock];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__CNStringTokenizer_rangesOfWordUnitTokensInString___block_invoke;
  v12[3] = &unk_1E6ED57E0;
  v12[4] = self;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  CNRunWithLock(v6, v12);

  v9 = v14;
  v10 = v7;

  return v7;
}

CFStringTokenizerTokenType __52__CNStringTokenizer_rangesOfWordUnitTokensInString___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tokenizer];
  v3 = *(a1 + 40);
  v8.length = [(__CFString *)v3 length];
  v8.location = 0;
  CFStringTokenizerSetString(v2, v3, v8);
  for (result = CFStringTokenizerAdvanceToNextToken([*(a1 + 32) tokenizer]); result; result = CFStringTokenizerAdvanceToNextToken(objc_msgSend(*(a1 + 32), "tokenizer")))
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange([*(a1 + 32) tokenizer]);
    v6 = *(a1 + 48);
    v7 = [MEMORY[0x1E696B098] valueWithRange:{CurrentTokenRange.location, CurrentTokenRange.length}];
    [v6 addObject:v7];
  }

  return result;
}

+ (id)adjustRanges:(id)a3 toIncludeNonBreakingCharactersInString:(id)a4
{
  v6 = a4;
  v7 = [a3 mutableCopy];
  v24 = [MEMORY[0x1E695DF70] array];
  if ([v7 count])
  {
    v8 = 0;
    do
    {
      v9 = [v7 objectAtIndex:v8];
      location = [v9 rangeValue];
      length = v11;

      v13 = [v6 length];
      if (++v8 >= [v7 count])
      {
        v16 = 0;
        if (location)
        {
LABEL_7:
          v17 = location + length;
          while (1)
          {
            v18 = location - 1;
            if (![a1 isCharacterNonBreaking:{objc_msgSend(v6, "characterAtIndex:", location - 1)}])
            {
              break;
            }

            ++length;
            --location;
            if (!v18)
            {
              length = v17;
              break;
            }
          }
        }
      }

      else
      {
        v14 = [v7 objectAtIndex:v8];
        v13 = [v14 rangeValue];
        v16 = v15;

        if (location)
        {
          goto LABEL_7;
        }
      }

      while (location + length < v13 && [a1 isCharacterNonBreaking:{objc_msgSend(v6, "characterAtIndex:")}])
      {
        ++length;
        if (location + length == v13 && v16)
        {
          v26.location = location;
          v26.length = length;
          v27.location = v13;
          v27.length = v16;
          v19 = NSUnionRange(v26, v27);
          location = v19.location;
          length = v19.length;
          [v7 removeObjectAtIndex:v8];
          if (v8 < [v7 count])
          {
            v20 = [v7 objectAtIndex:v8];
            v13 = [v20 rangeValue];
            v16 = v21;
          }
        }
      }

      v22 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
      [v24 addObject:v22];
    }

    while (v8 < [v7 count]);
  }

  return v24;
}

uint64_t __44__CNStringTokenizer_isCharacterNonBreaking___block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"-@._+"];
  v1 = isCharacterNonBreaking__cn_once_object_1;
  isCharacterNonBreaking__cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end