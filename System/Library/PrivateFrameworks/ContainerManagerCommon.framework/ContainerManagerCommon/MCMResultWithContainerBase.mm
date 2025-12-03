@interface MCMResultWithContainerBase
- (BOOL)encodeResultOntoReply:(id)reply;
- (BOOL)existed;
- (BOOL)transient;
- (MCMPOSIXUser)posixUser;
- (MCMResultWithContainerBase)initWithContainerPath:(id)path containerIdentity:(id)identity uuid:(id)uuid sandboxToken:(id)token includePath:(BOOL)includePath;
- (MCMResultWithContainerBase)initWithMetadata:(id)metadata sandboxToken:(id)token includePath:(BOOL)path includeInfo:(BOOL)info includeUserManagedAssetsRelPath:(BOOL)relPath includeCreator:(BOOL)creator;
- (MCMResultWithContainerBase)initWithUUID:(id)d containerPathIdentifier:(id)identifier identifier:(id)a5 containerClass:(unint64_t)class POSIXUser:(id)user personaUniqueString:(id)string sandboxToken:(id)token existed:(BOOL)self0 url:(id)self1 info:(id)self2 transient:(BOOL)self3 userManagedAssetsRelPath:(id)self4 creator:(id)self5;
- (NSDictionary)info;
- (NSString)containerPathIdentifier;
- (NSString)creator;
- (NSString)identifier;
- (NSString)personaUniqueString;
- (NSString)sandboxToken;
- (NSString)userManagedAssetsRelPath;
- (NSURL)url;
- (NSUUID)uuid;
- (unint64_t)containerClass;
@end

@implementation MCMResultWithContainerBase

