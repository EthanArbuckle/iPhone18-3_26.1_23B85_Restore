@interface MCAirPrintPayload
+ (id)typeStrings;
- (MCAirPrintPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)payloadDescriptionKeyValueSections;
- (id)restrictions;
- (id)stubDictionary;
- (id)subtitle1Label;
- (id)verboseDescription;
@end

@implementation MCAirPrintPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.airprint";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCAirPrintPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v70 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v64.receiver = self;
  v64.super_class = MCAirPrintPayload;
  v10 = [(MCPayload *)&v64 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (!v10)
  {
    goto LABEL_56;
  }

  v55 = profileCopy;
  if ([profileCopy isStub])
  {
    v58 = 0;
    v11 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"AirPrintCount" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v58];
    v12 = v58;
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v10->_airPrintCount = [v11 unsignedIntegerValue];
      v57 = 0;
      v32 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"IPPAddresses" isRequired:0 outError:&v57];
      v13 = v57;
      v33 = [v32 mutableCopy];
      ippAddresses = v10->_ippAddresses;
      v10->_ippAddresses = v33;
    }

    goto LABEL_46;
  }

  array = [MEMORY[0x1E695DF70] array];
  v15 = v10->_ippAddresses;
  v10->_ippAddresses = array;

  v63 = 0;
  v16 = [MCProfile removeRequiredObjectInDictionary:dictionaryCopy key:@"AirPrint" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v63];
  v13 = v63;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v11 = v16;
  v53 = [v11 countByEnumeratingWithState:&v59 objects:v69 count:16];
  if (!v53)
  {
    goto LABEL_35;
  }

  v17 = 0x1E696A000uLL;
  v54 = *v60;
  errorCopy = error;
  v51 = dictionaryCopy;
  obj = v11;
  while (2)
  {
    for (i = 0; i != v53; ++i)
    {
      if (*v60 != v54)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v59 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MCPayload badFieldTypeErrorWithField:@"AirPrint"];
        v13 = v20 = v13;
LABEL_44:

        goto LABEL_45;
      }

      v20 = [v19 objectForKeyedSubscript:@"IPAddress"];
      if (!v20 || (v21 = *(v17 + 3776), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v35 = [MCPayload badFieldTypeErrorWithField:@"IPAddress"];

LABEL_43:
        v13 = v35;
        goto LABEL_44;
      }

      v22 = [v19 objectForKeyedSubscript:@"ResourcePath"];
      if (!v22 || (v23 = *(v17 + 3776), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v35 = [MCPayload badFieldTypeErrorWithField:@"ResourcePath"];

LABEL_42:
        goto LABEL_43;
      }

      v24 = [v19 objectForKeyedSubscript:@"Port"];
      if (v24)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v35 = [MCPayload badFieldTypeErrorWithField:@"Port"];

          goto LABEL_42;
        }
      }

      v25 = [v19 objectForKeyedSubscript:@"ForceTLS"];
      if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        [MCPayload badFieldTypeErrorWithField:@"ForceTLS"];
        v56 = v30 = 0;
      }

      else
      {
        v56 = v13;
        v13 = objc_alloc_init(MEMORY[0x1E696AF20]);
        [v13 setHost:v20];
        if ([v24 integerValue] >= 1)
        {
          [v13 setPort:v24];
        }

        if ([v25 BOOLValue])
        {
          v26 = @"ipps";
        }

        else
        {
          v26 = @"ipp";
        }

        [v13 setScheme:v26];
        if ([v22 rangeOfString:@"/" options:8] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v27 = [*(v17 + 3776) stringWithFormat:@"/%@", v22];
          [v13 setPath:v27];
        }

        else
        {
          [v13 setPath:v22];
        }

        v28 = [v13 URL];
        absoluteString = [v28 absoluteString];

        v30 = absoluteString != 0;
        if (absoluteString)
        {
          [(NSMutableArray *)v10->_ippAddresses addObject:absoluteString];
        }

        else
        {
          v31 = [MCPayload badFieldTypeErrorWithField:@"AirPrint"];

          v56 = v31;
        }

        error = errorCopy;
        dictionaryCopy = v51;
      }

      if (!v30)
      {
        v13 = v56;
LABEL_45:
        v11 = obj;

        goto LABEL_46;
      }

      v13 = v56;
      v17 = 0x1E696A000;
    }

    v11 = obj;
    v53 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
    if (v53)
    {
      continue;
    }

    break;
  }

LABEL_35:

  v10->_airPrintCount = [(NSMutableArray *)v10->_ippAddresses count];
