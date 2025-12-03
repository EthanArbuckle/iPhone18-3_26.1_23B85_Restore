@interface MCCertificatePayload
- (BOOL)isFullyTrustedRootCert;
- (BOOL)isIdentity;
- (BOOL)isMDMClientIdentity;
- (BOOL)isRoot;
- (MCCertificatePayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (NSDate)expiry;
- (NSString)SMIMEEmailAddress;
- (__SecCertificate)copyCertificate;
- (__SecIdentity)copyIdentityFromKeychain;
- (id)certificateSubject;
- (id)issuer;
- (id)stubDictionary;
- (id)subtitle1Description;
- (id)subtitle1Label;
- (id)subtitle2Description;
- (id)subtitle2Label;
- (id)title;
- (id)verboseDescription;
@end

@implementation MCCertificatePayload

- (MCCertificatePayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v49.receiver = self;
  v49.super_class = MCCertificatePayload;
  v10 = [(MCPayload *)&v49 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (!v10 || ![profileCopy isStub])
  {
    goto LABEL_20;
  }

  v11 = [dictionaryCopy objectForKey:@"PERSISTENT_REF"];
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 count])
    {
      v12 = [v11 objectAtIndex:0];

      v11 = v12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v10->_certificatePersistentID, v11);
      [dictionaryCopy removeObjectForKey:@"PERSISTENT_REF"];
    }

    else
    {
      v20 = MEMORY[0x1E696ABC0];
      v21 = MCErrorArray(@"ERROR_PROFILE_FIELD_INVALID_P_FIELD", v13, v14, v15, v16, v17, v18, v19, @"PERSISTENT_REF");
      v22 = [v20 MCErrorWithDomain:@"MCProfileErrorDomain" code:1003 descriptionArray:v21 errorType:@"MCFatalError"];

      [dictionaryCopy removeObjectForKey:@"PERSISTENT_REF"];
      if (v22)
      {
        goto LABEL_14;
      }
    }
  }

  v23 = objc_opt_class();
  v48 = 0;
  v24 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"IsIdentity" type:v23 errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v48];
  v22 = v48;
  isIdentity = v10->_isIdentity;
  v10->_isIdentity = v24;

  if (!v22)
  {
    v47 = 0;
    v26 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"IsRoot" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v47];
    v22 = v47;
    isRoot = v10->_isRoot;
    v10->_isRoot = v26;

    if (!v22)
    {
      v46 = 0;
      v28 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"Expiry" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v46];
      v22 = v46;
      expiryInterval = v10->_expiryInterval;
      v10->_expiryInterval = v28;

      if (!v22)
      {
        v45 = 0;
        v30 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:dictionaryCopy key:@"CertSubject" errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v45];
        v22 = v45;
        certSubject = v10->_certSubject;
        v10->_certSubject = v30;

        if (!v22)
        {
          v44 = 0;
          v42 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:dictionaryCopy key:@"Issuer" errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v44];
          v22 = v44;
          certIssuer = v10->_certIssuer;
          v10->_certIssuer = v42;

          if (!v22)
          {
            goto LABEL_20;
          }

          goto LABEL_15;
        }
      }
    }
  }

LABEL_14:

LABEL_15:
  v32 = [(MCPayload *)v10 malformedPayloadErrorWithError:v22];
  v33 = v32;
  if (error)
  {
    v34 = v32;
    *error = v33;
  }

  v35 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    v36 = v35;
    v37 = objc_opt_class();
    v38 = v37;
    mCVerboseDescription = [v33 MCVerboseDescription];
    *buf = 138543618;
    v51 = v37;
    v52 = 2114;
    v53 = mCVerboseDescription;
    _os_log_impl(&dword_1A795B000, v36, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
  }

  v10 = 0;
