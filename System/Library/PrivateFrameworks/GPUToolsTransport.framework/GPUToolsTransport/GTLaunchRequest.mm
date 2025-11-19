@interface GTLaunchRequest
- (GTLaunchRequest)init;
- (GTLaunchRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTLaunchRequest

- (GTLaunchRequest)init
{
  v16.receiver = self;
  v16.super_class = GTLaunchRequest;
  v2 = [(GTLaunchRequest *)&v16 init];
  v3 = v2;
  if (v2)
  {
    environment = v2->_environment;
    v2->_environment = MEMORY[0x277CBEC10];

    arguments = v3->_arguments;
    v3->_arguments = MEMORY[0x277CBEBF8];

    v6 = +[GTDeviceProperties uniqueDeviceID];
    deviceUDID = v3->_deviceUDID;
    v3->_deviceUDID = v6;

    v8 = [MEMORY[0x277CCAD78] UUID];
    sessionUUID = v3->_sessionUUID;
    v3->_sessionUUID = v8;

    v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v11 = [v10 objectForKey:@"GPUToolsReplayerPreferXPCService"];

    if (v11)
    {
      v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v13 = [v12 BOOLForKey:@"GPUToolsReplayerPreferXPCService"];
    }

    else
    {
      v13 = 1;
    }

    v3->_preferXPCService = v13;
    v3->_disableDisplay = 0;
    v14 = v3;
  }

  return v3;
}

- (GTLaunchRequest)initWithCoder:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v47.receiver = self;
  v47.super_class = GTLaunchRequest;
  v5 = [(GTLaunchRequest *)&v47 init];
  if (!v5)
  {
    goto LABEL_39;
  }

  v6 = objc_opt_class();
  v7 = [v4 decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"environment"];
  environment = v5->_environment;
  v5->_environment = v7;

  v9 = v5->_environment;
  if (!v9)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = v5->_environment;
LABEL_15:
    v5->_environment = MEMORY[0x277CBEC10];
    goto LABEL_18;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v9 = v5->_environment;
  v10 = [(NSDictionary *)v9 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v44;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v43 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v16 = v5->_environment;
        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_17;
        }

        v17 = [(NSDictionary *)v16 objectForKeyedSubscript:v14];
        objc_opt_class();
        v18 = objc_opt_isKindOfClass();

        if ((v18 & 1) == 0)
        {
          v16 = v5->_environment;
LABEL_17:
          v5->_environment = MEMORY[0x277CBEC10];

          goto LABEL_18;
        }
      }

      v11 = [(NSDictionary *)v9 countByEnumeratingWithState:&v43 objects:v49 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v19 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"arguments"];
  arguments = v5->_arguments;
  v5->_arguments = v19;

  v21 = v5->_arguments;
  if (v21)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v21 = v5->_arguments;
      v22 = [(NSArray *)v21 countByEnumeratingWithState:&v39 objects:v48 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v40;
        while (2)
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v40 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v39 + 1) + 8 * j);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v27 = v5->_arguments;
              v5->_arguments = MEMORY[0x277CBEBF8];

              goto LABEL_32;
            }
          }

          v23 = [(NSArray *)v21 countByEnumeratingWithState:&v39 objects:v48 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_32;
    }

    v21 = v5->_arguments;
  }

  v5->_arguments = MEMORY[0x277CBEBF8];
LABEL_32:

  v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceUDID"];
  deviceUDID = v5->_deviceUDID;
  v5->_deviceUDID = v28;

  if (!v5->_deviceUDID || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v30 = +[GTDeviceProperties uniqueDeviceID];
    v31 = v5->_deviceUDID;
    v5->_deviceUDID = v30;
  }

  v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionUUID"];
  sessionUUID = v5->_sessionUUID;
  v5->_sessionUUID = v32;

  if (!v5->_sessionUUID || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v34 = [MEMORY[0x277CCAD78] UUID];
    v35 = v5->_sessionUUID;
    v5->_sessionUUID = v34;
  }

  v5->_preferXPCService = [v4 decodeInt64ForKey:{@"preferXPCService", v39}] != 0;
  v5->_disableDisplay = [v4 decodeInt64ForKey:@"disableDisplay"] != 0;
  v36 = v5;
LABEL_39:

  v37 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  environment = self->_environment;
  v5 = a3;
  [v5 encodeObject:environment forKey:@"environment"];
  [v5 encodeObject:self->_arguments forKey:@"arguments"];
  [v5 encodeObject:self->_deviceUDID forKey:@"deviceUDID"];
  [v5 encodeObject:self->_sessionUUID forKey:@"sessionUUID"];
  [v5 encodeInt64:self->_preferXPCService forKey:@"preferXPCService"];
  [v5 encodeInt64:self->_disableDisplay forKey:@"disableDisplay"];
}

@end