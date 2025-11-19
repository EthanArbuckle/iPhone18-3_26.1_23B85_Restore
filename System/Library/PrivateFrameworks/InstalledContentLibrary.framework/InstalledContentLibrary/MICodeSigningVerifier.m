@interface MICodeSigningVerifier
+ (BOOL)_validateBundleExecutable:(id)a3 againstStubAt:(id)a4 trustedHashes:(id)a5 sectionName:(id)a6 signingIdentifier:(id)a7 error:(id *)a8;
+ (BOOL)_validateStubSignature:(id)a3 withSigningID:(id)a4 error:(id *)a5;
+ (BOOL)validateWatchKitV1StubExecutableBundle:(id)a3 error:(id *)a4;
+ (BOOL)validateWatchKitV2StubExecutableBundle:(id)a3 error:(id *)a4;
+ (id)_validateSignatureAndCopyInfoForURL:(id)a3 withOptions:(id)a4 error:(id *)a5;
+ (id)codeSigningVerifierForBundle:(id)a3;
- (BOOL)_getMICodeSignerTypeFromMISInfoDict:(id)a3 codeSignerType:(unint64_t *)a4 profileType:(unint64_t *)a5 error:(id *)a6;
- (BOOL)performValidationWithError:(id *)a3;
- (MICodeSigningVerifier)initWithBundle:(id)a3;
- (id)_loadSystemDetachedSignatureForBundleID:(id)a3 error:(id *)a4;
@end

@implementation MICodeSigningVerifier

- (MICodeSigningVerifier)initWithBundle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MICodeSigningVerifier;
  v6 = [(MICodeSigningVerifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundle, a3);
    v7->_logResourceVerificationErrors = 1;
  }

  return v7;
}

+ (id)codeSigningVerifierForBundle:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBundle:v3];

  return v4;
}

+ (id)_validateSignatureAndCopyInfoForURL:(id)a3 withOptions:(id)a4 error:(id *)a5
{
  v24[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  MIAssertHighResourceUsage();
  v9 = objc_autoreleasePoolPush();
  v10 = [v7 path];
  v11 = MISValidateSignatureAndCopyInfo();

  objc_autoreleasePoolPop(v9);
  MIClearResourceAssertion();
  if (v11)
  {
    v23[0] = @"LegacyErrorString";
    v23[1] = @"LibMISErrorNumber";
    v24[0] = @"ApplicationVerificationFailed";
    v12 = [MEMORY[0x1E696AD98] numberWithInt:v11];
    v24[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v14 = [v7 path];
    v20 = MIErrorStringForMISError(v11);
    v16 = _CreateAndLogError("+[MICodeSigningVerifier _validateSignatureAndCopyInfoForURL:withOptions:error:]", 80, @"MIInstallerErrorDomain", 13, 0, v13, @"Failed to verify code signature of %@ : 0x%08x (%@)", v15, v14);
  }

  else
  {
    v21[0] = @"LegacyErrorString";
    v21[1] = @"LibMISErrorNumber";
    v22[0] = @"ApplicationVerificationFailed";
    v22[1] = &unk_1F2888E50;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v13 = [v7 path];
    v16 = _CreateAndLogError("+[MICodeSigningVerifier _validateSignatureAndCopyInfoForURL:withOptions:error:]", 85, @"MIInstallerErrorDomain", 13, 0, v12, @"Failed to get info dictionary from MISValidateSignatureAndCopyInfo when verifying %@", v19, v13);
  }

  if (a5)
  {
    v17 = v16;
    *a5 = v16;
  }

  return 0;
}

- (id)_loadSystemDetachedSignatureForBundleID:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[MIDaemonConfiguration sharedInstance];
  v7 = [v6 systemAppDetachedSignaturesDirectory];
  v8 = [v7 URLByAppendingPathComponent:v5 isDirectory:0];

  v16 = 0;
  v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v8 options:3 error:&v16];
  v10 = v16;
  if (!v9)
  {
    v15 = [v8 path];
    v12 = _CreateAndLogError("[MICodeSigningVerifier _loadSystemDetachedSignatureForBundleID:error:]", 110, @"MIInstallerErrorDomain", 129, v10, 0, @"Could not load detached signature data for %@ from %@", v11, v5);

    if (a4)
    {
      v13 = v12;
      *a4 = v12;
    }

    v10 = v12;
  }

  return v9;
}

