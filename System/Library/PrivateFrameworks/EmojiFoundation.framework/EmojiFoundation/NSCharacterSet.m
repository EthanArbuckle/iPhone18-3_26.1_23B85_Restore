@interface NSCharacterSet
@end

@implementation NSCharacterSet

uint64_t __52__NSCharacterSet_EMFEmojiExtras___emojiCharacterSet__block_invoke()
{
  result = CEMCreateEmojiCharacterSet();
  _emojiCharacterSet___emojiCharacterSet = result;
  return result;
}

@end