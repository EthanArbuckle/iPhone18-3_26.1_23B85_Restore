@interface MCProfile
+ (BOOL)checkString:(id)a3 isOneOfStrings:(id)a4 key:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7 errorString:(id)a8 outError:(id *)a9;
+ (id)_malformedProfileError;
+ (id)_unsupportedEnrollmentServiceProfileError;
+ (id)_unsupportedProfileTypeError;
+ (id)badFieldTypeErrorWithField:(id)a3;
+ (id)dataFromCMSEncodedData:(id)a3 outSignerCertificates:(id *)a4;
+ (id)missingFieldErrorWithField:(id)a3;
+ (id)profileDictionaryFromProfileData:(id)a3 outSignerCerts:(id *)a4 outError:(id *)a5;
+ (id)removeOptionalNonZeroLengthStringInDictionary:(id)a3 key:(id)a4 errorDomain:(id)a5 invalidDataCode:(int64_t)a6 invalidDataErrorString:(id)a7 outError:(id *)a8;
+ (id)removeOptionalObjectInDictionary:(id)a3 key:(id)a4 type:(Class)a5 errorDomain:(id)a6 invalidDataCode:(int64_t)a7 invalidDataErrorString:(id)a8 outError:(id *)a9;
+ (id)removeRequiredNonZeroLengthStringInDictionary:(id)a3 key:(id)a4 errorDomain:(id)a5 missingDataCode:(int64_t)a6 missingDataErrorString:(id)a7 invalidDataCode:(int64_t)a8 invalidDataErrorString:(id)a9 outError:(id *)a10;
+ (id)removeRequiredObjectInDictionary:(id)a3 key:(id)a4 type:(Class)a5 errorDomain:(id)a6 missingDataCode:(int64_t)a7 missingDataErrorString:(id)a8 invalidDataCode:(int64_t)a9 invalidDataErrorString:(id)a10 outError:(id *)a11;
+ (id)signerSummaryOfCertificate:(__SecCertificate *)a3;
+ (id)stringForDeviceType:(unint64_t)a3;
+ (int)evaluateTrust:(__SecTrust *)a3;
+ (int)evaluateTrustOfCertificateChain:(id)a3 signatureVersion:(id)a4 outIsAllowedToInstallUnsupportedPayloads:(BOOL *)a5 outIsAllowedToWriteDefaults:(BOOL *)a6 outIsAllowedToInstallSupervisedRestrictionsOnUnsupervisedDevices:(BOOL *)a7;
+ (unint64_t)thisDeviceType;
- (BOOL)containsAnyPayloadOfClasses:(id)a3;
- (BOOL)containsOnlyPayloadsOfClasses:(id)a3;
- (BOOL)containsPayloadOfClass:(Class)a3;
- (BOOL)doesSigningAllowReplacementWithProfile:(id)a3;
- (BOOL)doesSigningAllowReplacementWithProfile:(id)a3 useOriginalCheck:(BOOL)a4;
- (BOOL)isManagedByMDM;
- (BOOL)isProfileUIInstallationEffectivelyAllowed;
- (BOOL)isSigned;
- (BOOL)isSupervisionProfile;
- (BOOL)isUserEnrollmentProfile;
- (BOOL)mayInstallWithOptions:(id)a3 hasInteractionClient:(BOOL)a4 outError:(id *)a5;
- (BOOL)mustInstallNonInteractively;
- (BOOL)shouldHaveFullSSLTrust;
- (BOOL)writeStubToDirectory:(id)a3;
- (BOOL)writeStubToPath:(id)a3;
- (MCProfile)initWithDictionary:(id)a3 signerCerts:(id)a4 allowEmptyPayload:(BOOL)a5 outError:(id *)a6;
- (NSArray)payloadsContentInfo;
- (NSArray)signerCertificates;
- (NSArray)signerCertificatesData;
- (NSDate)expiryDate;
- (NSDate)unmodifiedExpiryDate;
- (NSDictionary)localizedManagedProfileConsentTexts;
- (NSString)friendlyName;
- (NSString)managingProfileIdentifier;
- (NSString)profileDataFileName;
- (NSString)profileIDHashFileName;
- (NSString)signerSummary;
- (NSString)stubFileName;
- (__SecCertificate)signerCertificate;
- (id)description;
- (id)hasRequiredAppIDForMDM;
- (id)installationWarningsIncludeUnsignedProfileWarning:(BOOL)a3;
- (id)loggingID;
- (id)malformedProfileErrorWithError:(id)a3;
- (id)payloadsOfKindOfClass:(Class)a3;
- (id)payloadsWithClass:(Class)a3;
- (id)restrictionsWithHeuristicsAppliedOutError:(id *)a3;
- (id)serializedDictionary;
- (id)signatureVersion;
- (id)stubDictionary;
- (id)verboseDescription;
- (int)trustLevel;
- (int64_t)installType;
- (unint64_t)countOfPayloadsOfClass:(Class)a3;
- (void)evaluateSignerTrustAsynchronouslyWithCompletion:(id)a3;
- (void)setRemovalPasscode:(id)a3;
- (void)setSignerCertificates:(id)a3;
@end

@implementation MCProfile

- (BOOL)isUserEnrollmentProfile
{
  v2 = [(MCProfile *)self payloadsWithClass:objc_opt_class()];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [v3 isUserEnrollment];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setRemovalPasscode:(id)a3
{
  v5 = a3;
  removalPasscode = self->_removalPasscode;
  p_removalPasscode = &self->_removalPasscode;
  if (removalPasscode != v5)
  {
    v8 = v5;
    objc_storeStrong(p_removalPasscode, a3);
    v5 = v8;
  }
}

- (id)hasRequiredAppIDForMDM
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(MCProfile *)self payloads];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
          v8 = [v7 requiredAppIDForMDM];

          if (v8)
          {
            v3 = [v7 requiredAppIDForMDM];

            goto LABEL_13;
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (int)trustLevel
{
  trustEvaluationQueue = self->_trustEvaluationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__MCProfile_trustLevel__block_invoke;
  block[3] = &unk_1E77D0180;
  block[4] = self;
  dispatch_sync(trustEvaluationQueue, block);
  return self->_trustQueueTrustLevel;
}

void __23__MCProfile_trustLevel__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[12] & 1) == 0)
  {
    v3 = [v2 signerCertificates];
    v4 = [*(a1 + 32) signatureVersion];
    *(*(a1 + 32) + 8) = [MCProfile evaluateTrustOfCertificateChain:v3 signatureVersion:v4];

    *(*(a1 + 32) + 12) = 1;
  }
}

- (__SecCertificate)signerCertificate
{
  v2 = [(MCProfile *)self signerCertificates];
  if ([v2 count])
  {
    v3 = [v2 firstObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)signerCertificates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__14;
  v10 = __Block_byref_object_dispose__14;
  v11 = 0;
  signerEvaluationQueue = self->_signerEvaluationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__MCProfile_signerCertificates__block_invoke;
  v5[3] = &unk_1E77D0260;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(signerEvaluationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)signerCertificatesData
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__14;
  v23 = __Block_byref_object_dispose__14;
  v24 = 0;
  signerEvaluationQueue = self->_signerEvaluationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MCProfile_signerCertificatesData__block_invoke;
  block[3] = &unk_1E77D0260;
  block[4] = self;
  block[5] = &v19;
  dispatch_sync(signerEvaluationQueue, block);
  v3 = [v20[5] count];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v20[5];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v25 count:16];
    if (v6)
    {
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          Length = SecCertificateGetLength();
          v11 = [MEMORY[0x1E695DEF0] dataWithBytes:SecCertificateGetBytePtr() length:{Length, v14}];
          [v4 addObject:v11];
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v25 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v19, 8);

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t __35__MCProfile_signerCertificatesData__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSString)signerSummary
{
  v2 = [(MCProfile *)self signerCertificates];
  if ([v2 count])
  {
    v3 = +[MCProfile signerSummaryOfCertificate:](MCProfile, "signerSummaryOfCertificate:", [v2 firstObject]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSignerCertificates:(id)a3
{
  v4 = a3;
  signerEvaluationQueue = self->_signerEvaluationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__MCProfile_setSignerCertificates___block_invoke;
  v7[3] = &unk_1E77D02D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(signerEvaluationQueue, v7);
}

- (id)installationWarningsIncludeUnsignedProfileWarning:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  if (v3 && [(MCProfile *)self trustLevel]!= 2)
  {
    if ([(MCProfile *)self isSigned])
    {
      v6 = MCLocalizedString(@"INSTALL_WARNING_NOT_VERIFIED_TITLE");
      v7 = [(MCProfile *)self friendlyName];
      v15 = MCLocalizedFormat(@"INSTALL_WARNING_NOT_VERIFIED_P_TITLE", v8, v9, v10, v11, v12, v13, v14, v7);
      v16 = [MCProfileWarning warningWithLocalizedTitle:v6 localizedBody:v15 isLongForm:0];
      [v5 addObject:v16];
    }

    else
    {
      v6 = MCLocalizedString(@"INSTALL_WARNING_NOT_SIGNED_TITLE");
      v7 = MCLocalizedString(@"INSTALL_WARNING_NOT_SIGNED");
      v15 = [MCProfileWarning warningWithLocalizedTitle:v6 localizedBody:v7 isLongForm:0];
      [v5 addObject:v15];
    }
  }

  if ([(MCProfile *)self isLocked])
  {
    v17 = [(MCProfile *)self removalPasscode];
    v18 = [v17 length];

    v19 = MCLocalizedString(@"INSTALL_WARNING_NOT_REMOVABLE_TITLE");
    if (v18)
    {
      v20 = @"INSTALL_WARNING_NOT_REMOVABLE_AUTH";
    }

    else
    {
      v20 = @"INSTALL_WARNING_NOT_REMOVABLE";
    }

    v21 = MCLocalizedString(v20);
    v22 = [MCProfileWarning warningWithLocalizedTitle:v19 localizedBody:v21 isLongForm:0];
    [v5 addObject:v22];
  }

  return v5;
}

- (BOOL)mustInstallNonInteractively
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_mustInstallNonInteractively)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [(MCProfile *)self payloads];
    v2 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v2)
    {
      v4 = *v9;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v9 != v4)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v8 + 1) + 8 * i) mustInstallNonInteractively])
          {
            LOBYTE(v2) = 1;
            goto LABEL_13;
          }
        }

        v2 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v2)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

