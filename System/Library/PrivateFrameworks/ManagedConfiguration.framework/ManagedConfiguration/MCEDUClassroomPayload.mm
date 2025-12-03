@interface MCEDUClassroomPayload
+ (id)typeStrings;
- (MCEDUClassroomPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (NSArray)leaderPayloadCertificateAnchorPersistentID;
- (NSArray)leaderPayloadCertificateAnchorUUID;
- (NSArray)memberPayloadCertificateAnchorPersistentID;
- (NSArray)memberPayloadCertificateAnchorUUID;
- (NSData)payloadCertificatePersistentID;
- (NSData)resourcePayloadCertificatePersistentID;
- (NSDictionary)configuration;
- (NSString)payloadCertificateUUID;
- (NSString)resourcePayloadCertificateUUID;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)title;
- (id)translatedCRKError:(id)error;
- (id)verboseDescription;
- (void)payloadDescriptionKeyValueSections;
- (void)setLeaderPayloadCertificateAnchorPersistentID:(id)d;
- (void)setLeaderPayloadCertificateAnchorUUID:(id)d;
- (void)setMemberPayloadCertificateAnchorPersistentID:(id)d;
- (void)setMemberPayloadCertificateAnchorUUID:(id)d;
- (void)setPayloadCertificatePersistentID:(id)d;
- (void)setPayloadCertificateUUID:(id)d;
- (void)setResourcePayloadCertificatePersistentID:(id)d;
- (void)setResourcePayloadCertificateUUID:(id)d;
@end

@implementation MCEDUClassroomPayload

