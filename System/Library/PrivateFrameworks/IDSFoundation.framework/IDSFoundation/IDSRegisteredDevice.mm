@interface IDSRegisteredDevice
+ (id)registeredDeviceFromDependentRegistrationDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRegisteredDevice:(id)device;
- (IDSRegisteredDevice)initWithCoder:(id)coder;
- (IDSRegisteredDevice)initWithName:(id)name hardwareVersion:(id)version pushToken:(id)token URIs:(id)is linkedURIs:(id)rIs publicDeviceIdentity:(id)identity;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSRegisteredDevice

+ (id)registeredDeviceFromDependentRegistrationDictionary:(id)dictionary
{
  v52 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"device-name"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [dictionaryCopy objectForKeyedSubscript:@"hardware-version"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = 0;
  if (v6)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v39 = v9;
    v40 = v6;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"push-token"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v38 = v13;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"client-data"];
    v15 = [v14 objectForKeyedSubscript:@"public-message-identity-key"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v37 = v16;

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v41 = dictionaryCopy;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"identities"];
    v19 = [v18 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v47;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v47 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v46 + 1) + 8 * i) objectForKeyedSubscript:@"uri"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = v23;
          }

          else
          {
            v24 = 0;
          }

          v25 = v24;

          if (v25)
          {
            v26 = [[IDSURI alloc] initWithPrefixedURI:v25];
            if (v26)
            {
              [v17 addObject:v26];
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v20);
    }

    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = [v41 objectForKeyedSubscript:@"linked-user-uri"];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v29 = [v28 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v43;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v43 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v42 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v34 = [[IDSURI alloc] initWithPrefixedURI:v33];
            if (v34)
            {
              [v27 addObject:v34];
            }
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v30);
    }

    if (v38)
    {
      v9 = v39;
      v6 = v40;
      v35 = v37;
      v10 = [[IDSRegisteredDevice alloc] initWithName:v40 hardwareVersion:v39 pushToken:v38 URIs:v17 linkedURIs:v27 publicDeviceIdentity:v37];
    }

    else
    {
      v10 = 0;
      v9 = v39;
      v6 = v40;
      v35 = v37;
    }

    dictionaryCopy = v41;
  }

  return v10;
}

