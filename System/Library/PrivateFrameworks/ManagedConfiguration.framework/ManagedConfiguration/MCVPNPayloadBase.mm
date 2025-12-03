@interface MCVPNPayloadBase
+ (id)NEAlwaysOnVPNPayloadBaseDelegateWithConfigurationDict:(id)dict;
+ (id)NEVPNPayloadBaseDelegateWithConfigurationDict:(id)dict;
- (MCVPNPayloadBase)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)installationWarnings;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)verboseDescription;
@end

@implementation MCVPNPayloadBase

+ (id)NEVPNPayloadBaseDelegateWithConfigurationDict:(id)dict
{
  dictCopy = dict;
  MCNEProfileIngestionClass();
  v4 = [objc_alloc(NSClassFromString(&cfstr_Neprofilepaylo_0.isa)) initWithPayload:dictCopy];

  return v4;
}

+ (id)NEAlwaysOnVPNPayloadBaseDelegateWithConfigurationDict:(id)dict
{
  dictCopy = dict;
  MCNEProfileIngestionClass();
  v4 = [objc_alloc(NSClassFromString(&cfstr_Neprofilepaylo.isa)) initWithPayload:dictCopy];

  return v4;
}

- (MCVPNPayloadBase)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v99[6] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v90.receiver = self;
  v90.super_class = MCVPNPayloadBase;
  v10 = [(MCPayload *)&v90 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (v10)
  {
    if ([profileCopy isStub])
    {
      v11 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ServiceName" isRequired:0 outError:0];
      serviceName = v10->_serviceName;
      v10->_serviceName = v11;

      v13 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"VPNType" isRequired:0 outError:0];
      vpnType = v10->_vpnType;
      v10->_vpnType = v13;
LABEL_10:

      goto LABEL_11;
    }

    v89 = 0;
    v15 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"VPNType" isRequired:1 outError:&v89];
    vpnType = v89;
    v16 = v10->_vpnType;
    v10->_vpnType = v15;

    if (vpnType)
    {
      goto LABEL_5;
    }

    v99[0] = @"VPN";
    v99[1] = @"L2TP";
    v99[2] = @"PPTP";
    v99[3] = @"IPSec";
    v99[4] = @"IKEv2";
    v99[5] = @"AlwaysOn";
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:6];
    v28 = [v27 containsObject:v10->_vpnType];

    if ((v28 & 1) == 0)
    {
      vpnType = [MCPayload badFieldTypeErrorWithField:@"VPNType"];
      if (!vpnType)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }

    v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
    configurationDictionary = v10->_configurationDictionary;
    v10->_configurationDictionary = v29;

    displayName = v10->super._displayName;
    if (displayName)
    {
      [(NSMutableDictionary *)v10->_configurationDictionary setObject:displayName forKeyedSubscript:@"PayloadDisplayName"];
    }

    v81 = v10->_configurationDictionary;
    v97[0] = @"Enabled";
    v98[0] = objc_opt_class();
    v97[1] = @"VPNApplicationBundleID";
    v98[1] = objc_opt_class();
    v97[2] = @"VPNApplicationID";
    v98[2] = objc_opt_class();
    v97[3] = @"AppRules";
    v98[3] = objc_opt_class();
    v97[4] = @"PayloadCertificateHash";
    v98[4] = objc_opt_class();
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:5];
    v88 = 0;
    v33 = [dictionaryCopy MCMutableDictionaryContainingValidatedKeysAndClasses:v32 removeKeys:1 outError:&v88];
    vpnType = v88;
    [(NSMutableDictionary *)v81 addEntriesFromDictionary:v33];

    if (vpnType)
    {
      goto LABEL_5;
    }

    if ([(NSString *)v10->_vpnType isEqualToString:@"AlwaysOn"])
    {
      v34 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"UserDefinedName" isRequired:0 outError:0];
      v35 = v10->_serviceName;
      v10->_serviceName = v34;

      [(NSMutableDictionary *)v10->_configurationDictionary setObject:v10->_vpnType forKeyedSubscript:@"VPNType"];
      v36 = v10->_serviceName;
      if (v36)
      {
        [(NSMutableDictionary *)v10->_configurationDictionary setObject:v36 forKeyedSubscript:@"UserDefinedName"];
      }

      v87 = 0;
      v37 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"AlwaysOn" isRequired:1 outError:&v87];
      vpnType = v87;
      if (!vpnType)
      {
        [(NSMutableDictionary *)v10->_configurationDictionary setObject:v37 forKeyedSubscript:@"AlwaysOn"];
        v38 = [MCVPNPayloadBase NEAlwaysOnVPNPayloadBaseDelegateWithConfigurationDict:v10->_configurationDictionary];
        nePayloadBase = v10->_nePayloadBase;
        v10->_nePayloadBase = v38;

        validatePayload = [(NEProfilePayloadBaseDelegate *)v10->_nePayloadBase validatePayload];
        if (validatePayload)
        {
          v48 = validatePayload;
          v49 = MEMORY[0x1E696ABC0];
          v50 = MCErrorArray(@"ERROR_VPN_COULD_NOT_PARSE", v41, v42, v43, v44, v45, v46, v47, 0);
          vpnType = [v49 MCErrorWithDomain:@"MCVPNErrorDomain" code:15005 descriptionArray:v50 underlyingError:v48 errorType:@"MCFatalError"];
        }

        else
        {
          vpnType = 0;
        }
      }

      goto LABEL_46;
    }

    v51 = v10->_configurationDictionary;
    v95[0] = @"VendorConfig";
    v96[0] = objc_opt_class();
    v95[1] = @"OverridePrimary";
    v96[1] = objc_opt_class();
    v95[2] = @"OnDemandEnabled";
    v96[2] = objc_opt_class();
    v95[3] = @"OnDemandMatchDomainsAlways";
    v96[3] = objc_opt_class();
    v95[4] = @"OnDemandMatchDomainsNever";
    v96[4] = objc_opt_class();
    v95[5] = @"OnDemandMatchDomainsOnRetry";
    v96[5] = objc_opt_class();
    v95[6] = @"OnDemandRules";
    v96[6] = objc_opt_class();
    v95[7] = @"IPv4";
    v96[7] = objc_opt_class();
    v95[8] = @"PPP";
    v96[8] = objc_opt_class();
    v95[9] = @"IPSec";
    v96[9] = objc_opt_class();
    v95[10] = @"IKEv2";
    v96[10] = objc_opt_class();
    v95[11] = @"Proxies";
    v96[11] = objc_opt_class();
    v95[12] = @"DNS";
    v96[12] = objc_opt_class();
    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:13];
    v86 = 0;
    v53 = [dictionaryCopy MCMutableDictionaryContainingValidatedKeysAndClasses:v52 removeKeys:1 outError:&v86];
    vpnType = v86;
    [(NSMutableDictionary *)v51 addEntriesFromDictionary:v53];

    if (vpnType)
    {
      goto LABEL_5;
    }

    [(NSMutableDictionary *)v10->_configurationDictionary setObject:v10->_vpnType forKeyedSubscript:@"VPNType"];
    v85 = 0;
    v54 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"UserDefinedName" isRequired:0 outError:&v85];
    vpnType = v85;
    v55 = v10->_serviceName;
    v10->_serviceName = v54;

    if (vpnType)
    {
LABEL_5:
      v17 = [(MCPayload *)v10 malformedPayloadErrorWithError:vpnType];
      v18 = v17;
      if (error)
      {
        v19 = v17;
        *error = v18;
      }

      v20 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v21 = v20;
        v22 = objc_opt_class();
        v23 = v22;
        mCVerboseDescription = [v18 MCVerboseDescription];
        *buf = 138543618;
        v92 = v22;
        v93 = 2114;
        v94 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v21, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v10 = 0;
      goto LABEL_10;
    }

    v56 = v10->_serviceName;
    if (v56)
    {
      [(NSMutableDictionary *)v10->_configurationDictionary setObject:v56 forKeyedSubscript:@"UserDefinedName"];
    }

    v84 = 0;
    v57 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"VPN" isRequired:0 outError:&v84];
    vpnType = v84;
    v37 = [v57 mutableCopy];

    if (vpnType)
    {
LABEL_46:

      if (!vpnType)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }

    if (v37)
    {
      v58 = [v37 copy];
      [(NSMutableDictionary *)v10->_configurationDictionary setObject:v58 forKeyedSubscript:@"VPN"];
    }

    if ([(NSString *)v10->_vpnType isEqualToString:@"VPN"]|| [(NSString *)v10->_vpnType isEqualToString:@"IKEv2"])
    {
      v59 = [(NSString *)v10->_vpnType isEqualToString:@"VPN"];
      v83 = 0;
      v60 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"VPNSubType" isRequired:v59 outError:&v83];
      v61 = v83;
      if (v61)
      {
        vpnType = v61;
LABEL_45:

        goto LABEL_46;
      }

      if (v60)
      {
        [(NSMutableDictionary *)v10->_configurationDictionary setObject:v60 forKeyedSubscript:@"VPNSubType"];
      }

      type = [(MCPayload *)v10 type];
      v63 = +[MCAppLayerVPNPayload typeStrings];
      firstObject = [v63 firstObject];
      v65 = [type isEqualToString:firstObject];

      if (v65)
      {
        v82 = 0;
        v66 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"CellularSliceUUID" isRequired:0 outError:&v82];
        vpnType = v82;
        CellularSliceUUID = v10->_CellularSliceUUID;
        v10->_CellularSliceUUID = v66;

        if (vpnType)
        {
          goto LABEL_45;
        }

        v68 = v10->_CellularSliceUUID;
        if (v68)
        {
          [(NSMutableDictionary *)v10->_configurationDictionary setObject:v68 forKeyedSubscript:@"CellularSliceUUID"];
        }
      }
    }

    v69 = [MCVPNPayloadBase NEVPNPayloadBaseDelegateWithConfigurationDict:v10->_configurationDictionary];
    v70 = v10->_nePayloadBase;
    v10->_nePayloadBase = v69;

    vpnType = [(NEProfilePayloadBaseDelegate *)v10->_nePayloadBase validatePayload];
    if (!vpnType)
    {
      goto LABEL_46;
    }

    v78 = MEMORY[0x1E696ABC0];
    v60 = MCErrorArray(@"ERROR_VPN_COULD_NOT_PARSE", v71, v72, v73, v74, v75, v76, v77, 0);
    v79 = [v78 MCErrorWithDomain:@"MCVPNErrorDomain" code:15005 descriptionArray:v60 underlyingError:vpnType errorType:@"MCFatalError"];
    v80 = vpnType;
    vpnType = v79;

    goto LABEL_45;
  }

