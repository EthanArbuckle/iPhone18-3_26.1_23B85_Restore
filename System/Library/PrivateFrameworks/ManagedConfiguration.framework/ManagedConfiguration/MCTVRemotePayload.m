@interface MCTVRemotePayload
+ (id)typeStrings;
- (MCTVRemotePayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)_allowedRemotesDescription;
- (id)_allowedRemotesTitle;
- (id)_allowedTVsDescription;
- (id)_allowedTVsTitle;
- (id)payloadDescriptionKeyValueSections;
- (id)restrictions;
- (id)stubDictionary;
- (id)subtitle1Description;
- (id)subtitle1Label;
- (id)subtitle2Description;
- (id)subtitle2Label;
- (id)verboseDescription;
@end

@implementation MCTVRemotePayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.tvremote";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCTVRemotePayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v54.receiver = self;
  v54.super_class = MCTVRemotePayload;
  v9 = [(MCPayload *)&v54 initWithDictionary:v8 profile:a4 outError:a5];
  if (!v9)
  {
    goto LABEL_31;
  }

  v53 = 0;
  v10 = [MCProfile removeOptionalObjectInDictionary:v8 key:@"AllowedTVs" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v53];
  v11 = v53;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = [MEMORY[0x1E695DF70] array];
    v14 = [MEMORY[0x1E695DF70] array];
    v42 = [MEMORY[0x1E695DF70] array];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v10;
    v43 = [(NSArray *)obj countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v43)
    {
      v44 = *v50;
      v45 = v13;
      v40 = a5;
      v46 = v14;
LABEL_6:
      v15 = 0;
      while (1)
      {
        if (*v50 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v49 + 1) + 8 * v15);
        v17 = [MEMORY[0x1E695DF90] dictionary];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v48 = 0;
        v18 = [MCProfile removeRequiredNonZeroLengthStringInDictionary:v16 key:@"TVDeviceID" errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v48];
        v19 = v48;
        if (v19)
        {
          v12 = v19;

          goto LABEL_20;
        }

        v20 = [v18 uppercaseString];

        [v17 setObject:v20 forKeyedSubscript:@"TVDeviceID"];
        [v46 addObject:v20];
        v47 = 0;
        v21 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:v16 key:@"TVDeviceName" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v47];
        v22 = v47;
        if (v22)
        {
          v12 = v22;

          goto LABEL_20;
        }

        if (v21)
        {
          [v17 setObject:v21 forKeyedSubscript:@"TVDeviceName"];
          [v42 addObject:v21];
        }

        [v45 addObject:v17];

        if (v43 == ++v15)
        {
          a5 = v40;
          v13 = v45;
          v14 = v46;
          v43 = [(NSArray *)obj countByEnumeratingWithState:&v49 objects:v59 count:16];
          if (v43)
          {
            goto LABEL_6;
          }

          goto LABEL_16;
        }
      }

      v12 = [MCPayload badFieldTypeErrorWithField:@"AllowedTVs"];
LABEL_20:

      v23 = obj;
      v24 = v42;
      allowedTVIDs = obj;
      a5 = v40;
      v13 = v45;
      v14 = v46;
      goto LABEL_21;
    }

LABEL_16:
    v23 = obj;

    objc_storeStrong(&v9->_allowedTVs, v13);
    v24 = v42;
    objc_storeStrong(&v9->_allowedTVNames, v42);
    v25 = v14;
    v12 = 0;
    allowedTVIDs = v9->_allowedTVIDs;
    v9->_allowedTVIDs = v25;
LABEL_21:

    if (!v12)
    {
      goto LABEL_27;
    }
  }

  v27 = [(MCPayload *)v9 malformedPayloadErrorWithError:v12];
  v28 = v27;
  if (a5)
  {
    v29 = v27;
    *a5 = v28;
  }

  v30 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    v31 = v30;
    v32 = objc_opt_class();
    v33 = v32;
    v34 = [v28 MCVerboseDescription];
    *buf = 138543618;
    v56 = v32;
    v57 = 2114;
    v58 = v34;
    _os_log_impl(&dword_1A795B000, v31, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
  }

  v9 = 0;
