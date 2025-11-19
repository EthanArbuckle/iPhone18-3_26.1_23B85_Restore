@interface NSString(ICLinguistics)
- (id)ic_guessedWords;
@end

@implementation NSString(ICLinguistics)

- (id)ic_guessedWords
{
  v2 = [MEMORY[0x1E695DF58] preferredLanguages];
  v3 = [v2 firstObject];

  v4 = objc_alloc_init(MEMORY[0x1E69DD080]);
  if ([v4 rangeOfMisspelledWordInString:a1 range:0 startingAt:objc_msgSend(a1 wrap:"length") language:{0, 0, v3}] || (v6 = v5, v5 != objc_msgSend(a1, "length")))
  {
    v7 = 0;
  }

  else
  {
    v7 = [v4 guessesForWordRange:0 inString:v6 language:{a1, v3}];
  }

  return v7;
}

@end