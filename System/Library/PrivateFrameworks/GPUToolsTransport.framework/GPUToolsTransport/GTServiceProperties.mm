@interface GTServiceProperties
+ (id)protocolMethods:(id)a3;
- (GTServiceProperties)initWithCoder:(id)a3;
- (GTServiceProperties)initWithProtocol:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTServiceProperties

+ (id)protocolMethods:(id)a3
{
  v3 = a3;
  outCount = 0;
  v4 = protocol_copyMethodDescriptionList(v3, 1, 1, &outCount);
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v6 = [v5 initWithCapacity:outCount];
  if (outCount)
  {
    v7 = 0;
    p_name = &v4->name;
    do
    {
      v9 = *p_name;
      p_name += 2;
      v10 = NSStringFromSelector(v9);
      [v6 addObject:v10];

      ++v7;
    }

    while (v7 < outCount);
  }

  free(v4);
  v11 = protocol_copyProtocolList(v3, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v13 = [GTServiceProperties protocolMethods:v11[i]];
      [v6 addObjectsFromArray:v13];
    }
  }

  free(v11);
  v14 = [v6 copy];

  return v14;
}

- (GTServiceProperties)initWithProtocol:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GTServiceProperties;
  v5 = [(GTServiceProperties *)&v12 init];
  if (v5)
  {
    v6 = NSStringFromProtocol(v4);
    protocolName = v5->_protocolName;
    v5->_protocolName = v6;

    v8 = [GTServiceProperties protocolMethods:v4];
    protocolMethods = v5->_protocolMethods;
    v5->_protocolMethods = v8;

    deviceUDID = v5->_deviceUDID;
    v5->_deviceUDID = 0;

    v5->_platform = GTCoreLogUseOsLog();
    v5->_version = 0;
  }

  return v5;
}

- (GTServiceProperties)initWithCoder:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = GTServiceProperties;
  v5 = [(GTServiceProperties *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protocolName"];
    protocolName = v5->_protocolName;
    v5->_protocolName = v6;

    if (v5->_protocolName)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = v5->_protocolName;
        v5->_protocolName = 0;
      }
    }

    v9 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"protocolMethods"];
    protocolMethods = v5->_protocolMethods;
    v5->_protocolMethods = v9;

    if (v5->_protocolMethods)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = v5->_protocolMethods;
        v12 = [(NSArray *)v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v24;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v24 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v23 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v17 = v5->_protocolMethods;
                v5->_protocolMethods = 0;

                goto LABEL_18;
              }
            }

            v13 = [(NSArray *)v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
        v11 = v5->_protocolMethods;
        v5->_protocolMethods = 0;
      }

LABEL_18:
    }

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceUDID"];
    deviceUDID = v5->_deviceUDID;
    v5->_deviceUDID = v18;

    if (v5->_deviceUDID)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = v5->_deviceUDID;
        v5->_deviceUDID = 0;
      }
    }

    v5->_servicePort = [v4 decodeInt64ForKey:{@"servicePort", v23}];
    v5->_platform = [v4 decodeInt64ForKey:@"platform"];
    v5->_version = [v4 decodeInt64ForKey:@"version"];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  protocolName = self->_protocolName;
  v5 = a3;
  [v5 encodeObject:protocolName forKey:@"protocolName"];
  [v5 encodeObject:self->_protocolMethods forKey:@"protocolMethods"];
  [v5 encodeInt64:self->_servicePort forKey:@"servicePort"];
  [v5 encodeInt64:self->_platform forKey:@"platform"];
  [v5 encodeObject:self->_deviceUDID forKey:@"deviceUDID"];
  [v5 encodeInt64:self->_version forKey:@"version"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(GTServiceProperties);
  [(GTServiceProperties *)v4 setProtocolName:self->_protocolName];
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_protocolMethods copyItems:1];
  [(GTServiceProperties *)v4 setProtocolMethods:v5];

  [(GTServiceProperties *)v4 setServicePort:self->_servicePort];
  [(GTServiceProperties *)v4 setPlatform:self->_platform];
  [(GTServiceProperties *)v4 setDeviceUDID:self->_deviceUDID];
  [(GTServiceProperties *)v4 setVersion:self->_version];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  deviceUDID = self->_deviceUDID;
  v7 = [v3 stringWithFormat:@"<%@: protocolName=%@ protocolMethods=%@ servicePort=%llu platform=%u deviceUDID=%@ version=%llu>", v5, self->_protocolName, self->_protocolMethods, self->_servicePort, self->_platform, deviceUDID, self->_version];

  return v7;
}

@end