- (NSURL)url
{
  result = self->_url;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSDictionary)info
{
  result = self->_info;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)userManagedAssetsRelPath
{
  result = self->_userManagedAssetsRelPath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)existed
{
  result = self->_existed;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)transient
{
  result = self->_transient;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSUUID)uuid
{
  result = self->_uuid;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)identifier
{
  result = self->_identifier;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)containerClass
{
  result = self->_containerClass;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMPOSIXUser)posixUser
{
  result = self->_posixUser;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)personaUniqueString
{
  result = self->_personaUniqueString;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)creator
{
  result = self->_creator;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)sandboxToken
{
  result = self->_sandboxToken;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)containerPathIdentifier
{
  result = self->_containerPathIdentifier;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMResultWithContainerBase)initWithMetadata:(id)metadata sandboxToken:(id)token includePath:(BOOL)path includeInfo:(BOOL)info includeUserManagedAssetsRelPath:(BOOL)relPath includeCreator:(BOOL)creator
{
  creatorCopy = creator;
  relPathCopy = relPath;
  infoCopy = info;
  pathCopy = path;
  v38 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  tokenCopy = token;
  if (relPathCopy && [metadataCopy conformsToProtocol:&unk_1F5A81C70])
  {
    userManagedAssetsDirName = [metadataCopy userManagedAssetsDirName];
  }

  else
  {
    userManagedAssetsDirName = 0;
  }

  v32 = tokenCopy;
  if (creatorCopy && [metadataCopy conformsToProtocol:&unk_1F5A81C70])
  {
    creator = [metadataCopy creator];
  }

  else
  {
    creator = 0;
  }

  uuid = [metadataCopy uuid];
  containerPath = [metadataCopy containerPath];
  containerPathIdentifier = [containerPath containerPathIdentifier];
  identifier = [metadataCopy identifier];
  containerClass = [metadataCopy containerClass];
  userIdentity = [metadataCopy userIdentity];
  posixUser = [userIdentity posixUser];
  userIdentity2 = [metadataCopy userIdentity];
  personaUniqueString = [userIdentity2 personaUniqueString];
  existed = [metadataCopy existed];
  v31 = pathCopy;
  if (pathCopy)
  {
    containerPath2 = [metadataCopy containerPath];
    containerDataURL = [containerPath2 containerDataURL];
    if (!infoCopy)
    {
      goto LABEL_16;
    }
  }

  else
  {
    containerDataURL = 0;
    if (!infoCopy)
    {
      goto LABEL_16;
    }
  }

  if ([metadataCopy conformsToProtocol:&unk_1F5A81C70])
  {
    info = [metadataCopy info];
    infoCopy = 1;
    goto LABEL_17;
  }

  infoCopy = 0;
LABEL_16:
  info = 0;
LABEL_17:
  LOBYTE(v27) = [metadataCopy transient];
  LOBYTE(v26) = existed;
  v23 = [(MCMResultWithContainerBase *)self initWithUUID:uuid containerPathIdentifier:containerPathIdentifier identifier:identifier containerClass:containerClass POSIXUser:posixUser personaUniqueString:personaUniqueString sandboxToken:v32 existed:v26 url:containerDataURL info:info transient:v27 userManagedAssetsRelPath:userManagedAssetsDirName creator:creator];
  if (infoCopy)
  {
  }

  if (v31)
  {
  }

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (MCMResultWithContainerBase)initWithContainerPath:(id)path containerIdentity:(id)identity uuid:(id)uuid sandboxToken:(id)token includePath:(BOOL)includePath
{
  includePathCopy = includePath;
  v31 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  tokenCopy = token;
  uuidCopy = uuid;
  identityCopy = identity;
  containerClassPath = [pathCopy containerClassPath];
  userIdentity = [containerClassPath userIdentity];
  containerPathIdentifier = [pathCopy containerPathIdentifier];
  identifier = [identityCopy identifier];

  containerClass = [containerClassPath containerClass];
  posixUser = [userIdentity posixUser];
  personaUniqueString = [userIdentity personaUniqueString];
  exists = [pathCopy exists];
  v25 = includePathCopy;
  if (includePathCopy)
  {
    containerDataURL = [pathCopy containerDataURL];
  }

  else
  {
    containerDataURL = 0;
  }

  LOBYTE(v24) = [pathCopy transient];
  LOBYTE(v23) = exists;
  v20 = [(MCMResultWithContainerBase *)self initWithUUID:uuidCopy containerPathIdentifier:containerPathIdentifier identifier:identifier containerClass:containerClass POSIXUser:posixUser personaUniqueString:personaUniqueString sandboxToken:tokenCopy existed:v23 url:containerDataURL info:0 transient:v24 userManagedAssetsRelPath:0 creator:0];

  if (v25)
  {
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (MCMResultWithContainerBase)initWithUUID:(id)d containerPathIdentifier:(id)identifier identifier:(id)a5 containerClass:(unint64_t)class POSIXUser:(id)user personaUniqueString:(id)string sandboxToken:(id)token existed:(BOOL)self0 url:(id)self1 info:(id)self2 transient:(BOOL)self3 userManagedAssetsRelPath:(id)self4 creator:(id)self5
{
  v39 = *MEMORY[0x1E69E9840];
  dCopy = d;
  obj = identifier;
  identifierCopy = identifier;
  v29 = a5;
  v33 = a5;
  userCopy = user;
  stringCopy = string;
  tokenCopy = token;
  urlCopy = url;
  infoCopy = info;
  pathCopy = path;
  creatorCopy = creator;
  v38.receiver = self;
  v38.super_class = MCMResultWithContainerBase;
  v24 = [(MCMResultBase *)&v38 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_uuid, d);
    v25->_existed = existed;
    objc_storeStrong(&v25->_containerPathIdentifier, obj);
    objc_storeStrong(&v25->_identifier, v29);
    v25->_containerClass = class;
    objc_storeStrong(&v25->_posixUser, user);
    objc_storeStrong(&v25->_personaUniqueString, string);
    objc_storeStrong(&v25->_sandboxToken, token);
    objc_storeStrong(&v25->_url, url);
    objc_storeStrong(&v25->_info, info);
    v25->_transient = transient;
    objc_storeStrong(&v25->_userManagedAssetsRelPath, path);
    objc_storeStrong(&v25->_creator, creator);
  }

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (BOOL)encodeResultOntoReply:(id)reply
{
  v27[2] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v26.receiver = self;
  v26.super_class = MCMResultWithContainerBase;
  v5 = [(MCMResultBase *)&v26 encodeResultOntoReply:replyCopy];
  if (v5)
  {
    error = [(MCMResultBase *)self error];

    if (!error)
    {
      v25 = xpc_dictionary_create(0, 0, 0);
      v7 = [(MCMResultWithContainerBase *)self url];

      if (v7)
      {
        v8 = [(MCMResultWithContainerBase *)self url];
        [v8 fileSystemRepresentation];
      }

      info = [(MCMResultWithContainerBase *)self info];

      if (info)
      {
        info2 = [(MCMResultWithContainerBase *)self info];
        v11 = _CFXPCCreateXPCObjectFromCFObject();
      }

      else
      {
        v11 = 0;
      }

      userManagedAssetsRelPath = [(MCMResultWithContainerBase *)self userManagedAssetsRelPath];

      if (userManagedAssetsRelPath)
      {
        userManagedAssetsRelPath2 = [(MCMResultWithContainerBase *)self userManagedAssetsRelPath];
        [userManagedAssetsRelPath2 UTF8String];
      }

      creator = [(MCMResultWithContainerBase *)self creator];

      if (creator)
      {
        creator2 = [(MCMResultWithContainerBase *)self creator];
        [creator2 UTF8String];
      }

      [(MCMResultWithContainerBase *)self existed];
      sandboxToken = [(MCMResultWithContainerBase *)self sandboxToken];
      [sandboxToken UTF8String];
      [(MCMResultWithContainerBase *)self transient];
      v24 = v11;
      container_xpc_encode_container_metadata_as_object();

      v27[0] = 0;
      v27[1] = 0;
      uuid = [(MCMResultWithContainerBase *)self uuid];
      [uuid getUUIDBytes:v27];

      identifier = [(MCMResultWithContainerBase *)self identifier];
      [identifier UTF8String];
      [(MCMResultWithContainerBase *)self containerClass];
      posixUser = [(MCMResultWithContainerBase *)self posixUser];
      [posixUser UID];
      containerPathIdentifier = [(MCMResultWithContainerBase *)self containerPathIdentifier];
      [containerPathIdentifier UTF8String];
      personaUniqueString = [(MCMResultWithContainerBase *)self personaUniqueString];
      [personaUniqueString UTF8String];
      container_xpc_encode_container_as_object();
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

@end