- (BOOL)_getMICodeSignerTypeFromMISInfoDict:(id)a3 codeSignerType:(unint64_t *)a4 profileType:(unint64_t *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69E57B0]];
  objc_opt_class();
  v12 = v11;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    v20 = [(MICodeSigningVerifier *)self bundle];
    v22 = _CreateAndLogError("[MICodeSigningVerifier _getMICodeSignerTypeFromMISInfoDict:codeSignerType:profileType:error:]", 228, @"MIInstallerErrorDomain", 4, 0, 0, @"kMISValidationInfoSignerType is not set or is not a number for %@", v21, v20);
    goto LABEL_9;
  }

  v14 = v10;
  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69E57D0]];
  v16 = MIBooleanValue(v15, 0);

  if (v16)
  {
    v17 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69E57D8]];
    v18 = MIBooleanValue(v17, 0);

    if (v18)
    {
      v19 = 2;
    }

    else
    {
      v25 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69E57C8]];
      v26 = MIBooleanValue(v25, 0);

      if (v26)
      {
        v19 = 3;
      }

      else
      {
        v19 = 4;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  v27 = [v13 longValue];
  if (v27 <= 2)
  {
    if (v27 < 3)
    {
      goto LABEL_20;
    }

    goto LABEL_32;
  }

  if (v27 > 4)
  {
    if (v27 == 5)
    {
      v31 = @"MISSignerType is MISSignerTypeLegacyVPN which is not supported by MI; returning MICodeSignerTypeUnknown";
      v32 = 255;
      goto LABEL_33;
    }

    if (v27 == 6)
    {
      v27 = 5;
      if (!a4)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

LABEL_32:
    v34 = v27;
    v31 = @"kMISValidationInfoSignerType was set to unknown value %ld";
    v32 = 261;
LABEL_33:
    v22 = _CreateAndLogError("[MICodeSigningVerifier _getMICodeSignerTypeFromMISInfoDict:codeSignerType:profileType:error:]", v32, @"MIInstallerErrorDomain", 4, 0, 0, v31, v28, v34);
    if (a6)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

  if (v27 == 3)
  {
    if (v19 != 1)
    {
      v27 = 3;
      if (!a4)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v20 = [(MICodeSigningVerifier *)self bundle];
    v29 = [v20 identifier];
    v22 = _CreateAndLogError("[MICodeSigningVerifier _getMICodeSignerTypeFromMISInfoDict:codeSignerType:profileType:error:]", 246, @"MIInstallerErrorDomain", 4, 0, 0, @"kMISValidationInfoValidatedByProfile was not set for %@ but kMISValidationInfoSignerType was set to MISSignerTypeProfile", v30, v29);

LABEL_9:
    if (a6)
    {
LABEL_10:
      v23 = v22;
      v24 = 0;
      *a6 = v22;
      goto LABEL_35;
    }

LABEL_34:
    v24 = 0;
    goto LABEL_35;
  }

LABEL_20:
  if (a4)
  {
LABEL_21:
    *a4 = v27;
  }

LABEL_22:
  v22 = 0;
  if (a5)
  {
    *a5 = v19;
  }

  v24 = 1;
LABEL_35:

  return v24;
}

- (BOOL)performValidationWithError:(id *)a3
{
  v107[5] = *MEMORY[0x1E69E9840];
  v94 = 0;
  v95 = 0;
  v4 = ![(MICodeSigningVerifier *)self validateResources];
  v5 = +[MITestManager sharedInstance];
  v6 = [(MICodeSigningVerifier *)self bundle];
  v86 = [v6 bundleURL];
  v85 = [v86 path];
  v88 = v6;
  v87 = [v6 identifier];
  if ([(MICodeSigningVerifier *)self verifyTrustCachePresence])
  {
    [(MICodeSigningVerifier *)self setAllowAdhocSigning:1];
  }

  v84 = v5;
  if ([(MICodeSigningVerifier *)self validateResources])
  {
    LOBYTE(v4) = [(MICodeSigningVerifier *)self validateUsingDetachedSignature]| v4;
  }

  v82 = *MEMORY[0x1E69E5840];
  v106[0] = *MEMORY[0x1E69E5840];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:v4 & 1];
  v107[0] = v7;
  v80 = *MEMORY[0x1E69E5808];
  v106[1] = *MEMORY[0x1E69E5808];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[MICodeSigningVerifier logResourceVerificationErrors](self, "logResourceVerificationErrors")}];
  v107[1] = v8;
  v76 = *MEMORY[0x1E69E57E0];
  v106[2] = *MEMORY[0x1E69E57E0];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[MICodeSigningVerifier allowAdhocSigning](self, "allowAdhocSigning")}];
  v10 = *MEMORY[0x1E69E57E8];
  v107[2] = v9;
  v107[3] = MEMORY[0x1E695E118];
  v11 = *MEMORY[0x1E69E5810];
  v106[3] = v10;
  v106[4] = v11;
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[MICodeSigningVerifier performOnlineAuthorization](self, "performOnlineAuthorization")}];
  v107[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:v106 count:5];
  v14 = [v13 mutableCopy];

  if ([(MICodeSigningVerifier *)self verifyTrustCachePresence])
  {
    [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69E5828]];
  }

  if ([(MICodeSigningVerifier *)self skipProfileIDValidation])
  {
    [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69E5820]];
  }

  if (gLogHandle && *(gLogHandle + 44) >= 7)
  {
    v67 = v85;
    v73 = v14;
    MOLogWrite();
  }

  v15 = MIReserveMemoryForValidation([v88 estimatedMemoryUsageToValidate], v87);
  v93 = 0;
  v16 = [objc_opt_class() _validateSignatureAndCopyInfoForURL:v86 withOptions:v14 error:&v93];
  v17 = v93;
  MIReturnMemoryUsedForValidation(v15);
  if (!v16)
  {
    v81 = 0;
    v83 = 0;
    v30 = 0;
    v25 = 0;
    v31 = v84;
    v32 = a3;
    if (!a3)
    {
      goto LABEL_55;
    }

    goto LABEL_80;
  }

  v77 = v14;
  if ([(MICodeSigningVerifier *)self validateResources]&& [(MICodeSigningVerifier *)self validateUsingDetachedSignature])
  {
    v92 = v17;
    v18 = [(MICodeSigningVerifier *)self _loadSystemDetachedSignatureForBundleID:v87 error:&v92];
    v19 = v92;

    if (!v18)
    {
      v81 = 0;
      v83 = 0;
      v30 = 0;
      v25 = 0;
      v31 = v84;
      v32 = a3;
      goto LABEL_79;
    }

    v20 = MEMORY[0x1E695E110];
    v105[0] = MEMORY[0x1E695E110];
    v104[0] = v82;
    v104[1] = v80;
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[MICodeSigningVerifier logResourceVerificationErrors](self, "logResourceVerificationErrors")}];
    v105[1] = v21;
    v105[2] = v20;
    v104[2] = v76;
    v104[3] = v11;
    v22 = *MEMORY[0x1E69E57F8];
    v105[3] = v20;
    v105[4] = v18;
    v23 = *MEMORY[0x1E69E5838];
    v104[4] = v22;
    v104[5] = v23;
    v104[6] = v10;
    v105[5] = MEMORY[0x1E695E118];
    v105[6] = MEMORY[0x1E695E118];
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:7];

    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      v68 = v85;
      MOLogWrite();
    }

    v91 = v19;
    v25 = [objc_opt_class() _validateSignatureAndCopyInfoForURL:v86 withOptions:v24 error:&v91];
    v26 = v91;

    if (!v25)
    {
      v81 = 0;
      v83 = 0;
      v30 = 0;
      v19 = v26;
      v32 = a3;
      v31 = v84;
LABEL_79:

      v17 = v19;
      v14 = v77;
      if (v32)
      {
        goto LABEL_80;
      }

LABEL_55:
      v46 = 0;
LABEL_81:
      v29 = v30;
      v59 = v81;
      v58 = v83;
      goto LABEL_82;
    }
  }

  else
  {
    v26 = v17;
  }

  v27 = [v16 objectForKeyedSubscript:{*MEMORY[0x1E69E57B8], v68}];
  objc_opt_class();
  v28 = v27;
  if (objc_opt_isKindOfClass())
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (!v29 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v69 = v88;
    MOLogWrite();
  }

  v33 = [v16 objectForKeyedSubscript:{*MEMORY[0x1E69E5790], v69}];
  objc_opt_class();
  v34 = v33;
  if (objc_opt_isKindOfClass())
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  if (!v35 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v70 = v88;
    MOLogWrite();
  }

  v36 = [v16 objectForKeyedSubscript:{*MEMORY[0x1E69E5798], v70}];
  objc_opt_class();
  v37 = v36;
  if (objc_opt_isKindOfClass())
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v39 = [v85 pathExtension];
  v40 = [v39 isEqualToString:@"framework"];

  if ((v40 & 1) == 0)
  {
    if (v38)
    {
      if (![v38 count] && (!gLogHandle || *(gLogHandle + 44) >= 5))
      {
        v71 = v87;
        v74 = v85;
LABEL_50:
        MOLogWrite();
      }
    }

    else if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      v71 = v87;
      v74 = v85;
      goto LABEL_50;
    }
  }

  v81 = v35;
  v83 = v38;
  v30 = v29;
  v90 = v26;
  v41 = [(MICodeSigningVerifier *)self _getMICodeSignerTypeFromMISInfoDict:v16 codeSignerType:&v94 profileType:&v95 error:&v90, v71, v74];
  v17 = v90;

  if (!v41)
  {
    v25 = 0;
    v14 = v77;
    v32 = a3;
    v31 = v84;
    if (!a3)
    {
      goto LABEL_55;
    }

LABEL_80:
    v57 = v17;
    v46 = 0;
    *v32 = v17;
    goto LABEL_81;
  }

  v42 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69E57A8]];
  objc_opt_class();
  v43 = v42;
  if (objc_opt_isKindOfClass())
  {
    v44 = v43;
    v45 = v43;
  }

  else
  {
    v45 = 0;
  }

  if (v45)
  {
    v47 = SecCertificateCreateWithData(*MEMORY[0x1E695E480], v45);
    if (v47)
    {
      v48 = v47;
      v25 = SecCertificateCopySubjectSummary(v47);
      v18 = SecCertificateCopyOrganization();
      CFRelease(v48);
      if (v25)
      {
        if (v18 && [v18 count])
        {
          if ([v18 count] >= 2 && (!gLogHandle || *(gLogHandle + 44) >= 5))
          {
            v72 = v88;
            v75 = v18;
            MOLogWrite();
          }

          v79 = [v18 objectAtIndexedSubscript:{0, v72, v75}];

          goto LABEL_69;
        }

        v96[0] = @"LegacyErrorString";
        v96[1] = @"LibMISErrorNumber";
        v97[0] = @"ApplicationVerificationFailed";
        v97[1] = &unk_1F2888E50;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:2];
        _CreateAndLogError("[MICodeSigningVerifier performValidationWithError:]", 443, @"MIInstallerErrorDomain", 13, 0, v54, @"Could not extract signer organizations for %@", v55, v88);
      }

      else
      {
        v98[0] = @"LegacyErrorString";
        v98[1] = @"LibMISErrorNumber";
        v99[0] = @"ApplicationVerificationFailed";
        v99[1] = &unk_1F2888E50;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:v98 count:2];
        _CreateAndLogError("[MICodeSigningVerifier performValidationWithError:]", 438, @"MIInstallerErrorDomain", 13, 0, v54, @"Could not extract signer identity for %@", v56, v88);
      }
      v19 = ;

      v17 = v54;
      goto LABEL_78;
    }

    v100[0] = @"LegacyErrorString";
    v100[1] = @"LibMISErrorNumber";
    v101[0] = @"ApplicationVerificationFailed";
    v101[1] = &unk_1F2888E50;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:2];
    _CreateAndLogError("[MICodeSigningVerifier performValidationWithError:]", 430, @"MIInstallerErrorDomain", 13, 0, v18, @"Could not create certificate from data for %@", v52, v88);
    v19 = LABEL_74:;
    v25 = 0;
