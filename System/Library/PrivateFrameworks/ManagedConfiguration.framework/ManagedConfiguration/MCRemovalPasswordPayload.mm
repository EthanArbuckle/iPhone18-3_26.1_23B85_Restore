@interface MCRemovalPasswordPayload
- (MCRemovalPasswordPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)stubDictionary;
@end

@implementation MCRemovalPasswordPayload

- (MCRemovalPasswordPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v37.receiver = self;
  v37.super_class = MCRemovalPasswordPayload;
  v10 = [(MCPayload *)&v37 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (v10)
  {
    if ([profileCopy isStub])
    {
      v35 = 0;
      v11 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:dictionaryCopy key:@"RemovalPassword" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v35];
      v12 = v35;
      removalPasscode = v10->_removalPasscode;
      v10->_removalPasscode = v11;
    }

    else
    {
      v36 = 0;
      v14 = [MCProfile removeRequiredNonZeroLengthStringInDictionary:dictionaryCopy key:@"RemovalPassword" errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v36];
      v12 = v36;
      v15 = v10->_removalPasscode;
      v10->_removalPasscode = v14;

      removalPasscode = [profileCopy removalPasscode];

      if (removalPasscode)
      {
        v24 = MEMORY[0x1E696ABC0];
        v25 = MCErrorArray(@"ERROR_PAYLOAD_MULTIPLE_REMOVAL_PASSCODES", v17, v18, v19, v20, v21, v22, v23, 0);
        v26 = [v24 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2000 descriptionArray:v25 errorType:@"MCFatalError"];

        v12 = v26;
        if (v26)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }
    }

    if (v10->_removalPasscode)
    {
      [profileCopy setRemovalPasscode:?];
      [profileCopy setLocked:1];
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_11:
      v27 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v28 = v27;
        v29 = objc_opt_class();
        v30 = v29;
        mCVerboseDescription = [v12 MCVerboseDescription];
        *buf = 138543618;
        v39 = v29;
        v40 = 2114;
        v41 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v28, OS_LOG_TYPE_ERROR, "Cannot parse payload %{public}@. Error: %{public}@", buf, 0x16u);
      }

      if (error)
      {
        v32 = v12;
        *error = v12;
      }

      v10 = 0;
      goto LABEL_16;
    }

    [profileCopy setRemovalPasscode:?];
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_16:
  }

  v33 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)stubDictionary
{
  v7.receiver = self;
  v7.super_class = MCRemovalPasswordPayload;
  stubDictionary = [(MCPayload *)&v7 stubDictionary];
  v4 = stubDictionary;
  removalPasscode = self->_removalPasscode;
  if (removalPasscode)
  {
    [stubDictionary setObject:removalPasscode forKey:@"RemovalPassword"];
  }

  return v4;
}

@end