@interface MCCellularPayload
+ (id)typeStrings;
- (MCCellularPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)APNConfigurationDescription;
- (id)APNsDescription;
- (id)APNsLabel;
- (id)attachAPNConfigurationLabel;
- (id)installationWarnings;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)subtitle1Description;
- (id)subtitle1Label;
- (id)subtitle2Description;
- (id)subtitle2Label;
- (id)verboseDescription;
@end

@implementation MCCellularPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.cellular";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCCellularPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v62 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v56.receiver = self;
  v56.super_class = MCCellularPayload;
  v9 = [(MCPayload *)&v56 initWithDictionary:v8 profile:a4 outError:a5];
  if (!v9)
  {
    goto LABEL_14;
  }

  v55 = 0;
  v10 = [MCProfile removeOptionalObjectInDictionary:v8 key:@"AttachAPN" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v55];
  v11 = v55;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    v26 = [MCAPNConfiguration alloc];
    v27 = a5;
    v28 = [v10 mutableCopy];
    v54 = 0;
    v29 = v10;
    v30 = [(MCAPNConfiguration *)v26 initWithDictionary:v28 outError:&v54];
    v12 = v54;
    attachAPN = v9->_attachAPN;
    v9->_attachAPN = v30;
    v10 = v29;

    a5 = v27;
    if (!v12)
    {
LABEL_17:
      v53 = 0;
      v32 = [MCProfile removeOptionalObjectInDictionary:v8 key:@"APNs" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v53];
      v33 = v53;
      v34 = v33;
      if (v32)
      {
        v45 = v10;
        v46 = a5;
        v47 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v32, "count")}];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v44 = v32;
        v35 = v32;
        v36 = [v35 countByEnumeratingWithState:&v49 objects:v61 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v50;
          while (2)
          {
            for (i = 0; i != v37; ++i)
            {
              if (*v50 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = *(*(&v49 + 1) + 8 * i);
              v41 = [MCAPNConfiguration alloc];
              v42 = [v40 mutableCopy];
              v48 = v34;
              v43 = [(MCAPNConfiguration *)v41 initWithDictionary:v42 outError:&v48];
              v12 = v48;

              if (v12)
              {

                goto LABEL_32;
              }

              if (v43)
              {
                [v47 addObject:v43];
              }

              v34 = 0;
            }

            v37 = [v35 countByEnumeratingWithState:&v49 objects:v61 count:16];
            v34 = 0;
            v12 = 0;
            if (v37)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v12 = v34;
        }

LABEL_32:

        if ([v47 count])
        {
          objc_storeStrong(&v9->_APNs, v47);
        }

        v10 = v45;
        a5 = v46;
        v32 = v44;
      }

      else
      {
        v12 = v33;
      }

      if (!v12)
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  v13 = [(MCPayload *)v9 malformedPayloadErrorWithError:v12];
  v14 = v13;
  if (a5)
  {
    v15 = v13;
    *a5 = v14;
  }

  v16 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    v17 = v16;
    v18 = objc_opt_class();
    v19 = v18;
    v20 = [v14 MCVerboseDescription];
    *buf = 138543618;
    v58 = v18;
    v59 = 2114;
    v60 = v20;
    _os_log_impl(&dword_1A795B000, v17, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
  }

  v9 = 0;
LABEL_10:
  if ([v8 count])
  {
    v21 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v22 = v21;
      v23 = [(MCPayload *)v9 friendlyName];
      *buf = 138543618;
      v58 = v23;
      v59 = 2114;
      v60 = v8;
      _os_log_impl(&dword_1A795B000, v22, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_14:
  v24 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)stubDictionary
{
  v26 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = MCCellularPayload;
  v3 = [(MCPayload *)&v24 stubDictionary];
  v4 = [(MCCellularPayload *)self attachAPN];

  if (v4)
  {
    v5 = [(MCCellularPayload *)self attachAPN];
    v6 = [v5 stubDictionary];
    [v3 setObject:v6 forKeyedSubscript:@"AttachAPN"];
  }

  v7 = [(MCCellularPayload *)self APNs];
  v8 = [v7 count];

  if (v8)
  {
    v9 = MEMORY[0x1E695DF70];
    v10 = [(MCCellularPayload *)self APNs];
    v11 = [v9 arrayWithCapacity:{objc_msgSend(v10, "count")}];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = [(MCCellularPayload *)self APNs];
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v20 + 1) + 8 * i) stubDictionary];
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKeyedSubscript:@"APNs"];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)verboseDescription
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = MCCellularPayload;
  v3 = [(MCPayload *)&v21 verboseDescription];
  v4 = [v3 mutableCopy];

  v5 = [(MCCellularPayload *)self attachAPN];

  if (v5)
  {
    v6 = [(MCCellularPayload *)self attachAPN];
    [v4 appendFormat:@"Attach APN  :\n%@\n", v6];
  }

  v7 = [(MCCellularPayload *)self APNs];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(MCCellularPayload *)self APNs];
    [v4 appendFormat:@"%d APN configurations.\n", objc_msgSend(v9, "count")];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [(MCCellularPayload *)self APNs];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v4 appendFormat:@"%@\n", *(*(&v17 + 1) + 8 * i)];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v12);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)payloadDescriptionKeyValueSections
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = MEMORY[0x1E695DF70];
  v5 = [(MCCellularPayload *)self APNs];
  v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];

  v7 = [(MCCellularPayload *)self attachAPN];

  if (v7)
  {
    v8 = [(MCCellularPayload *)self attachAPN];
    [v6 addObject:v8];
  }

  v9 = [(MCCellularPayload *)self APNs];
  [v6 addObjectsFromArray:v9];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v6;
  v10 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v59;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v59 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v58 + 1) + 8 * i);
        v15 = objc_opt_new();
        v16 = [v14 name];

        if (v16)
        {
          v17 = [MCKeyValue alloc];
          v18 = [v14 name];
          v19 = MCLocalizedString(@"CELLULAR_CONFIG_NAME");
          v20 = [(MCKeyValue *)v17 initWithLocalizedString:v18 localizedKey:v19];

          [v15 addObject:v20];
        }

        v21 = [v14 authenticationType];

        if (v21)
        {
          v22 = [MCKeyValue alloc];
          v23 = [v14 localizedAuthenticationType];
          v24 = MCLocalizedString(@"AUTHENTICATION_TYPE");
          v25 = [(MCKeyValue *)v22 initWithLocalizedString:v23 localizedKey:v24];

          [v15 addObject:v25];
        }

        v26 = [v14 username];

        if (v26)
        {
          v27 = [MCKeyValue alloc];
          v28 = [v14 username];
          v29 = MCLocalizedString(@"USERNAME");
          v30 = [(MCKeyValue *)v27 initWithLocalizedString:v28 localizedKey:v29];

          [v15 addObject:v30];
        }

        v31 = [v14 password];

        if (v31)
        {
          v32 = [MCKeyValue alloc];
          v33 = MCLocalizedString(@"PRESENT");
          v34 = MCLocalizedString(@"PASSWORD");
          v35 = [(MCKeyValue *)v32 initWithLocalizedString:v33 localizedKey:v34];

          [v15 addObject:v35];
        }

        v36 = [v14 proxyServer];

        if (v36)
        {
          v37 = [MCKeyValue alloc];
          v38 = [v14 proxyServer];
          v39 = MCLocalizedString(@"PROXY");
          v40 = [(MCKeyValue *)v37 initWithLocalizedString:v38 localizedKey:v39];

          [v15 addObject:v40];
        }

        v41 = [v14 proxyPort];

        if (v41)
        {
          v42 = MEMORY[0x1E696AEC0];
          v43 = [v14 proxyPort];
          v44 = [v42 stringWithFormat:@"%d", objc_msgSend(v43, "intValue")];

          v45 = [MCKeyValue alloc];
          v46 = MCLocalizedString(@"PORT");
          v47 = [(MCKeyValue *)v45 initWithLocalizedString:v44 localizedKey:v46];

          [v15 addObject:v47];
        }

        v48 = [v14 enableXLAT464];

        if (v48)
        {
          v49 = [MCKeyValue alloc];
          v50 = [v14 enableXLAT464];
          v51 = MCLocalizedStringForBool([v50 BOOLValue]);
          v52 = MCLocalizedString(@"CELLULAR_ENABLE_XLAT464");
          v53 = [(MCKeyValue *)v49 initWithLocalizedString:v51 localizedKey:v52];

          [v15 addObject:v53];
        }

        if ([v15 count])
        {
          v54 = [MCKeyValueSection sectionWithKeyValues:v15];
          [v3 addObject:v54];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v11);
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  v55 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)attachAPNConfigurationLabel
{
  v2 = [(MCCellularPayload *)self attachAPN];

  if (v2)
  {
    v3 = MCLocalizedString(@"ATTACH_APN_LABEL_COLON");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)APNConfigurationDescription
{
  v3 = [(MCCellularPayload *)self attachAPN];

  if (v3)
  {
    v4 = [(MCCellularPayload *)self attachAPN];
    v5 = [v4 name];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)APNsLabel
{
  v3 = [(MCCellularPayload *)self APNs];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = @"APN_CONFIG_SINGULAR_COLON";
LABEL_5:
    v8 = MCLocalizedString(v5);
    goto LABEL_7;
  }

  v6 = [(MCCellularPayload *)self APNs];
  v7 = [v6 count];

  if (v7 >= 2)
  {
    v5 = @"APN_CONFIG_COUNT_PLURAL_COLON";
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)APNsDescription
{
  v3 = [(MCCellularPayload *)self APNs];
  v4 = [v3 count];

  v5 = [(MCCellularPayload *)self APNs];
  v6 = v5;
  if (v4 == 1)
  {
    v7 = [v5 objectAtIndexedSubscript:0];
    v8 = [v7 name];
LABEL_5:
    v12 = v8;

    goto LABEL_7;
  }

  v9 = [v5 count];

  if (v9 >= 2)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = MEMORY[0x1E696AD98];
    v6 = [(MCCellularPayload *)self APNs];
    v7 = [v11 numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
    v8 = [v10 stringWithFormat:@"%@", v7];
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (id)subtitle1Label
{
  v3 = [(MCCellularPayload *)self attachAPN];

  if (v3)
  {
    v4 = [(MCCellularPayload *)self attachAPNConfigurationLabel];
  }

  else
  {
    v5 = [(MCCellularPayload *)self APNs];
    v6 = [v5 count];

    if (v6)
    {
      v4 = [(MCCellularPayload *)self APNsLabel];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)subtitle1Description
{
  v3 = [(MCCellularPayload *)self attachAPN];

  if (v3)
  {
    v4 = [(MCCellularPayload *)self APNConfigurationDescription];
  }

  else
  {
    v5 = [(MCCellularPayload *)self APNs];
    v6 = [v5 count];

    if (v6)
    {
      v4 = [(MCCellularPayload *)self APNsDescription];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)subtitle2Label
{
  v3 = [(MCCellularPayload *)self attachAPN];
  if (v3)
  {
    v4 = v3;
    v5 = [(MCCellularPayload *)self APNs];
    v6 = [v5 count];

    if (v6)
    {
      v3 = [(MCCellularPayload *)self APNsLabel];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)subtitle2Description
{
  v3 = [(MCCellularPayload *)self attachAPN];
  if (v3)
  {
    v4 = v3;
    v5 = [(MCCellularPayload *)self APNs];
    v6 = [v5 count];

    if (v6)
    {
      v3 = [(MCCellularPayload *)self APNsDescription];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)installationWarnings
{
  v2 = MCLocalizedString(@"INSTALL_WARNING_CELLULAR_TITLE");
  v3 = MCLocalizedStringByDevice(@"INSTALL_WARNING_CELLULAR");
  v4 = [MCProfileWarning warningWithLocalizedTitle:v2 localizedBody:v3 isLongForm:1];

  v5 = [MEMORY[0x1E695DEC8] arrayWithObject:v4];

  return v5;
}

@end