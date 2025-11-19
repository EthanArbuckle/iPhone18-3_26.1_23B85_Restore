@interface MRMediaUserState
- (BOOL)isEqual:(id)a3;
- (MRMediaUserState)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRMediaUserState

- (MRMediaUserState)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MRMediaUserState;
  v5 = [(MRMediaUserState *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_isMinor = [v4 decodeBoolForKey:@"min"];
    v5->_isFullSubscriber = [v4 decodeBoolForKey:@"sub"];
    v5->_hasAcceptedPrivacyAcknowledgement = [v4 decodeBoolForKey:@"prv"];
    v5->_hasAcceptedDisplayNameAcknowledgement = [v4 decodeBoolForKey:@"dsn"];
    v5->_identitySupportsCollaboration = [v4 decodeBoolForKey:@"col"];
    v5->_groupSessionsSupportedForAccountRegion = [v4 decodeBoolForKey:@"srg"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stf"];
    storefrontCountryCode = v5->_storefrontCountryCode;
    v5->_storefrontCountryCode = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"usr"];
    userIdentity = v5->_userIdentity;
    v5->_userIdentity = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MRMediaUserState *)self identifier];
  [v4 encodeObject:v5 forKey:@"id"];

  [v4 encodeBool:-[MRMediaUserState isMinor](self forKey:{"isMinor"), @"min"}];
  [v4 encodeBool:-[MRMediaUserState isFullSubscriber](self forKey:{"isFullSubscriber"), @"sub"}];
  [v4 encodeBool:-[MRMediaUserState hasAcceptedPrivacyAcknowledgement](self forKey:{"hasAcceptedPrivacyAcknowledgement"), @"prv"}];
  [v4 encodeBool:-[MRMediaUserState hasAcceptedDisplayNameAcknowledgement](self forKey:{"hasAcceptedDisplayNameAcknowledgement"), @"dsn"}];
  [v4 encodeBool:-[MRMediaUserState identitySupportsCollaboration](self forKey:{"identitySupportsCollaboration"), @"col"}];
  [v4 encodeBool:-[MRMediaUserState groupSessionsSupportedForAccountRegion](self forKey:{"groupSessionsSupportedForAccountRegion"), @"srg"}];
  v6 = [(MRMediaUserState *)self storefrontCountryCode];
  [v4 encodeObject:v6 forKey:@"stf"];

  v7 = [(MRMediaUserState *)self userIdentity];
  [v4 encodeObject:v7 forKey:@"usr"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MRMediaUserState);
  v5 = [(MRMediaUserState *)self identifier];
  [(MRMediaUserState *)v4 setIdentifier:v5];

  [(MRMediaUserState *)v4 setIsMinor:[(MRMediaUserState *)self isMinor]];
  [(MRMediaUserState *)v4 setIsFullSubscriber:[(MRMediaUserState *)self isFullSubscriber]];
  [(MRMediaUserState *)v4 setHasAcceptedPrivacyAcknowledgement:[(MRMediaUserState *)self hasAcceptedPrivacyAcknowledgement]];
  [(MRMediaUserState *)v4 setHasAcceptedDisplayNameAcknowledgement:[(MRMediaUserState *)self hasAcceptedDisplayNameAcknowledgement]];
  [(MRMediaUserState *)v4 setIdentitySupportsCollaboration:[(MRMediaUserState *)self identitySupportsCollaboration]];
  [(MRMediaUserState *)v4 setGroupSessionsSupportedForAccountRegion:[(MRMediaUserState *)self groupSessionsSupportedForAccountRegion]];
  v6 = [(MRMediaUserState *)self storefrontCountryCode];
  [(MRMediaUserState *)v4 setStorefrontCountryCode:v6];

  v7 = [(MRMediaUserState *)self userIdentity];
  [(MRMediaUserState *)v4 setUserIdentity:v7];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_14;
  }

  if (self == v4)
  {
    v15 = 1;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(MRMediaUserState *)self identifier];
    v8 = [(MRMediaUserState *)v6 identifier];
    if ((v7 == v8 || [v7 isEqual:v8]) && (v9 = -[MRMediaUserState isMinor](self, "isMinor"), v9 == -[MRMediaUserState isMinor](v6, "isMinor")) && (v10 = -[MRMediaUserState isFullSubscriber](self, "isFullSubscriber"), v10 == -[MRMediaUserState isFullSubscriber](v6, "isFullSubscriber")) && (v11 = -[MRMediaUserState hasAcceptedPrivacyAcknowledgement](self, "hasAcceptedPrivacyAcknowledgement"), v11 == -[MRMediaUserState hasAcceptedPrivacyAcknowledgement](v6, "hasAcceptedPrivacyAcknowledgement")) && (v12 = -[MRMediaUserState hasAcceptedDisplayNameAcknowledgement](self, "hasAcceptedDisplayNameAcknowledgement"), v12 == -[MRMediaUserState hasAcceptedDisplayNameAcknowledgement](v6, "hasAcceptedDisplayNameAcknowledgement")) && (v13 = -[MRMediaUserState identitySupportsCollaboration](self, "identitySupportsCollaboration"), v13 == -[MRMediaUserState identitySupportsCollaboration](v6, "identitySupportsCollaboration")) && (v14 = -[MRMediaUserState groupSessionsSupportedForAccountRegion](self, "groupSessionsSupportedForAccountRegion"), v14 == -[MRMediaUserState groupSessionsSupportedForAccountRegion](v6, "groupSessionsSupportedForAccountRegion")))
    {
      v17 = [(MRMediaUserState *)self storefrontCountryCode];
      v18 = [(MRMediaUserState *)v6 storefrontCountryCode];
      if (v17 == v18 || [v17 isEqual:v18])
      {
        v19 = [(MRMediaUserState *)self userIdentity];
        v20 = [(MRMediaUserState *)v6 userIdentity];
        if (v19 == v20)
        {
          v15 = 1;
        }

        else
        {
          v15 = [v19 isEqual:v20];
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
  v3 = [(MRMediaUserState *)self identifier];
  v4 = [v3 hash];
  v5 = v4 ^ [(MRMediaUserState *)self isMinor];
  v6 = [(MRMediaUserState *)self isFullSubscriber];
  v7 = v5 ^ v6 ^ [(MRMediaUserState *)self hasAcceptedPrivacyAcknowledgement];
  v8 = [(MRMediaUserState *)self hasAcceptedDisplayNameAcknowledgement];
  v9 = v8 ^ [(MRMediaUserState *)self identitySupportsCollaboration];
  v10 = v7 ^ v9 ^ [(MRMediaUserState *)self groupSessionsSupportedForAccountRegion];
  v11 = [(MRMediaUserState *)self storefrontCountryCode];
  v12 = [v11 hash];
  v13 = [(MRMediaUserState *)self userIdentity];
  v14 = v12 ^ [v13 hash];

  return v10 ^ v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: ", v5];

  v7 = [(MRMediaUserState *)self identifier];
  [v6 appendFormat:@"id=%@", v7];

  [v6 appendFormat:@", min=%d", -[MRMediaUserState isMinor](self, "isMinor")];
  [v6 appendFormat:@", fullSub=%d", -[MRMediaUserState isFullSubscriber](self, "isFullSubscriber")];
  [v6 appendFormat:@", privacyAck=%d", -[MRMediaUserState hasAcceptedPrivacyAcknowledgement](self, "hasAcceptedPrivacyAcknowledgement")];
  [v6 appendFormat:@", displayNameAck=%d", -[MRMediaUserState hasAcceptedDisplayNameAcknowledgement](self, "hasAcceptedDisplayNameAcknowledgement")];
  [v6 appendFormat:@", supportsCollab=%d", -[MRMediaUserState identitySupportsCollaboration](self, "identitySupportsCollaboration")];
  [v6 appendFormat:@", supportedRegion=%d", -[MRMediaUserState groupSessionsSupportedForAccountRegion](self, "groupSessionsSupportedForAccountRegion")];
  v8 = [(MRMediaUserState *)self storefrontCountryCode];
  [v6 appendFormat:@", storefront=%@", v8];

  v9 = [(MRMediaUserState *)self userIdentity];
  [v6 appendFormat:@", userIdentity=%@", v9];

  [v6 appendString:@">"];

  return v6;
}

@end