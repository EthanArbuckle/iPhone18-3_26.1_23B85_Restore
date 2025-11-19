@interface CCRapportDevice
- (BOOL)isEqual:(id)a3;
- (CCRapportDevice)initWithCoder:(id)a3;
- (CCRapportDevice)initWithRPCompanionLinkDevice:(id)a3;
- (NSArray)serviceTypes;
- (id)description;
- (id)model;
- (id)name;
- (id)prefix;
- (int64_t)platform;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)handleInvalidationWithError:(id)a3;
- (void)invalidateClientWithError:(id)a3;
@end

@implementation CCRapportDevice

- (CCRapportDevice)initWithRPCompanionLinkDevice:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CCRapportDevice;
  v6 = [(CCRapportDevice *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = [v5 CC_companionLinkDeviceIdentifier];
    rapportIdentifier = v7->_rapportIdentifier;
    v7->_rapportIdentifier = v8;

    v10 = [MEMORY[0x1E695DF70] array];
    requestQueue = v7->_requestQueue;
    v7->_requestQueue = v10;
  }

  return v7;
}

- (id)prefix
{
  v3 = [(CCRapportDevice *)self rapportIdentifier];
  if ([v3 length] >= 9)
  {
    v4 = [v3 substringToIndex:8];

    v3 = v4;
  }

  v5 = MEMORY[0x1E696AEC0];
  [(CCRapportDevice *)self platform];
  v6 = BMDevicePlatformToString();
  v7 = [v5 stringWithFormat:@"%@[%@]", v6, v3];

  return v7;
}

- (id)name
{
  v2 = [(CCRapportDevice *)self device];
  v3 = [v2 name];

  return v3;
}

- (id)model
{
  v2 = [(CCRapportDevice *)self device];
  v3 = [v2 model];

  return v3;
}

- (NSArray)serviceTypes
{
  v2 = [(CCRapportDevice *)self device];
  v3 = [v2 serviceTypes];

  return v3;
}

- (int64_t)platform
{
  v2 = [(CCRapportDevice *)self device];
  v3 = [v2 model];
  v4 = BMDevicePlatformFromModelString();

  return v4;
}

- (void)invalidateClientWithError:(id)a3
{
  client = self->_client;
  if (client)
  {
    v6 = a3;
    v5 = [(RPCompanionLinkClient *)client dispatchQueue];
    dispatch_assert_queue_V2(v5);

    [(RPCompanionLinkClient *)self->_client setInvalidationHandler:0];
    [(RPCompanionLinkClient *)self->_client invalidate];
    [(CCRapportDevice *)self handleInvalidationWithError:v6];
  }
}

- (void)handleInvalidationWithError:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  client = self->_client;
  if (client)
  {
    v6 = [(RPCompanionLinkClient *)client dispatchQueue];
    dispatch_assert_queue_V2(v6);

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = self;
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
            if (v4)
            {
              (*(v12 + 16))(v12, 0, 0, v4);
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

    [(NSMutableArray *)v18->_requestQueue removeAllObjects];
    v15 = v18->_client;
    v18->_client = 0;

    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [CCRapportDevice handleInvalidationWithError:v18];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 rapportIdentifier];
    v6 = [(CCRapportDevice *)self rapportIdentifier];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(CCRapportDevice *)self rapportIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(CCRapportDevice *)self prefix];
  v5 = [(CCRapportDevice *)self device];
  v6 = [(CCRapportDevice *)self cascadeDeviceUUID];
  if (v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [(CCRapportDevice *)self cascadeDeviceUUID];
    v9 = [v7 stringWithFormat:@" CascadeDeviceUUID: %@", v8];
    v10 = [v3 initWithFormat:@"%@: %@%@", v4, v5, v9];
  }

  else
  {
    v10 = [v3 initWithFormat:@"%@: %@%@", v4, v5, &stru_1F55F1328];
  }

  return v10;
}

- (CCRapportDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"device"];

  v6 = [(CCRapportDevice *)self initWithRPCompanionLinkDevice:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CCRapportDevice *)self device];
  [v4 encodeObject:v5 forKey:@"device"];
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