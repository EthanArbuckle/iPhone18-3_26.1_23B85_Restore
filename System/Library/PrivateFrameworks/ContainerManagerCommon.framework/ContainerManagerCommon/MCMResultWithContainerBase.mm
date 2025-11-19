@interface MCMResultWithContainerBase
- (BOOL)encodeResultOntoReply:(id)a3;
- (BOOL)existed;
- (BOOL)transient;
- (MCMPOSIXUser)posixUser;
- (MCMResultWithContainerBase)initWithContainerPath:(id)a3 containerIdentity:(id)a4 uuid:(id)a5 sandboxToken:(id)a6 includePath:(BOOL)a7;
- (MCMResultWithContainerBase)initWithMetadata:(id)a3 sandboxToken:(id)a4 includePath:(BOOL)a5 includeInfo:(BOOL)a6 includeUserManagedAssetsRelPath:(BOOL)a7 includeCreator:(BOOL)a8;
- (MCMResultWithContainerBase)initWithUUID:(id)a3 containerPathIdentifier:(id)a4 identifier:(id)a5 containerClass:(unint64_t)a6 POSIXUser:(id)a7 personaUniqueString:(id)a8 sandboxToken:(id)a9 existed:(BOOL)a10 url:(id)a11 info:(id)a12 transient:(BOOL)a13 userManagedAssetsRelPath:(id)a14 creator:(id)a15;
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

