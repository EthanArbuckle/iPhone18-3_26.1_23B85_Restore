@interface NSCharacterSet
@end

@implementation NSCharacterSet

void __73__NSCharacterSet_ContactsTextAttachments___cn_textAttachmentCharacterSet__block_invoke()
{
  v0 = MEMORY[0x1E696AB08];
  v3 = [MEMORY[0x1E696AEC0] _cn_textAttachmentCharacterString];
  v1 = [v0 characterSetWithCharactersInString:v3];
  v2 = _cn_textAttachmentCharacterSet_cn_once_object_1;
  _cn_textAttachmentCharacterSet_cn_once_object_1 = v1;
}

@end