@interface MRGroupSessionToken
+ (id)tokenForJoinURLString:(id)string;
- (BOOL)isEqual:(id)equal;
- (MRGroupSessionToken)initWithCoder:(id)coder;
- (MRGroupSessionToken)initWithData:(id)data;
- (MRGroupSessionToken)initWithDeviceInfo:(id)info;
- (MRGroupSessionToken)initWithDiscoveredSession:(id)session autoConnect:(BOOL)connect;
- (MRGroupSessionToken)initWithHostInfo:(id)info invitationData:(id)data sharedSecret:(id)secret sessionIdentifier:(id)identifier equivalentMediaIdentifier:(id)mediaIdentifier version:(id)version;
- (MRGroupSessionToken)initWithProtobuf:(id)protobuf;
- (NSString)effectiveIdentifier;
- (NSString)hostDisplayName;
- (NSString)joinContinuitySingURLString;
- (NSString)joinURLString;
- (NSString)localizedSessionName;
- (_MRGroupSessionTokenProtobuf)protobuf;
- (id)_groupSessionComponentsWithScheme:(id)scheme host:(id)host;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (unsigned)routeType;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRGroupSessionToken

+ (id)tokenForJoinURLString:(id)string
{
  v53 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = [MEMORY[0x1E695DFF8] URLWithString:stringCopy];
  v5 = v4;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_56;
  }

  host = [v4 host];
  if ([host isEqual:@"music.apple.com"])
  {
  }

  else
  {
    scheme = [v5 scheme];
    v9 = [scheme isEqual:@"ContinuitySing"];

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

  lastPathComponent = [v5 lastPathComponent];
  v11 = [lastPathComponent isEqual:@"join"];

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

  v12 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:stringCopy];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  queryItems = [v12 queryItems];
  v14 = [queryItems countByEnumeratingWithState:&v48 objects:v52 count:16];
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
  v45 = stringCopy;
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
        objc_enumerationMutation(queryItems);
      }

      v20 = *(*(&v48 + 1) + 8 * v19);
      name = [v20 name];
      v22 = [name isEqual:@"v"];

      if (v22)
      {
        value = [v20 value];
        v24 = v17;
        v17 = value;
LABEL_19:

        goto LABEL_20;
      }

      name2 = [v20 name];
      v26 = [name2 isEqualToString:@"p"];

      if (v26)
      {
        value2 = [v20 value];
        v24 = v16;
        v28 = 1;
LABEL_18:
        v47 = v28;
        v16 = value2;
        goto LABEL_19;
      }

      name3 = [v20 name];
      v30 = [name3 isEqualToString:@"d"];

      if (v30)
      {
        value2 = [v20 value];
        v24 = v16;
        v28 = 2;
        goto LABEL_18;
      }

      name4 = [v20 name];
      v32 = [name4 isEqualToString:@"h"];

      if (v32)
      {
        v33 = +[MRSharedSettings currentSettings];
        supportGroupSessionHome = [v33 supportGroupSessionHome];

        if (supportGroupSessionHome)
        {
          value3 = [v20 value];
          v24 = v46;
          v46 = value3;
          goto LABEL_19;
        }
      }

LABEL_20:
      ++v19;
    }

    while (v15 != v19);
    v36 = [queryItems countByEnumeratingWithState:&v48 objects:v52 count:16];
    v15 = v36;
  }

  while (v36);

  if (!v16)
  {
    stringCopy = v45;
    v12 = v44;
    v38 = v46;
    goto LABEL_40;
  }

  v37 = [MEMORY[0x1E695DEF0] tu_dataForURLSafeBase64EncodedString:v16];
  stringCopy = v45;
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

- (MRGroupSessionToken)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = [MRGroupSessionHostInfo alloc];
  routeType = [protobufCopy routeType];
  displayName = [protobufCopy displayName];
  v8 = [(MRGroupSessionHostInfo *)v5 initWithRouteType:routeType displayName:displayName];

  invitationData = [protobufCopy invitationData];
  sharedSecret = [protobufCopy sharedSecret];
  sessionIdentifier = [protobufCopy sessionIdentifier];
  equivalentMediaIdentifier = [protobufCopy equivalentMediaIdentifier];
  if ([protobufCopy hasVersion])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(protobufCopy, "version")}];
    v14 = [(MRGroupSessionToken *)self initWithHostInfo:v8 invitationData:invitationData sharedSecret:sharedSecret sessionIdentifier:sessionIdentifier equivalentMediaIdentifier:equivalentMediaIdentifier version:v13];
  }

  else
  {
    v14 = [(MRGroupSessionToken *)self initWithHostInfo:v8 invitationData:invitationData sharedSecret:sharedSecret sessionIdentifier:sessionIdentifier equivalentMediaIdentifier:equivalentMediaIdentifier version:0];
  }

  return v14;
}

