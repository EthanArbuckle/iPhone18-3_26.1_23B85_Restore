@interface MCGlobalHTTPProxyPayload
- (MCGlobalHTTPProxyPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)installationWarnings;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)subtitle1Description;
- (id)subtitle1Label;
- (id)subtitle2Description;
- (id)subtitle2Label;
- (id)verboseDescription;
@end

@implementation MCGlobalHTTPProxyPayload

- (MCGlobalHTTPProxyPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v77 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v72.receiver = self;
  v72.super_class = MCGlobalHTTPProxyPayload;
  v10 = [(MCPayload *)&v72 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (!v10)
  {
    goto LABEL_23;
  }

  v71 = 0;
  v11 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"ProxyPACFallbackAllowed" isRequired:0 outError:&v71];
  v12 = v71;
  proxyPACFallbackAllowedNum = v10->_proxyPACFallbackAllowedNum;
  v10->_proxyPACFallbackAllowedNum = v11;

  if (v12)
  {
    goto LABEL_14;
  }

  v10->_proxyPACFallbackAllowed = [(NSNumber *)v10->_proxyPACFallbackAllowedNum BOOLValue];
  v70 = 0;
  v14 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"ProxyCaptiveLoginAllowed" isRequired:0 outError:&v70];
  v12 = v70;
  proxyCaptiveLoginAllowedNum = v10->_proxyCaptiveLoginAllowedNum;
  v10->_proxyCaptiveLoginAllowedNum = v14;

  if (v12)
  {
    goto LABEL_14;
  }

  v10->_proxyCaptiveLoginAllowed = [(NSNumber *)v10->_proxyCaptiveLoginAllowedNum BOOLValue];
  if (![profileCopy isStub])
  {
    v62 = 0;
    v16 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ProxyType" isRequired:0 outError:&v62];
    v17 = v62;
    if (v17)
    {
      goto LABEL_12;
    }

    if (v16)
    {
      if ([v16 isEqualToString:@"Manual"])
      {
        v39 = 1;
LABEL_33:
        v10->_proxyType = v39;
        goto LABEL_34;
      }

      if ([v16 isEqualToString:@"Auto"])
      {
        v39 = 0;
        goto LABEL_33;
      }

      v17 = [MCPayload badFieldValueErrorWithField:@"ProxyType"];
      if (v17)
      {
        goto LABEL_12;
      }
    }

LABEL_34:
    proxyType = v10->_proxyType;
    if (proxyType)
    {
      if (proxyType != 1)
      {
        goto LABEL_42;
      }

      v61 = 0;
      v44 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ProxyServer" isRequired:1 outError:&v61];
      v12 = v61;
      proxyServer = v10->_proxyServer;
      v10->_proxyServer = v44;

      if (v12)
      {
        goto LABEL_13;
      }

      v60 = 0;
      v46 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"ProxyServerPort" isRequired:0 outError:&v60];
      v12 = v60;
      proxyServerPort = v10->_proxyServerPort;
      v10->_proxyServerPort = v46;

      if (v12)
      {
        goto LABEL_13;
      }

      v59 = 0;
      v48 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ProxyUsername" isRequired:0 outError:&v59];
      v12 = v59;
      proxyUsername = v10->_proxyUsername;
      v10->_proxyUsername = v48;

      if (v12)
      {
        goto LABEL_13;
      }

      v58 = 0;
      v50 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ProxyPassword" isRequired:0 outError:&v58];
      v12 = v58;
      v51 = 120;
    }

    else
    {
      v57 = 0;
      v50 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ProxyPACURL" isRequired:0 outError:&v57];
      v12 = v57;
      v51 = 128;
    }

    v52 = *(&v10->super.super.isa + v51);
    *(&v10->super.super.isa + v51) = v50;

    if (v12)
    {
      goto LABEL_13;
    }

