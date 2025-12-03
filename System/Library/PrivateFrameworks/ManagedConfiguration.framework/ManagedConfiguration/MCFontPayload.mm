@interface MCFontPayload
+ (id)typeStrings;
- (MCFontPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)stubDictionary;
- (id)subtitle1Description;
- (id)subtitle1Label;
- (id)verboseDescription;
@end

@implementation MCFontPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.font";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCFontPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v41.receiver = self;
  v41.super_class = MCFontPayload;
  v10 = [(MCPayload *)&v41 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (!v10)
  {
    goto LABEL_18;
  }

  if ([profileCopy isStub])
  {
    v40 = 0;
    v11 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:dictionaryCopy key:@"Name" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v40];
    v12 = v40;
    name = v10->_name;
    v10->_name = v11;

    if (v12 || (v39 = 0, [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"Font" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v39], v14 = objc_claimAutoreleasedReturnValue(), v12 = v39, fontData = v10->_fontData, v10->_fontData = v14, fontData, v12))
    {
      v16 = 0;
    }

    else
    {
      v38 = 0;
      v16 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:dictionaryCopy key:@"PersistentURL" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v38];
      v33 = v38;
      if (v33)
      {
        v12 = v33;
      }

      else
      {
        if ([v16 length])
        {
          v34 = [MEMORY[0x1E695DFF8] URLWithString:v16];
          persistentURL = v10->_persistentURL;
          v10->_persistentURL = v34;
        }

        v12 = 0;
      }
    }
  }

  else
  {
    v37 = 0;
    v17 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:dictionaryCopy key:@"Name" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v37];
    v12 = v37;
    v18 = v10->_name;
    v10->_name = v17;

    if (v12)
    {
LABEL_9:
      v20 = [(MCPayload *)v10 malformedPayloadErrorWithError:v12];
      v21 = v20;
      if (error)
      {
        v22 = v20;
        *error = v21;
      }

      v23 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v24 = v23;
        v25 = objc_opt_class();
        v26 = v25;
        mCVerboseDescription = [v21 MCVerboseDescription];
        *buf = 138543618;
        v43 = v25;
        v44 = 2114;
        v45 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v24, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v10 = 0;
      goto LABEL_14;
    }

    v36 = 0;
    v19 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"Font" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v36];
    v12 = v36;
    v16 = v10->_fontData;
    v10->_fontData = v19;
  }

  if (v12)
  {
    goto LABEL_9;
  }

LABEL_14:
  if ([dictionaryCopy count])
  {
    v28 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v29 = v28;
      friendlyName = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v43 = friendlyName;
      v44 = 2114;
      v45 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v29, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_18:
  v31 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)stubDictionary
{
  v10.receiver = self;
  v10.super_class = MCFontPayload;
  stubDictionary = [(MCPayload *)&v10 stubDictionary];
  name = [(MCFontPayload *)self name];

  if (name)
  {
    name2 = [(MCFontPayload *)self name];
    [stubDictionary setObject:name2 forKeyedSubscript:@"Name"];
  }

  persistentURL = [(MCFontPayload *)self persistentURL];

  if (persistentURL)
  {
    persistentURL2 = [(MCFontPayload *)self persistentURL];
    absoluteString = [persistentURL2 absoluteString];
    [stubDictionary setObject:absoluteString forKeyedSubscript:@"PersistentURL"];
  }

  return stubDictionary;
}

- (id)verboseDescription
{
  v10.receiver = self;
  v10.super_class = MCFontPayload;
  verboseDescription = [(MCPayload *)&v10 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  name = [(MCFontPayload *)self name];

  if (name)
  {
    name2 = [(MCFontPayload *)self name];
    [v4 appendFormat:@"Name        : %@\n", name2];
  }

  persistentURL = [(MCFontPayload *)self persistentURL];

  if (persistentURL)
  {
    persistentURL2 = [(MCFontPayload *)self persistentURL];
    [v4 appendFormat:@"Path on disk: %@\n", persistentURL2];
  }

  return v4;
}

- (id)subtitle1Label
{
  name = [(MCFontPayload *)self name];

  if (name)
  {
    v10 = MCLocalizedFormat(@"FONT_NAME_TITLE_COLON", v3, v4, v5, v6, v7, v8, v9, v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)subtitle1Description
{
  name = [(MCFontPayload *)self name];

  if (name)
  {
    name2 = [(MCFontPayload *)self name];
  }

  else
  {
    name2 = 0;
  }

  return name2;
}

@end