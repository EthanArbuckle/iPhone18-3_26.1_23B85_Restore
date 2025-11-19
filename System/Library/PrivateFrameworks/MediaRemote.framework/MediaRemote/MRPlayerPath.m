@interface MRPlayerPath
+ (MRPlayerPath)anyPlayerPath;
+ (id)localPlayerPath;
+ (id)localResolvedPlayerPathFromPlayerPath:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isHomepodDemoApplication;
- (BOOL)isLocal;
- (BOOL)isResolved;
- (BOOL)isSystemBooksApplication;
- (BOOL)isSystemMediaApplication;
- (BOOL)isSystemPodcastsApplication;
- (MRPlayerPath)initWithCoder:(id)a3;
- (MRPlayerPath)initWithData:(id)a3;
- (MRPlayerPath)initWithOrigin:(id)a3 bundleIdentifier:(id)a4 player:(id)a5;
- (MRPlayerPath)initWithOrigin:(id)a3 client:(id)a4 player:(id)a5;
- (MRPlayerPath)initWithProtobuf:(id)a3;
- (MRPlayerPath)localResolvedPlayerPath;
- (MRPlayerPath)skeleton;
- (NSData)data;
- (_MRNowPlayingPlayerPathProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)playerPathByLocalizingWithOrigin:(id)a3;
- (id)playerPathByRedirectingToOrigin:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setClient:(id)a3;
- (void)setOrigin:(id)a3;
- (void)setPlayer:(id)a3;
@end

@implementation MRPlayerPath

- (id)description
{
  v3 = [(MRPlayerPath *)self isResolved];
  v4 = [MEMORY[0x1E696AD60] string];
  v5 = v4;
  if (v3)
  {
    v6 = @"【 ";
  }

  else
  {
    v6 = @"〖 ";
  }

  if (v3)
  {
    v7 = @" 】";
  }

  else
  {
    v7 = @" 〗";
  }

  [v4 appendString:v6];
  v8 = [(MRPlayerPath *)self origin];
  v9 = [v8 description];
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
  v12 = [(MRPlayerPath *)self client];
  v13 = [v12 description];
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
  v16 = [(MRPlayerPath *)self player];
  v17 = [v16 description];
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
  v3 = [(MRPlayerPath *)self origin];
  if (v3)
  {
    v4 = [(MRPlayerPath *)self client];
    if (v4)
    {
      v5 = [(MRPlayerPath *)self player];
      if (v5)
      {
        v6 = [(MRPlayerPath *)self client];
        if ([v6 processIdentifier] < 1)
        {
          LOBYTE(v8) = 0;
        }

        else
        {
          v7 = [(MRPlayerPath *)self client];
          v8 = [v7 hasPlaceholder] ^ 1;
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
  v3 = [(MRPlayerPath *)self origin];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 copy];
  }

  else
  {
    v6 = +[MROrigin localOrigin];
    v5 = [v6 copy];
  }

  v7 = [(MRPlayerPath *)self client];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 copy];
  }

  else
  {
    v10 = +[MRClient localClient];
    v9 = [v10 copy];
  }

  v11 = [(MRPlayerPath *)self player];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 copy];
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

  v16 = [v9 bundleIdentifier];

  if (!v16)
  {
    v17 = +[MRClient localClient];
    v18 = [v17 bundleIdentifier];
    [v9 setBundleIdentifier:v18];
  }

  v19 = [v13 identifier];

  if (!v19)
  {
    v20 = +[MRPlayer defaultPlayer];
    v21 = [v20 identifier];
    [v13 setIdentifier:v21];
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
  v2 = [(MRPlayerPath *)self protobuf];
  v3 = [v2 data];

  return v3;
}

- (_MRNowPlayingPlayerPathProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
  v4 = [(MRPlayerPath *)self origin];
  v5 = [v4 protobuf];
  [(_MRNowPlayingPlayerPathProtobuf *)v3 setOrigin:v5];

  v6 = [(MRPlayerPath *)self client];
  v7 = [v6 protobuf];
  [(_MRNowPlayingPlayerPathProtobuf *)v3 setClient:v7];

  v8 = [(MRPlayerPath *)self player];
  v9 = [(MRPlayer *)v8 protobuf];
  [(_MRNowPlayingPlayerPathProtobuf *)v3 setPlayer:v9];

  return v3;
}