+ (id)typeStrings
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.education";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCEDUClassroomPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v41.receiver = self;
  v41.super_class = MCEDUClassroomPayload;
  v10 = [(MCPayload *)&v41 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (v10)
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x2050000000;
    v11 = getCRKEDUPayloadClass_softClass;
    v45 = getCRKEDUPayloadClass_softClass;
    if (!getCRKEDUPayloadClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCRKEDUPayloadClass_block_invoke;
      v47 = &unk_1E77D2418;
      v48 = &v42;
      __getCRKEDUPayloadClass_block_invoke(buf);
      v11 = v43[3];
    }

    v12 = v11;
    _Block_object_dispose(&v42, 8);
    if (v11)
    {
      v20 = [v11 alloc];
      profile = [(MCPayload *)v10 profile];
      v40 = 0;
      v22 = [v20 initWithDictionary:dictionaryCopy isStub:objc_msgSend(profile error:{"isStub"), &v40}];
      v23 = v40;

      objc_storeStrong(&v10->_crk_payload, v22);
      if (v23)
      {
        v24 = [(MCEDUClassroomPayload *)v10 translatedCRKError:v23];
        v25 = [(MCPayload *)v10 malformedPayloadErrorWithError:v24];
        v26 = v25;
        if (error && v24)
        {
          v27 = v25;
          *error = v26;
        }

        v28 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
        {
          v29 = v28;
          v30 = objc_opt_class();
          v39 = v30;
          mCVerboseDescription = [v26 MCVerboseDescription];
          *buf = 138543618;
          *&buf[4] = v30;
          *&buf[12] = 2114;
          *&buf[14] = mCVerboseDescription;
          _os_log_impl(&dword_1A795B000, v29, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse the payload: %{public}@", buf, 0x16u);
        }

        v32 = 0;
      }

      else
      {
        v32 = v10;
      }

      if ([dictionaryCopy count])
      {
        v34 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
        {
          v35 = v34;
          friendlyName = [(MCPayload *)v32 friendlyName];
          *buf = 138543618;
          *&buf[4] = friendlyName;
          *&buf[12] = 2114;
          *&buf[14] = dictionaryCopy;
          _os_log_impl(&dword_1A795B000, v35, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
        }
      }

      v10 = v23;
    }

    else
    {
      if (!error)
      {
        v32 = 0;
        goto LABEL_21;
      }

      v33 = MEMORY[0x1E696ABC0];
      v22 = MCErrorArray(@"EDU_COULD_NOT_INSTALL", v13, v14, v15, v16, v17, v18, v19, 0);
      [v33 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2005 descriptionArray:v22 errorType:@"MCFatalError"];
      *error = v32 = 0;
    }

LABEL_21:
    goto LABEL_22;
  }

  v32 = 0;
LABEL_22:

  v37 = *MEMORY[0x1E69E9840];
  return v32;
}

- (NSDictionary)configuration
{
  crk_payload = [(MCEDUClassroomPayload *)self crk_payload];
  configuration = [crk_payload configuration];

  return configuration;
}

- (id)verboseDescription
{
  v50.receiver = self;
  v50.super_class = MCEDUClassroomPayload;
  verboseDescription = [(MCPayload *)&v50 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  crk_payload = [(MCEDUClassroomPayload *)self crk_payload];
  organizationUUID = [crk_payload organizationUUID];

  if (organizationUUID)
  {
    crk_payload2 = [(MCEDUClassroomPayload *)self crk_payload];
    organizationUUID2 = [crk_payload2 organizationUUID];
    [v4 appendFormat:@"OrganizationUUID : %@\n", organizationUUID2];
  }

  crk_payload3 = [(MCEDUClassroomPayload *)self crk_payload];
  organizationName = [crk_payload3 organizationName];

  if (organizationName)
  {
    crk_payload4 = [(MCEDUClassroomPayload *)self crk_payload];
    organizationName2 = [crk_payload4 organizationName];
    [v4 appendFormat:@"OrganizationName : %@\n", organizationName2];
  }

  crk_payload5 = [(MCEDUClassroomPayload *)self crk_payload];
  userIdentifier = [crk_payload5 userIdentifier];

  if (userIdentifier)
  {
    crk_payload6 = [(MCEDUClassroomPayload *)self crk_payload];
    userIdentifier2 = [crk_payload6 userIdentifier];
    [v4 appendFormat:@"UserIdentifier   : %@\n", userIdentifier2];
  }

  crk_payload7 = [(MCEDUClassroomPayload *)self crk_payload];
  departments = [crk_payload7 departments];

  if (departments)
  {
    crk_payload8 = [(MCEDUClassroomPayload *)self crk_payload];
    departments2 = [crk_payload8 departments];
    [v4 appendFormat:@"Departments      : %@\n", departments2];
  }

  crk_payload9 = [(MCEDUClassroomPayload *)self crk_payload];
  groups = [crk_payload9 groups];

  if (groups)
  {
    crk_payload10 = [(MCEDUClassroomPayload *)self crk_payload];
    groups2 = [crk_payload10 groups];
    [v4 appendFormat:@"Groups           : %@\n", groups2];
  }

  crk_payload11 = [(MCEDUClassroomPayload *)self crk_payload];
  users = [crk_payload11 users];

  if (users)
  {
    crk_payload12 = [(MCEDUClassroomPayload *)self crk_payload];
    users2 = [crk_payload12 users];
    [v4 appendFormat:@"Users            : %@\n", users2];
  }

  crk_payload13 = [(MCEDUClassroomPayload *)self crk_payload];
  deviceGroups = [crk_payload13 deviceGroups];

  if (deviceGroups)
  {
    crk_payload14 = [(MCEDUClassroomPayload *)self crk_payload];
    deviceGroups2 = [crk_payload14 deviceGroups];
    [v4 appendFormat:@"Device Groups    : %@\n", deviceGroups2];
  }

  crk_payload15 = [(MCEDUClassroomPayload *)self crk_payload];
  payloadCertificateUUID = [crk_payload15 payloadCertificateUUID];

  if (payloadCertificateUUID)
  {
    crk_payload16 = [(MCEDUClassroomPayload *)self crk_payload];
    payloadCertificateUUID2 = [crk_payload16 payloadCertificateUUID];
    [v4 appendFormat:@"Identity          : %@\n", payloadCertificateUUID2];
  }

  crk_payload17 = [(MCEDUClassroomPayload *)self crk_payload];
  leaderPayloadCertificateAnchorUUID = [crk_payload17 leaderPayloadCertificateAnchorUUID];

  if (leaderPayloadCertificateAnchorUUID)
  {
    crk_payload18 = [(MCEDUClassroomPayload *)self crk_payload];
    leaderPayloadCertificateAnchorUUID2 = [crk_payload18 leaderPayloadCertificateAnchorUUID];
    [v4 appendFormat:@"Leader Anchors    : %@\n", leaderPayloadCertificateAnchorUUID2];
  }

  crk_payload19 = [(MCEDUClassroomPayload *)self crk_payload];
  memberPayloadCertificateAnchorUUID = [crk_payload19 memberPayloadCertificateAnchorUUID];

  if (memberPayloadCertificateAnchorUUID)
  {
    crk_payload20 = [(MCEDUClassroomPayload *)self crk_payload];
    memberPayloadCertificateAnchorUUID2 = [crk_payload20 memberPayloadCertificateAnchorUUID];
    [v4 appendFormat:@"Member Anchors    : %@\n", memberPayloadCertificateAnchorUUID2];
  }

  crk_payload21 = [(MCEDUClassroomPayload *)self crk_payload];
  resourcePayloadCertificateUUID = [crk_payload21 resourcePayloadCertificateUUID];

  if (resourcePayloadCertificateUUID)
  {
    crk_payload22 = [(MCEDUClassroomPayload *)self crk_payload];
    resourcePayloadCertificateUUID2 = [crk_payload22 resourcePayloadCertificateUUID];
    [v4 appendFormat:@"Resource Identity : %@\n", resourcePayloadCertificateUUID2];
  }

  return v4;
}

- (id)stubDictionary
{
  v6.receiver = self;
  v6.super_class = MCEDUClassroomPayload;
  stubDictionary = [(MCPayload *)&v6 stubDictionary];
  configuration = [(MCEDUClassroomPayload *)self configuration];
  [stubDictionary addEntriesFromDictionary:configuration];

  return stubDictionary;
}

- (id)title
{
  crk_payload = [(MCEDUClassroomPayload *)self crk_payload];
  organizationName = [crk_payload organizationName];
  if (organizationName)
  {
    crk_payload2 = [(MCEDUClassroomPayload *)self crk_payload];
    organizationName2 = [crk_payload2 organizationName];
  }

  else
  {
    organizationName2 = MCLocalizedString(@"EDU_UNKNOWN_ORGANIZATION");
  }

  return organizationName2;
}

- (id)payloadDescriptionKeyValueSections
{
  v103 = *MEMORY[0x1E69E9840];
  v70 = objc_opt_new();
  selfCopy = self;
  crk_payload = [(MCEDUClassroomPayload *)self crk_payload];
  departments = [crk_payload departments];
  v5 = [departments count];

  if (v5)
  {
    v6 = objc_opt_new();
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    crk_payload2 = [(MCEDUClassroomPayload *)selfCopy crk_payload];
    departments2 = [crk_payload2 departments];

    v9 = [departments2 countByEnumeratingWithState:&v86 objects:v102 count:16];
    if (v9)
    {
      v10 = *v87;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v87 != v10)
          {
            objc_enumerationMutation(departments2);
          }

          v12 = *(*(&v86 + 1) + 8 * i);
          v95 = 0;
          v96 = &v95;
          v97 = 0x2020000000;
          v13 = getkCRKEDUDepartmentNameKeySymbolLoc_ptr;
          v98 = getkCRKEDUDepartmentNameKeySymbolLoc_ptr;
          if (!getkCRKEDUDepartmentNameKeySymbolLoc_ptr)
          {
            v90 = MEMORY[0x1E69E9820];
            v91 = 3221225472;
            v92 = __getkCRKEDUDepartmentNameKeySymbolLoc_block_invoke;
            v93 = &unk_1E77D2418;
            v94 = &v95;
            v14 = ClassroomKitLibrary();
            v15 = dlsym(v14, "kCRKEDUDepartmentNameKey");
            *(v94[1] + 24) = v15;
            getkCRKEDUDepartmentNameKeySymbolLoc_ptr = *(v94[1] + 24);
            v13 = v96[3];
          }

          _Block_object_dispose(&v95, 8);
          if (!v13)
          {
            [MCEDUClassroomPayload payloadDescriptionKeyValueSections];
          }

          v16 = [v12 objectForKeyedSubscript:*v13];
          [v6 addObject:v16];
        }

        v9 = [departments2 countByEnumeratingWithState:&v86 objects:v102 count:16];
      }

      while (v9);
    }

    v17 = MCLocalizedString(@"EDU_DEPARTMENTS");
    v18 = [MCKeyValueSection sectionWithLocalizedArray:v6 title:v17 footer:0];
    [v70 addObject:v18];
  }

  crk_payload3 = [(MCEDUClassroomPayload *)selfCopy crk_payload];
  groups = [crk_payload3 groups];
  v21 = [groups count];

  if (v21)
  {
    v22 = objc_opt_new();
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    crk_payload4 = [(MCEDUClassroomPayload *)selfCopy crk_payload];
    groups2 = [crk_payload4 groups];

    v25 = [groups2 countByEnumeratingWithState:&v82 objects:v101 count:16];
    if (v25)
    {
      v26 = *v83;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v83 != v26)
          {
            objc_enumerationMutation(groups2);
          }

          v28 = *(*(&v82 + 1) + 8 * j);
          v29 = getkCRKEDUDeviceGroupNameKey();
          v30 = [v28 objectForKeyedSubscript:v29];
          [v22 addObject:v30];
        }

        v25 = [groups2 countByEnumeratingWithState:&v82 objects:v101 count:16];
      }

      while (v25);
    }

    v31 = MCLocalizedString(@"EDU_GROUPS");
    v32 = [MCKeyValueSection sectionWithLocalizedArray:v22 title:v31 footer:0];
    [v70 addObject:v32];
  }

  crk_payload5 = [(MCEDUClassroomPayload *)selfCopy crk_payload];
  users = [crk_payload5 users];
  v35 = [users count];

  if (v35)
  {
    v72 = objc_opt_new();
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    crk_payload6 = [(MCEDUClassroomPayload *)selfCopy crk_payload];
    obj = [crk_payload6 users];

    v37 = [obj countByEnumeratingWithState:&v78 objects:v100 count:16];
    if (!v37)
    {
      goto LABEL_38;
    }

    v38 = *v79;
    while (1)
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v79 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v78 + 1) + 8 * k);
        v41 = getkCRKEDUUserIdentifierKey();
        v42 = [v40 objectForKeyedSubscript:v41];

        crk_payload7 = [(MCEDUClassroomPayload *)selfCopy crk_payload];
        userIdentifier = [crk_payload7 userIdentifier];
        if (userIdentifier)
        {
          crk_payload8 = [(MCEDUClassroomPayload *)selfCopy crk_payload];
          userIdentifier2 = [crk_payload8 userIdentifier];
          v47 = [userIdentifier2 isEqualToString:v42];

          if (!v47)
          {
            goto LABEL_36;
          }
        }

        else
        {
        }

        v95 = 0;
        v96 = &v95;
        v97 = 0x2020000000;
        v48 = getkCRKEDUUserNameKeySymbolLoc_ptr;
        v98 = getkCRKEDUUserNameKeySymbolLoc_ptr;
        if (!getkCRKEDUUserNameKeySymbolLoc_ptr)
        {
          v90 = MEMORY[0x1E69E9820];
          v91 = 3221225472;
          v92 = __getkCRKEDUUserNameKeySymbolLoc_block_invoke;
          v93 = &unk_1E77D2418;
          v94 = &v95;
          v49 = ClassroomKitLibrary();
          v50 = dlsym(v49, "kCRKEDUUserNameKey");
          *(v94[1] + 24) = v50;
          getkCRKEDUUserNameKeySymbolLoc_ptr = *(v94[1] + 24);
          v48 = v96[3];
        }

        _Block_object_dispose(&v95, 8);
        if (!v48)
        {
          [MCEDUClassroomPayload payloadDescriptionKeyValueSections];
        }

        v51 = [v40 objectForKeyedSubscript:*v48];
        [v72 addObject:v51];

