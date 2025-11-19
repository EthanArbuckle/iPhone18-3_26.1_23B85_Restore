@interface NSString(ContactsUnitTesting)
+ (id)_cn_stringByRepeatingCharacter:()ContactsUnitTesting length:;
@end

@implementation NSString(ContactsUnitTesting)

+ (id)_cn_stringByRepeatingCharacter:()ContactsUnitTesting length:
{
  v6 = malloc_type_malloc(size, 0x9DF3089EuLL);
  memset(v6, a3, size);
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v6 length:size encoding:1 freeWhenDone:1];

  return v7;
}

@end