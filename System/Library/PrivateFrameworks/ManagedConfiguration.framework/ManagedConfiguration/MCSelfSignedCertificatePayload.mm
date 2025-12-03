@interface MCSelfSignedCertificatePayload
- (MCSelfSignedCertificatePayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)persistentResourceID;
- (id)stubDictionary;
- (id)subtitle1Description;
- (id)validateExtendedKeyUsage:(id)usage;
- (id)verboseDescription;
@end

@implementation MCSelfSignedCertificatePayload

- (id)validateExtendedKeyUsage:(id)usage
{
  v32 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  usageCopy = usage;
  v4 = [usageCopy countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (!v4)
  {
    v18 = 0;
    goto LABEL_29;
  }

  v5 = v4;
  v6 = *v27;
  v7 = 0x1E695D000uLL;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v27 != v6)
    {
      objc_enumerationMutation(usageCopy);
    }

    v9 = *(*(&v26 + 1) + 8 * v8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    v11 = *(v7 + 3784);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = [MCPayload badFieldTypeErrorWithField:@"ExtendedKeyUsage"];
      goto LABEL_29;
    }

    v10 = v9;
    if (![v10 count])
    {
      goto LABEL_32;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v10;
    v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (!v12)
    {
      goto LABEL_20;
    }

    v13 = v12;
    v14 = *v23;
    v21 = v6;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v18 = [MCPayload badFieldTypeErrorWithField:@"ExtendedKeyUsage"];
LABEL_27:

          goto LABEL_28;
        }

        v17 = v16;
        if (![v17 length])
        {
          v18 = [MCPayload badFieldTypeErrorWithField:@"ExtendedKeyUsage"];

          goto LABEL_27;
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
      v6 = v21;
      v7 = 0x1E695D000;
      if (v13)
      {
        continue;
      }

      break;
    }

LABEL_20:

LABEL_21:
    if (++v8 == v5)
    {
      v5 = [usageCopy countByEnumeratingWithState:&v26 objects:v31 count:16];
      v18 = 0;
      if (!v5)
      {
        goto LABEL_29;
      }

      goto LABEL_3;
    }
  }

  v10 = v9;
  if ([v10 length])
  {
    goto LABEL_21;
  }

LABEL_32:
  v18 = [MCPayload badFieldTypeErrorWithField:@"ExtendedKeyUsage"];
LABEL_28:

