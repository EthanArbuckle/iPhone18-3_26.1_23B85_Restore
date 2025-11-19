@interface MCMDMPayload
- (BOOL)isUserEnrollment;
- (MCMDMPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (NSArray)localizedAccessRightDescriptions;
- (NSString)managedAppleIDName;
- (id)_invalidRightsError;
- (id)_invalidTopicError;
- (id)_nonHTTPSURLErrorForField:(id)a3;
- (id)installationWarnings;
- (id)kvsForCertUUIDs:(id)a3 persistentRefs:(id)a4 labelKey:(id)a5;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)subtitle1Label;
- (id)verboseDescription;
@end

@implementation MCMDMPayload

- (id)_invalidRightsError
{
  v2 = MEMORY[0x1E696ABC0];
  v3 = [(MCPayload *)self friendlyName];
  v11 = MCErrorArray(@"MDM_ERROR_INVALID_RIGHTS_P_NAME", v4, v5, v6, v7, v8, v9, v10, v3);
  v12 = [v2 MCErrorWithDomain:@"MCMDMErrorDomain" code:12000 descriptionArray:v11 errorType:@"MCFatalError"];

  return v12;
}

- (id)_invalidTopicError
{
  v2 = MEMORY[0x1E696ABC0];
  v3 = [(MCPayload *)self friendlyName];
  v11 = MCErrorArray(@"MDM_ERROR_INVALID_TOPIC_P_NAME", v4, v5, v6, v7, v8, v9, v10, v3);
  v12 = [v2 MCErrorWithDomain:@"MCMDMErrorDomain" code:12022 descriptionArray:v11 errorType:@"MCFatalError"];

  return v12;
}

- (id)_nonHTTPSURLErrorForField:(id)a3
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = MCErrorArray(@"MDM_ERROR_FIELD_NOT_HTTPS_P_FIELD", a2, a3, v3, v4, v5, v6, v7, a3);
  v10 = [v8 MCErrorWithDomain:@"MCMDMErrorDomain" code:12034 descriptionArray:v9 errorType:@"MCFatalError"];

  return v10;
}