LABEL_36:
      }

      v37 = [obj countByEnumeratingWithState:&v78 objects:v100 count:16];
      if (!v37)
      {
LABEL_38:

        v52 = MCLocalizedString(@"EDU_USERS");
        v53 = [MCKeyValueSection sectionWithLocalizedArray:v72 title:v52 footer:0];
        [v70 addObject:v53];

        break;
      }
    }
  }

  crk_payload9 = [(MCEDUClassroomPayload *)selfCopy crk_payload];
  deviceGroups = [crk_payload9 deviceGroups];
  v56 = [deviceGroups count];

  if (v56)
  {
    v57 = objc_opt_new();
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    crk_payload10 = [(MCEDUClassroomPayload *)selfCopy crk_payload];
    deviceGroups2 = [crk_payload10 deviceGroups];

    v60 = [deviceGroups2 countByEnumeratingWithState:&v74 objects:v99 count:16];
    if (v60)
    {
      v61 = *v75;
      do
      {
        for (m = 0; m != v60; ++m)
        {
          if (*v75 != v61)
          {
            objc_enumerationMutation(deviceGroups2);
          }

          v63 = *(*(&v74 + 1) + 8 * m);
          v64 = getkCRKEDUDeviceGroupNameKey();
          v65 = [v63 objectForKeyedSubscript:v64];
          [v57 addObject:v65];
        }

        v60 = [deviceGroups2 countByEnumeratingWithState:&v74 objects:v99 count:16];
      }

      while (v60);
    }

    v66 = MCLocalizedString(@"EDU_DEVICE_GROUPS");
    v67 = [MCKeyValueSection sectionWithLocalizedArray:v57 title:v66 footer:0];
    [v70 addObject:v67];
  }

  if (![v70 count])
  {

    v70 = 0;
  }

  v68 = *MEMORY[0x1E69E9840];

  return v70;
}

