@interface MRGroupSessionToken
+ (id)tokenForJoinURLString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MRGroupSessionToken)initWithCoder:(id)a3;
- (MRGroupSessionToken)initWithData:(id)a3;
- (MRGroupSessionToken)initWithDeviceInfo:(id)a3;
- (MRGroupSessionToken)initWithDiscoveredSession:(id)a3 autoConnect:(BOOL)a4;
- (MRGroupSessionToken)initWithHostInfo:(id)a3 invitationData:(id)a4 sharedSecret:(id)a5 sessionIdentifier:(id)a6 equivalentMediaIdentifier:(id)a7 version:(id)a8;
- (MRGroupSessionToken)initWithProtobuf:(id)a3;
- (NSString)effectiveIdentifier;
- (NSString)hostDisplayName;
- (NSString)joinContinuitySingURLString;
- (NSString)joinURLString;
- (NSString)localizedSessionName;
- (_MRGroupSessionTokenProtobuf)protobuf;
- (id)_groupSessionComponentsWithScheme:(id)a3 host:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (unsigned)routeType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRGroupSessionToken

+ (id)tokenForJoinURLString:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  v5 = v4;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_56;
  }

  v6 = [v4 host];
  if ([v6 isEqual:@"music.apple.com"])
  {
  }

  else
  {
    v8 = [v5 scheme];
    v9 = [v8 isEqual:@"ContinuitySing"];

    if ((v9 & 1) == 0)
    {
      v12 = _MRLogForCategory(0xCuLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[MRGroupSessionToken tokenForJoinURLString:];
      }

      goto LABEL_37;
    }
  }

  v10 = [v5 lastPathComponent];
  v11 = [v10 isEqual:@"join"];

  if ((v11 & 1) == 0)
  {
    v12 = _MRLogForCategory(0xCuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[MRGroupSessionToken tokenForJoinURLString:];
    }

LABEL_37:
    v7 = 0;
    goto LABEL_55;
  }

  v12 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:v3];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v13 = [v12 queryItems];
  v14 = [v13 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (!v14)
  {

    v17 = 0;
    v38 = 0;
LABEL_40:
    v37 = _MRLogForCategory(0xCuLL);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      +[MRGroupSessionToken tokenForJoinURLString:];
    }

    v16 = 0;
    v7 = 0;
    goto LABEL_54;
  }

  v15 = v14;
  v44 = v12;
  v45 = v3;
  v46 = 0;
  v47 = 0;
  v16 = 0;
  v17 = 0;
  v18 = *v49;
  do
  {
    v19 = 0;
    do
    {
      if (*v49 != v18)
      {
        objc_enumerationMutation(v13);
      }

      v20 = *(*(&v48 + 1) + 8 * v19);
      v21 = [v20 name];
      v22 = [v21 isEqual:@"v"];

      if (v22)
      {
        v23 = [v20 value];
        v24 = v17;
        v17 = v23;
LABEL_19:

        goto LABEL_20;
      }

      v25 = [v20 name];
      v26 = [v25 isEqualToString:@"p"];

      if (v26)
      {
        v27 = [v20 value];
        v24 = v16;
        v28 = 1;
LABEL_18:
        v47 = v28;
        v16 = v27;
        goto LABEL_19;
      }

      v29 = [v20 name];
      v30 = [v29 isEqualToString:@"d"];

      if (v30)
      {
        v27 = [v20 value];
        v24 = v16;
        v28 = 2;
        goto LABEL_18;
      }

      v31 = [v20 name];
      v32 = [v31 isEqualToString:@"h"];

      if (v32)
      {
        v33 = +[MRSharedSettings currentSettings];
        v34 = [v33 supportGroupSessionHome];

        if (v34)
        {
          v35 = [v20 value];
          v24 = v46;
          v46 = v35;
          goto LABEL_19;
        }
      }

LABEL_20:
      ++v19;
    }

    while (v15 != v19);
    v36 = [v13 countByEnumeratingWithState:&v48 objects:v52 count:16];
    v15 = v36;
  }

  while (v36);

  if (!v16)
  {
    v3 = v45;
    v12 = v44;
    v38 = v46;
    goto LABEL_40;
  }

  v37 = [MEMORY[0x1E695DEF0] tu_dataForURLSafeBase64EncodedString:v16];
  v3 = v45;
  v38 = v46;
  if (!v37)
  {
    v39 = _MRLogForCategory(0xCuLL);
    if (os_log_type_enabled(&v39->super, OS_LOG_TYPE_ERROR))
    {
      +[MRGroupSessionToken tokenForJoinURLString:];
    }

    goto LABEL_51;
  }

  if (v47 == 2)
  {
    v39 = [[MRDiscoveredGroupSession alloc] initWithData:v37];
    v40 = [[MRGroupSessionToken alloc] initWithDiscoveredSession:v39];
LABEL_46:
    v7 = v40;
    goto LABEL_52;
  }

  if (v47 == 1)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v17, "intValue")}];
    if (v17 && ([&unk_1F1577638 containsObject:v39] & 1) != 0)
    {
      v40 = MRGroupSessionTokenCreateWithInvitationData(v37, v46, v39);
      goto LABEL_46;
    }

    v41 = _MRLogForCategory(0xCuLL);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      +[MRGroupSessionToken tokenForJoinURLString:];
    }