LABEL_20:

  v40 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)stubDictionary
{
  v15.receiver = self;
  v15.super_class = MCCertificatePayload;
  stubDictionary = [(MCPayload *)&v15 stubDictionary];
  [stubDictionary MCSetObjectIfNotNil:self->_certificatePersistentID forKey:@"PERSISTENT_REF"];
  copyCertificate = [(MCCertificatePayload *)self copyCertificate];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCCertificatePayload isIdentity](self, "isIdentity")}];
  [stubDictionary setObject:v5 forKey:@"IsIdentity"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCCertificatePayload isRoot](self, "isRoot")}];
  [stubDictionary setObject:v6 forKey:@"IsRoot"];

  v7 = MEMORY[0x1E696AD98];
  expiry = [(MCCertificatePayload *)self expiry];
  [expiry timeIntervalSinceReferenceDate];
  v9 = [v7 numberWithDouble:?];
  [stubDictionary setObject:v9 forKey:@"Expiry"];

  if (copyCertificate)
  {
    v10 = SecCertificateCopySubjectSummary(copyCertificate);
    if (v10)
    {
      [stubDictionary setObject:v10 forKey:@"CertSubject"];
    }

    else
    {
      v11 = MCLocalizedString(@"CERTIFICATE_UNKNOWN_SUMMARY");
      [stubDictionary setObject:v11 forKey:@"CertSubject"];
    }

    v12 = SecCertificateCopyIssuerSummary();
    if (v12)
    {
      [stubDictionary setObject:v12 forKey:@"Issuer"];
    }

    else
    {
      v13 = MCLocalizedString(@"CERTIFICATE_UNKNOWN_ISSUER");
      [stubDictionary setObject:v13 forKey:@"Issuer"];
    }

    CFRelease(copyCertificate);
  }

  return stubDictionary;
}

- (__SecCertificate)copyCertificate
{
  certificatePersistentID = self->_certificatePersistentID;
  if (!certificatePersistentID)
  {
    return 0;
  }

  result = [MCKeychain copyCertificateWithPersistentID:certificatePersistentID useSystemKeychain:1];
  if (!result)
  {
    v5 = self->_certificatePersistentID;

    return [MCKeychain copyCertificateWithPersistentID:v5 useSystemKeychain:0];
  }

  return result;
}

- (__SecIdentity)copyIdentityFromKeychain
{
  certificatePersistentID = self->_certificatePersistentID;
  if (!certificatePersistentID)
  {
    return 0;
  }

  result = [MCKeychain copyIdentityWithPersistentID:certificatePersistentID useSystemKeychain:1];
  if (!result)
  {
    v5 = self->_certificatePersistentID;

    return [MCKeychain copyIdentityWithPersistentID:v5 useSystemKeychain:0];
  }

  return result;
}

- (BOOL)isRoot
{
  profile = [(MCPayload *)self profile];
  if ([profile isStub])
  {
    isRoot = self->_isRoot;

    if (isRoot)
    {
      v5 = self->_isRoot;

      LOBYTE(copyCertificate) = [(NSNumber *)v5 BOOLValue];
      return copyCertificate;
    }
  }

  else
  {
  }

  copyCertificate = [(MCCertificatePayload *)self copyCertificate];
  if (copyCertificate)
  {
    v7 = copyCertificate;
    IsSelfSignedCA = SecCertificateIsSelfSignedCA();
    CFRelease(v7);
    LOBYTE(copyCertificate) = IsSelfSignedCA;
  }

  return copyCertificate;
}

- (BOOL)isFullyTrustedRootCert
{
  copyCertificate = [(MCCertificatePayload *)self copyCertificate];
  if (copyCertificate)
  {
    v3 = copyCertificate;
    if (SecCertificateIsSelfSignedCA())
    {
      SecTrustStoreForDomain();
      SecTrustStoreCopyUsageConstraints();
    }

    CFRelease(v3);
  }

  return 0;
}