- (MCMDMPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v179 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v174.receiver = self;
  v174.super_class = MCMDMPayload;
  v10 = [(MCPayload *)&v174 initWithDictionary:v8 profile:v9 outError:a5];
  if (v10)
  {
    if ([v9 isStub])
    {
      v11 = objc_opt_class();
      v12 = *MEMORY[0x1E69AD4D8];
      v173 = 0;
      v13 = [v8 MCValidateAndRemoveObjectOfClass:v11 withKey:v12 isRequired:0 outError:&v173];
      v14 = v173;
      identityPersistentID = v10->_identityPersistentID;
      v10->_identityPersistentID = v13;

      if (v14)
      {
        goto LABEL_52;
      }

      v16 = *MEMORY[0x1E69AD540];
      v172 = 0;
      v17 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:v16 isRequired:0 outError:&v172];
      v14 = v172;
      serverURLString = v10->_serverURLString;
      v10->_serverURLString = v17;

      if (v14)
      {
        goto LABEL_52;
      }

      v19 = objc_opt_class();
      v20 = *MEMORY[0x1E69AD530];
      v171 = 0;
      v21 = [v8 MCValidateAndRemoveArrayOfClass:v19 withKey:v20 isRequired:0 outError:&v171];
      v14 = v171;
      serverPinningPersistentRefs = v10->_serverPinningPersistentRefs;
      v10->_serverPinningPersistentRefs = v21;

      if (v14)
      {
        goto LABEL_52;
      }

      v23 = objc_opt_class();
      v24 = *MEMORY[0x1E69AD478];
      v170 = 0;
      v25 = [v8 MCValidateAndRemoveArrayOfClass:v23 withKey:v24 isRequired:0 outError:&v170];
      v14 = v170;
      checkInPinningPersistentRefs = v10->_checkInPinningPersistentRefs;
      v10->_checkInPinningPersistentRefs = v25;

      if (v14)
      {
        goto LABEL_52;
      }

      v27 = objc_opt_class();
      v28 = *MEMORY[0x1E69AD518];
      v169 = 0;
      v29 = [v8 MCValidateAndRemoveObjectOfClass:v27 withKey:v28 isRequired:0 outError:&v169];
      v14 = v169;
      pollingIntervalMinutes = v10->_pollingIntervalMinutes;
      v10->_pollingIntervalMinutes = v29;

      if (v14)
      {
        goto LABEL_52;
      }

      v31 = *MEMORY[0x1E69AD558];
      v168 = 0;
      v32 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:v31 isRequired:0 outError:&v168];
      v14 = v168;
      topic = v10->_topic;
      v10->_topic = v32;

      if (v14)
      {
        goto LABEL_52;
      }

      v34 = objc_opt_class();
      v35 = *MEMORY[0x1E69AD520];
      v167 = 0;
      v36 = [v8 MCValidateAndRemoveObjectOfClass:v34 withKey:v35 isRequired:0 outError:&v167];
      v14 = v167;
      requiredAppIDForMDM = v10->_requiredAppIDForMDM;
      v10->_requiredAppIDForMDM = v36;

      if (v14)
      {
        goto LABEL_52;
      }

      v38 = objc_opt_class();
      v39 = *MEMORY[0x1E69AD570];
      v166 = 0;
      v14 = [v8 MCValidateAndRemoveObjectOfClass:v38 withKey:v39 isRequired:0 outError:&v166];
      v40 = v166;
      v10->_isUserEnrollment = [v14 BOOLValue];
      if (v40)
      {
        goto LABEL_51;
      }

      v41 = *MEMORY[0x1E69AD4B8];
      v165 = 0;
      v137 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:v41 isRequired:0 outError:&v165];
      v40 = v165;
      enrollmentMode = v10->_enrollmentMode;
      v10->_enrollmentMode = v137;

      if (v40)
      {
        goto LABEL_51;
      }

      v43 = *MEMORY[0x1E69AD508];
      v164 = 0;
      v138 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:v43 isRequired:0 outError:&v164];
      v40 = v164;
      personaID = v10->_personaID;
      v10->_personaID = v138;

      if (v40)
      {
        goto LABEL_51;
      }

      v45 = *MEMORY[0x1E69AD4A0];
      v163 = 0;
      v139 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:v45 isRequired:0 outError:&v163];
      v40 = v163;
      enrollmentID = v10->_enrollmentID;
      v10->_enrollmentID = v139;

      if (v40)
      {
        goto LABEL_51;
      }

      v47 = *MEMORY[0x1E69AD578];
      v162 = 0;
      v140 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:v47 isRequired:0 outError:&v162];
      v40 = v162;
      iCloudEnrollmentID = v10->_iCloudEnrollmentID;
      v10->_iCloudEnrollmentID = v140;

      if (v40)
      {
        goto LABEL_51;
      }

      v49 = *MEMORY[0x1E69AD498];
      v161 = 0;
      v141 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:v49 isRequired:0 outError:&v161];
      v40 = v161;
      easEnrollmentID = v10->_easEnrollmentID;
      v10->_easEnrollmentID = v141;

      if (v40)
      {
        goto LABEL_51;
      }

      if (!v10->_isUserEnrollment)
      {
        v51 = objc_opt_class();
        v52 = *MEMORY[0x1E69AD468];
        v160 = 0;
        v53 = [v8 MCValidateAndRemoveObjectOfClass:v51 withKey:v52 isRequired:0 outError:&v160];
        v142 = v160;
        if (v142)
        {

          v40 = v142;
LABEL_51:

          v14 = v40;
          goto LABEL_52;
        }

        v10->_accessRights = [v53 unsignedIntValue];
      }
    }

    else
    {
      v54 = *MEMORY[0x1E69AD4D0];
      v159 = 0;
      v55 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:v54 isRequired:1 outError:&v159];
      v14 = v159;
      identityUUID = v10->_identityUUID;
      v10->_identityUUID = v55;

      if (v14)
      {
        goto LABEL_52;
      }

      v16 = *MEMORY[0x1E69AD540];
      v158 = 0;
      v57 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:v16 isRequired:1 outError:&v158];
      v14 = v158;
      v58 = v10->_serverURLString;
      v10->_serverURLString = v57;

      if (v14)
      {
        goto LABEL_52;
      }

      v59 = objc_opt_class();
      v60 = *MEMORY[0x1E69AD538];
      v157 = 0;
      v61 = [v8 MCValidateAndRemoveArrayOfClass:v59 withKey:v60 isRequired:0 outError:&v157];
      v14 = v157;
      serverPinningUUIDs = v10->_serverPinningUUIDs;
      v10->_serverPinningUUIDs = v61;

      if (v14)
      {
        goto LABEL_52;
      }

      v63 = objc_opt_class();
      v64 = *MEMORY[0x1E69AD480];
      v156 = 0;
      v65 = [v8 MCValidateAndRemoveArrayOfClass:v63 withKey:v64 isRequired:0 outError:&v156];
      v66 = v156;
      checkInPinningUUIDs = v10->_checkInPinningUUIDs;
      v10->_checkInPinningUUIDs = v65;

      v68 = objc_opt_class();
      v69 = *MEMORY[0x1E69AD518];
      v155 = v66;
      v70 = [v8 MCValidateAndRemoveObjectOfClass:v68 withKey:v69 isRequired:0 outError:&v155];
      v14 = v155;

      v71 = v10->_pollingIntervalMinutes;
      v10->_pollingIntervalMinutes = v70;

      if (v14)
      {
        goto LABEL_52;
      }

      v72 = *MEMORY[0x1E69AD558];
      v154 = 0;
      v73 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:v72 isRequired:0 outError:&v154];
      v14 = v154;
      v74 = v10->_topic;
      v10->_topic = v73;

      if (v14)
      {
        goto LABEL_52;
      }

      v75 = *MEMORY[0x1E69AD4E0];
      v153 = 0;
      v76 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:v75 isRequired:0 outError:&v153];
      v14 = v153;
      managedAppleID = v10->_managedAppleID;
      v10->_managedAppleID = v76;

      if (v14)
      {
        goto LABEL_52;
      }

      v78 = *MEMORY[0x1E69AD470];
      v152 = 0;
      v79 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:v78 isRequired:0 outError:&v152];
      v14 = v152;
      assignedManagedAppleID = v10->_assignedManagedAppleID;
      v10->_assignedManagedAppleID = v79;

      if (v14)
      {
        goto LABEL_52;
      }

      v81 = *MEMORY[0x1E69AD4B8];
      v151 = 0;
      v82 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:v81 isRequired:0 outError:&v151];
      v14 = v151;
      v83 = v10->_enrollmentMode;
      v10->_enrollmentMode = v82;

      if (v14)
      {
        goto LABEL_52;
      }

      if (v10->_managedAppleID || [(NSString *)v10->_enrollmentMode isEqualToString:*MEMORY[0x1E69AD4B0]])
      {
        v10->_isUserEnrollment = 1;
      }

      if (!v10->_managedAppleID && ([(NSString *)v10->_enrollmentMode isEqualToString:*MEMORY[0x1E69AD4B0]]|| [(NSString *)v10->_enrollmentMode isEqualToString:*MEMORY[0x1E69AD4A8]]))
      {
        v93 = objc_opt_class();
        v94 = *MEMORY[0x1E69AD520];
        v150 = 0;
        v95 = [v8 MCValidateAndRemoveObjectOfClass:v93 withKey:v94 isRequired:0 outError:&v150];
        v14 = v150;
        v96 = v10->_requiredAppIDForMDM;
        v10->_requiredAppIDForMDM = v95;

        if (v14)
        {
          goto LABEL_52;
        }
      }

      if (v10->_isUserEnrollment)
      {
LABEL_38:
        v87 = objc_opt_class();
        v88 = *MEMORY[0x1E69AD560];
        v148 = 0;
        v89 = [v8 MCValidateAndRemoveObjectOfClass:v87 withKey:v88 isRequired:0 outError:&v148];
        v14 = v148;
        useDevelopmentAPNSNum = v10->_useDevelopmentAPNSNum;
        v10->_useDevelopmentAPNSNum = v89;

        if (v14)
        {
LABEL_52:
          v108 = [v14 MCCopyAsPrimaryError];
          v109 = [(MCPayload *)v10 malformedPayloadErrorWithError:v108];

          if (a5)
          {
            v110 = v109;
            *a5 = v109;
          }

          v111 = _MCLogObjects;
          if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
          {
            v112 = v111;
            v113 = objc_opt_class();
            v114 = v113;
            v115 = [v109 MCVerboseDescription];
            *buf = 138543618;
            v176 = v113;
            v177 = 2114;
            v178 = v115;
            _os_log_impl(&dword_1A795B000, v112, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
          }

          v10 = 0;
LABEL_57:

          goto LABEL_58;
        }

        v10->_useDevelopmentAPNS = [(NSNumber *)v10->_useDevelopmentAPNSNum BOOLValue];
        v91 = objc_opt_class();
        v92 = *MEMORY[0x1E69AD510];
        v147 = 0;
        v14 = [v8 MCValidateAndRemoveObjectOfClass:v91 withKey:v92 isRequired:0 outError:&v147];
        v86 = v147;
        if (v86)
        {
          goto LABEL_40;
        }

        v10->_pinningRevocationCheckRequired = [v14 BOOLValue];
        v97 = objc_opt_class();
        v98 = *MEMORY[0x1E69AD550];
        v146 = 0;
        v133 = [v8 MCValidateAndRemoveObjectOfClass:v97 withKey:v98 isRequired:0 outError:&v146];
        v40 = v146;
        signMessageNum = v10->_signMessageNum;
        v10->_signMessageNum = v133;

        if (v40)
        {
          goto LABEL_51;
        }

        v10->_signMessage = [(NSNumber *)v10->_signMessageNum BOOLValue];
        v100 = objc_opt_class();
        v101 = *MEMORY[0x1E69AD490];
        v145 = 0;
        v134 = [v8 MCValidateAndRemoveObjectOfClass:v100 withKey:v101 isRequired:0 outError:&v145];
        v40 = v145;
        checkOutWhenRemovedNum = v10->_checkOutWhenRemovedNum;
        v10->_checkOutWhenRemovedNum = v134;

        if (v40)
        {
          goto LABEL_51;
        }

        v10->_checkOutWhenRemoved = [(NSNumber *)v10->_checkOutWhenRemovedNum BOOLValue];
        v103 = *MEMORY[0x1E69AD488];
        v144[1] = 0;
        v132 = v103;
        v135 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:? isRequired:? outError:?];
        v40 = 0;
        checkInURLString = v10->_checkInURLString;
        v10->_checkInURLString = v135;

        if (v40)
        {
          goto LABEL_51;
        }

        if (!v10->_checkInURLString)
        {
          objc_storeStrong(&v10->_checkInURLString, v10->_serverURLString);
        }

        v105 = objc_opt_class();
        v106 = *MEMORY[0x1E69AD528];
        v144[0] = 0;
        v136 = [v8 MCValidateAndRemoveArrayOfClass:v105 withKey:v106 isRequired:0 outError:v144];
        v40 = v144[0];
        serverCapabilities = v10->_serverCapabilities;
        v10->_serverCapabilities = v136;

        if (v40)
        {
          goto LABEL_51;
        }

        if ([v9 isStub])
        {
LABEL_60:
          if ([v8 count])
          {
            v118 = _MCLogObjects;
            if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
            {
              v119 = v118;
              v120 = [(MCPayload *)v10 friendlyName];
              *buf = 138543618;
              v176 = v120;
              v177 = 2114;
              v178 = v8;
              _os_log_impl(&dword_1A795B000, v119, OS_LOG_TYPE_INFO, "Payload “%{public}@” has fields that we are ignoring. They are: %{public}@", buf, 0x16u);
            }
          }

          goto LABEL_57;
        }

        if (![(MCMDMPayload *)v10 isUserEnrollment])
        {
          accessRights = v10->_accessRights;
          if (!accessRights || (v10->_accessRights & 3) == 2 || accessRights >> 13 || (v10->_accessRights & 0xC0) == 0x80)
          {
            goto LABEL_76;
          }
        }

        v121 = v10->_topic;
        if (v121)
        {
          if ([(NSString *)v121 rangeOfString:@"com.apple.mdm.limited." options:8]== 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([(NSString *)v10->_topic rangeOfString:@"com.apple.mgmt." options:8]== 0x7FFFFFFFFFFFFFFFLL)
            {
              v122 = [(MCMDMPayload *)v10 _invalidTopicError];
              goto LABEL_82;
            }
          }

          else if ((v10->_accessRights & 0xC) != 0)
          {
LABEL_76:
            v122 = [(MCMDMPayload *)v10 _invalidRightsError];
            goto LABEL_82;
          }
        }

        v124 = [MEMORY[0x1E695DFF8] URLWithString:v10->_serverURLString];
        v125 = [v124 scheme];
        v143 = [v125 isEqualToString:@"https"];

        if (v143)
        {
          v126 = [MEMORY[0x1E695DFF8] URLWithString:v10->_checkInURLString];
          v127 = [v126 scheme];
          v128 = [v127 isEqualToString:@"https"];

          if (v128)
          {
            goto LABEL_60;
          }

          v129 = v10;
          v130 = v132;
        }

        else
        {
          v129 = v10;
          v130 = v16;
        }

        v122 = [(MCMDMPayload *)v129 _nonHTTPSURLErrorForField:v130];
LABEL_82:
        v131 = v122;

        v14 = v131;
        if (!v131)
        {
          goto LABEL_58;
        }

        goto LABEL_52;
      }

      v84 = objc_opt_class();
      v85 = *MEMORY[0x1E69AD468];
      v149 = 0;
      v14 = [v8 MCValidateAndRemoveObjectOfClass:v84 withKey:v85 isRequired:0 outError:&v149];
      v86 = v149;
      if (v86 || v14 && [(NSString *)v10->_enrollmentMode isEqualToString:*MEMORY[0x1E69AD4B0]]&& ([(MCMDMPayload *)v10 _invalidRightsError], (v86 = objc_claimAutoreleasedReturnValue()) != 0))
      {
LABEL_40:
        v40 = v86;
        goto LABEL_51;
      }

      v10->_accessRights = [v14 unsignedIntValue];
    }

    goto LABEL_38;
  }

