@interface MCAirPlaySecurityPayload
+ (id)typeStrings;
- (MCAirPlaySecurityPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)stubDictionary;
- (id)subtitle1Description;
- (id)subtitle2Description;
- (id)verboseDescription;
@end

@implementation MCAirPlaySecurityPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.airplay.security";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCAirPlaySecurityPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v45[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v38.receiver = self;
  v38.super_class = MCAirPlaySecurityPayload;
  v9 = [(MCPayload *)&v38 initWithDictionary:v8 profile:a4 outError:a5];
  if (!v9)
  {
    goto LABEL_19;
  }

  v37 = 0;
  v10 = [MCProfile removeRequiredObjectInDictionary:v8 key:@"AccessType" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v37];
  v11 = v37;
  if (v11)
  {
    v12 = v11;
LABEL_8:

LABEL_9:
    v16 = [(MCPayload *)v9 malformedPayloadErrorWithError:v12];
    v10 = v16;
    if (a5)
    {
      v17 = v16;
      *a5 = v10;
    }

    v18 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      v20 = objc_opt_class();
      v21 = v20;
      v22 = [v10 MCVerboseDescription];
      *buf = 138543618;
      v40 = v20;
      v41 = 2114;
      v42 = v22;
      _os_log_impl(&dword_1A795B000, v19, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v9 = 0;
    goto LABEL_14;
  }

  v45[0] = @"ANY";
  v45[1] = @"WIFI_ONLY";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  v36 = 0;
  [MCProfile checkString:v10 isOneOfStrings:v13 key:@"AccessType" errorDomain:@"MCPayloadErrorDomain" errorCode:2004 errorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v36];
  v14 = v36;
  if (v14)
  {
LABEL_5:
    v12 = v14;

    goto LABEL_8;
  }

  [(MCAirPlaySecurityPayload *)v9 setAccessType:v10];

  v35 = 0;
  v10 = [MCProfile removeRequiredObjectInDictionary:v8 key:@"SecurityType" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v35];
  v15 = v35;
  if (v15)
  {
    goto LABEL_7;
  }

  v28 = [(MCAirPlaySecurityPayload *)v9 accessType];
  v29 = [v28 isEqualToString:@"ANY"];

  if (v29)
  {
    v44 = @"NONE";
    v30 = &v44;
  }

  else
  {
    v43 = @"NONE";
    v30 = &v43;
  }

  v30[1] = @"PASSCODE_ONCE";
  v30[2] = @"PASSCODE_ALWAYS";
  v30[3] = @"PASSWORD";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v34 = 0;
  [MCProfile checkString:v10 isOneOfStrings:v13 key:@"SecurityType" errorDomain:@"MCPayloadErrorDomain" errorCode:2004 errorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v34];
  v14 = v34;
  if (v14)
  {
    goto LABEL_5;
  }

  [(MCAirPlaySecurityPayload *)v9 setSecurityType:v10];

  v33 = 0;
  v10 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:v8 key:@"Password" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v33];
  v15 = v33;
  if (v15)
  {
LABEL_7:
    v12 = v15;
    goto LABEL_8;
  }

  v31 = [(MCAirPlaySecurityPayload *)v9 securityType];
  if (![v31 isEqual:@"PASSWORD"])
  {

    goto LABEL_30;
  }

  v32 = [v10 length];

  if (v32)
  {
LABEL_30:
    [(MCAirPlaySecurityPayload *)v9 setPassword:v10];
    v12 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v12 = [MCPayload badFieldValueErrorWithField:@"Password"];

  if (v12)
  {
    goto LABEL_9;
  }

LABEL_15:
  if ([v8 count])
  {
    v23 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v24 = v23;
      v25 = [(MCPayload *)v9 friendlyName];
      *buf = 138543618;
      v40 = v25;
      v41 = 2114;
      v42 = v8;
      _os_log_impl(&dword_1A795B000, v24, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_19:
  v26 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)stubDictionary
{
  v9.receiver = self;
  v9.super_class = MCAirPlaySecurityPayload;
  v3 = [(MCPayload *)&v9 stubDictionary];
  v4 = v3;
  accessType = self->_accessType;
  if (accessType)
  {
    [v3 setObject:accessType forKey:@"AccessType"];
  }

  securityType = self->_securityType;
  if (securityType)
  {
    [v4 setObject:securityType forKey:@"SecurityType"];
  }

  password = self->_password;
  if (password)
  {
    [v4 setObject:password forKey:@"Password"];
  }

  return v4;
}

- (id)subtitle1Description
{
  if ([(NSString *)self->_accessType isEqualToString:@"ANY"])
  {
    v3 = MCLocalizedString(@"AIRPLAY_SECURITY_ACCESS_ANY");
  }

  else if ([(NSString *)self->_accessType isEqualToString:@"WIFI_ONLY"])
  {
    v4 = [@"AIRPLAY_SECURITY_ACCESS_WIFI" MCAppendGreenteaSuffix];
    v3 = MCLocalizedString(v4);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)subtitle2Description
{
  if ([(NSString *)self->_securityType isEqualToString:@"NONE"])
  {
    v3 = @"AIRPLAY_SECURITY_TYPE_NONE";
LABEL_9:
    v4 = MCLocalizedString(v3);
    goto LABEL_10;
  }

  if ([(NSString *)self->_securityType isEqualToString:@"PASSCODE_ONCE"])
  {
    v3 = @"AIRPLAY_SECURITY_TYPE_ONCE";
    goto LABEL_9;
  }

  if ([(NSString *)self->_securityType isEqualToString:@"PASSCODE_ALWAYS"])
  {
    v3 = @"AIRPLAY_SECURITY_TYPE_ALWAYS";
    goto LABEL_9;
  }

  if ([(NSString *)self->_securityType isEqualToString:@"PASSWORD"])
  {
    v3 = @"AIRPLAY_SECURITY_TYPE_PASSWORD";
    goto LABEL_9;
  }

  v4 = 0;
LABEL_10:

  return v4;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AD60];
  v8.receiver = self;
  v8.super_class = MCAirPlaySecurityPayload;
  v4 = [(MCPayload *)&v8 verboseDescription];
  v5 = [v3 stringWithString:v4];

  securityType = self->_securityType;
  [v5 appendFormat:@"AirPlay Security: %@ (%@)\n", securityType, self->_accessType];

  return v5;
}

@end