@interface MRClient
+ (MRClient)anyClient;
+ (MRClient)localClient;
- (BOOL)hasAuxiliaryProperties;
- (BOOL)hasPlaceholder;
- (BOOL)isAirPlay;
- (BOOL)isEqual:(id)a3;
- (BOOL)isLocal;
- (BOOL)isSystemBooksApplication;
- (BOOL)isSystemMediaApplication;
- (BOOL)isSystemPodcastsApplication;
- (BOOL)isValid;
- (BOOL)isWebKit;
- (MRClient)initWithCoder:(id)a3;
- (MRClient)initWithData:(id)a3;
- (MRClient)initWithProcessIdentifier:(int)a3 bundleIdentifier:(id)a4;
- (MRClient)initWithProtobuf:(id)a3;
- (MRClient)skeleton;
- (NSArray)bundleIdentifierHierarchy;
- (NSData)data;
- (NSString)representedBundleID;
- (_MRNowPlayingClientProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)resolvePlaceholdersForDeviceInfo:(id)a3;
@end

@implementation MRClient

- (NSArray)bundleIdentifierHierarchy
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(MRClient *)self bundleIdentifier];

  if (v4)
  {
    v5 = [(MRClient *)self bundleIdentifier];
    [v3 addObject:v5];
  }

  v6 = [(MRClient *)self parentApplicationBundleIdentifier];

  if (v6)
  {
    v7 = [(MRClient *)self parentApplicationBundleIdentifier];
    [v3 addObject:v7];
  }

  v8 = [(MRClient *)self extendedBundleIdentifierHierarchy];

  if (v8)
  {
    v9 = [(MRClient *)self extendedBundleIdentifierHierarchy];
    [v3 addObjectsFromArray:v9];
  }

  v10 = [v3 copy];

  return v10;
}

void __23__MRClient_localClient__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 processIdentifier];

  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [v4 bundleIdentifier];

  if (!v8)
  {
    v5 = [MEMORY[0x1E696AE30] processInfo];
    v8 = [v5 processName];
  }

  v6 = [objc_alloc(*(a1 + 32)) initWithProcessIdentifier:v3 bundleIdentifier:v8];
  v7 = localClient_client;
  localClient_client = v6;
}

+ (MRClient)localClient
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__MRClient_localClient__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (localClient_onceToken != -1)
  {
    dispatch_once(&localClient_onceToken, block);
  }

  v2 = localClient_client;

  return v2;
}

- (BOOL)isSystemBooksApplication
{
  v2 = [(MRClient *)self bundleIdentifier];
  IsSystemBooksApplication = MRMediaRemoteApplicationIsSystemBooksApplication(v2);

  return IsSystemBooksApplication;
}

- (BOOL)hasPlaceholder
{
  v3 = [(MRClient *)self bundleIdentifier];
  v4 = [v3 isEqualToString:@"(System Media Application)"];

  if (v4)
  {
    return 1;
  }

  v5 = [(MRClient *)self bundleIdentifier];
  v6 = [v5 isEqualToString:@"(System Podcast Application)"];

  if (v6)
  {
    return 1;
  }

  v7 = [(MRClient *)self bundleIdentifier];
  v8 = [v7 isEqualToString:@"(System Books Application)"];

  if (v8)
  {
    return 1;
  }

  v10 = [(MRClient *)self bundleIdentifier];
  v11 = [v10 isEqualToString:@"(System Classical Room Application)"];

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  if ([(MRClient *)self isSystemMediaApplication])
  {
    v4 = @"􀘪 ";
  }

  else if ([(MRClient *)self isSystemPodcastsApplication])
  {
    v4 = @"􀓒 ";
  }

  else if ([(MRClient *)self isSystemBooksApplication])
  {
    v4 = @"􀉜 ";
  }

  else if ([(MRClient *)self isAirPlay])
  {
    v4 = @"􀑢 ";
  }

  else if ([(MRClient *)self isWebKit])
  {
    v4 = @"􀎬 ";
  }

  else
  {
    v4 = @"􀐥 ";
  }

  [v3 appendString:v4];
  v5 = [(MRClient *)self bundleIdentifierHierarchy];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(MRClient *)self bundleIdentifierHierarchy];
    v8 = [v7 componentsJoinedByString:@"/"];

    [v3 appendFormat:@"%@", v8];
  }

  if ([(MRClient *)self processIdentifier]>= 1)
  {
    [v3 appendFormat:@" (%d)", -[MRClient processIdentifier](self, "processIdentifier")];
  }

  v9 = [(MRClient *)self displayName];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [(MRClient *)self displayName];
    [v3 appendFormat:@" %@", v11];
  }

  return v3;
}

