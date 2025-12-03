@interface CRKEDUPayload
- (BOOL)areCredentialsValidForStub:(BOOL)stub error:(id *)error;
- (BOOL)parseDictionary:(id)dictionary isStub:(BOOL)stub outError:(id *)error;
- (CRKEDUPayload)initWithDictionary:(id)dictionary isStub:(BOOL)stub error:(id *)error;
- (CRKEDUPayload)initWithDictionary:(id)dictionary isStub:(BOOL)stub isEphemeralMultiUserDevice:(BOOL)device error:(id *)error;
- (NSDictionary)configuration;
- (id)description;
- (id)parseDepartmentFromDictionary:(id)dictionary isStub:(BOOL)stub outError:(id *)error;
- (id)parseDeviceGroupFromDictionary:(id)dictionary isStub:(BOOL)stub outError:(id *)error;
- (id)parseGroupFromDictionary:(id)dictionary isStub:(BOOL)stub outError:(id *)error;
- (id)parseUserFromDictionary:(id)dictionary isStub:(BOOL)stub outError:(id *)error;
@end

@implementation CRKEDUPayload

- (CRKEDUPayload)initWithDictionary:(id)dictionary isStub:(BOOL)stub error:(id *)error
{
  stubCopy = stub;
  dictionaryCopy = dictionary;
  v9 = +[CRKSystemInfo sharedSystemInfo];
  cloudConfigEnablesEphemeralMultiUser = [v9 cloudConfigEnablesEphemeralMultiUser];

  v11 = [(CRKEDUPayload *)self initWithDictionary:dictionaryCopy isStub:stubCopy isEphemeralMultiUserDevice:cloudConfigEnablesEphemeralMultiUser error:error];
  return v11;
}

- (CRKEDUPayload)initWithDictionary:(id)dictionary isStub:(BOOL)stub isEphemeralMultiUserDevice:(BOOL)device error:(id *)error
{
  stubCopy = stub;
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = CRKEDUPayload;
  v11 = [(CRKEDUPayload *)&v19 init];
  v12 = v11;
  if (v11)
  {
    v11->_isEphemeralMultiUserDevice = device;
    v18 = 0;
    v13 = [(CRKEDUPayload *)v11 parseDictionary:dictionaryCopy isStub:stubCopy outError:&v18];
    v14 = v18;
    v15 = v14;
    if (!v13)
    {
      if (error)
      {
        v16 = v14;
        *error = v15;
      }

      v12 = 0;
    }
  }

  return v12;
}

