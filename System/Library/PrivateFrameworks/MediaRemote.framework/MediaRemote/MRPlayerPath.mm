@interface MRPlayerPath
+ (MRPlayerPath)anyPlayerPath;
+ (id)localPlayerPath;
+ (id)localResolvedPlayerPathFromPlayerPath:(id)path;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHomepodDemoApplication;
- (BOOL)isLocal;
- (BOOL)isResolved;
- (BOOL)isSystemBooksApplication;
- (BOOL)isSystemMediaApplication;
- (BOOL)isSystemPodcastsApplication;
- (MRPlayerPath)initWithCoder:(id)coder;
- (MRPlayerPath)initWithData:(id)data;
- (MRPlayerPath)initWithOrigin:(id)origin bundleIdentifier:(id)identifier player:(id)player;
- (MRPlayerPath)initWithOrigin:(id)origin client:(id)client player:(id)player;
- (MRPlayerPath)initWithProtobuf:(id)protobuf;
- (MRPlayerPath)localResolvedPlayerPath;
- (MRPlayerPath)skeleton;
- (NSData)data;
- (_MRNowPlayingPlayerPathProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)playerPathByLocalizingWithOrigin:(id)origin;
- (id)playerPathByRedirectingToOrigin:(id)origin;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setClient:(id)client;
- (void)setOrigin:(id)origin;
- (void)setPlayer:(id)player;
@end

@implementation MRPlayerPath

- (id)description
{
  isResolved = [(MRPlayerPath *)self isResolved];
  string = [MEMORY[0x1E696AD60] string];
  v5 = string;
  if (isResolved)
  {
    v6 = @"【 ";
  }

  else
  {
    v6 = @"〖 ";
  }

  if (isResolved)
  {
    v7 = @" 】";
  }

  else
  {
    v7 = @" 〗";
  }

  [string appendString:v6];
  origin = [(MRPlayerPath *)self origin];
  v9 = [origin description];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"􂞷";
  }

  [v5 appendString:v11];

  [v5 appendString:@" ❯ "];
  client = [(MRPlayerPath *)self client];
  v13 = [client description];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"􁐜";
  }

  [v5 appendString:v15];

  [v5 appendString:@" ❯ "];
  player = [(MRPlayerPath *)self player];
  v17 = [player description];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"􀭉";
  }

  [v5 appendString:v19];

  [v5 appendString:v7];

  return v5;
}

