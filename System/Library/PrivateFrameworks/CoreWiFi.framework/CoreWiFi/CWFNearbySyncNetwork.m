@interface CWFNearbySyncNetwork
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNearbySyncNetwork:(id)a3;
- (BOOL)isNearbyBrokenBackhaulStateSyncable;
- (BOOL)isNearbyRecommendable;
- (BOOL)isNearbySyncable;
- (CWFNearbySyncNetwork)initWithCoder:(id)a3;
- (CWFNearbySyncNetwork)initWithExternalForm:(id)a3;
- (CWFNetworkProfile)knownNetworkProfile;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)externalForm;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setKnownNetworkProfile:(id)a3;
@end

@implementation CWFNearbySyncNetwork

- (CWFNetworkProfile)knownNetworkProfile
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CWFNetworkProfile *)v2->_knownNetworkProfile copy];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isNearbySyncable
{
  v3 = [(CWFNearbySyncNetwork *)self knownNetworkProfile];
  v4 = [v3 isNearbySyncable];
  if ([v3 isPSK])
  {
    v5 = [(CWFNearbySyncNetwork *)self password];
    v6 = v5 != 0;

    v4 &= v6;
  }

  return v4;
}

- (BOOL)isNearbyBrokenBackhaulStateSyncable
{
  v2 = [(CWFNearbySyncNetwork *)self knownNetworkProfile];
  v3 = [v2 brokenBackhaulState] == 1;

  return v3;
}

- (void)setKnownNetworkProfile:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 filteredNearbySyncableNetworkProfile];
  knownNetworkProfile = v4->_knownNetworkProfile;
  v4->_knownNetworkProfile = v5;

  objc_sync_exit(v4);
}

- (BOOL)isNearbyRecommendable
{
  v3 = [(CWFNearbySyncNetwork *)self knownNetworkProfile];
  v4 = [v3 isNearbyRecommendable];
  if ([v3 isCaptive])
  {
    v5 = [(CWFNearbySyncNetwork *)self captivePortalCredentials];
    v6 = v5 != 0;

    v4 &= v6;
  }

  return v4;
}

- (CWFNearbySyncNetwork)initWithExternalForm:(id)a3
{
  v4 = a3;
  v5 = [(CWFNearbySyncNetwork *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"KnownNetwork"];
    if (v6)
    {
      v7 = [[CWFNetworkProfile alloc] initWithExternalForm:v6];
      [(CWFNearbySyncNetwork *)v5 setKnownNetworkProfile:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"Password"];
    [(CWFNearbySyncNetwork *)v5 setPassword:v8];

    v9 = [v4 objectForKeyedSubscript:@"CaptivePortalCredentials"];
    [(CWFNearbySyncNetwork *)v5 setCaptivePortalCredentials:v9];

    v10 = [v4 objectForKeyedSubscript:@"Channel"];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(CWFNearbySyncNetwork *)self knownNetworkProfile];
  v5 = [v4 externalForm];
  [v3 setObject:v5 forKeyedSubscript:@"KnownNetwork"];

  v6 = [(CWFNearbySyncNetwork *)self password];
  [v3 setObject:v6 forKeyedSubscript:@"Password"];

  v7 = [(CWFNearbySyncNetwork *)self captivePortalCredentials];
  [v3 setObject:v7 forKeyedSubscript:@"CaptivePortalCredentials"];

  v8 = [(CWFNearbySyncNetwork *)self channel];
  v9 = [v8 externalForm];
  [v3 setObject:v9 forKeyedSubscript:@"Channel"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CWFNearbySyncNetwork *)self knownNetworkProfile];
  v5 = [(CWFNearbySyncNetwork *)self channel];
  v6 = [(CWFNearbySyncNetwork *)self password];
  v7 = [(CWFNearbySyncNetwork *)self captivePortalCredentials];
  v8 = [v3 stringWithFormat:@"network=%@, channel=%@, hasPassword=%d, hasCaptivePortalCreds=%d, syncable=%d, recommendable=%d", v4, v5, v6 != 0, v7 != 0, -[CWFNearbySyncNetwork isNearbySyncable](self, "isNearbySyncable"), -[CWFNearbySyncNetwork isNearbyRecommendable](self, "isNearbyRecommendable")];

  return v8;
}