LABEL_78:
    v32 = a3;
    v31 = v84;

    goto LABEL_79;
  }

  if (![(MICodeSigningVerifier *)self allowAdhocSigning])
  {
    v102[0] = @"LegacyErrorString";
    v102[1] = @"LibMISErrorNumber";
    v103[0] = @"ApplicationVerificationFailed";
    v103[1] = &unk_1F2888E50;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:2];
    _CreateAndLogError("[MICodeSigningVerifier performValidationWithError:]", 424, @"MIInstallerErrorDomain", 13, 0, v18, @"Failed to extract signer identity from %@", v53, v88);
    goto LABEL_74;
  }

  v79 = 0;
  v25 = 0;
LABEL_69:
  v49 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69E57C0]];
  objc_opt_class();
  v50 = v49;
  if (objc_opt_isKindOfClass())
  {
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  v89 = 0;
  v61 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69E57A0]];
  objc_opt_class();
  v62 = v61;
  if (objc_opt_isKindOfClass())
  {
    v63 = v62;
  }

  else
  {
    v63 = 0;
  }

  if (v63)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      MOLogWrite();
    }
  }

  else if ([v84 isRunningInTestMode:&v89 outError:0] && v89 == 1 && objc_msgSend(v84, "testFlagsAreSet:", 32))
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      v72 = v87;
      MOLogWrite();
    }

    v63 = [MEMORY[0x1E695DEF0] dataWithBytes:"MOBILEINSTALLATION_TEST_LAUNCH_WARNING_DATA" length:{43, v72}];
  }

  else
  {
    v63 = 0;
  }

  v59 = v81;
  v64 = [MICodeSigningInfo alloc];
  v58 = v83;
  v65 = [(MICodeSigningInfo *)v64 initWithSignerIdentity:v25 signerOrganization:v79 codeInfoIdentifier:v29 teamIdentifier:v51 signatureVersion:v81 entitlements:v83 signerType:v94 profileType:v95 signingInfoSource:2 launchWarningData:v63];
  signingInfo = self->_signingInfo;
  self->_signingInfo = v65;

  v46 = 1;
  v14 = v77;
  v31 = v84;