- (BOOL)parseDictionary:(id)dictionary isStub:(BOOL)stub outError:(id *)error
{
  stubCopy = stub;
  v138 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (_CRKLogGeneral_onceToken_6 != -1)
  {
    [CRKEDUPayload parseDictionary:isStub:outError:];
  }

  v9 = _CRKLogGeneral_logObj_6;
  if (os_log_type_enabled(_CRKLogGeneral_logObj_6, OS_LOG_TYPE_DEBUG))
  {
    [CRKEDUPayload parseDictionary:v9 isStub:? outError:?];
  }

  v133 = 0;
  v10 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"PayloadDisplayName" isRequired:0 outError:&v133];
  v11 = v133;
  payloadDisplayName = self->_payloadDisplayName;
  self->_payloadDisplayName = v10;

  if (!v11)
  {
    v132 = 0;
    v13 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"PayloadDescription" isRequired:0 outError:&v132];
    v11 = v132;
    payloadDescriptionName = self->_payloadDescriptionName;
    self->_payloadDescriptionName = v13;

    if (!v11)
    {
      v131 = 0;
      v15 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"OrganizationUUID" isRequired:stubCopy ^ 1 outError:&v131];
      v11 = v131;
      organizationUUID = self->_organizationUUID;
      self->_organizationUUID = v15;

      if (!v11)
      {
        v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:self->_organizationUUID];
        if (!v17 && !stubCopy)
        {
          v11 = [MEMORY[0x277CCA9B8] crk_badFieldTypeErrorWithField:@"OrganizationUUID"];
LABEL_22:

          goto LABEL_23;
        }

        v130 = 0;
        v18 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"OrganizationName" isRequired:stubCopy ^ 1 outError:&v130];
        v11 = v130;
        organizationName = self->_organizationName;
        self->_organizationName = v18;

        if (v11)
        {
          goto LABEL_22;
        }

        v129 = 0;
        v20 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"PayloadCertificateUUID" isRequired:0 outError:&v129];
        v11 = v129;
        payloadCertificateUUID = self->_payloadCertificateUUID;
        self->_payloadCertificateUUID = v20;

        if (v11)
        {
          goto LABEL_22;
        }

        v128 = 0;
        v22 = [dictionaryCopy crk_validateAndRemoveObjectOfClass:objc_opt_class() withKey:@"PayloadCertificatePersistentID" isRequired:0 outError:&v128];
        v11 = v128;
        payloadCertificatePersistentID = self->_payloadCertificatePersistentID;
        self->_payloadCertificatePersistentID = v22;

        if (v11)
        {
          goto LABEL_22;
        }

        v127 = 0;
        v24 = [dictionaryCopy crk_validateAndRemoveArrayOfClass:objc_opt_class() withKey:@"LeaderPayloadCertificateAnchorUUID" isRequired:0 outError:&v127];
        v11 = v127;
        leaderPayloadCertificateAnchorUUID = self->_leaderPayloadCertificateAnchorUUID;
        self->_leaderPayloadCertificateAnchorUUID = v24;

        if (v11)
        {
          goto LABEL_22;
        }

        v126 = 0;
        v26 = [dictionaryCopy crk_validateAndRemoveArrayOfClass:objc_opt_class() withKey:@"LeaderPayloadCertificateAnchorPersistentID" isRequired:0 outError:&v126];
        v11 = v126;
        leaderPayloadCertificateAnchorPersistentID = self->_leaderPayloadCertificateAnchorPersistentID;
        self->_leaderPayloadCertificateAnchorPersistentID = v26;

        if (v11)
        {
          goto LABEL_22;
        }

        v125 = 0;
        v28 = [dictionaryCopy crk_validateAndRemoveArrayOfClass:objc_opt_class() withKey:@"MemberPayloadCertificateAnchorUUID" isRequired:0 outError:&v125];
        v11 = v125;
        memberPayloadCertificateAnchorUUID = self->_memberPayloadCertificateAnchorUUID;
        self->_memberPayloadCertificateAnchorUUID = v28;

        if (v11)
        {
          goto LABEL_22;
        }

        v124 = 0;
        v30 = [dictionaryCopy crk_validateAndRemoveArrayOfClass:objc_opt_class() withKey:@"MemberPayloadCertificateAnchorPersistentID" isRequired:0 outError:&v124];
        v31 = v124;
        memberPayloadCertificateAnchorPersistentID = self->_memberPayloadCertificateAnchorPersistentID;
        self->_memberPayloadCertificateAnchorPersistentID = v30;

        if (v31 || (v123 = 0, [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"ResourcePayloadCertificateUUID" isRequired:0 outError:&v123], v33 = objc_claimAutoreleasedReturnValue(), v31 = v123, resourcePayloadCertificateUUID = self->_resourcePayloadCertificateUUID, self->_resourcePayloadCertificateUUID = v33, resourcePayloadCertificateUUID, v31) || (v122 = 0, objc_msgSend(dictionaryCopy, "crk_validateAndRemoveObjectOfClass:withKey:isRequired:outError:", objc_opt_class(), @"ResourcePayloadCertificatePersistentID", 0, &v122), v35 = objc_claimAutoreleasedReturnValue(), v31 = v122, resourcePayloadCertificatePersistentID = self->_resourcePayloadCertificatePersistentID, self->_resourcePayloadCertificatePersistentID = v35, resourcePayloadCertificatePersistentID, v31) || (v121 = 0, objc_msgSend(dictionaryCopy, "crk_validateAndRemoveObjectOfClass:withKey:isRequired:outError:", objc_opt_class(), @"ScreenObservationPermissionModificationAllowed", 0, &v121), v37 = objc_claimAutoreleasedReturnValue(), v31 = v121, self->_screenObservationPermissionModificationAllowed = objc_msgSend(v37, "BOOLValue"), v37, v31))
        {
          v11 = v31;
          goto LABEL_22;
        }

        v120 = 0;
        v40 = [dictionaryCopy crk_validateAndRemoveArrayOfClass:objc_opt_class() withKey:@"Departments" isRequired:0 outError:&v120];
        v41 = v120;
        if (v41)
        {
          goto LABEL_28;
        }

        v91 = objc_opt_new();
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        obj = v40;
        v42 = [obj countByEnumeratingWithState:&v116 objects:v137 count:16];
        if (v42)
        {
          v43 = v42;
          v87 = *v117;
          while (2)
          {
            for (i = 0; i != v43; ++i)
            {
              if (*v117 != v87)
              {
                objc_enumerationMutation(obj);
              }

              v45 = [*(*(&v116 + 1) + 8 * i) mutableCopy];
              v115 = 0;
              v46 = [(CRKEDUPayload *)self parseDepartmentFromDictionary:v45 isStub:stubCopy outError:&v115];
              v47 = v115;

              if (v47)
              {

                goto LABEL_39;
              }

              [v91 addObject:v46];
            }

            v43 = [obj countByEnumeratingWithState:&v116 objects:v137 count:16];
            if (v43)
            {
              continue;
            }

            break;
          }
        }

        v47 = 0;