LABEL_11:

  v25 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)stubDictionary
{
  v9.receiver = self;
  v9.super_class = MCVPNPayloadBase;
  stubDictionary = [(MCPayload *)&v9 stubDictionary];
  serviceName = [(MCVPNPayloadBase *)self serviceName];

  if (serviceName)
  {
    serviceName2 = [(MCVPNPayloadBase *)self serviceName];
    [stubDictionary setObject:serviceName2 forKeyedSubscript:@"ServiceName"];
  }

  vpnType = [(MCVPNPayloadBase *)self vpnType];

  if (vpnType)
  {
    vpnType2 = [(MCVPNPayloadBase *)self vpnType];
    [stubDictionary setObject:vpnType2 forKeyedSubscript:@"VPNType"];
  }

  return stubDictionary;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AD60];
  v13.receiver = self;
  v13.super_class = MCVPNPayloadBase;
  verboseDescription = [(MCPayload *)&v13 verboseDescription];
  v5 = [v3 stringWithFormat:@"%@\n", verboseDescription];

  serviceName = [(MCVPNPayloadBase *)self serviceName];

  if (serviceName)
  {
    serviceName2 = [(MCVPNPayloadBase *)self serviceName];
    [v5 appendFormat:@"Service name: %@\n", serviceName2];
  }

  vpnType = [(MCVPNPayloadBase *)self vpnType];

  if (vpnType)
  {
    vpnType2 = [(MCVPNPayloadBase *)self vpnType];
    [v5 appendFormat:@"VPN Type: %@\n", vpnType2];
  }

  persistentResourceID = [(MCPayload *)self persistentResourceID];

  if (persistentResourceID)
  {
    persistentResourceID2 = [(MCPayload *)self persistentResourceID];
    [v5 appendFormat:@"  ConfigID : %@\n", persistentResourceID2];
  }

  return v5;
}