LABEL_27:
  if ([v8 count])
  {
    v35 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v36 = v35;
      v37 = [(MCPayload *)v9 friendlyName];
      *buf = 138543618;
      v56 = v37;
      v57 = 2114;
      v58 = v8;
      _os_log_impl(&dword_1A795B000, v36, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_31:
  v38 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)stubDictionary
{
  v7.receiver = self;
  v7.super_class = MCTVRemotePayload;
  v3 = [(MCPayload *)&v7 stubDictionary];
  v4 = [(MCTVRemotePayload *)self allowedTVs];

  if (v4)
  {
    v5 = [(MCTVRemotePayload *)self allowedTVs];
    [v3 setObject:v5 forKey:@"AllowedTVs"];
  }

  return v3;
}

- (id)_allowedRemotesTitle
{
  v2 = [(MCTVRemotePayload *)self allowedRemotes];
  if ([v2 count])
  {
    v3 = MCLocalizedString(@"TVREMOTE_REMOTES_TITLE_COLON");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_allowedRemotesDescription
{
  v3 = [(MCTVRemotePayload *)self allowedRemotes];
  if ([v3 count])
  {
    v4 = [(MCTVRemotePayload *)self allowedRemotes];
    v5 = [v4 count];
    v13 = MCLocalizedFormat(@"TVREMOTE_REMOTE_COUNT", v6, v7, v8, v9, v10, v11, v12, v5);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_allowedTVsTitle
{
  v2 = [(MCTVRemotePayload *)self allowedTVs];
  if ([v2 count])
  {
    v3 = MCLocalizedString(@"TVREMOTE_TVS_TITLE_COLON");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_allowedTVsDescription
{
  v3 = [(MCTVRemotePayload *)self allowedTVs];
  if ([v3 count])
  {
    v4 = [(MCTVRemotePayload *)self allowedTVs];
    v5 = [v4 count];
    v13 = MCLocalizedFormat(@"TVREMOTE_TV_COUNT", v6, v7, v8, v9, v10, v11, v12, v5);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)subtitle1Label
{
  v3 = [(MCTVRemotePayload *)self _allowedRemotesTitle];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(MCTVRemotePayload *)self _allowedTVsTitle];
  }

  v6 = v5;

  return v6;
}

- (id)subtitle1Description
{
  v3 = [(MCTVRemotePayload *)self _allowedRemotesDescription];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(MCTVRemotePayload *)self _allowedTVsDescription];
  }

  v6 = v5;

  return v6;
}

- (id)subtitle2Label
{
  v3 = [(MCTVRemotePayload *)self _allowedRemotesTitle];
  if (v3)
  {
    v4 = [(MCTVRemotePayload *)self _allowedTVsTitle];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)subtitle2Description
{
  v3 = [(MCTVRemotePayload *)self _allowedRemotesDescription];
  if (v3)
  {
    v4 = [(MCTVRemotePayload *)self _allowedTVsDescription];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)verboseDescription
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v35.receiver = self;
  v35.super_class = MCTVRemotePayload;
  v4 = [(MCPayload *)&v35 description];
  v5 = [v3 stringWithString:v4];

  v6 = [(MCTVRemotePayload *)self allowedRemotes];

  if (v6)
  {
    v7 = [(MCTVRemotePayload *)self allowedRemotes];
    [v5 appendFormat:@"Allowed Remotes   : %lu entries\n", objc_msgSend(v7, "count")];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = [(MCTVRemotePayload *)self allowedRemotes];
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v5 appendFormat:@"                  %@\n", *(*(&v31 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v10);
    }
  }

  v13 = [(MCTVRemotePayload *)self allowedTVs];

  if (v13)
  {
    v14 = [(MCTVRemotePayload *)self allowedTVs];
    [v5 appendFormat:@"Allowed TVs       : %lu entries\n", objc_msgSend(v14, "count")];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [(MCTVRemotePayload *)self allowedTVs];
    v15 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v27 + 1) + 8 * j);
          v20 = [v19 objectForKeyedSubscript:@"TVDeviceID"];
          v21 = [v19 objectForKeyedSubscript:@"TVDeviceName"];
          v22 = v21;
          if (v21)
          {
            v23 = v21;
          }

          else
          {
            v23 = &stru_1F1A7FAB0;
          }

          [v5 appendFormat:@"                  %@ (%@)\n", v20, v23];
        }

        v16 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v16);
    }
  }

  v24 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)payloadDescriptionKeyValueSections
{
  v3 = objc_opt_new();
  v4 = [(MCTVRemotePayload *)self allowedRemotes];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(MCTVRemotePayload *)self allowedRemotes];
    v7 = MCLocalizedString(@"TVREMOTE_ALLOWED_REMOTES");
    v8 = [MCKeyValueSection sectionWithLocalizedArray:v6 title:v7 footer:0];

    if (v8)
    {
      [v3 addObject:v8];
    }
  }

  v9 = [(MCTVRemotePayload *)self allowedTVIDs];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [(MCTVRemotePayload *)self allowedTVIDs];
    v12 = MCLocalizedString(@"TVREMOTE_ALLOWED_TVS");
    v13 = [MCKeyValueSection sectionWithLocalizedArray:v11 title:v12 footer:0];

    if (v13)
    {
      [v3 addObject:v13];
    }
  }

  v14 = [(MCTVRemotePayload *)self allowedTVNames];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [(MCTVRemotePayload *)self allowedTVNames];
    v17 = MCLocalizedString(@"TVREMOTE_ALLOWED_TV_NAMES");
    v18 = [MCKeyValueSection sectionWithLocalizedArray:v16 title:v17 footer:0];

    if (v18)
    {
      [v3 addObject:v18];
    }
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  return v3;
}

- (id)restrictions
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:v4 forKeyedSubscript:@"union"];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [(MCTVRemotePayload *)self allowedRemotes];

  if (v6)
  {
    [v4 setObject:v5 forKeyedSubscript:@"tvRemoteAllowedRemotes"];
    v7 = [(MCTVRemotePayload *)self allowedRemotes];
    [v5 setObject:v7 forKeyedSubscript:@"values"];
  }

  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = [(MCTVRemotePayload *)self allowedTVIDs];

  if (v9)
  {
    [v4 setObject:v8 forKeyedSubscript:@"tvRemoteAllowedTVs"];
    v10 = [(MCTVRemotePayload *)self allowedTVIDs];
    [v8 setObject:v10 forKeyedSubscript:@"values"];
  }

  v11 = [MEMORY[0x1E695DF90] dictionary];
  v12 = [(MCTVRemotePayload *)self allowedTVNames];

  if (v12)
  {
    [v4 setObject:v11 forKeyedSubscript:@"tvRemoteAllowedTVNames"];
    v13 = [(MCTVRemotePayload *)self allowedTVNames];
    [v11 setObject:v13 forKeyedSubscript:@"values"];
  }

  return v3;
}

@end