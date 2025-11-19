@interface MCCellularPrivateNetworkPayload
- (BOOL)_checkForValidContent:(id)a3 outError:(id *)a4;
- (BOOL)_checkForValidLegacyArrayContent:(id)a3 outError:(id *)a4;
- (MCCellularPrivateNetworkPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)_validationErrorType:(int64_t)a3 forInvalidKey:(id)a4;
- (id)stubDictionary;
- (id)subtitle1Description;
- (id)title;
- (void)_finishInitializationWithContent:(id)a3;
- (void)_finishInitializationWithLegacyArrayContent:(id)a3;
@end

@implementation MCCellularPrivateNetworkPayload

- (id)_validationErrorType:(int64_t)a3 forInvalidKey:(id)a4
{
  v9 = MEMORY[0x1E696ABC0];
  v10 = MCErrorArray(@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD", a2, a3, a4, v4, v5, v6, v7, a4);
  v11 = [v9 MCErrorWithDomain:@"MCPayloadErrorDomain" code:a3 descriptionArray:v10 errorType:@"MCFatalError"];

  return v11;
}

- (BOOL)_checkForValidContent:(id)a3 outError:(id *)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKey:@"DataSetName"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = [(MCCellularPrivateNetworkPayload *)self _validationErrorType:2002 forInvalidKey:@"DataSetName"];
    goto LABEL_66;
  }

  v8 = [v6 objectForKey:@"VersionNumber"];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = [(MCCellularPrivateNetworkPayload *)self _validationErrorType:2002 forInvalidKey:@"VersionNumber"];
    goto LABEL_65;
  }

  v9 = [v6 objectForKey:@"Geofences"];
  if (!v9)
  {
    v10 = 0;
    goto LABEL_43;
  }

  v42 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v9 count] > 0x3E8)
  {
    v10 = [(MCCellularPrivateNetworkPayload *)self _validationErrorType:2003 forInvalidKey:@"Geofences"];

    goto LABEL_64;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v9;
  v44 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  v10 = 0;
  if (!v44)
  {
    goto LABEL_42;
  }

  v43 = *v48;
  v38 = v8;
  v39 = v9;
  do
  {
    v11 = 0;
    do
    {
      if (*v48 != v43)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v47 + 1) + 8 * v11);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = [(MCCellularPrivateNetworkPayload *)self _validationErrorType:2003 forInvalidKey:@"Geofences"];

        v10 = v25;
LABEL_41:
        v8 = v38;
        v9 = v39;
        goto LABEL_42;
      }

      v13 = [v12 objectForKey:@"Longitude"];
      v14 = [v12 objectForKey:@"Latitude"];
      v15 = [v12 objectForKey:@"Radius"];
      v16 = [v12 objectForKey:@"GeofenceId"];
      v45 = v13;
      v46 = v14;
      if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v18 = v16;
        v17 = v15;
        v19 = self;
        v20 = 2002;
        v21 = @"Longitude";
LABEL_33:
        v22 = [(MCCellularPrivateNetworkPayload *)v19 _validationErrorType:v20 forInvalidKey:v21, v38];

        v23 = 0;
        v10 = v22;
        goto LABEL_34;
      }

      if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v18 = v16;
        v17 = v15;
        v19 = self;
        v20 = 2002;
        v21 = @"Latitude";
        goto LABEL_33;
      }

      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v18 = v16;
        v17 = v15;
        v19 = self;
        v20 = 2002;
        v21 = @"Radius";
        goto LABEL_33;
      }

      v17 = v15;
      if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v18 = v16;
        v19 = self;
        v20 = 2002;
        goto LABEL_32;
      }

      if ([v42 containsObject:v16])
      {
        v18 = v16;
        v19 = self;
        v20 = 2000;
LABEL_32:
        v21 = @"GeofenceId";
        goto LABEL_33;
      }

      v18 = v16;
      [v42 addObject:v16];
      v23 = 1;
LABEL_34:

      if (!v23)
      {
        goto LABEL_41;
      }

      ++v11;
    }

    while (v44 != v11);
    v24 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    v8 = v38;
    v9 = v39;
    v44 = v24;
  }

  while (v24);
LABEL_42:

LABEL_43:
  v26 = [v6 objectForKey:{@"CellularDataPreferred", v38}];
  if (!v26)
  {
LABEL_47:
    v27 = [v6 objectForKey:@"EnableNRStandalone"];
    if (v27)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v27 isEqual:&unk_1F1AA5488] & 1) != 0 || (objc_msgSend(v27, "isEqual:", &unk_1F1AA54A0))
        {
          goto LABEL_51;
        }

        v33 = self;
        v34 = 2004;
      }

      else
      {
        v33 = self;
        v34 = 2003;
      }

      [(MCCellularPrivateNetworkPayload *)v33 _validationErrorType:v34 forInvalidKey:@"EnableNRStandalone"];
      v10 = v28 = v10;
