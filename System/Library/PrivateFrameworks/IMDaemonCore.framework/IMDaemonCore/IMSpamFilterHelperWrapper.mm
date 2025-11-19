@interface IMSpamFilterHelperWrapper
- (BOOL)isFilterUnknownSendersEnabled;
- (BOOL)isKnownContact:(id)a3;
@end

@implementation IMSpamFilterHelperWrapper

- (BOOL)isFilterUnknownSendersEnabled
{
  v2 = objc_opt_self();

  return [v2 isFilterUnknownSendersEnabled];
}

- (BOOL)isKnownContact:(id)a3
{
  v4 = objc_opt_self();

  return [v4 isKnownContact_];
}

@end