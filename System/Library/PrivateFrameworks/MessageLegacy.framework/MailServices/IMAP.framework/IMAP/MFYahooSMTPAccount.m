@interface MFYahooSMTPAccount
- (void)dealloc;
@end

@implementation MFYahooSMTPAccount

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFYahooSMTPAccount;
  [(SMTPAccount *)&v3 dealloc];
}

@end