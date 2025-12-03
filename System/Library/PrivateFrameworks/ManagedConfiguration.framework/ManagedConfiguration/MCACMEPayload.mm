@interface MCACMEPayload
- (MCACMEPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)subtitle1Description;
- (id)verboseDescription;
@end

@implementation MCACMEPayload

- (MCACMEPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v130 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v119.receiver = self;
  v119.super_class = MCACMEPayload;
  v10 = [(MCCertificatePayload *)&v119 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (!v10)
  {
    goto LABEL_15;
  }

  v118 = 0;
  v11 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"HardwareBound" isRequired:1 outError:&v118];
  v12 = v118;
  if (v12)
  {
    v13 = v12;
LABEL_4:

LABEL_5:
    v14 = [(MCPayload *)v10 malformedPayloadErrorWithError:v13];
    v11 = v14;
    if (error)
    {
      v15 = v14;
      *error = v11;
    }

    v16 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v17 = v16;
      v18 = objc_opt_class();
      v19 = v18;
      mCVerboseDescription = [v11 MCVerboseDescription];
      *buf = 138543618;
      v121 = v18;
      v122 = 2114;
      v123 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v17, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v10 = 0;
    goto LABEL_10;
  }

  v10->_isHardwareBound = [v11 BOOLValue];
  if ([profileCopy isStub])
  {
    v13 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v117 = 0;
  v26 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"DirectoryURL" isRequired:1 outError:&v117];
  v13 = v117;
  directoryURLString = v10->_directoryURLString;
  v10->_directoryURLString = v26;

  if (v13)
  {
    goto LABEL_4;
  }

  v28 = [MEMORY[0x1E695DFF8] URLWithString:v10->_directoryURLString];
  v29 = v28;
  if (v28 && ([v28 scheme], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "caseInsensitiveCompare:", @"https"), v30, !v31))
  {
    v32 = 0;
  }

  else
  {
    v32 = [MCPayload badFieldValueErrorWithField:@"DirectoryURL"];
  }

  v116 = v32;
  v33 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"ClientIdentifier" isRequired:1 outError:&v116];
  v13 = v116;

  clientIdentifier = v10->_clientIdentifier;
  v10->_clientIdentifier = v33;

  if (v13 || (v115 = 0, [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"KeyType" isRequired:1 outError:&v115], v35 = objc_claimAutoreleasedReturnValue(), v13 = v115, keyType = v10->_keyType, v10->_keyType = v35, keyType, v13))
  {

    goto LABEL_4;
  }

  if (![(NSString *)v10->_keyType isEqualToString:@"RSA"]&& ![(NSString *)v10->_keyType isEqualToString:@"ECSECPrimeRandom"])
  {
    v13 = [MCPayload badFieldTypeErrorWithField:@"KeyType"];
    goto LABEL_91;
  }

  v114 = 0;
  v37 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"KeySize" isRequired:1 outError:&v114];
  v38 = v114;
  if (v38)
  {
    goto LABEL_29;
  }

  integerValue = [v37 integerValue];
  if ((integerValue & 0x8000000000000000) == 0)
  {
    v84 = v37;
    v10->_keySize = integerValue;
    v113 = 0;
    v89 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"Subject" isRequired:1 outError:&v113];
    v13 = v113;
    subject = v10->_subject;
    v10->_subject = v89;

    if (v13)
    {
LABEL_89:
      v37 = v84;
      goto LABEL_90;
    }

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v41 = v10->_subject;
    v42 = [(NSArray *)v41 countByEnumeratingWithState:&v109 objects:v129 count:16];
    if (v42)
    {
      v43 = *v110;
      v76 = *v110;
      do
      {
        v75 = v42;
        v44 = 0;
        do
        {
          if (*v110 != v43)
          {
            objc_enumerationMutation(v41);
          }

          v80 = v44;
          v45 = *(*(&v109 + 1) + 8 * v44);
          v105 = 0u;
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          obj = v45;
          v46 = [obj countByEnumeratingWithState:&v105 objects:v128 count:16];
          if (v46)
          {
            v47 = *v106;
            v77 = v41;
            v73 = *v106;
            while (2)
            {
              v74 = v46;
              v48 = 0;
              do
              {
                if (*v106 != v47)
                {
                  objc_enumerationMutation(obj);
                }

                v78 = v48;
                v49 = *(*(&v105 + 1) + 8 * v48);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v13 = [MCPayload badFieldTypeErrorWithField:@"Subject"];
LABEL_63:

                  goto LABEL_89;
                }

                v103 = 0u;
                v104 = 0u;
                v101 = 0u;
                v102 = 0u;
                v85 = v49;
                v90 = [v85 countByEnumeratingWithState:&v101 objects:v127 count:16];
                if (v90)
                {
                  v87 = *v102;
                  while (2)
                  {
                    for (i = 0; i != v90; ++i)
                    {
                      if (*v102 != v87)
                      {
                        objc_enumerationMutation(v85);
                      }

                      v51 = *(*(&v101 + 1) + 8 * i);
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v51 length])
                      {
                        v13 = [MCPayload badFieldTypeErrorWithField:@"Subject"];

                        goto LABEL_63;
                      }
                    }

                    v90 = [v85 countByEnumeratingWithState:&v101 objects:v127 count:16];
                    if (v90)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v48 = v78 + 1;
                v47 = v73;
              }

              while (v78 + 1 != v74);
              v46 = [obj countByEnumeratingWithState:&v105 objects:v128 count:16];
              v41 = v77;
              if (v46)
              {
                continue;
              }

              break;
            }
          }

          v44 = v80 + 1;
          v43 = v76;
        }

        while (v80 + 1 != v75);
        v42 = [(NSArray *)v41 countByEnumeratingWithState:&v109 objects:v129 count:16];
        v43 = v76;
      }

      while (v42);
    }

    v100 = 0;
    v52 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"SubjectAltName" isRequired:0 outError:&v100];
    v13 = v100;
    if (v13)
    {
LABEL_88:

      goto LABEL_89;
    }

    v86 = v11;
    v88 = v52;
    obja = profileCopy;
    v53 = [v52 mutableCopy];
    v125[0] = @"dNSName";
    v126[0] = objc_opt_class();
    v125[1] = @"ntPrincipalName";
    v126[1] = objc_opt_class();
    v125[2] = @"rfc822Name";
    v126[2] = objc_opt_class();
    v125[3] = @"uniformResourceIdentifier";
    v126[3] = objc_opt_class();
    v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v126 forKeys:v125 count:4];
    v99 = 0;
    v55 = v53;
    v56 = [v53 MCMutableDictionaryContainingValidatedKeysAndClasses:v54 removeKeys:0 outError:&v99];
    v57 = v99;
    subjectAltName = v10->_subjectAltName;
    v91 = v10;
    v10->_subjectAltName = v56;

    v59 = v57;
    if (v57)
    {
LABEL_87:

      v13 = v59;
      profileCopy = obja;
      v11 = v86;
      v52 = v88;
      v10 = v91;
      goto LABEL_88;
    }

    v98 = 0;
    v79 = dictionaryCopy;
    v60 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"UsageFlags" isRequired:0 outError:&v98];
    v61 = v98;
    if (v61)
    {
      v59 = v61;
LABEL_86:

      dictionaryCopy = v79;
      goto LABEL_87;
    }

    v91->_usageFlags = [v60 unsignedIntValue];
    v97 = 0;
    v62 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"ExtendedKeyUsage" isRequired:0 outError:&v97];
    v63 = v97;
    extendedKeyUsage = v91->_extendedKeyUsage;
    v91->_extendedKeyUsage = v62;

    if (v63)
    {
      v59 = v63;
      goto LABEL_86;
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v65 = v91->_extendedKeyUsage;
    v66 = [(NSArray *)v65 countByEnumeratingWithState:&v93 objects:v124 count:16];
    if (v66)
    {
      v67 = v66;
      v81 = *v94;
      while (2)
      {
        for (j = 0; j != v67; ++j)
        {
          if (*v94 != v81)
          {
            objc_enumerationMutation(v65);
          }

          if (![*(*(&v93 + 1) + 8 * j) length])
          {
            v69 = [MCPayload badFieldValueErrorWithField:@"ExtendedKeyUsage"];
            goto LABEL_84;
          }
        }

        v67 = [(NSArray *)v65 countByEnumeratingWithState:&v93 objects:v124 count:16];
        if (v67)
        {
          continue;
        }

        break;
      }
    }

    v92 = 0;
    v65 = [v79 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"Attest" isRequired:0 outError:&v92];
    v69 = v92;
    if (v69)
    {
      goto LABEL_84;
    }

    v91->_attest = [(NSArray *)v65 BOOLValue];
    if (v91->_isHardwareBound)
    {
      if ([(NSString *)v91->_keyType isEqualToString:@"ECSECPrimeRandom"])
      {
        if ((v91->_keySize | 0x80) == 0x180)
        {
          goto LABEL_79;
        }

        v71 = @"KeySize";
      }

      else
      {
        v71 = @"KeyType";
      }

LABEL_106:
      v69 = [MCPayload badFieldTypeErrorWithField:v71];
LABEL_84:
      v59 = v69;
LABEL_85:

      goto LABEL_86;
    }

LABEL_79:
    if ([(NSString *)v91->_keyType isEqualToString:@"RSA"])
    {
      keySize = v91->_keySize;
      v71 = @"KeySize";
      if ((keySize & 7) != 0 || keySize - 4097 < 0xFFFFFFFFFFFFF3FFLL)
      {
        goto LABEL_106;
      }
    }

    else if ([(NSString *)v91->_keyType isEqualToString:@"ECSECPrimeRandom"])
    {
      v72 = v91->_keySize;
      v71 = @"KeySize";
      if (v72 > 383)
      {
        if (v72 != 521 && v72 != 384)
        {
          goto LABEL_106;
        }
      }

      else if (v72 != 192 && v72 != 256)
      {
        goto LABEL_106;
      }
    }

    if (!v91->_attest || v91->_isHardwareBound)
    {
      v59 = 0;
      goto LABEL_85;
    }

    v71 = @"Attest";
    goto LABEL_106;
  }

  v38 = [MCPayload badFieldValueErrorWithField:@"KeySize"];
