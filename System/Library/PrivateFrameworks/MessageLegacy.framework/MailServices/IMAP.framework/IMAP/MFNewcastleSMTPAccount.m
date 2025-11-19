@interface MFNewcastleSMTPAccount
- (void)dealloc;
@end

@implementation MFNewcastleSMTPAccount

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFNewcastleSMTPAccount;
  [(SMTPAccount *)&v3 dealloc];
}

@end