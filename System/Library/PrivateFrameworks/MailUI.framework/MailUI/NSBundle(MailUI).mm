@interface NSBundle(MailUI)
+ (id)mui_MailUIBundle;
@end

@implementation NSBundle(MailUI)

+ (id)mui_MailUIBundle
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__NSBundle_MailUI__mui_MailUIBundle__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = a1;
  if (mui_MailUIBundle_onceToken != -1)
  {
    dispatch_once(&mui_MailUIBundle_onceToken, v4);
  }

  v2 = mui_MailUIBundle_bundle;

  return v2;
}

@end