LABEL_29:
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (MCSelfSignedCertificatePayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v51.receiver = self;
  v51.super_class = MCSelfSignedCertificatePayload;
  v10 = [(MCCertificatePayload *)&v51 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (v10)
  {
    v50 = 0;
    v11 = [MCProfile removeRequiredObjectInDictionary:dictionaryCopy key:@"HardwareBound" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" missingDataCode:1002 missingDataErrorString:@"ERROR_PROFILE_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v50];
    v12 = v50;
    if (v12)
    {
      v13 = v12;
LABEL_4:

      v11 = v13;
LABEL_5:
      v14 = [(MCPayload *)v10 malformedPayloadErrorWithError:v11];
      v15 = v14;
      if (error)
      {
        v16 = v14;
        *error = v15;
      }

      v17 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v18 = v17;
        v19 = objc_opt_class();
        v20 = v19;
        mCVerboseDescription = [v15 MCVerboseDescription];
        *buf = 138543618;
        v53 = v19;
        v54 = 2114;
        v55 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v18, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v10 = 0;
      goto LABEL_10;
    }

    v10->_isHardwareBound = [v11 BOOLValue];
    if ([profileCopy isStub])
    {
LABEL_10:

      goto LABEL_11;
    }

    v49 = 0;
    v24 = [MCProfile removeRequiredObjectInDictionary:dictionaryCopy key:@"KeyType" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" missingDataCode:1002 missingDataErrorString:@"ERROR_PROFILE_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v49];
    v13 = v49;
    keyType = v10->_keyType;
    v10->_keyType = v24;

    if (v13)
    {
      goto LABEL_4;
    }

    if (![(NSString *)v10->_keyType isEqualToString:@"RSA"]&& ![(NSString *)v10->_keyType isEqualToString:@"ECSECPrimeRandom"])
    {
      v27 = [MCPayload badFieldTypeErrorWithField:@"KeyType"];
      goto LABEL_29;
    }

    v48 = 0;
    v26 = [MCProfile removeRequiredObjectInDictionary:dictionaryCopy key:@"KeySize" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" missingDataCode:1002 missingDataErrorString:@"ERROR_PROFILE_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v48];
    v27 = v48;
    if (v27)
    {
LABEL_28:

LABEL_29:
      v11 = v27;
      if (!v27)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }

    v44 = v26;
    v10->_keySize = [v26 unsignedIntegerValue];
    v47 = 0;
    v28 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"KeyUsage" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v47];
    v29 = v47;
    if (v29)
    {
      goto LABEL_18;
    }

    if (v28)
    {
      unsignedIntValue = [v28 unsignedIntValue];
      v10->_keyUsage = unsignedIntValue;
      if ((unsignedIntValue & 0xFFFFFFFA) != 0)
      {
        v29 = [MCPayload badFieldTypeErrorWithField:@"KeyUsage"];
LABEL_18:
        v27 = v29;
LABEL_27:

        v26 = v44;
        goto LABEL_28;
      }
    }

    else
    {
      v10->_keyUsage = 1;
    }

    v43 = v28;
    v46 = 0;
    v31 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"ExtendedKeyUsage" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v46];
    v27 = v46;
    extendedKeyUsage = v10->_extendedKeyUsage;
    v10->_extendedKeyUsage = v31;

    if (v27)
    {
      goto LABEL_27;
    }

    v33 = [(MCSelfSignedCertificatePayload *)v10 validateExtendedKeyUsage:v10->_extendedKeyUsage];
    if (v33)
    {
      v27 = v33;
      goto LABEL_27;
    }

    v45 = 0;
    v34 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"Lifetime" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v45];
    v35 = v45;
    if (v35)
    {
      goto LABEL_49;
    }

    if (v34)
    {
      unsignedIntegerValue = [v34 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 315576000;
    }

    v10->_lifetime = unsignedIntegerValue;
    if (v10->_isHardwareBound)
    {
      if (![(NSString *)v10->_keyType isEqualToString:@"ECSECPrimeRandom"])
      {
        v38 = @"KeyType";
        goto LABEL_48;
      }

      if ((v10->_keySize | 0x80) != 0x180)
      {
LABEL_41:
        v38 = @"KeySize";
LABEL_48:
        v35 = [MCPayload badFieldTypeErrorWithField:v38];
LABEL_49:
        v27 = v35;
LABEL_50:
        v28 = v43;

        goto LABEL_27;
      }
    }

    if ([(NSString *)v10->_keyType isEqualToString:@"RSA"])
    {
      keySize = v10->_keySize;
      if ((keySize & 7) != 0 || keySize - 4097 <= 0xFFFFFFFFFFFFF3FELL)
      {
        goto LABEL_41;
      }
    }

    else if ([(NSString *)v10->_keyType isEqualToString:@"ECSECPrimeRandom"])
    {
      v39 = v10->_keySize;
      if (v39 > 383)
      {
        if (v39 == 384 || v39 == 521)
        {
          goto LABEL_54;
        }
      }

      else if (v39 == 192 || v39 == 256)
      {
        goto LABEL_54;
      }

      v35 = [MCPayload badFieldTypeErrorWithField:@"KeySize"];
      if (v35)
      {
        goto LABEL_49;
      }
    }

LABEL_54:
    if ([dictionaryCopy count])
    {
      v40 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v41 = v40;
        friendlyName = [(MCPayload *)v10 friendlyName];
        *buf = 138543618;
        v53 = friendlyName;
        v54 = 2114;
        v55 = dictionaryCopy;
        _os_log_impl(&dword_1A795B000, v41, OS_LOG_TYPE_INFO, "Payload “%{public}@” has fields that we are ignoring. They are: %{public}@", buf, 0x16u);
      }
    }

    v27 = 0;
    goto LABEL_50;
  }

LABEL_11:

  v22 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)stubDictionary
{
  v6.receiver = self;
  v6.super_class = MCSelfSignedCertificatePayload;
  stubDictionary = [(MCCertificatePayload *)&v6 stubDictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isHardwareBound];
  [stubDictionary setObject:v4 forKey:@"HardwareBound"];

  return stubDictionary;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AD60];
  v10.receiver = self;
  v10.super_class = MCSelfSignedCertificatePayload;
  verboseDescription = [(MCCertificatePayload *)&v10 verboseDescription];
  v5 = [v3 stringWithString:verboseDescription];

  if (self->_isHardwareBound)
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  [v5 appendFormat:@"Hardware bound : %@\n", v6];
  copyCertificate = [(MCCertificatePayload *)self copyCertificate];
  if (copyCertificate)
  {
    v8 = copyCertificate;
    [v5 appendFormat:@"Identity       : Present\n"];
    CFRelease(v8);
  }

  else
  {
    [v5 appendFormat:@"Identity       : Missing\n"];
  }

  return v5;
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

- (id)persistentResourceID
{
  certificatePersistentID = [(MCCertificatePayload *)self certificatePersistentID];
  mCHexString = [certificatePersistentID MCHexString];

  return mCHexString;
}

@end