- (MRGroupSessionToken)initWithHostInfo:(id)info invitationData:(id)data sharedSecret:(id)secret sessionIdentifier:(id)identifier equivalentMediaIdentifier:(id)mediaIdentifier version:(id)version
{
  infoCopy = info;
  dataCopy = data;
  secretCopy = secret;
  identifierCopy = identifier;
  mediaIdentifierCopy = mediaIdentifier;
  versionCopy = version;
  selfCopy = 0;
  v26 = dataCopy;
  if (infoCopy && dataCopy)
  {
    v19 = versionCopy;
    v27.receiver = self;
    v27.super_class = MRGroupSessionToken;
    v20 = [(MRGroupSessionToken *)&v27 init:mediaIdentifierCopy];
    p_isa = &v20->super.isa;
    if (v20)
    {
      objc_storeStrong(&v20->_invitationData, data);
      objc_storeStrong(p_isa + 2, info);
      objc_storeStrong(p_isa + 7, secret);
      objc_storeStrong(p_isa + 4, identifier);
      objc_storeStrong(p_isa + 5, mediaIdentifier);
      objc_storeStrong(p_isa + 3, version);
    }

    self = p_isa;
    selfCopy = self;
    versionCopy = v19;
  }

  return selfCopy;
}

- (MRGroupSessionToken)initWithDiscoveredSession:(id)session autoConnect:(BOOL)connect
{
  sessionCopy = session;
  v11.receiver = self;
  v11.super_class = MRGroupSessionToken;
  v8 = [(MRGroupSessionToken *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_discoveredSession, session);
    v9->_autoConnect = connect;
  }

  return v9;
}

- (MRGroupSessionToken)initWithDeviceInfo:(id)info
{
  infoCopy = info;
  v18.receiver = self;
  v18.super_class = MRGroupSessionToken;
  v5 = [(MRGroupSessionToken *)&v18 init];
  if (v5)
  {
    modelID = [infoCopy modelID];
    v7 = MRGroupSessionRouteTypeFromModelIdentifier(modelID);

    v8 = [MRGroupSessionHostInfo alloc];
    name = [infoCopy name];
    modelID2 = [infoCopy modelID];
    v11 = [(MRGroupSessionHostInfo *)v8 initWithRouteType:v7 displayName:name modelIdentifier:modelID2 color:0];
    hostInfo = v5->_hostInfo;
    v5->_hostInfo = v11;

    deviceUID = [infoCopy deviceUID];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = deviceUID;

    deviceUID2 = [infoCopy deviceUID];
    equivalentMediaIdentifier = v5->_equivalentMediaIdentifier;
    v5->_equivalentMediaIdentifier = deviceUID2;
  }

  return v5;
}

- (MRGroupSessionToken)initWithData:(id)data
{
  v14[3] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = MSVPropertyListDataClasses();
  v6 = [v5 mutableCopy];

  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v14[2] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  [v6 addObjectsFromArray:v7];

  v13 = 0;
  v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v6 fromData:dataCopy error:&v13];

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

- (MRGroupSessionToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = MRGroupSessionToken;
  v5 = [(MRGroupSessionToken *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ds"];
    discoveredSession = v5->_discoveredSession;
    v5->_discoveredSession = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inv"];
    invitationData = v5->_invitationData;
    v5->_invitationData = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hi"];
    hostInfo = v5->_hostInfo;
    v5->_hostInfo = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ss"];
    sharedSecret = v5->_sharedSecret;
    v5->_sharedSecret = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"si"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"emi"];
    equivalentMediaIdentifier = v5->_equivalentMediaIdentifier;
    v5->_equivalentMediaIdentifier = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"v"];
    version = v5->_version;
    v5->_version = v18;
  }

  return v5;
}

- (_MRGroupSessionTokenProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRGroupSessionTokenProtobuf);
  invitationData = [(MRGroupSessionToken *)self invitationData];
  [(_MRGroupSessionTokenProtobuf *)v3 setInvitationData:invitationData];

  sharedSecret = [(MRGroupSessionToken *)self sharedSecret];
  [(_MRGroupSessionTokenProtobuf *)v3 setSharedSecret:sharedSecret];

  sessionIdentifier = [(MRGroupSessionToken *)self sessionIdentifier];
  [(_MRGroupSessionTokenProtobuf *)v3 setSessionIdentifier:sessionIdentifier];

  equivalentMediaIdentifier = [(MRGroupSessionToken *)self equivalentMediaIdentifier];
  [(_MRGroupSessionTokenProtobuf *)v3 setEquivalentMediaIdentifier:equivalentMediaIdentifier];

  hostInfo = [(MRGroupSessionToken *)self hostInfo];
  -[_MRGroupSessionTokenProtobuf setRouteType:](v3, "setRouteType:", [hostInfo routeType]);

  hostInfo2 = [(MRGroupSessionToken *)self hostInfo];
  displayName = [hostInfo2 displayName];
  [(_MRGroupSessionTokenProtobuf *)v3 setDisplayName:displayName];

  version = [(MRGroupSessionToken *)self version];
  -[_MRGroupSessionTokenProtobuf setVersion:](v3, "setVersion:", [version unsignedIntValue]);

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  discoveredSession = self->_discoveredSession;
  coderCopy = coder;
  [coderCopy encodeObject:discoveredSession forKey:@"ds"];
  [coderCopy encodeObject:self->_invitationData forKey:@"inv"];
  [coderCopy encodeObject:self->_hostInfo forKey:@"hi"];
  [coderCopy encodeObject:self->_sharedSecret forKey:@"ss"];
  [coderCopy encodeObject:self->_sessionIdentifier forKey:@"si"];
  [coderCopy encodeObject:self->_equivalentMediaIdentifier forKey:@"emi"];
  [coderCopy encodeObject:self->_version forKey:@"v"];
}