- (BOOL)isLocal
{
  v3 = [(MRPlayerPath *)self isResolved];
  if (v3)
  {
    v4 = [(MRPlayerPath *)self client];
    v5 = [v4 isLocal];

    if (!v5)
    {
LABEL_9:
      LOBYTE(v3) = 0;
      return v3;
    }

    v6 = +[MRUserSettings currentSettings];
    v7 = [v6 supportMultiplayerHost];

    v8 = [(MRPlayerPath *)self origin];
    v9 = [v8 isLocal];
    v10 = v9;
    if (v7)
    {
      if (v9)
      {

        goto LABEL_9;
      }

      v11 = [(MRPlayerPath *)self origin];
      v12 = [v11 isLocallyHosted];

      if ((v12 & 1) == 0)
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

    LOBYTE(v3) = 1;
  }

  return v3;
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
  v2 = [(MRPlayerPath *)self client];
  v3 = [v2 isSystemMediaApplication];

  return v3;
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

- (MRPlayerPath)initWithOrigin:(id)a3 bundleIdentifier:(id)a4 player:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[MRClient alloc] initWithBundleIdentifier:v9];

  v12 = [(MRPlayerPath *)self initWithOrigin:v10 client:v11 player:v8];
  return v12;
}

- (MRPlayerPath)initWithOrigin:(id)a3 client:(id)a4 player:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = MRPlayerPath;
  v11 = [(MRPlayerPath *)&v19 init];
  if (!v11)
  {
    goto LABEL_14;
  }

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MRPlayerPath initWithOrigin:client:player:];
    if (v9)
    {
LABEL_5:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MRPlayerPath initWithOrigin:client:player:];
      }
    }
  }

  else if (v9)
  {
    goto LABEL_5;
  }

  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MRPlayerPath initWithOrigin:client:player:];
    }
  }

  v12 = [v8 copy];
  origin = v11->_origin;
  v11->_origin = v12;

  if ([v9 isValid])
  {
    v14 = [v9 copy];
  }

  else
  {
    v14 = 0;
  }

  client = v11->_client;
  v11->_client = v14;

  v16 = [v10 copy];
  player = v11->_player;
  v11->_player = v16;

LABEL_14:
  return v11;
}

- (MRPlayerPath)initWithProtobuf:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [MROrigin alloc];
    v6 = [v4 origin];
    v7 = [(MROrigin *)v5 initWithProtobuf:v6];

    v8 = [MRClient alloc];
    v9 = [v4 client];
    v10 = [(MRClient *)v8 initWithProtobuf:v9];

    v11 = [MRPlayer alloc];
    v12 = [v4 player];

    v13 = [(MRPlayer *)v11 initWithProtobuf:v12];
    self = [(MRPlayerPath *)self initWithOrigin:v7 client:v10 player:v13];

    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (MRPlayerPath)initWithData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[_MRNowPlayingPlayerPathProtobuf alloc] initWithData:v4];

    self = [(MRPlayerPath *)self initWithProtobuf:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setOrigin:(id)a3
{
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MRPlayerPath setOrigin:];
    }
  }

  v4 = [v6 copy];
  origin = self->_origin;
  self->_origin = v4;
}

- (void)setClient:(id)a3
{
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MRPlayerPath setClient:];
    }
  }

  v4 = [v6 copy];
  client = self->_client;
  self->_client = v4;
}

- (void)setPlayer:(id)a3
{
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MRPlayerPath setPlayer:];
    }
  }

  v4 = [v6 copy];
  player = self->_player;
  self->_player = v4;
}

- (MRPlayerPath)skeleton
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(MRPlayerPath *)self origin];
  v5 = [v4 skeleton];
  v6 = [(MRPlayerPath *)self client];
  v7 = [v6 skeleton];
  v8 = [(MRPlayerPath *)self player];
  v9 = [v8 skeleton];
  v10 = [v3 initWithOrigin:v5 client:v7 player:v9];

  return v10;
}

- (BOOL)isSystemPodcastsApplication
{
  v2 = [(MRPlayerPath *)self client];
  v3 = [v2 isSystemPodcastsApplication];

  return v3;
}

- (BOOL)isSystemBooksApplication
{
  v2 = [(MRPlayerPath *)self client];
  v3 = [v2 isSystemBooksApplication];

  return v3;
}