LABEL_62:

      goto LABEL_63;
    }

LABEL_51:
    v40 = v9;
    v28 = [v6 objectForKey:@"CsgNetworkIdentifier"];
    if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [(MCCellularPrivateNetworkPayload *)self _validationErrorType:2003 forInvalidKey:@"CsgNetworkIdentifier"];
      v10 = v29 = v10;
    }

    else
    {
      v29 = [v6 objectForKey:@"NetworkIdentifier"];
      if (v29)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v30 = [(MCCellularPrivateNetworkPayload *)self _validationErrorType:2003 forInvalidKey:@"NetworkIdentifier"];

          v10 = v30;
        }
      }
    }

    v9 = v40;
    goto LABEL_62;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v26 isEqual:&unk_1F1AA5488] & 1) != 0 || (objc_msgSend(v26, "isEqual:", &unk_1F1AA54A0))
    {
      goto LABEL_47;
    }

    v31 = self;
    v32 = 2004;
  }

  else
  {
    v31 = self;
    v32 = 2003;
  }

  [(MCCellularPrivateNetworkPayload *)v31 _validationErrorType:v32 forInvalidKey:@"CellularDataPreferred"];
  v10 = v27 = v10;
LABEL_63:

LABEL_64:
LABEL_65:

LABEL_66:
  if (a4 && v10)
  {
    v35 = v10;
    *a4 = v10;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v10 == 0;
}

