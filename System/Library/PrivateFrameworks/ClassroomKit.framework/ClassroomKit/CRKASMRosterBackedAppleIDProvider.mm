@interface CRKASMRosterBackedAppleIDProvider
- (CRKASMRosterBackedAppleIDProvider)initWithRosterProvider:(id)provider;
- (NSString)appleID;
@end

@implementation CRKASMRosterBackedAppleIDProvider

- (CRKASMRosterBackedAppleIDProvider)initWithRosterProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = CRKASMRosterBackedAppleIDProvider;
  v6 = [(CRKASMRosterBackedAppleIDProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rosterProvider, provider);
  }

  return v7;
}

- (NSString)appleID
{
  rosterProvider = [(CRKASMRosterBackedAppleIDProvider *)self rosterProvider];
  roster = [rosterProvider roster];
  user = [roster user];
  appleID = [user appleID];

  return appleID;
}

@end