LABEL_82:

  return v46;
}

+ (BOOL)validateWatchKitV1StubExecutableBundle:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bundleURL];
  v8 = [v7 URLByAppendingPathComponent:@"_WatchKitStub/WK"];

  if (validateWatchKitV1StubExecutableBundle_error__onceToken != -1)
  {
    +[MICodeSigningVerifier validateWatchKitV1StubExecutableBundle:error:];
  }

  if (gLogHandle && *(gLogHandle + 44) >= 7)
  {
    v9 = [v6 executableURL];
    v12 = [v9 path];
    MOLogWrite();
  }

  v10 = [a1 _validateBundleExecutable:v6 againstStubAt:v8 trustedHashes:validateWatchKitV1StubExecutableBundle_error__trustedHashes sectionName:@"__watchkit" signingIdentifier:@"com.apple.WK" error:{a4, v12}];

  return v10;
}

void __70__MICodeSigningVerifier_validateWatchKitV1StubExecutableBundle_error___block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"fApr4oevAMrl65iFf3wAhUqJIOk=" options:0];
  v1 = [MISignatureAgnosticHasher packedNumberForCPUType:12 subtype:12];
  v4 = v1;
  v5[0] = v0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v3 = validateWatchKitV1StubExecutableBundle_error__trustedHashes;
  validateWatchKitV1StubExecutableBundle_error__trustedHashes = v2;
}

