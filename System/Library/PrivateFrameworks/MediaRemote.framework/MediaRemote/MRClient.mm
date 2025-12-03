@interface MRClient
+ (MRClient)anyClient;
+ (MRClient)localClient;
- (BOOL)hasAuxiliaryProperties;
- (BOOL)hasPlaceholder;
- (BOOL)isAirPlay;
- (BOOL)isEqual:(id)equal;
- (BOOL)isLocal;
- (BOOL)isSystemBooksApplication;
- (BOOL)isSystemMediaApplication;
- (BOOL)isSystemPodcastsApplication;
- (BOOL)isValid;
- (BOOL)isWebKit;
- (MRClient)initWithCoder:(id)coder;
- (MRClient)initWithData:(id)data;
- (MRClient)initWithProcessIdentifier:(int)identifier bundleIdentifier:(id)bundleIdentifier;
- (MRClient)initWithProtobuf:(id)protobuf;
- (MRClient)skeleton;
- (NSArray)bundleIdentifierHierarchy;
- (NSData)data;
- (NSString)representedBundleID;
- (_MRNowPlayingClientProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)mergeFrom:(id)from;
- (void)resolvePlaceholdersForDeviceInfo:(id)info;
@end

@implementation MRClient

- (NSArray)bundleIdentifierHierarchy
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  bundleIdentifier = [(MRClient *)self bundleIdentifier];

  if (bundleIdentifier)
  {
    bundleIdentifier2 = [(MRClient *)self bundleIdentifier];
    [v3 addObject:bundleIdentifier2];
  }

  parentApplicationBundleIdentifier = [(MRClient *)self parentApplicationBundleIdentifier];

  if (parentApplicationBundleIdentifier)
  {
    parentApplicationBundleIdentifier2 = [(MRClient *)self parentApplicationBundleIdentifier];
    [v3 addObject:parentApplicationBundleIdentifier2];
  }

  extendedBundleIdentifierHierarchy = [(MRClient *)self extendedBundleIdentifierHierarchy];

  if (extendedBundleIdentifierHierarchy)
  {
    extendedBundleIdentifierHierarchy2 = [(MRClient *)self extendedBundleIdentifierHierarchy];
    [v3 addObjectsFromArray:extendedBundleIdentifierHierarchy2];
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
  block[4] = self;
  if (localClient_onceToken != -1)
  {
    dispatch_once(&localClient_onceToken, block);
  }

  v2 = localClient_client;

  return v2;
}

- (BOOL)isSystemBooksApplication
{
  bundleIdentifier = [(MRClient *)self bundleIdentifier];
  IsSystemBooksApplication = MRMediaRemoteApplicationIsSystemBooksApplication(bundleIdentifier);

  return IsSystemBooksApplication;
}

- (BOOL)hasPlaceholder
{
  bundleIdentifier = [(MRClient *)self bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"(System Media Application)"];

  if (v4)
  {
    return 1;
  }

  bundleIdentifier2 = [(MRClient *)self bundleIdentifier];
  v6 = [bundleIdentifier2 isEqualToString:@"(System Podcast Application)"];

  if (v6)
  {
    return 1;
  }

  bundleIdentifier3 = [(MRClient *)self bundleIdentifier];
  v8 = [bundleIdentifier3 isEqualToString:@"(System Books Application)"];

  if (v8)
  {
    return 1;
  }

  bundleIdentifier4 = [(MRClient *)self bundleIdentifier];
  v11 = [bundleIdentifier4 isEqualToString:@"(System Classical Room Application)"];

  return v11;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
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

  [string appendString:v4];
  bundleIdentifierHierarchy = [(MRClient *)self bundleIdentifierHierarchy];
  v6 = [bundleIdentifierHierarchy count];

  if (v6)
  {
    bundleIdentifierHierarchy2 = [(MRClient *)self bundleIdentifierHierarchy];
    v8 = [bundleIdentifierHierarchy2 componentsJoinedByString:@"/"];

    [string appendFormat:@"%@", v8];
  }

  if ([(MRClient *)self processIdentifier]>= 1)
  {
    [string appendFormat:@" (%d)", -[MRClient processIdentifier](self, "processIdentifier")];
  }

  displayName = [(MRClient *)self displayName];
  v10 = [displayName length];

  if (v10)
  {
    displayName2 = [(MRClient *)self displayName];
    [string appendFormat:@" %@", displayName2];
  }

  return string;
}

- (BOOL)isSystemMediaApplication
{
  bundleIdentifier = [(MRClient *)self bundleIdentifier];
  IsSystemMediaApplication = MRMediaRemoteApplicationIsSystemMediaApplication(bundleIdentifier);

  return IsSystemMediaApplication;
}

