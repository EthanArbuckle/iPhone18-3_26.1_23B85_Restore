@interface MCAPNConfiguration
- (MCAPNConfiguration)initWithDictionary:(id)a3 outError:(id *)a4;
- (NSDictionary)telephonyRepresentation;
- (id)description;
- (id)localizedAuthenticationType;
- (id)stubDictionary;
@end

@implementation MCAPNConfiguration

- (MCAPNConfiguration)initWithDictionary:(id)a3 outError:(id *)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v52.receiver = self;
  v52.super_class = MCAPNConfiguration;
  v7 = [(MCAPNConfiguration *)&v52 init];
  if (!v7)
  {
    goto LABEL_29;
  }

  v51 = 0;
  v8 = [MCProfile removeRequiredNonZeroLengthStringInDictionary:v6 key:@"Name" errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v51];
  enableXLAT464 = v51;
  name = v7->_name;
  v7->_name = v8;

  if (!enableXLAT464)
  {
    v50 = 0;
    v11 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:v6 key:@"AuthenticationType" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v50];
    enableXLAT464 = v50;
    authenticationType = v7->_authenticationType;
    v7->_authenticationType = v11;
  }

  v13 = v7->_authenticationType;
  if (v13)
  {
    if (![(NSString *)v13 isEqualToString:@"CHAP"]&& ![(NSString *)v7->_authenticationType isEqualToString:@"PAP"])
    {
      v14 = [MCPayload badFieldValueErrorWithField:@"AuthenticationType"];
      goto LABEL_8;
    }
  }

  else
  {
    v7->_authenticationType = @"PAP";
  }

  if (!enableXLAT464)
  {
    v49 = 0;
    v15 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:v6 key:@"Username" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v49];
    enableXLAT464 = v49;
    username = v7->_username;
    v7->_username = v15;

    if (!enableXLAT464)
    {
      v48 = 0;
      v17 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:v6 key:@"Password" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v48];
      enableXLAT464 = v48;
      password = v7->_password;
      v7->_password = v17;

      if (!enableXLAT464)
      {
        v47 = 0;
        v19 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:v6 key:@"ProxyServer" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v47];
        enableXLAT464 = v47;
        proxyServer = v7->_proxyServer;
        v7->_proxyServer = v19;

        if (!enableXLAT464)
        {
          v46 = 0;
          v21 = [MCProfile removeOptionalObjectInDictionary:v6 key:@"ProxyPort" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v46];
          enableXLAT464 = v46;
          proxyPort = v7->_proxyPort;
          v7->_proxyPort = v21;
        }
      }
    }
  }

  v45 = enableXLAT464;
  v23 = [v6 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"DefaultProtocolMask" isRequired:0 outError:&v45];
  v14 = v45;

  defaultProtocolMask = v7->_defaultProtocolMask;
  v7->_defaultProtocolMask = v23;

  if (v14)
  {
    goto LABEL_20;
  }

  v44 = 0;
  v25 = [v6 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"AllowedProtocolMask" isRequired:0 outError:&v44];
  v14 = v44;
  allowedProtocolMask = v7->_allowedProtocolMask;
  v7->_allowedProtocolMask = v25;

  if (v14)
  {
    goto LABEL_20;
  }

  v43 = 0;
  v27 = [v6 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"AllowedProtocolMaskInRoaming" isRequired:0 outError:&v43];
  v14 = v43;
  allowedProtocolMaskInRoaming = v7->_allowedProtocolMaskInRoaming;
  v7->_allowedProtocolMaskInRoaming = v27;

  if (v14)
  {
    goto LABEL_20;
  }

  v42 = 0;
  v29 = [v6 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"AllowedProtocolMaskInDomesticRoaming" isRequired:0 outError:&v42];
  v14 = v42;
  allowedProtocolMaskInDomesticRoaming = v7->_allowedProtocolMaskInDomesticRoaming;
  v7->_allowedProtocolMaskInDomesticRoaming = v29;

  if (v14)
  {
    goto LABEL_20;
  }

  v41 = 0;
  v40 = [v6 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EnableXLAT464" isRequired:0 outError:&v41];
  v14 = v41;
  enableXLAT464 = v7->_enableXLAT464;
  v7->_enableXLAT464 = v40;
LABEL_8:

  if (v14)
  {
LABEL_20:
    v31 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v32 = v31;
      v33 = objc_opt_class();
      v34 = v33;
      v35 = [(NSNumber *)v14 MCVerboseDescription];
      *buf = 138543618;
      v54 = v33;
      v55 = 2114;
      v56 = v35;
      _os_log_impl(&dword_1A795B000, v32, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse APN dictionary: %{public}@", buf, 0x16u);
    }

    if (a4)
    {
      v36 = v14;
      *a4 = v14;
    }

    v7 = 0;
  }

  if ([v6 count])
  {
    v37 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v54 = v6;
      _os_log_impl(&dword_1A795B000, v37, OS_LOG_TYPE_INFO, "APN dictionary contains ignored fields. They are: %{public}@", buf, 0xCu);
    }
  }