LABEL_39:

        v48 = [v91 copy];
        departments = self->_departments;
        self->_departments = v48;

        v114 = v47;
        v40 = [dictionaryCopy crk_validateAndRemoveArrayOfClass:objc_opt_class() withKey:@"Groups" isRequired:stubCopy ^ 1 outError:&v114];
        v11 = v114;

        if (v11)
        {
          goto LABEL_54;
        }

        v50 = objc_opt_new();
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        obja = v40;
        v92 = [obja countByEnumeratingWithState:&v110 objects:v136 count:16];
        if (v92)
        {
          v88 = *v111;
          while (2)
          {
            for (j = 0; j != v92; ++j)
            {
              if (*v111 != v88)
              {
                objc_enumerationMutation(obja);
              }

              v52 = [*(*(&v110 + 1) + 8 * j) mutableCopy];
              v109 = 0;
              v53 = [(CRKEDUPayload *)self parseGroupFromDictionary:v52 isStub:stubCopy outError:&v109];
              v54 = v109;

              if (v54)
              {
                goto LABEL_52;
              }

              v55 = [v53 objectForKeyedSubscript:@"BeaconID"];
              v56 = [v50 objectForKeyedSubscript:v55];

              if (v56)
              {
                v54 = [MEMORY[0x277CCA9B8] crk_valueNotUniqueErrorWithField:@"BeaconID" value:v55];

LABEL_52:
                goto LABEL_53;
              }

              [v50 setObject:v53 forKeyedSubscript:v55];
            }

            v54 = 0;
            v92 = [obja countByEnumeratingWithState:&v110 objects:v136 count:16];
            if (v92)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v54 = 0;
        }

LABEL_53:

        allValues = [v50 allValues];
        groups = self->_groups;
        self->_groups = allValues;

        v108 = v54;
        v40 = [dictionaryCopy crk_validateAndRemoveArrayOfClass:objc_opt_class() withKey:@"Users" isRequired:stubCopy ^ 1 outError:&v108];
        v11 = v108;

        if (v11)
        {
          goto LABEL_54;
        }

        v93 = objc_opt_new();
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        v107 = 0u;
        objb = v40;
        v59 = [objb countByEnumeratingWithState:&v104 objects:v135 count:16];
        if (v59)
        {
          v60 = v59;
          v89 = *v105;
          while (2)
          {
            for (k = 0; k != v60; ++k)
            {
              if (*v105 != v89)
              {
                objc_enumerationMutation(objb);
              }

              v62 = [*(*(&v104 + 1) + 8 * k) mutableCopy];
              v103 = 0;
              v63 = [(CRKEDUPayload *)self parseUserFromDictionary:v62 isStub:stubCopy outError:&v103];
              v64 = v103;

              if (v64)
              {
                goto LABEL_67;
              }

              v65 = [v63 objectForKeyedSubscript:@"Identifier"];
              v66 = [v93 objectForKeyedSubscript:v65];

              if (v66)
              {
                v64 = [MEMORY[0x277CCA9B8] crk_valueNotUniqueErrorWithField:@"Identifier" value:v65];

LABEL_67:
                goto LABEL_68;
              }

              [v93 setObject:v63 forKeyedSubscript:v65];
            }

            v60 = [objb countByEnumeratingWithState:&v104 objects:v135 count:16];
            v64 = 0;
            if (v60)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v64 = 0;
        }

LABEL_68:

        allValues2 = [v93 allValues];
        users = self->_users;
        self->_users = allValues2;

        v102 = v64;
        v69 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"UserIdentifier" isRequired:0 outError:&v102];
        v70 = v102;

        userIdentifier = self->_userIdentifier;
        self->_userIdentifier = v69;

        v11 = v70;
        if (!v70)
        {
          if (self->_userIdentifier && ([v93 objectForKeyedSubscript:?], v72 = objc_claimAutoreleasedReturnValue(), v72, !v72))
          {
            v80 = [MEMORY[0x277CCA9B8] crk_malformedProfileErrorWithField:@"UserIdentifier" value:self->_userIdentifier];
          }

          else
          {
            if ([(CRKEDUPayload *)self isEphemeralMultiUserDevice]|| self->_userIdentifier)
            {

              v101 = 0;
              v40 = [dictionaryCopy crk_validateAndRemoveArrayOfClass:objc_opt_class() withKey:@"DeviceGroups" isRequired:0 outError:&v101];
              v41 = v101;
              if (!v41)
              {
                v73 = objc_opt_new();
                v97 = 0u;
                v98 = 0u;
                v99 = 0u;
                v100 = 0u;
                objc = v40;
                v94 = [objc countByEnumeratingWithState:&v97 objects:v134 count:16];
                if (v94)
                {
                  v90 = *v98;
                  while (2)
                  {
                    for (m = 0; m != v94; ++m)
                    {
                      if (*v98 != v90)
                      {
                        objc_enumerationMutation(objc);
                      }

                      v75 = [*(*(&v97 + 1) + 8 * m) mutableCopy];
                      v96 = 0;
                      v76 = [(CRKEDUPayload *)self parseDeviceGroupFromDictionary:v75 isStub:stubCopy outError:&v96];
                      v77 = v96;

                      if (v77)
                      {
                        goto LABEL_90;
                      }

                      v78 = [v76 objectForKeyedSubscript:@"Name"];
                      v79 = [v73 objectForKeyedSubscript:v78];

                      if (v79)
                      {
                        v77 = [MEMORY[0x277CCA9B8] crk_valueNotUniqueErrorWithField:@"Name" value:v78];

LABEL_90:
                        goto LABEL_91;
                      }

                      [v73 setObject:v76 forKeyedSubscript:v78];
                    }

                    v77 = 0;
                    v94 = [objc countByEnumeratingWithState:&v97 objects:v134 count:16];
                    if (v94)
                    {
                      continue;
                    }

                    break;
                  }
                }

                else
                {
                  v77 = 0;
                }

LABEL_91:

                allValues3 = [v73 allValues];
                deviceGroups = self->_deviceGroups;
                self->_deviceGroups = allValues3;

                v95 = v77;
                [(CRKEDUPayload *)self areCredentialsValidForStub:stubCopy error:&v95];
                v11 = v95;

                goto LABEL_22;
              }

LABEL_28:
              v11 = v41;
LABEL_54:

              goto LABEL_22;
            }

            v80 = [MEMORY[0x277CCA9B8] crk_missingFieldErrorWithField:@"UserIdentifier"];
          }

          v11 = v80;
        }

        goto LABEL_22;
      }
    }
  }

