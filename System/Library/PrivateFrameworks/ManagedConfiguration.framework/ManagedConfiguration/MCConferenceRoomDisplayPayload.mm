@interface MCConferenceRoomDisplayPayload
+ (id)typeStrings;
- (MCConferenceRoomDisplayPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)configuration;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
@end

@implementation MCConferenceRoomDisplayPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.conferenceroomdisplay";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCConferenceRoomDisplayPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = MCConferenceRoomDisplayPayload;
  v9 = [(MCPayload *)&v27 initWithDictionary:dictionaryCopy profile:profile outError:error];
  if (v9)
  {
    v26 = 0;
    v10 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"Message" isRequired:0 outError:&v26];
    v11 = v26;
    customMessage = v9->_customMessage;
    v9->_customMessage = v10;

    if (v11)
    {
      v13 = [(MCPayload *)v9 malformedPayloadErrorWithError:v11];
      v14 = v13;
      if (error)
      {
        v15 = v13;
        *error = v14;
      }

      v16 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        v18 = objc_opt_class();
        v19 = v18;
        mCVerboseDescription = [v14 MCVerboseDescription];
        *buf = 138543618;
        v29 = v18;
        v30 = 2114;
        v31 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v17, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v9 = 0;
    }

    if ([dictionaryCopy count])
    {
      v21 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v22 = v21;
        friendlyName = [(MCPayload *)v9 friendlyName];
        *buf = 138543618;
        v29 = friendlyName;
        v30 = 2114;
        v31 = dictionaryCopy;
        _os_log_impl(&dword_1A795B000, v22, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)configuration
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  customMessage = [(MCConferenceRoomDisplayPayload *)self customMessage];
  [dictionary setObject:customMessage forKeyedSubscript:@"Message"];

  return dictionary;
}

- (id)stubDictionary
{
  v6.receiver = self;
  v6.super_class = MCConferenceRoomDisplayPayload;
  stubDictionary = [(MCPayload *)&v6 stubDictionary];
  configuration = [(MCConferenceRoomDisplayPayload *)self configuration];
  [stubDictionary addEntriesFromDictionary:configuration];

  return stubDictionary;
}

- (id)payloadDescriptionKeyValueSections
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  customMessage = [(MCConferenceRoomDisplayPayload *)self customMessage];
  v5 = [customMessage length];

  if (v5)
  {
    v6 = [MCKeyValue alloc];
    customMessage2 = [(MCConferenceRoomDisplayPayload *)self customMessage];
    v8 = MCLocalizedString(@"CONFERENCE_ROOM_DISPLAY_CUSTOM_MESSAGE");
    v9 = [(MCKeyValue *)v6 initWithLocalizedString:customMessage2 localizedKey:v8];

    [v3 addObject:v9];
  }

  if ([v3 count])
  {
    v10 = [MCKeyValueSection sectionWithKeyValues:v3];
    v14[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end