@interface MCAPNConfiguration
- (MCAPNConfiguration)initWithDictionary:(id)dictionary outError:(id *)error;
- (NSDictionary)telephonyRepresentation;
- (id)description;
- (id)localizedAuthenticationType;
- (id)stubDictionary;
@end

@implementation MCAPNConfiguration

- (MCAPNConfiguration)initWithDictionary:(id)dictionary outError:(id *)error
{
  v57 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v52.receiver = self;
  v52.super_class = MCAPNConfiguration;
  v7 = [(MCAPNConfiguration *)&v52 init];
  if (!v7)
  {
    goto LABEL_29;
  }

  v51 = 0;
  v8 = [MCProfile removeRequiredNonZeroLengthStringInDictionary:dictionaryCopy key:@"Name" errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v51];
  enableXLAT464 = v51;
  name = v7->_name;
  v7->_name = v8;

  if (!enableXLAT464)
  {
    v50 = 0;
    v11 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:dictionaryCopy key:@"AuthenticationType" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v50];
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
    v15 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:dictionaryCopy key:@"Username" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v49];
    enableXLAT464 = v49;
    username = v7->_username;
    v7->_username = v15;

    if (!enableXLAT464)
    {
      v48 = 0;
      v17 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:dictionaryCopy key:@"Password" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v48];
      enableXLAT464 = v48;
      password = v7->_password;
      v7->_password = v17;

      if (!enableXLAT464)
      {
        v47 = 0;
        v19 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:dictionaryCopy key:@"ProxyServer" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v47];
        enableXLAT464 = v47;
        proxyServer = v7->_proxyServer;
        v7->_proxyServer = v19;

        if (!enableXLAT464)
        {
          v46 = 0;
          v21 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"ProxyPort" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v46];
          enableXLAT464 = v46;
          proxyPort = v7->_proxyPort;
          v7->_proxyPort = v21;
        }
      }
    }
  }

  v45 = enableXLAT464;
  v23 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"DefaultProtocolMask" isRequired:0 outError:&v45];
  v14 = v45;

  defaultProtocolMask = v7->_defaultProtocolMask;
  v7->_defaultProtocolMask = v23;

  if (v14)
  {
    goto LABEL_20;
  }

  v44 = 0;
  v25 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"AllowedProtocolMask" isRequired:0 outError:&v44];
  v14 = v44;
  allowedProtocolMask = v7->_allowedProtocolMask;
  v7->_allowedProtocolMask = v25;

  if (v14)
  {
    goto LABEL_20;
  }

  v43 = 0;
  v27 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"AllowedProtocolMaskInRoaming" isRequired:0 outError:&v43];
  v14 = v43;
  allowedProtocolMaskInRoaming = v7->_allowedProtocolMaskInRoaming;
  v7->_allowedProtocolMaskInRoaming = v27;

  if (v14)
  {
    goto LABEL_20;
  }

  v42 = 0;
  v29 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"AllowedProtocolMaskInDomesticRoaming" isRequired:0 outError:&v42];
  v14 = v42;
  allowedProtocolMaskInDomesticRoaming = v7->_allowedProtocolMaskInDomesticRoaming;
  v7->_allowedProtocolMaskInDomesticRoaming = v29;

  if (v14)
  {
    goto LABEL_20;
  }

  v41 = 0;
  v40 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"EnableXLAT464" isRequired:0 outError:&v41];
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
      mCVerboseDescription = [(NSNumber *)v14 MCVerboseDescription];
      *buf = 138543618;
      v54 = v33;
      v55 = 2114;
      v56 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v32, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse APN dictionary: %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v36 = v14;
      *error = v14;
    }

    v7 = 0;
  }

  if ([dictionaryCopy count])
  {
    v37 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v54 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v37, OS_LOG_TYPE_INFO, "APN dictionary contains ignored fields. They are: %{public}@", buf, 0xCu);
    }
  }