- (BOOL)isResolved
{
  origin = [(MRPlayerPath *)self origin];
  if (origin)
  {
    client = [(MRPlayerPath *)self client];
    if (client)
    {
      player = [(MRPlayerPath *)self player];
      if (player)
      {
        client2 = [(MRPlayerPath *)self client];
        if ([client2 processIdentifier] < 1)
        {
          LOBYTE(v8) = 0;
        }

        else
        {
          client3 = [(MRPlayerPath *)self client];
          v8 = [client3 hasPlaceholder] ^ 1;
        }
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (MRPlayerPath)localResolvedPlayerPath
{
  origin = [(MRPlayerPath *)self origin];
  v4 = origin;
  if (origin)
  {
    v5 = [origin copy];
  }

  else
  {
    v6 = +[MROrigin localOrigin];
    v5 = [v6 copy];
  }

  client = [(MRPlayerPath *)self client];
  v8 = client;
  if (client)
  {
    v9 = [client copy];
  }

  else
  {
    v10 = +[MRClient localClient];
    v9 = [v10 copy];
  }

  player = [(MRPlayerPath *)self player];
  v12 = player;
  if (player)
  {
    v13 = [player copy];
  }

  else
  {
    v14 = +[MRPlayer defaultPlayer];
    v13 = [v14 copy];
  }

  if (![v9 processIdentifier])
  {
    v15 = +[MRClient localClient];
    [v9 setProcessIdentifier:{objc_msgSend(v15, "processIdentifier")}];
  }

  bundleIdentifier = [v9 bundleIdentifier];

  if (!bundleIdentifier)
  {
    v17 = +[MRClient localClient];
    bundleIdentifier2 = [v17 bundleIdentifier];
    [v9 setBundleIdentifier:bundleIdentifier2];
  }

  identifier = [v13 identifier];

  if (!identifier)
  {
    v20 = +[MRPlayer defaultPlayer];
    identifier2 = [v20 identifier];
    [v13 setIdentifier:identifier2];
  }

  v22 = [[MRPlayerPath alloc] initWithOrigin:v5 client:v9 player:v13];

  return v22;
}

- (unint64_t)hash
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v4 ^ 0x646F72616E646F6DLL;
  v8 = v3 ^ 0x6C7967656E657261;
  v9 = [(MROrigin *)self->_origin hash];
  v10 = v5 ^ 0x7465646279746573 ^ v9;
  v11 = (v6 + v7) ^ __ROR8__(v7, 51);
  v12 = v8 + v10;
  v13 = (v8 + v10) ^ __ROR8__(v10, 48);
  v14 = v13 + __ROR8__(v6 + v7, 32);
  v15 = v12 + v11;
  v67 = __ROR8__(v15, 32);
  v70 = v14 ^ __ROR8__(v13, 43);
  v61 = v14 ^ v9;
  v64 = v15 ^ __ROR8__(v11, 47);
  v16 = self->_client;
  data = [(MRClient *)v16 hash];
  v17 = (v61 + v64) ^ __ROR8__(v64, 51);
  v18 = v67 + (v70 ^ data);
  v19 = __ROR8__(v70 ^ data, 48);
  v20 = (v18 ^ v19) + __ROR8__(v61 + v64, 32);
  v21 = v20 ^ __ROR8__(v18 ^ v19, 43);
  v22 = v18 + v17;
  v68 = __ROR8__(v22, 32);
  v71 = v21;
  v62 = v20 ^ data;
  v65 = v22 ^ __ROR8__(v17, 47);

  v23 = self->_player;
  v24 = [(MRPlayer *)v23 hash];
  v25 = (v62 + v65) ^ __ROR8__(v65, 51);
  v26 = v68 + (v71 ^ v24);
  v27 = __ROR8__(v71 ^ v24, 48);
  v28 = (v26 ^ v27) + __ROR8__(v62 + v65, 32);
  v29 = v28 ^ __ROR8__(v26 ^ v27, 43);
  v30 = v26 + v25;
  v69 = __ROR8__(v30, 32);
  v72 = v29;
  v63 = v28 ^ v24;
  v66 = v30 ^ __ROR8__(v25, 47);

  v31 = (v63 + v66) ^ __ROR8__(v66, 51);
  v32 = v69 + (v72 ^ 0x1800000000000000);
  v33 = __ROR8__(v72 ^ 0x1800000000000000, 48);
  v34 = (v32 ^ v33) + __ROR8__(v63 + v66, 32);
  v35 = v34 ^ __ROR8__(v32 ^ v33, 43);
  v36 = v32 + v31;
  v37 = v36 ^ __ROR8__(v31, 47);
  v38 = (v34 ^ 0x1800000000000000) + v37;
  v39 = v38 ^ __ROR8__(v37, 51);
  v40 = (__ROR8__(v36, 32) ^ 0xFFLL) + v35;
  v41 = __ROR8__(v35, 48);
  v42 = __ROR8__(v38, 32) + (v40 ^ v41);
  v43 = v42 ^ __ROR8__(v40 ^ v41, 43);
  v44 = v39 + v40;
  v45 = v44 ^ __ROR8__(v39, 47);
  v46 = v45 + v42;
  v47 = v46 ^ __ROR8__(v45, 51);
  v48 = __ROR8__(v44, 32) + v43;
  v49 = __ROR8__(v43, 48);
  v50 = __ROR8__(v46, 32) + (v48 ^ v49);
  v51 = v50 ^ __ROR8__(v48 ^ v49, 43);
  v52 = v47 + v48;
  v53 = v52 ^ __ROR8__(v47, 47);
  v54 = v53 + v50;
  v55 = v54 ^ __ROR8__(v53, 51);
  v56 = __ROR8__(v52, 32) + v51;
  v57 = __ROR8__(v51, 48);
  v58 = __ROR8__(v54, 32) + (v56 ^ v57);
  v59 = *MEMORY[0x1E69E9840];
  return (v55 + v56) ^ __ROR8__(v55, 47) ^ v58 ^ __ROR8__(v55 + v56, 32) ^ v58 ^ __ROR8__(v56 ^ v57, 43);
}

- (NSData)data
{
  protobuf = [(MRPlayerPath *)self protobuf];
  data = [protobuf data];

  return data;
}

- (_MRNowPlayingPlayerPathProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
  origin = [(MRPlayerPath *)self origin];
  protobuf = [origin protobuf];
  [(_MRNowPlayingPlayerPathProtobuf *)v3 setOrigin:protobuf];

  client = [(MRPlayerPath *)self client];
  protobuf2 = [client protobuf];
  [(_MRNowPlayingPlayerPathProtobuf *)v3 setClient:protobuf2];

  player = [(MRPlayerPath *)self player];
  protobuf3 = [(MRPlayer *)player protobuf];
  [(_MRNowPlayingPlayerPathProtobuf *)v3 setPlayer:protobuf3];

  return v3;
}

- (BOOL)isLocal
{
  isResolved = [(MRPlayerPath *)self isResolved];
  if (isResolved)
  {
    client = [(MRPlayerPath *)self client];
    isLocal = [client isLocal];

    if (!isLocal)
    {
LABEL_9:
      LOBYTE(isResolved) = 0;
      return isResolved;
    }

    v6 = +[MRUserSettings currentSettings];
    supportMultiplayerHost = [v6 supportMultiplayerHost];

    origin = [(MRPlayerPath *)self origin];
    isLocal2 = [origin isLocal];
    v10 = isLocal2;
    if (supportMultiplayerHost)
    {
      if (isLocal2)
      {

        goto LABEL_9;
      }

      origin2 = [(MRPlayerPath *)self origin];
      isLocallyHosted = [origin2 isLocallyHosted];

      if ((isLocallyHosted & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {

      if (!v10)
      {
        goto LABEL_9;
      }
    }

    LOBYTE(isResolved) = 1;
  }

  return isResolved;
}

+ (MRPlayerPath)anyPlayerPath
{
  v2 = [MRPlayerPath alloc];
  v3 = +[MROrigin anyOrigin];
  v4 = +[MRClient anyClient];
  v5 = +[MRPlayer anyPlayer];
  v6 = [(MRPlayerPath *)v2 initWithOrigin:v3 client:v4 player:v5];

  return v6;
}

- (BOOL)isSystemMediaApplication
{
  client = [(MRPlayerPath *)self client];
  isSystemMediaApplication = [client isSystemMediaApplication];

  return isSystemMediaApplication;
}

+ (id)localPlayerPath
{
  if (localPlayerPath_onceToken != -1)
  {
    +[MRPlayerPath localPlayerPath];
  }

  v3 = localPlayerPath_localPlayerPath;

  return v3;
}

void __31__MRPlayerPath_localPlayerPath__block_invoke()
{
  v4 = +[MROrigin localOrigin];
  v0 = +[MRClient localClient];
  v1 = +[MRPlayer defaultPlayer];
  v2 = [[MRPlayerPath alloc] initWithOrigin:v4 client:v0 player:v1];
  v3 = localPlayerPath_localPlayerPath;
  localPlayerPath_localPlayerPath = v2;
}

- (MRPlayerPath)initWithOrigin:(id)origin bundleIdentifier:(id)identifier player:(id)player
{
  playerCopy = player;
  identifierCopy = identifier;
  originCopy = origin;
  v11 = [[MRClient alloc] initWithBundleIdentifier:identifierCopy];

  v12 = [(MRPlayerPath *)self initWithOrigin:originCopy client:v11 player:playerCopy];
  return v12;
}

- (MRPlayerPath)initWithOrigin:(id)origin client:(id)client player:(id)player
{
  originCopy = origin;
  clientCopy = client;
  playerCopy = player;
  v19.receiver = self;
  v19.super_class = MRPlayerPath;
  v11 = [(MRPlayerPath *)&v19 init];
  if (!v11)
  {
    goto LABEL_14;
  }

  if (originCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MRPlayerPath initWithOrigin:client:player:];
    if (clientCopy)
    {
LABEL_5:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MRPlayerPath initWithOrigin:client:player:];
      }
    }
  }

  else if (clientCopy)
  {
    goto LABEL_5;
  }

  if (playerCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MRPlayerPath initWithOrigin:client:player:];
    }
  }

  v12 = [originCopy copy];
  origin = v11->_origin;
  v11->_origin = v12;

  if ([clientCopy isValid])
  {
    v14 = [clientCopy copy];
  }

  else
  {
    v14 = 0;
  }

  client = v11->_client;
  v11->_client = v14;

  v16 = [playerCopy copy];
  player = v11->_player;
  v11->_player = v16;

LABEL_14:
  return v11;
}

- (MRPlayerPath)initWithProtobuf:(id)protobuf
{
  if (protobuf)
  {
    protobufCopy = protobuf;
    v5 = [MROrigin alloc];
    origin = [protobufCopy origin];
    v7 = [(MROrigin *)v5 initWithProtobuf:origin];

    v8 = [MRClient alloc];
    client = [protobufCopy client];
    v10 = [(MRClient *)v8 initWithProtobuf:client];

    v11 = [MRPlayer alloc];
    player = [protobufCopy player];

    v13 = [(MRPlayer *)v11 initWithProtobuf:player];
    self = [(MRPlayerPath *)self initWithOrigin:v7 client:v10 player:v13];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRPlayerPath)initWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRNowPlayingPlayerPathProtobuf alloc] initWithData:dataCopy];

    self = [(MRPlayerPath *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setOrigin:(id)origin
{
  originCopy = origin;
  if (originCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MRPlayerPath setOrigin:];
    }
  }

  v4 = [originCopy copy];
  origin = self->_origin;
  self->_origin = v4;
}