- (BOOL)isIdentity
{
  profile = [(MCPayload *)self profile];
  if ([profile isStub])
  {
    isIdentity = self->_isIdentity;

    if (isIdentity)
    {
      v5 = self->_isIdentity;

      LOBYTE(copyIdentityFromKeychain) = [(NSNumber *)v5 BOOLValue];
      return copyIdentityFromKeychain;
    }
  }

  else
  {
  }

  copyIdentityFromKeychain = [(MCCertificatePayload *)self copyIdentityFromKeychain];
  if (copyIdentityFromKeychain)
  {
    CFRelease(copyIdentityFromKeychain);
    LOBYTE(copyIdentityFromKeychain) = 1;
  }

  return copyIdentityFromKeychain;
}

- (BOOL)isMDMClientIdentity
{
  v20 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  profile = [(MCPayload *)self profile];
  payloads = [profile payloads];

  v5 = [payloads countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(payloads);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          identityUUID = [v9 identityUUID];
          uUID = [(MCPayload *)self UUID];
          v10 = [identityUUID isEqualToString:uUID];

          goto LABEL_11;
        }
      }

      v6 = [payloads countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

- (NSString)SMIMEEmailAddress
{
  copyCertificate = [(MCCertificatePayload *)self copyCertificate];
  if (!copyCertificate)
  {
    v9 = 0;
    goto LABEL_16;
  }

  v3 = copyCertificate;
  v4 = CFDataCreate(0, SMIMEEmailAddress_emailProtectionOID, 8);
  v5 = SecCertificateCopyExtendedKeyUsage();
  if (v5)
  {
    v6 = v5;
    v12.length = CFArrayGetCount(v5);
    v12.location = 0;
    if (CFArrayContainsValue(v6, v12, v4) && (v7 = SecCertificateCopyRFC822Names()) != 0)
    {
      v8 = v7;
      if (CFArrayGetCount(v7) == 1)
      {
        v9 = CFArrayGetValueAtIndex(v8, 0);
      }

      else
      {
        v9 = 0;
      }

      CFRelease(v8);
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v6);
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = 0;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  CFRelease(v4);
LABEL_15:
  CFRelease(v3);
LABEL_16:

  return v9;
}

- (id)title
{
  if (-[MCCertificatePayload isIdentity](self, "isIdentity") && (-[MCPayload profile](self, "profile"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isStub], v3, (v4 & 1) == 0))
  {
    v7.receiver = self;
    v7.super_class = MCCertificatePayload;
    title = [(MCPayload *)&v7 title];
  }

  else
  {
    title = [(MCCertificatePayload *)self certificateSubject];
  }

  return title;
}

- (id)subtitle1Label
{
  if (-[MCCertificatePayload isIdentity](self, "isIdentity") && (-[MCPayload profile](self, "profile"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isStub], v3, !v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = MCLocalizedString(@"ISSUED_BY_COLON");
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
      v8 = @"IDENTITY_CERTIFICATE_INSTALL_DESCRIPTION";
    }

    v5 = MCLocalizedString(v8);
  }

  v9 = v5;

  return v9;
}

- (id)subtitle2Label
{
  if (-[MCCertificatePayload isIdentity](self, "isIdentity") && (-[MCPayload profile](self, "profile"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isStub], v3, !v4))
  {
    v10 = 0;
  }

  else
  {
    subtitle2Description = [(MCCertificatePayload *)self subtitle2Description];

    if (subtitle2Description)
    {
      expiry = [(MCCertificatePayload *)self expiry];
      if (expiry)
      {
        date = [MEMORY[0x1E695DF00] date];
        v8 = [date earlierDate:expiry];

        if (v8 == expiry)
        {
          v9 = @"EXPIRED_COLON";
        }

        else
        {
          v9 = @"EXPIRES_COLON";
        }

        v10 = MCLocalizedString(v9);
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = MCLocalizedString(@"EXPIRATION_DATE_MISSING");
    }
  }

  return v10;
}

- (id)subtitle2Description
{
  if (-[MCCertificatePayload isIdentity](self, "isIdentity") && (-[MCPayload profile](self, "profile"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isStub], v3, !v4))
  {
    v8 = 0;
  }

  else
  {
    expiry = [(MCCertificatePayload *)self expiry];
    if (expiry)
    {
      v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      [v6 setLocale:currentLocale];

      [v6 setDateStyle:3];
      [v6 setTimeStyle:0];
      v8 = [v6 stringFromDate:expiry];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AD60];
  v19.receiver = self;
  v19.super_class = MCCertificatePayload;
  verboseDescription = [(MCPayload *)&v19 verboseDescription];
  v5 = [v3 stringWithString:verboseDescription];

  installedOnDeviceID = [(MCCertificatePayload *)self installedOnDeviceID];

  if (installedOnDeviceID)
  {
    installedOnDeviceID2 = [(MCCertificatePayload *)self installedOnDeviceID];
    [v5 appendFormat:@"DeviceID    : %@\n", installedOnDeviceID2];
  }

  certificatePersistentID = [(MCCertificatePayload *)self certificatePersistentID];
  mCHexString = [certificatePersistentID MCHexString];

  if (mCHexString)
  {
    certificatePersistentID2 = [(MCCertificatePayload *)self certificatePersistentID];
    mCHexString2 = [certificatePersistentID2 MCHexString];
    [v5 appendFormat:@"Persist ID  : %@\n", mCHexString2];
  }

  v12 = MCStringForBool([(MCCertificatePayload *)self isIdentity]);
  [v5 appendFormat:@"Is identity : %@\n", v12];

  copyIdentityFromKeychain = [(MCCertificatePayload *)self copyIdentityFromKeychain];
  if (copyIdentityFromKeychain)
  {
    v14 = copyIdentityFromKeychain;
    [v5 appendFormat:@"Private key : Present\n"];
    CFRelease(v14);
  }

  v15 = MCStringForBool([(MCCertificatePayload *)self isRoot]);
  [v5 appendFormat:@"Is root cert: %@\n", v15];

  expiry = [(MCCertificatePayload *)self expiry];

  if (expiry)
  {
    expiry2 = [(MCCertificatePayload *)self expiry];
    [v5 appendFormat:@"Expires     : %@\n", expiry2];
  }

  return v5;
}

- (NSDate)expiry
{
  profile = [(MCPayload *)self profile];
  if ([profile isStub])
  {
    expiryInterval = self->_expiryInterval;

    if (expiryInterval)
    {
      v5 = MEMORY[0x1E695DF00];
      [(NSNumber *)self->_expiryInterval doubleValue];
      v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
      goto LABEL_8;
    }
  }

  else
  {
  }

  copyCertificate = [(MCCertificatePayload *)self copyCertificate];
  if (copyCertificate)
  {
    v8 = copyCertificate;
    SecCertificateNotValidAfter();
    v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    CFRelease(v8);
  }

  else
  {
    v6 = 0;
  }

LABEL_8:

  return v6;
}

- (id)certificateSubject
{
  profile = [(MCPayload *)self profile];
  if ([profile isStub])
  {
    certSubject = self->_certSubject;

    if (certSubject)
    {
      v5 = self->_certSubject;
      goto LABEL_8;
    }
  }

  else
  {
  }

  copyCertificate = [(MCCertificatePayload *)self copyCertificate];
  if (copyCertificate)
  {
    v7 = copyCertificate;
    v5 = SecCertificateCopySubjectSummary(copyCertificate);
    CFRelease(v7);
  }

  else
  {
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (id)issuer
{
  profile = [(MCPayload *)self profile];
  if ([profile isStub])
  {
    certIssuer = self->_certIssuer;

    if (certIssuer)
    {
      v5 = self->_certIssuer;
      goto LABEL_8;
    }
  }

  else
  {
  }

  copyCertificate = [(MCCertificatePayload *)self copyCertificate];
  if (copyCertificate)
  {
    v7 = copyCertificate;
    v5 = SecCertificateCopyIssuerSummary();
    CFRelease(v7);
  }

  else
  {
    v5 = 0;
  }

LABEL_8:

  return v5;
}

@end