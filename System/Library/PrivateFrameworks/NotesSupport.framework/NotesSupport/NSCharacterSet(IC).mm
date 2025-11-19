@interface NSCharacterSet(IC)
+ (id)ic_animatableTokenCharacterSet;
+ (id)ic_attachmentCharacterSet;
+ (id)ic_hashtagAllowedCharacterSet;
+ (id)ic_uriIdentifierAllowedCharacterSet;
@end

@implementation NSCharacterSet(IC)

+ (id)ic_uriIdentifierAllowedCharacterSet
{
  if (ic_uriIdentifierAllowedCharacterSet_token != -1)
  {
    +[NSCharacterSet(IC) ic_uriIdentifierAllowedCharacterSet];
  }

  v1 = ic_uriIdentifierAllowedCharacterSet_characterSet;

  return v1;
}

+ (id)ic_attachmentCharacterSet
{
  v0 = MEMORY[0x1E696AB08];
  v1 = [MEMORY[0x1E696AEC0] ic_attachmentCharacterString];
  v2 = [v0 characterSetWithCharactersInString:v1];

  return v2;
}

+ (id)ic_hashtagAllowedCharacterSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__NSCharacterSet_IC__ic_hashtagAllowedCharacterSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (ic_hashtagAllowedCharacterSet_token != -1)
  {
    dispatch_once(&ic_hashtagAllowedCharacterSet_token, block);
  }

  v1 = ic_hashtagAllowedCharacterSet_characterSet;

  return v1;
}

+ (id)ic_animatableTokenCharacterSet
{
  if (ic_animatableTokenCharacterSet_token != -1)
  {
    +[NSCharacterSet(IC) ic_animatableTokenCharacterSet];
  }

  v1 = ic_animatableTokenCharacterSet_characterSet;

  return v1;
}

@end