LABEL_23:
  if (error && v11)
  {
    v38 = v11;
    *error = v11;
  }

  return v11 == 0;
}

- (BOOL)areCredentialsValidForStub:(BOOL)stub error:(id *)error
{
  v5 = [[CRKEDUPayloadCredentialValidator alloc] initWithPayload:self isStub:stub isEphemeralMultiUserDevice:[(CRKEDUPayload *)self isEphemeralMultiUserDevice]];
  LOBYTE(error) = [(CRKEDUPayloadCredentialValidator *)v5 areCredentialsValidWithError:error];

  return error;
}

- (id)parseDepartmentFromDictionary:(id)dictionary isStub:(BOOL)stub outError:(id *)error
{
  stubCopy = stub;
  dictionaryCopy = dictionary;
  v15 = 0;
  v8 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"Name" isRequired:!stubCopy outError:&v15];
  v9 = v15;
  if (v9)
  {
    v10 = 0;
    goto LABEL_4;
  }

  v14 = 0;
  v10 = [dictionaryCopy crk_validateAndRemoveArrayOfClass:objc_opt_class() withKey:@"GroupBeaconIDs" isRequired:!stubCopy outError:&v14];
  v9 = v14;
  if (v9)
  {
LABEL_4:
    if (error)
    {
      v9 = v9;
      v11 = 0;
      *error = v9;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_12;
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = v12;
  if (v8)
  {
    [v12 setObject:v8 forKeyedSubscript:@"Name"];
  }

  if (v10)
  {
    [v11 setObject:v10 forKeyedSubscript:@"GroupBeaconIDs"];
  }

  v9 = 0;
LABEL_12:

  return v11;
}

- (id)parseGroupFromDictionary:(id)dictionary isStub:(BOOL)stub outError:(id *)error
{
  stubCopy = stub;
  dictionaryCopy = dictionary;
  v28 = 0;
  v8 = [dictionaryCopy crk_validateAndRemoveObjectOfClass:objc_opt_class() withKey:@"BeaconID" isRequired:!stubCopy outError:&v28];
  v9 = v28;
  if (v9 || [v8 unsignedIntegerValue] >= 0x10000 && (objc_msgSend(MEMORY[0x277CCA9B8], "crk_unsupportedValueErrorWithField:value:", @"BeaconID", v8), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v20 = 0;
LABEL_3:
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_4;
  }

  v27 = 0;
  v20 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"Name" isRequired:!stubCopy outError:&v27];
  v9 = v27;
  if (v9)
  {
    goto LABEL_3;
  }

  v26 = 0;
  v15 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"Description" isRequired:0 outError:&v26];
  v9 = v26;
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_4;
  }

  v25 = 0;
  v14 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"ConfigurationSource" isRequired:0 outError:&v25];
  v9 = v25;
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_4;
  }

  v24 = 0;
  v13 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"ImageURL" isRequired:0 outError:&v24];
  v9 = v24;
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_4;
  }

  v23 = 0;
  v12 = [dictionaryCopy crk_validateAndRemoveArrayOfClass:objc_opt_class() withKey:@"LeaderIdentifiers" isRequired:0 outError:&v23];
  v9 = v23;
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_4;
  }

  v22 = 0;
  v11 = [dictionaryCopy crk_validateAndRemoveArrayOfClass:objc_opt_class() withKey:@"MemberIdentifiers" isRequired:!stubCopy outError:&v22];
  v9 = v22;
  if (v9)
  {
    v10 = 0;
    goto LABEL_4;
  }

  v21 = 0;
  v10 = [dictionaryCopy crk_validateAndRemoveArrayOfClass:objc_opt_class() withKey:@"DeviceGroupIdentifiers" isRequired:0 outError:&v21];
  v9 = v21;
  if (v9)
  {
LABEL_4:
    if (error)
    {
      v9 = v9;
      v16 = 0;
      *error = v9;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_12;
  }

  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19 = v18;
  if (v8)
  {
    [v18 setObject:v8 forKeyedSubscript:@"BeaconID"];
  }

  if (v20)
  {
    [v19 setObject:v20 forKeyedSubscript:@"Name"];
  }

  if (v15)
  {
    [v19 setObject:v15 forKeyedSubscript:@"Description"];
  }

  if (v14)
  {
    [v19 setObject:v14 forKeyedSubscript:@"ConfigurationSource"];
  }

  if (v13)
  {
    [v19 setObject:v13 forKeyedSubscript:@"ImageURL"];
  }

  if (v12)
  {
    [v19 setObject:v12 forKeyedSubscript:@"LeaderIdentifiers"];
  }

  if (v11)
  {
    [v19 setObject:v11 forKeyedSubscript:@"MemberIdentifiers"];
  }

  if (v10)
  {
    [v19 setObject:v10 forKeyedSubscript:@"DeviceGroupIdentifiers"];
  }

  v16 = [v19 copy];

  v9 = 0;
LABEL_12:

  return v16;
}