- (NSArray)payloadsContentInfo
{
  v32 = *MEMORY[0x1E69E9840];
  if ([(MCProfile *)self isEncrypted])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(MCProfile *)self payloads];
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v28;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v28 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v27 + 1) + 8 * i);
          v10 = objc_opt_new();
          v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "version")}];
          [v10 setObject:v11 forKeyedSubscript:@"PayloadVersion"];

          v12 = [v9 type];

          if (v12)
          {
            v13 = [v9 type];
            [v10 setObject:v13 forKeyedSubscript:@"PayloadType"];
          }

          v14 = [v9 identifier];

          if (v14)
          {
            v15 = [v9 identifier];
            [v10 setObject:v15 forKeyedSubscript:@"PayloadIdentifier"];
          }

          v16 = [v9 UUID];

          if (v16)
          {
            v17 = [v9 UUID];
            [v10 setObject:v17 forKeyedSubscript:@"PayloadUUID"];
          }

          v18 = [v9 displayName];

          if (v18)
          {
            v19 = [v9 displayName];
            [v10 setObject:v19 forKeyedSubscript:@"PayloadDisplayName"];
          }

          v20 = [v9 payloadDescription];

          if (v20)
          {
            v21 = [v9 payloadDescription];
            [v10 setObject:v21 forKeyedSubscript:@"PayloadDescription"];
          }

          v22 = [v9 organization];

          if (v22)
          {
            v23 = [v9 organization];
            [v10 setObject:v23 forKeyedSubscript:@"PayloadOrganization"];
          }

          [v3 addObject:v10];
        }

        v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v6);
    }
  }

  v24 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isSigned
{
  v2 = [(MCProfile *)self signerCertificates];
  v3 = [v2 count] != 0;

  return v3;
}

- (int64_t)installType
{
  v2 = [(MCProfile *)self installOptions];
  v3 = [v2 objectForKey:@"installationType"];
  v4 = [v3 intValue];

  return v4;
}