- (BOOL)isSystemMediaApplication
{
  v2 = [(MRClient *)self bundleIdentifier];
  IsSystemMediaApplication = MRMediaRemoteApplicationIsSystemMediaApplication(v2);

  return IsSystemMediaApplication;
}

- (BOOL)isSystemPodcastsApplication
{
  v2 = [(MRClient *)self bundleIdentifier];
  IsSystemPodcastApplication = MRMediaRemoteApplicationIsSystemPodcastApplication(v2);

  return IsSystemPodcastApplication;
}

- (unint64_t)hash
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = MSVHasherSharedSeed();
  v4 = v3 ^ 0x736F6D6570736575;
  v62 = v3 ^ 0x736F6D6570736575;
  v6 = v5 ^ 0x646F72616E646F6DLL;
  v7 = v3 ^ 0x6C7967656E657261;
  v63 = v5 ^ 0x646F72616E646F6DLL;
  v64 = v3 ^ 0x6C7967656E657261;
  v8 = v5 ^ 0x7465646279746573;
  v65 = v5 ^ 0x7465646279746573;
  v9 = self->_bundleIdentifier;
  v10 = [(NSString *)v9 UTF8String];
  v11 = [(NSString *)v9 length];
  if (v11 < 8)
  {
    v12 = 0;
    if (v11)
    {
LABEL_5:
      v18 = 0;
      v19 = 0;
      v20 = v11;
      do
      {
        v21 = *v10++;
        v19 |= v21 << v18;
        v18 += 8;
        --v20;
      }

      while (v20);
      v22 = v19 | ((v11 + v12) << 56);
      goto LABEL_10;
    }
  }

  else
  {
    v12 = ((v11 - 8) & 0xFFFFFFFFFFFFFFF8) + 8;
    do
    {
      v13 = *v10;
      v10 += 8;
      v14 = (v4 + v6) ^ __ROR8__(v6, 51);
      v15 = v7 + (v8 ^ v13);
      v16 = __ROR8__(v8 ^ v13, 48);
      v17 = (v15 ^ v16) + __ROR8__(v4 + v6, 32);
      v8 = v17 ^ __ROR8__(v15 ^ v16, 43);
      v6 = (v15 + v14) ^ __ROR8__(v14, 47);
      v7 = __ROR8__(v15 + v14, 32);
      v64 = v7;
      v65 = v8;
      v4 = v17 ^ v13;
      v62 = v17 ^ v13;
      v63 = v6;
      v11 -= 8;
    }

    while (v11 > 7);
    if (v11)
    {
      goto LABEL_5;
    }
  }

  v22 = v12 << 56;
LABEL_10:
  v66 = v22;

  processIdentifier = self->_processIdentifier;
  if ((v66 & 0x400000000000000) != 0)
  {
    v25 = v66 & 0xFFFFFFFFFFFFFFLL | (processIdentifier << 32);
    v26 = (v62 + v63) ^ __ROR8__(v63, 51);
    v27 = v64 + (v65 ^ v25);
    v28 = __ROR8__(v65 ^ v25, 48);
    v29 = (v27 ^ v28) + __ROR8__(v62 + v63, 32);
    v30 = v29 ^ __ROR8__(v27 ^ v28, 43);
    v31 = v27 + v26;
    v64 = __ROR8__(v31, 32);
    v65 = v30;
    v62 = v29 ^ v25;
    v63 = v31 ^ __ROR8__(v26, 47);
    v24 = (v66 & 0xFF00000000000000) + 0x400000000000000;
  }

  else
  {
    v24 = v66 | processIdentifier | 0x400000000000000;
  }

  v32 = (v62 + v63) ^ __ROR8__(v63, 51);
  v33 = v64 + (v65 ^ v24);
  v34 = __ROR8__(v65 ^ v24, 48);
  v35 = (v33 ^ v34) + __ROR8__(v62 + v63, 32);
  v36 = v35 ^ __ROR8__(v33 ^ v34, 43);
  v37 = v33 + v32;
  v38 = v37 ^ __ROR8__(v32, 47);
  v39 = (v35 ^ v24) + v38;
  v40 = v39 ^ __ROR8__(v38, 51);
  v41 = (__ROR8__(v37, 32) ^ 0xFFLL) + v36;
  v42 = __ROR8__(v36, 48);
  v43 = __ROR8__(v39, 32) + (v41 ^ v42);
  v44 = v43 ^ __ROR8__(v41 ^ v42, 43);
  v45 = v40 + v41;
  v46 = v45 ^ __ROR8__(v40, 47);
  v47 = v46 + v43;
  v48 = v47 ^ __ROR8__(v46, 51);
  v49 = __ROR8__(v45, 32) + v44;
  v50 = __ROR8__(v44, 48);
  v51 = __ROR8__(v47, 32) + (v49 ^ v50);
  v52 = v51 ^ __ROR8__(v49 ^ v50, 43);
  v53 = v48 + v49;
  v54 = v53 ^ __ROR8__(v48, 47);
  v55 = v54 + v51;
  v56 = v55 ^ __ROR8__(v54, 51);
  v57 = __ROR8__(v53, 32) + v52;
  v58 = __ROR8__(v52, 48);
  v59 = __ROR8__(v55, 32) + (v57 ^ v58);
  v60 = *MEMORY[0x1E69E9840];
  return (v56 + v57) ^ __ROR8__(v56, 47) ^ v59 ^ __ROR8__(v56 + v57, 32) ^ v59 ^ __ROR8__(v57 ^ v58, 43);
}