LABEL_42:
    if (!v10->_proxyPACURLString)
    {
      v12 = 0;
      goto LABEL_13;
    }

    credentialUUID = [MEMORY[0x1E695DFF8] URLWithString:?];
    scheme = [credentialUUID scheme];
    if ([scheme isEqualToString:@"http"])
    {
    }

    else
    {
      scheme2 = [credentialUUID scheme];
      v55 = [scheme2 isEqualToString:@"https"];

      if ((v55 & 1) == 0)
      {
        v56 = [MCPayload badFieldValueErrorWithField:@"ProxyPACURL"];
        if (v56)
        {
          v12 = v56;
          goto LABEL_52;
        }
      }
    }

    v12 = 0;
    goto LABEL_52;
  }

  v69 = 0;
  v16 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"ProxyType" isRequired:0 outError:&v69];
  v17 = v69;
  if (v17)
  {
LABEL_12:
    v12 = v17;
    goto LABEL_13;
  }

  -[MCGlobalHTTPProxyPayload setProxyType:](v10, "setProxyType:", [v16 intValue]);
  if ([(MCGlobalHTTPProxyPayload *)v10 proxyType]!= 1)
  {
    if (v10->_proxyType)
    {
LABEL_30:
      v63 = 0;
      v41 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"credentialUUID" isRequired:0 outError:&v63];
      v12 = v63;
      credentialUUID = v10->_credentialUUID;
      v10->_credentialUUID = v41;
LABEL_52:

      goto LABEL_13;
    }

    v64 = 0;
    v24 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ProxyPACURL" isRequired:0 outError:&v64];
    v12 = v64;
    v25 = 128;
LABEL_29:
    v40 = *(&v10->super.super.isa + v25);
    *(&v10->super.super.isa + v25) = v24;

    if (v12)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

  v68 = 0;
  v18 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ProxyServer" isRequired:0 outError:&v68];
  v12 = v68;
  v19 = v10->_proxyServer;
  v10->_proxyServer = v18;

  if (!v12)
  {
    v67 = 0;
    v20 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"ProxyServerPort" isRequired:0 outError:&v67];
    v12 = v67;
    v21 = v10->_proxyServerPort;
    v10->_proxyServerPort = v20;

    if (!v12)
    {
      v66 = 0;
      v22 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ProxyUsername" isRequired:0 outError:&v66];
      v12 = v66;
      v23 = v10->_proxyUsername;
      v10->_proxyUsername = v22;

      if (!v12)
      {
        v65 = 0;
        v24 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ProxyPassword" isRequired:0 outError:&v65];
        v12 = v65;
        v25 = 120;
        goto LABEL_29;
      }
    }
  }

