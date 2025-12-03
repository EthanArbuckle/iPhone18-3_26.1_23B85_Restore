@interface DAEndpoint
- (BOOL)matchesSelectedEndpoint:(id)endpoint allowName:(BOOL)name;
- (BOOL)sameDeviceAsEndpoint:(id)endpoint;
- (DADevice)parentDevice;
- (DAEndpoint)initWithPersistentDictionaryRepresentation:(id)representation error:(id *)error;
- (NSDictionary)persistentDictionaryRepresentation;
- (id)descriptionWithLevel:(int)level;
- (void)mergeMissingInfoFromEndpoint:(id)endpoint;
- (void)updateWithEndpoint:(id)endpoint;
@end

@implementation DAEndpoint

- (DAEndpoint)initWithPersistentDictionaryRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v22.receiver = self;
  v22.super_class = DAEndpoint;
  v7 = [(DAEndpoint *)&v22 init];
  if (v7)
  {
    CFStringGetTypeID();
    v8 = CFDictionaryGetTypedValue();
    airplayDeviceID = v7->_airplayDeviceID;
    v7->_airplayDeviceID = v8;

    CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    bonjourHostname = v7->_bonjourHostname;
    v7->_bonjourHostname = v10;

    CFStringGetTypeID();
    v12 = CFDictionaryGetTypedValue();
    identifier = v7->_identifier;
    v7->_identifier = v12;

    CFStringGetTypeID();
    v14 = CFDictionaryGetTypedValue();
    ipv4String = v7->_ipv4String;
    v7->_ipv4String = v14;

    CFStringGetTypeID();
    v16 = CFDictionaryGetTypedValue();
    name = v7->_name;
    v7->_name = v16;

    CFStringGetTypeID();
    v18 = CFDictionaryGetTypedValue();
    protocolTypeString = v7->_protocolTypeString;
    v7->_protocolTypeString = v18;

    v20 = v7;
  }

  else
  {
    [DADeviceAppAccessInfo initWithPersistentDictionaryRepresentation:error error:?];
  }

  return v7;
}

- (NSDictionary)persistentDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = v3;
  airplayDeviceID = self->_airplayDeviceID;
  if (airplayDeviceID)
  {
    [v3 setObject:airplayDeviceID forKeyedSubscript:@"airplayDeviceID"];
  }

  bonjourHostname = self->_bonjourHostname;
  if (bonjourHostname)
  {
    [v4 setObject:bonjourHostname forKeyedSubscript:@"bonjourHostname"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v4 setObject:identifier forKeyedSubscript:@"identifier"];
  }

  ipv4String = self->_ipv4String;
  if (ipv4String)
  {
    [v4 setObject:ipv4String forKeyedSubscript:@"ipv4String"];
  }

  name = self->_name;
  if (name)
  {
    [v4 setObject:name forKeyedSubscript:@"name"];
  }

  protocolTypeString = self->_protocolTypeString;
  if (protocolTypeString)
  {
    [v4 setObject:protocolTypeString forKeyedSubscript:@"protocolType"];
  }

  v11 = [v4 copy];

  return v11;
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    CUAppendF();
    v4 = 0;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    v32 = identifier;
    CUAppendF();
    v6 = v4;

    v4 = v6;
  }

  name = self->_name;
  if (name)
  {
    v33 = name;
    CUAppendF();
    v8 = v4;

    v4 = v8;
  }

  protocolTypeString = self->_protocolTypeString;
  if (protocolTypeString)
  {
    v34 = protocolTypeString;
    CUAppendF();
    v10 = v4;

    v4 = v10;
  }

  if (self->_selected)
  {
    CUAppendF();
    v11 = v4;

    v4 = v11;
  }

  if (self->_missing)
  {
    CUAppendF();
    v12 = v4;

    v4 = v12;
  }

  airplayDeviceID = self->_airplayDeviceID;
  if (airplayDeviceID)
  {
    v35 = airplayDeviceID;
    CUAppendF();
    v14 = v4;

    v4 = v14;
  }

  bonjourFullName = self->_bonjourFullName;
  if (bonjourFullName)
  {
    v36 = bonjourFullName;
    CUAppendF();
    v16 = v4;

    v4 = v16;
  }

  bonjourHostname = self->_bonjourHostname;
  if (bonjourHostname)
  {
    v37 = bonjourHostname;
    CUAppendF();
    v18 = v4;

    v4 = v18;
  }

  bonjourName = self->_bonjourName;
  if (bonjourName)
  {
    v38 = bonjourName;
    CUAppendF();
    v20 = v4;

    v4 = v20;
  }

  bonjourType = self->_bonjourType;
  if (bonjourType)
  {
    v39 = bonjourType;
    CUAppendF();
    v22 = v4;

    v4 = v22;
  }

  if (self->_bonjourInterfaceIndex)
  {
    bonjourInterfaceIndex = self->_bonjourInterfaceIndex;
    CUAppendF();
    v23 = v4;

    v4 = v23;
  }

  ipv4String = self->_ipv4String;
  if (ipv4String)
  {
    v25 = ipv4String;
    v41 = CUPrintNSObjectOneLine();
    CUAppendF();
    v26 = v4;

    v4 = v26;
  }

  underlyingDADevice = self->_underlyingDADevice;
  if (underlyingDADevice)
  {
    v42 = underlyingDADevice;
    CUAppendF();
    v28 = v4;

    v4 = v28;
  }

  v29 = &stru_285B4C350;
  if (v4)
  {
    v29 = v4;
  }

  v30 = v29;

  return v30;
}

