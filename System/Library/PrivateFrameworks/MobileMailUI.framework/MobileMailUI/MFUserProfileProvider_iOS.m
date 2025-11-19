@interface MFUserProfileProvider_iOS
+ (id)defaultProvider;
- (BOOL)hasAccountsConfigured;
- (MFUserProfileProvider_iOS)init;
@end

@implementation MFUserProfileProvider_iOS

+ (id)defaultProvider
{
  if (defaultProvider_onceToken != -1)
  {
    +[MFUserProfileProvider_iOS defaultProvider];
  }

  v3 = defaultProvider__defaultProvider;

  return v3;
}

- (MFUserProfileProvider_iOS)init
{
  v5.receiver = self;
  v5.super_class = MFUserProfileProvider_iOS;
  v2 = [(EMUserProfileProvider *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(EMUserProfileProvider *)v2 refreshCachedValues];
  }

  return v3;
}

- (BOOL)hasAccountsConfigured
{
  v2 = [MEMORY[0x277D28280] activeNonLocalAccounts];
  v3 = [v2 count] != 0;

  return v3;
}

@end