LABEL_29:
  v13 = v38;
LABEL_90:

LABEL_91:
  if (v13)
  {
    goto LABEL_5;
  }

LABEL_11:
  if ([dictionaryCopy count])
  {
    v21 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v22 = v21;
      friendlyName = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v121 = friendlyName;
      v122 = 2114;
      v123 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v22, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_15:
  v24 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)stubDictionary
{
  v6.receiver = self;
  v6.super_class = MCACMEPayload;
  stubDictionary = [(MCCertificatePayload *)&v6 stubDictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isHardwareBound];
  [stubDictionary setObject:v4 forKey:@"HardwareBound"];

  return stubDictionary;
}

- (id)verboseDescription
{
  v6.receiver = self;
  v6.super_class = MCACMEPayload;
  verboseDescription = [(MCCertificatePayload *)&v6 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  if (self->_directoryURLString)
  {
    [v4 appendFormat:@"DirectoryURL  : %@\n", self->_directoryURLString];
  }

  if (self->_clientIdentifier)
  {
    [v4 appendFormat:@"Identifier    : %@\n", self->_clientIdentifier];
  }

  if (self->_keyType)
  {
    [v4 appendFormat:@"KeyType       : %@\n", self->_keyType];
  }

  if (self->_keySize)
  {
    [v4 appendFormat:@"KeySize       : %lu\n", self->_keySize];
  }

  if (self->_isHardwareBound)
  {
    [v4 appendFormat:@"HardwareBound : %i\n", 1];
  }

  if (self->_subject)
  {
    [v4 appendFormat:@"Subject       : %@\n", self->_subject];
  }

  if (self->_subjectAltName)
  {
    [v4 appendFormat:@"SAN           : %@\n", self->_subjectAltName];
  }

  if (self->_usageFlags)
  {
    [v4 appendFormat:@"UsageFlags    : %u\n", self->_usageFlags];
  }

  if (self->_extendedKeyUsage)
  {
    [v4 appendFormat:@"EKU           : %@\n", self->_extendedKeyUsage];
  }

  return v4;
}

- (id)subtitle1Description
{
  issuer = [(MCCertificatePayload *)self issuer];
  v4 = issuer;
  if (issuer)
  {
    v5 = issuer;
  }

  else
  {
    profile = [(MCPayload *)self profile];
    isStub = [profile isStub];

    if (isStub)
    {
      v8 = @"ISSUED_BY_MISSING";
    }

    else
    {
      v8 = @"IDENTITY_INSTALL_DESCRIPTION_UNKNOWN";
    }

    v5 = MCLocalizedString(v8);
  }

  v9 = v5;

  return v9;
}

- (id)payloadDescriptionKeyValueSections
{
  v32[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  profile = [(MCPayload *)self profile];
  isStub = [profile isStub];

  if ((isStub & 1) == 0)
  {
    if (self->_directoryURLString)
    {
      v6 = [MCKeyValue alloc];
      directoryURLString = self->_directoryURLString;
      v8 = MCLocalizedString(@"URL");
      v9 = [(MCKeyValue *)v6 initWithLocalizedString:directoryURLString localizedKey:v8];

      [v3 addObject:v9];
    }

    if (self->super.super._identifier)
    {
      v10 = [MCKeyValue alloc];
      v11 = MCLocalizedString(@"PRESENT");
      v12 = MCLocalizedString(@"CLIENT_IDENTIFIER");
      v13 = [(MCKeyValue *)v10 initWithLocalizedString:v11 localizedKey:v12];

      [v3 addObject:v13];
    }

    if (self->_keyType)
    {
      v14 = [MCKeyValue alloc];
      keyType = self->_keyType;
      v16 = MCLocalizedString(@"KEY_TYPE");
      v17 = [(MCKeyValue *)v14 initWithLocalizedString:keyType localizedKey:v16];

      [v3 addObject:v17];
    }

    v18 = MEMORY[0x1E696ADA0];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_keySize];
    v20 = [v18 localizedStringFromNumber:v19 numberStyle:0];

    v21 = [MCKeyValue alloc];
    v22 = MCLocalizedString(@"KEY_SIZE");
    v23 = [(MCKeyValue *)v21 initWithLocalizedString:v20 localizedKey:v22];

    [v3 addObject:v23];
  }

  v24 = [MCKeyValue alloc];
  v25 = MCLocalizedStringForBool(self->_isHardwareBound);
  v26 = MCLocalizedString(@"HARDWARE_BOUND");
  v27 = [(MCKeyValue *)v24 initWithLocalizedString:v25 localizedKey:v26];

  [v3 addObject:v27];
  v28 = [MCKeyValueSection sectionWithKeyValues:v3];
  v32[0] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

@end