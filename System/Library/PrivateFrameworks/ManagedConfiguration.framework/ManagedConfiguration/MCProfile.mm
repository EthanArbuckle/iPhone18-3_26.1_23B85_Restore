@interface MCProfile
+ (BOOL)checkString:(id)string isOneOfStrings:(id)strings key:(id)key errorDomain:(id)domain errorCode:(int64_t)code errorString:(id)errorString outError:(id *)error;
+ (id)_malformedProfileError;
+ (id)_unsupportedEnrollmentServiceProfileError;
+ (id)_unsupportedProfileTypeError;
+ (id)badFieldTypeErrorWithField:(id)field;
+ (id)dataFromCMSEncodedData:(id)data outSignerCertificates:(id *)certificates;
+ (id)missingFieldErrorWithField:(id)field;
+ (id)profileDictionaryFromProfileData:(id)data outSignerCerts:(id *)certs outError:(id *)error;
+ (id)removeOptionalNonZeroLengthStringInDictionary:(id)dictionary key:(id)key errorDomain:(id)domain invalidDataCode:(int64_t)code invalidDataErrorString:(id)string outError:(id *)error;
+ (id)removeOptionalObjectInDictionary:(id)dictionary key:(id)key type:(Class)type errorDomain:(id)domain invalidDataCode:(int64_t)code invalidDataErrorString:(id)string outError:(id *)error;
+ (id)removeRequiredNonZeroLengthStringInDictionary:(id)dictionary key:(id)key errorDomain:(id)domain missingDataCode:(int64_t)code missingDataErrorString:(id)string invalidDataCode:(int64_t)dataCode invalidDataErrorString:(id)errorString outError:(id *)self0;
+ (id)removeRequiredObjectInDictionary:(id)dictionary key:(id)key type:(Class)type errorDomain:(id)domain missingDataCode:(int64_t)code missingDataErrorString:(id)string invalidDataCode:(int64_t)dataCode invalidDataErrorString:(id)self0 outError:(id *)self1;
+ (id)signerSummaryOfCertificate:(__SecCertificate *)certificate;
+ (id)stringForDeviceType:(unint64_t)type;
+ (int)evaluateTrust:(__SecTrust *)trust;
+ (int)evaluateTrustOfCertificateChain:(id)chain signatureVersion:(id)version outIsAllowedToInstallUnsupportedPayloads:(BOOL *)payloads outIsAllowedToWriteDefaults:(BOOL *)defaults outIsAllowedToInstallSupervisedRestrictionsOnUnsupervisedDevices:(BOOL *)devices;
+ (unint64_t)thisDeviceType;
- (BOOL)containsAnyPayloadOfClasses:(id)classes;
- (BOOL)containsOnlyPayloadsOfClasses:(id)classes;
- (BOOL)containsPayloadOfClass:(Class)class;
- (BOOL)doesSigningAllowReplacementWithProfile:(id)profile;
- (BOOL)doesSigningAllowReplacementWithProfile:(id)profile useOriginalCheck:(BOOL)check;
- (BOOL)isManagedByMDM;
- (BOOL)isProfileUIInstallationEffectivelyAllowed;
- (BOOL)isSigned;
- (BOOL)isSupervisionProfile;
- (BOOL)isUserEnrollmentProfile;
- (BOOL)mayInstallWithOptions:(id)options hasInteractionClient:(BOOL)client outError:(id *)error;
- (BOOL)mustInstallNonInteractively;
- (BOOL)shouldHaveFullSSLTrust;
- (BOOL)writeStubToDirectory:(id)directory;
- (BOOL)writeStubToPath:(id)path;
- (MCProfile)initWithDictionary:(id)dictionary signerCerts:(id)certs allowEmptyPayload:(BOOL)payload outError:(id *)error;
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
- (id)installationWarningsIncludeUnsignedProfileWarning:(BOOL)warning;
- (id)loggingID;
- (id)malformedProfileErrorWithError:(id)error;
- (id)payloadsOfKindOfClass:(Class)class;
- (id)payloadsWithClass:(Class)class;
- (id)restrictionsWithHeuristicsAppliedOutError:(id *)error;
- (id)serializedDictionary;
- (id)signatureVersion;
- (id)stubDictionary;
- (id)verboseDescription;
- (int)trustLevel;
- (int64_t)installType;
- (unint64_t)countOfPayloadsOfClass:(Class)class;
- (void)evaluateSignerTrustAsynchronouslyWithCompletion:(id)completion;
- (void)setRemovalPasscode:(id)passcode;
- (void)setSignerCertificates:(id)certificates;
@end

@implementation MCProfile

- (BOOL)isUserEnrollmentProfile
{
  v2 = [(MCProfile *)self payloadsWithClass:objc_opt_class()];
  firstObject = [v2 firstObject];

  if (firstObject)
  {
    isUserEnrollment = [firstObject isUserEnrollment];
  }

  else
  {
    isUserEnrollment = 0;
  }

  return isUserEnrollment;
}

- (void)setRemovalPasscode:(id)passcode
{
  passcodeCopy = passcode;
  removalPasscode = self->_removalPasscode;
  p_removalPasscode = &self->_removalPasscode;
  if (removalPasscode != passcodeCopy)
  {
    v8 = passcodeCopy;
    objc_storeStrong(p_removalPasscode, passcode);
    passcodeCopy = v8;
  }
}

