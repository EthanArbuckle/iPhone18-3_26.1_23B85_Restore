@interface CSSuggestion
@end

@implementation CSSuggestion

void __31__CSSuggestion_MailUI__mui_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = mui_log_log;
  mui_log_log = v2;
}

uint64_t __43__CSSuggestion_MailUI__mui_emptySuggestion__block_invoke()
{
  mui_emptySuggestion_emptySuggestion = [MEMORY[0x277CC34D8] emptySuggestion];

  return MEMORY[0x2821F96F8]();
}

@end