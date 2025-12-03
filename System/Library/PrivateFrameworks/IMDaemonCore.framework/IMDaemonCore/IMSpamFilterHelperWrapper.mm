@interface IMSpamFilterHelperWrapper
- (BOOL)isFilterUnknownSendersEnabled;
- (BOOL)isKnownContact:(id)contact;
@end

@implementation IMSpamFilterHelperWrapper

- (BOOL)isFilterUnknownSendersEnabled
{
  v2 = objc_opt_self();

  return [v2 isFilterUnknownSendersEnabled];
}

- (BOOL)isKnownContact:(id)contact
{
  v4 = objc_opt_self();

  return [v4 isKnownContact_];
}

@end