@interface NSString(ICLinguistics)
- (id)ic_guessedWords;
@end

@implementation NSString(ICLinguistics)

- (id)ic_guessedWords
{
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  firstObject = [preferredLanguages firstObject];

  v4 = objc_alloc_init(MEMORY[0x1E69DD080]);
  if ([v4 rangeOfMisspelledWordInString:self range:0 startingAt:objc_msgSend(self wrap:"length") language:{0, 0, firstObject}] || (v6 = v5, v5 != objc_msgSend(self, "length")))
  {
    v7 = 0;
  }

  else
  {
    v7 = [v4 guessesForWordRange:0 inString:v6 language:{self, firstObject}];
  }

  return v7;
}

@end