- (id)translatedCRKError:(id)error
{
  v134 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v4 = errorCopy;
  if (!errorCopy)
  {
    v22 = 0;
    goto LABEL_88;
  }

  domain = [errorCopy domain];
  v6 = getCRKEDUProfileErrorDomain();
  v7 = [domain isEqualToString:v6];

  if (v7)
  {
    code = [v4 code];
    userInfo = [v4 userInfo];
    v10 = @"MCProfileErrorDomain";
    v11 = 0;
    if (code <= 3)
    {
      if (code <= 1)
      {
        if (code)
        {
          if (code == 1)
          {
            v12 = @"MCPayloadErrorDomain";

            if (userInfo)
            {
              v13 = getCRKEDUProfileErrorFieldKey();
              v14 = [userInfo objectForKeyedSubscript:v13];

              if (v14)
              {
                v11 = MCErrorArray(@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD", v15, v16, v17, v18, v19, v20, v21, v14);
              }

              else
              {
                v11 = 0;
              }
            }

            else
            {
              v11 = 0;
            }

            v115 = 2002;
            goto LABEL_70;
          }

LABEL_56:
          v115 = 0;
LABEL_87:
          v22 = [MEMORY[0x1E696ABC0] MCErrorWithDomain:v10 code:v115 descriptionArray:v11 errorType:@"MCFatalError"];

          goto LABEL_88;
        }

        if (userInfo)
        {
          v72 = getCRKEDUProfileErrorFieldKey();
          v73 = [userInfo objectForKeyedSubscript:v72];

          v74 = getCRKEDUProfileErrorValueKey();
          v75 = [userInfo objectForKeyedSubscript:v74];

          if (v73)
          {
            v76 = getkCRKEDUSingleUserIdentifierKey();
            v77 = [v73 isEqualToString:v76];

            v11 = 0;
            if (!v77 || !v75)
            {
              goto LABEL_80;
            }

            v85 = MCErrorArray(@"EDU_USER_IDENTIFIER_NOT_FOUND_P_IDENTIFIER", v78, v79, v80, v81, v82, v83, v84, v75);
            goto LABEL_78;
          }

LABEL_79:
          v11 = 0;
          goto LABEL_80;
        }

        goto LABEL_57;
      }

      if (code == 2)
      {
        v12 = @"MCPayloadErrorDomain";

        if (userInfo)
        {
          v98 = getCRKEDUProfileErrorFieldKey();
          v99 = [userInfo objectForKeyedSubscript:v98];

          if (v99)
          {
            v11 = MCErrorArray(@"ERROR_PROFILE_FIELD_INVALID_P_FIELD", v100, v101, v102, v103, v104, v105, v106, v99);
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }

        v115 = 2003;
        goto LABEL_70;
      }

      if (!userInfo)
      {
        v11 = 0;
LABEL_86:
        v115 = 1010;
        goto LABEL_87;
      }

      v46 = getCRKEDUProfileErrorFieldKey();
      v47 = [userInfo objectForKeyedSubscript:v46];

      v48 = getCRKEDUProfileErrorValueKey();
      v49 = [userInfo objectForKeyedSubscript:v48];

      v50 = [v49 description];
      v51 = [v50 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

      v11 = 0;
      if (v47 && v49)
      {
        v52 = getkCRKEDUGroupBeaconIDKey();
        v53 = [v47 isEqualToString:v52];

        if (v53)
        {
          v61 = @"EDU_GROUP_BEACON_INVALID_P_BEACONID";
        }

        else
        {
          v118 = getkCRKEDUPayloadLeaderCertificateAnchorUUIDKey();
          v119 = [v47 isEqualToString:v118];

          if (v119)
          {
            v61 = @"EDU_LEADER_CERTIFICATE_ANCHOR_UUID_INVALID_P_UUID";
          }

          else
          {
            v122 = getkCRKEDUPayloadMemberCertificateAnchorUUIDKey();
            v123 = [v47 isEqualToString:v122];

            if (!v123)
            {
              v11 = 0;
              goto LABEL_85;
            }

            v61 = @"EDU_MEMBER_CERTIFICATE_ANCHOR_UUID_INVALID_P_UUID";
          }
        }

        v11 = MCErrorArray(v61, v54, v55, v56, v57, v58, v59, v60, v51);
      }

LABEL_85:

      goto LABEL_86;
    }

    if (code <= 5)
    {
      if (code == 4)
      {
        if (userInfo)
        {
          v86 = getCRKEDUProfileErrorFieldKey();
          v73 = [userInfo objectForKeyedSubscript:v86];

          v87 = getCRKEDUProfileErrorValueKey();
          v75 = [userInfo objectForKeyedSubscript:v87];

          v11 = 0;
          if (!v73 || !v75)
          {
            goto LABEL_80;
          }

          v88 = getkCRKEDUGroupBeaconIDKey();
          v89 = [v73 isEqualToString:v88];

          if (v89)
          {
            v97 = @"EDU_GROUP_BEACON_NOT_UNIQUE_P_BEACONID";
          }

          else
          {
            v116 = getkCRKEDUUserIdentifierKey();
            v117 = [v73 isEqualToString:v116];

            if (v117)
            {
              v97 = @"EDU_USER_IDENTIFIER_NOT_UNIQUE_P_IDENTIFIER";
            }

            else
            {
              v120 = getkCRKEDUDeviceGroupNameKey();
              v121 = [v73 isEqualToString:v120];

              if (!v121)
              {
                goto LABEL_79;
              }

              v97 = @"EDU_DEVICE_GROUP_NAME_NOT_UNIQUE_P_NAME";
            }
          }

          v85 = MCErrorArray(v97, v90, v91, v92, v93, v94, v95, v96, v75);
LABEL_78:
          v11 = v85;
LABEL_80:

          goto LABEL_81;
        }

LABEL_57:
        v11 = 0;
LABEL_81:
        v115 = 1000;
        goto LABEL_87;
      }

      v12 = @"MCPayloadErrorDomain";

      if (userInfo)
      {
        v127 = 0;
        v128 = &v127;
        v129 = 0x2020000000;
        v28 = getCRKEDUProfileErrorProvidedKeysKeySymbolLoc_ptr;
        v130 = getCRKEDUProfileErrorProvidedKeysKeySymbolLoc_ptr;
        if (!getCRKEDUProfileErrorProvidedKeysKeySymbolLoc_ptr)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getCRKEDUProfileErrorProvidedKeysKeySymbolLoc_block_invoke;
          v132 = &unk_1E77D2418;
          v133 = &v127;
          v29 = ClassroomKitLibrary();
          v30 = dlsym(v29, "CRKEDUProfileErrorProvidedKeysKey");
          *(v133[1] + 24) = v30;
          getCRKEDUProfileErrorProvidedKeysKeySymbolLoc_ptr = *(v133[1] + 24);
          v28 = v128[3];
        }

        _Block_object_dispose(&v127, 8);
        if (!v28)
        {
          [MCEDUClassroomPayload translatedCRKError:];
        }

        v31 = [userInfo objectForKeyedSubscript:*v28];
        v127 = 0;
        v128 = &v127;
        v129 = 0x2020000000;
        v32 = getCRKEDUProfileErrorAllOrNoneKeysKeySymbolLoc_ptr;
        v130 = getCRKEDUProfileErrorAllOrNoneKeysKeySymbolLoc_ptr;
        if (!getCRKEDUProfileErrorAllOrNoneKeysKeySymbolLoc_ptr)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getCRKEDUProfileErrorAllOrNoneKeysKeySymbolLoc_block_invoke;
          v132 = &unk_1E77D2418;
          v133 = &v127;
          v33 = ClassroomKitLibrary();
          v34 = dlsym(v33, "CRKEDUProfileErrorAllOrNoneKeysKey");
          *(v133[1] + 24) = v34;
          getCRKEDUProfileErrorAllOrNoneKeysKeySymbolLoc_ptr = *(v133[1] + 24);
          v32 = v128[3];
        }

        _Block_object_dispose(&v127, 8);
        if (!v32)
        {
          [MCEDUClassroomPayload translatedCRKError:];
        }

        v35 = [userInfo objectForKeyedSubscript:*v32];
        v36 = v35;
        v11 = 0;
        if (v31 && v35)
        {
          v37 = MCLocalizedString(@"WEB_FILTER_SEPARATOR");
          v38 = [v31 componentsJoinedByString:v37];
          v126 = [v36 componentsJoinedByString:v37];
          v11 = MCErrorArray(@"EDU_INVALID_COMBINATION_OF_KEYS_P_PROVIDED_KEYS_P_EXPECTED_KEYS", v39, v40, v41, v42, v43, v44, v45, v38);
        }

        goto LABEL_60;
      }

      goto LABEL_55;
    }

    if (code == 6)
    {
      v12 = @"MCPayloadErrorDomain";

      if (userInfo)
      {
        v107 = getCRKEDUProfileErrorTopLevelUserIdentifierKey();
        v63 = [userInfo objectForKeyedSubscript:v107];

        if (v63)
        {
          v71 = MCErrorArray(@"EDU_TOP_USER_NOT_LEADER_OR_MEMBER_P_IDENTIFIER", v108, v109, v110, v111, v112, v113, v114, v63);
          goto LABEL_54;
        }

LABEL_58:
        v11 = 0;
        goto LABEL_59;
      }
    }

    else
    {
      if (code != 7)
      {
        goto LABEL_56;
      }

      v12 = @"MCPayloadErrorDomain";

      if (userInfo)
      {
        v62 = getCRKEDUProfileErrorTopLevelUserIdentifierKey();
        v63 = [userInfo objectForKeyedSubscript:v62];

        if (v63)
        {
          v71 = MCErrorArray(@"EDU_TOP_USER_IS_LEADER_AND_MEMBER_P_IDENTIFIER", v64, v65, v66, v67, v68, v69, v70, v63);
LABEL_54:
          v11 = v71;
LABEL_59:

          goto LABEL_60;
        }

        goto LABEL_58;
      }
    }

LABEL_55:
    v11 = 0;
LABEL_60:
    v115 = 2000;
LABEL_70:
    v10 = v12;
    goto LABEL_87;
  }

  v23 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
  {
    v24 = v23;
    v25 = objc_opt_class();
    domain2 = [v4 domain];
    v27 = getCRKEDUProfileErrorDomain();
    *buf = 138543874;
    *&buf[4] = v25;
    *&buf[12] = 2114;
    *&buf[14] = domain2;
    *&buf[22] = 2114;
    v132 = v27;
    _os_log_impl(&dword_1A795B000, v24, OS_LOG_TYPE_DEBUG, "%{public}@ was given error domain to translate: %{public}@, expected: %{public}@, not translating error.", buf, 0x20u);
  }

  v22 = v4;
LABEL_88:

  v124 = *MEMORY[0x1E69E9840];

  return v22;
}

- (NSString)payloadCertificateUUID
{
  crk_payload = [(MCEDUClassroomPayload *)self crk_payload];
  payloadCertificateUUID = [crk_payload payloadCertificateUUID];
  v4 = [payloadCertificateUUID copy];

  return v4;
}

- (void)setPayloadCertificateUUID:(id)d
{
  v5 = [d copy];
  crk_payload = [(MCEDUClassroomPayload *)self crk_payload];
  [crk_payload setPayloadCertificateUUID:v5];
}

- (NSData)payloadCertificatePersistentID
{
  crk_payload = [(MCEDUClassroomPayload *)self crk_payload];
  payloadCertificatePersistentID = [crk_payload payloadCertificatePersistentID];

  return payloadCertificatePersistentID;
}

- (void)setPayloadCertificatePersistentID:(id)d
{
  dCopy = d;
  crk_payload = [(MCEDUClassroomPayload *)self crk_payload];
  [crk_payload setPayloadCertificatePersistentID:dCopy];
}

- (NSArray)leaderPayloadCertificateAnchorUUID
{
  crk_payload = [(MCEDUClassroomPayload *)self crk_payload];
  leaderPayloadCertificateAnchorUUID = [crk_payload leaderPayloadCertificateAnchorUUID];

  return leaderPayloadCertificateAnchorUUID;
}

- (void)setLeaderPayloadCertificateAnchorUUID:(id)d
{
  dCopy = d;
  crk_payload = [(MCEDUClassroomPayload *)self crk_payload];
  [crk_payload setLeaderPayloadCertificateAnchorUUID:dCopy];
}

- (NSArray)leaderPayloadCertificateAnchorPersistentID
{
  crk_payload = [(MCEDUClassroomPayload *)self crk_payload];
  leaderPayloadCertificateAnchorPersistentID = [crk_payload leaderPayloadCertificateAnchorPersistentID];

  return leaderPayloadCertificateAnchorPersistentID;
}

- (void)setLeaderPayloadCertificateAnchorPersistentID:(id)d
{
  dCopy = d;
  crk_payload = [(MCEDUClassroomPayload *)self crk_payload];
  [crk_payload setLeaderPayloadCertificateAnchorPersistentID:dCopy];
}

- (NSArray)memberPayloadCertificateAnchorUUID
{
  crk_payload = [(MCEDUClassroomPayload *)self crk_payload];
  memberPayloadCertificateAnchorUUID = [crk_payload memberPayloadCertificateAnchorUUID];

  return memberPayloadCertificateAnchorUUID;
}

- (void)setMemberPayloadCertificateAnchorUUID:(id)d
{
  dCopy = d;
  crk_payload = [(MCEDUClassroomPayload *)self crk_payload];
  [crk_payload setMemberPayloadCertificateAnchorUUID:dCopy];
}

- (NSArray)memberPayloadCertificateAnchorPersistentID
{
  crk_payload = [(MCEDUClassroomPayload *)self crk_payload];
  memberPayloadCertificateAnchorPersistentID = [crk_payload memberPayloadCertificateAnchorPersistentID];

  return memberPayloadCertificateAnchorPersistentID;
}

- (void)setMemberPayloadCertificateAnchorPersistentID:(id)d
{
  dCopy = d;
  crk_payload = [(MCEDUClassroomPayload *)self crk_payload];
  [crk_payload setMemberPayloadCertificateAnchorPersistentID:dCopy];
}

- (NSString)resourcePayloadCertificateUUID
{
  crk_payload = [(MCEDUClassroomPayload *)self crk_payload];
  resourcePayloadCertificateUUID = [crk_payload resourcePayloadCertificateUUID];

  return resourcePayloadCertificateUUID;
}

- (void)setResourcePayloadCertificateUUID:(id)d
{
  dCopy = d;
  crk_payload = [(MCEDUClassroomPayload *)self crk_payload];
  [crk_payload setResourcePayloadCertificateUUID:dCopy];
}

- (NSData)resourcePayloadCertificatePersistentID
{
  crk_payload = [(MCEDUClassroomPayload *)self crk_payload];
  resourcePayloadCertificatePersistentID = [crk_payload resourcePayloadCertificatePersistentID];

  return resourcePayloadCertificatePersistentID;
}

- (void)setResourcePayloadCertificatePersistentID:(id)d
{
  dCopy = d;
  crk_payload = [(MCEDUClassroomPayload *)self crk_payload];
  [crk_payload setResourcePayloadCertificatePersistentID:dCopy];
}

- (void)payloadDescriptionKeyValueSections
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCRKEDUUserNameKey(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"MCEDUClassroomPayload.m" lineNumber:24 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)translatedCRKError:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCRKEDUProfileErrorAllOrNoneKeysKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"MCEDUClassroomPayload.m" lineNumber:34 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)translatedCRKError:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCRKEDUProfileErrorProvidedKeysKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"MCEDUClassroomPayload.m" lineNumber:33 description:{@"%s", dlerror()}];

  __break(1u);
}

@end