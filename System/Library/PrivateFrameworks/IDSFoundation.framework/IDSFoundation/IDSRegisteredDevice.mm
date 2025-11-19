@interface IDSRegisteredDevice
+ (id)registeredDeviceFromDependentRegistrationDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRegisteredDevice:(id)a3;
- (IDSRegisteredDevice)initWithCoder:(id)a3;
- (IDSRegisteredDevice)initWithName:(id)a3 hardwareVersion:(id)a4 pushToken:(id)a5 URIs:(id)a6 linkedURIs:(id)a7 publicDeviceIdentity:(id)a8;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSRegisteredDevice

+ (id)registeredDeviceFromDependentRegistrationDictionary:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"device-name"];
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

  v7 = [v3 objectForKeyedSubscript:@"hardware-version"];
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
    v12 = [v3 objectForKeyedSubscript:@"push-token"];
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

    v14 = [v3 objectForKeyedSubscript:@"client-data"];
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
    v41 = v3;
    v18 = [v3 objectForKeyedSubscript:@"identities"];
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

    v3 = v41;
  }

  return v10;
}

- (IDSRegisteredDevice)initWithName:(id)a3 hardwareVersion:(id)a4 pushToken:(id)a5 URIs:(id)a6 linkedURIs:(id)a7 publicDeviceIdentity:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v34.receiver = self;
  v34.super_class = IDSRegisteredDevice;
  v20 = [(IDSRegisteredDevice *)&v34 init];
  if (v20)
  {
    v21 = [v14 copy];
    name = v20->_name;
    v20->_name = v21;

    v23 = [v15 copy];
    hardwareVersion = v20->_hardwareVersion;
    v20->_hardwareVersion = v23;

    v25 = [v16 copy];
    pushToken = v20->_pushToken;
    v20->_pushToken = v25;

    v27 = [v17 copy];
    URIs = v20->_URIs;
    v20->_URIs = v27;

    v29 = [v18 copy];
    linkedURIs = v20->_linkedURIs;
    v20->_linkedURIs = v29;

    v31 = [v19 copy];
    publicDeviceIdentity = v20->_publicDeviceIdentity;
    v20->_publicDeviceIdentity = v31;
  }

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSRegisteredDevice *)self name];
  v6 = [(IDSRegisteredDevice *)self hardwareVersion];
  v7 = [(IDSRegisteredDevice *)self pushToken];
  v8 = [(IDSRegisteredDevice *)self URIs];
  v9 = [(IDSRegisteredDevice *)self linkedURIs];
  v10 = [(IDSRegisteredDevice *)self publicDeviceIdentity];
  v11 = [IDSLogFormatter descriptionForData:v10 options:2];
  v12 = [v3 stringWithFormat:@"<%@: %p name: %@, hardwareVersion: %@, pushToken: %@, identities: %@, linkedURIs: %@, publicKey: %@>", v4, self, v5, v6, v7, v8, v9, v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSRegisteredDevice *)self isEqualToRegisteredDevice:v4];
  }

  return v5;
}

