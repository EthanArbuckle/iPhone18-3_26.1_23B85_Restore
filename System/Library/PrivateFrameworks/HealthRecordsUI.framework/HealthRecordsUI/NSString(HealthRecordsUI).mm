@interface NSString(HealthRecordsUI)
- (id)removeSpecialCharactersAndWhiteSpaces;
@end

@implementation NSString(HealthRecordsUI)

- (id)removeSpecialCharactersAndWhiteSpaces
{
  whitespaceCharacterSet = [MEMORY[0x1E696AD48] whitespaceCharacterSet];
  punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  [whitespaceCharacterSet formUnionWithCharacterSet:punctuationCharacterSet];

  v4 = [self hk_stringByRemovingCharactersInSet:whitespaceCharacterSet];

  return v4;
}

@end