- (BOOL)matchesSelectedEndpoint:(id)endpoint allowName:(BOOL)name
{
  nameCopy = name;
  endpointCopy = endpoint;
  protocolTypeString = self->_protocolTypeString;
  protocolTypeString = [endpointCopy protocolTypeString];
  LODWORD(protocolTypeString) = [(NSString *)protocolTypeString isEqual:protocolTypeString];

  if (protocolTypeString)
  {
    airplayDeviceID = self->_airplayDeviceID;
    airplayDeviceID = [endpointCopy airplayDeviceID];
    LOBYTE(airplayDeviceID) = [(NSString *)airplayDeviceID isEqual:airplayDeviceID];

    if (airplayDeviceID & 1) != 0 || (bonjourHostname = self->_bonjourHostname, [endpointCopy bonjourHostname], v12 = objc_claimAutoreleasedReturnValue(), LOBYTE(bonjourHostname) = -[NSString isEqual:](bonjourHostname, "isEqual:", v12), v12, (bonjourHostname))
    {
      LOBYTE(protocolTypeString) = 1;
    }

    else
    {
      protocolTypeString = self->_ipv4String;
      ipv4String = [endpointCopy ipv4String];
      LOBYTE(protocolTypeString) = [(NSString *)protocolTypeString isEqual:ipv4String];

      if ((protocolTypeString & 1) == 0 && nameCopy)
      {
        name = self->_name;
        name = [endpointCopy name];
        LOBYTE(protocolTypeString) = [(NSString *)name isEqual:name];
      }
    }
  }

  return protocolTypeString;
}

