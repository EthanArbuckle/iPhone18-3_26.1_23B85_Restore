@interface NSTextAttachment(MailUI)
+ (id)mui_textAttachmentWithSystemImage:()MailUI systemImageColor:;
@end

@implementation NSTextAttachment(MailUI)

+ (id)mui_textAttachmentWithSystemImage:()MailUI systemImageColor:
{
  v4 = [MEMORY[0x277D755B8] mui_imageWithPrivateSystemSymbolName:a3 symbolColor:a4 hintScale:1 accessibilityDescription:0];
  v5 = objc_alloc_init(MEMORY[0x277D74270]);
  [v5 setImage:v4];

  return v5;
}

@end