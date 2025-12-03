@interface CCDatabaseDeviceMapping
+ (BOOL)_validateSiteIdentifier:(id)identifier outFormat:(unsigned __int8 *)format error:(id *)error;
+ (id)decodeAttestationGenerationFromSiteIdentifier:(id)identifier error:(id *)error;
+ (id)decodeDeviceUUIDFromSiteIdentifier:(id)identifier error:(id *)error;
+ (id)decodeResourceGenerationFromSiteIdentifier:(id)identifier error:(id *)error;
+ (id)descriptionForSiteIdentifier:(id)identifier;
+ (id)dictionaryFromSiteIdentifier:(id)identifier error:(id *)error;
+ (id)encodeSiteIdentifierWithFormat:(unsigned __int8)format fromDeviceRecord:(id)record error:(id *)error;
+ (unsigned)decodeFormatFromSiteIdentifier:(id)identifier error:(id *)error;
- (CCDatabaseDeviceMapping)initWithDeviceRecords:(id)records siteIdentifierFormat:(unsigned __int8)format error:(id *)error;
- (id)activeDeviceSiteWithDeviceUUID:(id)d;
- (id)allActiveDeviceSites;
- (id)description;
- (id)deviceForDeviceRowId:(id)id;
- (id)deviceRecordForDeviceRowId:(id)id;
- (id)deviceRowIdForDeviceSite:(id)site;
- (id)siteIdentifierForDeviceRowId:(id)id;
@end

@implementation CCDatabaseDeviceMapping

- (CCDatabaseDeviceMapping)initWithDeviceRecords:(id)records siteIdentifierFormat:(unsigned __int8)format error:(id *)error
{
  formatCopy = format;
  v41 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v39.receiver = self;
  v39.super_class = CCDatabaseDeviceMapping;
  v7 = [(CCDatabaseDeviceMapping *)&v39 init];
  if (v7)
  {
    if (!recordsCopy)
    {
      v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CascadeSets.CCDatabaseDeviceMapping" code:5 userInfo:0];
      CCSetError(error, v28);

      v27 = 0;
      goto LABEL_19;
    }

    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(recordsCopy, "count")}];
    deviceRowIdMap = v7->_deviceRowIdMap;
    v7->_deviceRowIdMap = v8;

    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(recordsCopy, "count")}];
    siteIdentifierMap = v7->_siteIdentifierMap;
    v7->_siteIdentifierMap = v10;

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = recordsCopy;
    v12 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      v31 = recordsCopy;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v35 + 1) + 8 * v15);
          v17 = [objc_opt_class() encodeSiteIdentifierWithFormat:formatCopy fromDeviceRecord:v16 error:error];
          if (!v17)
          {
            goto LABEL_18;
          }

          v18 = v17;
          v19 = [CCDeviceSite deviceSiteFromRecord:v16];
          if (!v19)
          {

LABEL_18:
            v27 = 0;
            recordsCopy = v31;
            goto LABEL_19;
          }

          v20 = v19;
          device = [v19 device];
          isLocal = [device isLocal];

          if (isLocal)
          {
            objc_storeStrong(&v7->_localDeviceSite, v20);
          }

          v23 = [MEMORY[0x1E69C5D98] tupleWithFirst:v16 second:{v20, v31}];
          deviceRowId = [v16 deviceRowId];
          v25 = v7->_deviceRowIdMap;
          v26 = [MEMORY[0x1E69C5D98] tupleWithFirst:v18 second:v23];
          [(NSMutableDictionary *)v25 setObject:v26 forKey:deviceRowId];

          [(NSMutableDictionary *)v7->_siteIdentifierMap setObject:deviceRowId forKey:v18];
          ++v15;
        }

        while (v13 != v15);
        v13 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
        recordsCopy = v31;
        if (v13)
        {
          continue;
        }

        break;
      }
    }
  }

  v27 = v7;
LABEL_19:

  v29 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CCDatabaseDeviceMapping;
  v3 = [(CCDatabaseDeviceMapping *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" %@", self->_deviceRowIdMap];

  return v4;
}

- (id)deviceRecordForDeviceRowId:(id)id
{
  v3 = [(NSMutableDictionary *)self->_deviceRowIdMap objectForKey:id];
  second = [v3 second];
  first = [second first];

  return first;
}

- (id)deviceForDeviceRowId:(id)id
{
  v3 = [(NSMutableDictionary *)self->_deviceRowIdMap objectForKey:id];
  second = [v3 second];
  v4Second = [second second];
  device = [v4Second device];

  return device;
}

- (id)siteIdentifierForDeviceRowId:(id)id
{
  v3 = [(NSMutableDictionary *)self->_deviceRowIdMap objectForKey:id];
  first = [v3 first];

  return first;
}

