@interface MRMediaUserState
- (BOOL)isEqual:(id)equal;
- (MRMediaUserState)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRMediaUserState

- (MRMediaUserState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MRMediaUserState;
  v5 = [(MRMediaUserState *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_isMinor = [coderCopy decodeBoolForKey:@"min"];
    v5->_isFullSubscriber = [coderCopy decodeBoolForKey:@"sub"];
    v5->_hasAcceptedPrivacyAcknowledgement = [coderCopy decodeBoolForKey:@"prv"];
    v5->_hasAcceptedDisplayNameAcknowledgement = [coderCopy decodeBoolForKey:@"dsn"];
    v5->_identitySupportsCollaboration = [coderCopy decodeBoolForKey:@"col"];
    v5->_groupSessionsSupportedForAccountRegion = [coderCopy decodeBoolForKey:@"srg"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stf"];
    storefrontCountryCode = v5->_storefrontCountryCode;
    v5->_storefrontCountryCode = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"usr"];
    userIdentity = v5->_userIdentity;
    v5->_userIdentity = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(MRMediaUserState *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"id"];

  [coderCopy encodeBool:-[MRMediaUserState isMinor](self forKey:{"isMinor"), @"min"}];
  [coderCopy encodeBool:-[MRMediaUserState isFullSubscriber](self forKey:{"isFullSubscriber"), @"sub"}];
  [coderCopy encodeBool:-[MRMediaUserState hasAcceptedPrivacyAcknowledgement](self forKey:{"hasAcceptedPrivacyAcknowledgement"), @"prv"}];
  [coderCopy encodeBool:-[MRMediaUserState hasAcceptedDisplayNameAcknowledgement](self forKey:{"hasAcceptedDisplayNameAcknowledgement"), @"dsn"}];
  [coderCopy encodeBool:-[MRMediaUserState identitySupportsCollaboration](self forKey:{"identitySupportsCollaboration"), @"col"}];
  [coderCopy encodeBool:-[MRMediaUserState groupSessionsSupportedForAccountRegion](self forKey:{"groupSessionsSupportedForAccountRegion"), @"srg"}];
  storefrontCountryCode = [(MRMediaUserState *)self storefrontCountryCode];
  [coderCopy encodeObject:storefrontCountryCode forKey:@"stf"];

  userIdentity = [(MRMediaUserState *)self userIdentity];
  [coderCopy encodeObject:userIdentity forKey:@"usr"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MRMediaUserState);
  identifier = [(MRMediaUserState *)self identifier];
  [(MRMediaUserState *)v4 setIdentifier:identifier];

  [(MRMediaUserState *)v4 setIsMinor:[(MRMediaUserState *)self isMinor]];
  [(MRMediaUserState *)v4 setIsFullSubscriber:[(MRMediaUserState *)self isFullSubscriber]];
  [(MRMediaUserState *)v4 setHasAcceptedPrivacyAcknowledgement:[(MRMediaUserState *)self hasAcceptedPrivacyAcknowledgement]];
  [(MRMediaUserState *)v4 setHasAcceptedDisplayNameAcknowledgement:[(MRMediaUserState *)self hasAcceptedDisplayNameAcknowledgement]];
  [(MRMediaUserState *)v4 setIdentitySupportsCollaboration:[(MRMediaUserState *)self identitySupportsCollaboration]];
  [(MRMediaUserState *)v4 setGroupSessionsSupportedForAccountRegion:[(MRMediaUserState *)self groupSessionsSupportedForAccountRegion]];
  storefrontCountryCode = [(MRMediaUserState *)self storefrontCountryCode];
  [(MRMediaUserState *)v4 setStorefrontCountryCode:storefrontCountryCode];

  userIdentity = [(MRMediaUserState *)self userIdentity];
  [(MRMediaUserState *)v4 setUserIdentity:userIdentity];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_14;
  }

  if (self == equalCopy)
  {
    v15 = 1;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    identifier = [(MRMediaUserState *)self identifier];
    identifier2 = [(MRMediaUserState *)v6 identifier];
    if ((identifier == identifier2 || [identifier isEqual:identifier2]) && (v9 = -[MRMediaUserState isMinor](self, "isMinor"), v9 == -[MRMediaUserState isMinor](v6, "isMinor")) && (v10 = -[MRMediaUserState isFullSubscriber](self, "isFullSubscriber"), v10 == -[MRMediaUserState isFullSubscriber](v6, "isFullSubscriber")) && (v11 = -[MRMediaUserState hasAcceptedPrivacyAcknowledgement](self, "hasAcceptedPrivacyAcknowledgement"), v11 == -[MRMediaUserState hasAcceptedPrivacyAcknowledgement](v6, "hasAcceptedPrivacyAcknowledgement")) && (v12 = -[MRMediaUserState hasAcceptedDisplayNameAcknowledgement](self, "hasAcceptedDisplayNameAcknowledgement"), v12 == -[MRMediaUserState hasAcceptedDisplayNameAcknowledgement](v6, "hasAcceptedDisplayNameAcknowledgement")) && (v13 = -[MRMediaUserState identitySupportsCollaboration](self, "identitySupportsCollaboration"), v13 == -[MRMediaUserState identitySupportsCollaboration](v6, "identitySupportsCollaboration")) && (v14 = -[MRMediaUserState groupSessionsSupportedForAccountRegion](self, "groupSessionsSupportedForAccountRegion"), v14 == -[MRMediaUserState groupSessionsSupportedForAccountRegion](v6, "groupSessionsSupportedForAccountRegion")))
    {
      storefrontCountryCode = [(MRMediaUserState *)self storefrontCountryCode];
      storefrontCountryCode2 = [(MRMediaUserState *)v6 storefrontCountryCode];
      if (storefrontCountryCode == storefrontCountryCode2 || [storefrontCountryCode isEqual:storefrontCountryCode2])
      {
        userIdentity = [(MRMediaUserState *)self userIdentity];
        userIdentity2 = [(MRMediaUserState *)v6 userIdentity];
        if (userIdentity == userIdentity2)
        {
          v15 = 1;
        }

        else
        {
          v15 = [userIdentity isEqual:userIdentity2];
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
LABEL_14:
    v15 = 0;
  }

LABEL_16:

  return v15;
}

- (unint64_t)hash
{
  identifier = [(MRMediaUserState *)self identifier];
  v4 = [identifier hash];
  v5 = v4 ^ [(MRMediaUserState *)self isMinor];
  isFullSubscriber = [(MRMediaUserState *)self isFullSubscriber];
  v7 = v5 ^ isFullSubscriber ^ [(MRMediaUserState *)self hasAcceptedPrivacyAcknowledgement];
  hasAcceptedDisplayNameAcknowledgement = [(MRMediaUserState *)self hasAcceptedDisplayNameAcknowledgement];
  v9 = hasAcceptedDisplayNameAcknowledgement ^ [(MRMediaUserState *)self identitySupportsCollaboration];
  v10 = v7 ^ v9 ^ [(MRMediaUserState *)self groupSessionsSupportedForAccountRegion];
  storefrontCountryCode = [(MRMediaUserState *)self storefrontCountryCode];
  v12 = [storefrontCountryCode hash];
  userIdentity = [(MRMediaUserState *)self userIdentity];
  v14 = v12 ^ [userIdentity hash];

  return v10 ^ v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: ", v5];

  identifier = [(MRMediaUserState *)self identifier];
  [v6 appendFormat:@"id=%@", identifier];

  [v6 appendFormat:@", min=%d", -[MRMediaUserState isMinor](self, "isMinor")];
  [v6 appendFormat:@", fullSub=%d", -[MRMediaUserState isFullSubscriber](self, "isFullSubscriber")];
  [v6 appendFormat:@", privacyAck=%d", -[MRMediaUserState hasAcceptedPrivacyAcknowledgement](self, "hasAcceptedPrivacyAcknowledgement")];
  [v6 appendFormat:@", displayNameAck=%d", -[MRMediaUserState hasAcceptedDisplayNameAcknowledgement](self, "hasAcceptedDisplayNameAcknowledgement")];
  [v6 appendFormat:@", supportsCollab=%d", -[MRMediaUserState identitySupportsCollaboration](self, "identitySupportsCollaboration")];
  [v6 appendFormat:@", supportedRegion=%d", -[MRMediaUserState groupSessionsSupportedForAccountRegion](self, "groupSessionsSupportedForAccountRegion")];
  storefrontCountryCode = [(MRMediaUserState *)self storefrontCountryCode];
  [v6 appendFormat:@", storefront=%@", storefrontCountryCode];

  userIdentity = [(MRMediaUserState *)self userIdentity];
  [v6 appendFormat:@", userIdentity=%@", userIdentity];

  [v6 appendString:@">"];

  return v6;
}

@end