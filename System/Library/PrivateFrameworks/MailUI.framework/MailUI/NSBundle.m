@interface NSBundle
@end

@implementation NSBundle

void __36__NSBundle_MailUI__mui_MailUIBundle__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.MailUI"];
  v3 = mui_MailUIBundle_bundle;
  mui_MailUIBundle_bundle = v2;

  if (!mui_MailUIBundle_bundle)
  {
    __36__NSBundle_MailUI__mui_MailUIBundle__block_invoke_cold_1(a1);
  }
}

void __36__NSBundle_MailUI__mui_MailUIBundle__block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"NSBundle+MailUI.m" lineNumber:20 description:@"Failed to load com.apple.MailUI bundle"];
}

@end