- (NSString)friendlyName
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(MCProfile *)self displayName];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(MCProfile *)self displayName];
  }

  else
  {
    v6 = [(MCProfile *)self identifier];
    v7 = [v6 length];

    if (v7)
    {
      v5 = [(MCProfile *)self identifier];
    }

    else
    {
      v8 = [(MCProfile *)self UUID];
      v9 = [v8 length];

      if (v9)
      {
        v5 = [(MCProfile *)self UUID];
      }

      else
      {
        v10 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
        {
          v11 = v10;
          v15 = 138543618;
          v16 = objc_opt_class();
          v17 = 2048;
          v18 = self;
          v12 = v16;
          _os_log_impl(&dword_1A795B000, v11, OS_LOG_TYPE_ERROR, "Profile %{public}@ %p has no friendly name.", &v15, 0x16u);
        }

        v5 = @"Profile";
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"Profile %@ %p, version %d:\n", objc_opt_class(), self, self->_version];
  if ([(NSString *)self->_displayName length])
  {
    [v3 appendFormat:@"Display Name: “%@”\n", self->_displayName];
  }

  if ([(NSString *)self->_profileDescription length])
  {
    [v3 appendFormat:@"Description : “%@”\n", self->_profileDescription];
  }

  if ([(NSString *)self->_identifier length])
  {
    [v3 appendFormat:@"Identifier  : %@\n", self->_identifier];
  }

  if ([(NSString *)self->_UUID length])
  {
    [v3 appendFormat:@"UUID        : %@\n", self->_UUID];
  }

  if ([(NSString *)self->_organization length])
  {
    [v3 appendFormat:@"Organization: %@\n", self->_organization];
  }

  if (self->_installDate)
  {
    [v3 appendFormat:@"Installed   : %@\n", self->_installDate];
  }

  if (self->_installOptions)
  {
    [v3 appendFormat:@"Install opts: %@\n", self->_installOptions];
  }

  v4 = MCStringForBool(self->_isStub);
  [v3 appendFormat:@"Is Stub     : %@\n", v4];

  v5 = MCStringForBool(self->_isLocked);
  [v3 appendFormat:@"Locked      : %@\n", v5];

  if (self->_removalPasscode)
  {
    [v3 appendFormat:@"Removal passcode present\n"];
  }

  v6 = MCStringForBool(self->_encrypted);
  [v3 appendFormat:@"Encrypted   : %@\n", v6];

  [v3 appendFormat:@"Trusted     : %d\n", -[MCProfile trustLevel](self, "trustLevel")];
  v7 = MCStringForBool([(MCProfile *)self isSigned]);
  [v3 appendFormat:@"Signed      : %@\n", v7];

  v8 = [(MCProfile *)self expiryDate];
  v9 = v8;
  if (v8)
  {
    [v3 appendFormat:@"Expires     : %@\n", v8];
  }

  if ([(MCProfile *)self isManagedByProfileService])
  {
    [v3 appendFormat:@"Profile svc : Yes\n"];
  }

  if (self->_removalDate)
  {
    [v3 appendFormat:@"Remove after: %@\n", self->_removalDate];
  }

  if (self->_localizedConsentText)
  {
    [v3 appendFormat:@"Consent text: %@\n", self->_localizedConsentText];
  }

  [v3 appendFormat:@"Device Type : %lu\n", self->_targetDeviceType];
  if ([(MCProfile *)self mustInstallNonInteractively])
  {
    [v3 appendString:@"Must be installed non-interactively.\n"];
  }

  if (self->_needsReboot)
  {
    [v3 appendFormat:@"Needs reboot\n"];
  }

  return v3;
}

- (id)verboseDescription
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(MCProfile *)self description];
  v4 = [v3 mutableCopy];

  v5 = [(MCProfile *)self signerCertificates];
  v6 = [v5 count];

  if (v6)
  {
    [v4 appendFormat:@"Signers     : "];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(MCProfile *)self signerCertificates];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      v11 = 1;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          v15 = [MCProfile signerSummaryOfCertificate:v13];
          if ((v11 & 1) == 0)
          {
            [v4 appendFormat:@"              "];
          }

          [v4 appendFormat:@"%@\n", v15];

          objc_autoreleasePoolPop(v14);
          v11 = 0;
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v11 = 0;
      }

      while (v9);
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)serializedDictionary
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 setObject:v5 forKeyedSubscript:@"Class"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_version];
  [v3 setObject:v6 forKeyedSubscript:@"Version"];

  if ([(NSString *)self->_displayName length])
  {
    [v3 setObject:self->_displayName forKeyedSubscript:@"Display Name"];
  }

  if ([(NSString *)self->_profileDescription length])
  {
    [v3 setObject:self->_profileDescription forKeyedSubscript:@"Description"];
  }

  if ([(NSString *)self->_identifier length])
  {
    [v3 setObject:self->_identifier forKeyedSubscript:@"Identifier"];
  }

  if ([(NSString *)self->_UUID length])
  {
    [v3 setObject:self->_UUID forKeyedSubscript:@"UUID"];
  }

  if ([(NSString *)self->_organization length])
  {
    [v3 setObject:self->_organization forKeyedSubscript:@"Organization"];
  }

  installDate = self->_installDate;
  if (installDate)
  {
    v8 = [(NSDate *)installDate description];
    [v3 setObject:v8 forKeyedSubscript:@"Install Date"];
  }

  installOptions = self->_installOptions;
  if (installOptions)
  {
    [v3 setObject:installOptions forKeyedSubscript:@"Install Options"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isStub];
  [v3 setObject:v10 forKeyedSubscript:@"Is Stub"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLocked];
  [v3 setObject:v11 forKeyedSubscript:@"Is Locked"];

  if (self->_removalPasscode)
  {
    [v3 setObject:&unk_1F1AA5890 forKeyedSubscript:@"Has Removal Passcode"];
  }

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_encrypted];
  [v3 setObject:v12 forKeyedSubscript:@"Encrypted"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MCProfile trustLevel](self, "trustLevel")}];
  [v3 setObject:v13 forKeyedSubscript:@"Trusted"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCProfile isSigned](self, "isSigned")}];
  [v3 setObject:v14 forKeyedSubscript:@"Signed"];

  v15 = [(MCProfile *)self signerCertificates];
  v16 = [v15 count];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x1E695DF70]);
    v18 = [(MCProfile *)self signerCertificates];
    v19 = [v17 initWithCapacity:{objc_msgSend(v18, "count")}];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v20 = [(MCProfile *)self signerCertificates];
    v21 = [v20 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v38;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v37 + 1) + 8 * i);
          v26 = objc_autoreleasePoolPush();
          v27 = [MCProfile signerSummaryOfCertificate:v25];
          [v19 addObject:v27];

          objc_autoreleasePoolPop(v26);
        }

        v22 = [v20 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKeyedSubscript:@"Signers"];
  }

  v28 = [(MCProfile *)self expiryDate];
  v29 = v28;
  if (v28)
  {
    v30 = [v28 description];
    [v3 setObject:v30 forKeyedSubscript:@"Expiry"];
  }

  if ([(MCProfile *)self isManagedByProfileService])
  {
    [v3 setObject:&unk_1F1AA5890 forKeyedSubscript:@"Profile Service"];
  }

  removalDate = self->_removalDate;
  if (removalDate)
  {
    v32 = [(NSDate *)removalDate description];
    [v3 setObject:v32 forKeyedSubscript:@"Removal Date"];
  }

  localizedConsentText = self->_localizedConsentText;
  if (localizedConsentText)
  {
    [v3 setObject:localizedConsentText forKeyedSubscript:@"Consent Text"];
  }

  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_targetDeviceType];
  [v3 setObject:v34 forKeyedSubscript:@"Device Type"];

  if ([(MCProfile *)self mustInstallNonInteractively])
  {
    [v3 setObject:&unk_1F1AA5890 forKeyedSubscript:@"Must Install Non-Interactively"];
  }

  if (self->_needsReboot)
  {
    [v3 setObject:&unk_1F1AA5890 forKeyedSubscript:@"Needs Reboot"];
  }

  v35 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSDictionary)localizedManagedProfileConsentTexts
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (self->_localizedConsentText)
  {
    v3 = [(MCProfile *)self friendlyName];
    localizedConsentText = self->_localizedConsentText;
    v8 = v3;
    v9[0] = localizedConsentText;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (NSDate)expiryDate
{
  v3 = [(MCProfile *)self earliestCertificateExpiryDate];
  if (v3 && (v4 = v3, [MEMORY[0x1E695DF00] dateWithTimeInterval:v3 sinceDate:-1209600.0], v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    if (self->_expiryDate)
    {
      v6 = [(NSDate *)v5 compare:?];
      expiryDate = v5;
      if (v6 != -1)
      {
        expiryDate = self->_expiryDate;
      }

      v8 = expiryDate;

      v5 = v8;
    }
  }

  else
  {
    v5 = self->_expiryDate;
  }

  return v5;
}

- (NSDate)unmodifiedExpiryDate
{
  v3 = [(MCProfile *)self earliestCertificateExpiryDate];
  v4 = v3;
  if (v3)
  {
    expiryDate = v3;
    if (self->_expiryDate)
    {
      v6 = [(NSDate *)v3 compare:?];
      expiryDate = v4;
      if (v6 != -1)
      {
        expiryDate = self->_expiryDate;
      }
    }
  }

  else
  {
    expiryDate = self->_expiryDate;
  }

  v7 = expiryDate;

  return v7;
}

- (void)evaluateSignerTrustAsynchronouslyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__MCProfile_evaluateSignerTrustAsynchronouslyWithCompletion___block_invoke;
  v7[3] = &unk_1E77D2E88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __61__MCProfile_evaluateSignerTrustAsynchronouslyWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) evaluateSignerTrust];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (BOOL)doesSigningAllowReplacementWithProfile:(id)a3
{
  keyExistsAndHasValidFormat = 0;
  v4 = a3;
  if (CFPreferencesGetAppBooleanValue(@"MCOriginalSignerCheck", @"com.apple.profiled", &keyExistsAndHasValidFormat))
  {
    v5 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  v7 = [(MCProfile *)self doesSigningAllowReplacementWithProfile:v4 useOriginalCheck:v6];

  return v7;
}

- (BOOL)doesSigningAllowReplacementWithProfile:(id)a3 useOriginalCheck:(BOOL)a4
{
  v4 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MCProfile *)self signerCertificate];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 signerCertificate];
    if (v9)
    {
      if (v4 && (-[MCProfile installOptions](self, "installOptions"), v10 = objc_claimAutoreleasedReturnValue(), [v10 objectForKeyedSubscript:@"signatureVersion"], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
      {
        [(MCProfile *)self signerCertificates];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v14 = v23 = 0u;
        v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v21;
          while (2)
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v21 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v20 + 1) + 8 * i);
              if (v19 && CFEqual(v9, v19))
              {
                LOBYTE(v9) = 1;
                goto LABEL_19;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        LOBYTE(v9) = 0;
LABEL_19:
      }

      else
      {
        LOBYTE(v9) = CFEqual(v9, v8) != 0;
      }
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)isProfileUIInstallationEffectivelyAllowed
{
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveRestrictedBoolForSetting:@"allowUIConfigurationProfileInstallation"];

  return v3 != 2;
}

- (BOOL)mayInstallWithOptions:(id)a3 hasInteractionClient:(BOOL)a4 outError:(id *)a5
{
  v6 = a4;
  v67 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (v6 && ([(MCProfile *)self mustInstallNonInteractively]|| ![(MCProfile *)self isProfileUIInstallationEffectivelyAllowed]))
  {
    v37 = MEMORY[0x1E696ABC0];
    v38 = MCErrorArray(@"ERROR_PROFILE_NO_INTERACTIVE_INSTALLATION", v9, v10, v11, v12, v13, v14, v15, 0);
    v39 = v37;
    v40 = 4020;
    goto LABEL_28;
  }

  v16 = [v8 objectForKeyedSubscript:@"isCloudProfile"];

  if (!v16)
  {
    v36 = 0;
    goto LABEL_35;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v41 = MEMORY[0x1E696ABC0];
    v38 = MCErrorArray(@"ERROR_PROFILE_MUST_BE_CONFIGURATION", v17, v18, v19, v20, v21, v22, v23, 0);
    v39 = v41;
    v40 = 4011;
LABEL_28:
    v36 = [v39 MCErrorWithDomain:@"MCInstallationErrorDomain" code:v40 descriptionArray:v38 errorType:@"MCFatalError"];

    if (!a5)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (mayInstallWithOptions_hasInteractionClient_outError__onceToken != -1)
  {
    [MCProfile mayInstallWithOptions:hasInteractionClient:outError:];
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v24 = [(MCProfile *)self payloads];
  v25 = [v24 countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v62;
    v55 = a5;
    v56 = v8;
    while (1)
    {
      v28 = 0;
LABEL_11:
      if (*v62 != v27)
      {
        objc_enumerationMutation(v24);
      }

      v29 = *(*(&v61 + 1) + 8 * v28);
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v30 = mayInstallWithOptions_hasInteractionClient_outError__acceptablePayloadClasses;
      v31 = [v30 countByEnumeratingWithState:&v57 objects:v65 count:16];
      if (!v31)
      {
        break;
      }

      v32 = v31;
      v33 = *v58;
LABEL_15:
      v34 = 0;
      while (1)
      {
        if (*v58 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v57 + 1) + 8 * v34);
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v32 == ++v34)
        {
          v32 = [v30 countByEnumeratingWithState:&v57 objects:v65 count:16];
          if (v32)
          {
            goto LABEL_15;
          }

          goto LABEL_30;
        }
      }

      if (++v28 != v26)
      {
        goto LABEL_11;
      }

      v26 = [v24 countByEnumeratingWithState:&v61 objects:v66 count:16];
      v36 = 0;
      a5 = v55;
      v8 = v56;
      if (!v26)
      {
        goto LABEL_32;
      }
    }

LABEL_30:

    v42 = MEMORY[0x1E696ABC0];
    v43 = [v29 type];
    v51 = MCErrorArray(@"ERROR_UNNACEPTABLE_PAYLOAD_P_TYPE", v44, v45, v46, v47, v48, v49, v50, v43);
    v36 = [v42 MCErrorWithDomain:@"MCInstallationErrorDomain" code:4022 descriptionArray:v51 errorType:@"MCFatalError"];

    a5 = v55;
    v8 = v56;
  }

  else
  {
    v36 = 0;
  }

LABEL_32:

  if (a5)
  {
LABEL_33:
    if (v36)
    {
      v52 = v36;
      *a5 = v36;
    }
  }

LABEL_35:

  v53 = *MEMORY[0x1E69E9840];
  return v36 == 0;
}