LABEL_29:
  v38 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)stubDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(MCAPNConfiguration *)self name];
  [v3 setObject:v4 forKeyedSubscript:@"Name"];

  v5 = [(MCAPNConfiguration *)self authenticationType];
  [v3 setObject:v5 forKeyedSubscript:@"AuthenticationType"];

  v6 = [(MCAPNConfiguration *)self username];
  [v3 setObject:v6 forKeyedSubscript:@"Username"];

  v7 = [(MCAPNConfiguration *)self proxyServer];
  [v3 setObject:v7 forKeyedSubscript:@"ProxyServer"];

  v8 = [(MCAPNConfiguration *)self proxyPort];
  [v3 setObject:v8 forKeyedSubscript:@"ProxyPort"];

  v9 = [(MCAPNConfiguration *)self defaultProtocolMask];
  [v3 setObject:v9 forKeyedSubscript:@"DefaultProtocolMask"];

  v10 = [(MCAPNConfiguration *)self allowedProtocolMask];
  [v3 setObject:v10 forKeyedSubscript:@"AllowedProtocolMask"];

  v11 = [(MCAPNConfiguration *)self allowedProtocolMaskInRoaming];
  [v3 setObject:v11 forKeyedSubscript:@"AllowedProtocolMaskInRoaming"];

  v12 = [(MCAPNConfiguration *)self allowedProtocolMaskInDomesticRoaming];
  [v3 setObject:v12 forKeyedSubscript:@"AllowedProtocolMaskInDomesticRoaming"];

  v13 = [(MCAPNConfiguration *)self enableXLAT464];
  [v3 setObject:v13 forKeyedSubscript:@"EnableXLAT464"];

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(MCAPNConfiguration *)self name];

  if (v4)
  {
    v5 = [(MCAPNConfiguration *)self name];
    [v3 appendFormat:@"  Name        : %@\n", v5];
  }

  v6 = [(MCAPNConfiguration *)self authenticationType];

  if (v6)
  {
    v7 = [(MCAPNConfiguration *)self authenticationType];
    [v3 appendFormat:@"  Auth        : %@\n", v7];
  }

  v8 = [(MCAPNConfiguration *)self username];

  if (v8)
  {
    v9 = [(MCAPNConfiguration *)self username];
    [v3 appendFormat:@"  Username    : %@\n", v9];
  }

  v10 = [(MCAPNConfiguration *)self proxyServer];

  if (v10)
  {
    v11 = [(MCAPNConfiguration *)self proxyServer];
    [v3 appendFormat:@"  Proxy       : %@\n", v11];
  }

  v12 = [(MCAPNConfiguration *)self proxyPort];

  if (v12)
  {
    v13 = [(MCAPNConfiguration *)self proxyPort];
    [v3 appendFormat:@"  Port        : %@\n", v13];
  }

  v14 = [(MCAPNConfiguration *)self enableXLAT464];

  if (v14)
  {
    v15 = [(MCAPNConfiguration *)self enableXLAT464];
    [v3 appendFormat:@"  XLAT464     : %@\n", v15];
  }

  return v3;
}

- (id)localizedAuthenticationType
{
  if ([(NSString *)self->_authenticationType isEqualToString:@"CHAP"])
  {
    v3 = @"AUTHENTICATION_TYPE_CHAP";
LABEL_5:
    v4 = MCLocalizedString(v3);
    goto LABEL_7;
  }

  if ([(NSString *)self->_authenticationType isEqualToString:@"PAP"])
  {
    v3 = @"AUTHENTICATION_TYPE_PAP";
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (NSDictionary)telephonyRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];
  v4 = [(MCAPNConfiguration *)self name];
  [v3 setObject:v4 forKeyedSubscript:@"apn"];

  v5 = [(MCAPNConfiguration *)self authenticationType];
  [v3 setObject:v5 forKeyedSubscript:@"auth_type"];

  v6 = [(MCAPNConfiguration *)self username];
  [v3 setObject:v6 forKeyedSubscript:@"username"];

  v7 = [(MCAPNConfiguration *)self password];
  [v3 setObject:v7 forKeyedSubscript:@"password"];

  v8 = [(MCAPNConfiguration *)self proxyServer];

  if (v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:6];
    [v9 setObject:&unk_1F1AA55D8 forKeyedSubscript:@"HTTPEnable"];
    [v9 setObject:&unk_1F1AA55D8 forKeyedSubscript:@"HTTPSEnable"];
    v10 = [(MCAPNConfiguration *)self proxyServer];
    [v9 setObject:v10 forKeyedSubscript:@"HTTPProxy"];

    v11 = [(MCAPNConfiguration *)self proxyServer];
    [v9 setObject:v11 forKeyedSubscript:@"HTTPSProxy"];

    v12 = [(MCAPNConfiguration *)self proxyPort];

    if (v12)
    {
      v13 = [(MCAPNConfiguration *)self proxyPort];
      [v9 setObject:v13 forKeyedSubscript:@"HTTPPort"];

      v14 = [(MCAPNConfiguration *)self proxyPort];
      [v9 setObject:v14 forKeyedSubscript:@"HTTPSPort"];
    }

    [v3 setObject:v9 forKeyedSubscript:@"ProxyConfiguration"];
  }

  v15 = [(MCAPNConfiguration *)self defaultProtocolMask];
  [v3 setObject:v15 forKeyedSubscript:@"DefaultProtocolMask"];

  v16 = [(MCAPNConfiguration *)self allowedProtocolMask];
  [v3 setObject:v16 forKeyedSubscript:@"AllowedProtocolMask"];

  v17 = [(MCAPNConfiguration *)self allowedProtocolMaskInRoaming];
  [v3 setObject:v17 forKeyedSubscript:@"AllowedProtocolMaskInRoaming"];

  v18 = [(MCAPNConfiguration *)self allowedProtocolMaskInDomesticRoaming];
  [v3 setObject:v18 forKeyedSubscript:@"AllowedProtocolMaskInDomesticRoaming"];

  v19 = [(MCAPNConfiguration *)self enableXLAT464];
  [v3 setObject:v19 forKeyedSubscript:@"enableXLAT464"];

  return v3;
}

@end