- (id)parseUserFromDictionary:(id)dictionary isStub:(BOOL)stub outError:(id *)error
{
  stubCopy = stub;
  dictionaryCopy = dictionary;
  v32 = 0;
  v8 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"Identifier" isRequired:!stubCopy outError:&v32];
  v9 = v32;
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_20;
  }

  v31 = 0;
  v22 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"Name" isRequired:!stubCopy outError:&v31];
  v9 = v31;
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_20;
  }

  v30 = 0;
  v21 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"GivenName" isRequired:0 outError:&v30];
  v9 = v30;
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v20 = 0;
    goto LABEL_20;
  }

  v29 = 0;
  v20 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"FamilyName" isRequired:0 outError:&v29];
  v9 = v29;
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_20;
  }

  v28 = 0;
  v15 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"PhoneticGivenName" isRequired:0 outError:&v28];
  v9 = v28;
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_20;
  }

  v27 = 0;
  v14 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"PhoneticFamilyName" isRequired:0 outError:&v27];
  v9 = v27;
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_20;
  }

  v26 = 0;
  v13 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"AppleID" isRequired:0 outError:&v26];
  v9 = v26;
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_20;
  }

  v25 = 0;
  v12 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"ImageURL" isRequired:0 outError:&v25];
  v9 = v25;
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_20;
  }

  v24 = 0;
  v11 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"FullScreenImageURL" isRequired:0 outError:&v24];
  v9 = v24;
  if (v9)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v23 = 0;
  v10 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"PasscodeType" isRequired:0 outError:&v23];
  v9 = v23;
  if (v9)
  {
LABEL_20:
    if (error)
    {
      v9 = v9;
      v16 = 0;
      *error = v9;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_23;
  }

  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19 = v18;
  if (v8)
  {
    [v18 setObject:v8 forKeyedSubscript:@"Identifier"];
  }

  if (v22)
  {
    [v19 setObject:v22 forKeyedSubscript:@"Name"];
  }

  if (v21)
  {
    [v19 setObject:v21 forKeyedSubscript:@"GivenName"];
  }

  if (v20)
  {
    [v19 setObject:v20 forKeyedSubscript:@"FamilyName"];
  }

  if (v15)
  {
    [v19 setObject:v15 forKeyedSubscript:@"PhoneticGivenName"];
  }

  if (v14)
  {
    [v19 setObject:v14 forKeyedSubscript:@"PhoneticFamilyName"];
  }

  if (v13)
  {
    [v19 setObject:v13 forKeyedSubscript:@"AppleID"];
  }

  if (v12)
  {
    [v19 setObject:v12 forKeyedSubscript:@"ImageURL"];
  }

  if (v11)
  {
    [v19 setObject:v11 forKeyedSubscript:@"FullScreenImageURL"];
  }

  if (v10)
  {
    [v19 setObject:v10 forKeyedSubscript:@"PasscodeType"];
  }

  v16 = [v19 copy];

  v9 = 0;
LABEL_23:

  return v16;
}