void __65__MCProfile_mayInstallWithOptions_hasInteractionClient_outError___block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v1 = mayInstallWithOptions_hasInteractionClient_outError__acceptablePayloadClasses;
  mayInstallWithOptions_hasInteractionClient_outError__acceptablePayloadClasses = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)restrictionsWithHeuristicsAppliedOutError:(id *)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = [(MCProfile *)self payloads];
  v7 = [v6 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v41 = self;
    v42 = a3;
    v9 = *v47;
    v10 = 1;
LABEL_3:
    v11 = 0;
    v12 = v5;
    while (1)
    {
      if (*v47 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v46 + 1) + 8 * v11);
      if (v13)
      {
        v14 = [*(*(&v46 + 1) + 8 * v11) restrictions];
        v15 = [v14 MCValidateRestrictions];
      }

      else
      {
        v15 = 1;
      }

      v16 = MEMORY[0x1E695DF90];
      v17 = [v13 restrictions];
      v18 = [v16 dictionaryWithDictionary:v17];

      if ((v15 & 1) == 0)
      {
        [v18 MCSanitizeRestrictions];
      }

      v10 &= v15;
      v45 = 0;
      v5 = [MCRestrictionManager restrictionsAfterApplyingRestrictionsDictionary:v18 toRestrictionsDictionary:v12 outChangeDetected:0 outError:&v45];
      v19 = v45;

      if (v19)
      {
        break;
      }

      ++v11;
      v12 = v5;
      if (v8 == v11)
      {
        v8 = [v6 countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    if (v10)
    {
      self = v41;
      a3 = v42;
    }

    else
    {
      v20 = _MCLogObjects;
      self = v41;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A795B000, v20, OS_LOG_TYPE_DEFAULT, "Profile contains invalid restrictions", buf, 2u);
      }

      a3 = v42;
    }
  }

  else
  {

    v19 = 0;
  }

  v21 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v22 = [v21 isSupervised];

  if ((v22 & 1) == 0)
  {
    v23 = [MCRestrictionManager filterGrandfatheredRestrictionsIfNeededFromRestrictions:v5];
    v24 = [v23 mutableCopy];

    v5 = v24;
  }

  v25 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A795B000, v25, OS_LOG_TYPE_DEFAULT, "Applying heuristics to restrictions.", buf, 2u);
  }

  v26 = +[MCHacks sharedHacks];
  [v26 _applyHeuristicsToRestrictions:v5 forProfile:self ignoresUnrestrictableApps:0];

  if (v19)
  {
    goto LABEL_26;
  }

  v27 = [(MCProfile *)self friendlyName];
  v35 = MCLocalizedErrorFormatByDevice(@"ENCRYPTION_POLICY_PAYLOAD_FAILURE_TEXT", v28, v29, v30, v31, v32, v33, v34, v27);

  v36 = +[MCDeviceCapabilities currentDevice];
  v43 = 0;
  [v36 validateCapabilitiesRequiredByRestrictions:v5 localizedIncompatibilityMessage:v35 outError:&v43];
  v19 = v43;

  if (v19)
  {
LABEL_26:
    if (a3)
    {
      v37 = v19;
      v38 = 0;
      *a3 = v19;
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = v5;
  }

  v39 = *MEMORY[0x1E69E9840];

  return v38;
}

- (BOOL)shouldHaveFullSSLTrust
{
  v3 = [(MCProfile *)self installOptions];
  v4 = [v3 objectForKey:@"isInstalledByMDM"];
  v5 = [v4 BOOLValue];

  v6 = [v3 objectForKey:@"isInstalledInteractively"];
  v7 = v6;
  v8 = (v5 & 1) != 0 || v6 && ![v6 BOOLValue] || -[MCProfile containsPayloadOfClass:](self, "containsPayloadOfClass:", objc_opt_class());

  return v8;
}

- (BOOL)isManagedByMDM
{
  v2 = [(MCProfile *)self managingProfileIdentifier];
  v3 = v2 != 0;

  return v3;
}

- (NSString)managingProfileIdentifier
{
  v3 = +[MCDependencyReader sharedReader];
  v4 = [v3 dependentsOfParent:self->_identifier inDomain:@"ManagedProfileToManagingProfile"];

  v5 = [v4 firstObject];

  return v5;
}

- (BOOL)isSupervisionProfile
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = objc_opt_class();

  return [(MCProfile *)self containsPayloadOfClass:v3];
}

- (id)payloadsOfKindOfClass:(Class)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(MCProfile *)self payloads];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)_malformedProfileError
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = MCErrorArray(@"MALFORMED_PAYLOAD_ERROR_DESCRIPTION", a2, v2, v3, v4, v5, v6, v7, 0);
  v10 = [v8 MCErrorWithDomain:@"MCProfileErrorDomain" code:1000 descriptionArray:v9 errorType:@"MCFatalError"];

  return v10;
}

+ (id)_unsupportedEnrollmentServiceProfileError
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = MCErrorArray(@"UNSUPPORTED_PROFILE_TYPE_ERROR_DESCRIPTION", a2, v2, v3, v4, v5, v6, v7, 0);
  v10 = [v8 MCErrorWithDomain:@"MCProfileErrorDomain" code:1016 descriptionArray:v9 errorType:@"MCFatalError"];

  return v10;
}

+ (id)_unsupportedProfileTypeError
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = MCErrorArray(@"UNSUPPORTED_PROFILE_TYPE_ERROR_DESCRIPTION", a2, v2, v3, v4, v5, v6, v7, 0);
  v10 = [v8 MCErrorWithDomain:@"MCProfileErrorDomain" code:1017 descriptionArray:v9 errorType:@"MCFatalError"];

  return v10;
}

+ (id)badFieldTypeErrorWithField:(id)a3
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = MCErrorArray(@"ERROR_PROFILE_FIELD_INVALID_P_FIELD", a2, a3, v3, v4, v5, v6, v7, a3);
  v10 = [v8 MCErrorWithDomain:@"MCProfileErrorDomain" code:1003 descriptionArray:v9 errorType:@"MCFatalError"];

  return v10;
}

+ (id)missingFieldErrorWithField:(id)a3
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = MCErrorArray(@"ERROR_PROFILE_REQUIRED_FIELD_MISSING_P_FIELD", a2, a3, v3, v4, v5, v6, v7, a3);
  v10 = [v8 MCErrorWithDomain:@"MCProfileErrorDomain" code:1002 descriptionArray:v9 errorType:@"MCFatalError"];

  return v10;
}

+ (id)profileDictionaryFromProfileData:(id)a3 outSignerCerts:(id *)a4 outError:(id *)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (![v8 length])
  {
    v19 = MEMORY[0x1E696ABC0];
    v20 = MCErrorArray(@"ERROR_PROFILE_EMPTY", v9, v10, v11, v12, v13, v14, v15, 0);
    v21 = [v19 MCErrorWithDomain:@"MCProfileErrorDomain" code:1005 descriptionArray:v20 errorType:@"MCFatalError"];

    v17 = 0;
    goto LABEL_14;
  }

  v16 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v8 options:1 format:0 error:0];
  if (v16)
  {
    v17 = v16;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0;
      goto LABEL_8;
    }

    v21 = [a1 _malformedProfileError];
LABEL_14:
    v18 = 0;
    if (v21)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v53 = 0;
  v22 = [MCProfile dataFromCMSEncodedData:v8 outSignerCertificates:&v53];
  v18 = v53;
  if (!v22)
  {
    v17 = 0;
LABEL_19:
    v21 = [a1 _malformedProfileError];
    if (v21)
    {
      goto LABEL_15;
    }

LABEL_20:
    v28 = v17;
    goto LABEL_21;
  }

  v17 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:v22 options:1 format:0 error:0];

  if (!v17)
  {
    goto LABEL_19;
  }