- (id)installationWarnings
{
  v3 = MCLocalizedStringByDevice(@"INSTALL_WARNING_VPN");
  vpnType = [(MCVPNPayloadBase *)self vpnType];
  v5 = [vpnType isEqualToString:@"PPTP"];

  if (v5)
  {
    v6 = MCLocalizedString(@"INSTALL_WARNING_PPTP_VPN");
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n%@", v3, v6];
  }

  else
  {
    v7 = v3;
  }

  v8 = MCLocalizedString(@"INSTALL_WARNING_VPN_TITLE");
  v9 = [MCProfileWarning warningWithLocalizedTitle:v8 localizedBody:v7 isLongForm:1];

  v10 = [MEMORY[0x1E695DEC8] arrayWithObject:v9];

  return v10;
}

- (id)payloadDescriptionKeyValueSections
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  serviceName = [(MCVPNPayloadBase *)self serviceName];

  if (serviceName)
  {
    v5 = [MCKeyValue alloc];
    serviceName2 = [(MCVPNPayloadBase *)self serviceName];
    v7 = MCLocalizedString(@"KEY_VPN_NAME");
    v8 = [(MCKeyValue *)v5 initWithLocalizedString:serviceName2 localizedKey:v7];

    [v3 addObject:v8];
  }

  vpnType = [(MCVPNPayloadBase *)self vpnType];

  if (vpnType)
  {
    v10 = [MCKeyValue alloc];
    vpnType2 = [(MCVPNPayloadBase *)self vpnType];
    v12 = MCLocalizedString(@"KEY_VPN_TYPE");
    v13 = [(MCKeyValue *)v10 initWithLocalizedString:vpnType2 localizedKey:v12];

    [v3 addObject:v13];
  }

  if ([v3 count] && (+[MCKeyValueSection sectionWithKeyValues:](MCKeyValueSection, "sectionWithKeyValues:", v3), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
    v19[0] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

@end