- (id)deviceRowIdForDeviceSite:(id)site
{
  v22 = *MEMORY[0x1E69E9840];
  siteCopy = site;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [(NSMutableDictionary *)self->_deviceRowIdMap allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_deviceRowIdMap objectForKey:v10];
        second = [v11 second];
        v12Second = [second second];

        if ([siteCopy isEqual:v12Second])
        {
          v14 = v10;

          goto LABEL_11;
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)allActiveDeviceSites
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues = [(NSMutableDictionary *)self->_deviceRowIdMap allValues];
  v5 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        second = [v9 second];
        first = [second first];

        if (([first recordOptions] & 2) == 0)
        {
          second2 = [v9 second];
          v12Second = [second2 second];

          if (v12Second)
          {
            [v3 addObject:v12Second];
          }
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)activeDeviceSiteWithDeviceUUID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allValues = [(NSMutableDictionary *)self->_deviceRowIdMap allValues];
  v6 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        second = [v10 second];
        first = [second first];

        if (([first recordOptions] & 2) == 0)
        {
          second2 = [v10 second];
          v13Second = [second2 second];

          device = [v13Second device];
          deviceUUID = [device deviceUUID];
          v17 = [deviceUUID isEqual:dCopy];

          if (v17)
          {

            goto LABEL_13;
          }
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13Second = 0;
LABEL_13:

  v18 = *MEMORY[0x1E69E9840];

  return v13Second;
}

+ (id)encodeSiteIdentifierWithFormat:(unsigned __int8)format fromDeviceRecord:(id)record error:(id *)error
{
  formatCopy = format;
  recordCopy = record;
  v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
  [v7 appendBytes:&formatCopy length:1];
  if (formatCopy != 2)
  {
    if (formatCopy != 1)
    {
      v24 = _unsupportedFormatError(formatCopy);
LABEL_17:
      v26 = v24;
      CCSetError(error, v24);

      v23 = 0;
      goto LABEL_18;
    }

    resourceGeneration = [recordCopy resourceGeneration];

    if (resourceGeneration)
    {
      resourceGeneration2 = [recordCopy resourceGeneration];
      longLongValue = [resourceGeneration2 longLongValue];

      v29[0] = longLongValue;
      v11 = v29;
      goto LABEL_8;
    }

LABEL_13:
    v25 = @"resourceGeneration";
LABEL_16:
    v24 = _missingRecordPropertyError(recordCopy, v25);
    goto LABEL_17;
  }

  resourceGeneration3 = [recordCopy resourceGeneration];

  if (!resourceGeneration3)
  {
    goto LABEL_13;
  }

  resourceGeneration4 = [recordCopy resourceGeneration];
  longLongValue2 = [resourceGeneration4 longLongValue];

  v29[0] = longLongValue2;
  [v7 appendBytes:v29 length:8];
  attestationGeneration = [recordCopy attestationGeneration];

  if (!attestationGeneration)
  {
    v25 = @"attestationGeneration";
    goto LABEL_16;
  }

  attestationGeneration2 = [recordCopy attestationGeneration];
  longLongValue3 = [attestationGeneration2 longLongValue];

  v30 = longLongValue3;
  v11 = &v30;
LABEL_8:
  [v7 appendBytes:v11 length:8];
  deviceUUID = [recordCopy deviceUUID];

  if (!deviceUUID)
  {
    v25 = @"deviceUUID";
    goto LABEL_16;
  }

  deviceUUID2 = [recordCopy deviceUUID];
  v20 = BMDataFromNSUUID();
  [v7 appendData:v20];

  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v21 = getCKDistributedSiteIdentifierClass_softClass;
  v33 = getCKDistributedSiteIdentifierClass_softClass;
  if (!getCKDistributedSiteIdentifierClass_softClass)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __getCKDistributedSiteIdentifierClass_block_invoke;
    v29[3] = &unk_1E7C8AF28;
    v29[4] = &v30;
    __getCKDistributedSiteIdentifierClass_block_invoke(v29);
    v21 = v31[3];
  }

  v22 = v21;
  _Block_object_dispose(&v30, 8);
  v23 = [[v21 alloc] initWithIdentifier:v7];
LABEL_18:

  return v23;
}