- (void)setClient:(id)client
{
  clientCopy = client;
  if (clientCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MRPlayerPath setClient:];
    }
  }

  v4 = [clientCopy copy];
  client = self->_client;
  self->_client = v4;
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  if (playerCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MRPlayerPath setPlayer:];
    }
  }

  v4 = [playerCopy copy];
  player = self->_player;
  self->_player = v4;
}

- (MRPlayerPath)skeleton
{
  v3 = objc_alloc(objc_opt_class());
  origin = [(MRPlayerPath *)self origin];
  skeleton = [origin skeleton];
  client = [(MRPlayerPath *)self client];
  skeleton2 = [client skeleton];
  player = [(MRPlayerPath *)self player];
  skeleton3 = [player skeleton];
  v10 = [v3 initWithOrigin:skeleton client:skeleton2 player:skeleton3];

  return v10;
}

- (BOOL)isSystemPodcastsApplication
{
  client = [(MRPlayerPath *)self client];
  isSystemPodcastsApplication = [client isSystemPodcastsApplication];

  return isSystemPodcastsApplication;
}

- (BOOL)isSystemBooksApplication
{
  client = [(MRPlayerPath *)self client];
  isSystemBooksApplication = [client isSystemBooksApplication];

  return isSystemBooksApplication;
}

