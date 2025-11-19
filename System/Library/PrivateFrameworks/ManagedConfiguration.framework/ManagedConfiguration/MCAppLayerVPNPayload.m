@interface MCAppLayerVPNPayload
+ (id)typeStrings;
- (MCAppLayerVPNPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)verboseDescription;
@end

@implementation MCAppLayerVPNPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.vpn.managed.applayer";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCAppLayerVPNPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v58 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v53.receiver = self;
  v53.super_class = MCAppLayerVPNPayload;
  v10 = [(MCVPNPayloadBase *)&v53 initWithDictionary:v8 profile:v9 outError:a5];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_25;
  }

  v10->_restrictDomains = 0;
  v52 = 0;
  v12 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"SafariDomains" isRequired:0 allowZeroLengthString:objc_msgSend(v9 outError:{"isStub"), &v52}];
  v13 = v52;
  SafariDomains = v11->_SafariDomains;
  v11->_SafariDomains = v12;

  if (v13)
  {
    goto LABEL_16;
  }

  v51 = 0;
  v15 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"SMBDomains" isRequired:0 allowZeroLengthString:objc_msgSend(v9 outError:{"isStub"), &v51}];
  v13 = v51;
  SMBDomains = v11->_SMBDomains;
  v11->_SMBDomains = v15;

  if (v13)
  {
    goto LABEL_16;
  }

  v50 = 0;
  v17 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"MailDomains" isRequired:0 allowZeroLengthString:objc_msgSend(v9 outError:{"isStub"), &v50}];
  v13 = v50;
  mailDomains = v11->_mailDomains;
  v11->_mailDomains = v17;

  if (v13)
  {
    goto LABEL_16;
  }

  v49 = 0;
  v19 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"CalendarDomains" isRequired:0 allowZeroLengthString:objc_msgSend(v9 outError:{"isStub"), &v49}];
  v13 = v49;
  calendarDomains = v11->_calendarDomains;
  v11->_calendarDomains = v19;

  if (v13)
  {
    goto LABEL_16;
  }

  v48 = 0;
  v21 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"ContactsDomains" isRequired:0 allowZeroLengthString:objc_msgSend(v9 outError:{"isStub"), &v48}];
  v13 = v48;
  contactsDomains = v11->_contactsDomains;
  v11->_contactsDomains = v21;

  if (v13)
  {
    goto LABEL_16;
  }

  v47 = 0;
  v23 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"ExcludedDomains" isRequired:0 allowZeroLengthString:objc_msgSend(v9 outError:{"isStub"), &v47}];
  v13 = v47;
  excludedDomains = v11->_excludedDomains;
  v11->_excludedDomains = v23;

  if (v13)
  {
    goto LABEL_16;
  }

  v46 = 0;
  v25 = [v8 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"AssociatedDomains" isRequired:0 allowZeroLengthString:objc_msgSend(v9 outError:{"isStub"), &v46}];
  v13 = v46;
  associatedDomains = v11->_associatedDomains;
  v11->_associatedDomains = v25;

  if (v13)
  {
    goto LABEL_16;
  }

  if ([v9 isStub])
  {
    v27 = [(MCVPNPayloadBase *)v11 vpnType];
    v28 = [v27 isEqualToString:@"AlwaysOn"];

    if (v28)
    {
      v13 = [MCPayload badFieldTypeErrorWithField:@"VPNType"];
      goto LABEL_15;
    }

    v44 = 0;
    v29 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"VPNUUID" isRequired:0 outError:&v44];
    v30 = v44;
  }

  else
  {
    v45 = 0;
    v29 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"VPNUUID" isRequired:1 outError:&v45];
    v30 = v45;
  }

  v13 = v30;
  VPNUUID = v11->_VPNUUID;
  v11->_VPNUUID = v29;

