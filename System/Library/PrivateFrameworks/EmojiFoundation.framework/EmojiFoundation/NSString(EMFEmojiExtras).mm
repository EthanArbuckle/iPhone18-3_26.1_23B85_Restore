@interface NSString(EMFEmojiExtras)
- (BOOL)_containsEmoji;
- (void)_enumerateEmojiTokensInRange:()EMFEmojiExtras block:;
@end

@implementation NSString(EMFEmojiExtras)

- (BOOL)_containsEmoji
{
  _emojiCharacterSet = [MEMORY[0x1E696AB08] _emojiCharacterSet];
  if (_emojiCharacterSet)
  {
    v3 = [self rangeOfCharacterFromSet:_emojiCharacterSet] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_enumerateEmojiTokensInRange:()EMFEmojiExtras block:
{
  v5 = a5;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    CEMEnumerateEmojiTokensInStringWithBlock();
  }
}

@end