- (BOOL)isEqualToRegisteredDevice:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self == v6)
  {
    v10 = 1;
  }

  else
  {
    if (v6)
    {
      v8 = [(IDSRegisteredDevice *)self name];
      v9 = [(IDSRegisteredDevice *)v7 name];
      if (v8 != v9)
      {
        v3 = [(IDSRegisteredDevice *)self name];
        v54 = [(IDSRegisteredDevice *)v7 name];
        v55 = v3;
        if (![v3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_36;
        }
      }

      v11 = [(IDSRegisteredDevice *)self hardwareVersion];
      v12 = [(IDSRegisteredDevice *)v7 hardwareVersion];
      if (v11 != v12)
      {
        v3 = [(IDSRegisteredDevice *)self hardwareVersion];
        v4 = [(IDSRegisteredDevice *)v7 hardwareVersion];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
LABEL_34:

LABEL_35:
          if (v8 == v9)
          {
LABEL_37:

            goto LABEL_38;
          }

LABEL_36:

          goto LABEL_37;
        }
      }

      v13 = [(IDSRegisteredDevice *)self pushToken];
      v14 = [(IDSRegisteredDevice *)v7 pushToken];
      v53 = v13;
      v15 = v13 == v14;
      v16 = v14;
      if (v15)
      {
        v48 = v11;
        v18 = v14;
      }

      else
      {
        v17 = [(IDSRegisteredDevice *)self pushToken];
        v46 = [(IDSRegisteredDevice *)v7 pushToken];
        v47 = v17;
        if (![v17 isEqual:?])
        {
          v10 = 0;
          v25 = v16;
          v26 = v53;
LABEL_32:

LABEL_33:
          if (v11 == v12)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v48 = v11;
        v18 = v16;
      }

      v19 = [(IDSRegisteredDevice *)self URIs];
      v20 = [(IDSRegisteredDevice *)v7 URIs];
      v50 = v19;
      v51 = v4;
      v15 = v19 == v20;
      v21 = v20;
      v52 = v3;
      if (!v15)
      {
        v22 = [(IDSRegisteredDevice *)self URIs];
        v41 = [(IDSRegisteredDevice *)v7 URIs];
        v42 = v22;
        if (![v22 isEqual:?])
        {
          v23 = v18;
          v10 = 0;
          v11 = v48;
          v24 = v50;
LABEL_30:

LABEL_31:
          v26 = v53;
          v25 = v23;
          v15 = v53 == v23;
          v4 = v51;
          v3 = v52;
          if (v15)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }
      }

      v27 = [(IDSRegisteredDevice *)self linkedURIs];
      v43 = [(IDSRegisteredDevice *)v7 linkedURIs];
      v44 = v27;
      v45 = v21;
      if (v27 == v43)
      {
        v30 = v18;
      }

      else
      {
        v28 = [(IDSRegisteredDevice *)self linkedURIs];
        v39 = [(IDSRegisteredDevice *)v7 linkedURIs];
        v40 = v28;
        v29 = [v28 isEqual:?];
        v30 = v18;
        if (!v29)
        {
          v10 = 0;
          v11 = v48;
          v32 = v43;
          v31 = v44;
          goto LABEL_27;
        }
      }

      v11 = v48;
      v33 = [(IDSRegisteredDevice *)self publicDeviceIdentity];
      v34 = [(IDSRegisteredDevice *)v7 publicDeviceIdentity];
      v35 = v34;
      if (v33 == v34)
      {

        v10 = 1;
      }

      else
      {
        v36 = [(IDSRegisteredDevice *)self publicDeviceIdentity];
        [(IDSRegisteredDevice *)v7 publicDeviceIdentity];
        v37 = v49 = v30;
        v10 = [v36 isEqual:v37];

        v30 = v49;
      }

      v32 = v43;
      v31 = v44;
      if (v44 == v43)
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
  v3 = [(IDSRegisteredDevice *)self name];
  v4 = [v3 hash];
  v5 = [(IDSRegisteredDevice *)self hardwareVersion];
  v6 = [v5 hash] ^ v4;
  v7 = [(IDSRegisteredDevice *)self pushToken];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (IDSRegisteredDevice)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"IDSRegisteredDeviceNameKey"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"IDSRegisteredDeviceHardwareVersionKey"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"IDSRegisteredDevicePushTokenKey"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v3 decodeObjectOfClasses:v9 forKey:@"IDSRegisteredDeviceURIsKey"];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v3 decodeObjectOfClasses:v13 forKey:@"IDSRegisteredDeviceLinkedURIsKey"];

  v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v16 = [v3 decodeObjectOfClasses:v15 forKey:@"IDSRegisteredDevicePublicDeviceIdentityKey"];

  v17 = [(IDSRegisteredDevice *)self initWithName:v4 hardwareVersion:v5 pushToken:v6 URIs:v10 linkedURIs:v14 publicDeviceIdentity:v16];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSRegisteredDevice *)self name];
  [v4 encodeObject:v5 forKey:@"IDSRegisteredDeviceNameKey"];

  v6 = [(IDSRegisteredDevice *)self hardwareVersion];
  [v4 encodeObject:v6 forKey:@"IDSRegisteredDeviceHardwareVersionKey"];

  v7 = [(IDSRegisteredDevice *)self pushToken];
  [v4 encodeObject:v7 forKey:@"IDSRegisteredDevicePushTokenKey"];

  v8 = [(IDSRegisteredDevice *)self URIs];
  [v4 encodeObject:v8 forKey:@"IDSRegisteredDeviceURIsKey"];

  v9 = [(IDSRegisteredDevice *)self linkedURIs];
  [v4 encodeObject:v9 forKey:@"IDSRegisteredDeviceLinkedURIsKey"];

  v10 = [(IDSRegisteredDevice *)self publicDeviceIdentity];
  [v4 encodeObject:v10 forKey:@"IDSRegisteredDevicePublicDeviceIdentityKey"];
}

@end