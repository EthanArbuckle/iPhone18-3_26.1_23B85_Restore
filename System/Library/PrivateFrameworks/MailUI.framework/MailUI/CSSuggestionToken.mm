@interface CSSuggestionToken
@end

@implementation CSSuggestionToken

void __43___CSSuggestionToken_MailUIPredicates__log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = log_log;
  log_log = v2;
}

@end