LABEL_51:
    v7 = 0;
LABEL_52:
  }

  else
  {
    v7 = 0;
  }

  v12 = v44;
LABEL_54:

LABEL_55:
LABEL_56:

  v42 = *MEMORY[0x1E69E9840];

  return v7;
}

- (MRGroupSessionToken)initWithProtobuf:(id)a3
{
  v4 = a3;
  v5 = [MRGroupSessionHostInfo alloc];
  v6 = [v4 routeType];
  v7 = [v4 displayName];
  v8 = [(MRGroupSessionHostInfo *)v5 initWithRouteType:v6 displayName:v7];

  v9 = [v4 invitationData];
  v10 = [v4 sharedSecret];
  v11 = [v4 sessionIdentifier];
  v12 = [v4 equivalentMediaIdentifier];
  if ([v4 hasVersion])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v4, "version")}];
    v14 = [(MRGroupSessionToken *)self initWithHostInfo:v8 invitationData:v9 sharedSecret:v10 sessionIdentifier:v11 equivalentMediaIdentifier:v12 version:v13];
  }

  else
  {
    v14 = [(MRGroupSessionToken *)self initWithHostInfo:v8 invitationData:v9 sharedSecret:v10 sessionIdentifier:v11 equivalentMediaIdentifier:v12 version:0];
  }

  return v14;
}

- (MRGroupSessionToken)initWithHostInfo:(id)a3 invitationData:(id)a4 sharedSecret:(id)a5 sessionIdentifier:(id)a6 equivalentMediaIdentifier:(id)a7 version:(id)a8
{
  v15 = a3;
  v16 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v17 = a8;
  v18 = 0;
  v26 = v16;
  if (v15 && v16)
  {
    v19 = v17;
    v27.receiver = self;
    v27.super_class = MRGroupSessionToken;
    v20 = [(MRGroupSessionToken *)&v27 init:v23];
    p_isa = &v20->super.isa;
    if (v20)
    {
      objc_storeStrong(&v20->_invitationData, a4);
      objc_storeStrong(p_isa + 2, a3);
      objc_storeStrong(p_isa + 7, a5);
      objc_storeStrong(p_isa + 4, a6);
      objc_storeStrong(p_isa + 5, a7);
      objc_storeStrong(p_isa + 3, a8);
    }

    self = p_isa;
    v18 = self;
    v17 = v19;
  }

  return v18;
}

- (MRGroupSessionToken)initWithDiscoveredSession:(id)a3 autoConnect:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MRGroupSessionToken;
  v8 = [(MRGroupSessionToken *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_discoveredSession, a3);
    v9->_autoConnect = a4;
  }

  return v9;
}

- (MRGroupSessionToken)initWithDeviceInfo:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = MRGroupSessionToken;
  v5 = [(MRGroupSessionToken *)&v18 init];
  if (v5)
  {
    v6 = [v4 modelID];
    v7 = MRGroupSessionRouteTypeFromModelIdentifier(v6);

    v8 = [MRGroupSessionHostInfo alloc];
    v9 = [v4 name];
    v10 = [v4 modelID];
    v11 = [(MRGroupSessionHostInfo *)v8 initWithRouteType:v7 displayName:v9 modelIdentifier:v10 color:0];
    hostInfo = v5->_hostInfo;
    v5->_hostInfo = v11;

    v13 = [v4 deviceUID];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v13;

    v15 = [v4 deviceUID];
    equivalentMediaIdentifier = v5->_equivalentMediaIdentifier;
    v5->_equivalentMediaIdentifier = v15;
  }

  return v5;
}