- (id)parseDeviceGroupFromDictionary:(id)dictionary isStub:(BOOL)stub outError:(id *)error
{
  stubCopy = stub;
  dictionaryCopy = dictionary;
  v18 = 0;
  v8 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"Identifier" isRequired:!stubCopy outError:&v18];
  v9 = v18;
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_6;
  }

  v17 = 0;
  v11 = [dictionaryCopy crk_validateAndRemoveNonZeroLengthStringWithKey:@"Name" isRequired:!stubCopy outError:&v17];
  v9 = v17;
  if (v9)
  {
    v10 = 0;
    goto LABEL_6;
  }

  v16 = 0;
  v10 = [dictionaryCopy crk_validateAndRemoveArrayOfClass:objc_opt_class() withKey:@"SerialNumbers" isRequired:0 outError:&v16];
  v9 = v16;
  if (v9)
  {
LABEL_6:
    if (error)
    {
      v9 = v9;
      v12 = 0;
      *error = v9;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_9;
  }

  v14 = objc_opt_new();
  v15 = v14;
  if (v8)
  {
    [v14 setObject:v8 forKeyedSubscript:@"Identifier"];
  }

  if (v11)
  {
    [v15 setObject:v11 forKeyedSubscript:@"Name"];
  }

  if (v10)
  {
    [v15 setObject:v10 forKeyedSubscript:@"SerialNumbers"];
  }

  v12 = [v15 copy];

  v9 = 0;
LABEL_9:

  return v12;
}

