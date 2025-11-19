@interface NSString(ContactsTextAttachments)
+ (id)_cn_textAttachmentCharacterString;
@end

@implementation NSString(ContactsTextAttachments)

+ (id)_cn_textAttachmentCharacterString
{
  if (_cn_textAttachmentCharacterString_cn_once_token_2 != -1)
  {
    +[NSString(ContactsTextAttachments) _cn_textAttachmentCharacterString];
  }

  v1 = _cn_textAttachmentCharacterString_cn_once_object_2;

  return v1;
}

@end