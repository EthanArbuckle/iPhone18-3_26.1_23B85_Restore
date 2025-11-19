@interface NSString(EncodedWord)
- (id)sg_stringWithDecodedEncodedWords;
@end

@implementation NSString(EncodedWord)

- (id)sg_stringWithDecodedEncodedWords
{
  v1 = [a1 mutableCopy];
  [v1 sg_decodeEncodedWords];

  return v1;
}

@end