LABEL_13:

  if (v12)
  {
LABEL_14:
    v26 = [(MCPayload *)v10 malformedPayloadErrorWithError:v12];
    v27 = v26;
    if (error)
    {
      v28 = v26;
      *error = v27;
    }

    v29 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v30 = v29;
      v31 = objc_opt_class();
      v32 = v31;
      mCVerboseDescription = [v27 MCVerboseDescription];
      *buf = 138543618;
      v74 = v31;
      v75 = 2114;
      v76 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v30, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

  if ([dictionaryCopy count])
  {
    v34 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v35 = v34;
      friendlyName = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v74 = friendlyName;
      v75 = 2114;
      v76 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v35, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_23:
  v37 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)stubDictionary
{
  v16.receiver = self;
  v16.super_class = MCGlobalHTTPProxyPayload;
  stubDictionary = [(MCPayload *)&v16 stubDictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[MCGlobalHTTPProxyPayload proxyType](self, "proxyType")}];
  [stubDictionary setObject:v4 forKey:@"ProxyType"];

  proxyServer = [(MCGlobalHTTPProxyPayload *)self proxyServer];

  if (proxyServer)
  {
    proxyServer2 = [(MCGlobalHTTPProxyPayload *)self proxyServer];
    [stubDictionary setObject:proxyServer2 forKey:@"ProxyServer"];
  }

  proxyServerPort = [(MCGlobalHTTPProxyPayload *)self proxyServerPort];

  if (proxyServerPort)
  {
    proxyServerPort2 = [(MCGlobalHTTPProxyPayload *)self proxyServerPort];
    [stubDictionary setObject:proxyServerPort2 forKey:@"ProxyServerPort"];
  }

  proxyPACURLString = [(MCGlobalHTTPProxyPayload *)self proxyPACURLString];

  if (proxyPACURLString)
  {
    proxyPACURLString2 = [(MCGlobalHTTPProxyPayload *)self proxyPACURLString];
    [stubDictionary setObject:proxyPACURLString2 forKey:@"ProxyPACURL"];
  }

  credentialUUID = [(MCGlobalHTTPProxyPayload *)self credentialUUID];

  if (credentialUUID)
  {
    credentialUUID2 = [(MCGlobalHTTPProxyPayload *)self credentialUUID];
    [stubDictionary setObject:credentialUUID2 forKey:@"credentialUUID"];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCGlobalHTTPProxyPayload proxyPACFallbackAllowed](self, "proxyPACFallbackAllowed")}];
  [stubDictionary setObject:v13 forKeyedSubscript:@"ProxyPACFallbackAllowed"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCGlobalHTTPProxyPayload proxyCaptiveLoginAllowed](self, "proxyCaptiveLoginAllowed")}];
  [stubDictionary setObject:v14 forKeyedSubscript:@"ProxyCaptiveLoginAllowed"];

  return stubDictionary;
}

- (id)subtitle1Label
{
  subtitle1Description = [(MCGlobalHTTPProxyPayload *)self subtitle1Description];
  if (subtitle1Description)
  {
    MCLocalizedFormat(@"GLOBAL_PROXY_SERVER_COLON", v2, v3, v4, v5, v6, v7, v8, v12);
  }

  else
  {
    MCLocalizedString(@"GLOBAL_PROXY_SERVER_MISSING");
  }
  v10 = ;

  return v10;
}

- (id)subtitle1Description
{
  if ([(MCGlobalHTTPProxyPayload *)self proxyType]== 1)
  {
    [(MCGlobalHTTPProxyPayload *)self proxyServer];
  }

  else
  {
    [(MCGlobalHTTPProxyPayload *)self proxyPACURLString];
  }
  v3 = ;

  return v3;
}