LABEL_29:
  v38 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)stubDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  name = [(MCAPNConfiguration *)self name];
  [dictionary setObject:name forKeyedSubscript:@"Name"];

  authenticationType = [(MCAPNConfiguration *)self authenticationType];
  [dictionary setObject:authenticationType forKeyedSubscript:@"AuthenticationType"];

  username = [(MCAPNConfiguration *)self username];
  [dictionary setObject:username forKeyedSubscript:@"Username"];

  proxyServer = [(MCAPNConfiguration *)self proxyServer];
  [dictionary setObject:proxyServer forKeyedSubscript:@"ProxyServer"];

  proxyPort = [(MCAPNConfiguration *)self proxyPort];
  [dictionary setObject:proxyPort forKeyedSubscript:@"ProxyPort"];

  defaultProtocolMask = [(MCAPNConfiguration *)self defaultProtocolMask];
  [dictionary setObject:defaultProtocolMask forKeyedSubscript:@"DefaultProtocolMask"];

  allowedProtocolMask = [(MCAPNConfiguration *)self allowedProtocolMask];
  [dictionary setObject:allowedProtocolMask forKeyedSubscript:@"AllowedProtocolMask"];

  allowedProtocolMaskInRoaming = [(MCAPNConfiguration *)self allowedProtocolMaskInRoaming];
  [dictionary setObject:allowedProtocolMaskInRoaming forKeyedSubscript:@"AllowedProtocolMaskInRoaming"];

  allowedProtocolMaskInDomesticRoaming = [(MCAPNConfiguration *)self allowedProtocolMaskInDomesticRoaming];
  [dictionary setObject:allowedProtocolMaskInDomesticRoaming forKeyedSubscript:@"AllowedProtocolMaskInDomesticRoaming"];

  enableXLAT464 = [(MCAPNConfiguration *)self enableXLAT464];
  [dictionary setObject:enableXLAT464 forKeyedSubscript:@"EnableXLAT464"];

  return dictionary;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  name = [(MCAPNConfiguration *)self name];

  if (name)
  {
    name2 = [(MCAPNConfiguration *)self name];
    [string appendFormat:@"  Name        : %@\n", name2];
  }

  authenticationType = [(MCAPNConfiguration *)self authenticationType];

  if (authenticationType)
  {
    authenticationType2 = [(MCAPNConfiguration *)self authenticationType];
    [string appendFormat:@"  Auth        : %@\n", authenticationType2];
  }

  username = [(MCAPNConfiguration *)self username];

  if (username)
  {
    username2 = [(MCAPNConfiguration *)self username];
    [string appendFormat:@"  Username    : %@\n", username2];
  }

  proxyServer = [(MCAPNConfiguration *)self proxyServer];

  if (proxyServer)
  {
    proxyServer2 = [(MCAPNConfiguration *)self proxyServer];
    [string appendFormat:@"  Proxy       : %@\n", proxyServer2];
  }

  proxyPort = [(MCAPNConfiguration *)self proxyPort];

  if (proxyPort)
  {
    proxyPort2 = [(MCAPNConfiguration *)self proxyPort];
    [string appendFormat:@"  Port        : %@\n", proxyPort2];
  }

  enableXLAT464 = [(MCAPNConfiguration *)self enableXLAT464];

  if (enableXLAT464)
  {
    enableXLAT4642 = [(MCAPNConfiguration *)self enableXLAT464];
    [string appendFormat:@"  XLAT464     : %@\n", enableXLAT4642];
  }

  return string;
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
  name = [(MCAPNConfiguration *)self name];
  [v3 setObject:name forKeyedSubscript:@"apn"];

  authenticationType = [(MCAPNConfiguration *)self authenticationType];
  [v3 setObject:authenticationType forKeyedSubscript:@"auth_type"];

  username = [(MCAPNConfiguration *)self username];
  [v3 setObject:username forKeyedSubscript:@"username"];

  password = [(MCAPNConfiguration *)self password];
  [v3 setObject:password forKeyedSubscript:@"password"];

  proxyServer = [(MCAPNConfiguration *)self proxyServer];

  if (proxyServer)
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:6];
    [v9 setObject:&unk_1F1AA55D8 forKeyedSubscript:@"HTTPEnable"];
    [v9 setObject:&unk_1F1AA55D8 forKeyedSubscript:@"HTTPSEnable"];
    proxyServer2 = [(MCAPNConfiguration *)self proxyServer];
    [v9 setObject:proxyServer2 forKeyedSubscript:@"HTTPProxy"];

    proxyServer3 = [(MCAPNConfiguration *)self proxyServer];
    [v9 setObject:proxyServer3 forKeyedSubscript:@"HTTPSProxy"];

    proxyPort = [(MCAPNConfiguration *)self proxyPort];

    if (proxyPort)
    {
      proxyPort2 = [(MCAPNConfiguration *)self proxyPort];
      [v9 setObject:proxyPort2 forKeyedSubscript:@"HTTPPort"];

      proxyPort3 = [(MCAPNConfiguration *)self proxyPort];
      [v9 setObject:proxyPort3 forKeyedSubscript:@"HTTPSPort"];
    }

    [v3 setObject:v9 forKeyedSubscript:@"ProxyConfiguration"];
  }

  defaultProtocolMask = [(MCAPNConfiguration *)self defaultProtocolMask];
  [v3 setObject:defaultProtocolMask forKeyedSubscript:@"DefaultProtocolMask"];

  allowedProtocolMask = [(MCAPNConfiguration *)self allowedProtocolMask];
  [v3 setObject:allowedProtocolMask forKeyedSubscript:@"AllowedProtocolMask"];

  allowedProtocolMaskInRoaming = [(MCAPNConfiguration *)self allowedProtocolMaskInRoaming];
  [v3 setObject:allowedProtocolMaskInRoaming forKeyedSubscript:@"AllowedProtocolMaskInRoaming"];

  allowedProtocolMaskInDomesticRoaming = [(MCAPNConfiguration *)self allowedProtocolMaskInDomesticRoaming];
  [v3 setObject:allowedProtocolMaskInDomesticRoaming forKeyedSubscript:@"AllowedProtocolMaskInDomesticRoaming"];

  enableXLAT464 = [(MCAPNConfiguration *)self enableXLAT464];
  [v3 setObject:enableXLAT464 forKeyedSubscript:@"enableXLAT464"];

  return v3;
}

@end