LABEL_8:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  v23 = [v17 objectForKeyedSubscript:@"TargetDeviceType"];
  [v23 unsignedIntegerValue];
  if ([v23 unsignedIntegerValue] >= 8)
  {
    v21 = [a1 _malformedProfileError];
    goto LABEL_46;
  }

  v44 = a4;
  v52 = 0;
  v51 = 0;
  v24 = [MCProfile removeOptionalObjectInDictionary:v17 key:@"EncryptedPayloadContent" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v51];
  v21 = v51;
  v45 = v24;
  if (v24)
  {
    v50 = v21;
    v25 = [MCCrypto objectFromEncryptedData:v24 outCertificate:&v52 outError:&v50];
    v26 = v50;

    if (v26)
    {
      v21 = v26;
LABEL_44:

      v24 = v45;
      goto LABEL_45;
    }

    if (v25)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = [a1 _malformedProfileError];
        goto LABEL_44;
      }

      v31 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v32 = v52;
        v33 = v31;
        v34 = [MCProfile signerSummaryOfCertificate:v32];
        *buf = 138543362;
        v56 = v34;
        _os_log_impl(&dword_1A795B000, v33, OS_LOG_TYPE_INFO, "Decrypted profile with identity: %{public}@", buf, 0xCu);
      }

      [v17 setObject:v25 forKey:@"PayloadContent"];
      [v17 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ProfileWasEncrypted"];
    }

    v21 = 0;
    v24 = v45;
  }

  if ([v18 count])
  {
    v42 = v23;
    v43 = a5;
    v25 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v18, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v35 = v18;
    v36 = [v35 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v47;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v47 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = SecCertificateCopyData(*(*(&v46 + 1) + 8 * i));
          if (v40)
          {
            [v25 addObject:v40];
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v37);
    }

    if (v44)
    {
      v41 = v25;
      *v44 = v25;
    }

    v23 = v42;
    a5 = v43;
    goto LABEL_44;
  }

LABEL_45:

LABEL_46:
  if (!v21)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (a5)
  {
    v27 = v21;
    v28 = 0;
    *a5 = v21;
  }

  else
  {
    v28 = 0;
  }

LABEL_21:

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (NSString)stubFileName
{
  v2 = [(MCProfile *)self identifier];
  v3 = [v2 MCHashedFilenameWithExtension:@"stub"];

  return v3;
}

- (NSString)profileIDHashFileName
{
  v2 = [(MCProfile *)self identifier];
  v3 = [v2 MCHashedFilenameWithExtension:@"plist"];

  return v3;
}

- (NSString)profileDataFileName
{
  v2 = [(MCProfile *)self identifier];
  v3 = [v2 MCHashedFilenameWithExtension:@"pdata"];

  return v3;
}

