@interface MRDMediaUserState
- (BOOL)groupSessionsSupportedForAccountRegion;
- (BOOL)hasAcceptedDisplayNameAcknowledgement;
- (BOOL)hasAcceptedPrivacyAcknowledgement;
- (BOOL)identitySupportsCollaboration;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUserState:(id)a3;
- (BOOL)isFullSubscriber;
- (BOOL)isMinor;
- (MRDMediaUserState)initWithUserState:(id)a3;
- (MRUserIdentity)userIdentity;
- (NSString)storefrontCountryCode;
- (id)frameworkState;
- (id)userIdentityWithDisplayName:(id)a3;
- (unint64_t)hash;
@end

@implementation MRDMediaUserState

- (BOOL)isMinor
{
  v2 = [(MRDMediaUserState *)self userState];
  v3 = [v2 music];
  v4 = [v3 subscriptionStatus];

  if (v4)
  {
    v5 = [v4 isMinorAccountHolder];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)isFullSubscriber
{
  v2 = [(MRDMediaUserState *)self userState];
  v3 = [v2 music];
  v4 = [v3 subscriptionStatus];

  if (v4)
  {
    v5 = [v4 hasCapability:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)frameworkState
{
  v3 = objc_alloc_init(MRMediaUserState);
  v4 = [(MRDMediaUserState *)self identifier];
  [v3 setIdentifier:v4];

  [v3 setIsMinor:{-[MRDMediaUserState isMinor](self, "isMinor")}];
  [v3 setIsFullSubscriber:{-[MRDMediaUserState isFullSubscriber](self, "isFullSubscriber")}];
  [v3 setHasAcceptedPrivacyAcknowledgement:{-[MRDMediaUserState hasAcceptedPrivacyAcknowledgement](self, "hasAcceptedPrivacyAcknowledgement")}];
  [v3 setHasAcceptedDisplayNameAcknowledgement:{-[MRDMediaUserState hasAcceptedDisplayNameAcknowledgement](self, "hasAcceptedDisplayNameAcknowledgement")}];
  [v3 setIdentitySupportsCollaboration:{-[MRDMediaUserState identitySupportsCollaboration](self, "identitySupportsCollaboration")}];
  [v3 setGroupSessionsSupportedForAccountRegion:{-[MRDMediaUserState groupSessionsSupportedForAccountRegion](self, "groupSessionsSupportedForAccountRegion")}];
  v5 = [(MRDMediaUserState *)self storefrontCountryCode];
  [v3 setStorefrontCountryCode:v5];

  v6 = [(MRDMediaUserState *)self userIdentity];
  [v3 setUserIdentity:v6];

  return v3;
}

- (BOOL)groupSessionsSupportedForAccountRegion
{
  v2 = objc_opt_class();

  return [v2 groupSessionsSupportedForAccountRegion];
}

- (BOOL)hasAcceptedPrivacyAcknowledgement
{
  v2 = [(MRDMediaUserState *)self userState];
  v3 = [v2 dsid];
  v4 = [ICUserIdentity specificAccountWithDSID:v3];
  v5 = [ICPrivacyInfo sharedPrivacyInfoForUserIdentity:v4];
  v6 = [v5 privacyAcknowledgementRequiredForMusic];

  return v6 ^ 1;
}

- (BOOL)hasAcceptedDisplayNameAcknowledgement
{
  v2 = [(MRDMediaUserState *)self userState];
  v3 = [v2 music];
  v4 = [v3 userProfile];
  v5 = [v4 displayNameAccepted];

  return v5;
}

- (BOOL)identitySupportsCollaboration
{
  v2 = [(MRDMediaUserState *)self userState];
  v3 = [v2 music];
  v4 = [v3 userProfile];

  if (v4)
  {
    v5 = [v4 collaborationAllowed];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)storefrontCountryCode
{
  v2 = [(MRDMediaUserState *)self userState];
  v3 = [v2 countryCode];

  return v3;
}

- (MRUserIdentity)userIdentity
{
  v3 = [(MRDMediaUserState *)self userState];
  v4 = [v3 music];
  v5 = [v4 userProfile];

  v6 = [v5 socialProfile];
  v7 = [v6 socialProfileID];

  if (v7)
  {
    v8 = [v5 socialProfile];
    v9 = [v8 socialProfileID];
    v10 = [v5 socialProfile];
    v11 = [v10 name];
    v12 = [MRUserIdentity resolvableIdentityWithIdentifier:v9 displayName:v11];

LABEL_5:
    goto LABEL_6;
  }

  v13 = [v5 name];

  if (v13)
  {
    v8 = [v5 name];
    v12 = [(MRDMediaUserState *)self userIdentityWithDisplayName:v8];
    goto LABEL_5;
  }

  v15 = _MRLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1003A5A40(self, v15);
  }

  v12 = 0;
LABEL_6:

  return v12;
}

- (MRDMediaUserState)initWithUserState:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = MRDMediaUserState;
    v6 = [(MRDMediaUserState *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_userState, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)userIdentityWithDisplayName:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006BB44;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  v3 = qword_100529200;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_100529200, block);
  }

  v5 = [MRUserIdentity basicIdentityWithIdentifier:qword_100529208 displayName:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(MRDMediaUserState *)self userState];
  v3 = [v2 identifier];
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MRDMediaUserState *)self isEqualToUserState:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToUserState:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(MRDMediaUserState *)self userState];
  v6 = [v4 userState];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

@end