- (BOOL)isHomepodDemoApplication
{
  v3 = [(MRPlayerPath *)self client];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.HomePodCannedDemo"];

  v6 = [(MRPlayerPath *)self client];
  v7 = [v6 bundleIdentifier];
  LOBYTE(v4) = [v7 isEqualToString:@"com.apple.ChannelDemoCap"];

  return (v5 | v4) & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MRPlayerPath *)self origin];
      v7 = [(MRPlayerPath *)v5 origin];
      if (v6 == v7 || [v6 isEqual:v7])
      {
        v8 = [(MRPlayerPath *)self client];
        v9 = [(MRPlayerPath *)v5 client];
        if (v8 == v9 || [v8 isEqual:v9])
        {
          v10 = [(MRPlayerPath *)self player];
          v11 = [(MRPlayerPath *)v5 player];
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
  }

  return v12;
}

- (id)debugDescription
{
  v2 = [(MRPlayerPath *)self protobuf];
  v3 = [v2 dictionaryRepresentation];
  v4 = [v3 description];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MRPlayerPath *)self origin];
  v7 = [v6 copyWithZone:a3];
  [v5 setOrigin:v7];

  v8 = [(MRPlayerPath *)self client];
  v9 = [v8 copyWithZone:a3];
  [v5 setClient:v9];

  v10 = [(MRPlayerPath *)self player];
  v11 = [v10 copyWithZone:a3];
  [v5 setPlayer:v11];

  return v5;
}

- (MRPlayerPath)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];

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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MRPlayerPath *)self protobuf];
  [v4 encodeObject:v5 forKey:@"protobuf"];
}

- (id)playerPathByRedirectingToOrigin:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MRPlayerPath playerPathByRedirectingToOrigin:];
  }

  v5 = objc_alloc_init(MRPlayerPath);
  [(MRPlayerPath *)v5 setOrigin:v4];
  v6 = [(MRPlayerPath *)self client];

  if (v6)
  {
    v7 = objc_alloc_init(MRClient);
    [(MRPlayerPath *)v5 setClient:v7];

    v8 = [(MRPlayerPath *)self client];
    v9 = [v8 bundleIdentifier];
    v10 = [(MRPlayerPath *)v5 client];
    [v10 setBundleIdentifier:v9];
  }

  v11 = [(MRPlayerPath *)self player];

  if (v11)
  {
    v12 = [MRPlayer alloc];
    v13 = [(MRPlayerPath *)self player];
    v14 = [v13 identifier];
    v15 = [(MRPlayerPath *)self player];
    v16 = [v15 displayName];
    v17 = [(MRPlayer *)v12 initWithIdentifier:v14 displayName:v16];
    [(MRPlayerPath *)v5 setPlayer:v17];
  }

  v18 = [(MRPlayerPath *)self client];
  v19 = [v18 bundleIdentifier];
  IsSystemMediaApplication = MRMediaRemoteApplicationIsSystemMediaApplication(v19);

  if (IsSystemMediaApplication)
  {
    v21 = kMRMediaRemoteSystemMediaApplicationDisplayIdentifier;
  }

  else
  {
    v22 = [(MRPlayerPath *)self client];
    v23 = [v22 bundleIdentifier];
    IsSystemPodcastApplication = MRMediaRemoteApplicationIsSystemPodcastApplication(v23);

    if (IsSystemPodcastApplication)
    {
      v21 = kMRMediaRemoteSystemPodcastApplicationDisplayIdentifier;
    }

    else
    {
      v25 = [(MRPlayerPath *)self client];
      v26 = [v25 bundleIdentifier];
      IsSystemBooksApplication = MRMediaRemoteApplicationIsSystemBooksApplication(v26);

      if (!IsSystemBooksApplication)
      {
        goto LABEL_14;
      }

      v21 = kMRMediaRemoteSystemBooksApplicationDisplayIdentifier;
    }
  }

  v28 = *v21;
  v29 = [(MRPlayerPath *)v5 client];
  [v29 setBundleIdentifier:v28];

LABEL_14:

  return v5;
}

- (id)playerPathByLocalizingWithOrigin:(id)a3
{
  v4 = a3;
  v5 = [MRPlayerPath alloc];
  v6 = [(MRPlayerPath *)self client];
  v7 = [(MRPlayerPath *)self player];
  v8 = [(MRPlayerPath *)v5 initWithOrigin:v4 client:v6 player:v7];

  return v8;
}

+ (id)localResolvedPlayerPathFromPlayerPath:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v3 = [[MRPlayerPath alloc] initWithOrigin:0 client:0 player:0];
  }

  v4 = [(MRPlayerPath *)v3 localResolvedPlayerPath];

  return v4;
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