LABEL_46:

  if (v13)
  {
    v36 = [(MCPayload *)v10 malformedPayloadErrorWithError:v13];
    v37 = v36;
    if (error)
    {
      v38 = v36;
      *error = v37;
    }

    v39 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v40 = v39;
      v41 = dictionaryCopy;
      v42 = objc_opt_class();
      v43 = v42;
      mCVerboseDescription = [v37 MCVerboseDescription];
      *buf = 138543618;
      v66 = v42;
      dictionaryCopy = v41;
      v67 = 2114;
      v68 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v40, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

  if ([dictionaryCopy count])
  {
    v45 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v46 = v45;
      friendlyName = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v66 = friendlyName;
      v67 = 2114;
      v68 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v46, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

  profileCopy = v55;
LABEL_56:

  v48 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)stubDictionary
{
  v8.receiver = self;
  v8.super_class = MCAirPrintPayload;
  stubDictionary = [(MCPayload *)&v8 stubDictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MCAirPrintPayload airPrintCount](self, "airPrintCount")}];
  [stubDictionary setObject:v4 forKeyedSubscript:@"AirPrintCount"];

  ippAddresses = [(MCAirPrintPayload *)self ippAddresses];

  if (ippAddresses)
  {
    ippAddresses2 = [(MCAirPrintPayload *)self ippAddresses];
    [stubDictionary setObject:ippAddresses2 forKeyedSubscript:@"IPPAddresses"];
  }

  return stubDictionary;
}

- (id)subtitle1Label
{
  if ([(MCAirPrintPayload *)self airPrintCount])
  {
    MCLocalizedFormat(@"AIRPRINT_TITLE_COLON", v2, v3, v4, v5, v6, v7, v8, vars0);
  }

  else
  {
    MCLocalizedString(@"AIRPRINT_COUNT_NONE");
  }
  v9 = ;

  return v9;
}

- (id)verboseDescription
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = MCAirPrintPayload;
  verboseDescription = [(MCPayload *)&v17 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  ippAddresses = [(MCAirPrintPayload *)self ippAddresses];

  if (ippAddresses)
  {
    [v4 appendString:@"AirPrint paths:\n"];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    ippAddresses2 = [(MCAirPrintPayload *)self ippAddresses];
    v7 = [ippAddresses2 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(ippAddresses2);
          }

          [v4 appendFormat:@"  %@\n", *(*(&v13 + 1) + 8 * i)];
        }

        v8 = [ippAddresses2 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    ippAddresses2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MCAirPrintPayload airPrintCount](self, "airPrintCount")}];
    [v4 appendFormat:@"AirPrint devices: %@\n", ippAddresses2];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)payloadDescriptionKeyValueSections
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  ippAddresses = [(MCAirPrintPayload *)self ippAddresses];
  v5 = [ippAddresses count];

  if (v5)
  {
    v32 = v3;
    v6 = MEMORY[0x1E695DF70];
    ippAddresses2 = [(MCAirPrintPayload *)self ippAddresses];
    v8 = [v6 arrayWithCapacity:{objc_msgSend(ippAddresses2, "count")}];

    v9 = v8;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [(MCAirPrintPayload *)self ippAddresses];
    v10 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    v34 = v8;
    if (v10)
    {
      v11 = v10;
      v12 = *v36;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [MEMORY[0x1E695DFF8] URLWithString:*(*(&v35 + 1) + 8 * i)];
          scheme = [v14 scheme];
          port = [v14 port];
          host = [v14 host];
          path = [v14 path];
          v19 = path;
          v20 = MEMORY[0x1E696AEC0];
          if (port)
          {
            v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@":%@", port];
            v22 = [v20 stringWithFormat:@"%@://%@%@%@", scheme, host, v21, v19];

            v9 = v34;
          }

          else
          {
            v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@%@%@", scheme, host, &stru_1F1A7FAB0, path];
          }

          [v9 addObject:v22];
        }

        v11 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v11);
    }

    v23 = MCLocalizedString(@"AIRPRINT_PATHS");
    v24 = [MCKeyValueSection sectionWithLocalizedArray:v9 title:v23 footer:0];

    v3 = v32;
    if (v24)
    {
      [v32 addObject:v24];
    }

    v25 = v34;
  }

  else
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", -[MCAirPrintPayload airPrintCount](self, "airPrintCount")];
    v26 = [MCKeyValue alloc];
    v27 = MCLocalizedString(@"AIRPRINT_DEVICES");
    v24 = [(MCKeyValue *)v26 initWithLocalizedString:v25 localizedKey:v27];

    v39 = v24;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
    v29 = [MCKeyValueSection sectionWithKeyValues:v28];
    [v3 addObject:v29];
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)restrictions
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:dictionary2 forKeyedSubscript:@"union"];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  [dictionary2 setObject:dictionary3 forKeyedSubscript:@"knownAirPrintTargets"];
  ippAddresses = [(MCAirPrintPayload *)self ippAddresses];

  if (ippAddresses)
  {
    ippAddresses2 = [(MCAirPrintPayload *)self ippAddresses];
    [dictionary3 setObject:ippAddresses2 forKeyedSubscript:@"values"];
  }

  return dictionary;
}

@end