- (MRGroupSessionToken)initWithData:(id)a3
{
  v14[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MSVPropertyListDataClasses();
  v6 = [v5 mutableCopy];

  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v14[2] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  [v6 addObjectsFromArray:v7];

  v13 = 0;
  v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v6 fromData:v4 error:&v13];

  v9 = v13;
  if (v9)
  {
    v10 = _MRLogForCategory(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MRGroupSessionToken initWithData:];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (MRGroupSessionToken)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = MRGroupSessionToken;
  v5 = [(MRGroupSessionToken *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ds"];
    discoveredSession = v5->_discoveredSession;
    v5->_discoveredSession = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inv"];
    invitationData = v5->_invitationData;
    v5->_invitationData = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hi"];
    hostInfo = v5->_hostInfo;
    v5->_hostInfo = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ss"];
    sharedSecret = v5->_sharedSecret;
    v5->_sharedSecret = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"si"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"emi"];
    equivalentMediaIdentifier = v5->_equivalentMediaIdentifier;
    v5->_equivalentMediaIdentifier = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"v"];
    version = v5->_version;
    v5->_version = v18;
  }

  return v5;
}

- (_MRGroupSessionTokenProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRGroupSessionTokenProtobuf);
  v4 = [(MRGroupSessionToken *)self invitationData];
  [(_MRGroupSessionTokenProtobuf *)v3 setInvitationData:v4];

  v5 = [(MRGroupSessionToken *)self sharedSecret];
  [(_MRGroupSessionTokenProtobuf *)v3 setSharedSecret:v5];

  v6 = [(MRGroupSessionToken *)self sessionIdentifier];
  [(_MRGroupSessionTokenProtobuf *)v3 setSessionIdentifier:v6];

  v7 = [(MRGroupSessionToken *)self equivalentMediaIdentifier];
  [(_MRGroupSessionTokenProtobuf *)v3 setEquivalentMediaIdentifier:v7];

  v8 = [(MRGroupSessionToken *)self hostInfo];
  -[_MRGroupSessionTokenProtobuf setRouteType:](v3, "setRouteType:", [v8 routeType]);

  v9 = [(MRGroupSessionToken *)self hostInfo];
  v10 = [v9 displayName];
  [(_MRGroupSessionTokenProtobuf *)v3 setDisplayName:v10];

  v11 = [(MRGroupSessionToken *)self version];
  -[_MRGroupSessionTokenProtobuf setVersion:](v3, "setVersion:", [v11 unsignedIntValue]);

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  discoveredSession = self->_discoveredSession;
  v5 = a3;
  [v5 encodeObject:discoveredSession forKey:@"ds"];
  [v5 encodeObject:self->_invitationData forKey:@"inv"];
  [v5 encodeObject:self->_hostInfo forKey:@"hi"];
  [v5 encodeObject:self->_sharedSecret forKey:@"ss"];
  [v5 encodeObject:self->_sessionIdentifier forKey:@"si"];
  [v5 encodeObject:self->_equivalentMediaIdentifier forKey:@"emi"];
  [v5 encodeObject:self->_version forKey:@"v"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  discoveredSession = self->_discoveredSession;
  v5 = [MRGroupSessionToken alloc];
  if (discoveredSession)
  {
    v6 = [(MRDiscoveredGroupSession *)self->_discoveredSession copy];
    v7 = [(MRGroupSessionToken *)v5 initWithDiscoveredSession:v6];
  }

  else
  {
    v6 = [(MRGroupSessionHostInfo *)self->_hostInfo copy];
    v8 = [(NSData *)self->_invitationData copy];
    v9 = [(NSString *)self->_sharedSecret copy];
    v10 = [(NSString *)self->_sessionIdentifier copy];
    v11 = [(NSString *)self->_equivalentMediaIdentifier copy];
    v7 = [(MRGroupSessionToken *)v5 initWithHostInfo:v6 invitationData:v8 sharedSecret:v9 sessionIdentifier:v10 equivalentMediaIdentifier:v11 version:self->_version];
  }

  return v7;
}

- (NSString)joinURLString
{
  v2 = [(MRGroupSessionToken *)self _groupSessionComponentsWithScheme:@"https" host:@"music.apple.com"];
  v3 = [v2 URL];
  v4 = [v3 absoluteString];

  return v4;
}

- (NSString)joinContinuitySingURLString
{
  v2 = [(MRGroupSessionToken *)self _groupSessionComponentsWithScheme:@"ContinuitySing" host:@"connect"];
  v3 = [v2 URL];
  v4 = [v3 absoluteString];

  return v4;
}