LABEL_58:

  v116 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)stubDictionary
{
  v11.receiver = self;
  v11.super_class = MCMDMPayload;
  v3 = [(MCPayload *)&v11 stubDictionary];
  [v3 MCSetObjectIfNotNil:self->_identityPersistentID forKey:*MEMORY[0x1E69AD4D8]];
  [v3 MCSetObjectIfNotNil:self->_serverURLString forKey:*MEMORY[0x1E69AD540]];
  [v3 MCSetObjectIfNotNil:self->_serverPinningPersistentRefs forKey:*MEMORY[0x1E69AD530]];
  [v3 MCSetObjectIfNotNil:self->_checkInURLString forKey:*MEMORY[0x1E69AD488]];
  [v3 MCSetObjectIfNotNil:self->_checkInPinningPersistentRefs forKey:*MEMORY[0x1E69AD478]];
  [v3 MCSetObjectIfNotNil:self->_topic forKey:*MEMORY[0x1E69AD558]];
  [v3 MCSetObjectIfNotNil:self->_pollingIntervalMinutes forKey:*MEMORY[0x1E69AD518]];
  [v3 MCSetObjectIfNotNil:self->_serverCapabilities forKey:*MEMORY[0x1E69AD528]];
  [v3 MCSetObjectIfNotNil:self->_personaID forKey:*MEMORY[0x1E69AD508]];
  [v3 MCSetObjectIfNotNil:self->_enrollmentID forKey:*MEMORY[0x1E69AD4A0]];
  [v3 MCSetObjectIfNotNil:self->_iCloudEnrollmentID forKey:*MEMORY[0x1E69AD578]];
  [v3 MCSetObjectIfNotNil:self->_easEnrollmentID forKey:*MEMORY[0x1E69AD498]];
  [v3 MCSetObjectIfNotNil:self->_requiredAppIDForMDM forKey:*MEMORY[0x1E69AD520]];
  [v3 MCSetObjectIfNotNil:self->_enrollmentMode forKey:*MEMORY[0x1E69AD4B8]];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_accessRights];
  [v3 setObject:v4 forKey:*MEMORY[0x1E69AD468]];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_useDevelopmentAPNS];
  [v3 setObject:v5 forKey:*MEMORY[0x1E69AD560]];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_checkOutWhenRemoved];
  [v3 setObject:v6 forKey:*MEMORY[0x1E69AD490]];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_signMessage];
  [v3 setObject:v7 forKey:*MEMORY[0x1E69AD550]];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_pinningRevocationCheckRequired];
  [v3 setObject:v8 forKey:*MEMORY[0x1E69AD510]];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isUserEnrollment];
  [v3 setObject:v9 forKey:*MEMORY[0x1E69AD570]];

  return v3;
}

