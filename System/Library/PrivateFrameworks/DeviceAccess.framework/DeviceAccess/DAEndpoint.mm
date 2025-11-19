@interface DAEndpoint
- (BOOL)matchesSelectedEndpoint:(id)a3 allowName:(BOOL)a4;
- (BOOL)sameDeviceAsEndpoint:(id)a3;
- (DADevice)parentDevice;
- (DAEndpoint)initWithPersistentDictionaryRepresentation:(id)a3 error:(id *)a4;
- (NSDictionary)persistentDictionaryRepresentation;
- (id)descriptionWithLevel:(int)a3;
- (void)mergeMissingInfoFromEndpoint:(id)a3;
- (void)updateWithEndpoint:(id)a3;
@end

@implementation DAEndpoint

- (DAEndpoint)initWithPersistentDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
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
    [DADeviceAppAccessInfo initWithPersistentDictionaryRepresentation:a4 error:?];
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

- (id)descriptionWithLevel:(int)a3
{
  if ((a3 & 0x8000000) != 0)
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

- (BOOL)matchesSelectedEndpoint:(id)a3 allowName:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  protocolTypeString = self->_protocolTypeString;
  v7 = [v6 protocolTypeString];
  LODWORD(protocolTypeString) = [(NSString *)protocolTypeString isEqual:v7];

  if (protocolTypeString)
  {
    airplayDeviceID = self->_airplayDeviceID;
    v10 = [v6 airplayDeviceID];
    LOBYTE(airplayDeviceID) = [(NSString *)airplayDeviceID isEqual:v10];

    if (airplayDeviceID & 1) != 0 || (bonjourHostname = self->_bonjourHostname, [v6 bonjourHostname], v12 = objc_claimAutoreleasedReturnValue(), LOBYTE(bonjourHostname) = -[NSString isEqual:](bonjourHostname, "isEqual:", v12), v12, (bonjourHostname))
    {
      LOBYTE(protocolTypeString) = 1;
    }

    else
    {
      protocolTypeString = self->_ipv4String;
      v14 = [v6 ipv4String];
      LOBYTE(protocolTypeString) = [(NSString *)protocolTypeString isEqual:v14];

      if ((protocolTypeString & 1) == 0 && v4)
      {
        name = self->_name;
        v16 = [v6 name];
        LOBYTE(protocolTypeString) = [(NSString *)name isEqual:v16];
      }
    }
  }

  return protocolTypeString;
}

- (void)mergeMissingInfoFromEndpoint:(id)a3
{
  v4 = [a3 airplayDeviceID];
  v5 = v4;
  if (v4)
  {
    airplayDeviceID = self->_airplayDeviceID;
    p_airplayDeviceID = &self->_airplayDeviceID;
    if (!airplayDeviceID)
    {
      v8 = v4;
      objc_storeStrong(p_airplayDeviceID, v4);
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (BOOL)sameDeviceAsEndpoint:(id)a3
{
  v4 = a3;
  airplayDeviceID = self->_airplayDeviceID;
  v6 = [v4 airplayDeviceID];
  LOBYTE(airplayDeviceID) = [(NSString *)airplayDeviceID isEqual:v6];

  if (airplayDeviceID)
  {
    v7 = 1;
  }

  else if (self->_protocolTypeString && ([v4 protocolTypeString], v8 = objc_claimAutoreleasedReturnValue(), v8, v8) && (objc_msgSend(v4, "protocolTypeString"), v9 = objc_claimAutoreleasedReturnValue(), v10 = -[NSString isEqualToString:](self->_protocolTypeString, "isEqualToString:", v9), v9, v10))
  {
    v7 = 0;
  }

  else
  {
    v11 = self->_bonjourHostname;
    v12 = [v4 bonjourHostname];
    v13 = v12;
    if (v11 && v12 && [(NSString *)v11 caseInsensitiveCompare:v12]== NSOrderedSame)
    {
      v7 = 1;
    }

    else
    {
      v14 = self->_ipv4String;
      v15 = [v4 ipv4String];
      v16 = v15;
      v7 = v14 && v15 && [(NSString *)v14 caseInsensitiveCompare:v15]== NSOrderedSame;
    }
  }

  return v7;
}

- (void)updateWithEndpoint:(id)a3
{
  v49 = a3;
  v4 = [v49 airplayDeviceID];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 copy];
    airplayDeviceID = self->_airplayDeviceID;
    self->_airplayDeviceID = v6;
  }

  v8 = [v49 bonjourFullName];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 copy];
    bonjourFullName = self->_bonjourFullName;
    self->_bonjourFullName = v10;
  }

  v12 = [v49 bonjourHostname];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 copy];
    bonjourHostname = self->_bonjourHostname;
    self->_bonjourHostname = v14;
  }

  v16 = [v49 bonjourName];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 copy];
    bonjourName = self->_bonjourName;
    self->_bonjourName = v18;
  }

  v20 = [v49 bonjourType];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 copy];
    bonjourType = self->_bonjourType;
    self->_bonjourType = v22;
  }

  self->_bonjourInterfaceIndex = [v49 bonjourInterfaceIndex];
  v24 = [v49 identifier];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 copy];
    identifier = self->_identifier;
    self->_identifier = v26;
  }

  v28 = [v49 ipv4String];
  v29 = v28;
  if (v28)
  {
    v30 = [v28 copy];
    ipv4String = self->_ipv4String;
    self->_ipv4String = v30;
  }

  v47 = v17;
  v32 = [v49 name];
  v33 = v32;
  if (v32)
  {
    v34 = [v32 copy];
    name = self->_name;
    self->_name = v34;
  }

  v36 = v13;
  v48 = v5;
  v37 = [v49 protocolTypeString];
  v38 = v37;
  if (v37)
  {
    v39 = [v37 copy];
    protocolTypeString = self->_protocolTypeString;
    self->_protocolTypeString = v39;
  }

  v41 = v9;
  v42 = [v49 underlyingDADevice];
  if (v42)
  {
    objc_storeStrong(&self->_underlyingDADevice, v42);
  }

  v43 = [v49 userInfo];
  v44 = v43;
  if (v43)
  {
    v45 = [v43 copy];
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