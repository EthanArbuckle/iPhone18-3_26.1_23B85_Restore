@interface CWFNearbySyncNetwork
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNearbySyncNetwork:(id)network;
- (BOOL)isNearbyBrokenBackhaulStateSyncable;
- (BOOL)isNearbyRecommendable;
- (BOOL)isNearbySyncable;
- (CWFNearbySyncNetwork)initWithCoder:(id)coder;
- (CWFNearbySyncNetwork)initWithExternalForm:(id)form;
- (CWFNetworkProfile)knownNetworkProfile;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)externalForm;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setKnownNetworkProfile:(id)profile;
@end

@implementation CWFNearbySyncNetwork

- (CWFNetworkProfile)knownNetworkProfile
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(CWFNetworkProfile *)selfCopy->_knownNetworkProfile copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isNearbySyncable
{
  knownNetworkProfile = [(CWFNearbySyncNetwork *)self knownNetworkProfile];
  isNearbySyncable = [knownNetworkProfile isNearbySyncable];
  if ([knownNetworkProfile isPSK])
  {
    password = [(CWFNearbySyncNetwork *)self password];
    v6 = password != 0;

    isNearbySyncable &= v6;
  }

  return isNearbySyncable;
}

- (BOOL)isNearbyBrokenBackhaulStateSyncable
{
  knownNetworkProfile = [(CWFNearbySyncNetwork *)self knownNetworkProfile];
  v3 = [knownNetworkProfile brokenBackhaulState] == 1;

  return v3;
}

- (void)setKnownNetworkProfile:(id)profile
{
  profileCopy = profile;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  filteredNearbySyncableNetworkProfile = [profileCopy filteredNearbySyncableNetworkProfile];
  knownNetworkProfile = selfCopy->_knownNetworkProfile;
  selfCopy->_knownNetworkProfile = filteredNearbySyncableNetworkProfile;

  objc_sync_exit(selfCopy);
}

- (BOOL)isNearbyRecommendable
{
  knownNetworkProfile = [(CWFNearbySyncNetwork *)self knownNetworkProfile];
  isNearbyRecommendable = [knownNetworkProfile isNearbyRecommendable];
  if ([knownNetworkProfile isCaptive])
  {
    captivePortalCredentials = [(CWFNearbySyncNetwork *)self captivePortalCredentials];
    v6 = captivePortalCredentials != 0;

    isNearbyRecommendable &= v6;
  }

  return isNearbyRecommendable;
}

- (CWFNearbySyncNetwork)initWithExternalForm:(id)form
{
  formCopy = form;
  v5 = [(CWFNearbySyncNetwork *)self init];
  if (v5)
  {
    v6 = [formCopy objectForKeyedSubscript:@"KnownNetwork"];
    if (v6)
    {
      v7 = [[CWFNetworkProfile alloc] initWithExternalForm:v6];
      [(CWFNearbySyncNetwork *)v5 setKnownNetworkProfile:v7];
    }

    v8 = [formCopy objectForKeyedSubscript:@"Password"];
    [(CWFNearbySyncNetwork *)v5 setPassword:v8];

    v9 = [formCopy objectForKeyedSubscript:@"CaptivePortalCredentials"];
    [(CWFNearbySyncNetwork *)v5 setCaptivePortalCredentials:v9];

    v10 = [formCopy objectForKeyedSubscript:@"Channel"];
    if (v10)
    {
      v11 = v10;
      v12 = [[CWFChannel alloc] initWithExternalForm:v10];
      [(CWFNearbySyncNetwork *)v5 setChannel:v12];
    }
  }

  else
  {
    v6 = 0;
  }

  return v5;
}