- (id)verboseDescription
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v62.receiver = self;
  v62.super_class = MCMDMPayload;
  v4 = [(MCPayload *)&v62 verboseDescription];
  v5 = [v3 stringWithString:v4];

  if (self->_identityUUID)
  {
    [v5 appendFormat:@"Cert UUID   : %@\n", self->_identityUUID];
  }

  identityPersistentID = self->_identityPersistentID;
  if (identityPersistentID)
  {
    v7 = [(NSData *)identityPersistentID MCHexString];
    [v5 appendFormat:@"Persist ID  : %@\n", v7];
  }

  if (self->_topic)
  {
    [v5 appendFormat:@"Topic           : %@\n", self->_topic];
  }

  [v5 appendFormat:@"Polling Interval: %@\n", self->_pollingIntervalMinutes];
  if (self->_serverURLString)
  {
    [v5 appendFormat:@"Server URL      : %@\n", self->_serverURLString];
  }

  v8 = MCStringForBool(self->_useDevelopmentAPNS);
  [v5 appendFormat:@"Dev APNS        : %@\n", v8];

  if (self->_checkInURLString)
  {
    [v5 appendFormat:@"Check-in URL    : %@\n", self->_checkInURLString];
  }

  [v5 appendFormat:@"Required App ID: %@\n", self->_requiredAppIDForMDM];
  v9 = MCStringForBool(self->_signMessage);
  [v5 appendFormat:@"Sign message    : %@\n", v9];

  v10 = MCStringForBool(self->_checkOutWhenRemoved);
  [v5 appendFormat:@"Check out       : %@\n", v10];

  if (self->_serverCapabilities)
  {
    [v5 appendFormat:@"Capabilities    : %@\n", self->_serverCapabilities];
  }

  serverPinningUUIDs = self->_serverPinningUUIDs;
  if (serverPinningUUIDs)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v12 = serverPinningUUIDs;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v58 objects:v66 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v59;
      v16 = @"Server Pinning UUIDs : %@\n";
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v59 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [v5 appendFormat:v16, *(*(&v58 + 1) + 8 * i)];
          v16 = @"                     : %@\n";
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v58 objects:v66 count:16];
        v16 = @"                     : %@\n";
      }

      while (v14);
    }
  }

  serverPinningPersistentRefs = self->_serverPinningPersistentRefs;
  if (serverPinningPersistentRefs)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v19 = serverPinningPersistentRefs;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v54 objects:v65 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v55;
      v23 = @"Server Pinning Refs  : %@\n";
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v55 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v25 = [*(*(&v54 + 1) + 8 * j) MCHexString];
          [v5 appendFormat:v23, v25];

          v23 = @"                     : %@\n";
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v54 objects:v65 count:16];
        v23 = @"                     : %@\n";
      }

      while (v21);
    }
  }

  checkInPinningUUIDs = self->_checkInPinningUUIDs;
  if (checkInPinningUUIDs)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v27 = checkInPinningUUIDs;
    v28 = [(NSArray *)v27 countByEnumeratingWithState:&v50 objects:v64 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v51;
      v31 = @"CheckIn Pinning UUIDs: %@\n";
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v51 != v30)
          {
            objc_enumerationMutation(v27);
          }

          [v5 appendFormat:v31, *(*(&v50 + 1) + 8 * k)];
          v31 = @"                     : %@\n";
        }

        v29 = [(NSArray *)v27 countByEnumeratingWithState:&v50 objects:v64 count:16];
        v31 = @"                     : %@\n";
      }

      while (v29);
    }
  }

  checkInPinningPersistentRefs = self->_checkInPinningPersistentRefs;
  if (checkInPinningPersistentRefs)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v34 = checkInPinningPersistentRefs;
    v35 = [(NSArray *)v34 countByEnumeratingWithState:&v46 objects:v63 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v47;
      v38 = @"CheckIn Pinning Refs : %@\n";
      do
      {
        for (m = 0; m != v36; ++m)
        {
          if (*v47 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v40 = [*(*(&v46 + 1) + 8 * m) MCHexString];
          [v5 appendFormat:v38, v40];

          v38 = @"                     : %@\n";
        }

        v36 = [(NSArray *)v34 countByEnumeratingWithState:&v46 objects:v63 count:16];
        v38 = @"                     : %@\n";
      }

      while (v36);
    }
  }

  v41 = MCStringForBool(self->_pinningRevocationCheckRequired);
  [v5 appendFormat:@"Hard revocation check: %@\n", v41];

  [v5 appendFormat:@"Access Rights:\n"];
  accessRights = self->_accessRights;
  if (accessRights)
  {
    [v5 appendFormat:@"  Profile Inspection\n"];
    accessRights = self->_accessRights;
    if ((accessRights & 2) == 0)
    {
LABEL_51:
      if ((accessRights & 4) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_70;
    }
  }

  else if ((accessRights & 2) == 0)
  {
    goto LABEL_51;
  }

  [v5 appendFormat:@"  Profile Installation and removal\n"];
  accessRights = self->_accessRights;
  if ((accessRights & 4) == 0)
  {
LABEL_52:
    if ((accessRights & 8) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_71;
  }

LABEL_70:
  [v5 appendFormat:@"  Passcode change\n"];
  accessRights = self->_accessRights;
  if ((accessRights & 8) == 0)
  {
LABEL_53:
    if ((accessRights & 0x10) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_72;
  }

LABEL_71:
  [v5 appendFormat:@"  Device erase\n"];
  accessRights = self->_accessRights;
  if ((accessRights & 0x10) == 0)
  {
LABEL_54:
    if ((accessRights & 0x20) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_73;
  }

LABEL_72:
  [v5 appendFormat:@"  Device information\n"];
  accessRights = self->_accessRights;
  if ((accessRights & 0x20) == 0)
  {
LABEL_55:
    if ((accessRights & 0x40) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_74;
  }

LABEL_73:
  [v5 appendFormat:@"  Network information\n"];
  accessRights = self->_accessRights;
  if ((accessRights & 0x40) == 0)
  {
LABEL_56:
    if ((accessRights & 0x80) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_75;
  }

LABEL_74:
  [v5 appendFormat:@"  Provisioning profile inspection\n"];
  accessRights = self->_accessRights;
  if ((accessRights & 0x80) == 0)
  {
LABEL_57:
    if ((accessRights & 0x100) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_76;
  }

LABEL_75:
  [v5 appendFormat:@"  Provisioning profile installation and removal\n"];
  accessRights = self->_accessRights;
  if ((accessRights & 0x100) == 0)
  {
LABEL_58:
    if ((accessRights & 0x200) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_77;
  }

LABEL_76:
  [v5 appendFormat:@"  List installed applications\n"];
  accessRights = self->_accessRights;
  if ((accessRights & 0x200) == 0)
  {
LABEL_59:
    if ((accessRights & 0x400) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_78;
  }

LABEL_77:
  [v5 appendFormat:@"  Query restriction-related information\n"];
  accessRights = self->_accessRights;
  if ((accessRights & 0x400) == 0)
  {
LABEL_60:
    if ((accessRights & 0x800) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_79;
  }

LABEL_78:
  [v5 appendFormat:@"  Query security-related information\n"];
  accessRights = self->_accessRights;
  if ((accessRights & 0x800) == 0)
  {
LABEL_61:
    if ((accessRights & 0x1000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_79:
  [v5 appendFormat:@"  Apply settings\n"];
  if ((self->_accessRights & 0x1000) != 0)
  {
LABEL_62:
    [v5 appendFormat:@"  Install apps\n"];
  }

LABEL_63:
  if ([(MCMDMPayload *)self isUserEnrollment])
  {
    v43 = [(MCMDMPayload *)self managedAppleIDName];
    [v5 appendFormat:@"MAID        : %@\n", v43];
  }

  v44 = *MEMORY[0x1E69E9840];

  return v5;
}

- (NSArray)localizedAccessRightDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  accessRights = self->_accessRights;
  if ((accessRights & 8) != 0)
  {
    v7 = MCLocalizedString(@"MDM_ERASE");
    [v3 addObject:v7];

    accessRights = self->_accessRights;
    if ((accessRights & 4) == 0)
    {
LABEL_3:
      if ((accessRights & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((accessRights & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = MCLocalizedString(@"MDM_REMOVE_PASSCODE_LOCK");
  [v3 addObject:v8];

  accessRights = self->_accessRights;
  if ((accessRights & 1) == 0)
  {
LABEL_4:
    if ((accessRights & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = MCLocalizedString(@"MDM_INSPECT_PROFILE");
  [v3 addObject:v9];

  accessRights = self->_accessRights;
  if ((accessRights & 2) == 0)
  {
LABEL_5:
    if ((accessRights & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = MCLocalizedString(@"MDM_INSTALL_REMOVE_PROFILE");
  [v3 addObject:v10];

  accessRights = self->_accessRights;
  if ((accessRights & 0x40) == 0)
  {
LABEL_6:
    if ((accessRights & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = MCLocalizedString(@"MDM_LIST_PROV");
  [v3 addObject:v11];

  accessRights = self->_accessRights;
  if ((accessRights & 0x80) == 0)
  {
LABEL_7:
    if ((accessRights & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = MCLocalizedString(@"MDM_INSTALL_REMOVE_PROV");
  [v3 addObject:v12];

  accessRights = self->_accessRights;
  if ((accessRights & 0x10) == 0)
  {
LABEL_8:
    if ((accessRights & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = MCLocalizedString(@"MDM_QUERY_INFO");
  [v3 addObject:v13];

  accessRights = self->_accessRights;
  if ((accessRights & 0x20) == 0)
  {
LABEL_9:
    if ((accessRights & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v14 = MCLocalizedString(@"MDM_QUERY_INFO_NETWORK");
  [v3 addObject:v14];

  accessRights = self->_accessRights;
  if ((accessRights & 0x100) == 0)
  {
LABEL_10:
    if ((accessRights & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v15 = MCLocalizedString(@"MDM_LIST_APP");
  [v3 addObject:v15];

  accessRights = self->_accessRights;
  if ((accessRights & 0x200) == 0)
  {
LABEL_11:
    if ((accessRights & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v16 = MCLocalizedString(@"MDM_QUERY_RESTRICTIONS");
  [v3 addObject:v16];

  accessRights = self->_accessRights;
  if ((accessRights & 0x400) == 0)
  {
LABEL_12:
    if ((accessRights & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v17 = MCLocalizedString(@"MDM_QUERY_SECURITY");
  [v3 addObject:v17];

  accessRights = self->_accessRights;
  if ((accessRights & 0x800) == 0)
  {
LABEL_13:
    if ((accessRights & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  v18 = MCLocalizedString(@"MDM_APPLY_SETTINGS");
  [v3 addObject:v18];

  if ((self->_accessRights & 0x1000) != 0)
  {
LABEL_14:
    v5 = MCLocalizedString(@"MDM_APP_INSTALL");
    [v3 addObject:v5];
  }

LABEL_15:

  return v3;
}

- (id)installationWarnings
{
  if ([(MCMDMPayload *)self isUserEnrollment])
  {
    if (+[MCFeatureOverrides allowVPNInUserEnrollment])
    {
      v10 = MCLocalizedAppleInternalString(@"INSTALL_WARNING_APPLE_INTERNAL_VPN_TITLE");
      v11 = MCLocalizedAppleInternalStringByDevice(@"INSTALL_WARNING_APPLE_INTERNAL_VPN");
      v12 = [MCProfileWarning warningWithLocalizedTitle:v10 localizedBody:v11 isLongForm:0];
    }

    else
    {
      v12 = 0;
    }

    v16 = 0;
  }

  else
  {
    accessRights = self->_accessRights;
    v14 = (accessRights & 0x82) == 0;
    if ((accessRights & 8) == 0)
    {
      v14 = 1;
    }

    if ((accessRights & 0x1000) != 0)
    {
      if (v14)
      {
        if ((accessRights & 0x82) != 0)
        {
          v15 = @"INSTALL_WARNING_APP_INSPECT_INSTALL";
        }

        else if ((accessRights & 8) != 0)
        {
          v15 = @"INSTALL_WARNING_APP_INSPECT_ERASE";
        }

        else
        {
          v15 = @"INSTALL_WARNING_APP_INSPECT";
        }
      }

      else
      {
        v15 = @"INSTALL_WARNING_APP_INSPECT_INSTALL_ERASE";
      }
    }

    else if (v14)
    {
      if ((accessRights & 0x82) != 0)
      {
        v15 = @"INSTALL_WARNING_INSPECT_INSTALL";
      }

      else if ((accessRights & 8) != 0)
      {
        v15 = @"INSTALL_WARNING_INSPECT_ERASE";
      }

      else
      {
        v15 = @"INSTALL_WARNING_INSPECT";
      }
    }

    else
    {
      v15 = @"INSTALL_WARNING_INSPECT_INSTALL_ERASE";
    }

    v16 = MCLocalizedStringByDevice(v15);
    v12 = 0;
  }

  v17 = MCLocalizedFormatByDevice(@"INSTALL_WARNING_MDM_P_URL", v3, v4, v5, v6, v7, v8, v9, self->_serverURLString);
  v18 = v17;
  if (v16)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n%@", v17, v16];
  }

  else
  {
    v19 = v17;
  }

  v20 = v19;
  v21 = MCLocalizedString(@"INSTALL_WARNING_MDM_TITLE");
  v22 = [MCProfileWarning warningWithLocalizedTitle:v21 localizedBody:v20 isLongForm:1];

  v23 = [MEMORY[0x1E695DF70] arrayWithObject:v22];
  v24 = v23;
  if (v12)
  {
    [v23 addObject:v12];
  }

  return v24;
}

- (id)subtitle1Label
{
  if (self->_serverURLString)
  {
    v2 = @"MDM_URL_COLON";
  }

  else
  {
    v2 = @"MDM_URL_MISSING";
  }

  v3 = MCLocalizedString(v2);

  return v3;
}

- (id)payloadDescriptionKeyValueSections
{
  v72[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  if (self->_serverURLString)
  {
    v5 = [MCKeyValue alloc];
    serverURLString = self->_serverURLString;
    v7 = MCLocalizedString(@"MDM_SERVER_URL");
    v8 = [(MCKeyValue *)v5 initWithLocalizedString:serverURLString localizedKey:v7];

    [v4 addObject:v8];
  }

  if (self->_topic)
  {
    v9 = [MCKeyValue alloc];
    topic = self->_topic;
    v11 = MCLocalizedString(@"MDM_TOPIC");
    v12 = [(MCKeyValue *)v9 initWithLocalizedString:topic localizedKey:v11];

    [v4 addObject:v12];
  }

  pollingIntervalMinutes = self->_pollingIntervalMinutes;
  if (pollingIntervalMinutes)
  {
    v14 = MCFormattedStringForTimeInterval((60 * [(NSNumber *)pollingIntervalMinutes intValue]));
    v15 = [MCKeyValue alloc];
    v16 = MCLocalizedString(@"MDM_POLLING_INTERVAL_MINUTES");
    v17 = [(MCKeyValue *)v15 initWithLocalizedString:v14 localizedKey:v16];

    [v4 addObject:v17];
  }

  if (self->_useDevelopmentAPNSNum)
  {
    v18 = [MCKeyValue alloc];
    v19 = MCLocalizedStringForBool([(NSNumber *)self->_useDevelopmentAPNSNum BOOLValue]);
    v20 = MCLocalizedString(@"MDM_DEV_APNS");
    v21 = [(MCKeyValue *)v18 initWithLocalizedString:v19 localizedKey:v20];

    [v4 addObject:v21];
  }

  if (self->_checkInURLString)
  {
    v22 = [MCKeyValue alloc];
    checkInURLString = self->_checkInURLString;
    v24 = MCLocalizedString(@"MDM_CHECK_IN_URL");
    v25 = [(MCKeyValue *)v22 initWithLocalizedString:checkInURLString localizedKey:v24];

    [v4 addObject:v25];
  }

  if (self->_signMessageNum)
  {
    v26 = [MCKeyValue alloc];
    v27 = MCLocalizedStringForBool([(NSNumber *)self->_signMessageNum BOOLValue]);
    v28 = MCLocalizedString(@"MDM_SIGN_MESSAGE");
    v29 = [(MCKeyValue *)v26 initWithLocalizedString:v27 localizedKey:v28];

    [v4 addObject:v29];
  }

  if (self->_checkOutWhenRemovedNum)
  {
    v30 = [MCKeyValue alloc];
    v31 = MCLocalizedStringForBool([(NSNumber *)self->_checkOutWhenRemovedNum BOOLValue]);
    v32 = MCLocalizedString(@"MDM_CHECK_OUT");
    v33 = [(MCKeyValue *)v30 initWithLocalizedString:v31 localizedKey:v32];

    [v4 addObject:v33];
  }

  if (self->_requiredAppIDForMDM)
  {
    v34 = [MCKeyValue alloc];
    v35 = [(NSNumber *)self->_requiredAppIDForMDM stringValue];
    v36 = MCLocalizedString(@"MDM_REQUIRED_APP_ID");
    v37 = [(MCKeyValue *)v34 initWithLocalizedString:v35 localizedKey:v36];

    [v4 addObject:v37];
  }

  if ([v4 count])
  {
    v38 = [MCKeyValueSection sectionWithKeyValues:v4];
    [v3 addObject:v38];
  }

  if (self->_personaID)
  {
    v39 = MCLocalizedString(@"MDM_MANAGED_APPLE_ACCOUNT");
    v40 = [MCKeyValue alloc];
    v41 = [(MCMDMPayload *)self managedAppleIDName];
    v42 = [(MCKeyValue *)v40 initWithLocalizedString:v41 localizedKey:v39];

    [v4 addObject:v42];
    if ([(NSString *)self->_enrollmentID length])
    {
      v43 = [MCKeyValue alloc];
      enrollmentID = self->_enrollmentID;
      v45 = MCLocalizedString(@"MDM_ENROLLMENT_ID");
      v46 = [(MCKeyValue *)v43 initWithLocalizedString:enrollmentID localizedKey:v45];

      [v4 addObject:v46];
      v42 = v46;
    }
  }

  if (![(MCMDMPayload *)self isUserEnrollment])
  {
    v47 = [(MCMDMPayload *)self localizedAccessRightDescriptions];
    v48 = MCLocalizedString(@"MDM_ACCESS_RIGHTS");
    v49 = [MCKeyValueSection sectionWithLocalizedArray:v47 title:v48 footer:0];

    [v3 addObject:v49];
  }

  identityUUID = self->_identityUUID;
  if (identityUUID)
  {
    v72[0] = self->_identityUUID;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:1];
  }

  else
  {
    v51 = 0;
  }

  if (self->_identityPersistentID)
  {
    identityPersistentID = self->_identityPersistentID;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&identityPersistentID count:1];
    v53 = [(MCMDMPayload *)self kvsForCertUUIDs:v51 persistentRefs:v52 labelKey:@"MDM_CERTIFICATE"];

    if (!identityUUID)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v53 = [(MCMDMPayload *)self kvsForCertUUIDs:v51 persistentRefs:0 labelKey:@"MDM_CERTIFICATE"];
  if (identityUUID)
  {
LABEL_30:
  }

LABEL_31:
  if ([v53 count])
  {
    v54 = [MCKeyValueSection alloc];
    v55 = MCLocalizedString(@"MDM_CERTIFICATE");
    v56 = [(MCKeyValueSection *)v54 initWithSectionTitle:v55 footer:0 keyValues:v53];

    [v3 addObject:v56];
  }

  v57 = [(MCMDMPayload *)self kvsForCertUUIDs:self->_serverPinningUUIDs persistentRefs:self->_serverPinningPersistentRefs labelKey:@"MDM_SERVER_PINNING_CERTS"];
  v58 = [(MCMDMPayload *)self kvsForCertUUIDs:self->_checkInPinningUUIDs persistentRefs:self->_checkInPinningPersistentRefs labelKey:@"MDM_CHECKIN_PINNING_CERTS"];
  v59 = [v57 count];
  v60 = [v58 count] + v59;
  if (v60)
  {
    v61 = [MCKeyValue alloc];
    v62 = MCLocalizedStringForBool(self->_pinningRevocationCheckRequired);
    v63 = MCLocalizedString(@"MDM_PINNING_REVOCATION_CHECK_REQUIRED");
    v64 = [(MCKeyValue *)v61 initWithLocalizedString:v62 localizedKey:v63];

    v65 = [MEMORY[0x1E695DF70] arrayWithCapacity:v60 + 1];
    [v65 addObject:v64];
    [v65 addObjectsFromArray:v57];
    [v65 addObjectsFromArray:v58];
    v66 = [MCKeyValueSection alloc];
    v67 = MCLocalizedString(@"MDM_PINNING");
    v68 = [(MCKeyValueSection *)v66 initWithSectionTitle:v67 footer:0 keyValues:v65];

    [v3 addObject:v68];
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  v69 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)kvsForCertUUIDs:(id)a3 persistentRefs:(id)a4 labelKey:(id)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v42 = a5;
  v10 = [v8 count];
  v11 = [v9 count] + v10;
  if (v11)
  {
    v41 = v9;
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v40 = v8;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v48;
      v17 = 1;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v48 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v47 + 1) + 8 * i);
          v20 = [(MCPayload *)self profile];
          v21 = [v20 subjectSummaryFromCertificatePayloadWithUUID:v19];

          if (v21)
          {
            v22 = [MCKeyValue alloc];
            v23 = v22;
            if (v17)
            {
              v24 = MCLocalizedString(v42);
              v25 = [(MCKeyValue *)v23 initWithLocalizedString:v21 localizedKey:v24];
            }

            else
            {
              v25 = [(MCKeyValue *)v22 initWithLocalizedString:v21 localizedKey:&stru_1F1A7FAB0];
            }

            [v12 addObject:v25];

            v17 = 0;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v15);
    }

    else
    {
      v17 = 1;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v26 = v41;
    v27 = [v26 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v44;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v44 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v43 + 1) + 8 * j);
          v32 = [(MCPayload *)self profile];
          v33 = [v32 subjectSummaryFromCertificateWithPersistentID:v31];

          if (v33)
          {
            v34 = [MCKeyValue alloc];
            v35 = v34;
            if (v17)
            {
              v36 = MCLocalizedString(v42);
              v37 = [(MCKeyValue *)v35 initWithLocalizedString:v33 localizedKey:v36];
            }

            else
            {
              v37 = [(MCKeyValue *)v34 initWithLocalizedString:v33 localizedKey:&stru_1F1A7FAB0];
            }

            [v12 addObject:v37];

            v17 = 0;
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v28);
    }

    v8 = v40;
    v9 = v41;
  }

  else
  {
    v12 = 0;
  }

  v38 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)isUserEnrollment
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
  {
    isUserEnrollment = self->_isUserEnrollment;
    managedAppleID = self->_managedAppleID;
    enrollmentMode = self->_enrollmentMode;
    v9[0] = 67109634;
    v9[1] = isUserEnrollment;
    v10 = 2112;
    v11 = managedAppleID;
    v12 = 2112;
    v13 = enrollmentMode;
    _os_log_impl(&dword_1A795B000, v3, OS_LOG_TYPE_DEBUG, "isUserEnrollment iVar: %d, _managedAppleID: %@, _enrollmentMode: %@", v9, 0x1Cu);
  }

  result = self->_isUserEnrollment || self->_managedAppleID || [(NSString *)self->_enrollmentMode isEqualToString:*MEMORY[0x1E69AD4B0]];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)managedAppleIDName
{
  v3 = &OBJC_IVAR___MCMDMPayload__assignedManagedAppleID;
  if (![(NSString *)self->_enrollmentMode isEqualToString:*MEMORY[0x1E69AD4B0]]&& ![(NSString *)self->_enrollmentMode isEqualToString:*MEMORY[0x1E69AD4A8]])
  {
    v3 = &OBJC_IVAR___MCMDMPayload__managedAppleID;
  }

  v4 = *(&self->super.super.isa + *v3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
LABEL_8:
    v7 = v6;
    goto LABEL_9;
  }

  if (self->_personaID)
  {
    v6 = [MEMORY[0x1E69997D8] managedAppleIDNameWithPersonaID:?];
    goto LABEL_8;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

@end