- (id)_groupSessionComponentsWithScheme:(id)a3 host:(id)a4
{
  v6 = MEMORY[0x1E696AF20];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setScheme:v8];

  [v9 setHost:v7];
  if (self->_storefrontCountryCode)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@/%@", self->_storefrontCountryCode, @"join"];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@", @"join", v28];
  }
  v10 = ;
  [v9 setPath:v10];

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = [(MRGroupSessionToken *)self equivalentMediaIdentifier];

  if (v12)
  {
    v13 = MEMORY[0x1E696AF60];
    v14 = [(MRGroupSessionToken *)self equivalentMediaIdentifier];
    v15 = [v13 queryItemWithName:@"h" value:v14];
    [v11 addObject:v15];
  }

  v16 = [(MRGroupSessionToken *)self invitationData];

  if (v16)
  {
    v17 = [(MRGroupSessionToken *)self invitationData];
    v18 = [v17 tu_URLSafeBase64EncodedString];

    v19 = [MEMORY[0x1E696AF60] queryItemWithName:@"p" value:v18];
    [v11 addObject:v19];

    v20 = MEMORY[0x1E696AF60];
    v21 = [(MRGroupSessionToken *)self version];
    v22 = [v21 stringValue];
    v23 = [v20 queryItemWithName:@"v" value:v22];
    [v11 addObject:v23];
  }

  else
  {
    v24 = [(MRGroupSessionToken *)self discoveredSession];
    v25 = [v24 data];
    v18 = [v25 tu_URLSafeBase64EncodedString];

    v26 = [MEMORY[0x1E696AF60] queryItemWithName:@"d" value:v18];
    [v11 addObject:v26];

    if (![(MRGroupSessionToken *)self autoConnect])
    {
      goto LABEL_11;
    }

    v21 = [MEMORY[0x1E696AF60] queryItemWithName:@"a" value:@"true"];
    [v11 addObject:v21];
  }

LABEL_11:
  [v9 setQueryItems:v11];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_invitationData hash];
  v4 = [(MRDiscoveredGroupSession *)self->_discoveredSession hash]^ v3;
  return v4 ^ [(NSString *)self->_sharedSecret hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 invitationData];
    v7 = [(MRGroupSessionToken *)self invitationData];
    if (v6 == v7 || [v6 isEqual:v7])
    {
      v8 = [v5 discoveredSession];
      v9 = v8;
      if (v8 == self->_discoveredSession || [(MRDiscoveredGroupSession *)v8 isEqual:?])
      {
        v10 = [v5 version];
        v11 = [(MRGroupSessionToken *)self version];
        if (v10 == v11)
        {
          v12 = 1;
        }

        else
        {
          v12 = [v10 isEqual:v11];
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = [(MRGroupSessionHostInfo *)self->_hostInfo description];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(MRDiscoveredGroupSession *)self->_discoveredSession description];
  }

  v6 = v5;

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p %@", objc_opt_class(), self, v6];
  v8 = [v7 mutableCopy];

  if (self->_sharedSecret)
  {
    [v8 appendFormat:@", secret=%@", self->_sharedSecret];
  }

  if (self->_sessionIdentifier)
  {
    [v8 appendFormat:@", id=%@", self->_sessionIdentifier];
  }

  if (self->_equivalentMediaIdentifier)
  {
    [v8 appendFormat:@", mediaID=%@", self->_equivalentMediaIdentifier];
  }

  if (self->_version)
  {
    [v8 appendFormat:@", version=%@", self->_version];
  }

  [v8 appendString:@">"];

  return v8;
}

- (NSString)hostDisplayName
{
  hostInfo = self->_hostInfo;
  if (hostInfo)
  {
    v4 = [(MRGroupSessionHostInfo *)hostInfo displayName];
  }

  else
  {
    v5 = [(MRDiscoveredGroupSession *)self->_discoveredSession hostInfo];
    v4 = [v5 displayName];
  }

  return v4;
}

- (unsigned)routeType
{
  hostInfo = self->_hostInfo;
  if (hostInfo)
  {

    return [(MRGroupSessionHostInfo *)hostInfo routeType];
  }

  else
  {
    v6 = [(MRDiscoveredGroupSession *)self->_discoveredSession hostInfo];
    v7 = [v6 routeType];

    return v7;
  }
}

- (NSString)localizedSessionName
{
  v3 = [(MRGroupSessionToken *)self hostDisplayName];
  v4 = MRGroupSessionRouteMakeName(v3, [(MRGroupSessionToken *)self routeType]);

  return v4;
}

- (NSString)effectiveIdentifier
{
  v3 = [(MRGroupSessionToken *)self equivalentMediaIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(MRGroupSessionToken *)self sessionIdentifier];
  }

  v6 = v5;

  return v6;
}

+ (void)tokenForJoinURLString:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v0, v1, "[MRGroupSession] [tokenForJoinURLString] URL doesn't have group session host domain: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)tokenForJoinURLString:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v0, v1, "[MRGroupSession] [tokenForJoinURLString] URL isn't group session join: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)tokenForJoinURLString:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v0, v1, "[MRGroupSession] [tokenForJoinURLString] Unexpected URL version: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)tokenForJoinURLString:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_1_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)tokenForJoinURLString:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v0, v1, "[MRGroupSession] [tokenForJoinURLString] No payload encoded in URL: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithData:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v0, v1, "[MRGroupSession] Failed to decode MRGroupSessionToken: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end