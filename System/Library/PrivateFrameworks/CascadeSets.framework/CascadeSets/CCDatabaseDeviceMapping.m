@interface CCDatabaseDeviceMapping
+ (BOOL)_validateSiteIdentifier:(id)a3 outFormat:(unsigned __int8 *)a4 error:(id *)a5;
+ (id)decodeAttestationGenerationFromSiteIdentifier:(id)a3 error:(id *)a4;
+ (id)decodeDeviceUUIDFromSiteIdentifier:(id)a3 error:(id *)a4;
+ (id)decodeResourceGenerationFromSiteIdentifier:(id)a3 error:(id *)a4;
+ (id)descriptionForSiteIdentifier:(id)a3;
+ (id)dictionaryFromSiteIdentifier:(id)a3 error:(id *)a4;
+ (id)encodeSiteIdentifierWithFormat:(unsigned __int8)a3 fromDeviceRecord:(id)a4 error:(id *)a5;
+ (unsigned)decodeFormatFromSiteIdentifier:(id)a3 error:(id *)a4;
- (CCDatabaseDeviceMapping)initWithDeviceRecords:(id)a3 siteIdentifierFormat:(unsigned __int8)a4 error:(id *)a5;
- (id)activeDeviceSiteWithDeviceUUID:(id)a3;
- (id)allActiveDeviceSites;
- (id)description;
- (id)deviceForDeviceRowId:(id)a3;
- (id)deviceRecordForDeviceRowId:(id)a3;
- (id)deviceRowIdForDeviceSite:(id)a3;
- (id)siteIdentifierForDeviceRowId:(id)a3;
@end

@implementation CCDatabaseDeviceMapping

- (CCDatabaseDeviceMapping)initWithDeviceRecords:(id)a3 siteIdentifierFormat:(unsigned __int8)a4 error:(id *)a5
{
  v33 = a4;
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v39.receiver = self;
  v39.super_class = CCDatabaseDeviceMapping;
  v7 = [(CCDatabaseDeviceMapping *)&v39 init];
  if (v7)
  {
    if (!v6)
    {
      v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CascadeSets.CCDatabaseDeviceMapping" code:5 userInfo:0];
      CCSetError(a5, v28);

      v27 = 0;
      goto LABEL_19;
    }

    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v6, "count")}];
    deviceRowIdMap = v7->_deviceRowIdMap;
    v7->_deviceRowIdMap = v8;

    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v6, "count")}];
    siteIdentifierMap = v7->_siteIdentifierMap;
    v7->_siteIdentifierMap = v10;

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v6;
    v12 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      v31 = v6;
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
          v17 = [objc_opt_class() encodeSiteIdentifierWithFormat:v33 fromDeviceRecord:v16 error:a5];
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
            v6 = v31;
            goto LABEL_19;
          }

          v20 = v19;
          v21 = [v19 device];
          v22 = [v21 isLocal];

          if (v22)
          {
            objc_storeStrong(&v7->_localDeviceSite, v20);
          }

          v23 = [MEMORY[0x1E69C5D98] tupleWithFirst:v16 second:{v20, v31}];
          v24 = [v16 deviceRowId];
          v25 = v7->_deviceRowIdMap;
          v26 = [MEMORY[0x1E69C5D98] tupleWithFirst:v18 second:v23];
          [(NSMutableDictionary *)v25 setObject:v26 forKey:v24];

          [(NSMutableDictionary *)v7->_siteIdentifierMap setObject:v24 forKey:v18];
          ++v15;
        }

        while (v13 != v15);
        v13 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
        v6 = v31;
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

- (id)deviceRecordForDeviceRowId:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_deviceRowIdMap objectForKey:a3];
  v4 = [v3 second];
  v5 = [v4 first];

  return v5;
}

- (id)deviceForDeviceRowId:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_deviceRowIdMap objectForKey:a3];
  v4 = [v3 second];
  v5 = [v4 second];
  v6 = [v5 device];

  return v6;
}

- (id)siteIdentifierForDeviceRowId:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_deviceRowIdMap objectForKey:a3];
  v4 = [v3 first];

  return v4;
}