- (id)hasRequiredAppIDForMDM
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  payloads = [(MCProfile *)self payloads];
  requiredAppIDForMDM2 = [payloads countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (requiredAppIDForMDM2)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != requiredAppIDForMDM2; i = i + 1)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(payloads);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
          requiredAppIDForMDM = [v7 requiredAppIDForMDM];

          if (requiredAppIDForMDM)
          {
            requiredAppIDForMDM2 = [v7 requiredAppIDForMDM];

            goto LABEL_13;
          }
        }
      }

      requiredAppIDForMDM2 = [payloads countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (requiredAppIDForMDM2)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v9 = *MEMORY[0x1E69E9840];

  return requiredAppIDForMDM2;
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
  signerCertificates = [(MCProfile *)self signerCertificates];
  if ([signerCertificates count])
  {
    firstObject = [signerCertificates firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
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
  signerCertificates = [(MCProfile *)self signerCertificates];
  if ([signerCertificates count])
  {
    v3 = +[MCProfile signerSummaryOfCertificate:](MCProfile, "signerSummaryOfCertificate:", [signerCertificates firstObject]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSignerCertificates:(id)certificates
{
  certificatesCopy = certificates;
  signerEvaluationQueue = self->_signerEvaluationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__MCProfile_setSignerCertificates___block_invoke;
  v7[3] = &unk_1E77D02D8;
  v7[4] = self;
  v8 = certificatesCopy;
  v6 = certificatesCopy;
  dispatch_sync(signerEvaluationQueue, v7);
}

- (id)installationWarningsIncludeUnsignedProfileWarning:(BOOL)warning
{
  warningCopy = warning;
  array = [MEMORY[0x1E695DF70] array];
  if (warningCopy && [(MCProfile *)self trustLevel]!= 2)
  {
    if ([(MCProfile *)self isSigned])
    {
      v6 = MCLocalizedString(@"INSTALL_WARNING_NOT_VERIFIED_TITLE");
      friendlyName = [(MCProfile *)self friendlyName];
      v15 = MCLocalizedFormat(@"INSTALL_WARNING_NOT_VERIFIED_P_TITLE", v8, v9, v10, v11, v12, v13, v14, friendlyName);
      v16 = [MCProfileWarning warningWithLocalizedTitle:v6 localizedBody:v15 isLongForm:0];
      [array addObject:v16];
    }

    else
    {
      v6 = MCLocalizedString(@"INSTALL_WARNING_NOT_SIGNED_TITLE");
      friendlyName = MCLocalizedString(@"INSTALL_WARNING_NOT_SIGNED");
      v15 = [MCProfileWarning warningWithLocalizedTitle:v6 localizedBody:friendlyName isLongForm:0];
      [array addObject:v15];
    }
  }

  if ([(MCProfile *)self isLocked])
  {
    removalPasscode = [(MCProfile *)self removalPasscode];
    v18 = [removalPasscode length];

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
    [array addObject:v22];
  }

  return array;
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
    payloads = [(MCProfile *)self payloads];
    v2 = [payloads countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v2)
    {
      v4 = *v9;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v9 != v4)
          {
            objc_enumerationMutation(payloads);
          }

          if ([*(*(&v8 + 1) + 8 * i) mustInstallNonInteractively])
          {
            LOBYTE(v2) = 1;
            goto LABEL_13;
          }
        }

        v2 = [payloads countByEnumeratingWithState:&v8 objects:v12 count:16];
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
    payloads = [(MCProfile *)self payloads];
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(payloads, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = payloads;
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

          type = [v9 type];

          if (type)
          {
            type2 = [v9 type];
            [v10 setObject:type2 forKeyedSubscript:@"PayloadType"];
          }

          identifier = [v9 identifier];

          if (identifier)
          {
            identifier2 = [v9 identifier];
            [v10 setObject:identifier2 forKeyedSubscript:@"PayloadIdentifier"];
          }

          uUID = [v9 UUID];

          if (uUID)
          {
            uUID2 = [v9 UUID];
            [v10 setObject:uUID2 forKeyedSubscript:@"PayloadUUID"];
          }

          displayName = [v9 displayName];

          if (displayName)
          {
            displayName2 = [v9 displayName];
            [v10 setObject:displayName2 forKeyedSubscript:@"PayloadDisplayName"];
          }

          payloadDescription = [v9 payloadDescription];

          if (payloadDescription)
          {
            payloadDescription2 = [v9 payloadDescription];
            [v10 setObject:payloadDescription2 forKeyedSubscript:@"PayloadDescription"];
          }

          organization = [v9 organization];

          if (organization)
          {
            organization2 = [v9 organization];
            [v10 setObject:organization2 forKeyedSubscript:@"PayloadOrganization"];
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
  signerCertificates = [(MCProfile *)self signerCertificates];
  v3 = [signerCertificates count] != 0;

  return v3;
}

- (int64_t)installType
{
  installOptions = [(MCProfile *)self installOptions];
  v3 = [installOptions objectForKey:@"installationType"];
  intValue = [v3 intValue];

  return intValue;
}

- (NSString)friendlyName
{
  v19 = *MEMORY[0x1E69E9840];
  displayName = [(MCProfile *)self displayName];
  v4 = [displayName length];

  if (v4)
  {
    displayName2 = [(MCProfile *)self displayName];
  }

  else
  {
    identifier = [(MCProfile *)self identifier];
    v7 = [identifier length];

    if (v7)
    {
      displayName2 = [(MCProfile *)self identifier];
    }

    else
    {
      uUID = [(MCProfile *)self UUID];
      v9 = [uUID length];

      if (v9)
      {
        displayName2 = [(MCProfile *)self UUID];
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
          selfCopy = self;
          v12 = v16;
          _os_log_impl(&dword_1A795B000, v11, OS_LOG_TYPE_ERROR, "Profile %{public}@ %p has no friendly name.", &v15, 0x16u);
        }

        displayName2 = @"Profile";
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return displayName2;
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

  expiryDate = [(MCProfile *)self expiryDate];
  v9 = expiryDate;
  if (expiryDate)
  {
    [v3 appendFormat:@"Expires     : %@\n", expiryDate];
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

  signerCertificates = [(MCProfile *)self signerCertificates];
  v6 = [signerCertificates count];

  if (v6)
  {
    [v4 appendFormat:@"Signers     : "];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    signerCertificates2 = [(MCProfile *)self signerCertificates];
    v8 = [signerCertificates2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(signerCertificates2);
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

        v9 = [signerCertificates2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

  signerCertificates = [(MCProfile *)self signerCertificates];
  v16 = [signerCertificates count];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x1E695DF70]);
    signerCertificates2 = [(MCProfile *)self signerCertificates];
    v19 = [v17 initWithCapacity:{objc_msgSend(signerCertificates2, "count")}];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    signerCertificates3 = [(MCProfile *)self signerCertificates];
    v21 = [signerCertificates3 countByEnumeratingWithState:&v37 objects:v41 count:16];
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
            objc_enumerationMutation(signerCertificates3);
          }

          v25 = *(*(&v37 + 1) + 8 * i);
          v26 = objc_autoreleasePoolPush();
          v27 = [MCProfile signerSummaryOfCertificate:v25];
          [v19 addObject:v27];

          objc_autoreleasePoolPop(v26);
        }

        v22 = [signerCertificates3 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKeyedSubscript:@"Signers"];
  }

  expiryDate = [(MCProfile *)self expiryDate];
  v29 = expiryDate;
  if (expiryDate)
  {
    v30 = [expiryDate description];
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
    friendlyName = [(MCProfile *)self friendlyName];
    localizedConsentText = self->_localizedConsentText;
    v8 = friendlyName;
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
  earliestCertificateExpiryDate = [(MCProfile *)self earliestCertificateExpiryDate];
  if (earliestCertificateExpiryDate && (v4 = earliestCertificateExpiryDate, [MEMORY[0x1E695DF00] dateWithTimeInterval:earliestCertificateExpiryDate sinceDate:-1209600.0], v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
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
  earliestCertificateExpiryDate = [(MCProfile *)self earliestCertificateExpiryDate];
  v4 = earliestCertificateExpiryDate;
  if (earliestCertificateExpiryDate)
  {
    expiryDate = earliestCertificateExpiryDate;
    if (self->_expiryDate)
    {
      v6 = [(NSDate *)earliestCertificateExpiryDate compare:?];
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

- (void)evaluateSignerTrustAsynchronouslyWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__MCProfile_evaluateSignerTrustAsynchronouslyWithCompletion___block_invoke;
  v7[3] = &unk_1E77D2E88;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
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

- (BOOL)doesSigningAllowReplacementWithProfile:(id)profile
{
  keyExistsAndHasValidFormat = 0;
  profileCopy = profile;
  if (CFPreferencesGetAppBooleanValue(@"MCOriginalSignerCheck", @"com.apple.profiled", &keyExistsAndHasValidFormat))
  {
    v5 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  v7 = [(MCProfile *)self doesSigningAllowReplacementWithProfile:profileCopy useOriginalCheck:v6];

  return v7;
}

- (BOOL)doesSigningAllowReplacementWithProfile:(id)profile useOriginalCheck:(BOOL)check
{
  checkCopy = check;
  v25 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  signerCertificate = [(MCProfile *)self signerCertificate];
  if (signerCertificate)
  {
    v8 = signerCertificate;
    signerCertificate2 = [profileCopy signerCertificate];
    if (signerCertificate2)
    {
      if (checkCopy && (-[MCProfile installOptions](self, "installOptions"), v10 = objc_claimAutoreleasedReturnValue(), [v10 objectForKeyedSubscript:@"signatureVersion"], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
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
              if (v19 && CFEqual(signerCertificate2, v19))
              {
                LOBYTE(signerCertificate2) = 1;
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

        LOBYTE(signerCertificate2) = 0;
LABEL_19:
      }

      else
      {
        LOBYTE(signerCertificate2) = CFEqual(signerCertificate2, v8) != 0;
      }
    }
  }

  else
  {
    LOBYTE(signerCertificate2) = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return signerCertificate2;
}

- (BOOL)isProfileUIInstallationEffectivelyAllowed
{
  v2 = +[MCRestrictionManager sharedManager];
  v3 = [v2 effectiveRestrictedBoolForSetting:@"allowUIConfigurationProfileInstallation"];

  return v3 != 2;
}

- (BOOL)mayInstallWithOptions:(id)options hasInteractionClient:(BOOL)client outError:(id *)error
{
  clientCopy = client;
  v67 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (clientCopy && ([(MCProfile *)self mustInstallNonInteractively]|| ![(MCProfile *)self isProfileUIInstallationEffectivelyAllowed]))
  {
    v37 = MEMORY[0x1E696ABC0];
    v38 = MCErrorArray(@"ERROR_PROFILE_NO_INTERACTIVE_INSTALLATION", v9, v10, v11, v12, v13, v14, v15, 0);
    v39 = v37;
    v40 = 4020;
    goto LABEL_28;
  }

  v16 = [optionsCopy objectForKeyedSubscript:@"isCloudProfile"];

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

    if (!error)
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
  payloads = [(MCProfile *)self payloads];
  v25 = [payloads countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v62;
    errorCopy = error;
    v56 = optionsCopy;
    while (1)
    {
      v28 = 0;
LABEL_11:
      if (*v62 != v27)
      {
        objc_enumerationMutation(payloads);
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

      v26 = [payloads countByEnumeratingWithState:&v61 objects:v66 count:16];
      v36 = 0;
      error = errorCopy;
      optionsCopy = v56;
      if (!v26)
      {
        goto LABEL_32;
      }
    }

LABEL_30:

    v42 = MEMORY[0x1E696ABC0];
    type = [v29 type];
    v51 = MCErrorArray(@"ERROR_UNNACEPTABLE_PAYLOAD_P_TYPE", v44, v45, v46, v47, v48, v49, v50, type);
    v36 = [v42 MCErrorWithDomain:@"MCInstallationErrorDomain" code:4022 descriptionArray:v51 errorType:@"MCFatalError"];

    error = errorCopy;
    optionsCopy = v56;
  }

  else
  {
    v36 = 0;
  }

LABEL_32:

  if (error)
  {
LABEL_33:
    if (v36)
    {
      v52 = v36;
      *error = v36;
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

- (id)restrictionsWithHeuristicsAppliedOutError:(id *)error
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  payloads = [(MCProfile *)self payloads];
  v7 = [payloads countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    selfCopy = self;
    errorCopy = error;
    v9 = *v47;
    v10 = 1;
LABEL_3:
    v11 = 0;
    v12 = v5;
    while (1)
    {
      if (*v47 != v9)
      {
        objc_enumerationMutation(payloads);
      }

      v13 = *(*(&v46 + 1) + 8 * v11);
      if (v13)
      {
        restrictions = [*(*(&v46 + 1) + 8 * v11) restrictions];
        mCValidateRestrictions = [restrictions MCValidateRestrictions];
      }

      else
      {
        mCValidateRestrictions = 1;
      }

      v16 = MEMORY[0x1E695DF90];
      restrictions2 = [v13 restrictions];
      v18 = [v16 dictionaryWithDictionary:restrictions2];

      if ((mCValidateRestrictions & 1) == 0)
      {
        [v18 MCSanitizeRestrictions];
      }

      v10 &= mCValidateRestrictions;
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
        v8 = [payloads countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    if (v10)
    {
      self = selfCopy;
      error = errorCopy;
    }

    else
    {
      v20 = _MCLogObjects;
      self = selfCopy;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A795B000, v20, OS_LOG_TYPE_DEFAULT, "Profile contains invalid restrictions", buf, 2u);
      }

      error = errorCopy;
    }
  }

  else
  {

    v19 = 0;
  }

  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  isSupervised = [mEMORY[0x1E69AD420] isSupervised];

  if ((isSupervised & 1) == 0)
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

  friendlyName = [(MCProfile *)self friendlyName];
  v35 = MCLocalizedErrorFormatByDevice(@"ENCRYPTION_POLICY_PAYLOAD_FAILURE_TEXT", v28, v29, v30, v31, v32, v33, v34, friendlyName);

  v36 = +[MCDeviceCapabilities currentDevice];
  v43 = 0;
  [v36 validateCapabilitiesRequiredByRestrictions:v5 localizedIncompatibilityMessage:v35 outError:&v43];
  v19 = v43;

  if (v19)
  {
LABEL_26:
    if (error)
    {
      v37 = v19;
      v38 = 0;
      *error = v19;
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
  installOptions = [(MCProfile *)self installOptions];
  v4 = [installOptions objectForKey:@"isInstalledByMDM"];
  bOOLValue = [v4 BOOLValue];

  v6 = [installOptions objectForKey:@"isInstalledInteractively"];
  v7 = v6;
  v8 = (bOOLValue & 1) != 0 || v6 && ![v6 BOOLValue] || -[MCProfile containsPayloadOfClass:](self, "containsPayloadOfClass:", objc_opt_class());

  return v8;
}

- (BOOL)isManagedByMDM
{
  managingProfileIdentifier = [(MCProfile *)self managingProfileIdentifier];
  v3 = managingProfileIdentifier != 0;

  return v3;
}

- (NSString)managingProfileIdentifier
{
  v3 = +[MCDependencyReader sharedReader];
  v4 = [v3 dependentsOfParent:self->_identifier inDomain:@"ManagedProfileToManagingProfile"];

  firstObject = [v4 firstObject];

  return firstObject;
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

- (id)payloadsOfKindOfClass:(Class)class
{
  v19 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  payloads = [(MCProfile *)self payloads];
  v6 = [payloads countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(payloads);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [array addObject:v10];
        }
      }

      v7 = [payloads countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [array copy];
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

+ (id)badFieldTypeErrorWithField:(id)field
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = MCErrorArray(@"ERROR_PROFILE_FIELD_INVALID_P_FIELD", a2, field, v3, v4, v5, v6, v7, field);
  v10 = [v8 MCErrorWithDomain:@"MCProfileErrorDomain" code:1003 descriptionArray:v9 errorType:@"MCFatalError"];

  return v10;
}

+ (id)missingFieldErrorWithField:(id)field
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = MCErrorArray(@"ERROR_PROFILE_REQUIRED_FIELD_MISSING_P_FIELD", a2, field, v3, v4, v5, v6, v7, field);
  v10 = [v8 MCErrorWithDomain:@"MCProfileErrorDomain" code:1002 descriptionArray:v9 errorType:@"MCFatalError"];

  return v10;
}

+ (id)profileDictionaryFromProfileData:(id)data outSignerCerts:(id *)certs outError:(id *)error
{
  v57 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (![dataCopy length])
  {
    v19 = MEMORY[0x1E696ABC0];
    v20 = MCErrorArray(@"ERROR_PROFILE_EMPTY", v9, v10, v11, v12, v13, v14, v15, 0);
    _malformedProfileError = [v19 MCErrorWithDomain:@"MCProfileErrorDomain" code:1005 descriptionArray:v20 errorType:@"MCFatalError"];

    v17 = 0;
    goto LABEL_14;
  }

  v16 = [MEMORY[0x1E696AE40] MCSafePropertyListWithData:dataCopy options:1 format:0 error:0];
  if (v16)
  {
    v17 = v16;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0;
      goto LABEL_8;
    }

    _malformedProfileError = [self _malformedProfileError];
LABEL_14:
    v18 = 0;
    if (_malformedProfileError)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v53 = 0;
  v22 = [MCProfile dataFromCMSEncodedData:dataCopy outSignerCertificates:&v53];
  v18 = v53;
  if (!v22)
  {
    v17 = 0;
LABEL_19:
    _malformedProfileError = [self _malformedProfileError];
    if (_malformedProfileError)
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
    _malformedProfileError = [self _malformedProfileError];
    goto LABEL_46;
  }

  certsCopy = certs;
  v52 = 0;
  v51 = 0;
  v24 = [MCProfile removeOptionalObjectInDictionary:v17 key:@"EncryptedPayloadContent" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v51];
  _malformedProfileError = v51;
  v45 = v24;
  if (v24)
  {
    v50 = _malformedProfileError;
    v25 = [MCCrypto objectFromEncryptedData:v24 outCertificate:&v52 outError:&v50];
    v26 = v50;

    if (v26)
    {
      _malformedProfileError = v26;
LABEL_44:

      v24 = v45;
      goto LABEL_45;
    }

    if (v25)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        _malformedProfileError = [self _malformedProfileError];
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

    _malformedProfileError = 0;
    v24 = v45;
  }

  if ([v18 count])
  {
    v42 = v23;
    errorCopy = error;
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

    if (certsCopy)
    {
      v41 = v25;
      *certsCopy = v25;
    }

    v23 = v42;
    error = errorCopy;
    goto LABEL_44;
  }

LABEL_45:

LABEL_46:
  if (!_malformedProfileError)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (error)
  {
    v27 = _malformedProfileError;
    v28 = 0;
    *error = _malformedProfileError;
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
  identifier = [(MCProfile *)self identifier];
  v3 = [identifier MCHashedFilenameWithExtension:@"stub"];

  return v3;
}

- (NSString)profileIDHashFileName
{
  identifier = [(MCProfile *)self identifier];
  v3 = [identifier MCHashedFilenameWithExtension:@"plist"];

  return v3;
}

- (NSString)profileDataFileName
{
  identifier = [(MCProfile *)self identifier];
  v3 = [identifier MCHashedFilenameWithExtension:@"pdata"];

  return v3;
}

- (MCProfile)initWithDictionary:(id)dictionary signerCerts:(id)certs allowEmptyPayload:(BOOL)payload outError:(id *)error
{
  v156 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  certsCopy = certs;
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
  v16 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"MCProfileIsRemovalStub" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v147];
  mCCopyAsPrimaryError = v147;
  if (!mCCopyAsPrimaryError)
  {
    v11->_isStub = [v16 BOOLValue];
    v146 = 0;
    v18 = [MCProfile removeRequiredObjectInDictionary:dictionaryCopy key:@"PayloadVersion" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" missingDataCode:1002 missingDataErrorString:@"ERROR_PROFILE_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v146];
    v19 = v146;
    if (v19)
    {
      mCCopyAsPrimaryError = v19;

      goto LABEL_5;
    }

    intValue = [v18 intValue];
    v11->_version = intValue;
    if (v11->_isStub)
    {
      if (intValue >= 3)
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

    else if ((intValue - 3) <= 0xFFFFFFFD)
    {
      v39 = MEMORY[0x1E696ABC0];
      v40 = MCErrorArray(@"ERROR_UNSUPPORTED_VERSION", v30, v31, v32, v33, v34, v35, v36, 0);
      v41 = [v39 MCErrorWithDomain:@"MCProfileErrorDomain" code:1001 descriptionArray:v40 errorType:@"MCFatalError"];
      mCCopyAsPrimaryError = [v41 MCCopyAsPrimaryError];
LABEL_40:

LABEL_41:
      if (mCCopyAsPrimaryError)
      {
        goto LABEL_6;
      }

LABEL_42:
      v28 = v11;
      goto LABEL_43;
    }

    v145 = 0;
    v42 = [MCProfile removeRequiredNonZeroLengthStringInDictionary:dictionaryCopy key:@"PayloadIdentifier" errorDomain:@"MCProfileErrorDomain" missingDataCode:1002 missingDataErrorString:@"ERROR_PROFILE_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v145];
    mCCopyAsPrimaryError = v145;
    identifier = v11->_identifier;
    v11->_identifier = v42;

    if (!mCCopyAsPrimaryError)
    {
      v144 = 0;
      v44 = [MCProfile removeRequiredNonZeroLengthStringInDictionary:dictionaryCopy key:@"PayloadUUID" errorDomain:@"MCProfileErrorDomain" missingDataCode:1002 missingDataErrorString:@"ERROR_PROFILE_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v144];
      mCCopyAsPrimaryError = v144;
      UUID = v11->_UUID;
      v11->_UUID = v44;
    }

    v40 = [dictionaryCopy objectForKey:@"PayloadDescription"];
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
        [dictionaryCopy removeObjectForKey:@"PayloadDescription"];
        if (mCCopyAsPrimaryError)
        {
          goto LABEL_41;
        }

        v115 = v40;
        v52 = *(v46 + 1640);
        v143 = 0;
        v53 = [v52 removeOptionalNonZeroLengthStringInDictionary:dictionaryCopy key:@"PayloadDisplayName" errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v143];
        mCCopyAsPrimaryError = v143;
        displayName = v11->_displayName;
        v11->_displayName = v53;

        if (!mCCopyAsPrimaryError)
        {
          v142 = 0;
          v55 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:dictionaryCopy key:@"PayloadOrganization" errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v142];
          mCCopyAsPrimaryError = v142;
          organization = v11->_organization;
          v11->_organization = v55;
        }

        mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
        isSupervised = [mEMORY[0x1E69AD420] isSupervised];

        if (isSupervised)
        {
          if (!mCCopyAsPrimaryError)
          {
            v141 = 0;
            v41 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"PayloadRemovalDisallowed" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v141];
            v59 = v141;
            if (v59)
            {
LABEL_38:
              mCCopyAsPrimaryError = v59;
              goto LABEL_39;
            }

            v11->_isLocked = [v41 BOOLValue];

LABEL_37:
            v140 = 0;
            v41 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"PayloadRebootSuggested" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v140];
            v59 = v140;
            if (v59)
            {
              goto LABEL_38;
            }

            v114 = v41;
            v11->_needsReboot = [v41 BOOLValue];
            v139 = 0;
            v62 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"PayloadExpirationDate" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v139];
            mCCopyAsPrimaryError = v139;
            expiryDate = v11->_expiryDate;
            v11->_expiryDate = v62;

            if (mCCopyAsPrimaryError)
            {
              goto LABEL_124;
            }

            v138 = 0;
            v64 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:dictionaryCopy key:@"ProductVersion" errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v138];
            mCCopyAsPrimaryError = v138;
            productVersion = v11->_productVersion;
            v11->_productVersion = v64;

            if (mCCopyAsPrimaryError)
            {
              goto LABEL_124;
            }

            v137 = 0;
            v66 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:dictionaryCopy key:@"ProductBuildVersion" errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v137];
            mCCopyAsPrimaryError = v137;
            productBuildVersion = v11->_productBuildVersion;
            v11->_productBuildVersion = v66;

            if (mCCopyAsPrimaryError || (v136 = 0, [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"RemovalDate" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v136], v68 = objc_claimAutoreleasedReturnValue(), mCCopyAsPrimaryError = v136, removalDate = v11->_removalDate, v11->_removalDate = v68, removalDate, mCCopyAsPrimaryError))
            {
LABEL_124:
              v41 = v114;
              v40 = v115;
              goto LABEL_40;
            }

            v135 = 0;
            v104 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"TargetDeviceType" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v135];
            v70 = v135;
            if (v70)
            {
              mCCopyAsPrimaryError = v70;
LABEL_123:

              goto LABEL_124;
            }

            v11->_targetDeviceType = [(NSDate *)v104 unsignedIntValue];

            v134 = 0;
            v71 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"DurationUntilRemoval" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v134];
            mCCopyAsPrimaryError = v134;
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

            if (mCCopyAsPrimaryError || (v133 = 0, [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"ConsentText" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v133], v78 = objc_claimAutoreleasedReturnValue(), mCCopyAsPrimaryError = v133, (v103 = v78) == 0))
            {
              v103 = 0;
            }

            else if ([v78 count])
            {
              preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
              allKeys = [v103 allKeys];
              v102 = preferredLanguages;
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

                      firstObject = v83;
                      allValues = v98;
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
                firstObject = v84;
              }

              else
              {
                allValues = [v103 allValues];
                firstObject = [allValues firstObject];
LABEL_105:
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_storeStrong(&v11->_localizedConsentText, firstObject);
              }

              else
              {
                v91 = [MCProfile badFieldTypeErrorWithField:@"ConsentText"];
              }
            }

            if (v11->_isStub)
            {
              if (mCCopyAsPrimaryError)
              {

LABEL_122:
                goto LABEL_123;
              }

              v124 = 0;
              v101 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"SignerCerts" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v124];
              mCCopyAsPrimaryError = v124;
              if (mCCopyAsPrimaryError)
              {
LABEL_121:

                goto LABEL_122;
              }
            }

            else
            {
              v101 = certsCopy;
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
            if (mCCopyAsPrimaryError)
            {
              v86 = 0;
            }

            else
            {
              v119 = 0;
              v86 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"ProfileWasEncrypted" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v119];
              v87 = v119;
              if (v87)
              {
                mCCopyAsPrimaryError = v87;
              }

              else
              {
                v11->_encrypted = [v86 BOOLValue];
                [dictionaryCopy removeObjectForKey:@"ProfileWasTrusted"];
                [dictionaryCopy removeObjectForKey:@"ProfileWasSigned"];
                [dictionaryCopy removeObjectForKey:@"ProfileTrustLevel"];
                if (v11->_isStub)
                {
                  v118 = 0;
                  v89 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"InstallDate" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v118];
                  mCCopyAsPrimaryError = v118;
                  installDate = v11->_installDate;
                  v11->_installDate = v89;

                  if (mCCopyAsPrimaryError)
                  {
                  }

                  else
                  {
                    v117 = 0;
                    v113 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"ProfileWasLocked" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v117];
                    v92 = v117;
                    if (v92)
                    {
                      mCCopyAsPrimaryError = v92;
                    }

                    else
                    {
                      v11->_isLocked = [v113 BOOLValue];
                      v116 = 0;
                      v93 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"InstallOptions" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v116];
                      mCCopyAsPrimaryError = v116;
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
                  mCCopyAsPrimaryError = 0;
                }
              }
            }

            goto LABEL_121;
          }
        }

        else if (!mCCopyAsPrimaryError)
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
    v50 = mCCopyAsPrimaryError;
    mCCopyAsPrimaryError = v51;
    goto LABEL_27;
  }

LABEL_5:

LABEL_6:
  v20 = v11->_signerEvaluationQueue;
  v11->_signerEvaluationQueue = 0;

  v21 = v11->_trustEvaluationQueue;
  v11->_trustEvaluationQueue = 0;

  v22 = [(MCProfile *)v11 malformedProfileErrorWithError:mCCopyAsPrimaryError];
  v23 = v22;
  if (error)
  {
    v24 = v22;
    *error = v23;
  }

  v25 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    v26 = v25;
    mCVerboseDescription = [v23 MCVerboseDescription];
    *buf = 134218242;
    v150 = v11;
    v151 = 2114;
    v152 = mCVerboseDescription;
    _os_log_impl(&dword_1A795B000, v26, OS_LOG_TYPE_ERROR, "%p Can't parse profile: %{public}@", buf, 0x16u);
  }

  v28 = 0;
LABEL_43:

  v60 = *MEMORY[0x1E69E9840];
  return v28;
}

- (id)malformedProfileErrorWithError:(id)error
{
  errorCopy = error;
  friendlyName = [(MCProfile *)self friendlyName];
  v13 = friendlyName;
  v14 = MEMORY[0x1E696ABC0];
  if (friendlyName)
  {
    MCErrorArray(@"ERROR_PROFILE_MALFORMED_P_ID", v6, v7, v8, v9, v10, v11, v12, friendlyName);
  }

  else
  {
    MCErrorArray(@"MALFORMED_PAYLOAD_ERROR_DESCRIPTION", v6, v7, v8, v9, v10, v11, v12, 0);
  }
  v15 = ;
  v16 = [v14 MCErrorWithDomain:@"MCProfileErrorDomain" code:1000 descriptionArray:v15 underlyingError:errorCopy errorType:@"MCFatalError"];

  return v16;
}

- (BOOL)writeStubToDirectory:(id)directory
{
  directoryCopy = directory;
  stubFileName = [(MCProfile *)self stubFileName];
  v6 = [directoryCopy stringByAppendingPathComponent:stubFileName];

  LOBYTE(self) = [(MCProfile *)self writeStubToPath:v6];
  return self;
}

- (BOOL)writeStubToPath:(id)path
{
  pathCopy = path;
  stubDictionary = [(MCProfile *)self stubDictionary];
  v6 = [stubDictionary MCWriteToBinaryFile:pathCopy];

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

  signerCertificates = [(MCProfile *)self signerCertificates];
  v18 = [signerCertificates count];

  if (v18)
  {
    v19 = MEMORY[0x1E695DF70];
    signerCertificates2 = [(MCProfile *)self signerCertificates];
    v21 = [v19 arrayWithCapacity:{objc_msgSend(signerCertificates2, "count")}];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    signerCertificates3 = [(MCProfile *)self signerCertificates];
    v23 = [signerCertificates3 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
            objc_enumerationMutation(signerCertificates3);
          }

          v27 = SecCertificateCopyData(*(*(&v31 + 1) + 8 * i));
          if (v27)
          {
            [v21 addObject:v27];
          }
        }

        v24 = [signerCertificates3 countByEnumeratingWithState:&v31 objects:v35 count:16];
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

- (BOOL)containsPayloadOfClass:(Class)class
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  payloads = [(MCProfile *)self payloads];
  v4 = [payloads countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(payloads);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v5 = [payloads countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)containsAnyPayloadOfClasses:(id)classes
{
  v17 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  payloads = [(MCProfile *)self payloads];
  v6 = [payloads countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(payloads);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([classesCopy containsObject:objc_opt_class()])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [payloads countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)containsOnlyPayloadsOfClasses:(id)classes
{
  v19 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  payloads = [(MCProfile *)self payloads];
  v6 = [payloads countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(payloads);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (![classesCopy containsObject:objc_opt_class()])
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v7 = [payloads countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (unint64_t)countOfPayloadsOfClass:(Class)class
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  payloads = [(MCProfile *)self payloads];
  v4 = [payloads countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(payloads);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v6 += objc_opt_isKindOfClass() & 1;
      }

      v5 = [payloads countByEnumeratingWithState:&v12 objects:v16 count:16];
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

+ (id)removeRequiredObjectInDictionary:(id)dictionary key:(id)key type:(Class)type errorDomain:(id)domain missingDataCode:(int64_t)code missingDataErrorString:(id)string invalidDataCode:(int64_t)dataCode invalidDataErrorString:(id)self0 outError:(id *)self1
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  domainCopy = domain;
  stringCopy = string;
  errorStringCopy = errorString;
  v27 = [dictionaryCopy objectForKey:keyCopy];
  if (v27)
  {
    if (objc_opt_isKindOfClass())
    {
      [dictionaryCopy removeObjectForKey:keyCopy];
      v35 = v27;
      goto LABEL_10;
    }

    if (error)
    {
      v41 = MEMORY[0x1E696ABC0];
      v37 = MCErrorArray(errorStringCopy, v28, v29, v30, v31, v32, v33, v34, keyCopy);
      v38 = v41;
      v39 = domainCopy;
      codeCopy = dataCode;
      goto LABEL_8;
    }
  }

  else if (error)
  {
    v36 = MEMORY[0x1E696ABC0];
    v37 = MCErrorArray(stringCopy, v20, v21, v22, v23, v24, v25, v26, keyCopy);
    v38 = v36;
    v39 = domainCopy;
    codeCopy = code;
LABEL_8:
    *error = [v38 MCErrorWithDomain:v39 code:codeCopy descriptionArray:v37 errorType:@"MCFatalError"];
  }

  v35 = 0;
LABEL_10:

  return v35;
}

+ (id)removeOptionalObjectInDictionary:(id)dictionary key:(id)key type:(Class)type errorDomain:(id)domain invalidDataCode:(int64_t)code invalidDataErrorString:(id)string outError:(id *)error
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  domainCopy = domain;
  stringCopy = string;
  v17 = [dictionaryCopy objectForKey:keyCopy];
  if (v17 && ([dictionaryCopy removeObjectForKey:keyCopy], (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (error)
    {
      v26 = MEMORY[0x1E696ABC0];
      v27 = MCErrorArray(stringCopy, v18, v19, v20, v21, v22, v23, v24, keyCopy);
      *error = [v26 MCErrorWithDomain:domainCopy code:code descriptionArray:v27 errorType:@"MCFatalError"];
    }

    v25 = 0;
  }

  else
  {
    v25 = v17;
  }

  return v25;
}

+ (id)removeRequiredNonZeroLengthStringInDictionary:(id)dictionary key:(id)key errorDomain:(id)domain missingDataCode:(int64_t)code missingDataErrorString:(id)string invalidDataCode:(int64_t)dataCode invalidDataErrorString:(id)errorString outError:(id *)self0
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  domainCopy = domain;
  stringCopy = string;
  errorStringCopy = errorString;
  v20 = [dictionaryCopy objectForKey:keyCopy];
  if (v20 && ([dictionaryCopy removeObjectForKey:keyCopy], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [dictionaryCopy removeObjectForKey:keyCopy];
    if (error)
    {
      v36 = MEMORY[0x1E696ABC0];
      v37 = MCErrorArray(errorStringCopy, v29, v30, v31, v32, v33, v34, v35, keyCopy);
      v38 = v36;
      v39 = domainCopy;
      codeCopy = dataCode;
LABEL_9:
      *error = [v38 MCErrorWithDomain:v39 code:codeCopy descriptionArray:v37 errorType:@"MCFatalError"];
    }
  }

  else
  {
    if ([v20 length])
    {
      v28 = v20;
      goto LABEL_11;
    }

    if (error)
    {
      v41 = MEMORY[0x1E696ABC0];
      v37 = MCErrorArray(stringCopy, v21, v22, v23, v24, v25, v26, v27, keyCopy);
      v38 = v41;
      v39 = domainCopy;
      codeCopy = code;
      goto LABEL_9;
    }
  }

  v28 = 0;
LABEL_11:

  return v28;
}

+ (id)removeOptionalNonZeroLengthStringInDictionary:(id)dictionary key:(id)key errorDomain:(id)domain invalidDataCode:(int64_t)code invalidDataErrorString:(id)string outError:(id *)error
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  domainCopy = domain;
  stringCopy = string;
  v17 = [dictionaryCopy objectForKey:keyCopy];
  if (!v17)
  {
    goto LABEL_4;
  }

  [dictionaryCopy removeObjectForKey:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v17 length])
    {
LABEL_4:
      error = v17;
      goto LABEL_8;
    }
  }

  else
  {
    if (!error)
    {
      goto LABEL_8;
    }

    v25 = MEMORY[0x1E696ABC0];
    v26 = MCErrorArray(stringCopy, v18, v19, v20, v21, v22, v23, v24, keyCopy);
    *error = [v25 MCErrorWithDomain:domainCopy code:code descriptionArray:v26 errorType:@"MCFatalError"];
  }

  error = 0;
LABEL_8:

  return error;
}

+ (BOOL)checkString:(id)string isOneOfStrings:(id)strings key:(id)key errorDomain:(id)domain errorCode:(int64_t)code errorString:(id)errorString outError:(id *)error
{
  keyCopy = key;
  domainCopy = domain;
  errorStringCopy = errorString;
  v17 = [strings containsObject:string];
  v25 = v17;
  if (error && (v17 & 1) == 0)
  {
    v26 = MEMORY[0x1E696ABC0];
    v27 = MCErrorArray(errorStringCopy, v18, v19, v20, v21, v22, v23, v24, keyCopy);
    *error = [v26 MCErrorWithDomain:domainCopy code:code descriptionArray:v27 errorType:@"MCFatalError"];
  }

  return v25;
}

+ (int)evaluateTrust:(__SecTrust *)trust
{
  if (SecTrustGetCertificateCount(trust) != 1 || (v5 = [MCCrypto copyLeafCertificateFromTrust:trust]) == 0 || ((v6 = v5, !SecCertificateIsSelfSignedCA()) ? (v7 = 1) : ![MCKeychain itemExistsInKeychain:v6 useSystemKeychain:1]? ((v7 = 0, ![MCKeychain itemExistsInKeychain:v6 useSystemKeychain:0]) ? (v3 = 0) : (v3 = 2)) : (v7 = 0, v3 = 2), CFRelease(v6), (v7 & 1) != 0))
  {
    error = 0;
    if (SecTrustEvaluateWithError(trust, &error))
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

+ (int)evaluateTrustOfCertificateChain:(id)chain signatureVersion:(id)version outIsAllowedToInstallUnsupportedPayloads:(BOOL *)payloads outIsAllowedToWriteDefaults:(BOOL *)defaults outIsAllowedToInstallSupervisedRestrictionsOnUnsupervisedDevices:(BOOL *)devices
{
  v44 = *MEMORY[0x1E69E9840];
  chainCopy = chain;
  LODWORD(version) = [version intValue];
  v12 = [chainCopy count];
  if (version < 2)
  {
    if (v12 == 1)
    {
      [chainCopy objectAtIndex:0];
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
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(chainCopy, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v18 = chainCopy;
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

    if (defaults)
    {
      v25 = +[MCHacks sharedHacks];
      v14 = [v25 sanitizedProfileSignerCertificateChainIsAllowedToWriteDefaults:v17];

      if (payloads)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v14 = 0;
      if (payloads)
      {
LABEL_27:
        v26 = +[MCHacks sharedHacks];
        v15 = [v26 sanitizedProfileSignerCertificateChainIsAllowedToInstallUnsupportedPayload:v17];

        if (devices)
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
    if (devices)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  if (!v12 || ![chainCopy objectAtIndex:0] || !SecCertificateIsSelfSignedCA())
  {
    goto LABEL_10;
  }

  SecTrustStoreForDomain();
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 2 * (SecTrustStoreContains() != 0);
LABEL_33:
  if ([chainCopy count] && !v16)
  {
    devicesCopy = devices;
    v28 = v14;
    v29 = SecCertificateCopySubjectSummary([chainCopy objectAtIndex:0]);
    v30 = MCHCUCopyHostCertificateForMappedLabel(v29);
    if (!v30)
    {
      v16 = 0;
LABEL_47:

      v14 = v28;
      devices = devicesCopy;
      goto LABEL_48;
    }

    v31 = v30;
    v32 = SecPolicyCreateBasicX509();
    trust = 0;
    if (!SecTrustCreateWithCertificates(chainCopy, v32, &trust))
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
  if (payloads)
  {
    *payloads = v15;
  }

  if (defaults)
  {
    *defaults = v14;
  }

  if (devices)
  {
    *devices = v13;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (id)signerSummaryOfCertificate:(__SecCertificate *)certificate
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
    v9 = SecCertificateCopySubjectSummary(certificate);
  }

  return v9;
}

+ (id)dataFromCMSEncodedData:(id)data outSignerCertificates:(id *)certificates
{
  dataCopy = data;
  if ([dataCopy length])
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

    if (certificates)
    {
      v8 = v7;
      *certificates = v7;
    }
  }

  return 0;
}

- (id)signatureVersion
{
  if ([(MCProfile *)self isStub])
  {
    installOptions = [(MCProfile *)self installOptions];
    v4 = [installOptions objectForKey:@"signatureVersion"];
  }

  else
  {
    v4 = +[MCProfile newProfileSignatureVersion];
  }

  return v4;
}

+ (id)stringForDeviceType:(unint64_t)type
{
  v3 = @"vision";
  v4 = @"error";
  if (type != 99)
  {
    v4 = 0;
  }

  if (type != 6)
  {
    v3 = v4;
  }

  v5 = @"mac";
  if (type != 5)
  {
    v5 = 0;
  }

  if (type == 4)
  {
    v5 = @"tv";
  }

  if (type <= 5)
  {
    v3 = v5;
  }

  v6 = @"watch";
  v7 = @"homepod";
  if (type != 3)
  {
    v7 = 0;
  }

  if (type != 2)
  {
    v6 = v7;
  }

  v8 = @"phone";
  if (type != 1)
  {
    v8 = 0;
  }

  if (!type)
  {
    v8 = @"any";
  }

  if (type <= 1)
  {
    v6 = v8;
  }

  if (type <= 3)
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
  identifier = [(MCProfile *)self identifier];
  uUID = [(MCProfile *)self UUID];
  v6 = [v3 stringWithFormat:@"%@-%@", identifier, uUID];

  return v6;
}

- (id)payloadsWithClass:(Class)class
{
  v19 = *MEMORY[0x1E69E9840];
  payloads = [(MCProfile *)self payloads];
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = payloads;
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