- (BOOL)isValid
{
  if ([(MRClient *)self processIdentifier]> 0)
  {
    return 1;
  }

  v4 = [(MRClient *)self bundleIdentifier];
  v3 = [v4 length] != 0;

  return v3;
}

- (_MRNowPlayingClientProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRNowPlayingClientProtobuf);
  [(_MRNowPlayingClientProtobuf *)v3 setProcessIdentifier:[(MRClient *)self processIdentifier]];
  [(_MRNowPlayingClientProtobuf *)v3 setHasProcessIdentifier:[(MRClient *)self processIdentifier]> 0];
  v4 = [(MRClient *)self bundleIdentifier];
  [(_MRNowPlayingClientProtobuf *)v3 setBundleIdentifier:v4];

  v5 = [(MRClient *)self parentApplicationBundleIdentifier];
  [(_MRNowPlayingClientProtobuf *)v3 setParentApplicationBundleIdentifier:v5];

  [(_MRNowPlayingClientProtobuf *)v3 setProcessUserIdentifier:[(MRClient *)self processUserIdentifier]];
  [(_MRNowPlayingClientProtobuf *)v3 setHasProcessUserIdentifier:[(MRClient *)self processUserIdentifier]!= 0];
  v6 = [(MRClient *)self visibility];
  if (v6 >= 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  [(_MRNowPlayingClientProtobuf *)v3 setNowPlayingVisibility:v7];
  [(_MRNowPlayingClientProtobuf *)v3 setHasNowPlayingVisibility:[(MRClient *)self visibility]!= 0];
  v8 = [(MRClient *)self tintColor];
  v9 = [v8 protobuf];
  [(_MRNowPlayingClientProtobuf *)v3 setTintColor:v9];

  v10 = [(MRClient *)self displayName];
  [(_MRNowPlayingClientProtobuf *)v3 setDisplayName:v10];

  v11 = [(MRClient *)self extendedBundleIdentifierHierarchy];
  v12 = [v11 mutableCopy];
  [(_MRNowPlayingClientProtobuf *)v3 setExtendedBundleIdentifierHierarchys:v12];

  v13 = [(MRClient *)self appIcon];
  v14 = [v13 absoluteString];
  [(_MRNowPlayingClientProtobuf *)v3 setIconURL:v14];

  return v3;
}

- (BOOL)isLocal
{
  v3 = +[MRClient localClient];
  LOBYTE(self) = [(MRClient *)self isEqual:v3];

  return self;
}

+ (MRClient)anyClient
{
  v2 = [[a1 alloc] initWithBundleIdentifier:@"any"];

  return v2;
}

- (BOOL)isAirPlay
{
  v2 = [(MRClient *)self bundleIdentifier];
  IsAirPlayReceiver = MRMediaRemoteApplicationIsAirPlayReceiver(v2);

  return IsAirPlayReceiver;
}

