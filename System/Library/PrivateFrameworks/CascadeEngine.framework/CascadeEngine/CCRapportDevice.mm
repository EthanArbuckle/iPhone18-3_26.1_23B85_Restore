@interface CCRapportDevice
- (BOOL)isEqual:(id)equal;
- (CCRapportDevice)initWithCoder:(id)coder;
- (CCRapportDevice)initWithRPCompanionLinkDevice:(id)device;
- (NSArray)serviceTypes;
- (id)description;
- (id)model;
- (id)name;
- (id)prefix;
- (int64_t)platform;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)handleInvalidationWithError:(id)error;
- (void)invalidateClientWithError:(id)error;
@end

@implementation CCRapportDevice

- (CCRapportDevice)initWithRPCompanionLinkDevice:(id)device
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = CCRapportDevice;
  v6 = [(CCRapportDevice *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    cC_companionLinkDeviceIdentifier = [deviceCopy CC_companionLinkDeviceIdentifier];
    rapportIdentifier = v7->_rapportIdentifier;
    v7->_rapportIdentifier = cC_companionLinkDeviceIdentifier;

    array = [MEMORY[0x1E695DF70] array];
    requestQueue = v7->_requestQueue;
    v7->_requestQueue = array;
  }

  return v7;
}

- (id)prefix
{
  rapportIdentifier = [(CCRapportDevice *)self rapportIdentifier];
  if ([rapportIdentifier length] >= 9)
  {
    v4 = [rapportIdentifier substringToIndex:8];

    rapportIdentifier = v4;
  }

  v5 = MEMORY[0x1E696AEC0];
  [(CCRapportDevice *)self platform];
  v6 = BMDevicePlatformToString();
  v7 = [v5 stringWithFormat:@"%@[%@]", v6, rapportIdentifier];

  return v7;
}

- (id)name
{
  device = [(CCRapportDevice *)self device];
  name = [device name];

  return name;
}

- (id)model
{
  device = [(CCRapportDevice *)self device];
  model = [device model];

  return model;
}

- (NSArray)serviceTypes
{
  device = [(CCRapportDevice *)self device];
  serviceTypes = [device serviceTypes];

  return serviceTypes;
}

- (int64_t)platform
{
  device = [(CCRapportDevice *)self device];
  model = [device model];
  v4 = BMDevicePlatformFromModelString();

  return v4;
}

- (void)invalidateClientWithError:(id)error
{
  client = self->_client;
  if (client)
  {
    errorCopy = error;
    dispatchQueue = [(RPCompanionLinkClient *)client dispatchQueue];
    dispatch_assert_queue_V2(dispatchQueue);

    [(RPCompanionLinkClient *)self->_client setInvalidationHandler:0];
    [(RPCompanionLinkClient *)self->_client invalidate];
    [(CCRapportDevice *)self handleInvalidationWithError:errorCopy];
  }
}

- (void)handleInvalidationWithError:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  client = self->_client;
  if (client)
  {
    dispatchQueue = [(RPCompanionLinkClient *)client dispatchQueue];
    dispatch_assert_queue_V2(dispatchQueue);

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    selfCopy = self;
    v7 = self->_requestQueue;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v19 + 1) + 8 * i) objectForKeyedSubscript:@"~~RESPONSE_HANDLER~~"];
          v13 = v12;
          if (v12)
          {
            if (errorCopy)
            {
              (*(v12 + 16))(v12, 0, 0, errorCopy);
            }

            else
            {
              v14 = [MEMORY[0x1E696ABC0] errorWithDomain:0x1F55F1468 code:0 userInfo:0];
              (v13)[2](v13, 0, 0, v14);
            }
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [(NSMutableArray *)selfCopy->_requestQueue removeAllObjects];
    v15 = selfCopy->_client;
    selfCopy->_client = 0;

    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [CCRapportDevice handleInvalidationWithError:selfCopy];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    rapportIdentifier = [equalCopy rapportIdentifier];
    rapportIdentifier2 = [(CCRapportDevice *)self rapportIdentifier];
    v7 = [rapportIdentifier isEqual:rapportIdentifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  rapportIdentifier = [(CCRapportDevice *)self rapportIdentifier];
  v3 = [rapportIdentifier hash];

  return v3;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  prefix = [(CCRapportDevice *)self prefix];
  device = [(CCRapportDevice *)self device];
  cascadeDeviceUUID = [(CCRapportDevice *)self cascadeDeviceUUID];
  if (cascadeDeviceUUID)
  {
    v7 = MEMORY[0x1E696AEC0];
    cascadeDeviceUUID2 = [(CCRapportDevice *)self cascadeDeviceUUID];
    v9 = [v7 stringWithFormat:@" CascadeDeviceUUID: %@", cascadeDeviceUUID2];
    v10 = [v3 initWithFormat:@"%@: %@%@", prefix, device, v9];
  }

  else
  {
    v10 = [v3 initWithFormat:@"%@: %@%@", prefix, device, &stru_1F55F1328];
  }

  return v10;
}

- (CCRapportDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"device"];

  v6 = [(CCRapportDevice *)self initWithRPCompanionLinkDevice:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  device = [(CCRapportDevice *)self device];
  [coderCopy encodeObject:device forKey:@"device"];
}

- (void)handleInvalidationWithError:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 prefix];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

@end