- (BOOL)isHomepodDemoApplication
{
  client = [(MRPlayerPath *)self client];
  bundleIdentifier = [client bundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:@"com.apple.HomePodCannedDemo"];

  client2 = [(MRPlayerPath *)self client];
  bundleIdentifier2 = [client2 bundleIdentifier];
  LOBYTE(bundleIdentifier) = [bundleIdentifier2 isEqualToString:@"com.apple.ChannelDemoCap"];

  return (v5 | bundleIdentifier) & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      origin = [(MRPlayerPath *)self origin];
      origin2 = [(MRPlayerPath *)v5 origin];
      if (origin == origin2 || [origin isEqual:origin2])
      {
        client = [(MRPlayerPath *)self client];
        client2 = [(MRPlayerPath *)v5 client];
        if (client == client2 || [client isEqual:client2])
        {
          player = [(MRPlayerPath *)self player];
          player2 = [(MRPlayerPath *)v5 player];
          if (player == player2)
          {
            v12 = 1;
          }

          else
          {
            v12 = [player isEqual:player2];
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
  }

  return v12;
}

- (id)debugDescription
{
  protobuf = [(MRPlayerPath *)self protobuf];
  dictionaryRepresentation = [protobuf dictionaryRepresentation];
  v4 = [dictionaryRepresentation description];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  origin = [(MRPlayerPath *)self origin];
  v7 = [origin copyWithZone:zone];
  [v5 setOrigin:v7];

  client = [(MRPlayerPath *)self client];
  v9 = [client copyWithZone:zone];
  [v5 setClient:v9];

  player = [(MRPlayerPath *)self player];
  v11 = [player copyWithZone:zone];
  [v5 setPlayer:v11];

  return v5;
}

- (MRPlayerPath)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = _MRLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MRLanguageOption *)v5 initWithCoder:v6];
    }

    v5 = 0;
  }

  v7 = [(MRPlayerPath *)self initWithProtobuf:v5];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protobuf = [(MRPlayerPath *)self protobuf];
  [coderCopy encodeObject:protobuf forKey:@"protobuf"];
}