- (id)subtitle2Label
{
  proxyServerPort = [(MCGlobalHTTPProxyPayload *)self proxyServerPort];

  if (proxyServerPort)
  {
    v10 = MCLocalizedFormat(@"GLOBAL_PROXY_SERVER_PORT_COLON", v3, v4, v5, v6, v7, v8, v9, v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)subtitle2Description
{
  proxyServerPort = [(MCGlobalHTTPProxyPayload *)self proxyServerPort];

  if (proxyServerPort)
  {
    proxyServerPort2 = [(MCGlobalHTTPProxyPayload *)self proxyServerPort];
    v5 = MCFormattedStringForNumber(proxyServerPort2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)payloadDescriptionKeyValueSections
{
  v61[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  proxyServer = [(MCGlobalHTTPProxyPayload *)self proxyServer];

  if (proxyServer)
  {
    v5 = [MCKeyValue alloc];
    proxyServer2 = [(MCGlobalHTTPProxyPayload *)self proxyServer];
    v7 = MCLocalizedString(@"SERVER");
    v8 = [(MCKeyValue *)v5 initWithLocalizedString:proxyServer2 localizedKey:v7];

    [v3 addObject:v8];
  }

  proxyServerPort = [(MCGlobalHTTPProxyPayload *)self proxyServerPort];

  if (proxyServerPort)
  {
    v10 = MEMORY[0x1E696AEC0];
    proxyServerPort2 = [(MCGlobalHTTPProxyPayload *)self proxyServerPort];
    v12 = [v10 stringWithFormat:@"%d", objc_msgSend(proxyServerPort2, "intValue")];

    v13 = [MCKeyValue alloc];
    v14 = MCLocalizedString(@"PORT");
    v15 = [(MCKeyValue *)v13 initWithLocalizedString:v12 localizedKey:v14];

    [v3 addObject:v15];
  }

  if ([(MCGlobalHTTPProxyPayload *)self proxyType])
  {
    if ([(MCGlobalHTTPProxyPayload *)self proxyType]== 1)
    {
      v16 = [MCKeyValue alloc];
      v17 = MCLocalizedString(@"TYPE_MANUAL");
      v18 = MCLocalizedString(@"TYPE");
      v19 = [(MCKeyValue *)v16 initWithLocalizedString:v17 localizedKey:v18];
      [v3 addObject:v19];

      proxyUsername = [(MCGlobalHTTPProxyPayload *)self proxyUsername];

      if (proxyUsername)
      {
        v21 = [MCKeyValue alloc];
        proxyUsername2 = [(MCGlobalHTTPProxyPayload *)self proxyUsername];
        v23 = MCLocalizedString(@"USERNAME");
        v24 = [(MCKeyValue *)v21 initWithLocalizedString:proxyUsername2 localizedKey:v23];

        [v3 addObject:v24];
      }

      proxyPassword = [(MCGlobalHTTPProxyPayload *)self proxyPassword];

      if (proxyPassword)
      {
        v26 = [MCKeyValue alloc];
        v27 = MCLocalizedString(@"PRESENT");
        v28 = MCLocalizedString(@"PASSWORD");
        v29 = [(MCKeyValue *)v26 initWithLocalizedString:v27 localizedKey:v28];

        [v3 addObject:v29];
      }

      credentialUUID = [(MCGlobalHTTPProxyPayload *)self credentialUUID];

      if (credentialUUID)
      {
        profile = [(MCPayload *)self profile];
        credentialUUID2 = [(MCGlobalHTTPProxyPayload *)self credentialUUID];
        v33 = [profile subjectSummaryFromCertificatePayloadWithUUID:credentialUUID2];

        if (v33)
        {
          v34 = [MCKeyValue alloc];
          v35 = MCLocalizedString(@"CREDENTIAL");
          v36 = [(MCKeyValue *)v34 initWithLocalizedString:v33 localizedKey:v35];

          [v3 addObject:v36];
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
    v37 = [MCKeyValue alloc];
    v38 = MCLocalizedString(@"TYPE_AUTOMATIC");
    v39 = MCLocalizedString(@"TYPE");
    v40 = [(MCKeyValue *)v37 initWithLocalizedString:v38 localizedKey:v39];
    [v3 addObject:v40];

    proxyPACURLString = [(MCGlobalHTTPProxyPayload *)self proxyPACURLString];

    if (proxyPACURLString)
    {
      v42 = [MCKeyValue alloc];
      proxyPACURLString2 = [(MCGlobalHTTPProxyPayload *)self proxyPACURLString];
      v44 = MCLocalizedString(@"PAC");
      v45 = [(MCKeyValue *)v42 initWithLocalizedString:proxyPACURLString2 localizedKey:v44];

      [v3 addObject:v45];
    }

    proxyPACFallbackAllowedNum = [(MCGlobalHTTPProxyPayload *)self proxyPACFallbackAllowedNum];

    if (proxyPACFallbackAllowedNum)
    {
      v47 = [MCKeyValue alloc];
      proxyPACFallbackAllowedNum2 = [(MCGlobalHTTPProxyPayload *)self proxyPACFallbackAllowedNum];
      v49 = MCLocalizedStringForBool([proxyPACFallbackAllowedNum2 BOOLValue]);
      v50 = MCLocalizedString(@"FALLBACK");
      v33 = [(MCKeyValue *)v47 initWithLocalizedString:v49 localizedKey:v50];

      [v3 addObject:v33];
LABEL_18:
    }
  }

  proxyCaptiveLoginAllowedNum = [(MCGlobalHTTPProxyPayload *)self proxyCaptiveLoginAllowedNum];

  if (proxyCaptiveLoginAllowedNum)
  {
    v52 = [MCKeyValue alloc];
    proxyCaptiveLoginAllowedNum2 = [(MCGlobalHTTPProxyPayload *)self proxyCaptiveLoginAllowedNum];
    v54 = MCLocalizedStringForBool([proxyCaptiveLoginAllowedNum2 BOOLValue]);
    v55 = MCLocalizedString(@"CAPTIVE_LOGIN_ALLOWED");
    v56 = [(MCKeyValue *)v52 initWithLocalizedString:v54 localizedKey:v55];
    [v3 addObject:v56];
  }

  v57 = [MCKeyValueSection sectionWithKeyValues:v3];
  v61[0] = v57;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];

  v59 = *MEMORY[0x1E69E9840];

  return v58;
}

- (id)verboseDescription
{
  v16.receiver = self;
  v16.super_class = MCGlobalHTTPProxyPayload;
  verboseDescription = [(MCPayload *)&v16 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  proxyServer = [(MCGlobalHTTPProxyPayload *)self proxyServer];
  [v4 appendFormat:@"Server      : %@\n", proxyServer];

  proxyServerPort = [(MCGlobalHTTPProxyPayload *)self proxyServerPort];

  if (proxyServerPort)
  {
    proxyServerPort2 = [(MCGlobalHTTPProxyPayload *)self proxyServerPort];
    [v4 appendFormat:@"Port        : %@\n", proxyServerPort2];
  }

  if (![(MCGlobalHTTPProxyPayload *)self proxyType])
  {
    [v4 appendFormat:@"Type        : Auto\n"];
    proxyPACURLString = [(MCGlobalHTTPProxyPayload *)self proxyPACURLString];
    [v4 appendFormat:@"PAC         : %@\n", proxyPACURLString];

    credentialUUID2 = MCStringForBool([(MCGlobalHTTPProxyPayload *)self proxyPACFallbackAllowed]);
    [v4 appendFormat:@" fallback   : %@\n", credentialUUID2];
    goto LABEL_12;
  }

  if ([(MCGlobalHTTPProxyPayload *)self proxyType]== 1)
  {
    [v4 appendFormat:@"Type        : Manual\n"];
    proxyUsername = [(MCGlobalHTTPProxyPayload *)self proxyUsername];

    if (proxyUsername)
    {
      proxyUsername2 = [(MCGlobalHTTPProxyPayload *)self proxyUsername];
      [v4 appendFormat:@"User        : %@\n", proxyUsername2];
    }

    proxyPassword = [(MCGlobalHTTPProxyPayload *)self proxyPassword];

    if (proxyPassword)
    {
      [v4 appendFormat:@"Pass        : (present)\n"];
    }

    credentialUUID = [(MCGlobalHTTPProxyPayload *)self credentialUUID];

    if (credentialUUID)
    {
      credentialUUID2 = [(MCGlobalHTTPProxyPayload *)self credentialUUID];
      [v4 appendFormat:@"Cred UUID   : %@\n", credentialUUID2];
LABEL_12:
    }
  }

  v14 = MCStringForBool([(MCGlobalHTTPProxyPayload *)self proxyCaptiveLoginAllowed]);
  [v4 appendFormat:@"Captive OK  : %@\n", v14];

  return v4;
}

- (id)installationWarnings
{
  v2 = MCLocalizedString(@"INSTALL_WARNING_HTTP_PROXY_TITLE");
  v3 = MCLocalizedStringByDevice(@"INSTALL_WARNING_HTTP_PROXY");
  v4 = [MCProfileWarning warningWithLocalizedTitle:v2 localizedBody:v3 isLongForm:1];

  v5 = [MEMORY[0x1E695DEC8] arrayWithObject:v4];

  return v5;
}

@end