- (id)externalForm
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  knownNetworkProfile = [(CWFNearbySyncNetwork *)self knownNetworkProfile];
  externalForm = [knownNetworkProfile externalForm];
  [dictionary setObject:externalForm forKeyedSubscript:@"KnownNetwork"];

  password = [(CWFNearbySyncNetwork *)self password];
  [dictionary setObject:password forKeyedSubscript:@"Password"];

  captivePortalCredentials = [(CWFNearbySyncNetwork *)self captivePortalCredentials];
  [dictionary setObject:captivePortalCredentials forKeyedSubscript:@"CaptivePortalCredentials"];

  channel = [(CWFNearbySyncNetwork *)self channel];
  externalForm2 = [channel externalForm];
  [dictionary setObject:externalForm2 forKeyedSubscript:@"Channel"];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  knownNetworkProfile = [(CWFNearbySyncNetwork *)self knownNetworkProfile];
  channel = [(CWFNearbySyncNetwork *)self channel];
  password = [(CWFNearbySyncNetwork *)self password];
  captivePortalCredentials = [(CWFNearbySyncNetwork *)self captivePortalCredentials];
  v8 = [v3 stringWithFormat:@"network=%@, channel=%@, hasPassword=%d, hasCaptivePortalCreds=%d, syncable=%d, recommendable=%d", knownNetworkProfile, channel, password != 0, captivePortalCredentials != 0, -[CWFNearbySyncNetwork isNearbySyncable](self, "isNearbySyncable"), -[CWFNearbySyncNetwork isNearbyRecommendable](self, "isNearbyRecommendable")];

  return v8;
}