- (MCProfile)initWithDictionary:(id)a3 signerCerts:(id)a4 allowEmptyPayload:(BOOL)a5 outError:(id *)a6
{
  v156 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v148.receiver = self;
  v148.super_class = MCProfile;
  v11 = [(MCProfile *)&v148 init];
  if (!v11)
  {
    goto LABEL_42;
  }

  v12 = dispatch_queue_create("com.apple.managedconfiguration.trustEvaluationQueue", 0);
  trustEvaluationQueue = v11->_trustEvaluationQueue;
  v11->_trustEvaluationQueue = v12;

  v14 = dispatch_queue_create("com.apple.managedconfiguration.signerEvaluationQueue", 0);
  signerEvaluationQueue = v11->_signerEvaluationQueue;
  v11->_signerEvaluationQueue = v14;

  v147 = 0;
  v16 = [MCProfile removeOptionalObjectInDictionary:v9 key:@"MCProfileIsRemovalStub" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v147];
  v17 = v147;
  if (!v17)
  {
    v11->_isStub = [v16 BOOLValue];
    v146 = 0;
    v18 = [MCProfile removeRequiredObjectInDictionary:v9 key:@"PayloadVersion" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" missingDataCode:1002 missingDataErrorString:@"ERROR_PROFILE_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v146];
    v19 = v146;
    if (v19)
    {
      v17 = v19;

      goto LABEL_5;
    }

    v29 = [v18 intValue];
    v11->_version = v29;
    if (v11->_isStub)
    {
      if (v29 >= 3)
      {
        v37 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
        {
          version = v11->_version;
          *buf = 67109120;
          LODWORD(v150) = version;
          _os_log_impl(&dword_1A795B000, v37, OS_LOG_TYPE_ERROR, "WARNING: profile contains invalid PayloadVersion “%d”.", buf, 8u);
        }
      }
    }

    else if ((v29 - 3) <= 0xFFFFFFFD)
    {
      v39 = MEMORY[0x1E696ABC0];
      v40 = MCErrorArray(@"ERROR_UNSUPPORTED_VERSION", v30, v31, v32, v33, v34, v35, v36, 0);
      v41 = [v39 MCErrorWithDomain:@"MCProfileErrorDomain" code:1001 descriptionArray:v40 errorType:@"MCFatalError"];
      v17 = [v41 MCCopyAsPrimaryError];
LABEL_40:

LABEL_41:
      if (v17)
      {
        goto LABEL_6;
      }

LABEL_42:
      v28 = v11;
      goto LABEL_43;
    }

    v145 = 0;
    v42 = [MCProfile removeRequiredNonZeroLengthStringInDictionary:v9 key:@"PayloadIdentifier" errorDomain:@"MCProfileErrorDomain" missingDataCode:1002 missingDataErrorString:@"ERROR_PROFILE_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v145];
    v17 = v145;
    identifier = v11->_identifier;
    v11->_identifier = v42;

    if (!v17)
    {
      v144 = 0;
      v44 = [MCProfile removeRequiredNonZeroLengthStringInDictionary:v9 key:@"PayloadUUID" errorDomain:@"MCProfileErrorDomain" missingDataCode:1002 missingDataErrorString:@"ERROR_PROFILE_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v144];
      v17 = v144;
      UUID = v11->_UUID;
      v11->_UUID = v44;
    }

    v40 = [v9 objectForKey:@"PayloadDescription"];
    if (!v40)
    {
      v46 = 0x1E77CF000;
      goto LABEL_28;
    }

    objc_opt_class();
    v46 = 0x1E77CF000uLL;
    if (objc_opt_isKindOfClass())
    {
      v47 = MCStringFromArrayOfStrings(v40);
      profileDescription = v11->_profileDescription;
      v11->_profileDescription = v47;

      if (v11->_profileDescription)
      {
        goto LABEL_28;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v49 = v40;
        v50 = v11->_profileDescription;
        v11->_profileDescription = v49;
LABEL_27:

LABEL_28:
        [v9 removeObjectForKey:@"PayloadDescription"];
        if (v17)
        {
          goto LABEL_41;
        }

        v115 = v40;
        v52 = *(v46 + 1640);
        v143 = 0;
        v53 = [v52 removeOptionalNonZeroLengthStringInDictionary:v9 key:@"PayloadDisplayName" errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v143];
        v17 = v143;
        displayName = v11->_displayName;
        v11->_displayName = v53;

        if (!v17)
        {
          v142 = 0;
          v55 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:v9 key:@"PayloadOrganization" errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v142];
          v17 = v142;
          organization = v11->_organization;
          v11->_organization = v55;
        }

        v57 = [MEMORY[0x1E69AD420] sharedConfiguration];
        v58 = [v57 isSupervised];

        if (v58)
        {
          if (!v17)
          {
            v141 = 0;
            v41 = [MCProfile removeOptionalObjectInDictionary:v9 key:@"PayloadRemovalDisallowed" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v141];
            v59 = v141;
            if (v59)
            {
LABEL_38:
              v17 = v59;
              goto LABEL_39;
            }

            v11->_isLocked = [v41 BOOLValue];

LABEL_37:
            v140 = 0;
            v41 = [MCProfile removeOptionalObjectInDictionary:v9 key:@"PayloadRebootSuggested" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v140];
            v59 = v140;
            if (v59)
            {
              goto LABEL_38;
            }

            v114 = v41;
            v11->_needsReboot = [v41 BOOLValue];
            v139 = 0;
            v62 = [MCProfile removeOptionalObjectInDictionary:v9 key:@"PayloadExpirationDate" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v139];
            v17 = v139;
            expiryDate = v11->_expiryDate;
            v11->_expiryDate = v62;

            if (v17)
            {
              goto LABEL_124;
            }

            v138 = 0;
            v64 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:v9 key:@"ProductVersion" errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v138];
            v17 = v138;
            productVersion = v11->_productVersion;
            v11->_productVersion = v64;

            if (v17)
            {
              goto LABEL_124;
            }

            v137 = 0;
            v66 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:v9 key:@"ProductBuildVersion" errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v137];
            v17 = v137;
            productBuildVersion = v11->_productBuildVersion;
            v11->_productBuildVersion = v66;

            if (v17 || (v136 = 0, [MCProfile removeOptionalObjectInDictionary:v9 key:@"RemovalDate" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v136], v68 = objc_claimAutoreleasedReturnValue(), v17 = v136, removalDate = v11->_removalDate, v11->_removalDate = v68, removalDate, v17))
            {
LABEL_124:
              v41 = v114;
              v40 = v115;
              goto LABEL_40;
            }

            v135 = 0;
            v104 = [MCProfile removeOptionalObjectInDictionary:v9 key:@"TargetDeviceType" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v135];
            v70 = v135;
            if (v70)
            {
              v17 = v70;
LABEL_123:

              goto LABEL_124;
            }

            v11->_targetDeviceType = [(NSDate *)v104 unsignedIntValue];

            v134 = 0;
            v71 = [MCProfile removeOptionalObjectInDictionary:v9 key:@"DurationUntilRemoval" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v134];
            v17 = v134;
            v114 = v71;
            if (v71)
            {
              v72 = MEMORY[0x1E695DF00];
              [v114 doubleValue];
              v104 = [v72 dateWithTimeIntervalSinceNow:?];
            }

            else
            {
              v104 = 0;
            }

            if (!v11->_removalDate || v114 && v104 && [(NSDate *)v104 compare:?]== NSOrderedAscending)
            {
              v73 = v104;
              v74 = v11->_removalDate;
              v11->_removalDate = v104;
            }

            if (v17 || (v133 = 0, [MCProfile removeOptionalObjectInDictionary:v9 key:@"ConsentText" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v133], v78 = objc_claimAutoreleasedReturnValue(), v17 = v133, (v103 = v78) == 0))
            {
              v103 = 0;
            }

            else if ([v78 count])
            {
              v79 = [MEMORY[0x1E695DF58] preferredLanguages];
              v97 = [v103 allKeys];
              v102 = v79;
              [MEMORY[0x1E696AAE8] preferredLocalizationsFromArray:? forPreferences:?];
              v129 = 0u;
              v130 = 0u;
              v131 = 0u;
              v98 = v132 = 0u;
              v100 = [v98 countByEnumeratingWithState:&v129 objects:v155 count:16];
              if (v100)
              {
                v99 = *v130;
                while (2)
                {
                  for (obja = 0; obja != v100; obja = obja + 1)
                  {
                    if (*v130 != v99)
                    {
                      objc_enumerationMutation(v98);
                    }

                    v112 = *(*(&v129 + 1) + 8 * obja);
                    v125 = 0u;
                    v126 = 0u;
                    v127 = 0u;
                    v128 = 0u;
                    v108 = v102;
                    v80 = [v108 countByEnumeratingWithState:&v125 objects:v154 count:16];
                    if (v80)
                    {
                      v81 = v80;
                      v110 = *v126;
LABEL_84:
                      v82 = 0;
                      while (1)
                      {
                        if (*v126 != v110)
                        {
                          objc_enumerationMutation(v108);
                        }

                        if ([*(*(&v125 + 1) + 8 * v82) hasPrefix:v112])
                        {
                          break;
                        }

                        if (v81 == ++v82)
                        {
                          v81 = [v108 countByEnumeratingWithState:&v125 objects:v154 count:16];
                          if (v81)
                          {
                            goto LABEL_84;
                          }

                          goto LABEL_90;
                        }
                      }

                      v83 = [v103 objectForKey:v112];
                      if (!v83)
                      {
                        continue;
                      }

                      v85 = v83;
                      v88 = v98;
                      goto LABEL_105;
                    }

LABEL_90:
                  }

                  v100 = [v98 countByEnumeratingWithState:&v129 objects:v155 count:16];
                  if (v100)
                  {
                    continue;
                  }

                  break;
                }
              }

              v84 = [v103 objectForKey:@"default"];
              if (v84 || ([v103 objectForKey:@"en"], (v84 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v85 = v84;
              }

              else
              {
                v88 = [v103 allValues];
                v85 = [v88 firstObject];
LABEL_105:
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_storeStrong(&v11->_localizedConsentText, v85);
              }

              else
              {
                v91 = [MCProfile badFieldTypeErrorWithField:@"ConsentText"];
              }
            }

            if (v11->_isStub)
            {
              if (v17)
              {

LABEL_122:
                goto LABEL_123;
              }

              v124 = 0;
              v101 = [MCProfile removeOptionalObjectInDictionary:v9 key:@"SignerCerts" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v124];
              v17 = v124;
              if (v17)
              {
LABEL_121:

                goto LABEL_122;
              }
            }

            else
            {
              v101 = v10;
            }

            if ([v101 count])
            {
              v107 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v101, "count")}];
              v120 = 0u;
              v121 = 0u;
              v122 = 0u;
              v123 = 0u;
              obj = v101;
              v111 = [obj countByEnumeratingWithState:&v120 objects:v153 count:16];
              if (v111)
              {
                v109 = *v121;
                do
                {
                  for (i = 0; i != v111; ++i)
                  {
                    if (*v121 != v109)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v76 = SecCertificateCreateWithData(0, *(*(&v120 + 1) + 8 * i));
                    if (v76)
                    {
                      v77 = v76;
                      [v107 addObject:v76];
                      CFRelease(v77);
                    }
                  }

                  v111 = [obj countByEnumeratingWithState:&v120 objects:v153 count:16];
                }

                while (v111);
              }
            }

            else
            {
              v107 = 0;
            }

            objc_storeStrong(&v11->_signerQueueSignerCertificates, v107);
            if (v17)
            {
              v86 = 0;
            }

            else
            {
              v119 = 0;
              v86 = [MCProfile removeOptionalObjectInDictionary:v9 key:@"ProfileWasEncrypted" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v119];
              v87 = v119;
              if (v87)
              {
                v17 = v87;
              }

              else
              {
                v11->_encrypted = [v86 BOOLValue];
                [v9 removeObjectForKey:@"ProfileWasTrusted"];
                [v9 removeObjectForKey:@"ProfileWasSigned"];
                [v9 removeObjectForKey:@"ProfileTrustLevel"];
                if (v11->_isStub)
                {
                  v118 = 0;
                  v89 = [MCProfile removeOptionalObjectInDictionary:v9 key:@"InstallDate" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v118];
                  v17 = v118;
                  installDate = v11->_installDate;
                  v11->_installDate = v89;

                  if (v17)
                  {
                  }

                  else
                  {
                    v117 = 0;
                    v113 = [MCProfile removeOptionalObjectInDictionary:v9 key:@"ProfileWasLocked" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v117];
                    v92 = v117;
                    if (v92)
                    {
                      v17 = v92;
                    }

                    else
                    {
                      v11->_isLocked = [v113 BOOLValue];
                      v116 = 0;
                      v93 = [MCProfile removeOptionalObjectInDictionary:v9 key:@"InstallOptions" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v116];
                      v17 = v116;
                      installOptions = v11->_installOptions;
                      v11->_installOptions = v93;

                      if (v11->_isLocked)
                      {
                        v95 = [MCKeychain stringFromService:@"MCProfileRemovalPasscode" account:v11->_UUID label:0 description:0 useSystemKeychain:[(MCProfile *)v11 isInstalledForSystem] outError:0];
                        removalPasscode = v11->_removalPasscode;
                        v11->_removalPasscode = v95;
                      }
                    }
                  }
                }

                else
                {
                  v17 = 0;
                }
              }
            }

            goto LABEL_121;
          }
        }

        else if (!v17)
        {
          goto LABEL_37;
        }

        v41 = 0;
LABEL_39:
        v40 = v115;
        goto LABEL_40;
      }
    }

    v51 = [MCProfile badFieldTypeErrorWithField:@"PayloadDescription"];
    v50 = v17;
    v17 = v51;
    goto LABEL_27;
  }

LABEL_5:

LABEL_6:
  v20 = v11->_signerEvaluationQueue;
  v11->_signerEvaluationQueue = 0;

  v21 = v11->_trustEvaluationQueue;
  v11->_trustEvaluationQueue = 0;

  v22 = [(MCProfile *)v11 malformedProfileErrorWithError:v17];
  v23 = v22;
  if (a6)
  {
    v24 = v22;
    *a6 = v23;
  }

  v25 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    v26 = v25;
    v27 = [v23 MCVerboseDescription];
    *buf = 134218242;
    v150 = v11;
    v151 = 2114;
    v152 = v27;
    _os_log_impl(&dword_1A795B000, v26, OS_LOG_TYPE_ERROR, "%p Can't parse profile: %{public}@", buf, 0x16u);
  }

  v28 = 0;
LABEL_43:

  v60 = *MEMORY[0x1E69E9840];
  return v28;
}

- (id)malformedProfileErrorWithError:(id)a3
{
  v4 = a3;
  v5 = [(MCProfile *)self friendlyName];
  v13 = v5;
  v14 = MEMORY[0x1E696ABC0];
  if (v5)
  {
    MCErrorArray(@"ERROR_PROFILE_MALFORMED_P_ID", v6, v7, v8, v9, v10, v11, v12, v5);
  }

  else
  {
    MCErrorArray(@"MALFORMED_PAYLOAD_ERROR_DESCRIPTION", v6, v7, v8, v9, v10, v11, v12, 0);
  }
  v15 = ;
  v16 = [v14 MCErrorWithDomain:@"MCProfileErrorDomain" code:1000 descriptionArray:v15 underlyingError:v4 errorType:@"MCFatalError"];

  return v16;
}