- (id)copyWithZone:(_NSZone *)zone
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
  absoluteString = [v3 absoluteString];

  return absoluteString;
}

- (NSString)joinContinuitySingURLString
{
  v2 = [(MRGroupSessionToken *)self _groupSessionComponentsWithScheme:@"ContinuitySing" host:@"connect"];
  v3 = [v2 URL];
  absoluteString = [v3 absoluteString];

  return absoluteString;
}

- (id)_groupSessionComponentsWithScheme:(id)scheme host:(id)host
{
  v6 = MEMORY[0x1E696AF20];
  hostCopy = host;
  schemeCopy = scheme;
  v9 = objc_alloc_init(v6);
  [v9 setScheme:schemeCopy];

  [v9 setHost:hostCopy];
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
  equivalentMediaIdentifier = [(MRGroupSessionToken *)self equivalentMediaIdentifier];

  if (equivalentMediaIdentifier)
  {
    v13 = MEMORY[0x1E696AF60];
    equivalentMediaIdentifier2 = [(MRGroupSessionToken *)self equivalentMediaIdentifier];
    v15 = [v13 queryItemWithName:@"h" value:equivalentMediaIdentifier2];
    [v11 addObject:v15];
  }

  invitationData = [(MRGroupSessionToken *)self invitationData];

  if (invitationData)
  {
    invitationData2 = [(MRGroupSessionToken *)self invitationData];
    tu_URLSafeBase64EncodedString = [invitationData2 tu_URLSafeBase64EncodedString];

    v19 = [MEMORY[0x1E696AF60] queryItemWithName:@"p" value:tu_URLSafeBase64EncodedString];
    [v11 addObject:v19];

    v20 = MEMORY[0x1E696AF60];
    version = [(MRGroupSessionToken *)self version];
    stringValue = [version stringValue];
    v23 = [v20 queryItemWithName:@"v" value:stringValue];
    [v11 addObject:v23];
  }

  else
  {
    discoveredSession = [(MRGroupSessionToken *)self discoveredSession];
    data = [discoveredSession data];
    tu_URLSafeBase64EncodedString = [data tu_URLSafeBase64EncodedString];

    v26 = [MEMORY[0x1E696AF60] queryItemWithName:@"d" value:tu_URLSafeBase64EncodedString];
    [v11 addObject:v26];

    if (![(MRGroupSessionToken *)self autoConnect])
    {
      goto LABEL_11;
    }

    version = [MEMORY[0x1E696AF60] queryItemWithName:@"a" value:@"true"];
    [v11 addObject:version];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    invitationData = [v5 invitationData];
    invitationData2 = [(MRGroupSessionToken *)self invitationData];
    if (invitationData == invitationData2 || [invitationData isEqual:invitationData2])
    {
      discoveredSession = [v5 discoveredSession];
      v9 = discoveredSession;
      if (discoveredSession == self->_discoveredSession || [(MRDiscoveredGroupSession *)discoveredSession isEqual:?])
      {
        version = [v5 version];
        version2 = [(MRGroupSessionToken *)self version];
        if (version == version2)
        {
          v12 = 1;
        }

        else
        {
          v12 = [version isEqual:version2];
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
    displayName = [(MRGroupSessionHostInfo *)hostInfo displayName];
  }

  else
  {
    hostInfo = [(MRDiscoveredGroupSession *)self->_discoveredSession hostInfo];
    displayName = [hostInfo displayName];
  }

  return displayName;
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
    hostInfo = [(MRDiscoveredGroupSession *)self->_discoveredSession hostInfo];
    routeType = [hostInfo routeType];

    return routeType;
  }
}

- (NSString)localizedSessionName
{
  hostDisplayName = [(MRGroupSessionToken *)self hostDisplayName];
  v4 = MRGroupSessionRouteMakeName(hostDisplayName, [(MRGroupSessionToken *)self routeType]);

  return v4;
}

- (NSString)effectiveIdentifier
{
  equivalentMediaIdentifier = [(MRGroupSessionToken *)self equivalentMediaIdentifier];
  v4 = equivalentMediaIdentifier;
  if (equivalentMediaIdentifier)
  {
    sessionIdentifier = equivalentMediaIdentifier;
  }

  else
  {
    sessionIdentifier = [(MRGroupSessionToken *)self sessionIdentifier];
  }

  v6 = sessionIdentifier;

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