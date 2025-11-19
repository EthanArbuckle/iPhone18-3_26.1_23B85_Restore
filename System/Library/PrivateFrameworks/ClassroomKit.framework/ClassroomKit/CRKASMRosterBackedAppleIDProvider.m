@interface CRKASMRosterBackedAppleIDProvider
- (CRKASMRosterBackedAppleIDProvider)initWithRosterProvider:(id)a3;
- (NSString)appleID;
@end

@implementation CRKASMRosterBackedAppleIDProvider

- (CRKASMRosterBackedAppleIDProvider)initWithRosterProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRKASMRosterBackedAppleIDProvider;
  v6 = [(CRKASMRosterBackedAppleIDProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rosterProvider, a3);
  }

  return v7;
}

- (NSString)appleID
{
  v2 = [(CRKASMRosterBackedAppleIDProvider *)self rosterProvider];
  v3 = [v2 roster];
  v4 = [v3 user];
  v5 = [v4 appleID];

  return v5;
}

@end