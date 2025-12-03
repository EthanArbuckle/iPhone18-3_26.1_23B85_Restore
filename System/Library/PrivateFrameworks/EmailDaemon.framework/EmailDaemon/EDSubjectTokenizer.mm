@interface EDSubjectTokenizer
+ (id)tokenizeString:(id)string;
@end

@implementation EDSubjectTokenizer

+ (id)tokenizeString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__44;
  v21 = __Block_byref_object_dispose__44;
  v22 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5 = MEMORY[0x1E696AD00];
  v6 = [stringCopy length];
  v7 = *MEMORY[0x1E696A550];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __37__EDSubjectTokenizer_tokenizeString___block_invoke;
  v13[3] = &unk_1E8257D48;
  v8 = stringCopy;
  v14 = v8;
  v16 = &v17;
  v9 = v4;
  v15 = v9;
  [v5 enumerateTagsForString:v8 range:0 unit:v6 scheme:0 options:v7 orthography:4 usingBlock:{0, v13}];
  if ([v18[5] length])
  {
    [v9 addObject:v18[5]];
  }

  v10 = v15;
  v11 = v9;

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __37__EDSubjectTokenizer_tokenizeString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15 = a2;
  v7 = [*(a1 + 32) substringWithRange:{a3, a4}];
  v8 = [v15 isEqualToString:*MEMORY[0x1E696A520]];
  v9 = *(*(*(a1 + 48) + 8) + 40);
  if (v8)
  {
    [v9 appendString:v7];
  }

  else
  {
    if ([v9 length])
    {
      [*(a1 + 40) addObject:*(*(*(a1 + 48) + 8) + 40)];
      v10 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    v13 = *(a1 + 40);
    v14 = [v7 lowercaseString];
    [v13 addObject:v14];
  }
}

@end