- (IDSRegisteredDevice)initWithName:(id)name hardwareVersion:(id)version pushToken:(id)token URIs:(id)is linkedURIs:(id)rIs publicDeviceIdentity:(id)identity
{
  nameCopy = name;
  versionCopy = version;
  tokenCopy = token;
  isCopy = is;
  rIsCopy = rIs;
  identityCopy = identity;
  v34.receiver = self;
  v34.super_class = IDSRegisteredDevice;
  v20 = [(IDSRegisteredDevice *)&v34 init];
  if (v20)
  {
    v21 = [nameCopy copy];
    name = v20->_name;
    v20->_name = v21;

    v23 = [versionCopy copy];
    hardwareVersion = v20->_hardwareVersion;
    v20->_hardwareVersion = v23;

    v25 = [tokenCopy copy];
    pushToken = v20->_pushToken;
    v20->_pushToken = v25;

    v27 = [isCopy copy];
    URIs = v20->_URIs;
    v20->_URIs = v27;

    v29 = [rIsCopy copy];
    linkedURIs = v20->_linkedURIs;
    v20->_linkedURIs = v29;

    v31 = [identityCopy copy];
    publicDeviceIdentity = v20->_publicDeviceIdentity;
    v20->_publicDeviceIdentity = v31;
  }

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(IDSRegisteredDevice *)self name];
  hardwareVersion = [(IDSRegisteredDevice *)self hardwareVersion];
  pushToken = [(IDSRegisteredDevice *)self pushToken];
  uRIs = [(IDSRegisteredDevice *)self URIs];
  linkedURIs = [(IDSRegisteredDevice *)self linkedURIs];
  publicDeviceIdentity = [(IDSRegisteredDevice *)self publicDeviceIdentity];
  v11 = [IDSLogFormatter descriptionForData:publicDeviceIdentity options:2];
  v12 = [v3 stringWithFormat:@"<%@: %p name: %@, hardwareVersion: %@, pushToken: %@, identities: %@, linkedURIs: %@, publicKey: %@>", v4, self, name, hardwareVersion, pushToken, uRIs, linkedURIs, v11];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSRegisteredDevice *)self isEqualToRegisteredDevice:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToRegisteredDevice:(id)device
{
  deviceCopy = device;
  v7 = deviceCopy;
  if (self == deviceCopy)
  {
    v10 = 1;
  }

  else
  {
    if (deviceCopy)
    {
      name = [(IDSRegisteredDevice *)self name];
      name2 = [(IDSRegisteredDevice *)v7 name];
      if (name != name2)
      {
        name3 = [(IDSRegisteredDevice *)self name];
        name4 = [(IDSRegisteredDevice *)v7 name];
        v55 = name3;
        if (![name3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_36;
        }
      }

      hardwareVersion = [(IDSRegisteredDevice *)self hardwareVersion];
      hardwareVersion2 = [(IDSRegisteredDevice *)v7 hardwareVersion];
      if (hardwareVersion != hardwareVersion2)
      {
        name3 = [(IDSRegisteredDevice *)self hardwareVersion];
        hardwareVersion3 = [(IDSRegisteredDevice *)v7 hardwareVersion];
        if (![name3 isEqual:hardwareVersion3])
        {
          v10 = 0;
LABEL_34:

LABEL_35:
          if (name == name2)
          {
LABEL_37:

            goto LABEL_38;
          }

LABEL_36:

          goto LABEL_37;
        }
      }

      pushToken = [(IDSRegisteredDevice *)self pushToken];
      pushToken2 = [(IDSRegisteredDevice *)v7 pushToken];
      v53 = pushToken;
      v15 = pushToken == pushToken2;
      v16 = pushToken2;
      if (v15)
      {
        v48 = hardwareVersion;
        v18 = pushToken2;
      }

      else
      {
        pushToken3 = [(IDSRegisteredDevice *)self pushToken];
        pushToken4 = [(IDSRegisteredDevice *)v7 pushToken];
        v47 = pushToken3;
        if (![pushToken3 isEqual:?])
        {
          v10 = 0;
          v25 = v16;
          v26 = v53;
LABEL_32:

LABEL_33:
          if (hardwareVersion == hardwareVersion2)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v48 = hardwareVersion;
        v18 = v16;
      }

      uRIs = [(IDSRegisteredDevice *)self URIs];
      uRIs2 = [(IDSRegisteredDevice *)v7 URIs];
      v50 = uRIs;
      v51 = hardwareVersion3;
      v15 = uRIs == uRIs2;
      v21 = uRIs2;
      v52 = name3;
      if (!v15)
      {
        uRIs3 = [(IDSRegisteredDevice *)self URIs];
        uRIs4 = [(IDSRegisteredDevice *)v7 URIs];
        v42 = uRIs3;
        if (![uRIs3 isEqual:?])
        {
          v23 = v18;
          v10 = 0;
          hardwareVersion = v48;
          v24 = v50;
LABEL_30:

LABEL_31:
          v26 = v53;
          v25 = v23;
          v15 = v53 == v23;
          hardwareVersion3 = v51;
          name3 = v52;
          if (v15)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }
      }

      linkedURIs = [(IDSRegisteredDevice *)self linkedURIs];
      linkedURIs2 = [(IDSRegisteredDevice *)v7 linkedURIs];
      v44 = linkedURIs;
      v45 = v21;
      if (linkedURIs == linkedURIs2)
      {
        v30 = v18;
      }

      else
      {
        linkedURIs3 = [(IDSRegisteredDevice *)self linkedURIs];
        linkedURIs4 = [(IDSRegisteredDevice *)v7 linkedURIs];
        v40 = linkedURIs3;
        v29 = [linkedURIs3 isEqual:?];
        v30 = v18;
        if (!v29)
        {
          v10 = 0;
          hardwareVersion = v48;
          v32 = linkedURIs2;
          v31 = v44;
          goto LABEL_27;
        }
      }

      hardwareVersion = v48;
      publicDeviceIdentity = [(IDSRegisteredDevice *)self publicDeviceIdentity];
      publicDeviceIdentity2 = [(IDSRegisteredDevice *)v7 publicDeviceIdentity];
      v35 = publicDeviceIdentity2;
      if (publicDeviceIdentity == publicDeviceIdentity2)
      {

        v10 = 1;
      }

      else
      {
        publicDeviceIdentity3 = [(IDSRegisteredDevice *)self publicDeviceIdentity];
        [(IDSRegisteredDevice *)v7 publicDeviceIdentity];
        v37 = v49 = v30;
        v10 = [publicDeviceIdentity3 isEqual:v37];

        v30 = v49;
      }

      v32 = linkedURIs2;
      v31 = v44;
      if (v44 == linkedURIs2)
      {
        v23 = v30;
LABEL_29:

        v24 = v50;
        v21 = v45;
        if (v50 == v45)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

LABEL_27:
      v23 = v30;

      goto LABEL_29;
    }

    v10 = 0;
  }

LABEL_38:

  return v10;
}

- (unint64_t)hash
{
  name = [(IDSRegisteredDevice *)self name];
  v4 = [name hash];
  hardwareVersion = [(IDSRegisteredDevice *)self hardwareVersion];
  v6 = [hardwareVersion hash] ^ v4;
  pushToken = [(IDSRegisteredDevice *)self pushToken];
  v8 = [pushToken hash];

  return v6 ^ v8;
}

- (IDSRegisteredDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSRegisteredDeviceNameKey"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSRegisteredDeviceHardwareVersionKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSRegisteredDevicePushTokenKey"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"IDSRegisteredDeviceURIsKey"];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"IDSRegisteredDeviceLinkedURIsKey"];

  v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"IDSRegisteredDevicePublicDeviceIdentityKey"];

  v17 = [(IDSRegisteredDevice *)self initWithName:v4 hardwareVersion:v5 pushToken:v6 URIs:v10 linkedURIs:v14 publicDeviceIdentity:v16];
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(IDSRegisteredDevice *)self name];
  [coderCopy encodeObject:name forKey:@"IDSRegisteredDeviceNameKey"];

  hardwareVersion = [(IDSRegisteredDevice *)self hardwareVersion];
  [coderCopy encodeObject:hardwareVersion forKey:@"IDSRegisteredDeviceHardwareVersionKey"];

  pushToken = [(IDSRegisteredDevice *)self pushToken];
  [coderCopy encodeObject:pushToken forKey:@"IDSRegisteredDevicePushTokenKey"];

  uRIs = [(IDSRegisteredDevice *)self URIs];
  [coderCopy encodeObject:uRIs forKey:@"IDSRegisteredDeviceURIsKey"];

  linkedURIs = [(IDSRegisteredDevice *)self linkedURIs];
  [coderCopy encodeObject:linkedURIs forKey:@"IDSRegisteredDeviceLinkedURIsKey"];

  publicDeviceIdentity = [(IDSRegisteredDevice *)self publicDeviceIdentity];
  [coderCopy encodeObject:publicDeviceIdentity forKey:@"IDSRegisteredDevicePublicDeviceIdentityKey"];
}

@end