- (BOOL)writeStubToDirectory:(id)a3
{
  v4 = a3;
  v5 = [(MCProfile *)self stubFileName];
  v6 = [v4 stringByAppendingPathComponent:v5];

  LOBYTE(self) = [(MCProfile *)self writeStubToPath:v6];
  return self;
}

- (BOOL)writeStubToPath:(id)a3
{
  v4 = a3;
  v5 = [(MCProfile *)self stubDictionary];
  v6 = [v5 MCWriteToBinaryFile:v4];

  return v6;
}

- (id)stubDictionary
{
  v39[5] = *MEMORY[0x1E69E9840];
  v3 = MCProductVersion();
  v4 = MCProductBuildVersion();
  [0 MCSetObjectIfNotNil:v3 forKey:@"ProductVersion"];
  [0 MCSetObjectIfNotNil:v4 forKey:@"ProductBuildVersion"];
  v38[0] = @"PayloadVersion";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_version];
  identifier = self->_identifier;
  UUID = self->_UUID;
  v39[0] = v5;
  v39[1] = identifier;
  v38[1] = @"PayloadIdentifier";
  v38[2] = @"PayloadUUID";
  v39[2] = UUID;
  v38[3] = @"ProfileWasEncrypted";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_encrypted];
  v38[4] = @"MCProfileIsRemovalStub";
  v39[3] = v8;
  v39[4] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:5];
  v10 = [v9 mutableCopy];

  removalDate = self->_removalDate;
  if (removalDate)
  {
    [v10 setObject:removalDate forKeyedSubscript:@"RemovalDate"];
  }

  localizedConsentText = self->_localizedConsentText;
  if (localizedConsentText)
  {
    v36 = @"default";
    v37 = localizedConsentText;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    [v10 setObject:v13 forKeyedSubscript:@"ConsentText"];
  }

  [v10 MCSetObjectIfNotNil:self->_displayName forKey:@"PayloadDisplayName"];
  [v10 MCSetObjectIfNotNil:self->_profileDescription forKey:@"PayloadDescription"];
  [v10 MCSetObjectIfNotNil:self->_organization forKey:@"PayloadOrganization"];
  [v10 MCSetObjectIfNotNil:self->_installDate forKey:@"InstallDate"];
  [v10 MCSetObjectIfNotNil:self->_expiryDate forKey:@"PayloadExpirationDate"];
  if (self->_needsReboot)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v10 MCSetObjectIfNotNil:v14 forKey:@"PayloadRebootSuggested"];
  }

  else
  {
    [v10 MCSetObjectIfNotNil:0 forKey:@"PayloadRebootSuggested"];
  }

  installOptions = self->_installOptions;
  if (installOptions)
  {
    [v10 setObject:installOptions forKeyedSubscript:@"InstallOptions"];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_targetDeviceType];
  [v10 setObject:v16 forKeyedSubscript:@"TargetDeviceType"];

  v17 = [(MCProfile *)self signerCertificates];
  v18 = [v17 count];

  if (v18)
  {
    v19 = MEMORY[0x1E695DF70];
    v20 = [(MCProfile *)self signerCertificates];
    v21 = [v19 arrayWithCapacity:{objc_msgSend(v20, "count")}];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = [(MCProfile *)self signerCertificates];
    v23 = [v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v32;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = SecCertificateCopyData(*(*(&v31 + 1) + 8 * i));
          if (v27)
          {
            [v21 addObject:v27];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v24);
    }

    [v10 setObject:v21 forKey:@"SignerCerts"];
  }

  if (self->_isLocked)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v10 setObject:v28 forKey:@"ProfileWasLocked"];
  }

  v29 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)containsPayloadOfClass:(Class)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(MCProfile *)self payloads];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)containsAnyPayloadOfClasses:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(MCProfile *)self payloads];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v4 containsObject:objc_opt_class()])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)containsOnlyPayloadsOfClasses:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(MCProfile *)self payloads];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (![v4 containsObject:objc_opt_class()])
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (unint64_t)countOfPayloadsOfClass:(Class)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(MCProfile *)self payloads];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v6 += objc_opt_isKindOfClass() & 1;
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (id)removeRequiredObjectInDictionary:(id)a3 key:(id)a4 type:(Class)a5 errorDomain:(id)a6 missingDataCode:(int64_t)a7 missingDataErrorString:(id)a8 invalidDataCode:(int64_t)a9 invalidDataErrorString:(id)a10 outError:(id *)a11
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a8;
  v19 = a10;
  v27 = [v15 objectForKey:v16];
  if (v27)
  {
    if (objc_opt_isKindOfClass())
    {
      [v15 removeObjectForKey:v16];
      v35 = v27;
      goto LABEL_10;
    }

    if (a11)
    {
      v41 = MEMORY[0x1E696ABC0];
      v37 = MCErrorArray(v19, v28, v29, v30, v31, v32, v33, v34, v16);
      v38 = v41;
      v39 = v17;
      v40 = a9;
      goto LABEL_8;
    }
  }

  else if (a11)
  {
    v36 = MEMORY[0x1E696ABC0];
    v37 = MCErrorArray(v18, v20, v21, v22, v23, v24, v25, v26, v16);
    v38 = v36;
    v39 = v17;
    v40 = a7;
LABEL_8:
    *a11 = [v38 MCErrorWithDomain:v39 code:v40 descriptionArray:v37 errorType:@"MCFatalError"];
  }

  v35 = 0;
LABEL_10:

  return v35;
}

+ (id)removeOptionalObjectInDictionary:(id)a3 key:(id)a4 type:(Class)a5 errorDomain:(id)a6 invalidDataCode:(int64_t)a7 invalidDataErrorString:(id)a8 outError:(id *)a9
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a8;
  v17 = [v13 objectForKey:v14];
  if (v17 && ([v13 removeObjectForKey:v14], (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (a9)
    {
      v26 = MEMORY[0x1E696ABC0];
      v27 = MCErrorArray(v16, v18, v19, v20, v21, v22, v23, v24, v14);
      *a9 = [v26 MCErrorWithDomain:v15 code:a7 descriptionArray:v27 errorType:@"MCFatalError"];
    }

    v25 = 0;
  }

  else
  {
    v25 = v17;
  }

  return v25;
}

+ (id)removeRequiredNonZeroLengthStringInDictionary:(id)a3 key:(id)a4 errorDomain:(id)a5 missingDataCode:(int64_t)a6 missingDataErrorString:(id)a7 invalidDataCode:(int64_t)a8 invalidDataErrorString:(id)a9 outError:(id *)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a9;
  v20 = [v15 objectForKey:v16];
  if (v20 && ([v15 removeObjectForKey:v16], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [v15 removeObjectForKey:v16];
    if (a10)
    {
      v36 = MEMORY[0x1E696ABC0];
      v37 = MCErrorArray(v19, v29, v30, v31, v32, v33, v34, v35, v16);
      v38 = v36;
      v39 = v17;
      v40 = a8;
LABEL_9:
      *a10 = [v38 MCErrorWithDomain:v39 code:v40 descriptionArray:v37 errorType:@"MCFatalError"];
    }
  }

  else
  {
    if ([v20 length])
    {
      v28 = v20;
      goto LABEL_11;
    }

    if (a10)
    {
      v41 = MEMORY[0x1E696ABC0];
      v37 = MCErrorArray(v18, v21, v22, v23, v24, v25, v26, v27, v16);
      v38 = v41;
      v39 = v17;
      v40 = a6;
      goto LABEL_9;
    }
  }

  v28 = 0;
LABEL_11:

  return v28;
}

+ (id)removeOptionalNonZeroLengthStringInDictionary:(id)a3 key:(id)a4 errorDomain:(id)a5 invalidDataCode:(int64_t)a6 invalidDataErrorString:(id)a7 outError:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = [v13 objectForKey:v14];
  if (!v17)
  {
    goto LABEL_4;
  }

  [v13 removeObjectForKey:v14];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v17 length])
    {
LABEL_4:
      a8 = v17;
      goto LABEL_8;
    }
  }

  else
  {
    if (!a8)
    {
      goto LABEL_8;
    }

    v25 = MEMORY[0x1E696ABC0];
    v26 = MCErrorArray(v16, v18, v19, v20, v21, v22, v23, v24, v14);
    *a8 = [v25 MCErrorWithDomain:v15 code:a6 descriptionArray:v26 errorType:@"MCFatalError"];
  }

  a8 = 0;
LABEL_8:

  return a8;
}

+ (BOOL)checkString:(id)a3 isOneOfStrings:(id)a4 key:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7 errorString:(id)a8 outError:(id *)a9
{
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v17 = [a4 containsObject:a3];
  v25 = v17;
  if (a9 && (v17 & 1) == 0)
  {
    v26 = MEMORY[0x1E696ABC0];
    v27 = MCErrorArray(v16, v18, v19, v20, v21, v22, v23, v24, v14);
    *a9 = [v26 MCErrorWithDomain:v15 code:a7 descriptionArray:v27 errorType:@"MCFatalError"];
  }

  return v25;
}