- (void)mergeMissingInfoFromEndpoint:(id)endpoint
{
  airplayDeviceID = [endpoint airplayDeviceID];
  v5 = airplayDeviceID;
  if (airplayDeviceID)
  {
    airplayDeviceID = self->_airplayDeviceID;
    p_airplayDeviceID = &self->_airplayDeviceID;
    if (!airplayDeviceID)
    {
      v8 = airplayDeviceID;
      objc_storeStrong(p_airplayDeviceID, airplayDeviceID);
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](airplayDeviceID, v5);
}

- (BOOL)sameDeviceAsEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  airplayDeviceID = self->_airplayDeviceID;
  airplayDeviceID = [endpointCopy airplayDeviceID];
  LOBYTE(airplayDeviceID) = [(NSString *)airplayDeviceID isEqual:airplayDeviceID];

  if (airplayDeviceID)
  {
    v7 = 1;
  }

  else if (self->_protocolTypeString && ([endpointCopy protocolTypeString], v8 = objc_claimAutoreleasedReturnValue(), v8, v8) && (objc_msgSend(endpointCopy, "protocolTypeString"), v9 = objc_claimAutoreleasedReturnValue(), v10 = -[NSString isEqualToString:](self->_protocolTypeString, "isEqualToString:", v9), v9, v10))
  {
    v7 = 0;
  }

  else
  {
    v11 = self->_bonjourHostname;
    bonjourHostname = [endpointCopy bonjourHostname];
    v13 = bonjourHostname;
    if (v11 && bonjourHostname && [(NSString *)v11 caseInsensitiveCompare:bonjourHostname]== NSOrderedSame)
    {
      v7 = 1;
    }

    else
    {
      v14 = self->_ipv4String;
      ipv4String = [endpointCopy ipv4String];
      v16 = ipv4String;
      v7 = v14 && ipv4String && [(NSString *)v14 caseInsensitiveCompare:ipv4String]== NSOrderedSame;
    }
  }

  return v7;
}

- (void)updateWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  airplayDeviceID = [endpointCopy airplayDeviceID];
  v5 = airplayDeviceID;
  if (airplayDeviceID)
  {
    v6 = [airplayDeviceID copy];
    airplayDeviceID = self->_airplayDeviceID;
    self->_airplayDeviceID = v6;
  }

  bonjourFullName = [endpointCopy bonjourFullName];
  v9 = bonjourFullName;
  if (bonjourFullName)
  {
    v10 = [bonjourFullName copy];
    bonjourFullName = self->_bonjourFullName;
    self->_bonjourFullName = v10;
  }

  bonjourHostname = [endpointCopy bonjourHostname];
  v13 = bonjourHostname;
  if (bonjourHostname)
  {
    v14 = [bonjourHostname copy];
    bonjourHostname = self->_bonjourHostname;
    self->_bonjourHostname = v14;
  }

  bonjourName = [endpointCopy bonjourName];
  v17 = bonjourName;
  if (bonjourName)
  {
    v18 = [bonjourName copy];
    bonjourName = self->_bonjourName;
    self->_bonjourName = v18;
  }

  bonjourType = [endpointCopy bonjourType];
  v21 = bonjourType;
  if (bonjourType)
  {
    v22 = [bonjourType copy];
    bonjourType = self->_bonjourType;
    self->_bonjourType = v22;
  }

  self->_bonjourInterfaceIndex = [endpointCopy bonjourInterfaceIndex];
  identifier = [endpointCopy identifier];
  v25 = identifier;
  if (identifier)
  {
    v26 = [identifier copy];
    identifier = self->_identifier;
    self->_identifier = v26;
  }

  ipv4String = [endpointCopy ipv4String];
  v29 = ipv4String;
  if (ipv4String)
  {
    v30 = [ipv4String copy];
    ipv4String = self->_ipv4String;
    self->_ipv4String = v30;
  }

  v47 = v17;
  name = [endpointCopy name];
  v33 = name;
  if (name)
  {
    v34 = [name copy];
    name = self->_name;
    self->_name = v34;
  }

  v36 = v13;
  v48 = v5;
  protocolTypeString = [endpointCopy protocolTypeString];
  v38 = protocolTypeString;
  if (protocolTypeString)
  {
    v39 = [protocolTypeString copy];
    protocolTypeString = self->_protocolTypeString;
    self->_protocolTypeString = v39;
  }

  v41 = v9;
  underlyingDADevice = [endpointCopy underlyingDADevice];
  if (underlyingDADevice)
  {
    objc_storeStrong(&self->_underlyingDADevice, underlyingDADevice);
  }

  userInfo = [endpointCopy userInfo];
  v44 = userInfo;
  if (userInfo)
  {
    v45 = [userInfo copy];
    userInfo = self->_userInfo;
    self->_userInfo = v45;
  }
}

- (DADevice)parentDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_parentDevice);

  return WeakRetained;
}

@end