- (BOOL)isEqualToNearbySyncNetwork:(id)a3
{
  v4 = a3;
  v5 = [(CWFNearbySyncNetwork *)self knownNetworkProfile];
  v6 = [v4 knownNetworkProfile];
  if (v5 != v6)
  {
    v7 = [(CWFNearbySyncNetwork *)self knownNetworkProfile];
    if (!v7)
    {
      v20 = 0;
      goto LABEL_44;
    }

    v8 = v7;
    v9 = [v4 knownNetworkProfile];
    if (!v9)
    {
      v20 = 0;
LABEL_43:

      goto LABEL_44;
    }

    v10 = [(CWFNearbySyncNetwork *)self knownNetworkProfile];
    v11 = [v4 knownNetworkProfile];
    if (![v10 isEqual:v11])
    {
      v20 = 0;
LABEL_42:

      goto LABEL_43;
    }

    v47 = v11;
    v48 = v10;
    v49 = v9;
    v50 = v8;
  }

  v12 = [(CWFNearbySyncNetwork *)self channel];
  v13 = [v4 channel];
  if (v12 != v13)
  {
    v14 = [(CWFNearbySyncNetwork *)self channel];
    if (v14)
    {
      v15 = v14;
      v16 = [v4 channel];
      if (v16)
      {
        v17 = v16;
        v18 = [(CWFNearbySyncNetwork *)self channel];
        v19 = [v4 channel];
        if ([v18 isEqual:v19])
        {
          v41 = v19;
          v42 = v18;
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
  v21 = [(CWFNearbySyncNetwork *)self password];
  v46 = [v4 password];
  if (v21 == v46)
  {
    v45 = v21;
    goto LABEL_20;
  }

  v22 = [(CWFNearbySyncNetwork *)self password];
  if (!v22)
  {

    goto LABEL_30;
  }

  v23 = v22;
  v45 = v21;
  v24 = [v4 password];
  if (!v24)
  {
LABEL_29:

LABEL_30:
    if (v12 != v13)
    {
    }

    goto LABEL_32;
  }

  v25 = [(CWFNearbySyncNetwork *)self password];
  v26 = [v4 password];
  if (([v25 isEqual:v26] & 1) == 0)
  {

    goto LABEL_29;
  }

  v37 = v26;
  v38 = v25;
  v39 = v24;
  v40 = v23;
LABEL_20:
  v27 = [(CWFNearbySyncNetwork *)self captivePortalCredentials];
  v28 = [v4 captivePortalCredentials];
  v29 = v28;
  if (v27 == v28)
  {

    v20 = 1;
  }

  else
  {
    v30 = [(CWFNearbySyncNetwork *)self captivePortalCredentials];
    if (v30)
    {
      v36 = v30;
      v31 = [v4 captivePortalCredentials];
      if (v31)
      {
        v35 = v31;
        v32 = [(CWFNearbySyncNetwork *)self captivePortalCredentials];
        v33 = [v4 captivePortalCredentials];
        v20 = [v32 isEqual:v33];

        v31 = v35;
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

  if (v45 != v46)
  {
  }

  if (v12 != v13)
  {
  }

LABEL_41:
  v9 = v49;
  v8 = v50;
  v11 = v47;
  v10 = v48;
  if (v5 != v6)
  {
    goto LABEL_42;
  }

LABEL_44:

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFNearbySyncNetwork *)self isEqualToNearbySyncNetwork:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(CWFNearbySyncNetwork *)self knownNetworkProfile];
  v4 = [v3 hash];
  v5 = [(CWFNearbySyncNetwork *)self channel];
  v6 = [v5 hash] ^ v4;
  v7 = [(CWFNearbySyncNetwork *)self password];
  v8 = [v7 hash];
  v9 = [(CWFNearbySyncNetwork *)self captivePortalCredentials];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFNearbySyncNetwork allocWithZone:?]];
  v5 = [(CWFNearbySyncNetwork *)self knownNetworkProfile];
  [(CWFNearbySyncNetwork *)v4 setKnownNetworkProfile:v5];

  v6 = [(CWFNearbySyncNetwork *)self channel];
  [(CWFNearbySyncNetwork *)v4 setChannel:v6];

  v7 = [(CWFNearbySyncNetwork *)self password];
  [(CWFNearbySyncNetwork *)v4 setPassword:v7];

  v8 = [(CWFNearbySyncNetwork *)self captivePortalCredentials];
  [(CWFNearbySyncNetwork *)v4 setCaptivePortalCredentials:v8];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CWFNearbySyncNetwork *)self knownNetworkProfile];
  [v4 encodeObject:v5 forKey:@"_knownNetworkProfile"];

  v6 = [(CWFNearbySyncNetwork *)self channel];
  [v4 encodeObject:v6 forKey:@"_channel"];

  v7 = [(CWFNearbySyncNetwork *)self password];
  [v4 encodeObject:v7 forKey:@"_password"];

  v8 = [(CWFNearbySyncNetwork *)self captivePortalCredentials];
  [v4 encodeObject:v8 forKey:@"_captivePortalCredentials"];
}

- (CWFNearbySyncNetwork)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CWFNearbySyncNetwork;
  v5 = [(CWFNearbySyncNetwork *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_knownNetworkProfile"];
    [(CWFNearbySyncNetwork *)v5 setKnownNetworkProfile:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_channel"];
    [(CWFNearbySyncNetwork *)v5 setChannel:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_password"];
    [(CWFNearbySyncNetwork *)v5 setPassword:v8];

    v9 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v11 = [v9 setWithArray:v10];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"_captivePortalCredentials"];
    [(CWFNearbySyncNetwork *)v5 setCaptivePortalCredentials:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

@end