- (id)deviceRowIdForDeviceSite:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(NSMutableDictionary *)self->_deviceRowIdMap allKeys];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_deviceRowIdMap objectForKey:v10];
        v12 = [v11 second];
        v13 = [v12 second];

        if ([v4 isEqual:v13])
        {
          v14 = v10;

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  v4 = [(NSMutableDictionary *)self->_deviceRowIdMap allValues];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 second];
        v11 = [v10 first];

        if (([v11 recordOptions] & 2) == 0)
        {
          v12 = [v9 second];
          v13 = [v12 second];

          if (v13)
          {
            [v3 addObject:v13];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)activeDeviceSiteWithDeviceUUID:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(NSMutableDictionary *)self->_deviceRowIdMap allValues];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 second];
        v12 = [v11 first];

        if (([v12 recordOptions] & 2) == 0)
        {
          v13 = [v10 second];
          v14 = [v13 second];

          v15 = [v14 device];
          v16 = [v15 deviceUUID];
          v17 = [v16 isEqual:v4];

          if (v17)
          {

            goto LABEL_13;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_13:

  v18 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)encodeSiteIdentifierWithFormat:(unsigned __int8)a3 fromDeviceRecord:(id)a4 error:(id *)a5
{
  v28 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
  [v7 appendBytes:&v28 length:1];
  if (v28 != 2)
  {
    if (v28 != 1)
    {
      v24 = _unsupportedFormatError(v28);
LABEL_17:
      v26 = v24;
      CCSetError(a5, v24);

      v23 = 0;
      goto LABEL_18;
    }

    v8 = [v6 resourceGeneration];

    if (v8)
    {
      v9 = [v6 resourceGeneration];
      v10 = [v9 longLongValue];

      v29[0] = v10;
      v11 = v29;
      goto LABEL_8;
    }

LABEL_13:
    v25 = @"resourceGeneration";
LABEL_16:
    v24 = _missingRecordPropertyError(v6, v25);
    goto LABEL_17;
  }

  v12 = [v6 resourceGeneration];

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = [v6 resourceGeneration];
  v14 = [v13 longLongValue];

  v29[0] = v14;
  [v7 appendBytes:v29 length:8];
  v15 = [v6 attestationGeneration];

  if (!v15)
  {
    v25 = @"attestationGeneration";
    goto LABEL_16;
  }

  v16 = [v6 attestationGeneration];
  v17 = [v16 longLongValue];

  v30 = v17;
  v11 = &v30;
LABEL_8:
  [v7 appendBytes:v11 length:8];
  v18 = [v6 deviceUUID];

  if (!v18)
  {
    v25 = @"deviceUUID";
    goto LABEL_16;
  }

  v19 = [v6 deviceUUID];
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

+ (unsigned)decodeFormatFromSiteIdentifier:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 identifier];
  v7 = v6;
  if (v6)
  {
    v15 = 0;
    [v6 getBytes:&v15 length:1];
    v8 = v15;
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A278];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot decode site identifier missing data: %@", v5];
    v17[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v12 = [v9 errorWithDomain:@"com.apple.CascadeSets.CCDatabaseDeviceMapping" code:3 userInfo:v11];
    CCSetError(a4, v12);

    v8 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (BOOL)_validateSiteIdentifier:(id)a3 outFormat:(unsigned __int8 *)a4 error:(id *)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v21 = 0;
  v8 = [objc_opt_class() decodeFormatFromSiteIdentifier:v7 error:&v21];
  v9 = v21;
  if (v9)
  {
    CCSetError(a5, v9);
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
      CCSetError(a5, v20);

      goto LABEL_3;
    }

    v13 = 33;
  }

  v14 = [v7 identifier];
  v15 = [v14 length];

  if (v13 != v15)
  {
    v16 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A278];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid site identifier length (%u) expected %u for format %u", v15, v13, v8];
    v23[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v19 = [v16 errorWithDomain:@"com.apple.CascadeSets.CCDatabaseDeviceMapping" code:4 userInfo:v18];
    CCSetError(a5, v19);

    goto LABEL_3;
  }

  if (a4)
  {
    *a4 = v8;
  }

  v10 = 1;
LABEL_4:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)decodeResourceGenerationFromSiteIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  v10 = 0;
  if ([objc_opt_class() _validateSiteIdentifier:v5 outFormat:&v10 error:a4])
  {
    if ((v10 - 1) >= 2u)
    {
      v6 = _unsupportedFormatError(v10);
      CCSetError(a4, v6);
      v7 = 0;
    }

    else
    {
      v6 = [v5 identifier];
      v9 = 0;
      [v6 getBytes:&v9 range:{1, 8}];
      v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v9];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)decodeAttestationGenerationFromSiteIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  v10 = 0;
  if ([objc_opt_class() _validateSiteIdentifier:v5 outFormat:&v10 error:a4])
  {
    if (v10 == 2)
    {
      v6 = [v5 identifier];
      v9 = 0;
      [v6 getBytes:&v9 range:{9, 8}];
      v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v9];
    }

    else
    {
      v6 = _unsupportedFormatError(v10);
      CCSetError(a4, v6);
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)decodeDeviceUUIDFromSiteIdentifier:(id)a3 error:(id *)a4
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v11 = 0;
  if (![objc_opt_class() _validateSiteIdentifier:v5 outFormat:&v11 error:a4])
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
      v8 = _unsupportedFormatError(v11);
      CCSetError(a4, v8);
      v7 = 0;
      goto LABEL_9;
    }

    v6 = 9;
  }

  v8 = [v5 identifier];
  v12[0] = 0;
  v12[1] = 0;
  [v8 getBytes:v12 range:{v6, 16}];
  v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v12];
LABEL_9:

LABEL_10:
  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)dictionaryFromSiteIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = 0;
  if (![objc_opt_class() _validateSiteIdentifier:v5 outFormat:&v16 error:a4])
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

  v9 = [objc_opt_class() decodeResourceGenerationFromSiteIdentifier:v5 error:a4];
  if (v9)
  {
    [v6 setObject:v9 forKeyedSubscript:@"resourceGeneration"];
    if (v16 != 2)
    {
LABEL_12:
      v12 = [objc_opt_class() decodeDeviceUUIDFromSiteIdentifier:v5 error:a4];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 UUIDString];
        [v6 setObject:v14 forKeyedSubscript:@"deviceUUID"];

        v8 = v6;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_17;
    }

    v10 = [objc_opt_class() decodeAttestationGenerationFromSiteIdentifier:v5 error:a4];
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

+ (id)descriptionForSiteIdentifier:(id)a3
{
  v3 = a3;
  v9 = 0;
  v4 = [objc_opt_class() dictionaryFromSiteIdentifier:v3 error:&v9];

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