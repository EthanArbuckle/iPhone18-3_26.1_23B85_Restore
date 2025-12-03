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
  _cn_whitespaceExceptAscii32CharacterSet = [objc_opt_class() _cn_whitespaceExceptAscii32CharacterSet];
  if ([self _cn_containsCharacterInSet:_cn_whitespaceExceptAscii32CharacterSet])
  {
    v3 = [self componentsSeparatedByCharactersInSet:_cn_whitespaceExceptAscii32CharacterSet];
    selfCopy = [v3 componentsJoinedByString:@" "];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)_cn_stringBySanitizingPhoneNumber
{
  _cn_LTRControlCharacters = [objc_opt_class() _cn_LTRControlCharacters];
  v3 = [self stringByTrimmingCharactersInSet:_cn_LTRControlCharacters];
  _cn_stringByNormalizingWhitespace = [v3 _cn_stringByNormalizingWhitespace];

  return _cn_stringByNormalizingWhitespace;
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
  _cn_phoneNumberInvalidCharacters = [objc_opt_class() _cn_phoneNumberInvalidCharacters];
  v3 = [self _cn_containsCharacterInSet:_cn_phoneNumberInvalidCharacters];

  return v3;
}

+ (id)_cn_phoneNumberInvalidCharacters
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__NSString_ContactsFoundationPhoneNumbers___cn_phoneNumberInvalidCharacters__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_cn_phoneNumberInvalidCharacters_cn_once_token_1 != -1)
  {
    dispatch_once(&_cn_phoneNumberInvalidCharacters_cn_once_token_1, block);
  }

  v1 = _cn_phoneNumberInvalidCharacters_cn_once_object_1;

  return v1;
}

@end