- (NSDictionary)configuration
{
  v3 = objc_opt_new();
  organizationUUID = [(CRKEDUPayload *)self organizationUUID];

  if (organizationUUID)
  {
    organizationUUID2 = [(CRKEDUPayload *)self organizationUUID];
    [v3 setObject:organizationUUID2 forKeyedSubscript:@"OrganizationUUID"];
  }

  organizationName = [(CRKEDUPayload *)self organizationName];

  if (organizationName)
  {
    organizationName2 = [(CRKEDUPayload *)self organizationName];
    [v3 setObject:organizationName2 forKeyedSubscript:@"OrganizationName"];
  }

  payloadCertificateUUID = [(CRKEDUPayload *)self payloadCertificateUUID];

  if (payloadCertificateUUID)
  {
    payloadCertificateUUID2 = [(CRKEDUPayload *)self payloadCertificateUUID];
    [v3 setObject:payloadCertificateUUID2 forKeyedSubscript:@"PayloadCertificateUUID"];
  }

  payloadCertificatePersistentID = [(CRKEDUPayload *)self payloadCertificatePersistentID];

  if (payloadCertificatePersistentID)
  {
    payloadCertificatePersistentID2 = [(CRKEDUPayload *)self payloadCertificatePersistentID];
    [v3 setObject:payloadCertificatePersistentID2 forKeyedSubscript:@"PayloadCertificatePersistentID"];
  }

  leaderPayloadCertificateAnchorUUID = [(CRKEDUPayload *)self leaderPayloadCertificateAnchorUUID];

  if (leaderPayloadCertificateAnchorUUID)
  {
    leaderPayloadCertificateAnchorUUID2 = [(CRKEDUPayload *)self leaderPayloadCertificateAnchorUUID];
    [v3 setObject:leaderPayloadCertificateAnchorUUID2 forKeyedSubscript:@"LeaderPayloadCertificateAnchorUUID"];
  }

  leaderPayloadCertificateAnchorPersistentID = [(CRKEDUPayload *)self leaderPayloadCertificateAnchorPersistentID];

  if (leaderPayloadCertificateAnchorPersistentID)
  {
    leaderPayloadCertificateAnchorPersistentID2 = [(CRKEDUPayload *)self leaderPayloadCertificateAnchorPersistentID];
    [v3 setObject:leaderPayloadCertificateAnchorPersistentID2 forKeyedSubscript:@"LeaderPayloadCertificateAnchorPersistentID"];
  }

  memberPayloadCertificateAnchorUUID = [(CRKEDUPayload *)self memberPayloadCertificateAnchorUUID];

  if (memberPayloadCertificateAnchorUUID)
  {
    memberPayloadCertificateAnchorUUID2 = [(CRKEDUPayload *)self memberPayloadCertificateAnchorUUID];
    [v3 setObject:memberPayloadCertificateAnchorUUID2 forKeyedSubscript:@"MemberPayloadCertificateAnchorUUID"];
  }

  memberPayloadCertificateAnchorPersistentID = [(CRKEDUPayload *)self memberPayloadCertificateAnchorPersistentID];

  if (memberPayloadCertificateAnchorPersistentID)
  {
    memberPayloadCertificateAnchorPersistentID2 = [(CRKEDUPayload *)self memberPayloadCertificateAnchorPersistentID];
    [v3 setObject:memberPayloadCertificateAnchorPersistentID2 forKeyedSubscript:@"MemberPayloadCertificateAnchorPersistentID"];
  }

  resourcePayloadCertificateUUID = [(CRKEDUPayload *)self resourcePayloadCertificateUUID];

  if (resourcePayloadCertificateUUID)
  {
    resourcePayloadCertificateUUID2 = [(CRKEDUPayload *)self resourcePayloadCertificateUUID];
    [v3 setObject:resourcePayloadCertificateUUID2 forKeyedSubscript:@"ResourcePayloadCertificateUUID"];
  }

  resourcePayloadCertificatePersistentID = [(CRKEDUPayload *)self resourcePayloadCertificatePersistentID];

  if (resourcePayloadCertificatePersistentID)
  {
    resourcePayloadCertificatePersistentID2 = [(CRKEDUPayload *)self resourcePayloadCertificatePersistentID];
    [v3 setObject:resourcePayloadCertificatePersistentID2 forKeyedSubscript:@"ResourcePayloadCertificatePersistentID"];
  }

  userIdentifier = [(CRKEDUPayload *)self userIdentifier];

  if (userIdentifier)
  {
    userIdentifier2 = [(CRKEDUPayload *)self userIdentifier];
    [v3 setObject:userIdentifier2 forKeyedSubscript:@"UserIdentifier"];
  }

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKEDUPayload screenObservationPermissionModificationAllowed](self, "screenObservationPermissionModificationAllowed")}];

  if (v26)
  {
    v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKEDUPayload screenObservationPermissionModificationAllowed](self, "screenObservationPermissionModificationAllowed")}];
    [v3 setObject:v27 forKeyedSubscript:@"ScreenObservationPermissionModificationAllowed"];
  }

  departments = [(CRKEDUPayload *)self departments];

  if (departments)
  {
    departments2 = [(CRKEDUPayload *)self departments];
    [v3 setObject:departments2 forKeyedSubscript:@"Departments"];
  }

  groups = [(CRKEDUPayload *)self groups];

  if (groups)
  {
    groups2 = [(CRKEDUPayload *)self groups];
    [v3 setObject:groups2 forKeyedSubscript:@"Groups"];
  }

  users = [(CRKEDUPayload *)self users];

  if (users)
  {
    users2 = [(CRKEDUPayload *)self users];
    [v3 setObject:users2 forKeyedSubscript:@"Users"];
  }

  deviceGroups = [(CRKEDUPayload *)self deviceGroups];

  if (deviceGroups)
  {
    deviceGroups2 = [(CRKEDUPayload *)self deviceGroups];
    [v3 setObject:deviceGroups2 forKeyedSubscript:@"DeviceGroups"];
  }

  v36 = [v3 copy];

  return v36;
}