+ (BOOL)validateWatchKitV2StubExecutableBundle:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bundleURL];
  v8 = [v7 URLByAppendingPathComponent:@"_WatchKitStub/WK"];

  if (validateWatchKitV2StubExecutableBundle_error__onceToken != -1)
  {
    +[MICodeSigningVerifier validateWatchKitV2StubExecutableBundle:error:];
  }

  if (gLogHandle && *(gLogHandle + 44) >= 7)
  {
    v9 = [v6 executableURL];
    v12 = [v9 path];
    MOLogWrite();
  }

  v10 = [a1 _validateBundleExecutable:v6 againstStubAt:v8 trustedHashes:validateWatchKitV2StubExecutableBundle_error__trustedHashes sectionName:@"__watchkit" signingIdentifier:@"com.apple.WK" error:{a4, v12}];

  return v10;
}

void __70__MICodeSigningVerifier_validateWatchKitV2StubExecutableBundle_error___block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:@"gMfFfUYLxpniCKUmtjSz0XLrXGs=" options:0];
  v1 = [MISignatureAgnosticHasher packedNumberForCPUType:12 subtype:12];
  v4 = v1;
  v5[0] = v0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v3 = validateWatchKitV2StubExecutableBundle_error__trustedHashes;
  validateWatchKitV2StubExecutableBundle_error__trustedHashes = v2;
}