+ (unsigned)decodeFormatFromSiteIdentifier:(id)identifier error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  identifier = [identifierCopy identifier];
  v7 = identifier;
  if (identifier)
  {
    v15 = 0;
    [identifier getBytes:&v15 length:1];
    v8 = v15;
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A278];
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot decode site identifier missing data: %@", identifierCopy];
    v17[0] = identifierCopy;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v12 = [v9 errorWithDomain:@"com.apple.CascadeSets.CCDatabaseDeviceMapping" code:3 userInfo:v11];
    CCSetError(error, v12);

    v8 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (BOOL)_validateSiteIdentifier:(id)identifier outFormat:(unsigned __int8 *)format error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v21 = 0;
  v8 = [objc_opt_class() decodeFormatFromSiteIdentifier:identifierCopy error:&v21];
  v9 = v21;
  if (v9)
  {
    CCSetError(error, v9);
LABEL_3:
    v10 = 0;
    goto LABEL_4;
  }

  if (v8 == 1)
  {
    v13 = 25;
  }

  else
  {
    if (v8 != 2)
    {
      v20 = _unsupportedFormatError(v8);
      CCSetError(error, v20);

      goto LABEL_3;
    }

    v13 = 33;
  }

  identifier = [identifierCopy identifier];
  v15 = [identifier length];

  if (v13 != v15)
  {
    v16 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A278];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid site identifier length (%u) expected %u for format %u", v15, v13, v8];
    v23[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v19 = [v16 errorWithDomain:@"com.apple.CascadeSets.CCDatabaseDeviceMapping" code:4 userInfo:v18];
    CCSetError(error, v19);

    goto LABEL_3;
  }

  if (format)
  {
    *format = v8;
  }

  v10 = 1;
LABEL_4:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)decodeResourceGenerationFromSiteIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v10 = 0;
  if ([objc_opt_class() _validateSiteIdentifier:identifierCopy outFormat:&v10 error:error])
  {
    if ((v10 - 1) >= 2u)
    {
      identifier = _unsupportedFormatError(v10);
      CCSetError(error, identifier);
      v7 = 0;
    }

    else
    {
      identifier = [identifierCopy identifier];
      v9 = 0;
      [identifier getBytes:&v9 range:{1, 8}];
      v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v9];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)decodeAttestationGenerationFromSiteIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v10 = 0;
  if ([objc_opt_class() _validateSiteIdentifier:identifierCopy outFormat:&v10 error:error])
  {
    if (v10 == 2)
    {
      identifier = [identifierCopy identifier];
      v9 = 0;
      [identifier getBytes:&v9 range:{9, 8}];
      v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v9];
    }

    else
    {
      identifier = _unsupportedFormatError(v10);
      CCSetError(error, identifier);
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)decodeDeviceUUIDFromSiteIdentifier:(id)identifier error:(id *)error
{
  v12[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v11 = 0;
  if (![objc_opt_class() _validateSiteIdentifier:identifierCopy outFormat:&v11 error:error])
  {
    v7 = 0;
    goto LABEL_10;
  }

  if (v11 == 2)
  {
    v6 = 17;
  }

  else
  {
    if (v11 != 1)
    {
      identifier = _unsupportedFormatError(v11);
      CCSetError(error, identifier);
      v7 = 0;
      goto LABEL_9;
    }

    v6 = 9;
  }

  identifier = [identifierCopy identifier];
  v12[0] = 0;
  v12[1] = 0;
  [identifier getBytes:v12 range:{v6, 16}];
  v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v12];
LABEL_9:

LABEL_10:
  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)dictionaryFromSiteIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = 0;
  if (![objc_opt_class() _validateSiteIdentifier:identifierCopy outFormat:&v16 error:error])
  {
    v8 = 0;
    goto LABEL_18;
  }

  if (v16 == 1)
  {
    v7 = @"RemoteSync";
  }

  else if (v16 == 2)
  {
    v7 = @"LocalBookmark";
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%u)", v16];
  }

  [v6 setObject:v7 forKeyedSubscript:@"format"];

  v9 = [objc_opt_class() decodeResourceGenerationFromSiteIdentifier:identifierCopy error:error];
  if (v9)
  {
    [v6 setObject:v9 forKeyedSubscript:@"resourceGeneration"];
    if (v16 != 2)
    {
LABEL_12:
      v12 = [objc_opt_class() decodeDeviceUUIDFromSiteIdentifier:identifierCopy error:error];
      v13 = v12;
      if (v12)
      {
        uUIDString = [v12 UUIDString];
        [v6 setObject:uUIDString forKeyedSubscript:@"deviceUUID"];

        v8 = v6;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_17;
    }

    v10 = [objc_opt_class() decodeAttestationGenerationFromSiteIdentifier:identifierCopy error:error];
    if (v10)
    {
      v11 = v10;
      [v6 setObject:v10 forKeyedSubscript:@"attestationVersion"];

      goto LABEL_12;
    }
  }

  v8 = 0;
LABEL_17:

LABEL_18:

  return v8;
}

+ (id)descriptionForSiteIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = 0;
  v4 = [objc_opt_class() dictionaryFromSiteIdentifier:identifierCopy error:&v9];

  v5 = v9;
  v6 = v5;
  if (v4 && !v5)
  {
    v5 = v4;
  }

  v7 = [v5 description];

  return v7;
}

@end