- (BOOL)isSystemPodcastsApplication
{
  bundleIdentifier = [(MRClient *)self bundleIdentifier];
  IsSystemPodcastApplication = MRMediaRemoteApplicationIsSystemPodcastApplication(bundleIdentifier);

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
  uTF8String = [(NSString *)v9 UTF8String];
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
        v21 = *uTF8String++;
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
      v13 = *uTF8String;
      uTF8String += 8;
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

  bundleIdentifier = [(MRClient *)self bundleIdentifier];
  v3 = [bundleIdentifier length] != 0;

  return v3;
}

- (_MRNowPlayingClientProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRNowPlayingClientProtobuf);
  [(_MRNowPlayingClientProtobuf *)v3 setProcessIdentifier:[(MRClient *)self processIdentifier]];
  [(_MRNowPlayingClientProtobuf *)v3 setHasProcessIdentifier:[(MRClient *)self processIdentifier]> 0];
  bundleIdentifier = [(MRClient *)self bundleIdentifier];
  [(_MRNowPlayingClientProtobuf *)v3 setBundleIdentifier:bundleIdentifier];

  parentApplicationBundleIdentifier = [(MRClient *)self parentApplicationBundleIdentifier];
  [(_MRNowPlayingClientProtobuf *)v3 setParentApplicationBundleIdentifier:parentApplicationBundleIdentifier];

  [(_MRNowPlayingClientProtobuf *)v3 setProcessUserIdentifier:[(MRClient *)self processUserIdentifier]];
  [(_MRNowPlayingClientProtobuf *)v3 setHasProcessUserIdentifier:[(MRClient *)self processUserIdentifier]!= 0];
  visibility = [(MRClient *)self visibility];
  if (visibility >= 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = visibility;
  }

  [(_MRNowPlayingClientProtobuf *)v3 setNowPlayingVisibility:v7];
  [(_MRNowPlayingClientProtobuf *)v3 setHasNowPlayingVisibility:[(MRClient *)self visibility]!= 0];
  tintColor = [(MRClient *)self tintColor];
  protobuf = [tintColor protobuf];
  [(_MRNowPlayingClientProtobuf *)v3 setTintColor:protobuf];

  displayName = [(MRClient *)self displayName];
  [(_MRNowPlayingClientProtobuf *)v3 setDisplayName:displayName];

  extendedBundleIdentifierHierarchy = [(MRClient *)self extendedBundleIdentifierHierarchy];
  v12 = [extendedBundleIdentifierHierarchy mutableCopy];
  [(_MRNowPlayingClientProtobuf *)v3 setExtendedBundleIdentifierHierarchys:v12];

  appIcon = [(MRClient *)self appIcon];
  absoluteString = [appIcon absoluteString];
  [(_MRNowPlayingClientProtobuf *)v3 setIconURL:absoluteString];

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
  v2 = [[self alloc] initWithBundleIdentifier:@"any"];

  return v2;
}

- (BOOL)isAirPlay
{
  bundleIdentifier = [(MRClient *)self bundleIdentifier];
  IsAirPlayReceiver = MRMediaRemoteApplicationIsAirPlayReceiver(bundleIdentifier);

  return IsAirPlayReceiver;
}

