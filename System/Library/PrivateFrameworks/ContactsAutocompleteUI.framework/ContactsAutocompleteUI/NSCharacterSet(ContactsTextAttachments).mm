@interface NSCharacterSet(ContactsTextAttachments)
+ (id)_cn_textAttachmentCharacterSet;
@end

@implementation NSCharacterSet(ContactsTextAttachments)

+ (id)_cn_textAttachmentCharacterSet
{
  if (_cn_textAttachmentCharacterSet_cn_once_token_1 != -1)
  {
    +[NSCharacterSet(ContactsTextAttachments) _cn_textAttachmentCharacterSet];
  }

  v1 = _cn_textAttachmentCharacterSet_cn_once_object_1;

  return v1;
}

@end