LABEL_15:
  if (v13)
  {
LABEL_16:
    v32 = [v13 MCCopyAsPrimaryError];
    v33 = [(MCPayload *)v11 malformedPayloadErrorWithError:v32];

    if (a5)
    {
      v34 = v33;
      *a5 = v33;
    }

    v35 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v36 = v35;
      v37 = objc_opt_class();
      v38 = [v33 MCVerboseDescription];
      *buf = 138543618;
      v55 = v37;
      v56 = 2114;
      v57 = v38;
      _os_log_impl(&dword_1A795B000, v36, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v11 = 0;
  }

  if ([v8 count])
  {
    v39 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v40 = v39;
      v41 = [(MCPayload *)v11 friendlyName];
      *buf = 138543618;
      v55 = v41;
      v56 = 2114;
      v57 = v8;
      _os_log_impl(&dword_1A795B000, v40, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_25:
  v42 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)stubDictionary
{
  v14.receiver = self;
  v14.super_class = MCAppLayerVPNPayload;
  v3 = [(MCVPNPayloadBase *)&v14 stubDictionary];
  v4 = v3;
  VPNUUID = self->_VPNUUID;
  if (VPNUUID)
  {
    [v3 setObject:VPNUUID forKey:@"VPNUUID"];
  }

  SafariDomains = self->_SafariDomains;
  if (SafariDomains)
  {
    [v4 setObject:SafariDomains forKey:@"SafariDomains"];
  }

  SMBDomains = self->_SMBDomains;
  if (SMBDomains)
  {
    [v4 setObject:SMBDomains forKey:@"SMBDomains"];
  }

  mailDomains = self->_mailDomains;
  if (mailDomains)
  {
    [v4 setObject:mailDomains forKey:@"MailDomains"];
  }

  calendarDomains = self->_calendarDomains;
  if (calendarDomains)
  {
    [v4 setObject:calendarDomains forKey:@"CalendarDomains"];
  }

  contactsDomains = self->_contactsDomains;
  if (contactsDomains)
  {
    [v4 setObject:contactsDomains forKey:@"ContactsDomains"];
  }

  excludedDomains = self->_excludedDomains;
  if (excludedDomains)
  {
    [v4 setObject:excludedDomains forKey:@"ExcludedDomains"];
  }

  associatedDomains = self->_associatedDomains;
  if (associatedDomains)
  {
    [v4 setObject:associatedDomains forKey:@"AssociatedDomains"];
  }

  return v4;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AD60];
  v15.receiver = self;
  v15.super_class = MCAppLayerVPNPayload;
  v4 = [(MCVPNPayloadBase *)&v15 verboseDescription];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  v6 = [(MCAppLayerVPNPayload *)self VPNUUID];
  [v5 appendFormat:@"VPNUUID     : %@\n", v6];

  v7 = [(MCAppLayerVPNPayload *)self SafariDomains];
  [v5 appendFormat:@"Safari Domains: %@\n", v7];

  v8 = [(MCAppLayerVPNPayload *)self SMBDomains];
  [v5 appendFormat:@"SMB Domains: %@\n", v8];

  v9 = [(MCAppLayerVPNPayload *)self mailDomains];
  [v5 appendFormat:@"Mail Domains: %@\n", v9];

  v10 = [(MCAppLayerVPNPayload *)self calendarDomains];
  [v5 appendFormat:@"Calendar Domains: %@\n", v10];

  v11 = [(MCAppLayerVPNPayload *)self contactsDomains];
  [v5 appendFormat:@"Contacts Domains: %@\n", v11];

  v12 = [(MCAppLayerVPNPayload *)self excludedDomains];
  [v5 appendFormat:@"Excluded Domains: %@\n", v12];

  v13 = [(MCAppLayerVPNPayload *)self associatedDomains];
  [v5 appendFormat:@"Associated Domains: %@\n", v13];

  return v5;
}

- (id)payloadDescriptionKeyValueSections
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(MCVPNPayloadBase *)self serviceName];

  if (v5)
  {
    v6 = [MCKeyValue alloc];
    v7 = [(MCVPNPayloadBase *)self serviceName];
    v8 = MCLocalizedString(@"KEY_VPN_NAME");
    v9 = [(MCKeyValue *)v6 initWithLocalizedString:v7 localizedKey:v8];

    [v4 addObject:v9];
  }

  v10 = [(MCVPNPayloadBase *)self vpnType];

  if (v10)
  {
    v11 = [MCKeyValue alloc];
    v12 = [(MCVPNPayloadBase *)self vpnType];
    v13 = MCLocalizedString(@"KEY_VPN_TYPE");
    v14 = [(MCKeyValue *)v11 initWithLocalizedString:v12 localizedKey:v13];

    [v4 addObject:v14];
  }

  v15 = [(MCAppLayerVPNPayload *)self VPNUUID];

  if (v15)
  {
    v16 = [MCKeyValue alloc];
    v17 = [(MCAppLayerVPNPayload *)self VPNUUID];
    v18 = MCLocalizedString(@"APP_LAYER_VPN_VPNUUID");
    v19 = [(MCKeyValue *)v16 initWithLocalizedString:v17 localizedKey:v18];

    [v4 addObject:v19];
  }

  if ([v4 count])
  {
    v20 = [MCKeyValueSection sectionWithKeyValues:v4];
    [v3 addObject:v20];
  }

  v21 = [(MCAppLayerVPNPayload *)self SafariDomains];
  v22 = [v21 count];

  if (v22)
  {
    v23 = [(MCAppLayerVPNPayload *)self SafariDomains];
    v24 = MCLocalizedString(@"APP_LAYER_VPN_SAFARI_DOMAINS");
    v25 = [MCKeyValueSection sectionWithLocalizedArray:v23 title:v24 footer:0];

    [v3 addObject:v25];
  }

  v26 = [(MCAppLayerVPNPayload *)self SMBDomains];
  v27 = [v26 count];

  if (v27)
  {
    v28 = [(MCAppLayerVPNPayload *)self SMBDomains];
    v29 = MCLocalizedString(@"APP_LAYER_VPN_SMB_DOMAINS");
    v30 = [MCKeyValueSection sectionWithLocalizedArray:v28 title:v29 footer:0];

    [v3 addObject:v30];
  }

  v31 = [(MCAppLayerVPNPayload *)self mailDomains];
  v32 = [v31 count];

  if (v32)
  {
    v33 = [(MCAppLayerVPNPayload *)self mailDomains];
    v34 = MCLocalizedString(@"APP_LAYER_VPN_MAIL_DOMAINS");
    v35 = [MCKeyValueSection sectionWithLocalizedArray:v33 title:v34 footer:0];

    [v3 addObject:v35];
  }

  v36 = [(MCAppLayerVPNPayload *)self calendarDomains];
  v37 = [v36 count];

  if (v37)
  {
    v38 = [(MCAppLayerVPNPayload *)self calendarDomains];
    v39 = MCLocalizedString(@"APP_LAYER_VPN_CALENDAR_DOMAINS");
    v40 = [MCKeyValueSection sectionWithLocalizedArray:v38 title:v39 footer:0];

    [v3 addObject:v40];
  }

  v41 = [(MCAppLayerVPNPayload *)self contactsDomains];
  v42 = [v41 count];

  if (v42)
  {
    v43 = [(MCAppLayerVPNPayload *)self contactsDomains];
    v44 = MCLocalizedString(@"APP_LAYER_VPN_CONTACTS_DOMAINS");
    v45 = [MCKeyValueSection sectionWithLocalizedArray:v43 title:v44 footer:0];

    [v3 addObject:v45];
  }

  v46 = [(MCAppLayerVPNPayload *)self associatedDomains];
  v47 = [v46 count];

  if (v47)
  {
    v48 = [(MCAppLayerVPNPayload *)self associatedDomains];
    v49 = MCLocalizedString(@"APP_LAYER_VPN_ASSOCIATED_DOMAINS");
    v50 = [MCKeyValueSection sectionWithLocalizedArray:v48 title:v49 footer:0];

    [v3 addObject:v50];
  }

  v51 = [(MCAppLayerVPNPayload *)self excludedDomains];
  v52 = [v51 count];

  if (v52)
  {
    v53 = [(MCAppLayerVPNPayload *)self excludedDomains];
    v54 = MCLocalizedString(@"APP_LAYER_VPN_EXCLUDED_DOMAINS");
    v55 = [MCKeyValueSection sectionWithLocalizedArray:v53 title:v54 footer:0];

    [v3 addObject:v55];
  }

  v58.receiver = self;
  v58.super_class = MCAppLayerVPNPayload;
  v56 = [(MCVPNPayloadBase *)&v58 payloadDescriptionKeyValueSections];
  [v3 addObjectsFromArray:v56];

  if (![v3 count])
  {

    v3 = 0;
  }

  return v3;
}

@end