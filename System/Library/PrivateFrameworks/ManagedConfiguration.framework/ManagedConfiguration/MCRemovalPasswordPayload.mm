@interface MCRemovalPasswordPayload
- (MCRemovalPasswordPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)stubDictionary;
@end

@implementation MCRemovalPasswordPayload

- (MCRemovalPasswordPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v37.receiver = self;
  v37.super_class = MCRemovalPasswordPayload;
  v10 = [(MCPayload *)&v37 initWithDictionary:v8 profile:v9 outError:a5];
  if (v10)
  {
    if ([v9 isStub])
    {
      v35 = 0;
      v11 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:v8 key:@"RemovalPassword" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v35];
      v12 = v35;
      removalPasscode = v10->_removalPasscode;
      v10->_removalPasscode = v11;
    }

    else
    {
      v36 = 0;
      v14 = [MCProfile removeRequiredNonZeroLengthStringInDictionary:v8 key:@"RemovalPassword" errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v36];
      v12 = v36;
      v15 = v10->_removalPasscode;
      v10->_removalPasscode = v14;

      v16 = [v9 removalPasscode];

      if (v16)
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
      [v9 setRemovalPasscode:?];
      [v9 setLocked:1];
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
        v31 = [v12 MCVerboseDescription];
        *buf = 138543618;
        v39 = v29;
        v40 = 2114;
        v41 = v31;
        _os_log_impl(&dword_1A795B000, v28, OS_LOG_TYPE_ERROR, "Cannot parse payload %{public}@. Error: %{public}@", buf, 0x16u);
      }

      if (a5)
      {
        v32 = v12;
        *a5 = v12;
      }

      v10 = 0;
      goto LABEL_16;
    }

    [v9 setRemovalPasscode:?];
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
  v3 = [(MCPayload *)&v7 stubDictionary];
  v4 = v3;
  removalPasscode = self->_removalPasscode;
  if (removalPasscode)
  {
    [v3 setObject:removalPasscode forKey:@"RemovalPassword"];
  }

  return v4;
}

@end