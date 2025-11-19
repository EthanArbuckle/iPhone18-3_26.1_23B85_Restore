@interface MCEDUClassroomPayload
+ (id)typeStrings;
- (MCEDUClassroomPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
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
- (id)translatedCRKError:(id)a3;
- (id)verboseDescription;
- (void)payloadDescriptionKeyValueSections;
- (void)setLeaderPayloadCertificateAnchorPersistentID:(id)a3;
- (void)setLeaderPayloadCertificateAnchorUUID:(id)a3;
- (void)setMemberPayloadCertificateAnchorPersistentID:(id)a3;
- (void)setMemberPayloadCertificateAnchorUUID:(id)a3;
- (void)setPayloadCertificatePersistentID:(id)a3;
- (void)setPayloadCertificateUUID:(id)a3;
- (void)setResourcePayloadCertificatePersistentID:(id)a3;
- (void)setResourcePayloadCertificateUUID:(id)a3;
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

- (MCEDUClassroomPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v41.receiver = self;
  v41.super_class = MCEDUClassroomPayload;
  v10 = [(MCPayload *)&v41 initWithDictionary:v8 profile:v9 outError:a5];
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
      v21 = [(MCPayload *)v10 profile];
      v40 = 0;
      v22 = [v20 initWithDictionary:v8 isStub:objc_msgSend(v21 error:{"isStub"), &v40}];
      v23 = v40;

      objc_storeStrong(&v10->_crk_payload, v22);
      if (v23)
      {
        v24 = [(MCEDUClassroomPayload *)v10 translatedCRKError:v23];
        v25 = [(MCPayload *)v10 malformedPayloadErrorWithError:v24];
        v26 = v25;
        if (a5 && v24)
        {
          v27 = v25;
          *a5 = v26;
        }

        v28 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
        {
          v29 = v28;
          v30 = objc_opt_class();
          v39 = v30;
          v31 = [v26 MCVerboseDescription];
          *buf = 138543618;
          *&buf[4] = v30;
          *&buf[12] = 2114;
          *&buf[14] = v31;
          _os_log_impl(&dword_1A795B000, v29, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse the payload: %{public}@", buf, 0x16u);
        }

        v32 = 0;
      }

      else
      {
        v32 = v10;
      }

      if ([v8 count])
      {
        v34 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
        {
          v35 = v34;
          v36 = [(MCPayload *)v32 friendlyName];
          *buf = 138543618;
          *&buf[4] = v36;
          *&buf[12] = 2114;
          *&buf[14] = v8;
          _os_log_impl(&dword_1A795B000, v35, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
        }
      }

      v10 = v23;
    }

    else
    {
      if (!a5)
      {
        v32 = 0;
        goto LABEL_21;
      }

      v33 = MEMORY[0x1E696ABC0];
      v22 = MCErrorArray(@"EDU_COULD_NOT_INSTALL", v13, v14, v15, v16, v17, v18, v19, 0);
      [v33 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2005 descriptionArray:v22 errorType:@"MCFatalError"];
      *a5 = v32 = 0;
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
  v2 = [(MCEDUClassroomPayload *)self crk_payload];
  v3 = [v2 configuration];

  return v3;
}

- (id)verboseDescription
{
  v50.receiver = self;
  v50.super_class = MCEDUClassroomPayload;
  v3 = [(MCPayload *)&v50 verboseDescription];
  v4 = [v3 mutableCopy];

  v5 = [(MCEDUClassroomPayload *)self crk_payload];
  v6 = [v5 organizationUUID];

  if (v6)
  {
    v7 = [(MCEDUClassroomPayload *)self crk_payload];
    v8 = [v7 organizationUUID];
    [v4 appendFormat:@"OrganizationUUID : %@\n", v8];
  }

  v9 = [(MCEDUClassroomPayload *)self crk_payload];
  v10 = [v9 organizationName];

  if (v10)
  {
    v11 = [(MCEDUClassroomPayload *)self crk_payload];
    v12 = [v11 organizationName];
    [v4 appendFormat:@"OrganizationName : %@\n", v12];
  }

  v13 = [(MCEDUClassroomPayload *)self crk_payload];
  v14 = [v13 userIdentifier];

  if (v14)
  {
    v15 = [(MCEDUClassroomPayload *)self crk_payload];
    v16 = [v15 userIdentifier];
    [v4 appendFormat:@"UserIdentifier   : %@\n", v16];
  }

  v17 = [(MCEDUClassroomPayload *)self crk_payload];
  v18 = [v17 departments];

  if (v18)
  {
    v19 = [(MCEDUClassroomPayload *)self crk_payload];
    v20 = [v19 departments];
    [v4 appendFormat:@"Departments      : %@\n", v20];
  }

  v21 = [(MCEDUClassroomPayload *)self crk_payload];
  v22 = [v21 groups];

  if (v22)
  {
    v23 = [(MCEDUClassroomPayload *)self crk_payload];
    v24 = [v23 groups];
    [v4 appendFormat:@"Groups           : %@\n", v24];
  }

  v25 = [(MCEDUClassroomPayload *)self crk_payload];
  v26 = [v25 users];

  if (v26)
  {
    v27 = [(MCEDUClassroomPayload *)self crk_payload];
    v28 = [v27 users];
    [v4 appendFormat:@"Users            : %@\n", v28];
  }

  v29 = [(MCEDUClassroomPayload *)self crk_payload];
  v30 = [v29 deviceGroups];

  if (v30)
  {
    v31 = [(MCEDUClassroomPayload *)self crk_payload];
    v32 = [v31 deviceGroups];
    [v4 appendFormat:@"Device Groups    : %@\n", v32];
  }

  v33 = [(MCEDUClassroomPayload *)self crk_payload];
  v34 = [v33 payloadCertificateUUID];

  if (v34)
  {
    v35 = [(MCEDUClassroomPayload *)self crk_payload];
    v36 = [v35 payloadCertificateUUID];
    [v4 appendFormat:@"Identity          : %@\n", v36];
  }

  v37 = [(MCEDUClassroomPayload *)self crk_payload];
  v38 = [v37 leaderPayloadCertificateAnchorUUID];

  if (v38)
  {
    v39 = [(MCEDUClassroomPayload *)self crk_payload];
    v40 = [v39 leaderPayloadCertificateAnchorUUID];
    [v4 appendFormat:@"Leader Anchors    : %@\n", v40];
  }

  v41 = [(MCEDUClassroomPayload *)self crk_payload];
  v42 = [v41 memberPayloadCertificateAnchorUUID];

  if (v42)
  {
    v43 = [(MCEDUClassroomPayload *)self crk_payload];
    v44 = [v43 memberPayloadCertificateAnchorUUID];
    [v4 appendFormat:@"Member Anchors    : %@\n", v44];
  }

  v45 = [(MCEDUClassroomPayload *)self crk_payload];
  v46 = [v45 resourcePayloadCertificateUUID];

  if (v46)
  {
    v47 = [(MCEDUClassroomPayload *)self crk_payload];
    v48 = [v47 resourcePayloadCertificateUUID];
    [v4 appendFormat:@"Resource Identity : %@\n", v48];
  }

  return v4;
}

- (id)stubDictionary
{
  v6.receiver = self;
  v6.super_class = MCEDUClassroomPayload;
  v3 = [(MCPayload *)&v6 stubDictionary];
  v4 = [(MCEDUClassroomPayload *)self configuration];
  [v3 addEntriesFromDictionary:v4];

  return v3;
}

- (id)title
{
  v3 = [(MCEDUClassroomPayload *)self crk_payload];
  v4 = [v3 organizationName];
  if (v4)
  {
    v5 = [(MCEDUClassroomPayload *)self crk_payload];
    v6 = [v5 organizationName];
  }

  else
  {
    v6 = MCLocalizedString(@"EDU_UNKNOWN_ORGANIZATION");
  }

  return v6;
}

- (id)payloadDescriptionKeyValueSections
{
  v103 = *MEMORY[0x1E69E9840];
  v70 = objc_opt_new();
  v73 = self;
  v3 = [(MCEDUClassroomPayload *)self crk_payload];
  v4 = [v3 departments];
  v5 = [v4 count];

  if (v5)
  {
    v6 = objc_opt_new();
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v7 = [(MCEDUClassroomPayload *)v73 crk_payload];
    v8 = [v7 departments];

    v9 = [v8 countByEnumeratingWithState:&v86 objects:v102 count:16];
    if (v9)
    {
      v10 = *v87;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v87 != v10)
          {
            objc_enumerationMutation(v8);
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

        v9 = [v8 countByEnumeratingWithState:&v86 objects:v102 count:16];
      }

      while (v9);
    }

    v17 = MCLocalizedString(@"EDU_DEPARTMENTS");
    v18 = [MCKeyValueSection sectionWithLocalizedArray:v6 title:v17 footer:0];
    [v70 addObject:v18];
  }

  v19 = [(MCEDUClassroomPayload *)v73 crk_payload];
  v20 = [v19 groups];
  v21 = [v20 count];

  if (v21)
  {
    v22 = objc_opt_new();
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v23 = [(MCEDUClassroomPayload *)v73 crk_payload];
    v24 = [v23 groups];

    v25 = [v24 countByEnumeratingWithState:&v82 objects:v101 count:16];
    if (v25)
    {
      v26 = *v83;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v83 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v82 + 1) + 8 * j);
          v29 = getkCRKEDUDeviceGroupNameKey();
          v30 = [v28 objectForKeyedSubscript:v29];
          [v22 addObject:v30];
        }

        v25 = [v24 countByEnumeratingWithState:&v82 objects:v101 count:16];
      }

      while (v25);
    }

    v31 = MCLocalizedString(@"EDU_GROUPS");
    v32 = [MCKeyValueSection sectionWithLocalizedArray:v22 title:v31 footer:0];
    [v70 addObject:v32];
  }

  v33 = [(MCEDUClassroomPayload *)v73 crk_payload];
  v34 = [v33 users];
  v35 = [v34 count];

  if (v35)
  {
    v72 = objc_opt_new();
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v36 = [(MCEDUClassroomPayload *)v73 crk_payload];
    obj = [v36 users];

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

        v43 = [(MCEDUClassroomPayload *)v73 crk_payload];
        v44 = [v43 userIdentifier];
        if (v44)
        {
          v45 = [(MCEDUClassroomPayload *)v73 crk_payload];
          v46 = [v45 userIdentifier];
          v47 = [v46 isEqualToString:v42];

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

  v54 = [(MCEDUClassroomPayload *)v73 crk_payload];
  v55 = [v54 deviceGroups];
  v56 = [v55 count];

  if (v56)
  {
    v57 = objc_opt_new();
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v58 = [(MCEDUClassroomPayload *)v73 crk_payload];
    v59 = [v58 deviceGroups];

    v60 = [v59 countByEnumeratingWithState:&v74 objects:v99 count:16];
    if (v60)
    {
      v61 = *v75;
      do
      {
        for (m = 0; m != v60; ++m)
        {
          if (*v75 != v61)
          {
            objc_enumerationMutation(v59);
          }

          v63 = *(*(&v74 + 1) + 8 * m);
          v64 = getkCRKEDUDeviceGroupNameKey();
          v65 = [v63 objectForKeyedSubscript:v64];
          [v57 addObject:v65];
        }

        v60 = [v59 countByEnumeratingWithState:&v74 objects:v99 count:16];
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

- (id)translatedCRKError:(id)a3
{
  v134 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v22 = 0;
    goto LABEL_88;
  }

  v5 = [v3 domain];
  v6 = getCRKEDUProfileErrorDomain();
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [v4 code];
    v9 = [v4 userInfo];
    v10 = @"MCProfileErrorDomain";
    v11 = 0;
    if (v8 <= 3)
    {
      if (v8 <= 1)
      {
        if (v8)
        {
          if (v8 == 1)
          {
            v12 = @"MCPayloadErrorDomain";

            if (v9)
            {
              v13 = getCRKEDUProfileErrorFieldKey();
              v14 = [v9 objectForKeyedSubscript:v13];

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

        if (v9)
        {
          v72 = getCRKEDUProfileErrorFieldKey();
          v73 = [v9 objectForKeyedSubscript:v72];

          v74 = getCRKEDUProfileErrorValueKey();
          v75 = [v9 objectForKeyedSubscript:v74];

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

      if (v8 == 2)
      {
        v12 = @"MCPayloadErrorDomain";

        if (v9)
        {
          v98 = getCRKEDUProfileErrorFieldKey();
          v99 = [v9 objectForKeyedSubscript:v98];

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

      if (!v9)
      {
        v11 = 0;
LABEL_86:
        v115 = 1010;
        goto LABEL_87;
      }

      v46 = getCRKEDUProfileErrorFieldKey();
      v47 = [v9 objectForKeyedSubscript:v46];

      v48 = getCRKEDUProfileErrorValueKey();
      v49 = [v9 objectForKeyedSubscript:v48];

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

    if (v8 <= 5)
    {
      if (v8 == 4)
      {
        if (v9)
        {
          v86 = getCRKEDUProfileErrorFieldKey();
          v73 = [v9 objectForKeyedSubscript:v86];

          v87 = getCRKEDUProfileErrorValueKey();
          v75 = [v9 objectForKeyedSubscript:v87];

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

      if (v9)
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

        v31 = [v9 objectForKeyedSubscript:*v28];
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

        v35 = [v9 objectForKeyedSubscript:*v32];
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

    if (v8 == 6)
    {
      v12 = @"MCPayloadErrorDomain";

      if (v9)
      {
        v107 = getCRKEDUProfileErrorTopLevelUserIdentifierKey();
        v63 = [v9 objectForKeyedSubscript:v107];

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
      if (v8 != 7)
      {
        goto LABEL_56;
      }

      v12 = @"MCPayloadErrorDomain";

      if (v9)
      {
        v62 = getCRKEDUProfileErrorTopLevelUserIdentifierKey();
        v63 = [v9 objectForKeyedSubscript:v62];

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
    v26 = [v4 domain];
    v27 = getCRKEDUProfileErrorDomain();
    *buf = 138543874;
    *&buf[4] = v25;
    *&buf[12] = 2114;
    *&buf[14] = v26;
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
  v2 = [(MCEDUClassroomPayload *)self crk_payload];
  v3 = [v2 payloadCertificateUUID];
  v4 = [v3 copy];

  return v4;
}

- (void)setPayloadCertificateUUID:(id)a3
{
  v5 = [a3 copy];
  v4 = [(MCEDUClassroomPayload *)self crk_payload];
  [v4 setPayloadCertificateUUID:v5];
}

- (NSData)payloadCertificatePersistentID
{
  v2 = [(MCEDUClassroomPayload *)self crk_payload];
  v3 = [v2 payloadCertificatePersistentID];

  return v3;
}

- (void)setPayloadCertificatePersistentID:(id)a3
{
  v4 = a3;
  v5 = [(MCEDUClassroomPayload *)self crk_payload];
  [v5 setPayloadCertificatePersistentID:v4];
}

- (NSArray)leaderPayloadCertificateAnchorUUID
{
  v2 = [(MCEDUClassroomPayload *)self crk_payload];
  v3 = [v2 leaderPayloadCertificateAnchorUUID];

  return v3;
}

- (void)setLeaderPayloadCertificateAnchorUUID:(id)a3
{
  v4 = a3;
  v5 = [(MCEDUClassroomPayload *)self crk_payload];
  [v5 setLeaderPayloadCertificateAnchorUUID:v4];
}

- (NSArray)leaderPayloadCertificateAnchorPersistentID
{
  v2 = [(MCEDUClassroomPayload *)self crk_payload];
  v3 = [v2 leaderPayloadCertificateAnchorPersistentID];

  return v3;
}

- (void)setLeaderPayloadCertificateAnchorPersistentID:(id)a3
{
  v4 = a3;
  v5 = [(MCEDUClassroomPayload *)self crk_payload];
  [v5 setLeaderPayloadCertificateAnchorPersistentID:v4];
}

- (NSArray)memberPayloadCertificateAnchorUUID
{
  v2 = [(MCEDUClassroomPayload *)self crk_payload];
  v3 = [v2 memberPayloadCertificateAnchorUUID];

  return v3;
}

- (void)setMemberPayloadCertificateAnchorUUID:(id)a3
{
  v4 = a3;
  v5 = [(MCEDUClassroomPayload *)self crk_payload];
  [v5 setMemberPayloadCertificateAnchorUUID:v4];
}

- (NSArray)memberPayloadCertificateAnchorPersistentID
{
  v2 = [(MCEDUClassroomPayload *)self crk_payload];
  v3 = [v2 memberPayloadCertificateAnchorPersistentID];

  return v3;
}

- (void)setMemberPayloadCertificateAnchorPersistentID:(id)a3
{
  v4 = a3;
  v5 = [(MCEDUClassroomPayload *)self crk_payload];
  [v5 setMemberPayloadCertificateAnchorPersistentID:v4];
}

- (NSString)resourcePayloadCertificateUUID
{
  v2 = [(MCEDUClassroomPayload *)self crk_payload];
  v3 = [v2 resourcePayloadCertificateUUID];

  return v3;
}

- (void)setResourcePayloadCertificateUUID:(id)a3
{
  v4 = a3;
  v5 = [(MCEDUClassroomPayload *)self crk_payload];
  [v5 setResourcePayloadCertificateUUID:v4];
}

- (NSData)resourcePayloadCertificatePersistentID
{
  v2 = [(MCEDUClassroomPayload *)self crk_payload];
  v3 = [v2 resourcePayloadCertificatePersistentID];

  return v3;
}

- (void)setResourcePayloadCertificatePersistentID:(id)a3
{
  v4 = a3;
  v5 = [(MCEDUClassroomPayload *)self crk_payload];
  [v5 setResourcePayloadCertificatePersistentID:v4];
}

- (void)payloadDescriptionKeyValueSections
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCRKEDUUserNameKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"MCEDUClassroomPayload.m" lineNumber:24 description:{@"%s", dlerror()}];

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