+ (BOOL)_validateBundleExecutable:(id)a3 againstStubAt:(id)a4 trustedHashes:(id)a5 sectionName:(id)a6 signingIdentifier:(id)a7 error:(id *)a8
{
  v74 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v64 = v17;
  if (!v14)
  {
    v21 = 0;
    goto LABEL_14;
  }

  v18 = v17;
  v19 = +[MIFileManager defaultManager];
  v20 = [v19 itemExistsAtURL:v14];

  v21 = 0;
  if (!v18 || !v20)
  {
LABEL_14:
    v28 = [MISignatureAgnosticHasher alloc];
    v29 = [v13 executableURL];
    v30 = [(MISignatureAgnosticHasher *)v28 initWithExecutable:v29 searchForSectionNamed:0];

    v62 = v16;
    if (v30)
    {
      v70 = v21;
      v31 = [(MISignatureAgnosticHasher *)v30 performHashWithError:&v70];
      v23 = v70;

      if (v31)
      {
        v32 = [(MISignatureAgnosticHasher *)v30 hashes];
        v61 = v32;
        if (v32)
        {
          v33 = v32;
          if ([v32 count])
          {
            v59 = v14;
            v60 = v13;
            v34 = [v33 mutableCopy];
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v15 = v15;
            v35 = [v15 countByEnumeratingWithState:&v66 objects:v73 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v67;
              while (2)
              {
                for (i = 0; i != v36; ++i)
                {
                  if (*v67 != v37)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v39 = *(*(&v66 + 1) + 8 * i);
                  v40 = [v34 objectForKeyedSubscript:v39];
                  if (v40)
                  {
                    v41 = [v15 objectForKeyedSubscript:v39];
                    if (![v41 isEqualToData:v40])
                    {
                      v65 = 0;
                      [MISignatureAgnosticHasher unpackPackedCpuTypeAndSubType:v39 cputype:&v65 + 4 subtype:&v65];
                      v13 = v60;
                      v51 = [v60 executableURL];
                      v52 = [v51 path];
                      v43 = _CreateAndLogError("+[MICodeSigningVerifier _validateBundleExecutable:againstStubAt:trustedHashes:sectionName:signingIdentifier:error:]", 583, @"MIInstallerErrorDomain", 72, 0, &unk_1F2888B00, @"Executable at %@ did not match stub hash for cputype %d cpusubtype %d: %@ != %@", v53, v52);

                      v23 = v41;
                      v25 = v15;
                      goto LABEL_42;
                    }

                    [v34 removeObjectForKey:v39];
                  }
                }

                v36 = [v15 countByEnumeratingWithState:&v66 objects:v73 count:16];
                if (v36)
                {
                  continue;
                }

                break;
              }
            }

            if (![v34 count])
            {
              v47 = 1;
              v14 = v59;
              v13 = v60;
              v45 = v61;
              v16 = v62;
              goto LABEL_39;
            }

            v13 = v60;
            v25 = [v60 executableURL];
            v40 = [v25 path];
            v43 = _CreateAndLogError("+[MICodeSigningVerifier _validateBundleExecutable:againstStubAt:trustedHashes:sectionName:signingIdentifier:error:]", 592, @"MIInstallerErrorDomain", 72, 0, &unk_1F2888B28, @"Did not validate all slice hashes on executable %@ unchecked hashes: %@", v42, v40);;
LABEL_42:
            v14 = v59;
LABEL_37:
            v46 = a8;

            v23 = v43;
            v45 = v61;
            v16 = v62;
            if (a8)
            {
              goto LABEL_38;
            }

            goto LABEL_34;
          }
        }

        v25 = [v13 executableURL];
        v40 = [v25 path];
        v43 = _CreateAndLogError("+[MICodeSigningVerifier _validateBundleExecutable:againstStubAt:trustedHashes:sectionName:signingIdentifier:error:]", 571, @"MIInstallerErrorDomain", 72, v23, &unk_1F2888AD8, @"Unable to get hashes for executable %@", v48, v40);
LABEL_36:
        v34 = 0;
        goto LABEL_37;
      }

      v21 = v23;
    }

    else
    {
      v23 = v21;
    }

    v25 = [v13 executableURL];
    v40 = [v25 path];
    v43 = _CreateAndLogError("+[MICodeSigningVerifier _validateBundleExecutable:againstStubAt:trustedHashes:sectionName:signingIdentifier:error:]", 565, @"MIInstallerErrorDomain", 72, v21, &unk_1F2888AB0, @"Unable to compute hash for executable %@", v44, v40);
    v61 = 0;
    goto LABEL_36;
  }

  v72 = 0;
  v22 = [a1 _validateStubSignature:v14 withSigningID:v18 error:&v72];
  v23 = v72;
  if (v22)
  {
    v24 = [[MISignatureAgnosticHasher alloc] initWithExecutable:v14 searchForSectionNamed:v16];
    v25 = v24;
    if (v24)
    {
      v71 = v23;
      v26 = [(MISignatureAgnosticHasher *)v24 performHashWithError:&v71];
      v21 = v71;

      if (v26)
      {
        if (v16 && ([v25 hasNamedSection] & 1) == 0)
        {
          v55 = [v14 path];
          v56 = v16;
          v40 = v55;
          v62 = v56;
          v43 = _CreateAndLogError("+[MICodeSigningVerifier _validateBundleExecutable:againstStubAt:trustedHashes:sectionName:signingIdentifier:error:]", 553, @"MIInstallerErrorDomain", 72, v21, &unk_1F2888A88, @"Stub %@ does not have required section %@", v57, v55);
          v61 = 0;
          v34 = 0;
          v30 = 0;
          v23 = v21;
          goto LABEL_37;
        }

        if (gLogHandle && *(gLogHandle + 44) >= 7)
        {
          v58 = [v14 path];
          MOLogWrite();
        }

        v27 = [v25 hashes];

        v15 = v27;
        goto LABEL_14;
      }

      v62 = v16;
      v23 = v21;
    }

    else
    {
      v62 = v16;
    }

    v40 = [v14 path];
    v43 = _CreateAndLogError("+[MICodeSigningVerifier _validateBundleExecutable:againstStubAt:trustedHashes:sectionName:signingIdentifier:error:]", 548, @"MIInstallerErrorDomain", 72, v23, &unk_1F2888A60, @"Unable to compute hash for stub %@", v54, v40);
    v61 = 0;
    v34 = 0;
    v30 = 0;
    goto LABEL_37;
  }

  v45 = 0;
  v34 = 0;
  v30 = 0;
  v46 = a8;
  if (a8)
  {
LABEL_38:
    v49 = v23;
    v47 = 0;
    *v46 = v23;
    goto LABEL_39;
  }

LABEL_34:
  v47 = 0;
LABEL_39:

  return v47;
}