- (id)playerPathByRedirectingToOrigin:(id)origin
{
  originCopy = origin;
  if (!originCopy)
  {
    [MRPlayerPath playerPathByRedirectingToOrigin:];
  }

  v5 = objc_alloc_init(MRPlayerPath);
  [(MRPlayerPath *)v5 setOrigin:originCopy];
  client = [(MRPlayerPath *)self client];

  if (client)
  {
    v7 = objc_alloc_init(MRClient);
    [(MRPlayerPath *)v5 setClient:v7];

    client2 = [(MRPlayerPath *)self client];
    bundleIdentifier = [client2 bundleIdentifier];
    client3 = [(MRPlayerPath *)v5 client];
    [client3 setBundleIdentifier:bundleIdentifier];
  }

  player = [(MRPlayerPath *)self player];

  if (player)
  {
    v12 = [MRPlayer alloc];
    player2 = [(MRPlayerPath *)self player];
    identifier = [player2 identifier];
    player3 = [(MRPlayerPath *)self player];
    displayName = [player3 displayName];
    v17 = [(MRPlayer *)v12 initWithIdentifier:identifier displayName:displayName];
    [(MRPlayerPath *)v5 setPlayer:v17];
  }

  client4 = [(MRPlayerPath *)self client];
  bundleIdentifier2 = [client4 bundleIdentifier];
  IsSystemMediaApplication = MRMediaRemoteApplicationIsSystemMediaApplication(bundleIdentifier2);

  if (IsSystemMediaApplication)
  {
    v21 = kMRMediaRemoteSystemMediaApplicationDisplayIdentifier;
  }

  else
  {
    client5 = [(MRPlayerPath *)self client];
    bundleIdentifier3 = [client5 bundleIdentifier];
    IsSystemPodcastApplication = MRMediaRemoteApplicationIsSystemPodcastApplication(bundleIdentifier3);

    if (IsSystemPodcastApplication)
    {
      v21 = kMRMediaRemoteSystemPodcastApplicationDisplayIdentifier;
    }

    else
    {
      client6 = [(MRPlayerPath *)self client];
      bundleIdentifier4 = [client6 bundleIdentifier];
      IsSystemBooksApplication = MRMediaRemoteApplicationIsSystemBooksApplication(bundleIdentifier4);

      if (!IsSystemBooksApplication)
      {
        goto LABEL_14;
      }

      v21 = kMRMediaRemoteSystemBooksApplicationDisplayIdentifier;
    }
  }

  v28 = *v21;
  client7 = [(MRPlayerPath *)v5 client];
  [client7 setBundleIdentifier:v28];

LABEL_14:

  return v5;
}

- (id)playerPathByLocalizingWithOrigin:(id)origin
{
  originCopy = origin;
  v5 = [MRPlayerPath alloc];
  client = [(MRPlayerPath *)self client];
  player = [(MRPlayerPath *)self player];
  v8 = [(MRPlayerPath *)v5 initWithOrigin:originCopy client:client player:player];

  return v8;
}

+ (id)localResolvedPlayerPathFromPlayerPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    pathCopy = [[MRPlayerPath alloc] initWithOrigin:0 client:0 player:0];
  }

  localResolvedPlayerPath = [(MRPlayerPath *)pathCopy localResolvedPlayerPath];

  return localResolvedPlayerPath;
}

- (void)initWithOrigin:client:player:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRPlayerPath initWithOrigin:client:player:]"];
  objc_opt_class();
  objc_opt_class();
  [OUTLINED_FUNCTION_1_11() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (void)initWithOrigin:client:player:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRPlayerPath initWithOrigin:client:player:]"];
  objc_opt_class();
  objc_opt_class();
  [OUTLINED_FUNCTION_1_11() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (void)initWithOrigin:client:player:.cold.3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRPlayerPath initWithOrigin:client:player:]"];
  objc_opt_class();
  objc_opt_class();
  [OUTLINED_FUNCTION_1_11() handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (void)setOrigin:.cold.1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRPlayerPath setOrigin:]"];
  objc_opt_class();
  v1 = objc_opt_class();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

- (void)setClient:.cold.1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRPlayerPath setClient:]"];
  objc_opt_class();
  v1 = objc_opt_class();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

- (void)setPlayer:.cold.1()
{
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRPlayerPath setPlayer:]"];
  objc_opt_class();
  v1 = objc_opt_class();
  [OUTLINED_FUNCTION_0_1(v1 v2];
}

- (void)playerPathByRedirectingToOrigin:.cold.1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRPlayerPath playerPathByRedirectingToOrigin:]"];
  [v1 handleFailureInFunction:v0 file:@"MRPlayerPath.m" lineNumber:271 description:{@"Invalid parameter not satisfying: %@", @"origin"}];
}

@end