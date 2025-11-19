@interface EARFormatter
@end

@implementation EARFormatter

void __111___EARFormatter_initWithQuasarConfig_overrideConfigFiles_supportEmojiRecognition_language_skipPathsExistCheck___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 32) + 8);
  if (v3)
  {
    [v3 ear_toString];
  }

  else
  {
    __p = 0uLL;
    v7 = 0;
  }

  std::vector<std::string>::push_back[abi:ne200100](v5 + 48, &__p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void __82___EARFormatter_recognizeEmojiForTokens_emojiTokenIndices_persistEmoji_choiceIdx___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  if (a3 == 1)
  {
    v9 = *(a1 + 40);
    a3 = v9 ^ 1;
    a4 += v9;
  }

  v10 = *(*(*(a1 + 32) + 8) + 40);
  v13[0] = v7;
  v11 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];
  v13[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  [v10 addObject:v12];
}

uint64_t __82___EARFormatter_recognizeEmojiForTokens_emojiTokenIndices_persistEmoji_choiceIdx___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectAtIndex:1];
  v6 = [v4 objectAtIndex:1];
  v7 = [v5 rangeValue];
  v8 = [v6 rangeValue];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  v11 = [v9 compare:v10];

  return v11;
}

@end