- (BOOL)isWebKit
{
  bundleIdentifier = [(MRClient *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.WebKit.GPU"];

  return v3;
}

- (NSData)data
{
  protobuf = [(MRClient *)self protobuf];
  data = [protobuf data];

  return data;
}

- (MRClient)initWithProcessIdentifier:(int)identifier bundleIdentifier:(id)bundleIdentifier
{
  bundleIdentifierCopy = bundleIdentifier;
  v12.receiver = self;
  v12.super_class = MRClient;
  v7 = [(MRClient *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_processIdentifier = identifier;
    v9 = [bundleIdentifierCopy copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v9;
  }

  return v8;
}

- (MRClient)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v30.receiver = self;
    v30.super_class = MRClient;
    v5 = [(MRClient *)&v30 init];
    if (v5)
    {
      v5->_processIdentifier = [protobufCopy processIdentifier];
      bundleIdentifier = [protobufCopy bundleIdentifier];
      v7 = [bundleIdentifier copy];
      bundleIdentifier = v5->_bundleIdentifier;
      v5->_bundleIdentifier = v7;

      parentApplicationBundleIdentifier = [protobufCopy parentApplicationBundleIdentifier];
      v10 = [parentApplicationBundleIdentifier copy];
      parentApplicationBundleIdentifier = v5->_parentApplicationBundleIdentifier;
      v5->_parentApplicationBundleIdentifier = v10;

      v5->_processUserIdentifier = [protobufCopy processUserIdentifier];
      nowPlayingVisibility = [protobufCopy nowPlayingVisibility];
      if (nowPlayingVisibility >= 4)
      {
        v13 = 0;
      }

      else
      {
        v13 = nowPlayingVisibility;
      }

      v5->_visibility = v13;
      v14 = [MRColorComponents alloc];
      tintColor = [protobufCopy tintColor];
      v16 = [(MRColorComponents *)v14 initWithProtobuf:tintColor];
      tintColor = v5->_tintColor;
      v5->_tintColor = v16;

      displayName = [protobufCopy displayName];
      v19 = [displayName copy];
      displayName = v5->_displayName;
      v5->_displayName = v19;

      extendedBundleIdentifierHierarchys = [protobufCopy extendedBundleIdentifierHierarchys];
      v22 = [extendedBundleIdentifierHierarchys copy];
      extendedBundleIdentifierHierarchy = v5->_extendedBundleIdentifierHierarchy;
      v5->_extendedBundleIdentifierHierarchy = v22;

      if ([protobufCopy hasIconURL])
      {
        v24 = objc_alloc(MEMORY[0x1E695DFF8]);
        iconURL = [protobufCopy iconURL];
        v26 = [v24 initWithString:iconURL];
        appIcon = v5->_appIcon;
        v5->_appIcon = v26;
      }

      else
      {
        iconURL = v5->_appIcon;
        v5->_appIcon = 0;
      }
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRClient)initWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRNowPlayingClientProtobuf alloc] initWithData:dataCopy];

    self = [(MRClient *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRClient)initWithCoder:(id)coder
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

  v7 = [(MRClient *)self initWithProtobuf:v5];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protobuf = [(MRClient *)self protobuf];
  [coderCopy encodeObject:protobuf forKey:@"protobuf"];
}

- (MRClient)skeleton
{
  v3 = objc_alloc(objc_opt_class());
  processIdentifier = [(MRClient *)self processIdentifier];
  bundleIdentifier = [(MRClient *)self bundleIdentifier];
  v6 = [v3 initWithProcessIdentifier:processIdentifier bundleIdentifier:bundleIdentifier];

  return v6;
}

- (NSString)representedBundleID
{
  bundleIdentifier = [(MRClient *)self bundleIdentifier];
  bundleIdentifierHierarchy = [(MRClient *)self bundleIdentifierHierarchy];
  parentApplicationBundleIdentifier = [(MRClient *)self parentApplicationBundleIdentifier];
  if ([bundleIdentifierHierarchy count])
  {
    lastObject = [bundleIdentifierHierarchy lastObject];
  }

  else
  {
    if (![parentApplicationBundleIdentifier length])
    {
      goto LABEL_6;
    }

    lastObject = parentApplicationBundleIdentifier;
  }

  v7 = lastObject;

  bundleIdentifier = v7;
LABEL_6:

  return bundleIdentifier;
}

- (BOOL)hasAuxiliaryProperties
{
  displayName = [(MRClient *)self displayName];
  if (displayName)
  {
    v4 = 1;
  }

  else
  {
    parentApplicationBundleIdentifier = [(MRClient *)self parentApplicationBundleIdentifier];
    if (parentApplicationBundleIdentifier)
    {
      v4 = 1;
    }

    else
    {
      tintColor = [(MRClient *)self tintColor];
      if (tintColor || [(MRClient *)self visibility])
      {
        v4 = 1;
      }

      else
      {
        appIcon = [(MRClient *)self appIcon];
        v4 = appIcon != 0;
      }
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(MRClient *)v5 processIdentifier]< 1 || [(MRClient *)self processIdentifier]< 1)
      {
        v8 = 0;
        v7 = 1;
      }

      else
      {
        processIdentifier = [(MRClient *)v5 processIdentifier];
        v7 = 0;
        v8 = processIdentifier == [(MRClient *)self processIdentifier];
      }

      bundleIdentifier = [(MRClient *)v5 bundleIdentifier];
      bundleIdentifier2 = [(MRClient *)self bundleIdentifier];
      v12 = [bundleIdentifier isEqualToString:bundleIdentifier2];

      bundleIdentifierHierarchy = [(MRClient *)v5 bundleIdentifierHierarchy];
      bundleIdentifier3 = [(MRClient *)self bundleIdentifier];
      v15 = [bundleIdentifierHierarchy containsObject:bundleIdentifier3];

      bundleIdentifierHierarchy2 = [(MRClient *)self bundleIdentifierHierarchy];
      bundleIdentifier4 = [(MRClient *)v5 bundleIdentifier];
      v18 = [bundleIdentifierHierarchy2 containsObject:bundleIdentifier4];

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
  protobuf = [(MRClient *)self protobuf];
  dictionaryRepresentation = [protobuf dictionaryRepresentation];
  v4 = [dictionaryRepresentation description];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setProcessIdentifier:{-[MRClient processIdentifier](self, "processIdentifier")}];
  [v5 setProcessUserIdentifier:{-[MRClient processUserIdentifier](self, "processUserIdentifier")}];
  [v5 setVisibility:{-[MRClient visibility](self, "visibility")}];
  tintColor = [(MRClient *)self tintColor];
  v7 = [tintColor copyWithZone:zone];
  [v5 setTintColor:v7];

  bundleIdentifier = [(MRClient *)self bundleIdentifier];
  v9 = [bundleIdentifier copyWithZone:zone];
  [v5 setBundleIdentifier:v9];

  parentApplicationBundleIdentifier = [(MRClient *)self parentApplicationBundleIdentifier];
  v11 = [parentApplicationBundleIdentifier copyWithZone:zone];
  [v5 setParentApplicationBundleIdentifier:v11];

  displayName = [(MRClient *)self displayName];
  v13 = [displayName copyWithZone:zone];
  [v5 setDisplayName:v13];

  extendedBundleIdentifierHierarchy = [(MRClient *)self extendedBundleIdentifierHierarchy];
  v15 = [extendedBundleIdentifierHierarchy copyWithZone:zone];
  [v5 setExtendedBundleIdentifierHierarchy:v15];

  appIcon = [(MRClient *)self appIcon];
  v17 = [appIcon copyWithZone:zone];
  [v5 setAppIcon:v17];

  return v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ([fromCopy processIdentifier])
  {
    -[MRClient setProcessIdentifier:](self, "setProcessIdentifier:", [fromCopy processIdentifier]);
  }

  if ([fromCopy processUserIdentifier])
  {
    -[MRClient setProcessUserIdentifier:](self, "setProcessUserIdentifier:", [fromCopy processUserIdentifier]);
  }

  if ([fromCopy visibility])
  {
    -[MRClient setVisibility:](self, "setVisibility:", [fromCopy visibility]);
  }

  tintColor = [fromCopy tintColor];

  if (tintColor)
  {
    tintColor2 = [fromCopy tintColor];
    [(MRClient *)self setTintColor:tintColor2];
  }

  bundleIdentifier = [fromCopy bundleIdentifier];

  if (bundleIdentifier)
  {
    bundleIdentifier2 = [fromCopy bundleIdentifier];
    [(MRClient *)self setBundleIdentifier:bundleIdentifier2];
  }

  parentApplicationBundleIdentifier = [fromCopy parentApplicationBundleIdentifier];

  if (parentApplicationBundleIdentifier)
  {
    parentApplicationBundleIdentifier2 = [fromCopy parentApplicationBundleIdentifier];
    [(MRClient *)self setParentApplicationBundleIdentifier:parentApplicationBundleIdentifier2];
  }

  displayName = [fromCopy displayName];

  if (displayName)
  {
    displayName2 = [fromCopy displayName];
    [(MRClient *)self setDisplayName:displayName2];
  }

  extendedBundleIdentifierHierarchy = [fromCopy extendedBundleIdentifierHierarchy];

  if (extendedBundleIdentifierHierarchy)
  {
    extendedBundleIdentifierHierarchy2 = [fromCopy extendedBundleIdentifierHierarchy];
    [(MRClient *)self setExtendedBundleIdentifierHierarchy:extendedBundleIdentifierHierarchy2];
  }

  appIcon = [fromCopy appIcon];

  if (appIcon)
  {
    appIcon2 = [fromCopy appIcon];
    [(MRClient *)self setAppIcon:appIcon2];
  }
}

- (void)resolvePlaceholdersForDeviceInfo:(id)info
{
  v11 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  bundleIdentifier = [(MRClient *)self bundleIdentifier];
  if ([bundleIdentifier isEqualToString:@"(System Media Application)"])
  {
    systemMediaApplication = [infoCopy systemMediaApplication];
    if (!systemMediaApplication)
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

  if ([bundleIdentifier isEqualToString:@"(System Podcast Application)"])
  {
    systemMediaApplication = [infoCopy systemPodcastApplication];
    if (!systemMediaApplication)
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
    v7 = systemMediaApplication;
LABEL_16:
    [(MRClient *)self setBundleIdentifier:v7, *v10];

    goto LABEL_17;
  }

  if ([bundleIdentifier isEqualToString:@"(System Books Application)"])
  {
    systemMediaApplication = [infoCopy systemBooksApplication];
    if (!systemMediaApplication)
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