- (MCMResultWithContainerBase)initWithMetadata:(id)a3 sandboxToken:(id)a4 includePath:(BOOL)a5 includeInfo:(BOOL)a6 includeUserManagedAssetsRelPath:(BOOL)a7 includeCreator:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v38 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  if (v9 && [v13 conformsToProtocol:&unk_1F5A81C70])
  {
    v37 = [v13 userManagedAssetsDirName];
  }

  else
  {
    v37 = 0;
  }

  v32 = v14;
  if (v8 && [v13 conformsToProtocol:&unk_1F5A81C70])
  {
    v36 = [v13 creator];
  }

  else
  {
    v36 = 0;
  }

  v35 = [v13 uuid];
  v29 = [v13 containerPath];
  v34 = [v29 containerPathIdentifier];
  v33 = [v13 identifier];
  v15 = [v13 containerClass];
  v16 = [v13 userIdentity];
  v17 = [v16 posixUser];
  v18 = [v13 userIdentity];
  v19 = [v18 personaUniqueString];
  v20 = [v13 existed];
  v31 = v11;
  if (v11)
  {
    v28 = [v13 containerPath];
    v21 = [v28 containerDataURL];
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v21 = 0;
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  if ([v13 conformsToProtocol:&unk_1F5A81C70])
  {
    v22 = [v13 info];
    v10 = 1;
    goto LABEL_17;
  }

  v10 = 0;
LABEL_16:
  v22 = 0;
LABEL_17:
  LOBYTE(v27) = [v13 transient];
  LOBYTE(v26) = v20;
  v23 = [(MCMResultWithContainerBase *)self initWithUUID:v35 containerPathIdentifier:v34 identifier:v33 containerClass:v15 POSIXUser:v17 personaUniqueString:v19 sandboxToken:v32 existed:v26 url:v21 info:v22 transient:v27 userManagedAssetsRelPath:v37 creator:v36];
  if (v10)
  {
  }

  if (v31)
  {
  }

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (MCMResultWithContainerBase)initWithContainerPath:(id)a3 containerIdentity:(id)a4 uuid:(id)a5 sandboxToken:(id)a6 includePath:(BOOL)a7
{
  v7 = a7;
  v31 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v27 = a6;
  v26 = a5;
  v12 = a4;
  v13 = [v11 containerClassPath];
  v14 = [v13 userIdentity];
  v28 = [v11 containerPathIdentifier];
  v30 = [v12 identifier];

  v15 = [v13 containerClass];
  v16 = [v14 posixUser];
  v17 = [v14 personaUniqueString];
  v18 = [v11 exists];
  v25 = v7;
  if (v7)
  {
    v19 = [v11 containerDataURL];
  }

  else
  {
    v19 = 0;
  }

  LOBYTE(v24) = [v11 transient];
  LOBYTE(v23) = v18;
  v20 = [(MCMResultWithContainerBase *)self initWithUUID:v26 containerPathIdentifier:v28 identifier:v30 containerClass:v15 POSIXUser:v16 personaUniqueString:v17 sandboxToken:v27 existed:v23 url:v19 info:0 transient:v24 userManagedAssetsRelPath:0 creator:0];

  if (v25)
  {
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (MCMResultWithContainerBase)initWithUUID:(id)a3 containerPathIdentifier:(id)a4 identifier:(id)a5 containerClass:(unint64_t)a6 POSIXUser:(id)a7 personaUniqueString:(id)a8 sandboxToken:(id)a9 existed:(BOOL)a10 url:(id)a11 info:(id)a12 transient:(BOOL)a13 userManagedAssetsRelPath:(id)a14 creator:(id)a15
{
  v39 = *MEMORY[0x1E69E9840];
  v37 = a3;
  obj = a4;
  v35 = a4;
  v29 = a5;
  v33 = a5;
  v32 = a7;
  v36 = a8;
  v34 = a9;
  v20 = a11;
  v21 = a12;
  v22 = a14;
  v23 = a15;
  v38.receiver = self;
  v38.super_class = MCMResultWithContainerBase;
  v24 = [(MCMResultBase *)&v38 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_uuid, a3);
    v25->_existed = a10;
    objc_storeStrong(&v25->_containerPathIdentifier, obj);
    objc_storeStrong(&v25->_identifier, v29);
    v25->_containerClass = a6;
    objc_storeStrong(&v25->_posixUser, a7);
    objc_storeStrong(&v25->_personaUniqueString, a8);
    objc_storeStrong(&v25->_sandboxToken, a9);
    objc_storeStrong(&v25->_url, a11);
    objc_storeStrong(&v25->_info, a12);
    v25->_transient = a13;
    objc_storeStrong(&v25->_userManagedAssetsRelPath, a14);
    objc_storeStrong(&v25->_creator, a15);
  }

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (BOOL)encodeResultOntoReply:(id)a3
{
  v27[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = MCMResultWithContainerBase;
  v5 = [(MCMResultBase *)&v26 encodeResultOntoReply:v4];
  if (v5)
  {
    v6 = [(MCMResultBase *)self error];

    if (!v6)
    {
      v25 = xpc_dictionary_create(0, 0, 0);
      v7 = [(MCMResultWithContainerBase *)self url];

      if (v7)
      {
        v8 = [(MCMResultWithContainerBase *)self url];
        [v8 fileSystemRepresentation];
      }

      v9 = [(MCMResultWithContainerBase *)self info];

      if (v9)
      {
        v10 = [(MCMResultWithContainerBase *)self info];
        v11 = _CFXPCCreateXPCObjectFromCFObject();
      }

      else
      {
        v11 = 0;
      }

      v12 = [(MCMResultWithContainerBase *)self userManagedAssetsRelPath];

      if (v12)
      {
        v13 = [(MCMResultWithContainerBase *)self userManagedAssetsRelPath];
        [v13 UTF8String];
      }

      v14 = [(MCMResultWithContainerBase *)self creator];

      if (v14)
      {
        v15 = [(MCMResultWithContainerBase *)self creator];
        [v15 UTF8String];
      }

      [(MCMResultWithContainerBase *)self existed];
      v16 = [(MCMResultWithContainerBase *)self sandboxToken];
      [v16 UTF8String];
      [(MCMResultWithContainerBase *)self transient];
      v24 = v11;
      container_xpc_encode_container_metadata_as_object();

      v27[0] = 0;
      v27[1] = 0;
      v17 = [(MCMResultWithContainerBase *)self uuid];
      [v17 getUUIDBytes:v27];

      v18 = [(MCMResultWithContainerBase *)self identifier];
      [v18 UTF8String];
      [(MCMResultWithContainerBase *)self containerClass];
      v19 = [(MCMResultWithContainerBase *)self posixUser];
      [v19 UID];
      v20 = [(MCMResultWithContainerBase *)self containerPathIdentifier];
      [v20 UTF8String];
      v21 = [(MCMResultWithContainerBase *)self personaUniqueString];
      [v21 UTF8String];
      container_xpc_encode_container_as_object();
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

@end