@interface NSString(HealthRecordsUI)
- (id)removeSpecialCharactersAndWhiteSpaces;
@end

@implementation NSString(HealthRecordsUI)

- (id)removeSpecialCharactersAndWhiteSpaces
{
  v2 = [MEMORY[0x1E696AD48] whitespaceCharacterSet];
  v3 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  [v2 formUnionWithCharacterSet:v3];

  v4 = [a1 hk_stringByRemovingCharactersInSet:v2];

  return v4;
}

@end