+ (int)evaluateTrust:(__SecTrust *)a3
{
  if (SecTrustGetCertificateCount(a3) != 1 || (v5 = [MCCrypto copyLeafCertificateFromTrust:a3]) == 0 || ((v6 = v5, !SecCertificateIsSelfSignedCA()) ? (v7 = 1) : ![MCKeychain itemExistsInKeychain:v6 useSystemKeychain:1]? ((v7 = 0, ![MCKeychain itemExistsInKeychain:v6 useSystemKeychain:0]) ? (v3 = 0) : (v3 = 2)) : (v7 = 0, v3 = 2), CFRelease(v6), (v7 & 1) != 0))
  {
    error = 0;
    if (SecTrustEvaluateWithError(a3, &error))
    {
      return 2;
    }

    else
    {
      CFRelease(error);
      return 0;
    }
  }

  return v3;
}

+ (int)evaluateTrustOfCertificateChain:(id)a3 signatureVersion:(id)a4 outIsAllowedToInstallUnsupportedPayloads:(BOOL *)a5 outIsAllowedToWriteDefaults:(BOOL *)a6 outIsAllowedToInstallSupervisedRestrictionsOnUnsupervisedDevices:(BOOL *)a7
{
  v44 = *MEMORY[0x1E69E9840];
  v11 = a3;
  LODWORD(a4) = [a4 intValue];
  v12 = [v11 count];
  if (a4 < 2)
  {
    if (v12 == 1)
    {
      [v11 objectAtIndex:0];
      if (SecCertificateIsSelfSignedCA())
      {
        v16 = 2;
        SecTrustStoreForDomain();
        if (SecTrustStoreContains())
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          goto LABEL_33;
        }
      }
    }

LABEL_10:
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v18 = v11;
    v19 = [v18 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v39;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v39 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v38 + 1) + 8 * i);
          if ((SecCertificateIsSelfSignedCA() & 1) == 0)
          {
            [v17 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v20);
    }

    if ([v17 count])
    {
      trust = 0;
      BasicX509 = SecPolicyCreateBasicX509();
      if (SecTrustCreateWithCertificates(v17, BasicX509, &trust))
      {
        v16 = 0;
      }

      else
      {
        v16 = [MCProfile evaluateTrust:trust];
        CFRelease(trust);
      }

      CFRelease(BasicX509);
    }

    else
    {
      v16 = 0;
    }

    if (a6)
    {
      v25 = +[MCHacks sharedHacks];
      v14 = [v25 sanitizedProfileSignerCertificateChainIsAllowedToWriteDefaults:v17];

      if (a5)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v14 = 0;
      if (a5)
      {
LABEL_27:
        v26 = +[MCHacks sharedHacks];
        v15 = [v26 sanitizedProfileSignerCertificateChainIsAllowedToInstallUnsupportedPayload:v17];

        if (a7)
        {
LABEL_28:
          v27 = +[MCHacks sharedHacks];
          v13 = [v27 sanitizedProfileSignerCertificateChainIsAllowedToInstallSupervisedRestrictionsOnUnsupervisedDevices:v17];

LABEL_32:
          goto LABEL_33;
        }

LABEL_31:
        v13 = 0;
        goto LABEL_32;
      }
    }

    v15 = 0;
    if (a7)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  if (!v12 || ![v11 objectAtIndex:0] || !SecCertificateIsSelfSignedCA())
  {
    goto LABEL_10;
  }

  SecTrustStoreForDomain();
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 2 * (SecTrustStoreContains() != 0);
LABEL_33:
  if ([v11 count] && !v16)
  {
    v35 = a7;
    v28 = v14;
    v29 = SecCertificateCopySubjectSummary([v11 objectAtIndex:0]);
    v30 = MCHCUCopyHostCertificateForMappedLabel(v29);
    if (!v30)
    {
      v16 = 0;
LABEL_47:

      v14 = v28;
      a7 = v35;
      goto LABEL_48;
    }

    v31 = v30;
    v32 = SecPolicyCreateBasicX509();
    trust = 0;
    if (!SecTrustCreateWithCertificates(v11, v32, &trust))
    {
      v42 = v31;
      if (!SecTrustSetAnchorCertificates(trust, [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1]) && !SecTrustSetAnchorCertificatesOnly(trust, 1u))
      {
        error = 0;
        if (SecTrustEvaluateWithError(trust, &error))
        {
          v16 = 2;
LABEL_44:
          if (v32)
          {
            CFRelease(v32);
          }

          CFRelease(v31);
          goto LABEL_47;
        }

        CFRelease(error);
      }
    }

    v16 = 0;
    goto LABEL_44;
  }

LABEL_48:
  if (a5)
  {
    *a5 = v15;
  }

  if (a6)
  {
    *a6 = v14;
  }

  if (a7)
  {
    *a7 = v13;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (id)signerSummaryOfCertificate:(__SecCertificate *)a3
{
  v4 = CFDataCreate(0, signerSummaryOfCertificate__emailProtectionOID, 8);
  v5 = SecCertificateCopyExtendedKeyUsage();
  if (v5)
  {
    v6 = v5;
    v12.length = CFArrayGetCount(v5);
    v12.location = 0;
    if (CFArrayContainsValue(v6, v12, v4) && (v7 = SecCertificateCopyRFC822Names()) != 0)
    {
      v8 = v7;
      if (CFArrayGetCount(v7))
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
    if (v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = 0;
    if (v4)
    {
LABEL_12:
      CFRelease(v4);
    }
  }

  if (!v9)
  {
    v9 = SecCertificateCopySubjectSummary(a3);
  }

  return v9;
}

+ (id)dataFromCMSEncodedData:(id)a3 outSignerCertificates:(id *)a4
{
  v5 = a3;
  if ([v5 length])
  {
    BasicX509 = SecPolicyCreateBasicX509();
    if (SecCMSVerifyCopyDataAndAttributes())
    {
      v7 = 0;
    }

    else
    {
      Value = CFDictionaryGetValue(0, *MEMORY[0x1E697AF78]);
      if (Value)
      {
        v11 = Value;
        v12 = [MCCrypto copyLeafCertificateFromTrust:0];
        Count = CFArrayGetCount(v11);
        v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:Count];
        if (Count >= 1)
        {
          v14 = Count + 1;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v11, v14 - 2);
            if (CFEqual(ValueAtIndex, v12))
            {
              [v7 insertObject:ValueAtIndex atIndex:0];
            }

            else
            {
              [v7 addObject:ValueAtIndex];
            }

            --v14;
          }

          while (v14 > 1);
        }

        if (v12)
        {
          CFRelease(v12);
        }
      }

      else
      {
        v7 = 0;
      }
    }

    if (BasicX509)
    {
      CFRelease(BasicX509);
    }

    if (a4)
    {
      v8 = v7;
      *a4 = v7;
    }
  }

  return 0;
}

- (id)signatureVersion
{
  if ([(MCProfile *)self isStub])
  {
    v3 = [(MCProfile *)self installOptions];
    v4 = [v3 objectForKey:@"signatureVersion"];
  }

  else
  {
    v4 = +[MCProfile newProfileSignatureVersion];
  }

  return v4;
}

+ (id)stringForDeviceType:(unint64_t)a3
{
  v3 = @"vision";
  v4 = @"error";
  if (a3 != 99)
  {
    v4 = 0;
  }

  if (a3 != 6)
  {
    v3 = v4;
  }

  v5 = @"mac";
  if (a3 != 5)
  {
    v5 = 0;
  }

  if (a3 == 4)
  {
    v5 = @"tv";
  }

  if (a3 <= 5)
  {
    v3 = v5;
  }

  v6 = @"watch";
  v7 = @"homepod";
  if (a3 != 3)
  {
    v7 = 0;
  }

  if (a3 != 2)
  {
    v6 = v7;
  }

  v8 = @"phone";
  if (a3 != 1)
  {
    v8 = 0;
  }

  if (!a3)
  {
    v8 = @"any";
  }

  if (a3 <= 1)
  {
    v6 = v8;
  }

  if (a3 <= 3)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

+ (unint64_t)thisDeviceType
{
  if (MCGestaltIsVisionDevice())
  {
    return 6;
  }

  if (MCGestaltIsWatch())
  {
    return 2;
  }

  if (MCGestaltIsHomePod())
  {
    return 3;
  }

  if (MCGestaltIsAppleTV())
  {
    return 4;
  }

  return 1;
}

- (id)loggingID
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MCProfile *)self identifier];
  v5 = [(MCProfile *)self UUID];
  v6 = [v3 stringWithFormat:@"%@-%@", v4, v5];

  return v6;
}

- (id)payloadsWithClass:(Class)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(MCProfile *)self payloads];
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:{v10, v14}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end