@interface MRDMediaUserState
- (BOOL)groupSessionsSupportedForAccountRegion;
- (BOOL)hasAcceptedDisplayNameAcknowledgement;
- (BOOL)hasAcceptedPrivacyAcknowledgement;
- (BOOL)identitySupportsCollaboration;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUserState:(id)state;
- (BOOL)isFullSubscriber;
- (BOOL)isMinor;
- (MRDMediaUserState)initWithUserState:(id)state;
- (MRUserIdentity)userIdentity;
- (NSString)storefrontCountryCode;
- (id)frameworkState;
- (id)userIdentityWithDisplayName:(id)name;
- (unint64_t)hash;
@end

@implementation MRDMediaUserState

- (BOOL)isMinor
{
  userState = [(MRDMediaUserState *)self userState];
  music = [userState music];
  subscriptionStatus = [music subscriptionStatus];

  if (subscriptionStatus)
  {
    isMinorAccountHolder = [subscriptionStatus isMinorAccountHolder];
  }

  else
  {
    isMinorAccountHolder = 1;
  }

  return isMinorAccountHolder;
}

- (BOOL)isFullSubscriber
{
  userState = [(MRDMediaUserState *)self userState];
  music = [userState music];
  subscriptionStatus = [music subscriptionStatus];

  if (subscriptionStatus)
  {
    v5 = [subscriptionStatus hasCapability:1];
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
  identifier = [(MRDMediaUserState *)self identifier];
  [v3 setIdentifier:identifier];

  [v3 setIsMinor:{-[MRDMediaUserState isMinor](self, "isMinor")}];
  [v3 setIsFullSubscriber:{-[MRDMediaUserState isFullSubscriber](self, "isFullSubscriber")}];
  [v3 setHasAcceptedPrivacyAcknowledgement:{-[MRDMediaUserState hasAcceptedPrivacyAcknowledgement](self, "hasAcceptedPrivacyAcknowledgement")}];
  [v3 setHasAcceptedDisplayNameAcknowledgement:{-[MRDMediaUserState hasAcceptedDisplayNameAcknowledgement](self, "hasAcceptedDisplayNameAcknowledgement")}];
  [v3 setIdentitySupportsCollaboration:{-[MRDMediaUserState identitySupportsCollaboration](self, "identitySupportsCollaboration")}];
  [v3 setGroupSessionsSupportedForAccountRegion:{-[MRDMediaUserState groupSessionsSupportedForAccountRegion](self, "groupSessionsSupportedForAccountRegion")}];
  storefrontCountryCode = [(MRDMediaUserState *)self storefrontCountryCode];
  [v3 setStorefrontCountryCode:storefrontCountryCode];

  userIdentity = [(MRDMediaUserState *)self userIdentity];
  [v3 setUserIdentity:userIdentity];

  return v3;
}

- (BOOL)groupSessionsSupportedForAccountRegion
{
  v2 = objc_opt_class();

  return [v2 groupSessionsSupportedForAccountRegion];
}

- (BOOL)hasAcceptedPrivacyAcknowledgement
{
  userState = [(MRDMediaUserState *)self userState];
  dsid = [userState dsid];
  v4 = [ICUserIdentity specificAccountWithDSID:dsid];
  v5 = [ICPrivacyInfo sharedPrivacyInfoForUserIdentity:v4];
  privacyAcknowledgementRequiredForMusic = [v5 privacyAcknowledgementRequiredForMusic];

  return privacyAcknowledgementRequiredForMusic ^ 1;
}

- (BOOL)hasAcceptedDisplayNameAcknowledgement
{
  userState = [(MRDMediaUserState *)self userState];
  music = [userState music];
  userProfile = [music userProfile];
  displayNameAccepted = [userProfile displayNameAccepted];

  return displayNameAccepted;
}

- (BOOL)identitySupportsCollaboration
{
  userState = [(MRDMediaUserState *)self userState];
  music = [userState music];
  userProfile = [music userProfile];

  if (userProfile)
  {
    collaborationAllowed = [userProfile collaborationAllowed];
  }

  else
  {
    collaborationAllowed = 0;
  }

  return collaborationAllowed;
}

- (NSString)storefrontCountryCode
{
  userState = [(MRDMediaUserState *)self userState];
  countryCode = [userState countryCode];

  return countryCode;
}

- (MRUserIdentity)userIdentity
{
  userState = [(MRDMediaUserState *)self userState];
  music = [userState music];
  userProfile = [music userProfile];

  socialProfile = [userProfile socialProfile];
  socialProfileID = [socialProfile socialProfileID];

  if (socialProfileID)
  {
    socialProfile2 = [userProfile socialProfile];
    socialProfileID2 = [socialProfile2 socialProfileID];
    socialProfile3 = [userProfile socialProfile];
    name = [socialProfile3 name];
    v12 = [MRUserIdentity resolvableIdentityWithIdentifier:socialProfileID2 displayName:name];

LABEL_5:
    goto LABEL_6;
  }

  name2 = [userProfile name];

  if (name2)
  {
    socialProfile2 = [userProfile name];
    v12 = [(MRDMediaUserState *)self userIdentityWithDisplayName:socialProfile2];
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

- (MRDMediaUserState)initWithUserState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    v10.receiver = self;
    v10.super_class = MRDMediaUserState;
    v6 = [(MRDMediaUserState *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_userState, state);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)userIdentityWithDisplayName:(id)name
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006BB44;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  v3 = qword_100529200;
  nameCopy = name;
  if (v3 != -1)
  {
    dispatch_once(&qword_100529200, block);
  }

  v5 = [MRUserIdentity basicIdentityWithIdentifier:qword_100529208 displayName:nameCopy];

  return v5;
}

- (unint64_t)hash
{
  userState = [(MRDMediaUserState *)self userState];
  identifier = [userState identifier];
  v4 = [identifier hash];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MRDMediaUserState *)self isEqualToUserState:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToUserState:(id)state
{
  if (self == state)
  {
    return 1;
  }

  stateCopy = state;
  userState = [(MRDMediaUserState *)self userState];
  userState2 = [stateCopy userState];

  LOBYTE(stateCopy) = [userState isEqual:userState2];
  return stateCopy;
}

@end