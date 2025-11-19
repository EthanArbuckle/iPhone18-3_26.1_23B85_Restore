@interface MFUserProfileProvider_iOS
+ (id)defaultProvider;
- (BOOL)hasAccountsConfigured;
- (MFUserProfileProvider_iOS)init;
@end

@implementation MFUserProfileProvider_iOS

+ (id)defaultProvider
{
  if (qword_100185AE0 != -1)
  {
    sub_1000D59D0();
  }

  v3 = qword_100185AE8;

  return v3;
}

- (MFUserProfileProvider_iOS)init
{
  v5.receiver = self;
  v5.super_class = MFUserProfileProvider_iOS;
  v2 = [(MFUserProfileProvider_iOS *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MFUserProfileProvider_iOS *)v2 refreshCachedValues];
  }

  return v3;
}

- (BOOL)hasAccountsConfigured
{
  v2 = +[MailAccount activeNonLocalAccounts];
  v3 = [v2 count] != 0;

  return v3;
}

@end