+ (BOOL)_validateStubSignature:(id)a3 withSigningID:(id)a4 error:(id *)a5
{
  v28[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = *MEMORY[0x1E69E5838];
  v27[0] = *MEMORY[0x1E69E5840];
  v27[1] = v10;
  v28[0] = MEMORY[0x1E695E118];
  v28[1] = MEMORY[0x1E695E118];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v26 = 0;
  v12 = [a1 _validateSignatureAndCopyInfoForURL:v8 withOptions:v11 error:&v26];
  v13 = v26;
  if (v12)
  {
    v14 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69E57D0]];
    v15 = MIBooleanValue(v14, 0);

    if (v15)
    {
      v16 = [v8 path];
      v18 = _CreateAndLogError("+[MICodeSigningVerifier _validateStubSignature:withSigningID:error:]", 622, @"MIInstallerErrorDomain", 72, 0, &unk_1F2888B50, @"Executable stub at %@ not signed by Apple.", v17, v16);
      v19 = 0;
    }

    else
    {
      v21 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69E57B8]];
      objc_opt_class();
      v22 = v21;
      if (objc_opt_isKindOfClass())
      {
        v19 = v22;
      }

      else
      {
        v19 = 0;
      }

      if ([v19 isEqualToString:v9])
      {
        v20 = 1;
        goto LABEL_14;
      }

      v16 = [v8 path];
      v18 = _CreateAndLogError("+[MICodeSigningVerifier _validateStubSignature:withSigningID:error:]", 629, @"MIInstallerErrorDomain", 72, 0, &unk_1F2888B78, @"Executable stub at %@ had unexpected signing identifier '%@' expected %@.", v23, v16);;
    }

    v13 = v18;
    if (a5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = 0;
    if (a5)
    {
LABEL_13:
      v24 = v13;
      v20 = 0;
      *a5 = v13;
      goto LABEL_14;
    }
  }

  v20 = 0;
LABEL_14:

  return v20;
}

@end