- (BOOL)isWebKit
{
  v2 = [(MRClient *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.WebKit.GPU"];

  return v3;
}

- (NSData)data
{
  v2 = [(MRClient *)self protobuf];
  v3 = [v2 data];

  return v3;
}

- (MRClient)initWithProcessIdentifier:(int)a3 bundleIdentifier:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = MRClient;
  v7 = [(MRClient *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_processIdentifier = a3;
    v9 = [v6 copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v9;
  }

  return v8;
}

- (MRClient)initWithProtobuf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v30.receiver = self;
    v30.super_class = MRClient;
    v5 = [(MRClient *)&v30 init];
    if (v5)
    {
      v5->_processIdentifier = [v4 processIdentifier];
      v6 = [v4 bundleIdentifier];
      v7 = [v6 copy];
      bundleIdentifier = v5->_bundleIdentifier;
      v5->_bundleIdentifier = v7;

      v9 = [v4 parentApplicationBundleIdentifier];
      v10 = [v9 copy];
      parentApplicationBundleIdentifier = v5->_parentApplicationBundleIdentifier;
      v5->_parentApplicationBundleIdentifier = v10;

      v5->_processUserIdentifier = [v4 processUserIdentifier];
      v12 = [v4 nowPlayingVisibility];
      if (v12 >= 4)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      v5->_visibility = v13;
      v14 = [MRColorComponents alloc];
      v15 = [v4 tintColor];
      v16 = [(MRColorComponents *)v14 initWithProtobuf:v15];
      tintColor = v5->_tintColor;
      v5->_tintColor = v16;

      v18 = [v4 displayName];
      v19 = [v18 copy];
      displayName = v5->_displayName;
      v5->_displayName = v19;

      v21 = [v4 extendedBundleIdentifierHierarchys];
      v22 = [v21 copy];
      extendedBundleIdentifierHierarchy = v5->_extendedBundleIdentifierHierarchy;
      v5->_extendedBundleIdentifierHierarchy = v22;

      if ([v4 hasIconURL])
      {
        v24 = objc_alloc(MEMORY[0x1E695DFF8]);
        v25 = [v4 iconURL];
        v26 = [v24 initWithString:v25];
        appIcon = v5->_appIcon;
        v5->_appIcon = v26;
      }

      else
      {
        v25 = v5->_appIcon;
        v5->_appIcon = 0;
      }
    }

    self = v5;
    v28 = self;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (MRClient)initWithData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[_MRNowPlayingClientProtobuf alloc] initWithData:v4];

    self = [(MRClient *)self initWithProtobuf:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MRClient)initWithCoder:(id)a3
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

  v7 = [(MRClient *)self initWithProtobuf:v5];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MRClient *)self protobuf];
  [v4 encodeObject:v5 forKey:@"protobuf"];
}

- (MRClient)skeleton
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(MRClient *)self processIdentifier];
  v5 = [(MRClient *)self bundleIdentifier];
  v6 = [v3 initWithProcessIdentifier:v4 bundleIdentifier:v5];

  return v6;
}

- (NSString)representedBundleID
{
  v3 = [(MRClient *)self bundleIdentifier];
  v4 = [(MRClient *)self bundleIdentifierHierarchy];
  v5 = [(MRClient *)self parentApplicationBundleIdentifier];
  if ([v4 count])
  {
    v6 = [v4 lastObject];
  }

  else
  {
    if (![v5 length])
    {
      goto LABEL_6;
    }

    v6 = v5;
  }

  v7 = v6;

  v3 = v7;
LABEL_6:

  return v3;
}

- (BOOL)hasAuxiliaryProperties
{
  v3 = [(MRClient *)self displayName];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MRClient *)self parentApplicationBundleIdentifier];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(MRClient *)self tintColor];
      if (v6 || [(MRClient *)self visibility])
      {
        v4 = 1;
      }

      else
      {
        v8 = [(MRClient *)self appIcon];
        v4 = v8 != 0;
      }
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(MRClient *)v5 processIdentifier]< 1 || [(MRClient *)self processIdentifier]< 1)
      {
        v8 = 0;
        v7 = 1;
      }

      else
      {
        v6 = [(MRClient *)v5 processIdentifier];
        v7 = 0;
        v8 = v6 == [(MRClient *)self processIdentifier];
      }

      v10 = [(MRClient *)v5 bundleIdentifier];
      v11 = [(MRClient *)self bundleIdentifier];
      v12 = [v10 isEqualToString:v11];

      v13 = [(MRClient *)v5 bundleIdentifierHierarchy];
      v14 = [(MRClient *)self bundleIdentifier];
      v15 = [v13 containsObject:v14];

      v16 = [(MRClient *)self bundleIdentifierHierarchy];
      v17 = [(MRClient *)v5 bundleIdentifier];
      v18 = [v16 containsObject:v17];

      if (v8)
      {
        v9 = 1;
      }

      else
      {
        v9 = v7 & v12 & v15 & v18;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)debugDescription
{
  v2 = [(MRClient *)self protobuf];
  v3 = [v2 dictionaryRepresentation];
  v4 = [v3 description];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setProcessIdentifier:{-[MRClient processIdentifier](self, "processIdentifier")}];
  [v5 setProcessUserIdentifier:{-[MRClient processUserIdentifier](self, "processUserIdentifier")}];
  [v5 setVisibility:{-[MRClient visibility](self, "visibility")}];
  v6 = [(MRClient *)self tintColor];
  v7 = [v6 copyWithZone:a3];
  [v5 setTintColor:v7];

  v8 = [(MRClient *)self bundleIdentifier];
  v9 = [v8 copyWithZone:a3];
  [v5 setBundleIdentifier:v9];

  v10 = [(MRClient *)self parentApplicationBundleIdentifier];
  v11 = [v10 copyWithZone:a3];
  [v5 setParentApplicationBundleIdentifier:v11];

  v12 = [(MRClient *)self displayName];
  v13 = [v12 copyWithZone:a3];
  [v5 setDisplayName:v13];

  v14 = [(MRClient *)self extendedBundleIdentifierHierarchy];
  v15 = [v14 copyWithZone:a3];
  [v5 setExtendedBundleIdentifierHierarchy:v15];

  v16 = [(MRClient *)self appIcon];
  v17 = [v16 copyWithZone:a3];
  [v5 setAppIcon:v17];

  return v5;
}

