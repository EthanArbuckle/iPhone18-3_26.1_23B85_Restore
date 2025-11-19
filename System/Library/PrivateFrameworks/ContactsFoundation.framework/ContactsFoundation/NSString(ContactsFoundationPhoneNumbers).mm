@interface NSString(ContactsFoundationPhoneNumbers)
+ (id)_cn_LTRControlCharacters;
+ (id)_cn_phoneNumberInvalidCharacters;
+ (id)_cn_whitespaceExceptAscii32CharacterSet;
- (id)_cn_stringByNormalizingWhitespace;
- (id)_cn_stringBySanitizingPhoneNumber;
- (uint64_t)_cn_requiresPhoneNumberSanitizing;
@end

@implementation NSString(ContactsFoundationPhoneNumbers)

- (id)_cn_stringByNormalizingWhitespace
{
  v2 = [objc_opt_class() _cn_whitespaceExceptAscii32CharacterSet];
  if ([a1 _cn_containsCharacterInSet:v2])
  {
    v3 = [a1 componentsSeparatedByCharactersInSet:v2];
    v4 = [v3 componentsJoinedByString:@" "];
  }

  else
  {
    v4 = a1;
  }

  return v4;
}

- (id)_cn_stringBySanitizingPhoneNumber
{
  v2 = [objc_opt_class() _cn_LTRControlCharacters];
  v3 = [a1 stringByTrimmingCharactersInSet:v2];
  v4 = [v3 _cn_stringByNormalizingWhitespace];

  return v4;
}

+ (id)_cn_whitespaceExceptAscii32CharacterSet
{
  if (_cn_whitespaceExceptAscii32CharacterSet_cn_once_token_3 != -1)
  {
    +[NSString(ContactsFoundationPhoneNumbers) _cn_whitespaceExceptAscii32CharacterSet];
  }

  v1 = _cn_whitespaceExceptAscii32CharacterSet_cn_once_object_3;

  return v1;
}

+ (id)_cn_LTRControlCharacters
{
  if (_cn_LTRControlCharacters_cn_once_token_2 != -1)
  {
    +[NSString(ContactsFoundationPhoneNumbers) _cn_LTRControlCharacters];
  }

  v1 = _cn_LTRControlCharacters_cn_once_object_2;

  return v1;
}

- (uint64_t)_cn_requiresPhoneNumberSanitizing
{
  v2 = [objc_opt_class() _cn_phoneNumberInvalidCharacters];
  v3 = [a1 _cn_containsCharacterInSet:v2];

  return v3;
}

+ (id)_cn_phoneNumberInvalidCharacters
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__NSString_ContactsFoundationPhoneNumbers___cn_phoneNumberInvalidCharacters__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_cn_phoneNumberInvalidCharacters_cn_once_token_1 != -1)
  {
    dispatch_once(&_cn_phoneNumberInvalidCharacters_cn_once_token_1, block);
  }

  v1 = _cn_phoneNumberInvalidCharacters_cn_once_object_1;

  return v1;
}

@end