- (id)description
{
  v18 = MEMORY[0x277CCACA8];
  organizationUUID = [(CRKEDUPayload *)self organizationUUID];
  organizationName = [(CRKEDUPayload *)self organizationName];
  payloadCertificateUUID = [(CRKEDUPayload *)self payloadCertificateUUID];
  payloadCertificatePersistentID = [(CRKEDUPayload *)self payloadCertificatePersistentID];
  leaderPayloadCertificateAnchorUUID = [(CRKEDUPayload *)self leaderPayloadCertificateAnchorUUID];
  leaderPayloadCertificateAnchorPersistentID = [(CRKEDUPayload *)self leaderPayloadCertificateAnchorPersistentID];
  memberPayloadCertificateAnchorUUID = [(CRKEDUPayload *)self memberPayloadCertificateAnchorUUID];
  memberPayloadCertificateAnchorPersistentID = [(CRKEDUPayload *)self memberPayloadCertificateAnchorPersistentID];
  resourcePayloadCertificateUUID = [(CRKEDUPayload *)self resourcePayloadCertificateUUID];
  resourcePayloadCertificatePersistentID = [(CRKEDUPayload *)self resourcePayloadCertificatePersistentID];
  userIdentifier = [(CRKEDUPayload *)self userIdentifier];
  if ([(CRKEDUPayload *)self screenObservationPermissionModificationAllowed])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  departments = [(CRKEDUPayload *)self departments];
  groups = [(CRKEDUPayload *)self groups];
  users = [(CRKEDUPayload *)self users];
  deviceGroups = [(CRKEDUPayload *)self deviceGroups];
  v19 = [v18 stringWithFormat:@"organizationUUID: %@             organizationName: %@             payloadCertificateUUID: %@             payloadCertificatePersistentID: %@             leaderPayloadCertificateAnchorUUID: %@             leaderPayloadCertificateAnchorPersistentID: %@             memberPayloadCertificateAnchorUUID: %@             memberPayloadCertificateAnchorPersistentID: %@             resourcePayloadCertificateUUID: %@             resourcePayloadCertificatePersistentID: %@             userIdentifier: %@             screenObservationPermissionModificationAllowed: %@             departments: %@             groups: %@             users: %@             deviceGroups: %@", organizationUUID, organizationName, payloadCertificateUUID, payloadCertificatePersistentID, leaderPayloadCertificateAnchorUUID, leaderPayloadCertificateAnchorPersistentID, memberPayloadCertificateAnchorUUID, memberPayloadCertificateAnchorPersistentID, resourcePayloadCertificateUUID, resourcePayloadCertificatePersistentID, userIdentifier, v7, departments, groups, users, deviceGroups];

  return v19;
}

@end