- (BOOL)_checkForValidLegacyArrayContent:(id)a3 outError:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
LABEL_3:
    v11 = 0;
    v12 = v9;
    while (1)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v19 + 1) + 8 * v11);
      v18 = v12;
      v14 = [(MCCellularPrivateNetworkPayload *)self _checkForValidContent:v13 outError:&v18];
      v9 = v18;

      if (!v14)
      {
        break;
      }

      ++v11;
      v12 = v9;
      if (v8 == v11)
      {
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  if (a4)
  {
    v15 = v9;
    *a4 = v9;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9 == 0;
}

- (void)_finishInitializationWithContent:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v44 = 0;
  v6 = [MCProfile removeOptionalObjectInDictionary:v4 key:@"DataSetName" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v44];
  v7 = v44;
  dataSetName = self->_dataSetName;
  self->_dataSetName = v6;

  if (v7 || (v43 = 0, [MCProfile removeOptionalObjectInDictionary:v4 key:@"VersionNumber" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v43], v9 = objc_claimAutoreleasedReturnValue(), v7 = v43, versionNumber = self->_versionNumber, self->_versionNumber = v9, versionNumber, v7))
  {
    v32 = v7;
  }

  else
  {
    v42 = 0;
    v23 = [MCProfile removeOptionalObjectInDictionary:v4 key:@"EnableNRStandalone" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v42];
    v24 = v42;
    self->_enableNRStandalone = v23;
    if (v24)
    {
      v32 = v24;
    }

    else
    {
      v41 = 0;
      v25 = [MCProfile removeOptionalObjectInDictionary:v4 key:@"CsgNetworkIdentifier" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v41];
      v26 = v41;
      csgNetworkIdentifier = self->_csgNetworkIdentifier;
      self->_csgNetworkIdentifier = v25;

      if (v26)
      {
        v32 = v26;
      }

      else
      {
        v40 = 0;
        v28 = [MCProfile removeOptionalObjectInDictionary:v4 key:@"NetworkIdentifier" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v40];
        v29 = v40;
        networkIdentifier = self->_networkIdentifier;
        self->_networkIdentifier = v28;

        if (!v29)
        {
          v39 = 0;
          v11 = [MCProfile removeOptionalObjectInDictionary:v4 key:@"CellularDataPreferred" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v39];
          v32 = v39;
          goto LABEL_5;
        }

        v32 = v29;
      }
    }
  }

  v11 = 0;
LABEL_5:
  v31 = self;
  self->_cellularDataPreferred = [v11 BOOLValue];
  v33 = v4;
  obj = [v4 objectForKey:@"Geofences"];
  if (obj)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          v17 = [v16 objectForKeyedSubscript:@"Longitude"];
          v18 = [v16 objectForKeyedSubscript:@"Latitude"];
          v19 = [v16 objectForKeyedSubscript:@"Radius"];
          v20 = [v16 objectForKeyedSubscript:@"GeofenceId"];
          v21 = [MCGeofenceInfo geofenceWithID:v20 latitude:v18 longitude:v17 radius:v19];
          [v5 addObject:v21];
        }

        v13 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v13);
    }
  }

  if ([v5 count])
  {
    objc_storeStrong(&v31->_geofenceList, v5);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_finishInitializationWithLegacyArrayContent:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(MCCellularPrivateNetworkPayload *)self _finishInitializationWithContent:*(*(&v12 + 1) + 8 * v10), v12];
        [v5 addObjectsFromArray:self->_geofenceList];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    objc_storeStrong(&self->_geofenceList, v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (MCCellularPrivateNetworkPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v41.receiver = self;
  v41.super_class = MCCellularPrivateNetworkPayload;
  v9 = [(MCPayload *)&v41 initWithDictionary:v8 profile:a4 outError:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [(MCPayload *)v9 profile];
    v12 = [v11 isStub];

    if (v12)
    {
      v40 = 0;
      v13 = [MCProfile removeOptionalObjectInDictionary:v8 key:@"DataSetName" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v40];
      v14 = v40;
      dataSetName = v10->_dataSetName;
      v10->_dataSetName = v13;

      if (v14)
      {
        goto LABEL_19;
      }

      v39 = 0;
      v16 = [MCProfile removeOptionalObjectInDictionary:v8 key:@"VersionNumber" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v39];
      v14 = v39;
      versionNumber = v10->_versionNumber;
      v10->_versionNumber = v16;

      if (v14)
      {
        goto LABEL_19;
      }

      v38 = 0;
      v18 = [MCProfile removeOptionalObjectInDictionary:v8 key:@"CsgNetworkIdentifier" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v38];
      v14 = v38;
      csgNetworkIdentifier = v10->_csgNetworkIdentifier;
      v10->_csgNetworkIdentifier = v18;

      if (v14)
      {
        goto LABEL_19;
      }

      v37 = 0;
      v20 = [MCProfile removeOptionalObjectInDictionary:v8 key:@"NetworkIdentifier" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v37];
      v14 = v37;
      networkIdentifier = v10->_networkIdentifier;
      v10->_networkIdentifier = v20;
LABEL_18:

LABEL_19:
      goto LABEL_20;
    }

    v36 = 0;
    networkIdentifier = [MCProfile removeOptionalObjectInDictionary:v8 key:@"PayloadContent" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v36];
    v22 = v36;
    v23 = v22;
    if (v22 || !networkIdentifier)
    {
      v34 = v22;
      [(MCCellularPrivateNetworkPayload *)v10 _checkForValidContent:v8 outError:&v34];
      v14 = v34;

      if (!v14)
      {
        [(MCCellularPrivateNetworkPayload *)v10 _finishInitializationWithContent:v8];
        goto LABEL_18;
      }
    }

    else
    {
      v35 = 0;
      [(MCCellularPrivateNetworkPayload *)v10 _checkForValidLegacyArrayContent:networkIdentifier outError:&v35];
      v14 = v35;
      if (!v14)
      {
        [(MCCellularPrivateNetworkPayload *)v10 _finishInitializationWithLegacyArrayContent:networkIdentifier];
        goto LABEL_18;
      }
    }

    v24 = [(MCPayload *)v10 malformedPayloadErrorWithError:v14];
    v25 = v24;
    if (a5)
    {
      v26 = v24;
      *a5 = v25;
    }

    v27 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v28 = v27;
      v29 = objc_opt_class();
      v30 = v29;
      v31 = [v25 MCVerboseDescription];
      *buf = 138543618;
      v43 = v29;
      v44 = 2114;
      v45 = v31;
      _os_log_impl(&dword_1A795B000, v28, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v10 = 0;
    goto LABEL_18;
  }

LABEL_20:

  v32 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)stubDictionary
{
  v9.receiver = self;
  v9.super_class = MCCellularPrivateNetworkPayload;
  v3 = [(MCPayload *)&v9 stubDictionary];
  v4 = [(MCCellularPrivateNetworkPayload *)self dataSetName];
  [v3 setObject:v4 forKeyedSubscript:@"DataSetName"];

  v5 = [(MCCellularPrivateNetworkPayload *)self versionNumber];
  [v3 setObject:v5 forKeyedSubscript:@"VersionNumber"];

  v6 = [(MCCellularPrivateNetworkPayload *)self csgNetworkIdentifier];
  [v3 setObject:v6 forKeyedSubscript:@"CsgNetworkIdentifier"];

  v7 = [(MCCellularPrivateNetworkPayload *)self networkIdentifier];
  [v3 setObject:v7 forKeyedSubscript:@"NetworkIdentifier"];

  return v3;
}

- (id)title
{
  dataSetName = self->_dataSetName;
  if (dataSetName)
  {
    v3 = dataSetName;
  }

  else
  {
    v3 = MCLocalizedString(@"NAME_MISSING");
  }

  return v3;
}

- (id)subtitle1Description
{
  versionNumber = self->_versionNumber;
  if (versionNumber)
  {
    v3 = versionNumber;
  }

  else
  {
    v3 = MCLocalizedString(@"VERSION_MISSING");
  }

  return v3;
}

@end