- (BOOL)isEqualToNearbySyncNetwork:(id)network
{
  networkCopy = network;
  knownNetworkProfile = [(CWFNearbySyncNetwork *)self knownNetworkProfile];
  knownNetworkProfile2 = [networkCopy knownNetworkProfile];
  if (knownNetworkProfile != knownNetworkProfile2)
  {
    knownNetworkProfile3 = [(CWFNearbySyncNetwork *)self knownNetworkProfile];
    if (!knownNetworkProfile3)
    {
      v20 = 0;
      goto LABEL_44;
    }

    v8 = knownNetworkProfile3;
    knownNetworkProfile4 = [networkCopy knownNetworkProfile];
    if (!knownNetworkProfile4)
    {
      v20 = 0;
LABEL_43:

      goto LABEL_44;
    }

    knownNetworkProfile5 = [(CWFNearbySyncNetwork *)self knownNetworkProfile];
    knownNetworkProfile6 = [networkCopy knownNetworkProfile];
    if (![knownNetworkProfile5 isEqual:knownNetworkProfile6])
    {
      v20 = 0;
LABEL_42:

      goto LABEL_43;
    }

    v47 = knownNetworkProfile6;
    v48 = knownNetworkProfile5;
    v49 = knownNetworkProfile4;
    v50 = v8;
  }

  channel = [(CWFNearbySyncNetwork *)self channel];
  channel2 = [networkCopy channel];
  if (channel != channel2)
  {
    channel3 = [(CWFNearbySyncNetwork *)self channel];
    if (channel3)
    {
      v15 = channel3;
      channel4 = [networkCopy channel];
      if (channel4)
      {
        v17 = channel4;
        channel5 = [(CWFNearbySyncNetwork *)self channel];
        channel6 = [networkCopy channel];
        if ([channel5 isEqual:channel6])
        {
          v41 = channel6;
          v42 = channel5;
          v43 = v17;
          v44 = v15;
          goto LABEL_12;
        }
      }
    }

LABEL_32:

    v20 = 0;
    goto LABEL_41;
  }

LABEL_12:
  password = [(CWFNearbySyncNetwork *)self password];
  password2 = [networkCopy password];
  if (password == password2)
  {
    v45 = password;
    goto LABEL_20;
  }

  password3 = [(CWFNearbySyncNetwork *)self password];
  if (!password3)
  {

    goto LABEL_30;
  }

  v23 = password3;
  v45 = password;
  password4 = [networkCopy password];
  if (!password4)
  {
LABEL_29:

LABEL_30:
    if (channel != channel2)
    {
    }

    goto LABEL_32;
  }

  password5 = [(CWFNearbySyncNetwork *)self password];
  password6 = [networkCopy password];
  if (([password5 isEqual:password6] & 1) == 0)
  {

    goto LABEL_29;
  }

  v37 = password6;
  v38 = password5;
  v39 = password4;
  v40 = v23;
LABEL_20:
  captivePortalCredentials = [(CWFNearbySyncNetwork *)self captivePortalCredentials];
  captivePortalCredentials2 = [networkCopy captivePortalCredentials];
  v29 = captivePortalCredentials2;
  if (captivePortalCredentials == captivePortalCredentials2)
  {

    v20 = 1;
  }

  else
  {
    captivePortalCredentials3 = [(CWFNearbySyncNetwork *)self captivePortalCredentials];
    if (captivePortalCredentials3)
    {
      v36 = captivePortalCredentials3;
      captivePortalCredentials4 = [networkCopy captivePortalCredentials];
      if (captivePortalCredentials4)
      {
        v35 = captivePortalCredentials4;
        captivePortalCredentials5 = [(CWFNearbySyncNetwork *)self captivePortalCredentials];
        captivePortalCredentials6 = [networkCopy captivePortalCredentials];
        v20 = [captivePortalCredentials5 isEqual:captivePortalCredentials6];

        captivePortalCredentials4 = v35;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {

      v20 = 0;
    }
  }

  if (v45 != password2)
  {
  }

  if (channel != channel2)
  {
  }

LABEL_41:
  knownNetworkProfile4 = v49;
  v8 = v50;
  knownNetworkProfile6 = v47;
  knownNetworkProfile5 = v48;
  if (knownNetworkProfile != knownNetworkProfile2)
  {
    goto LABEL_42;
  }

LABEL_44:

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFNearbySyncNetwork *)self isEqualToNearbySyncNetwork:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  knownNetworkProfile = [(CWFNearbySyncNetwork *)self knownNetworkProfile];
  v4 = [knownNetworkProfile hash];
  channel = [(CWFNearbySyncNetwork *)self channel];
  v6 = [channel hash] ^ v4;
  password = [(CWFNearbySyncNetwork *)self password];
  v8 = [password hash];
  captivePortalCredentials = [(CWFNearbySyncNetwork *)self captivePortalCredentials];
  v10 = v8 ^ [captivePortalCredentials hash];

  return v6 ^ v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFNearbySyncNetwork allocWithZone:?]];
  knownNetworkProfile = [(CWFNearbySyncNetwork *)self knownNetworkProfile];
  [(CWFNearbySyncNetwork *)v4 setKnownNetworkProfile:knownNetworkProfile];

  channel = [(CWFNearbySyncNetwork *)self channel];
  [(CWFNearbySyncNetwork *)v4 setChannel:channel];

  password = [(CWFNearbySyncNetwork *)self password];
  [(CWFNearbySyncNetwork *)v4 setPassword:password];

  captivePortalCredentials = [(CWFNearbySyncNetwork *)self captivePortalCredentials];
  [(CWFNearbySyncNetwork *)v4 setCaptivePortalCredentials:captivePortalCredentials];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  knownNetworkProfile = [(CWFNearbySyncNetwork *)self knownNetworkProfile];
  [coderCopy encodeObject:knownNetworkProfile forKey:@"_knownNetworkProfile"];

  channel = [(CWFNearbySyncNetwork *)self channel];
  [coderCopy encodeObject:channel forKey:@"_channel"];

  password = [(CWFNearbySyncNetwork *)self password];
  [coderCopy encodeObject:password forKey:@"_password"];

  captivePortalCredentials = [(CWFNearbySyncNetwork *)self captivePortalCredentials];
  [coderCopy encodeObject:captivePortalCredentials forKey:@"_captivePortalCredentials"];
}

- (CWFNearbySyncNetwork)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CWFNearbySyncNetwork;
  v5 = [(CWFNearbySyncNetwork *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_knownNetworkProfile"];
    [(CWFNearbySyncNetwork *)v5 setKnownNetworkProfile:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_channel"];
    [(CWFNearbySyncNetwork *)v5 setChannel:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_password"];
    [(CWFNearbySyncNetwork *)v5 setPassword:v8];

    v9 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v11 = [v9 setWithArray:v10];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"_captivePortalCredentials"];
    [(CWFNearbySyncNetwork *)v5 setCaptivePortalCredentials:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

@end