- (void)mergeFrom:(id)a3
{
  v16 = a3;
  if ([v16 processIdentifier])
  {
    -[MRClient setProcessIdentifier:](self, "setProcessIdentifier:", [v16 processIdentifier]);
  }

  if ([v16 processUserIdentifier])
  {
    -[MRClient setProcessUserIdentifier:](self, "setProcessUserIdentifier:", [v16 processUserIdentifier]);
  }

  if ([v16 visibility])
  {
    -[MRClient setVisibility:](self, "setVisibility:", [v16 visibility]);
  }

  v4 = [v16 tintColor];

  if (v4)
  {
    v5 = [v16 tintColor];
    [(MRClient *)self setTintColor:v5];
  }

  v6 = [v16 bundleIdentifier];

  if (v6)
  {
    v7 = [v16 bundleIdentifier];
    [(MRClient *)self setBundleIdentifier:v7];
  }

  v8 = [v16 parentApplicationBundleIdentifier];

  if (v8)
  {
    v9 = [v16 parentApplicationBundleIdentifier];
    [(MRClient *)self setParentApplicationBundleIdentifier:v9];
  }

  v10 = [v16 displayName];

  if (v10)
  {
    v11 = [v16 displayName];
    [(MRClient *)self setDisplayName:v11];
  }

  v12 = [v16 extendedBundleIdentifierHierarchy];

  if (v12)
  {
    v13 = [v16 extendedBundleIdentifierHierarchy];
    [(MRClient *)self setExtendedBundleIdentifierHierarchy:v13];
  }

  v14 = [v16 appIcon];

  if (v14)
  {
    v15 = [v16 appIcon];
    [(MRClient *)self setAppIcon:v15];
  }
}

- (void)resolvePlaceholdersForDeviceInfo:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MRClient *)self bundleIdentifier];
  if ([v5 isEqualToString:@"(System Media Application)"])
  {
    v6 = [v4 systemMediaApplication];
    if (!v6)
    {
      v7 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
      v8 = _MRLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 138543362;
        *&v10[4] = v7;
LABEL_14:
        _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Falling back to %{public}@ for system app since none specified in deviceInfo", v10, 0xCu);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"(System Podcast Application)"])
  {
    v6 = [v4 systemPodcastApplication];
    if (!v6)
    {
      v7 = MRMediaRemoteCopyLocalDeviceSystemPodcastApplicationDisplayID();
      v8 = _MRLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 138543362;
        *&v10[4] = v7;
        goto LABEL_14;
      }

LABEL_15:

      goto LABEL_16;
    }

LABEL_11:
    v7 = v6;
LABEL_16:
    [(MRClient *)self setBundleIdentifier:v7, *v10];

    goto LABEL_17;
  }

  if ([v5 isEqualToString:@"(System Books Application)"])
  {
    v6 = [v4 systemBooksApplication];
    if (!v6)
    {
      v7 = MRMediaRemoteCopyLocalDeviceSystemBooksApplicationDisplayID();
      v8 = _MRLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 138543362;
        *&v10[4] = v7;
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    goto LABEL_11;
  }

LABEL_17:

  v9 = *MEMORY[0x1E69E9840];
}

@end