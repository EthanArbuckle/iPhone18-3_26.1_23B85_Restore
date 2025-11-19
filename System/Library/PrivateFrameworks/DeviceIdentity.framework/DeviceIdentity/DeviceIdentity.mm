uint64_t DeviceIdentityIsSupported()
{
  if (!is_virtual_machine())
  {
    return 1;
  }

  return libavp_guest_has_host_key(0);
}

BOOL is_virtual_machine()
{
  v3 = 0;
  v2 = 4;
  return !sysctlbyname("kern.hv_vmm_present", &v3, &v2, 0, 0) && v3 == 1;
}

id isNSArray(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_171(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v494[1] = *MEMORY[0x277D85DE8];
  v472[0] = 0;
  v472[1] = v472;
  v472[2] = 0x3032000000;
  v472[3] = __Block_byref_object_copy__0;
  v472[4] = __Block_byref_object_dispose__0;
  v473 = 0;
  v466 = 0;
  v467 = &v466;
  v468 = 0x3032000000;
  v469 = __Block_byref_object_copy__0;
  v470 = __Block_byref_object_dispose__0;
  v471 = 0;
  v462 = 0;
  v463 = &v462;
  v464 = 0x2020000000;
  v465 = 0;
  v458 = 0;
  v459 = &v458;
  v460 = 0x2020000000;
  v461 = 0;
  v454 = 0;
  v455 = &v454;
  v456 = 0x2020000000;
  v457 = 0;
  v450 = 0;
  v451 = &v450;
  v452 = 0x2020000000;
  v453 = 0;
  error = 0;
  v445 = 0;
  v446 = &v445;
  v447 = 0x2020000000;
  v448 = 0;
  v441 = 0;
  v442 = &v441;
  v443 = 0x2020000000;
  v444 = 0;
  v440 = -1;
  v434 = 0;
  v435 = &v434;
  v436 = 0x3032000000;
  v437 = __Block_byref_object_copy__0;
  v438 = __Block_byref_object_dispose__0;
  v439 = 0;
  v428 = 0;
  v429 = &v428;
  v430 = 0x3032000000;
  v431 = __Block_byref_object_copy__0;
  v432 = __Block_byref_object_dispose__0;
  v433 = 0;
  v426[0] = 0;
  v426[1] = v426;
  v426[2] = 0x3032000000;
  v426[3] = __Block_byref_object_copy__0;
  v426[4] = __Block_byref_object_dispose__0;
  v427 = 0;
  v424[0] = 0;
  v424[1] = v424;
  v424[2] = 0x3032000000;
  v424[3] = __Block_byref_object_copy__0;
  v424[4] = __Block_byref_object_dispose__0;
  v425 = 0;
  v418 = 0;
  v419 = &v418;
  v420 = 0x3032000000;
  v421 = __Block_byref_object_copy__0;
  v422 = __Block_byref_object_dispose__0;
  v423 = 0;
  v416[0] = 0;
  v416[1] = v416;
  v416[2] = 0x3032000000;
  v416[3] = __Block_byref_object_copy__0;
  v416[4] = __Block_byref_object_dispose__0;
  v417 = 0;
  v415[0] = 0;
  v415[1] = v415;
  v415[2] = 0x2020000000;
  v415[3] = 0;
  v414 = 0;
  v410 = 0;
  v411 = &v410;
  v412 = 0x2020000000;
  v413 = 0;
  v409[0] = 0;
  v409[1] = v409;
  v409[2] = 0x2020000000;
  v409[3] = 0;
  v408 = 0;
  if (!*(a1 + 48))
  {
    v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 692, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid input.", a7, a8, v314);
LABEL_23:
    v351 = 0;
LABEL_24:
    v34 = 0;
    v348 = 0;
    v35 = 0;
    v36 = 0;
    v336 = 0;
    v332 = 0;
    task = 0;
LABEL_25:
    v349 = 0;
    cf = 0;
    v347 = 0;
    v344 = 0;
    v345 = 0;
    v342 = 0;
    v343 = 0;
    v338 = 0;
    v339 = 0;
    v337 = 0;
    v340 = 0;
    v341 = 0;
    v37 = 0;
    v331 = 0;
    goto LABEL_26;
  }

  v351 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!v351)
  {
    v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 698, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate array.", v9, v10, v314);
    goto LABEL_23;
  }

  v11 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  task = v11;
  if (!v11)
  {
    v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 706, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create task.", v12, v13, v314);
    goto LABEL_24;
  }

  v349 = SecTaskCopySigningIdentifier(v11, &error);
  if (!v349)
  {
    v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 712, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to query code signing identifier.", v14, v15, v314);
    v34 = 0;
    v348 = 0;
    v35 = 0;
    v36 = 0;
    v336 = 0;
    v332 = 0;
    goto LABEL_25;
  }

  v348 = SecTaskCopyValueForEntitlement(task, @"com.apple.mobileactivationd.spi", &error);
  v16 = isNSNumber(v348);
  if (!v16 || (v17 = [v348 BOOLValue], v16, (v17 & 1) == 0))
  {
    v58 = error;
    v493 = @"com.apple.mobileactivationd.spi";
    v494[0] = MEMORY[0x277CBEC38];
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v494 forKeys:&v493 count:1];
    v61 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 718, @"com.apple.MobileActivation.ErrorDomain", -7, v58, @"Missing required entitlement: %@", v59, v60, v42);
    v62 = *(*(a1 + 56) + 8);
    v63 = *(v62 + 40);
    *(v62 + 40) = v61;

    v34 = 0;
    v35 = 0;
    v36 = 0;
    v336 = 0;
    v337 = 0;
    v331 = 0;
    v332 = 0;
    cf = 0;
    v346 = 0;
    v347 = 0;
    v344 = 0;
    v345 = 0;
    v342 = 0;
    v343 = 0;
    v338 = 0;
    v339 = 0;
    v340 = 0;
    v341 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v333 = 0;
    v334 = 0;
    goto LABEL_29;
  }

  v347 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v347)
  {
    if (*(a1 + 32))
    {
      [v347 addEntriesFromDictionary:?];
    }

    v20 = is_virtual_machine();
    if (v20)
    {
      v21 = [MEMORY[0x277CCABB0] numberWithBool:1];
      [v347 setObject:v21 forKeyedSubscript:@"scrtAttestation"];
    }

    v22 = [v347 objectForKeyedSubscript:@"OIDSToInclude"];
    v23 = isNSArray(v22);

    if (v23)
    {
      v24 = objc_alloc(MEMORY[0x277CBEB98]);
      v25 = [v347 objectForKeyedSubscript:@"OIDSToInclude"];
      v346 = [v24 initWithArray:v25];

      if (([v346 containsObject:@"1.2.840.113635.100.10.1"] & 1) != 0 || (objc_msgSend(v346, "containsObject:", @"1.2.840.113635.100.8.1") & 1) != 0 || objc_msgSend(v346, "containsObject:", @"1.2.840.113635.100.8.3"))
      {
        v26 = SecTaskCopyValueForEntitlement(task, @"com.apple.mobileactivationd.device-identifiers", &error);

        v27 = isNSNumber(v26);
        if (!v27 || (v28 = [v26 BOOLValue], v27, (v28 & 1) == 0))
        {
          v64 = error;
          v491 = @"com.apple.mobileactivationd.device-identifiers";
          v492 = MEMORY[0x277CBEC38];
          v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v492 forKeys:&v491 count:1];
          v67 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 750, @"com.apple.MobileActivation.ErrorDomain", -7, v64, @"Missing required entitlement: %@", v65, v66, v42);
          v68 = *(*(a1 + 56) + 8);
          v69 = *(v68 + 40);
          *(v68 + 40) = v67;

          v34 = 0;
          v35 = 0;
          v36 = 0;
          v336 = 0;
          v337 = 0;
          v331 = 0;
          v332 = 0;
          cf = 0;
          v344 = 0;
          v345 = 0;
          v342 = 0;
          v343 = 0;
          v338 = 0;
          v339 = 0;
          v340 = 0;
          v341 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v333 = 0;
          v334 = 0;
          v348 = v26;
          goto LABEL_29;
        }

        v348 = v26;
      }

      v29 = copy_supported_eda_oids();
      v30 = [v346 intersectsSet:v29];

      if (v30)
      {
        v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 756, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"This API does not support Enterprise Device Attestation OIDs: %@", v31, v32, v346);
LABEL_58:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v336 = 0;
        v337 = 0;
        v332 = 0;
        cf = 0;
        v344 = 0;
        v345 = 0;
        v342 = 0;
        v343 = 0;
        v338 = 0;
        v339 = 0;
        v340 = 0;
        v341 = 0;
LABEL_77:
        v37 = 0;
        v331 = 0;
LABEL_78:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        goto LABEL_27;
      }

      if ([v346 containsObject:@"1.2.840.113635.100.8.6"])
      {
        v77 = [*(a1 + 32) objectForKeyedSubscript:@"AccessControls"];
        v78 = v77 == 0;

        if (v78)
        {
          v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 761, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing required option: %@", v79, v80, @"AccessControls");
          goto LABEL_58;
        }
      }
    }

    else
    {
      v346 = 0;
    }

    v70 = [v347 objectForKeyedSubscript:@"KeychainLabel"];
    v71 = isNSString(v70);

    if (v71)
    {
      if ((isRunningInRecovery() & 1) != 0 || isRunningInDiagnosticsMode())
      {
        v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 768, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Option (%@) not allowed for processes running in recoveryOS or diagnostics mode.", v72, v73, @"KeychainLabel");
        goto LABEL_58;
      }

      v89 = [v347 objectForKeyedSubscript:@"ClientAttestationData"];
      v90 = isNSData(v89);

      if (v90)
      {
        v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 773, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Keychain (%@) not supported with %@.", v91, v92, @"KeychainLabel");
        goto LABEL_58;
      }

      v345 = [v347 objectForKeyedSubscript:@"KeychainLabel"];
      v344 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-rk", v345];
      v339 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-leaf", v345];
      v337 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-intermediate", v345];
      v342 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-combined", v345];
      v340 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-monotonic-clock", v345];
      v341 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-server-timestamp", v345];
      v314 = v345;
      v338 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-rtc-reset-count"];
    }

    else
    {
      v340 = 0;
      v341 = 0;
      v337 = 0;
      v338 = 0;
      v344 = 0;
      v345 = 0;
      v339 = 0;
      v342 = 0;
    }

    v74 = [v347 objectForKeyedSubscript:@"KeychainAccessGroup"];
    v75 = isNSString(v74);

    if (v75)
    {
      v76 = [v347 objectForKeyedSubscript:@"KeychainAccessGroup"];
    }

    else
    {
      v76 = 0;
    }

    if (v345 && !v76)
    {
      v76 = v349;
    }

    v343 = v76;
    v81 = [v347 objectForKeyedSubscript:@"IgnoreExistingKeychainItems"];
    v82 = isNSNumber(v81);

    if (v82)
    {
      v83 = [v347 objectForKeyedSubscript:@"IgnoreExistingKeychainItems"];
      v84 = [v83 BOOLValue];

      v85 = v84 ^ 1;
    }

    else
    {
      v85 = 1;
    }

    v335 = v85;
    v86 = [v347 objectForKeyedSubscript:@"AccessControls"];

    if (!v86)
    {
      goto LABEL_86;
    }

    if ((isRunningInRecovery() & 1) != 0 || isRunningInDiagnosticsMode())
    {
      v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 802, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Option (%@) not allowed for processes running in recoveryOS or diagnostics mode.", v87, v88, @"AccessControls");
LABEL_76:
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v336 = 0;
      v332 = 0;
      cf = 0;
      goto LABEL_77;
    }

    v93 = [v347 objectForKeyedSubscript:@"ClientAttestationData"];
    v94 = isNSData(v93);

    if (v94)
    {
      v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 807, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"ACLs (%@) not supported with %@.", v95, v96, @"AccessControls");
      goto LABEL_76;
    }

    v97 = [v347 objectForKeyedSubscript:@"AccessControls"];
    v98 = CFGetTypeID(v97);
    v99 = v98 == SecAccessControlGetTypeID();

    if (v99)
    {
      cf = [v347 objectForKeyedSubscript:@"AccessControls"];

      CFRetain(cf);
    }

    else
    {
LABEL_86:
      cf = 0;
    }

    v100 = [v347 objectForKeyedSubscript:@"reuseExistingKey"];
    v101 = isNSNumber(v100);

    if (v101)
    {
      v102 = [v347 objectForKeyedSubscript:@"reuseExistingKey"];
      v328 = [v102 BOOLValue];
    }

    else
    {
      v328 = 0;
    }

    v103 = [v347 objectForKeyedSubscript:@"UseSoftwareGeneratedKey"];
    v104 = isNSNumber(v103);

    if (v104)
    {
      v105 = [v347 objectForKeyedSubscript:@"UseSoftwareGeneratedKey"];
      queue = [v105 BOOLValue];
    }

    else
    {
      queue = 1;
    }

    v106 = [v347 objectForKeyedSubscript:@"scrtAttestation"];
    v107 = isNSNumber(v106);

    if (v107)
    {
      v108 = [v347 objectForKeyedSubscript:@"scrtAttestation"];
      v20 = [v108 BOOLValue];
    }

    v109 = [v347 objectForKeyedSubscript:@"ClientAttestationData"];
    v110 = isNSData(v109);

    if (v110)
    {
      v111 = [v347 objectForKeyedSubscript:@"ClientAttestationPublicKey"];
      v112 = isNSData(v111);
      v113 = v112 == 0;

      if (v113)
      {
        v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 831, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing required option for %@.", v114, v115, @"ClientAttestationPublicKey");
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v336 = 0;
        v332 = 0;
        goto LABEL_77;
      }

      v336 = [v347 objectForKeyedSubscript:@"ClientAttestationData"];
      v332 = [v347 objectForKeyedSubscript:@"ClientAttestationPublicKey"];
    }

    else
    {
      v332 = 0;
      v336 = 0;
    }

    v116 = [v347 objectForKeyedSubscript:@"ReturnReferenceDate"];
    v117 = isNSNumber(v116);

    if (v117)
    {
      v118 = [v347 objectForKeyedSubscript:@"ReturnReferenceDate"];
      v322 = [v118 BOOLValue];
    }

    else
    {
      v322 = 0;
    }

    v119 = [v347 objectForKeyedSubscript:@"SkipNetworkRequest"];
    v120 = isNSNumber(v119);

    if (v120)
    {
      v121 = [v347 objectForKeyedSubscript:@"SkipNetworkRequest"];
      v122 = [v121 BOOLValue];
    }

    else
    {
      v122 = 0;
    }

    v123 = [v347 objectForKeyedSubscript:@"DeleteExistingKeysAndCerts"];
    v124 = isNSNumber(v123);

    if (v124)
    {
      v125 = [v347 objectForKeyedSubscript:@"DeleteExistingKeysAndCerts"];
      LODWORD(v124) = [v125 BOOLValue];
    }

    v126 = [v347 objectForKeyedSubscript:@"ClientProvidedDate"];
    v127 = isNSDate(v126);

    if (v127)
    {
      v331 = [v347 objectForKeyedSubscript:@"ClientProvidedDate"];
    }

    else
    {
      v331 = 0;
    }

    if (v344)
    {
      if (v20)
      {
        v130 = [v344 stringByAppendingString:@"-scrt"];

        v131 = [v339 stringByAppendingString:@"-scrt"];

        v132 = [v337 stringByAppendingString:@"-scrt"];

        v133 = [v342 stringByAppendingString:@"-scrt"];

        v134 = [v340 stringByAppendingString:@"-scrt"];

        v135 = [v341 stringByAppendingString:@"-scrt"];

        [v338 stringByAppendingString:@"-scrt"];
      }

      else
      {
        v130 = [v344 stringByAppendingString:@"-ucrt"];

        v131 = [v339 stringByAppendingString:@"-ucrt"];

        v132 = [v337 stringByAppendingString:@"-ucrt"];

        v133 = [v342 stringByAppendingString:@"-ucrt"];

        v134 = [v340 stringByAppendingString:@"-ucrt"];

        v135 = [v341 stringByAppendingString:@"-ucrt"];

        [v338 stringByAppendingString:@"-ucrt"];
      }
      v136 = ;
      v340 = v134;
      v341 = v135;
      v344 = v130;
      v337 = v132;
      v339 = v131;
      v342 = v133;

      v338 = v136;
    }

    else
    {
      v344 = 0;
    }

    if (v124)
    {
      v34 = 0;
      if (v345 && v343)
      {
        delete_keychain_data(v343, v340, 0);
        delete_keychain_data(v343, v338, 0);
        delete_keychain_data(v343, v341, 0);
        delete_keychain_data(v343, v342, 0);
        delete_keychain_item(v343, v344, 0);
        delete_certificate(v343, v339, 0);
        delete_certificate(v343, v337, 0);
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v333 = 0;
        v334 = 0;
      }

      else
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v333 = 0;
        v334 = 0;
      }

      goto LABEL_30;
    }

    if (!v336)
    {
      goto LABEL_125;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = SecAccessControlCreate();
    if (!cf)
    {
      v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 908, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to create access control.", v137, v138, v314);
      v34 = 0;
      v35 = 0;
      v36 = 0;
      cf = 0;
LABEL_156:
      v37 = 0;
      goto LABEL_78;
    }

    v139 = *MEMORY[0x277CDBF08];
    if ((SecAccessControlSetProtection() & 1) == 0)
    {
      v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 913, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to set ACL protection to %@.", v128, v129, v139);
    }

    else
    {
LABEL_125:
      v140 = v335;
      if (!v345)
      {
        v140 = 0;
      }

      if (v140 != 1)
      {
        v333 = 0;
        v334 = 0;
        v40 = 0;
        goto LABEL_141;
      }

      v141 = *(*(a1 + 56) + 8);
      obj = *(v141 + 40);
      v142 = copy_keychain_item(v343, v344, v347, &v440, &obj);
      objc_storeStrong((v141 + 40), obj);
      v451[3] = v142;
      if (v440 != -25300 && v440)
      {
        v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 923, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 56) + 8) + 40), @"Failed to query existing reference key (%@/%@): %d", v143, v144, v343);
      }

      else
      {
        v145 = *(*(a1 + 56) + 8);
        v146 = *(v145 + 40);
        *(v145 + 40) = 0;

        v147 = *(*(a1 + 56) + 8);
        v406 = *(v147 + 40);
        v334 = copy_keychain_data(v343, v342, &v440, &v406);
        objc_storeStrong((v147 + 40), v406);
        if (v440 != -25300 && v440)
        {
          v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 931, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 56) + 8) + 40), @"Failed to query existing leaf/intermediate certificates (%@/%@): %d", v148, v149, v343);
          goto LABEL_158;
        }

        v150 = *(*(a1 + 56) + 8);
        v151 = *(v150 + 40);
        *(v150 + 40) = 0;

        if (v334)
        {
          v152 = *(*(a1 + 56) + 8);
          v405 = *(v152 + 40);
          v333 = parseDERCertificatesFromChain(v334, &v405);
          objc_storeStrong((v152 + 40), v405);
          if (!v333 || [v333 count] != 2)
          {
            v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 944, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 56) + 8) + 40), @"Failed to parse DER certificate chain.", v153, v154, v314);
            goto LABEL_160;
          }

          v155 = [v333 objectAtIndexedSubscript:0];
          v156 = SecCertificateCreateWithData(0, v155);
          v446[3] = v156;

          if (!v446[3])
          {
            v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 950, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create certificate from DER data.", v157, v158, v314);
            goto LABEL_160;
          }

          v159 = [v333 objectAtIndexedSubscript:1];
          v160 = SecCertificateCreateWithData(0, v159);
          v442[3] = v160;

          if (!v442[3])
          {
            v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 956, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create certificate from DER data.", v128, v129, v314);
LABEL_160:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            goto LABEL_28;
          }

LABEL_189:
          if (v451[3] && (v225 = v446[3]) != 0)
          {
            if (v346)
            {
              v226 = [v346 allObjects];
              v40 = copyCertificateOIDsThatDiffer(v225, v226);
            }

            else
            {
              v40 = 0;
            }

            if ([v40 count])
            {
              v228 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 1024, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Mismatch in requested OIDs and existing certificate's OIDs (%@).", v128, v129, v40);
              v229 = *(*(a1 + 56) + 8);
              v230 = *(v229 + 40);
              *(v229 + 40) = v228;

              v227 = 1;
              goto LABEL_200;
            }
          }

          else
          {
            v40 = 0;
          }

          v227 = 0;
LABEL_200:
          v231 = v451;
          if (v451[3])
          {
            v232 = isFactoryMFiCertificate(v343, v446[3]);
            v231 = v451;
            if (v232)
            {
              v233 = v451[3];
              v234 = *(*(a1 + 56) + 8);
              v401 = *(v234 + 40);
              valid = security_valid_security_enclave_reference_key(v233, 1, 0, &v401, v161, v162, v128, v129);
              objc_storeStrong((v234 + 40), v401);
              if (!valid)
              {
                goto LABEL_211;
              }

              v231 = v451;
            }
          }

          v236 = v231[3];
          if (!v236)
          {
            goto LABEL_209;
          }

          v237 = *(*(a1 + 56) + 8);
          v400 = *(v237 + 40);
          v238 = security_valid_security_enclave_reference_key(v236, 0, 0, &v400, v161, v162, v128, v129);
          objc_storeStrong((v237 + 40), v400);
          if (v238)
          {
            v239 = v451[3];
            if (!v239 || (v240 = v446[3]) == 0 || (v241 = *(*(a1 + 56) + 8), v399 = *(v241 + 40), v242 = security_certificate_matches_key(v239, 0, v240, &v399), objc_storeStrong((v241 + 40), v399), (v242 & 1) != 0))
            {
LABEL_209:
              if (!v227)
              {
                goto LABEL_221;
              }

              goto LABEL_212;
            }
          }

LABEL_211:
          v243 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 1044, @"com.apple.MobileActivation.ErrorDomain", -2, *(*(*(a1 + 56) + 8) + 40), @"Invalid reference key.", v128, v129, v314);
          v244 = *(*(a1 + 56) + 8);
          v245 = *(v244 + 40);
          *(v244 + 40) = v243;

LABEL_212:
          v246 = MEMORY[0x277D86220];
          v247 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
          {
            v248 = *(*(*(a1 + 56) + 8) + 40);
            *buf = 138412290;
            v475 = v248;
            _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Deleting invalid keys/certificates: %@", buf, 0xCu);
          }

          delete_keychain_data(v343, v340, 0);
          delete_keychain_data(v343, v338, 0);
          delete_keychain_data(v343, v341, 0);
          delete_keychain_data(v343, v342, 0);
          delete_keychain_item(v343, v344, 0);
          delete_certificate(v343, v339, 0);
          delete_certificate(v343, v337, 0);
          v249 = v451;
          v250 = v451[3];
          if (v250)
          {
            CFRelease(v250);
            v249 = v451;
          }

          v249[3] = 0;
          v251 = v446;
          v252 = v446[3];
          if (v252)
          {
            CFRelease(v252);
            v251 = v446;
          }

          v251[3] = 0;
          v253 = v442;
          v254 = v442[3];
          if (v254)
          {
            CFRelease(v254);
            v253 = v442;
          }

          v253[3] = 0;
          v255 = *(*(a1 + 56) + 8);
          v256 = *(v255 + 40);
          *(v255 + 40) = 0;

LABEL_221:
          if (v451[3] && v446[3] && v442[3])
          {
            v257 = *(*(a1 + 56) + 8);
            v398 = *(v257 + 40);
            v37 = copyDateUsedForCertificateValidation(v331, v343, v340, v341, &v408, &v398);
            objc_storeStrong((v257 + 40), v398);
            if (v37)
            {
              v258 = v446[3];
              [v37 timeIntervalSinceReferenceDate];
              if (SecCertificateIsValid() && (v259 = v442[3], [v37 timeIntervalSinceReferenceDate], SecCertificateIsValid()))
              {
                v260 = v446[3];
                SecCertificateNotValidAfter();
                v262 = v261;
                v263 = v446[3];
                SecCertificateNotValidBefore();
                v265 = v264;
                [v37 timeIntervalSinceReferenceDate];
                v267 = v266;
                v268 = v446[3];
                SecCertificateNotValidBefore();
                if (v267 - v269 >= (v262 - v265) * 0.9)
                {
                  v270 = 1;
                  v320 = 1;
                }

                else
                {
                  v320 = 0;
                  v270 = 1;
                }
              }

              else
              {
                v270 = 0;
                v320 = 0;
              }

              if (v408 != 1)
              {
                goto LABEL_256;
              }

              v271 = *(*(a1 + 56) + 8);
              v397 = *(v271 + 40);
              v272 = copyRTCResetCountWithError(&v397);
              objc_storeStrong((v271 + 40), v397);
              *(v411 + 6) = v272;
              v275 = *(*(a1 + 56) + 8);
              v278 = *(v275 + 40);
              v277 = (v275 + 40);
              v276 = v278;
              if (!v272 && v276)
              {
                v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 1122, @"com.apple.MobileActivation.ErrorDomain", -1, v276, @"Failed to query RTC reset count.", v273, v274, v314);
LABEL_249:
                v34 = 0;
                v35 = 0;
                v36 = 0;
                goto LABEL_250;
              }

              v396 = v276;
              v279 = copy_keychain_data(v343, v338, &v440, &v396);
              objc_storeStrong(v277, v396);
              v280 = v429[5];
              v429[5] = v279;

              if (v440 != -25300 && v440)
              {
                v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 1128, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 56) + 8) + 40), @"Failed to query existing RTC reset count (%@/%@): %d", v281, v282, v343);
                goto LABEL_249;
              }

              v283 = *(*(a1 + 56) + 8);
              v284 = *(v283 + 40);
              *(v283 + 40) = 0;

              v285 = v429[5];
              if (v285)
              {
                [v285 getBytes:&v414 length:4];
              }

              else
              {
                v293 = MEMORY[0x277D86220];
                v294 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v293, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "No cached PMU reset count exists (treating the cached certificate as expired).", buf, 2u);
                }

                v270 = 0;
              }

              if (*(v411 + 6) == v414)
              {
LABEL_256:
                if (is_virtual_machine())
                {
                  v295 = lockcrypto_query_certificate_properties(v446[3], @"1.2.840.113635.100.8.3", 0);
                  v39 = v295;
                  if (v295)
                  {
                    v296 = [v295 objectForKeyedSubscript:@"1021"];
                    v297 = isNSData(v296);
                    v298 = v297 == 0;

                    if (!v298)
                    {
                      v299 = +[GestaltHlprDeviceIdentity getSharedInstance];
                      v38 = [v299 copyAnswer:@"UniqueDeviceID"];

                      if (v38)
                      {
                        v300 = [v39 objectForKeyedSubscript:@"1021"];
                        v301 = [v300 hexString];
                        v302 = [v301 caseInsensitiveCompare:v38] == 0;

                        if (v302)
                        {
                          goto LABEL_266;
                        }

                        v303 = MEMORY[0x277D86220];
                        v304 = MEMORY[0x277D86220];
                        if (os_log_type_enabled(v303, OS_LOG_TYPE_DEFAULT))
                        {
                          v305 = [v39 objectForKeyedSubscript:@"1021"];
                          v306 = [v305 hexString];
                          *buf = 138412546;
                          v475 = v306;
                          v476 = 2112;
                          v477 = v38;
                          _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Existing certificate's UDID (%@) does not match the current UDID (%@), VM may have moved to a new host. Treating key/certificates as invalid.", buf, 0x16u);
                        }

                        v270 = 0;
                        v328 = 0;
                      }

                      else
                      {
                        v311 = MEMORY[0x277D86220];
                        v312 = MEMORY[0x277D86220];
                        if (os_log_type_enabled(v311, OS_LOG_TYPE_FAULT))
                        {
                          v313 = copy_current_process_name();
                          __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_171_cold_1(v313, v490);
                        }

                        v38 = 0;
                      }

LABEL_266:
                      v307 = v442[3];
                      if (v322)
                      {
                        v489[0] = v446[3];
                        v489[1] = v307;
                        v489[2] = v37;
                        v308 = v489;
                        v309 = 3;
                      }

                      else
                      {
                        v488[0] = v446[3];
                        v488[1] = v307;
                        v308 = v488;
                        v309 = 2;
                      }

                      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v308 count:v309];
                      if (v270)
                      {
                        v321 = 1;
                        if (!v320)
                        {
                          v36 = 0;
                          v35 = 0;
                          goto LABEL_177;
                        }
                      }

                      else
                      {
                        v321 = 0;
                      }

LABEL_142:
                      if (v122)
                      {
                        v163 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 1192, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Missing or expired certificates, and network request explictly not attempted.", v128, v129, v314);
                      }

                      else
                      {
                        if (v328 && (v164 = v451[3]) != 0)
                        {
                          v165 = CFRetain(v164);
                          v459[3] = v165;
                        }

                        else
                        {
                          v166 = a1 + 56;
                          v167 = *(*(a1 + 56) + 8);
                          v395 = *(v167 + 40);
                          v165 = createReferenceKeyBlob(cf, queue, v347, &v395);
                          objc_storeStrong((v167 + 40), v395);
                          v459[3] = v165;
                          if (!v165)
                          {
                            v163 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 1203, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*v166 + 8) + 40), @"Failed to create reference key.", v168, v169, v314);
                            v36 = 0;
                            v35 = 0;
LABEL_176:
                            v208 = *(*v166 + 8);
                            v209 = *(v208 + 40);
                            *(v208 + 40) = v163;

LABEL_177:
                            v210 = v451[3];
                            if (!v210 || !v34)
                            {
                              goto LABEL_30;
                            }

                            v211 = CFRetain(v210);
                            v463[3] = v211;
                            objc_storeStrong(v467 + 5, v34);
                            v212 = MEMORY[0x277D86220];
                            v213 = MEMORY[0x277D86220];
                            if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
                            {
                              v316 = [v467[5] objectAtIndexedSubscript:0];
                              v214 = MEMORY[0x277CBEAA8];
                              v319 = [v467[5] objectAtIndexedSubscript:0];
                              SecCertificateNotValidBefore();
                              v330 = [v214 dateWithTimeIntervalSinceReferenceDate:?];
                              v215 = MEMORY[0x277CBEAA8];
                              v318 = [v467[5] objectAtIndexedSubscript:0];
                              SecCertificateNotValidAfter();
                              queueb = [v215 dateWithTimeIntervalSinceReferenceDate:?];
                              v315 = [v467[5] objectAtIndexedSubscript:1];
                              v216 = MEMORY[0x277CBEAA8];
                              v317 = [v467[5] objectAtIndexedSubscript:1];
                              SecCertificateNotValidBefore();
                              v323 = [v216 dateWithTimeIntervalSinceReferenceDate:?];
                              v217 = MEMORY[0x277CBEAA8];
                              v218 = [v467[5] objectAtIndexedSubscript:1];
                              SecCertificateNotValidAfter();
                              v219 = [v217 dateWithTimeIntervalSinceReferenceDate:?];
                              v220 = v419[5];
                              *buf = 138544898;
                              v475 = v316;
                              v476 = 2114;
                              v477 = v330;
                              v478 = 2114;
                              v479 = queueb;
                              v480 = 2114;
                              v481 = v315;
                              v482 = 2114;
                              v483 = v323;
                              v484 = 2114;
                              v485 = v219;
                              v486 = 2114;
                              v487 = v220;
                              _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Returning cached certificates:\n* %{public}@\n    Not Valid Before: %{public}@\n  Not Valid After: %{public}@\n* %{public}@\n    Not Valid Before: %{public}@\n  Not Valid After: %{public}@\n* Server Timestamp: %{public}@\n", buf, 0x48u);
                            }

                            if (!v321)
                            {
                              goto LABEL_30;
                            }

                            v221 = MEMORY[0x277D86220];
                            v222 = MEMORY[0x277D86220];
                            if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
                            {
                              v223 = *(*(*(a1 + 56) + 8) + 40);
                              *buf = 138543362;
                              v475 = v223;
                              _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ (non-fatal, existing valid certificates)", buf, 0xCu);
                            }

                            v224 = *(*(a1 + 56) + 8);
                            v42 = *(v224 + 40);
                            *(v224 + 40) = 0;
                            goto LABEL_29;
                          }
                        }

                        v170 = SecKeyCopyPublicKey(v165);
                        v455[3] = v170;
                        if (v170)
                        {
                          v36 = SecKeyCopyExternalRepresentation(v170, &error);
                          if (v36)
                          {
                            v178 = v459[3];
                            v394 = 0;
                            v166 = a1 + 56;
                            v179 = *(*(a1 + 56) + 8);
                            v393 = *(v179 + 40);
                            v329 = security_create_external_representation(v178, &v394, &v393, v173, v174, v175, v176, v177);
                            v35 = v394;
                            objc_storeStrong((v179 + 40), v393);
                            if (v329)
                            {
                              [v347 setObject:v35 forKeyedSubscript:@"SigningKeyAttributes"];
                              queuea = dispatch_get_global_queue(0, 0);
                              v357[0] = MEMORY[0x277D85DD0];
                              v357[1] = 3221225472;
                              v357[2] = __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_2;
                              v357[3] = &unk_278586058;
                              v347 = v347;
                              v358 = v347;
                              v182 = v349;
                              v183 = *(a1 + 56);
                              v349 = v182;
                              v359 = v182;
                              v373 = v183;
                              v55 = v329;
                              v360 = v55;
                              v374 = v472;
                              v375 = v424;
                              v391 = v322;
                              v351 = v351;
                              v361 = v351;
                              v376 = &v434;
                              v377 = &v458;
                              v332 = v332;
                              v362 = v332;
                              v345 = v345;
                              v363 = v345;
                              v343 = v343;
                              v364 = v343;
                              v342 = v342;
                              v365 = v342;
                              v344 = v344;
                              v366 = v344;
                              v340 = v340;
                              v367 = v340;
                              v338 = v338;
                              v368 = v338;
                              v341 = v341;
                              v369 = v341;
                              v378 = v415;
                              v379 = &v410;
                              v380 = v416;
                              v381 = &v428;
                              v382 = v409;
                              v383 = v426;
                              v384 = &v462;
                              v385 = &v466;
                              v386 = &v450;
                              v387 = &v445;
                              v388 = &v441;
                              v34 = v34;
                              v370 = v34;
                              v389 = &v418;
                              v392 = v321;
                              v371 = *(a1 + 40);
                              v372 = *(a1 + 48);
                              v390 = &v454;
                              dispatch_async(queuea, v357);

                              v56 = &v358;
                              goto LABEL_41;
                            }

                            v163 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 1248, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*v166 + 8) + 40), @"Failed to encode RK as data.", v180, v181, v314);
                            goto LABEL_176;
                          }

                          v163 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 1216, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to encode RK public key as data.", v176, v177, v314);
                        }

                        else
                        {
                          v163 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 1210, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy RK public key.", v171, v172, v314);
                        }
                      }

                      v36 = 0;
                      v35 = 0;
                      v166 = a1 + 56;
                      goto LABEL_176;
                    }
                  }
                }

                else
                {
                  v39 = 0;
                }

                v38 = 0;
                goto LABEL_266;
              }

              v292 = MEMORY[0x277D86220];
              v310 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v292, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2261FC000, v292, OS_LOG_TYPE_DEFAULT, "PMU reset occurred since the cached certificate was obtained (treating the cached certificate as expired).", buf, 2u);
              }
            }

            else
            {
              if ((mobileactivationErrorHasDomainAndErrorCode(*(*(*(a1 + 56) + 8) + 40), @"com.apple.MobileActivation.ErrorDomain", -31) & 1) == 0)
              {
                v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 1096, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 56) + 8) + 40), @"Failed to copy date used for certificate validation.", v286, v287, v314);
                v34 = 0;
                v35 = 0;
                v36 = 0;
                v37 = 0;
LABEL_250:
                v38 = 0;
                v39 = 0;
                goto LABEL_28;
              }

              v288 = MEMORY[0x277D86220];
              v289 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v288, OS_LOG_TYPE_DEFAULT))
              {
                v290 = *(*(*(a1 + 56) + 8) + 40);
                *buf = 138412290;
                v475 = v290;
                _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to copy the date used for certificate validation (treating the cached certificate as expired): %@", buf, 0xCu);
              }

              v320 = 0;
              v291 = *(*(a1 + 56) + 8);
              v292 = *(v291 + 40);
              *(v291 + 40) = 0;
            }

            v270 = 0;
            goto LABEL_256;
          }

LABEL_141:
          v39 = 0;
          v38 = 0;
          v37 = 0;
          v321 = 0;
          v34 = 0;
          goto LABEL_142;
        }

        v184 = *(*(a1 + 56) + 8);
        v404 = *(v184 + 40);
        load_certificate(v446 + 3, v343, v339, &v440, &v404);
        objc_storeStrong((v184 + 40), v404);
        if (v440 != -25300 && v440)
        {
          v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 965, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 56) + 8) + 40), @"Failed to query existing leaf certificate (%@/%@): %d", v185, v186, v343);
        }

        else
        {
          v187 = *(*(a1 + 56) + 8);
          v188 = *(v187 + 40);
          *(v187 + 40) = 0;

          v189 = *(*(a1 + 56) + 8);
          v403 = *(v189 + 40);
          load_certificate(v442 + 3, v343, v337, &v440, &v403);
          objc_storeStrong((v189 + 40), v403);
          if (v440 != -25300 && v440)
          {
            v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 973, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 56) + 8) + 40), @"Failed to query existing intermediate certificate (%@/%@): %d", v190, v191, v343);
          }

          else
          {
            v192 = *(*(a1 + 56) + 8);
            v193 = *(v192 + 40);
            *(v192 + 40) = 0;

            if (!v446[3] || !v442[3])
            {
              v334 = 0;
              goto LABEL_188;
            }

            v194 = objc_alloc_init(MEMORY[0x277CBEB28]);
            v195 = v435[5];
            v435[5] = v194;

            if (v435[5])
            {
              v200 = SecCertificateCopyData(v446[3]);
              if (v200)
              {
                [v435[5] appendData:v200];
                v334 = SecCertificateCopyData(v442[3]);

                if (v334)
                {
                  [v435[5] appendData:v334];
                  v203 = v435[5];
                  v204 = *(*(a1 + 56) + 8);
                  v402 = *(v204 + 40);
                  v205 = store_keychain_data(v203, v343, v342, &v402);
                  objc_storeStrong((v204 + 40), v402);
                  if (v205)
                  {
                    delete_certificate(v343, v339, 0);
                    delete_certificate(v343, v337, 0);
LABEL_188:
                    v333 = 0;
                    goto LABEL_189;
                  }

                  v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 1003, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 56) + 8) + 40), @"Failed to store leaf/intermediate certificates.", v206, v207, v314);
LABEL_158:
                  v34 = 0;
                  v35 = 0;
                  v36 = 0;
                  v37 = 0;
                  v38 = 0;
                  v39 = 0;
                  v40 = 0;
                  v333 = 0;
                  goto LABEL_28;
                }

                v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 996, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate data.", v201, v202, v314);
              }

              else
              {
                v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 988, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate data.", v198, v199, v314);
              }
            }

            else
            {
              v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 982, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate data.", v196, v197, v314);
            }
          }
        }
      }
    }

    v34 = 0;
    v35 = 0;
    v36 = 0;
    goto LABEL_156;
  }

  v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 724, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.", v18, v19, v314);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v336 = 0;
  v337 = 0;
  v331 = 0;
  v332 = 0;
  cf = 0;
  v347 = 0;
  v344 = 0;
  v345 = 0;
  v342 = 0;
  v343 = 0;
  v338 = 0;
  v339 = 0;
  v340 = 0;
  v341 = 0;
  v37 = 0;
LABEL_26:
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v346 = 0;
LABEL_27:
  v333 = 0;
  v334 = 0;
LABEL_28:
  v41 = *(*(a1 + 56) + 8);
  v42 = *(v41 + 40);
  *(v41 + 40) = v33;
LABEL_29:

LABEL_30:
  v43 = *(a1 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_312;
  block[3] = &unk_278586008;
  v327 = *(a1 + 48);
  v44 = v327;
  v354 = v327;
  v355 = &v462;
  v356 = &v466;
  dispatch_async(v43, block);
  v45 = v459;
  v46 = v459[3];
  if (v46)
  {
    CFRelease(v46);
    v45 = v459;
  }

  v45[3] = 0;
  v47 = v455;
  v48 = v455[3];
  if (v48)
  {
    CFRelease(v48);
    v47 = v455;
  }

  v47[3] = 0;
  v49 = v451;
  v50 = v451[3];
  if (v50)
  {
    CFRelease(v50);
    v49 = v451;
  }

  v49[3] = 0;
  v51 = v446;
  v52 = v446[3];
  if (v52)
  {
    CFRelease(v52);
    v51 = v446;
  }

  v51[3] = 0;
  v53 = v442;
  v54 = v442[3];
  if (v54)
  {
    CFRelease(v54);
    v53 = v442;
  }

  v55 = 0;
  v56 = &v354;
  v53[3] = 0;
LABEL_41:

  if (task)
  {
    CFRelease(task);
  }

  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(v409, 8);
  _Block_object_dispose(&v410, 8);
  _Block_object_dispose(v415, 8);

  _Block_object_dispose(v416, 8);
  _Block_object_dispose(&v418, 8);

  _Block_object_dispose(v424, 8);
  _Block_object_dispose(v426, 8);

  _Block_object_dispose(&v428, 8);
  _Block_object_dispose(&v434, 8);

  _Block_object_dispose(&v441, 8);
  _Block_object_dispose(&v445, 8);
  _Block_object_dispose(&v450, 8);
  _Block_object_dispose(&v454, 8);
  _Block_object_dispose(&v458, 8);
  _Block_object_dispose(&v462, 8);

  _Block_object_dispose(&v466, 8);
  _Block_object_dispose(v472, 8);

  v57 = *MEMORY[0x277D85DE8];
}

void sub_226200244(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x308], 8);
  _Block_object_dispose(&STACK[0x328], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x370], 8);
  _Block_object_dispose(&STACK[0x3A0], 8);
  _Block_object_dispose(&STACK[0x3D0], 8);
  _Block_object_dispose(&STACK[0x400], 8);
  _Block_object_dispose(&STACK[0x430], 8);
  _Block_object_dispose(&STACK[0x460], 8);
  _Block_object_dispose(&STACK[0x498], 8);
  _Block_object_dispose(&STACK[0x4B8], 8);
  _Block_object_dispose(&STACK[0x4E0], 8);
  _Block_object_dispose(&STACK[0x500], 8);
  _Block_object_dispose(&STACK[0x520], 8);
  _Block_object_dispose(&STACK[0x540], 8);
  _Block_object_dispose(&STACK[0x560], 8);
  _Block_object_dispose(&STACK[0x590], 8);
  _Unwind_Resume(a1);
}

id copy_keychain_data(void *a1, void *a2, OSStatus *a3, void *a4)
{
  v29[4] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v11 = v8;
  result = 0;
  if (v8)
  {
    v12 = *MEMORY[0x277CDC228];
    v28[0] = *MEMORY[0x277CDC080];
    v28[1] = v12;
    v13 = *MEMORY[0x277CDC238];
    v29[0] = v8;
    v29[1] = v13;
    v14 = *MEMORY[0x277CDC5C8];
    v28[2] = *MEMORY[0x277CDC558];
    v28[3] = v14;
    v29[2] = MEMORY[0x277CBEC38];
    v29[3] = MEMORY[0x277CBEC38];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
    v16 = [v15 mutableCopy];

    if (v7)
    {
      [v16 setObject:v7 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
    }

    v19 = SecItemCopyMatching(v16, &result);
    if (v19)
    {
      v20 = createMobileActivationError("copy_keychain_data", 810, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy keychain item %@: %d", v17, v18, v11);
      v21 = 0;
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v20 = 0;
      v21 = result;
      result = 0;
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  v20 = createMobileActivationError("copy_keychain_data", 788, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.", v9, v10, v26);
  v21 = 0;
  v16 = 0;
  v19 = -1;
  if (a3)
  {
LABEL_8:
    *a3 = v19;
  }

LABEL_9:
  if (a4 && !v21)
  {
    v22 = v20;
    *a4 = v20;
  }

  if (result)
  {
    CFRelease(result);
  }

  result = 0;
  v23 = v21;

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

void __copyRTCResetCountWithError_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v11 objectForKeyedSubscript:@"TotalRTCResetCount"];
  v7 = isNSNumber(v6);

  if (v7)
  {
    v8 = [v11 objectForKeyedSubscript:@"TotalRTCResetCount"];
    *(*(*(a1 + 32) + 8) + 24) = [v8 unsignedIntValue];
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

id copy_process_name()
{
  v0 = MEMORY[0x28223BE20]();
  v11 = *MEMORY[0x277D85DE8];
  bzero(buffer, 0x1000uLL);
  memset(v9, 0, sizeof(v9));
  if (v0 && ([MEMORY[0x277CCAE80] currentConnection], (v1 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v2 = v1;
    v3 = [v1 processIdentifier];
  }

  else
  {
    v3 = getpid();
  }

  proc_pidpath(v3, buffer, 0x1000u);
  v4 = strlen(buffer);
  if ((v4 & 0x80000000) == 0)
  {
    do
    {
      if (buffer[v4] == 47)
      {
        break;
      }
    }

    while (v4-- > 0);
  }

  __strlcpy_chk();
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s", v9];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t copyRTCResetCountWithError(void *a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283968088];
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.mobileactivationd" options:4096];
  [v3 setRemoteObjectInterface:v2];
  [v3 resume];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __copyRTCResetCountWithError_block_invoke;
  v9[3] = &unk_278585EC0;
  v9[4] = &v14;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __copyRTCResetCountWithError_block_invoke_2;
  v8[3] = &unk_278585EE8;
  v8[4] = &v10;
  v8[5] = &v14;
  [v4 copyRTCResetCountWithCompletionBlock:v8];
  v5 = v15[5];
  if (v5)
  {
    v6 = 0;
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *(v11 + 6);
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    *a1 = v5;
  }

LABEL_7:
  [v3 invalidate];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v6;
}

void sub_226200990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

id isNSNumber(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSString(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

CFTypeRef copy_keychain_item(void *a1, void *a2, void *a3, OSStatus *a4, void *a5)
{
  v38[4] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v14 = v11;
  result = 0;
  if (!v10)
  {
    v18 = createMobileActivationError("copy_keychain_item", 542, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.", v12, v13, v34);
    v19 = 0;
    v20 = -1;
    if (!a4)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v35 = a5;
  if (v11)
  {
    v15 = [v11 objectForKeyedSubscript:@"LocalAuthenticationContext"];
    if (v15)
    {
      v16 = [v14 objectForKeyedSubscript:@"LocalAuthenticationContext"];
      getLAContextClass();
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v15 = [v14 objectForKeyedSubscript:@"LocalAuthenticationContext"];
      }

      else
      {
        v15 = 0;
      }
    }

    v21 = [v14 objectForKeyedSubscript:@"UseAuthenticationUI"];
    v22 = isNSString(v21);

    if (v22)
    {
      v23 = [v14 objectForKeyedSubscript:@"UseAuthenticationUI"];
      goto LABEL_13;
    }
  }

  else
  {
    v15 = 0;
  }

  v23 = 0;
LABEL_13:
  v24 = *MEMORY[0x277CDC228];
  v37[0] = *MEMORY[0x277CDC080];
  v37[1] = v24;
  v25 = *MEMORY[0x277CDC250];
  v38[0] = v10;
  v38[1] = v25;
  v26 = *MEMORY[0x277CDC5C8];
  v37[2] = *MEMORY[0x277CDC568];
  v37[3] = v26;
  v38[2] = MEMORY[0x277CBEC38];
  v38[3] = MEMORY[0x277CBEC38];
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:4];
  v28 = [v27 mutableCopy];

  if (v9)
  {
    [v28 setObject:v9 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
  }

  if (v15)
  {
    [v28 setObject:v15 forKeyedSubscript:*MEMORY[0x277CDC5A0]];
  }

  if (v23)
  {
    [v28 setObject:v23 forKeyedSubscript:*MEMORY[0x277CDC5A8]];
  }

  v20 = SecItemCopyMatching(v28, &result);
  if (v20)
  {
    v18 = createMobileActivationError("copy_keychain_item", 586, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy keychain item %@: %d", v29, v30, v10);

    v19 = 0;
  }

  else
  {
    v19 = result;
    result = 0;

    v18 = 0;
  }

  a5 = v35;
  if (a4)
  {
LABEL_23:
    *a4 = v20;
  }

LABEL_24:
  if (a5 && !v19)
  {
    v31 = v18;
    *a5 = v18;
  }

  if (result)
  {
    CFRelease(result);
  }

  result = 0;

  v32 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t isRunningInDiagnosticsMode()
{
  if (isRunningInDiagnosticsMode_onceToken != -1)
  {
    isRunningInDiagnosticsMode_cold_1();
  }

  return isRunningInDiagnosticsMode_retval;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id copyCertificateOIDsThatDiffer(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if (copyCertificateOIDsThatDiffer_onceToken != -1)
    {
      copyCertificateOIDsThatDiffer_cold_1();
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v29;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v28 + 1) + 8 * i);
          if ([copyCertificateOIDsThatDiffer_supportedOIDs containsObject:v9])
          {
            v10 = SecCertificateCopyExtensionValue();

            if (!v10)
            {
              [v3 addObject:v9];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v6);
    }

    v23 = v2;

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = copyCertificateOIDsThatDiffer_supportedOIDs;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * j);
          v17 = SecCertificateCopyExtensionValue();
          if (v17)
          {
            v18 = v17;
            v19 = [v4 containsObject:v16];

            if ((v19 & 1) == 0)
            {
              [v3 addObject:v16];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v13);
    }

    v20 = v3;
    v2 = v23;
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t security_certificate_matches_key(__SecKey *a1, void *a2, __SecCertificate *a3, void *a4)
{
  v9 = a2;
  error = 0;
  if (!a1 || !a3)
  {
    v15 = createMobileActivationError("security_certificate_matches_key", 533, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).", v7, v8, v32);
    v14 = 0;
    v16 = 0;
    v13 = 0;
    goto LABEL_15;
  }

  v10 = SecKeyCopyPublicKey(a1);
  v13 = v10;
  if (!v10)
  {
    v15 = createMobileActivationError("security_certificate_matches_key", 539, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy RK public key.", v11, v12, v32);
    v14 = 0;
LABEL_8:
    v16 = 0;
    goto LABEL_15;
  }

  if (v9)
  {
    v14 = v9;
    goto LABEL_10;
  }

  v14 = SecKeyCopyExternalRepresentation(v10, &error);
  if (!v14)
  {
    v15 = createMobileActivationError("security_certificate_matches_key", 548, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to copy RK public key buffer.", v17, v18, v32);
    goto LABEL_8;
  }

LABEL_10:
  v19 = SecCertificateCopyKey(a3);
  v16 = v19;
  if (!v19)
  {
    v15 = createMobileActivationError("security_certificate_matches_key", 557, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve certificate public key.", v20, v21, v32);
LABEL_15:
    v24 = 0;
    if (!a4)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v24 = SecKeyCopyExternalRepresentation(v19, &error);
  if (!v24)
  {
    v29 = error;
    v30 = @"Failed to encode certificate public key as data.";
    v31 = 563;
    goto LABEL_26;
  }

  if (([(__CFData *)v14 isEqualToData:v24]& 1) == 0)
  {
    v30 = @"Certificate public key does not match RK public key.";
    v31 = 570;
    v29 = 0;
LABEL_26:
    v15 = createMobileActivationError("security_certificate_matches_key", v31, @"com.apple.MobileActivation.ErrorDomain", -1, v29, v30, v22, v23, v32);
    if (!a4)
    {
LABEL_17:
      v25 = 0;
      v27 = 0;
      if (!v13)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_16:
    v26 = v15;
    *a4 = v15;
    goto LABEL_17;
  }

  v15 = 0;
  v25 = 1;
LABEL_18:
  CFRelease(v13);
  v27 = v25;
LABEL_19:
  if (v16)
  {
    CFRelease(v16);
  }

  if (error)
  {
    CFRelease(error);
  }

  error = 0;

  return v27;
}

id isNSData(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t isAutomaticTimeEnabledWithError(void *a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283968088];
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.mobileactivationd" options:4096];
  [v3 setRemoteObjectInterface:v2];
  [v3 resume];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __isAutomaticTimeEnabledWithError_block_invoke;
  v9[3] = &unk_278585EC0;
  v9[4] = &v14;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __isAutomaticTimeEnabledWithError_block_invoke_2;
  v8[3] = &unk_278585EE8;
  v8[4] = &v10;
  v8[5] = &v14;
  [v4 copyAutomaticTimeEnabledWithCompletion:v8];
  v5 = v15[5];
  if (v5)
  {
    v6 = 0;
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *(v11 + 24);
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  if ((v6 & 1) == 0)
  {
    *a1 = v5;
  }

LABEL_7:
  [v3 invalidate];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v6 & 1;
}

void sub_226201668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void __isAutomaticTimeEnabledWithError_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v11 objectForKeyedSubscript:@"AutomaticTimeEnabled"];
  v7 = isNSNumber(v6);

  if (v7)
  {
    v8 = [v11 objectForKeyedSubscript:@"AutomaticTimeEnabled"];
    *(*(*(a1 + 32) + 8) + 24) = [v8 BOOLValue];
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

double copyMonotonicClock(void *a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283968088];
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.mobileactivationd" options:4096];
  [v3 setRemoteObjectInterface:v2];
  [v3 resume];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __copyMonotonicClock_block_invoke;
  v9[3] = &unk_278585EC0;
  v9[4] = &v14;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __copyMonotonicClock_block_invoke_2;
  v8[3] = &unk_278585EE8;
  v8[4] = &v10;
  v8[5] = &v14;
  [v4 copyMonotonicClockWithCompletionBlock:v8];
  v5 = v15[5];
  v6 = 0.0;
  if (!v5)
  {
    v6 = v11[3];
  }

  if (a1 && v6 == 0.0)
  {
    *a1 = v5;
  }

  [v3 invalidate];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v6;
}

void sub_226201958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void __copyMonotonicClock_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [v12 objectForKeyedSubscript:@"MonotonicClockNow"];
  v7 = isNSNumber(v6);

  if (v7)
  {
    v8 = [v12 objectForKeyedSubscript:@"MonotonicClockNow"];
    [v8 doubleValue];
    *(*(*(a1 + 32) + 8) + 24) = v9;
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
}

uint64_t X509ExtensionParseDeviceAttestationIdentity(unint64_t *a1, void *a2, unint64_t *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_16;
  }

  v7 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    goto LABEL_17;
  }

  if (a1[1] != v7 - 0x5555555555555556)
  {
    result = 0;
LABEL_16:
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (v7 <= v7 - 0x5555555555555556)
  {
    v11 = *a1;
    v12 = a1[1];
    result = ccder_blob_decode_tl();
    if (!result)
    {
      goto LABEL_16;
    }

    result = ccder_blob_decode_tl();
    if (!result)
    {
      goto LABEL_16;
    }

    if (a3)
    {
      if (v12 < v11 || v12 - v11 < 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_18;
      }

      *a3 = v11;
      a3[1] = 0xAAAAAAAAAAAAAAAALL;
    }

    *a2 |= 0x240000800000uLL;
    v8 = *a1;
    if (*a1 < 0x5555555555555556)
    {
      v9 = v8 - 0x5555555555555556;
      if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
      {
        *a1 = v9;
        result = 1;
        goto LABEL_16;
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(0x5513u);
  }

LABEL_18:
  __break(0x5519u);
  return result;
}

unint64_t X509PolicyCheckForBlockedKeys(uint64_t a1)
{
  result = a1 + 88;
  if (result > a1 + 104)
  {
    __break(0x5519u);
  }

  else
  {
    result = compare_octet_string(result, &BlockedYonkersSPKI);
    if (!result)
    {
      *(a1 + 240) &= 0xFFFFFFFFFFF3FFFFLL;
    }
  }

  return result;
}

uint64_t X509ExtensionParseAuthorityKeyIdentifier(unint64_t *a1, unint64_t *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_14;
  }

  v7 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    goto LABEL_15;
  }

  if (v7 - 0x5555555555555556 != a1[1])
  {
    result = 0;
LABEL_14:
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (v7 <= v7 - 0x5555555555555556)
  {
    v11 = *a1;
    v12 = a1[1];
    result = ccder_blob_decode_tl();
    if (result)
    {
      if (v12 < v11 || v12 - v11 < 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_16;
      }

      *a2 = v11;
      *a3 = 0xAAAAAAAAAAAAAAAALL;
    }

    v8 = *a1;
    if (*a1 < 0x5555555555555556)
    {
      v9 = v8 - 0x5555555555555556;
      if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
      {
        *a1 = v9;
        result = 1;
        goto LABEL_14;
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(0x5513u);
  }

LABEL_16:
  __break(0x5519u);
  return result;
}

uint64_t X509ExtensionParseSubjectKeyIdentifier(unint64_t *a1, unint64_t *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_12;
  }

  v7 = a1[1];
  v8 = v7 >= *a1;
  v9 = v7 - *a1;
  if (!v8 || v9 < 0xAAAAAAAAAAAAAAAALL)
  {
LABEL_13:
    __break(0x5519u);
  }

  *a2 = *a1;
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v11 = *a1;
  if (*a1 < 0x5555555555555556)
  {
    v12 = v11 - 0x5555555555555556;
    if (v11 <= v11 - 0x5555555555555556 && v12 <= a1[1])
    {
      *a1 = v12;
LABEL_12:
      v14 = *MEMORY[0x277D85DE8];
      return result;
    }

    goto LABEL_13;
  }

  __break(0x5513u);
  return result;
}

id parseDERCertificatesFromChain(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v6 = v3;
  memset(v21, 0, sizeof(v21));
  v20 = 0;
  if (!v3)
  {
    v14 = @"Invalid input.";
    v15 = 106;
    v16 = -2;
LABEL_11:
    v9 = createMobileActivationError("parseDERCertificatesFromChain", v15, @"com.apple.MobileActivation.ErrorDomain", v16, 0, v14, v4, v5, v19);
    v10 = 0;
    goto LABEL_12;
  }

  v7 = [v3 bytes];
  v8 = CTParseCertificateSet(v7, v7 + [v6 length], v21, 3, &v20);
  if (v8 || !v20)
  {
    v19 = v8;
    v14 = @"Failed to parse certificate set: 0x%08x";
    v15 = 115;
    v16 = -1;
    goto LABEL_11;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = v9;
  if (v9)
  {
    if (v20)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:*&v21[v11] length:*(&v21[v11] + 1)];
        [v10 setObject:v13 atIndexedSubscript:v11];

        v11 = ++v12;
      }

      while (v20 > v12);
    }

    v10 = v10;
    v9 = 0;
  }

LABEL_12:
  if (a2 && !v10)
  {
    v9 = v9;
    *a2 = v9;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t CTParseCertificateSet(unint64_t a1, unint64_t a2, _OWORD *a3, uint64_t a4, void *a5)
{
  v6 = 0;
  v19 = *MEMORY[0x277D85DE8];
  if (a1 < a2 && a4)
  {
    v8 = 0;
    v9 = a4 - 1;
    v10 = a3;
    v11 = &a3[a4];
    while (1)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v18[17] = v12;
      v18[18] = v12;
      v18[15] = v12;
      v18[16] = v12;
      v18[13] = v12;
      v18[14] = v12;
      v18[11] = v12;
      v18[12] = v12;
      v18[9] = v12;
      v18[10] = v12;
      v18[7] = v12;
      v18[8] = v12;
      v18[5] = v12;
      v18[6] = v12;
      v18[3] = v12;
      v18[4] = v12;
      v18[1] = v12;
      v18[2] = v12;
      v18[0] = v12;
      v16 = a1;
      v17 = a2;
      result = X509CertificateParse(v18, &v16);
      if (result)
      {
        break;
      }

      a1 = v16;
      a2 = v17;
      if (v16 > v17 || v10 < a3 || (v10 + 1) > v11 || v10 > v10 + 1)
      {
        __break(0x5519u);
      }

      *v10 = v18[0];
      v6 = v8 + 1;
      if (a1 < a2)
      {
        ++v10;
        if (v9 != v8++)
        {
          continue;
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
LABEL_12:
    result = 0;
    if (a5)
    {
      *a5 = v6;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509CertificateParseWithExtension(unint64_t *a1, unint64_t *a2, const void *a3, size_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = 720939;
  v9 = *a2;
  v10 = a2[1];
  if (!ccder_blob_decode_tl())
  {
    goto LABEL_9;
  }

  v11 = *a2;
  result = X509CertificateParseImplicit(a1, a2, a3, a4);
  v8 = result;
  if (result)
  {
    goto LABEL_9;
  }

  if (v11 >= 0x5555555555555556)
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5500u);
    goto LABEL_12;
  }

  v8 = 720939;
  if (*a2 != v11 - 0x5555555555555556)
  {
LABEL_9:
    v14 = *MEMORY[0x277D85DE8];
    return v8;
  }

  v13 = v11 - v9 - 0x5555555555555556;
  if (v11 - v9 >= 0x5555555555555556)
  {
    goto LABEL_11;
  }

  if (v10 >= v9 && v13 <= v10 - v9)
  {
    *a1 = v9;
    a1[1] = v13;
    X509PolicyCheckForBlockedKeys(a1);
    v8 = 0;
    goto LABEL_9;
  }

LABEL_12:
  __break(0x5519u);
  return result;
}

uint64_t X509CertificateParseImplicit(unint64_t a1, unint64_t *a2, const void *a3, size_t a4)
{
  v72 = *MEMORY[0x277D85DE8];
  v69 = 0;
  v70 = 0;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  v68 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 > v5)
  {
    goto LABEL_189;
  }

  v67 = *a2;
  v68 = v5;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  if (a1 + 304 < a1)
  {
    goto LABEL_189;
  }

  v10 = 720915;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_56;
  }

  v12 = v70;
  v13 = v67;
  v14 = v70 + v67 - v4;
  if (__CFADD__(v70, v67 - v4))
  {
    goto LABEL_191;
  }

  if (v14 > v5 - v4)
  {
    goto LABEL_189;
  }

  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  v65 = 0xAAAAAAAAAAAAAAAALL;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v13, v12))
  {
    goto LABEL_190;
  }

  v15 = v13 + v12;
  if (v13 > v15 || v15 > v68)
  {
    goto LABEL_189;
  }

  v65 = v13;
  v66 = v15;
  v63 = v13;
  v64 = v15;
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (__CFADD__(v63, v69))
    {
      goto LABEL_190;
    }

    if (!ccder_blob_decode_uint64() || v63 != v63 + v69)
    {
      v10 = 720916;
      goto LABEL_56;
    }

    if (v63 + v69 > v64)
    {
      goto LABEL_189;
    }

    v65 = v63;
    v66 = v64;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720917;
    goto LABEL_56;
  }

  v16 = v65;
  v17 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v18 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 136) = v65;
  *(a1 + 144) = v18;
  if (__CFADD__(v16, v18))
  {
    goto LABEL_190;
  }

  v19 = v16 + v18;
  if (v19 > v17)
  {
    goto LABEL_189;
  }

  if (v16 > v19)
  {
    goto LABEL_189;
  }

  v65 = v19;
  if (a1 + 152 > a1 + 168)
  {
    goto LABEL_189;
  }

  if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v65, (a1 + 152)))
  {
    v10 = 720918;
    goto LABEL_56;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720919;
    goto LABEL_56;
  }

  v20 = v65;
  v21 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v22 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 120) = v65;
  *(a1 + 128) = v22;
  if (__CFADD__(v20, v22))
  {
    goto LABEL_190;
  }

  v23 = v20 + v22;
  if (v23 > v21 || v20 > v23)
  {
    goto LABEL_189;
  }

  v65 = v23;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720920;
    goto LABEL_56;
  }

  v24 = v65;
  v25 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v26 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 72) = v65;
  *(a1 + 80) = v26;
  if (__CFADD__(v24, v26))
  {
    goto LABEL_190;
  }

  v27 = v24 + v26;
  if (v27 > v25 || v24 > v27)
  {
    goto LABEL_189;
  }

  v65 = v27;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720921;
    goto LABEL_56;
  }

  v28 = v65;
  v29 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v30 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 104) = v65;
  *(a1 + 112) = v30;
  if (__CFADD__(v28, v30))
  {
    goto LABEL_190;
  }

  v31 = v28 + v30;
  if (v28 + v30 > v29 || v28 > v31)
  {
    goto LABEL_189;
  }

  v65 = v28 + v30;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720922;
    goto LABEL_56;
  }

  v32 = v65;
  v33 = v69;
  v34 = v65 - v31 + v69;
  if (__CFADD__(v65 - v31, v69))
  {
    goto LABEL_191;
  }

  if (v34 > v29 - v31)
  {
    goto LABEL_189;
  }

  *(a1 + 88) = v31;
  *(a1 + 96) = v34;
  if (__CFADD__(v32, v33))
  {
LABEL_190:
    __break(0x5513u);
    goto LABEL_191;
  }

  v35 = v32 + v33;
  if (v32 > v35 || v35 > v66)
  {
    goto LABEL_189;
  }

  v64 = v66;
  v65 = v35;
  v63 = v35;
  if (ccder_blob_decode_tl())
  {
    v10 = 720923;
    goto LABEL_56;
  }

  if (v65 > v66)
  {
    goto LABEL_189;
  }

  v63 = v65;
  v64 = v66;
  if (ccder_blob_decode_tl())
  {
    v10 = 720924;
    goto LABEL_56;
  }

  if (v65 > v66)
  {
    goto LABEL_189;
  }

  v63 = v65;
  v64 = v66;
  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_167:
    if (*(a1 + 32) < 3uLL)
    {
      if (v65 != v66)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v66 > a2[1] || *a2 > v66)
      {
        goto LABEL_189;
      }

      *a2 = v66;
    }

    if (!__CFADD__(v67, v70))
    {
      if (v67 > v67 + v70 || v67 + v70 > v68)
      {
        goto LABEL_189;
      }

      v67 += v70;
      if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v67, (a1 + 40)))
      {
        v10 = 720937;
        goto LABEL_56;
      }

      *&v71[0] = 0xAAAAAAAAAAAAAAAALL;
      *(&v71[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v61 = 0;
      result = ccder_blob_decode_bitstring();
      if (!result)
      {
        v10 = 720938;
        goto LABEL_56;
      }

      if (v61 < 0xFFFFFFFFFFFFFFF9)
      {
        if (*(&v71[0] + 1) >= *&v71[0])
        {
          v52 = (v61 + 7) >> 3;
          if (v52 <= *(&v71[0] + 1) - *&v71[0])
          {
            *(a1 + 56) = *&v71[0];
            *(a1 + 64) = v52;
            v53 = v68;
            if (v67 <= v68)
            {
              v10 = 0;
              *a2 = v67;
              a2[1] = v53;
              goto LABEL_56;
            }
          }
        }

        goto LABEL_189;
      }

LABEL_191:
      __break(0x5500u);
LABEL_192:
      __break(0x5507u);
      return result;
    }

    goto LABEL_190;
  }

  v61 = 0xAAAAAAAAAAAAAAAALL;
  v62 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v63, v69))
  {
    goto LABEL_190;
  }

  if (v63 > v63 + v69 || v63 + v69 > v64)
  {
    goto LABEL_189;
  }

  v61 = v63;
  v62 = v63 + v69;
  result = ccder_blob_decode_tl();
  if (!result || !v69)
  {
    goto LABEL_163;
  }

  v37 = v61;
  if (__CFADD__(v61, v69))
  {
    goto LABEL_190;
  }

  v38 = v61 + v69;
  if (v61 > v61 + v69 || v38 > v62)
  {
    goto LABEL_189;
  }

  v62 = v61 + v69;
  *(a1 + 266) = 0;
  memset(&v71[2], 0, 128);
  if (a3)
  {
    v39 = a4 == 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = !v39;
  memset(v71, 0, 32);
  if (v37 >= v38)
  {
LABEL_162:
    if (v37 != v38)
    {
LABEL_163:
      v10 = 720925;
      goto LABEL_56;
    }

    if (v37 > v66 || v65 > v37)
    {
LABEL_189:
      __break(0x5519u);
    }

    v65 = v38;
    goto LABEL_167;
  }

  v54 = 0;
  v41 = 0;
  while (1)
  {
    v59 = 0xAAAAAAAAAAAAAAAALL;
    v60 = 0xAAAAAAAAAAAAAAAALL;
    v58 = 0;
    v57 = 0;
    result = ccder_blob_decode_tl();
    if ((result & 1) == 0)
    {
LABEL_184:
      v10 = 720926;
      goto LABEL_56;
    }

    v55 = 0xAAAAAAAAAAAAAAAALL;
    v56 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v61, v57))
    {
      goto LABEL_190;
    }

    if (v61 > v61 + v57 || v61 + v57 > v62)
    {
      goto LABEL_189;
    }

    v55 = v61;
    v56 = v61 + v57;
    result = ccder_blob_decode_tl();
    if (!result)
    {
      v10 = 720927;
      goto LABEL_56;
    }

    if (v56 < v55 || v69 > v56 - v55)
    {
      goto LABEL_189;
    }

    v59 = v55;
    v60 = v69;
    if (__CFADD__(v55, v69))
    {
      goto LABEL_190;
    }

    if (v55 + v69 > v56 || v55 > v55 + v69)
    {
      goto LABEL_189;
    }

    v55 += v69;
    if (!der_get_BOOLean(&v55, 1, &v58))
    {
      break;
    }

    result = ccder_blob_decode_tl();
    if (!result)
    {
      goto LABEL_185;
    }

    if (__CFADD__(v55, v69))
    {
      goto LABEL_190;
    }

    if (v56 != v55 + v69)
    {
LABEL_185:
      v10 = 720929;
      goto LABEL_56;
    }

    if (v40)
    {
      result = compare_octet_string_raw(&v59, a3, a4);
      if (!result)
      {
        if (v56 < v55)
        {
          goto LABEL_189;
        }

        v43 = v69;
        if (v69 > v56 - v55)
        {
          goto LABEL_189;
        }

        *(a1 + 248) = v55;
        *(a1 + 256) = v43;
      }
    }

    if (v60 == 3)
    {
      if (*v59 == 7509 && *(v59 + 2) == 15)
      {
        v50 = 720930;
        if (v41)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseKeyUsage(&v55);
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 1u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 19)
      {
        v50 = 720931;
        if ((v41 & 2) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseBasicConstraints(&v55, (a1 + 200), (a1 + 265));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 2u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 35)
      {
        v50 = 720932;
        if ((v41 & 4) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseAuthorityKeyIdentifier(&v55, (a1 + 168), (a1 + 176));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 4u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 14)
      {
        v50 = 720933;
        if ((v41 & 8) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseSubjectKeyIdentifier(&v55, (a1 + 184), (a1 + 192));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 8u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 37)
      {
        v50 = 720934;
        if ((v41 & 0x10) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseExtendedKeyUsage(&v55, (a1 + 208), (a1 + 216));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 0x10u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 17)
      {
        v50 = 720935;
        if ((v41 & 0x20) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseSubjectAltName(&v55, (a1 + 224), (a1 + 232));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 0x20u;
        goto LABEL_157;
      }

LABEL_133:
      if (__CFADD__(v55, v69))
      {
        goto LABEL_190;
      }

      if (v55 > v55 + v69 || v55 + v69 > v56)
      {
        goto LABEL_189;
      }

      v55 += v69;
      if (v58 == 1)
      {
        *(a1 + 266) = v58;
      }

      goto LABEL_157;
    }

    if (v60 < 8)
    {
      goto LABEL_133;
    }

    if (*v59 != -2042067414 || *(v59 + 3) != 1684273030)
    {
      goto LABEL_133;
    }

    v50 = 720936;
    if (!X509CertificateVerifyOnlyOneAppleExtension(&v59, v71, v54) || (result = X509ExtensionParseAppleExtension(&v55, v59, v60, (a1 + 240), (a1 + 248), v40), !result))
    {
LABEL_187:
      v10 = v50;
      goto LABEL_56;
    }

    if (v54 == 0xFF)
    {
      goto LABEL_192;
    }

    ++v54;
LABEL_157:
    if (v55 != v56)
    {
      goto LABEL_184;
    }

    if (__CFADD__(v61, v57))
    {
      goto LABEL_190;
    }

    v37 = v61 + v57;
    if (v61 > v61 + v57)
    {
      goto LABEL_189;
    }

    v38 = v62;
    if (v37 > v62)
    {
      goto LABEL_189;
    }

    v61 += v57;
    if (v37 >= v62)
    {
      goto LABEL_162;
    }
  }

  v10 = 720928;
LABEL_56:
  v36 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t ccder_blob_decode_AlgorithmIdentifierNULL(unint64_t *a1, unint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 > a1[1])
    {
      goto LABEL_20;
    }

    v6 = *a1;
    v7 = *a1;
    result = ccder_blob_decode_tl();
    if (result)
    {
      if (a2)
      {
        if (v7 < v6)
        {
          goto LABEL_20;
        }

        *a2 = v6;
        a2[1] = 0;
      }

      if (v6 == v7)
      {
        if (v6 <= a1[1] && *a1 <= v6)
        {
          *a1 = v6;
LABEL_18:
          result = 1;
          goto LABEL_19;
        }

LABEL_20:
        __break(0x5519u);
      }

      if (v6 > v7)
      {
        goto LABEL_20;
      }

      result = ccder_blob_decode_tl();
      if (result)
      {
        if (v6 != v7)
        {
          result = 0;
          goto LABEL_19;
        }

        if (v6 <= a1[1] && *a1 <= v6)
        {
          *a1 = v6;
          goto LABEL_18;
        }

        goto LABEL_20;
      }
    }
  }

LABEL_19:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t der_get_BOOLean(uint64_t *a1, int a2, _BYTE *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*a1 > a1[1])
  {
    __break(0x5519u);
  }

  v7 = *a1;
  v8 = a1[1];
  if ((ccder_blob_decode_tl() & 1) != 0 || !a2)
  {
    result = 0;
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    result = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509ExtensionParseBasicConstraints(uint64_t *a1, void *a2, _BYTE *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (result)
  {
    result = der_get_BOOLean(a1, 1, a3);
    if (result)
    {
      if (ccder_blob_decode_uint64())
      {
        if (*a3 != 1)
        {
          result = 0;
          goto LABEL_8;
        }

        *a2 = 0xAAAAAAAAAAAAAAAALL;
        *a2 = 0xAAAAAAAAAAAAAAABLL;
      }

      result = 1;
    }
  }

LABEL_8:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509ExtensionParseKeyUsage(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_bitstring();
  if (result)
  {
    *(a1 + 8);
    result = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509CertificateVerifyOnlyOneAppleExtension(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 > 9)
  {
    return 0;
  }

  v5 = result;
  v6 = 0;
  v7 = ~a2;
  while (v7 >= 16 * v6)
  {
    result = compare_octet_string(v5, a2 + 16 * v6);
    if (!result)
    {
      return result;
    }

    if (a3 <= v6++)
    {
      v9 = v5[1];
      v10 = (a2 + 16 * a3);
      *v10 = *v5;
      v10[1] = v9;
      return 1;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t compare_octet_string(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return memcmp(*a1, *a2, v2);
  }

  if (v2 > v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t X509ExtensionParseAppleExtension(uint64_t result, unint64_t a2, unint64_t a3, uint64_t *a4, unint64_t *a5, int a6)
{
  v67 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    a5 = 0;
  }

  if (a3 == 9)
  {
    if (*a2 == 0xB6463F78648862ALL && *(a2 + 8) == 1)
    {
      v57 = *MEMORY[0x277D85DE8];

      return X509ExtensionParseComponentAuth(result, a4, a5);
    }

    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 49)
    {
      v66 = 0;
      result = der_get_BOOLean(result, 0, &v66);
      if (result)
      {
        v58 = 0x20000040001;
        if (v66)
        {
          v58 = 0x10000080002;
        }

        *a4 |= v58;
      }

      goto LABEL_284;
    }

    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 44)
    {
      v60 = *MEMORY[0x277D85DE8];

      return X509ExtensionParseCertifiedChipIntermediate(result, a4, a5);
    }

    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 36)
    {
      v61 = *MEMORY[0x277D85DE8];

      return X509ExtensionParseMFIAuthv3Leaf(result);
    }

    if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 22)
    {
      if (*a2 == 0xC6463F78648862ALL && *(a2 + 8) == 19)
      {
        result = ccder_blob_check_null();
        if (result)
        {
          v14 = *a4 | 0x8000000000;
          goto LABEL_282;
        }

        goto LABEL_284;
      }

      if (*a2 != 0xA6463F78648862ALL || *(a2 + 8) != 1)
      {
        if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 29)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x2000000;
            goto LABEL_282;
          }
        }

        else
        {
          if (*a2 != 0xC6463F78648862ALL || *(a2 + 8) != 14)
          {
            if (*a2 != 0x86463F78648862ALL || *(a2 + 8) != 3)
            {
              goto LABEL_249;
            }

            v46 = *MEMORY[0x277D85DE8];

            return X509ExtensionParseDeviceAttestationIdentity(result, a4, a5);
          }

          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x4000000;
            goto LABEL_282;
          }
        }

        goto LABEL_284;
      }

      *a4 |= 0x1000000uLL;
LABEL_249:
      v54 = *result;
      v53 = *(result + 8);
LABEL_250:
      if (v54 <= v53)
      {
        *result = v53;
LABEL_283:
        result = 1;
        goto LABEL_284;
      }

      goto LABEL_288;
    }

    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 1048584;
LABEL_204:
    v14 = v55 | v56;
    goto LABEL_282;
  }

  if (a3 != 10)
  {
    if (a3 == 11)
    {
      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10901066463F786)
      {
        result = ccder_blob_check_null();
        if (!result)
        {
          goto LABEL_284;
        }

        v14 = *a4 | 0x400000000000;
      }

      else
      {
        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10301066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x200;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10601066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x800;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11801066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x2000;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x12401066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x100000000000;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11901066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x4000;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 != 0x66463F78648862ALL || *(a2 + 3) != 0x21901066463F786)
        {
LABEL_164:
          v35 = 0;
          goto LABEL_165;
        }

        result = ccder_blob_check_null();
        if (!result)
        {
          goto LABEL_284;
        }

        v14 = *a4 | 0x8000;
      }

LABEL_282:
      *a4 = v14;
      goto LABEL_283;
    }

    if (a3 < 0xA)
    {
      goto LABEL_249;
    }

    if ((a3 & 0x8000000000000000) != 0)
    {
      goto LABEL_288;
    }

    goto LABEL_164;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 5122)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 0x800000100000;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 258)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 0x58600003F0D0;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1538)
  {
    goto LABEL_214;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4610)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0xF00;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 278)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x800000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3073)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x10;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1793)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x20000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3329)
  {
LABEL_214:
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x20;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 2305)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x40;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 513)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x80;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1025)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x10000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 769)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x100;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1537)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x400;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 6145)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x1000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 9217)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x80000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8193)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x2000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8705)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x4000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 315)
  {
    v63 = *MEMORY[0x277D85DE8];

    return X509ExtensionParseMFISWAuth(result, a4, a5);
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3074)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x300000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 304)
  {
    v65 = *MEMORY[0x277D85DE8];

    return X509ExtensionParseGenericSSLMarker();
  }

  v35 = 1;
LABEL_165:
  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 27)
  {
    v59 = *MEMORY[0x277D85DE8];

    return X509ExtensionParseServerAuthMarker(result, a2, a3, a4, a5);
  }

  if (!v35)
  {
    goto LABEL_249;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 832)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x400000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3586)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 37748736;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4354)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v55 = *a4;
      v56 = 0x8004000000;
      goto LABEL_204;
    }

LABEL_284:
    v64 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 327)
  {
    if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 3841)
    {
      goto LABEL_249;
    }

    v54 = *result;
    v53 = *(result + 8);
    if (!a5)
    {
LABEL_194:
      *a4 |= 0x80000000uLL;
      goto LABEL_250;
    }

    if (v54 <= v53)
    {
      *a5 = v54;
      a5[1] = v53 - v54;
      goto LABEL_194;
    }

LABEL_288:
    __break(0x5519u);
    return result;
  }

  v62 = *MEMORY[0x277D85DE8];

  return X509ExtensionParseMFI4Properties(result, a4, a5);
}

uint64_t isFactoryMFiCertificate(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (![a1 isEqualToString:@"com.apple.mfiaccessory"])
  {
    return 0;
  }

  v2 = SecCertificateCopyIssuerSummary();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 isEqualToString:@"Apple Accessory Host Attestation Authority - 00000002"];
  CFRelease(v3);
  return v4;
}

uint64_t security_valid_security_enclave_reference_key(SecKeyRef key, int a2, char *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Duplicate = key;
  v88[5] = *MEMORY[0x277D85DE8];
  error = 0;
  if (!key)
  {
    v45 = createMobileActivationError("security_valid_security_enclave_reference_key", 394, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid input.", a7, a8, v78);
    v46 = 0;
    cf = 0;
    v44 = 0;
LABEL_23:
    v16 = 0;
    v83 = 0;
    v84 = 0;
    v81 = 0;
    goto LABEL_35;
  }

  v12 = SecKeyCopyAttributes(key);
  if (!v12)
  {
    v45 = createMobileActivationError("security_valid_security_enclave_reference_key", 400, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query attributes.", v13, v14, v78);
    v46 = 0;
    cf = 0;
    v44 = 0;
    Duplicate = 0;
    goto LABEL_23;
  }

  v15 = *MEMORY[0x277CDC158];
  theDict = v12;
  v16 = CFDictionaryGetValue(v12, *MEMORY[0x277CDC158]);
  v17 = isNSString(v16);

  if (!v17)
  {
    createMobileActivationError("security_valid_security_enclave_reference_key", 406, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query attribute '%@'.", v18, v19, v15);
    v45 = LABEL_27:;
    cf = 0;
    v83 = 0;
LABEL_32:
    v44 = 0;
    Duplicate = 0;
    v84 = 0;
    goto LABEL_33;
  }

  if (([v16 isEqualToString:*MEMORY[0x277CDC170]] & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", *MEMORY[0x277CDC160]) & 1) == 0)
  {
    createMobileActivationError("security_valid_security_enclave_reference_key", 412, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid key type (actual, expected): (%@, %@)", v20, v21, v16);
    goto LABEL_27;
  }

  v22 = *MEMORY[0x277CDC018];
  v23 = CFDictionaryGetValue(theDict, *MEMORY[0x277CDC018]);
  v24 = isNSNumber(v23);

  v83 = v23;
  if (!v24)
  {
    createMobileActivationError("security_valid_security_enclave_reference_key", 418, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query attribute '%@'.", v25, v26, v22);
    v45 = LABEL_31:;
    cf = 0;
    goto LABEL_32;
  }

  if ([v23 unsignedIntValue] != 256 && objc_msgSend(v23, "unsignedIntValue") != 384)
  {
    createMobileActivationError("security_valid_security_enclave_reference_key", 423, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Unsupported key size: %@", v27, v28, v23);
    goto LABEL_31;
  }

  v79 = a3;
  v29 = *MEMORY[0x277CDC028];
  v30 = CFDictionaryGetValue(theDict, *MEMORY[0x277CDC028]);
  v31 = isNSString(v30);

  v84 = v30;
  if (!v31)
  {
    createMobileActivationError("security_valid_security_enclave_reference_key", 429, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query attribute '%@'.", v32, v33, v29);
    v45 = LABEL_29:;
    cf = 0;
    v44 = 0;
    Duplicate = 0;
LABEL_33:
    v81 = 0;
LABEL_34:
    v46 = theDict;
    goto LABEL_35;
  }

  v34 = *MEMORY[0x277CDC040];
  if (([v30 isEqualToString:*MEMORY[0x277CDC040]] & 1) == 0 && (objc_msgSend(v30, "isEqualToString:", *MEMORY[0x277CDC048]) & 1) == 0 && (objc_msgSend(v30, "isEqualToString:", *MEMORY[0x277CDC070]) & 1) == 0 && (objc_msgSend(v30, "isEqualToString:", *MEMORY[0x277CDC068]) & 1) == 0)
  {
    createMobileActivationError("security_valid_security_enclave_reference_key", 441, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Unsupported key type: %@", v35, v36, v30);
    goto LABEL_29;
  }

  if (!a2)
  {
    cf = 0;
    v44 = 0;
    v43 = 0;
    goto LABEL_49;
  }

  Duplicate = SecKeyCreateDuplicate();
  if (!Duplicate)
  {
    v58 = @"Failed to create duplicate RK.";
    v59 = 448;
    v60 = -1;
    v61 = 0;
LABEL_60:
    v45 = createMobileActivationError("security_valid_security_enclave_reference_key", v59, @"com.apple.MobileActivation.ErrorDomain", v60, v61, v58, v37, v38, v78);
    cf = 0;
LABEL_61:
    v44 = 0;
    goto LABEL_33;
  }

  v39 = *MEMORY[0x277CDC5A8];
  v40 = *MEMORY[0x277CDC5B0];
  if (!SecKeySetParameter())
  {
    v61 = error;
    v58 = @"Failed to set RK parameter.";
    v59 = 456;
LABEL_59:
    v60 = -1;
    goto LABEL_60;
  }

  if (([v30 isEqualToString:v34] & 1) != 0 || objc_msgSend(v30, "isEqualToString:", *MEMORY[0x277CDC048]))
  {
    v41 = SecKeyCreateSignature(Duplicate, *MEMORY[0x277CDC300], [MEMORY[0x277CBEA90] data], &error);
    if (v41)
    {
      v42 = v41;
      v43 = Duplicate;
      cf = 0;
      v44 = 0;
LABEL_50:
      v51 = 0;
      v81 = 0;
      v45 = 0;
      goto LABEL_51;
    }

    if (mobileactivationErrorHasDomainAndErrorCode(error, *MEMORY[0x277CC5640], -3))
    {
      v61 = error;
      v58 = @"Failed to create test signature.";
      v59 = 464;
      v60 = -2;
      goto LABEL_60;
    }

    v43 = Duplicate;
    cf = 0;
    v44 = 0;
LABEL_49:
    v42 = 0;
    goto LABEL_50;
  }

  v62 = SecAccessControlCreate();
  if (!v62)
  {
    v61 = error;
    v58 = @"Failed to create access control.";
    v59 = 470;
    goto LABEL_59;
  }

  v63 = *MEMORY[0x277CDBF08];
  v64 = v62;
  cf = v62;
  if ((SecAccessControlSetProtection() & 1) == 0)
  {
    v45 = createMobileActivationError("security_valid_security_enclave_reference_key", 475, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to set ACL protection to %@.", v65, v66, v63);
    goto LABEL_61;
  }

  v87[0] = *MEMORY[0x277CDBFD0];
  v87[1] = v15;
  v67 = *MEMORY[0x277CDC160];
  v88[0] = MEMORY[0x277CBEC28];
  v88[1] = v67;
  v68 = *MEMORY[0x277CDBEC0];
  v87[2] = v29;
  v87[3] = v68;
  v88[2] = v34;
  v88[3] = v64;
  v87[4] = v22;
  v88[4] = &unk_283965E70;
  v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:5];
  v69 = SecKeyCreateRandomKey(v81, &error);
  v44 = v69;
  if (!v69)
  {
    v45 = createMobileActivationError("security_valid_security_enclave_reference_key", 488, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to create reference key.", v73, v74, v78);
    goto LABEL_34;
  }

  v85 = 0;
  v43 = Duplicate;
  v51 = security_create_attestation(v69, Duplicate, &v85, v70, v71, v72, v73, v74);
  v45 = v85;
  if (v51)
  {
    v42 = 0;
LABEL_51:
    v46 = theDict;
    if (v79)
    {
      v47 = v16;
      if ([v84 isEqualToString:*MEMORY[0x277CDC070]])
      {
        v57 = 1;
      }

      else
      {
        v57 = [v84 isEqualToString:*MEMORY[0x277CDC068]];
      }

      *v79 = v57;
      v50 = 1;
      v46 = theDict;
    }

    else
    {
      v47 = v16;
      v50 = 1;
    }

LABEL_38:
    CFRelease(v46);
    v52 = v50;
    v53 = v42;
    v54 = v51;
    goto LABEL_39;
  }

  v77 = createMobileActivationError("security_valid_security_enclave_reference_key", 494, @"com.apple.MobileActivation.ErrorDomain", -11, v45, @"Failed to create test attestation.", v75, v76, v78);

  v45 = v77;
  v46 = theDict;
  Duplicate = v43;
LABEL_35:
  v43 = Duplicate;
  v47 = v16;
  if (a4)
  {
    v48 = v46;
    v49 = v45;
    v46 = v48;
    *a4 = v45;
  }

  v50 = 0;
  v42 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  if (v46)
  {
    goto LABEL_38;
  }

LABEL_39:
  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  v55 = *MEMORY[0x277D85DE8];
  return v52;
}

void DeviceIdentityIssueClientCertificateWithCompletion(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  v8 = v5;
  v9 = v8;
  if (!v8)
  {
    v9 = dispatch_get_global_queue(0, 0);
  }

  v10 = v28;
  v26 = v28[5];
  v11 = isSupportedDeviceIdentityClient(0, &v26);
  objc_storeStrong(v10 + 5, v26);
  if ((v11 & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke;
    block[3] = &unk_278585FB8;
    v25[1] = &v27;
    v15 = v25;
    v25[0] = v7;
    v16 = block;
LABEL_8:
    dispatch_async(v9, v16);
    goto LABEL_9;
  }

  if (is_virtual_machine())
  {
    v12 = v28;
    obj = v28[5];
    has_host_key = libavp_guest_has_host_key(&obj);
    objc_storeStrong(v12 + 5, obj);
    if ((has_host_key & 1) == 0)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_170;
      v21[3] = &unk_278585FB8;
      v22[1] = &v27;
      v15 = v22;
      v22[0] = v7;
      v16 = v21;
      goto LABEL_8;
    }
  }

  v14 = copyDeviceIdentitySerialQueue();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_171;
  v17[3] = &unk_278586080;
  v15 = v20;
  v20[0] = v7;
  v20[1] = &v27;
  v18 = v6;
  v19 = v9;
  dispatch_async(v14, v17);

LABEL_9:
  _Block_object_dispose(&v27, 8);
}

uint64_t isSupportedDeviceIdentityClient(uint64_t a1, void *a2)
{
  if (isSupportedDeviceIdentityClient_onceToken != -1)
  {
    isSupportedDeviceIdentityClient_cold_1();
  }

  v5 = copy_process_name();
  if (!v5)
  {
    v11 = createMobileActivationError("isSupportedDeviceIdentityClient", 305, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query process name.", v3, v4, v15);
    v8 = 0;
    if (a2)
    {
LABEL_12:
      v13 = v11;
      v12 = 0;
      *a2 = v11;
      goto LABEL_15;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v6 = is_virtual_machine();
  v7 = &isSupportedDeviceIdentityClient_virtualDeviceSupportedList;
  if (!v6)
  {
    v7 = &isSupportedDeviceIdentityClient_physicalDeviceSupportedList;
  }

  v8 = *v7;
  if (([v8 containsObject:v5] & 1) == 0)
  {
    v11 = createMobileActivationError("isSupportedDeviceIdentityClient", 312, @"com.apple.MobileActivation.ErrorDomain", -25, 0, @"%@ is not allowed to use this API. File a radar with 'MobileActivation | all' for support.", v9, v10, v5);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      isSupportedDeviceIdentityClient_cold_2(v11);
      if (a2)
      {
        goto LABEL_12;
      }
    }

    else if (a2)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v11 = 0;
  v12 = 1;
LABEL_15:

  return v12;
}

id copyDeviceIdentitySerialQueue()
{
  if (copyDeviceIdentitySerialQueue_onceToken != -1)
  {
    copyDeviceIdentitySerialQueue_cold_1();
  }

  v1 = copyDeviceIdentitySerialQueue_queue;

  return v1;
}

id copy_supported_baa_oids()
{
  v0 = [MEMORY[0x277CBEB58] setWithObjects:{@"1.2.840.113635.100.10.1", @"1.2.840.113635.100.10.2", @"1.2.840.113635.100.8.1", @"1.2.840.113635.100.8.2", @"1.2.840.113635.100.8.3", @"1.2.840.113635.100.8.4", @"1.2.840.113635.100.8.5", @"1.2.840.113635.100.8.6", @"1.2.840.113635.100.8.7", @"1.2.840.113635.100.8.12", @"1.2.840.113635.100.6.71.1", @"1.2.840.113635.100.6.71.2", @"1.2.840.113635.100.6.71.3", @"1.2.840.113635.100.8.9.4", @"1.2.840.113635.100.8.10.4", 0}];
  if (is_virtual_machine())
  {
    v1 = [MEMORY[0x277CBEB98] setWithObjects:{@"1.2.840.113635.100.10.1", 0}];
    [v0 minusSet:v1];
  }

  return v0;
}

CFTypeRef createReferenceKeyBlob(const void *a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = *MEMORY[0x277CDC040];
  error = 0;
  if (v7 && ([v7 objectForKeyedSubscript:@"KeySizeInBits"], v9 = objc_claimAutoreleasedReturnValue(), isNSNumber(v9), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    v11 = [v7 objectForKeyedSubscript:@"KeySizeInBits"];
    if (([v11 isEqualToNumber:&unk_283965D50] & 1) == 0 && (objc_msgSend(v11, "isEqualToNumber:", &unk_283965D68) & 1) == 0)
    {
      v14 = createMobileActivationError("createReferenceKeyBlob", 73, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): unsupported size (%@)", v12, v13, @"KeySizeInBits");
      v15 = 0;
LABEL_20:
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v22 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    v11 = &unk_283965D50;
  }

  v16 = +[GestaltHlprDeviceIdentity getSharedInstance];
  v15 = [v16 copyAnswer:@"HasPKA"];

  v17 = isNSNumber(v15);

  if (!v17)
  {
    v14 = createMobileActivationError("createReferenceKeyBlob", 84, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve PKA state.", v18, v19, v42);
    goto LABEL_20;
  }

  if ([v15 BOOLValue] && (a2 & 1) == 0)
  {
    v20 = *MEMORY[0x277CDC048];

    v8 = v20;
  }

  if (a1)
  {
    v21 = CFRetain(a1);
    if (v21)
    {
      v22 = v21;
      goto LABEL_23;
    }
  }

  if ((isRunningInRecovery() & 1) == 0 && !isRunningInDiagnosticsMode())
  {
    v22 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0x40000000uLL, &error);
    if (v22)
    {
      goto LABEL_23;
    }

    v31 = error;
    v42 = *MEMORY[0x277CDBF00];
    v32 = @"Failed to create access control (%@).";
    v33 = 115;
LABEL_29:
    createMobileActivationError("createReferenceKeyBlob", v33, @"com.apple.MobileActivation.ErrorDomain", -1, v31, v32, v23, v24, v42);
    goto LABEL_30;
  }

  v22 = SecAccessControlCreate();
  if (!v22)
  {
    v31 = error;
    v32 = @"Failed to create access control.";
    v33 = 104;
    goto LABEL_29;
  }

  v25 = *MEMORY[0x277CDBF08];
  if ((SecAccessControlSetProtection() & 1) == 0)
  {
    createMobileActivationError("createReferenceKeyBlob", 109, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to set ACL protection to %@.", v26, v27, v25);
    v14 = LABEL_30:;
    v28 = 0;
    goto LABEL_31;
  }

LABEL_23:
  v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v28 = v34;
  if (!v34)
  {
    v14 = createMobileActivationError("createReferenceKeyBlob", 123, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to alloc dictionary.", v35, v36, v42);
LABEL_31:
    v29 = 0;
    v30 = 0;
    goto LABEL_32;
  }

  [v34 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CDBFD0]];
  [v28 setObject:*MEMORY[0x277CDC160] forKeyedSubscript:*MEMORY[0x277CDC158]];
  [v28 setObject:v8 forKeyedSubscript:*MEMORY[0x277CDC028]];
  [v28 setObject:v22 forKeyedSubscript:*MEMORY[0x277CDBEC0]];
  [v28 setObject:v11 forKeyedSubscript:*MEMORY[0x277CDC018]];
  v37 = SecKeyCreateRandomKey(v28, &error);
  v30 = v37;
  if (v37)
  {
    v29 = CFRetain(v37);
    v14 = 0;
  }

  else
  {
    v14 = createMobileActivationError("createReferenceKeyBlob", 141, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to create ref key.", v38, v39, v42);
    v29 = 0;
  }

LABEL_32:
  if (a4 && !v29)
  {
    v40 = v14;
    *a4 = v14;
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (error)
  {
    CFRelease(error);
  }

  return v29;
}

id create_baa_info(__SecKey *a1, void *a2, void *a3)
{
  v328[3] = *MEMORY[0x277D85DE8];
  v4 = a2;
  error = 0;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v328[0] = @"1.2.840.113635.100.8.4";
  v328[1] = @"1.2.840.113635.100.8.5";
  v328[2] = @"1.2.840.113635.100.8.7";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v328 count:3];
  v7 = [v5 initWithArray:v6];

  v295 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v306 = v4;
  if (!v4)
  {
    v305 = v7;
    v25 = 0;
    v294 = 0;
    v26 = 0;
    v285 = 0;
    v286 = 0;
    v287 = 0;
    v288 = 0;
    v290 = 0;
    v291 = 0;
    v27 = 0;
    v289 = 0;
    v28 = 0;
    v278 = 0;
    v272 = 0;
    v21 = 0;
    v29 = 1;
    v283 = &unk_283965D98;
    v299 = 0;
    v300 = &unk_283965D98;
    v284 = &unk_283965D80;
    goto LABEL_24;
  }

  v8 = [v4 objectForKeyedSubscript:@"OIDSToInclude"];
  v9 = isNSArray(v8);

  if (v9)
  {
    v305 = v7;
    v322 = 0u;
    v323 = 0u;
    v320 = 0u;
    v321 = 0u;
    v10 = [v4 objectForKeyedSubscript:@"OIDSToInclude"];
    v11 = [v10 countByEnumeratingWithState:&v320 objects:v327 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v321;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v321 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = isNSString(*(*(&v320 + 1) + 8 * i));

          if (!v15)
          {
            v253 = [v306 objectForKeyedSubscript:@"OIDSToInclude"];
            v302 = createMobileActivationError("create_baa_info", 244, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid options (%@): %@", v40, v41, @"OIDSToInclude");

            v279 = 0;
            v280 = 0;
            v34 = 0;
            v281 = 0;
            v35 = 0;
            v286 = 0;
            v287 = 0;
            v288 = 0;
            v289 = 0;
            v291 = 0;
            v292 = 0;
            v290 = 0;
            v276 = 0;
            v285 = 0;
            v296 = 0;
            goto LABEL_118;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v320 objects:v327 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v16 = objc_alloc(MEMORY[0x277CBEB18]);
    v17 = [v306 objectForKeyedSubscript:@"OIDSToInclude"];
    v7 = [v16 initWithArray:v17];

    if (is_virtual_machine())
    {
      v18 = copy_unsupported_virtual_machine_oids();
      v19 = [v18 allObjects];
      [v7 removeObjectsInArray:v19];
    }
  }

  if (([v7 containsObject:@"1.2.840.113635.100.8.1"] & 1) != 0 || (objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.8.7") & 1) != 0 || (objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.8.10.1") & 1) != 0 || (objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.8.10.2") & 1) != 0 || objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.8.10.3"))
  {
    v20 = [v7 containsObject:@"1.2.840.113635.100.8.1"];
    v21 = 1;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v22 = [v7 containsObject:@"1.2.840.113635.100.8.7"];
  v305 = v7;
  if (([v7 containsObject:@"1.2.840.113635.100.8.2"] & 1) == 0 && !objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.8.11.1"))
  {
    v67 = 0;
LABEL_59:
    v285 = 0;
    goto LABEL_60;
  }

  v23 = [v306 objectForKeyedSubscript:@"nonce"];
  v24 = isNSData(v23);
  if (v24)
  {
  }

  else
  {
    keya = a1;
    v62 = v21;
    v63 = v20;
    v64 = [v306 objectForKeyedSubscript:@"AppSpecificData"];
    v32 = isNSData(v64);

    if (!v32)
    {
      v302 = createMobileActivationError("create_baa_info", 281, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing one of the required options: %@ / %@", v65, v66, @"nonce");
      v279 = 0;
      v280 = 0;
      v34 = 0;
      v281 = 0;
      v282 = 0;
      v35 = 0;
      v286 = 0;
      v287 = 0;
      v288 = 0;
      v289 = 0;
      v291 = 0;
      v292 = 0;
      v290 = 0;
      v276 = 0;
      v285 = 0;
      v296 = 0;
      v36 = 0;
      v37 = 0;
      a1 = 0;
      v38 = 0;
      v39 = 0;
      v293 = 0;
LABEL_119:
      v61 = 0;
      goto LABEL_120;
    }

    v20 = v63;
    v21 = v62;
    a1 = keya;
  }

  v67 = [v306 objectForKeyedSubscript:@"nonce"];
  v68 = [v306 objectForKeyedSubscript:@"AppSpecificData"];
  if (!v68)
  {
    goto LABEL_59;
  }

  v69 = v68;
  v61 = isNSData(v68);

  v285 = v69;
  if (!v61)
  {
    v296 = v67;
    v302 = createMobileActivationError("create_baa_info", 290, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@).", v70, v71, @"AppSpecificData");
    v279 = 0;
    v280 = 0;
    v34 = 0;
    v281 = 0;
    v35 = 0;
    v286 = 0;
    v288 = 0;
    v289 = 0;
    v291 = 0;
    v292 = 0;
LABEL_75:
    v290 = 0;
    v276 = 0;
LABEL_76:
    v287 = 0;
    v282 = 0;
    v36 = 0;
    v37 = 0;
    a1 = 0;
    v38 = 0;
    v39 = 0;
    v293 = 0;
    v32 = 0;
LABEL_120:
    v294 = 0;
    v297 = 0;
    v299 = 0;
    key = 0;
    v273 = 0;
    v275 = 0;
    v277 = 0;
    v25 = 0;
    v300 = &unk_283965D98;
    v283 = &unk_283965D98;
    v284 = &unk_283965D80;
    goto LABEL_121;
  }

  if ([v69 length] >= 0x41)
  {
    v296 = v67;
    [v69 length];
    createMobileActivationError("create_baa_info", 295, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): unexpected size (%lu)", v72, v73, @"AppSpecificData");
    v302 = LABEL_114:;
LABEL_115:
    v279 = 0;
    v280 = 0;
    v34 = 0;
    v281 = 0;
    v35 = 0;
    v286 = 0;
    v288 = 0;
    v289 = 0;
    v291 = 0;
    v292 = 0;
LABEL_116:
    v290 = 0;
    v276 = 0;
    goto LABEL_117;
  }

LABEL_60:
  v278 = v22;
  v77 = [v306 objectForKeyedSubscript:@"CertType"];
  v78 = isNSNumber(v77);

  v296 = v67;
  if (v78)
  {
    v79 = [v306 objectForKeyedSubscript:@"CertType"];

    v80 = 0x277CCA000uLL;
    v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
    if ([v79 isEqualToNumber:v81])
    {
LABEL_64:

      goto LABEL_66;
    }

    v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
    if ([v79 isEqualToNumber:v82])
    {

      v80 = 0x277CCA000uLL;
      goto LABEL_64;
    }

    v274 = v20;
    v95 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
    v96 = [v79 isEqualToNumber:v95];

    if ((v96 & 1) == 0)
    {
      v295 = v79;
      createMobileActivationError("create_baa_info", 305, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): %@", v97, v98, @"CertType");
      goto LABEL_114;
    }

    v20 = v274;
    v80 = 0x277CCA000;
  }

  else
  {
    v79 = v295;
    v80 = 0x277CCA000uLL;
  }

LABEL_66:
  v83 = [*(v80 + 2992) numberWithUnsignedInt:1];
  v84 = [v79 isEqualToNumber:v83];

  v295 = v79;
  if (v84)
  {
    if ((device_supports_mfi_certificates() & 1) == 0)
    {
      createMobileActivationError("create_baa_info", 312, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Certificate type not supported on this platform: %@", v85, v86, v79);
      goto LABEL_114;
    }

    if (([v7 containsObject:@"1.2.840.113635.100.6.71.1"] & 1) == 0)
    {
      createMobileActivationError("create_baa_info", 317, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing required OID for certificate type (%@): %@", v87, v88, v79);
      goto LABEL_114;
    }
  }

  else if (([v7 containsObject:@"1.2.840.113635.100.6.71.1"] & 1) != 0 || (objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.6.71.2") & 1) != 0 || objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.6.71.3"))
  {
    createMobileActivationError("create_baa_info", 324, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid OID(s) for requested certificate type: %@", v89, v90, v79);
    goto LABEL_114;
  }

  if ([v7 containsObject:@"1.2.840.113635.100.6.71.1"] && (objc_msgSend(v306, "objectForKeyedSubscript:", @"MFiProperties"), v91 = objc_claimAutoreleasedReturnValue(), isNSData(v91), v92 = objc_claimAutoreleasedReturnValue(), v92, v91, v92))
  {
    v93 = [v306 objectForKeyedSubscript:@"MFiProperties"];
    v94 = [v93 length];

    if (v94 != 32)
    {
      v174 = [v306 objectForKeyedSubscript:@"MFiProperties"];
      [v174 length];
      v302 = createMobileActivationError("create_baa_info", 332, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): unexpected size (%lu)", v175, v176, @"MFiProperties");

      goto LABEL_115;
    }

    v291 = [v306 objectForKeyedSubscript:@"MFiProperties"];
  }

  else
  {
    v291 = 0;
  }

  if (![v7 containsObject:@"1.2.840.113635.100.6.71.2"])
  {
    v27 = 0;
    v290 = 0;
    goto LABEL_132;
  }

  v144 = [v306 objectForKeyedSubscript:@"MFiPPUID"];
  v61 = isNSString(v144);

  if (!v61)
  {
    v302 = createMobileActivationError("create_baa_info", 342, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing required option: %@", v145, v146, @"MFiPPUID");
    v279 = 0;
    v280 = 0;
    v34 = 0;
    v281 = 0;
    v35 = 0;
    v286 = 0;
    v288 = 0;
    v289 = 0;
    v292 = 0;
    goto LABEL_75;
  }

  v147 = [v306 objectForKeyedSubscript:@"MFiPPUID"];
  v148 = [v147 length];

  if (v148 >= 0x25)
  {
    v149 = [v306 objectForKeyedSubscript:@"MFiPPUID"];
    [v149 length];
    v302 = createMobileActivationError("create_baa_info", 347, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): unexpected size (%lu)", v150, v151, @"MFiPPUID");

LABEL_204:
    v279 = 0;
    v280 = 0;
    v34 = 0;
    v281 = 0;
    v35 = 0;
    v286 = 0;
    v288 = 0;
    v289 = 0;
    v292 = 0;
    goto LABEL_116;
  }

  v178 = [v306 objectForKeyedSubscript:@"MFiPPUID"];
  v27 = [v178 stringByPaddingToLength:36 withString:&stru_2839616E8 startingAtIndex:0];

  if (!v27)
  {
    v302 = createMobileActivationError("create_baa_info", 356, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Failed to pad string.", v179, v180, v252);
    goto LABEL_204;
  }

  v181 = [v27 dataUsingEncoding:4];
  if (!v181)
  {
    v276 = v27;
    v302 = createMobileActivationError("create_baa_info", 362, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Failed to convert string to data.", v182, v183, v252);
    v279 = 0;
    v280 = 0;
    v34 = 0;
    v281 = 0;
    v35 = 0;
    v286 = 0;
    v288 = 0;
    v289 = 0;
    v292 = 0;
    v290 = 0;
LABEL_117:
    v287 = 0;
LABEL_118:
    v282 = 0;
    v36 = 0;
    v37 = 0;
    a1 = 0;
    v38 = 0;
    v39 = 0;
    v293 = 0;
    v32 = 0;
    goto LABEL_119;
  }

  v290 = v181;
LABEL_132:
  if (![v305 containsObject:@"1.2.840.113635.100.6.71.3"])
  {
    v289 = 0;
    goto LABEL_164;
  }

  v163 = [v306 objectForKeyedSubscript:@"MFiData"];
  v61 = isNSData(v163);

  if (!v61)
  {
    v276 = v27;
    v302 = createMobileActivationError("create_baa_info", 369, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing required option: %@", v164, v165, @"MFiData");
    v279 = 0;
    v280 = 0;
    v34 = 0;
    v281 = 0;
    v35 = 0;
    v286 = 0;
    v288 = 0;
    v289 = 0;
    v292 = 0;
    goto LABEL_76;
  }

  v166 = [v306 objectForKeyedSubscript:@"MFiData"];
  v167 = [v166 length];

  if (v167 >= 0x4B0)
  {
    v276 = v27;
    v168 = [v306 objectForKeyedSubscript:@"MFiData"];
    [v168 length];
    v302 = createMobileActivationError("create_baa_info", 374, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): unexpected size (%lu)", v169, v170, @"MFiData");

    v279 = 0;
    v280 = 0;
    v34 = 0;
    v281 = 0;
    v35 = 0;
    v286 = 0;
    v288 = 0;
    v289 = 0;
    v292 = 0;
    goto LABEL_117;
  }

  v289 = [v306 objectForKeyedSubscript:@"MFiData"];
LABEL_164:
  v184 = [v306 objectForKeyedSubscript:@"UseRKSigningInterface"];
  v185 = isNSNumber(v184);

  v272 = v20;
  if (v185)
  {
    v186 = [v306 objectForKeyedSubscript:@"UseRKSigningInterface"];
    v28 = [v186 BOOLValue];
  }

  else
  {
    v28 = 0;
  }

  v187 = [v306 objectForKeyedSubscript:@"UseSoftwareGeneratedKey"];
  v188 = isNSNumber(v187);

  if (v188)
  {
    v189 = [v306 objectForKeyedSubscript:@"UseSoftwareGeneratedKey"];
    v29 = [v189 BOOLValue];
  }

  else
  {
    v29 = 1;
  }

  v190 = [v306 objectForKeyedSubscript:@"Validity"];
  v191 = isNSNumber(v190);

  if (v191)
  {
    v192 = MEMORY[0x277CCABB0];
    v193 = [v306 objectForKeyedSubscript:@"Validity"];
    v284 = [v192 numberWithUnsignedInteger:{objc_msgSend(v193, "unsignedIntegerValue")}];
  }

  else
  {
    v284 = &unk_283965D80;
  }

  v194 = [v306 objectForKeyedSubscript:@"CACert"];
  v195 = isNSNumber(v194);

  if (v195)
  {
    v196 = MEMORY[0x277CCABB0];
    v197 = [v306 objectForKeyedSubscript:@"CACert"];
    v283 = [v196 numberWithUnsignedInteger:{objc_msgSend(v197, "unsignedIntegerValue")}];
  }

  else
  {
    v283 = &unk_283965D98;
  }

  v198 = [v306 objectForKeyedSubscript:@"scrtAttestation"];
  v199 = isNSNumber(v198);

  if (v199)
  {
    v200 = MEMORY[0x277CCABB0];
    v201 = [v306 objectForKeyedSubscript:@"scrtAttestation"];
    v300 = [v200 numberWithUnsignedInteger:{objc_msgSend(v201, "unsignedIntegerValue")}];
  }

  else
  {
    v300 = &unk_283965D98;
  }

  v202 = [v306 objectForKeyedSubscript:@"ClientAttestationData"];
  v203 = isNSData(v202);

  if (!v203)
  {
    v298 = 0;
    v299 = 0;
LABEL_184:
    v294 = 0;
    goto LABEL_185;
  }

  keyc = a1;
  v204 = [v306 objectForKeyedSubscript:@"ClientAttestationPublicKey"];
  a1 = isNSData(v204);

  if (!a1)
  {
    v276 = v27;
    v302 = createMobileActivationError("create_baa_info", 411, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing required option for %@.", v205, v206, @"ClientAttestationPublicKey");
    v279 = 0;
    v280 = 0;
    v34 = 0;
    v281 = 0;
    v282 = 0;
    v35 = 0;
    v286 = 0;
    v287 = 0;
    v288 = 0;
    v292 = 0;
    v293 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v32 = 0;
    v61 = 0;
    v294 = 0;
    v297 = 0;
    v299 = 0;
    goto LABEL_47;
  }

  v298 = [v306 objectForKeyedSubscript:@"ClientAttestationData"];
  v299 = [v306 objectForKeyedSubscript:@"ClientAttestationPublicKey"];
  v207 = [v306 objectForKeyedSubscript:@"ClientDirectAttestationCertificate"];
  v208 = isNSData(v207);

  a1 = keyc;
  if (!v208)
  {
    goto LABEL_184;
  }

  v294 = [v306 objectForKeyedSubscript:@"ClientDirectAttestationCertificate"];
LABEL_185:
  v209 = [v306 objectForKeyedSubscript:@"AppID"];
  v210 = isNSString(v209);

  if (v210)
  {
    v287 = [v306 objectForKeyedSubscript:@"AppID"];
  }

  else
  {
    v287 = 0;
  }

  v211 = [v306 objectForKeyedSubscript:@"LiveImage4Manifest"];
  v212 = isNSData(v211);

  if (v212)
  {
    v288 = [v306 objectForKeyedSubscript:@"LiveImage4Manifest"];
  }

  else
  {
    v288 = 0;
  }

  v213 = [v306 objectForKeyedSubscript:@"RepairImage4Manifest"];
  v214 = isNSData(v213);

  if (v214)
  {
    v286 = [v306 objectForKeyedSubscript:@"RepairImage4Manifest"];
  }

  else
  {
    v286 = 0;
  }

  v295 = v79;
  v26 = v296;
  v25 = v298;
LABEL_24:
  v296 = v26;
  v276 = v27;
  if (is_virtual_machine())
  {
    v319 = 0;
    v32 = vm_copy_host_certificate(0, &v319);
    v33 = v319;
    if (!v32)
    {
      v297 = v25;
      v302 = createMobileActivationError("create_baa_info", 440, @"com.apple.MobileActivation.ErrorDomain", -1, v33, @"Failed to copy VM host certificate.", v30, v31, v252);

      v279 = 0;
      v280 = 0;
      v34 = 0;
      v281 = 0;
      v282 = 0;
      v35 = 0;
      v292 = 0;
      v293 = 0;
      v36 = 0;
      v37 = 0;
      a1 = 0;
      v38 = 0;
      v39 = 0;
LABEL_46:
      v61 = 0;
LABEL_47:
      key = 0;
      v273 = 0;
      v275 = 0;
      v277 = 0;
      v25 = 0;
      goto LABEL_121;
    }
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  v292 = v32;
  if (!a1)
  {
    v297 = v25;
    v302 = createMobileActivationError("create_baa_info", 472, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.", v30, v31, v252);

    v279 = 0;
    v280 = 0;
    v34 = 0;
    v281 = 0;
    v282 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
LABEL_45:
    v38 = 0;
    v39 = 0;
    v293 = 0;
    v32 = 0;
    goto LABEL_46;
  }

  if (v25)
  {
    v42 = 0;
  }

  else
  {
    v42 = v28;
  }

  if (v42 != 1)
  {
    v265 = 0;
    v266 = 0;
    v262 = 0;
LABEL_55:
    v297 = v25;
    v315 = v33;
    v316 = 0;
    v25 = security_copy_system_key(0, &v316, &v315);
    v263 = v316;
    v74 = v315;

    if (!v25)
    {
      v302 = createMobileActivationError("create_baa_info", 524, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to copy SIK attestation key.", v75, v76, v252);

      v277 = 0;
      v279 = 0;
      v273 = 0;
      v275 = 0;
      key = 0;
      v32 = 0;
      v293 = 0;
      v39 = 0;
      v38 = 0;
      a1 = 0;
      v37 = 0;
      v36 = 0;
      v281 = 0;
      v282 = 0;
      v264 = 0;
      v34 = 0;
      v280 = 0;
      v61 = v263;
      goto LABEL_154;
    }

    v61 = v263;
    if ([v300 BOOLValue])
    {
      cf = 0;
      v261 = 0;
    }

    else
    {
      v313 = v74;
      v314 = 0;
      v38 = security_copy_system_key(2, &v314, &v313);
      v261 = v314;
      v99 = v313;

      cf = v38;
      if (!v38)
      {
        v302 = createMobileActivationError("create_baa_info", 533, @"com.apple.MobileActivation.ErrorDomain", -1, v99, @"Failed to copy UIK attestation key.", v100, v101, v252);

        CFRelease(v25);
        v25 = 0;
        v277 = 0;
        v279 = 0;
        v273 = 0;
        v275 = 0;
        key = 0;
        v293 = 0;
        v39 = 0;
        a1 = 0;
        v37 = 0;
        v36 = 0;
        v281 = 0;
        v282 = 0;
        v264 = 0;
        v34 = 0;
        v280 = 0;
        v32 = v261;
        goto LABEL_154;
      }

      v74 = v99;
    }

    v259 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (v259)
    {
      v258 = v25;
      if ([v300 BOOLValue])
      {
        goto LABEL_92;
      }

      v104 = [MEMORY[0x277CCAA00] defaultManager];
      v105 = copy_ucrt_path();
      v106 = [v105 stringByAppendingPathComponent:@"ucrt.pem"];
      v107 = [v104 fileExistsAtPath:v106];

      if (v107)
      {
LABEL_92:
        v304 = v21;
        keyb = a1;
        v110 = +[GestaltHlprDeviceIdentity getSharedInstance];
        v39 = [v110 copyAnswer:@"UniqueChipID"];

        v37 = isNSNumber(v39);

        if (v37)
        {
          v113 = +[GestaltHlprDeviceIdentity getSharedInstance];
          v38 = [v113 copyAnswer:@"ChipID"];

          v37 = isNSNumber(v38);

          if (v37)
          {
            v116 = +[GestaltHlprDeviceIdentity getSharedInstance];
            v117 = [v116 copyAnswer:@"BoardId"];

            v257 = v117;
            v37 = isNSNumber(v117);

            if (v37)
            {
              v120 = +[GestaltHlprDeviceIdentity getSharedInstance];
              v121 = [v120 copyAnswer:@"SecurityDomain"];

              v256 = v121;
              v122 = isNSNumber(v121);

              if (!v122)
              {
                v302 = createMobileActivationError("create_baa_info", 574, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", v123, v124, @"SecurityDomain");

                v267 = 0;
                key = 0;
                v277 = 0;
                v279 = 0;
                v273 = 0;
                v275 = 0;
                v293 = 0;
                v36 = 0;
                v281 = 0;
                v282 = 0;
                v264 = 0;
                v280 = 0;
                v25 = v258;
                v34 = v259;
                v61 = v263;
                v32 = v261;
LABEL_212:
                v37 = v256;
                a1 = v257;
                goto LABEL_151;
              }

              v254 = v38;
              v125 = +[GestaltHlprDeviceIdentity getSharedInstance];
              v126 = [v125 copyAnswer:@"SerialNumber"];

              v255 = v126;
              v127 = isNSString(v126);

              v25 = v258;
              if (!v127)
              {
                v302 = createMobileActivationError("create_baa_info", 580, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", v128, v129, @"SerialNumber");

                v267 = 0;
                key = 0;
                v277 = 0;
                v279 = 0;
                v273 = 0;
                v275 = 0;
                v293 = 0;
                v281 = 0;
                v282 = 0;
                v264 = 0;
                v280 = 0;
                v34 = v259;
LABEL_210:
                v61 = v263;
                v32 = v261;
LABEL_211:
                v38 = v254;
                v36 = v255;
                goto LABEL_212;
              }

              if (![v255 length] && objc_msgSend(v300, "BOOLValue") && isRunningInDiagnosticsMode())
              {

                v255 = 0;
              }

              v130 = +[GestaltHlprDeviceIdentity getSharedInstance];
              v131 = [v130 copyAnswer:@"BuildVersion"];

              v282 = v131;
              v132 = isNSString(v131);

              if (v132)
              {
                v135 = SecKeyCopyPublicKey(a1);
                v32 = v261;
                v25 = v258;
                if (!v135)
                {
                  v302 = createMobileActivationError("create_baa_info", 603, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy RK public key.", v136, v137, v252);

                  v267 = 0;
                  key = 0;
                  v277 = 0;
                  v279 = 0;
                  v273 = 0;
                  v275 = 0;
                  v293 = 0;
                  v264 = 0;
                  v280 = 0;
                  v281 = 0;
                  v34 = v259;
                  v61 = v263;
                  goto LABEL_211;
                }

                v264 = v135;
                v38 = v254;
                v37 = v256;
                v293 = SecKeyCopyExternalRepresentation(v135, &error);
                if (!v293)
                {
                  v302 = createMobileActivationError("create_baa_info", 609, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to encode RK public key as data.", v138, v139, v252);

                  v267 = 0;
                  key = 0;
                  v277 = 0;
                  v279 = 0;
                  v273 = 0;
                  v275 = 0;
                  v293 = 0;
                  v280 = 0;
                  v281 = 0;
                  v34 = v259;
                  v61 = v263;
                  a1 = v257;
                  v36 = v255;
                  goto LABEL_151;
                }

                if (v294)
                {
                  v312 = v74;
                  v140 = &v312;
                  v141 = &v312;
                  v142 = a1;
                  v143 = 7;
                }

                else
                {
                  if ([v300 BOOLValue])
                  {
                    v143 = 0;
                  }

                  else
                  {
                    v143 = 2;
                  }

                  v311 = v74;
                  v140 = &v311;
                  v141 = &v311;
                  v142 = a1;
                }

                v215 = security_create_system_key_attestation(v142, v143, v296, v141);
                v216 = *v140;

                if (v215)
                {
                  v219 = @"RKCertification";
                  v275 = v215;
                  if (v297)
                  {
                    [v259 setObject:v297 forKeyedSubscript:@"RKCertification"];
                    [v259 setObject:v215 forKeyedSubscript:@"RKSigning"];
                    v219 = @"RKSigningPub";
                    v220 = v259;
                    v221 = v293;
                  }

                  else
                  {
                    v220 = v259;
                    v221 = v215;
                  }

                  [v220 setObject:v221 forKeyedSubscript:v219];
                  v222 = objc_alloc(MEMORY[0x277CBEB38]);
                  v325[0] = @"UniqueChipID";
                  v325[1] = @"ChipID";
                  v326[0] = v39;
                  v326[1] = v254;
                  v325[2] = @"BoardId";
                  v325[3] = @"SecurityDomain";
                  a1 = v257;
                  v326[2] = v257;
                  v326[3] = v256;
                  v325[4] = @"OsBuildVersion";
                  v325[5] = @"scrtAttestation";
                  v326[4] = v282;
                  v326[5] = v300;
                  v325[6] = @"CertType";
                  v325[7] = @"Validity";
                  v326[6] = v295;
                  v326[7] = v284;
                  v325[8] = @"CACert";
                  v325[9] = @"OIDSToInclude";
                  v326[8] = v283;
                  v223 = v305;
                  v326[9] = v305;
                  v325[10] = @"SIKPub";
                  v326[10] = v263;
                  v224 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v326 forKeys:v325 count:11];
                  v225 = [v222 initWithDictionary:v224];

                  v32 = v261;
                  if (v255)
                  {
                    [v225 setObject:v255 forKeyedSubscript:@"SerialNumber"];
                  }

                  if (v297)
                  {
                    [v225 setObject:v299 forKeyedSubscript:@"RKCertificationPub"];
                    [v225 setObject:v293 forKeyedSubscript:@"RKSigningPub"];
                    v226 = v285;
                    v61 = v263;
                    if (v294)
                    {
                      [v225 setObject:v294 forKeyedSubscript:@"DirectAttestationCertificate"];
                    }
                  }

                  else
                  {
                    [v225 setObject:v293 forKeyedSubscript:@"RKCertificationPub"];
                    v226 = v285;
                    v61 = v263;
                  }

                  if (v292)
                  {
                    [v225 setObject:v292 forKeyedSubscript:@"VMHostIdentityCertificate"];
                  }

                  if (v261)
                  {
                    [v225 setObject:v261 forKeyedSubscript:@"UIKPub"];
                  }

                  if (v226)
                  {
                    [v225 setObject:v226 forKeyedSubscript:@"AppSpecificData"];
                  }

                  v227 = copy_trusted_local_policy_hash();

                  if (v227)
                  {
                    v310 = v216;
                    v228 = copyPersonalizedFirmwareData(9, &v310);
                    v229 = v310;

                    v281 = v228;
                    if (!v228)
                    {
                      v230 = MEMORY[0x277D86220];
                      v231 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(v230, OS_LOG_TYPE_FAULT))
                      {
                        create_baa_info_cold_1();
                      }

                      v229 = 0;
                    }

                    [v225 setObject:v228 forKeyedSubscript:@"LocalPolicy"];
                    v216 = v229;
                  }

                  else
                  {
                    v281 = 0;
                  }

                  v34 = v259;
                  v277 = v225;
                  if (v304)
                  {
                    v309 = v216;
                    v232 = copyPersonalizedFirmwareData(2, &v309);
                    v233 = v309;

                    v280 = v232;
                    if (!v232)
                    {
                      if (v272)
                      {
                        v302 = createMobileActivationError("create_baa_info", 725, @"com.apple.MobileActivation.ErrorDomain", -1, v233, @"Failed to load boot manifest.", v234, v235, v252);

                        v267 = 0;
                        key = 0;
                        v273 = 0;
                        goto LABEL_209;
                      }

                      v236 = MEMORY[0x277D86220];
                      v237 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(v236, OS_LOG_TYPE_FAULT))
                      {
                        create_baa_info_cold_2();
                      }

                      v233 = 0;
                      v223 = v305;
                      v34 = v259;
                      v61 = v263;
                      v32 = v261;
                      a1 = v257;
                    }

                    v225 = v277;
                    [v277 setObject:v280 forKeyedSubscript:@"Image4Manifest"];
                    v238 = copy_sfr_manifest();
                    [v277 setObject:v238 forKeyedSubscript:@"FWImage4Manifest"];

                    v216 = v233;
                  }

                  else
                  {
                    v280 = 0;
                  }

                  v239 = v278;
                  if (!v227)
                  {
                    v239 = 0;
                  }

                  if (v239 == 1)
                  {
                    v308 = v216;
                    v240 = copyPersonalizedFirmwareData(10, &v308);
                    v241 = v308;

                    v279 = v240;
                    if (!v240)
                    {
                      v242 = MEMORY[0x277D86220];
                      v243 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(v242, OS_LOG_TYPE_FAULT))
                      {
                        create_baa_info_cold_3();
                      }

                      v241 = 0;
                      v34 = v259;
                      v61 = v263;
                      v32 = v261;
                      a1 = v257;
                    }

                    [v225 setObject:v240 forKeyedSubscript:@"Cryptex1Image4Manifest"];
                    v216 = v241;
                  }

                  else
                  {
                    v279 = 0;
                  }

                  v25 = v258;
                  if (v287)
                  {
                    [v225 setObject:v287 forKeyedSubscript:@"AppID"];
                  }

                  if (v291)
                  {
                    [v225 setObject:v291 forKeyedSubscript:@"MFiProperties"];
                  }

                  if (v290)
                  {
                    [v225 setObject:v290 forKeyedSubscript:@"MFiPPUID"];
                  }

                  if (v289)
                  {
                    [v225 setObject:v289 forKeyedSubscript:@"MFiData"];
                  }

                  if (v288)
                  {
                    [v225 setObject:v288 forKeyedSubscript:@"LiveImage4Manifest"];
                  }

                  v305 = v223;
                  if (v286)
                  {
                    [v225 setObject:v286 forKeyedSubscript:@"RepairImage4Manifest"];
                  }

                  v307 = 0;
                  v244 = [MEMORY[0x277CCAC58] dataWithPropertyList:v225 format:100 options:0 error:&v307];
                  v302 = v307;

                  v36 = v255;
                  if (v244)
                  {
                    [v34 setObject:v244 forKeyedSubscript:@"RKProperties"];
                    v273 = v244;
                    v247 = SecKeyCreateSignature(keyb, *MEMORY[0x277CDC300], v244, &error);
                    v37 = v256;
                    if (v247)
                    {
                      key = v247;
                      [v34 setObject:v247 forKeyedSubscript:@"RKPropertiesSignature"];
                      v267 = v34;
                    }

                    else
                    {
                      v251 = createMobileActivationError("create_baa_info", 841, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to sign data with ref key.", v248, v249, v252);

                      v267 = 0;
                      key = 0;
                      v302 = v251;
                    }

                    v38 = v254;
                  }

                  else
                  {
                    v250 = createMobileActivationError("create_baa_info", 830, @"com.apple.MobileActivation.ErrorDomain", -1, v302, @"Could not convert dictionary to xml data.", v245, v246, v252);

                    v267 = 0;
                    key = 0;
                    v273 = 0;
                    v302 = v250;
                    v38 = v254;
                    v37 = v256;
                  }

                  goto LABEL_151;
                }

                v302 = createMobileActivationError("create_baa_info", 622, @"com.apple.MobileActivation.ErrorDomain", -1, v216, @"Failed to create reference key attestation (nonce: %@).", v217, v218, v296);

                v267 = 0;
                key = 0;
                v277 = 0;
                v273 = 0;
                v275 = 0;
              }

              else
              {
                v302 = createMobileActivationError("create_baa_info", 594, @"com.apple.MobileActivation.ErrorDomain", -1, v74, @"Failed to retrieve %@.", v133, v134, @"BuildVersion");

                v267 = 0;
                key = 0;
                v277 = 0;
                v273 = 0;
                v275 = 0;
                v293 = 0;
                v264 = 0;
              }

              v281 = 0;
LABEL_209:
              v279 = 0;
              v280 = 0;
              v25 = v258;
              v34 = v259;
              goto LABEL_210;
            }

            v302 = createMobileActivationError("create_baa_info", 568, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", v118, v119, @"BoardId");

            v267 = 0;
            key = 0;
            v277 = 0;
            v279 = 0;
            v273 = 0;
            v275 = 0;
            v293 = 0;
            v36 = 0;
            v281 = 0;
            v282 = 0;
            v264 = 0;
            v280 = 0;
            v25 = v258;
            v34 = v259;
            v61 = v263;
            v32 = v261;
            a1 = v257;
LABEL_151:
            CFRelease(v25);
            if (cf)
            {
              CFRelease(cf);
            }

            v25 = v267;
LABEL_154:
            if (v262)
            {
              CFRelease(v262);
            }

            v177 = v265;
            if (!v265)
            {
              goto LABEL_199;
            }

            goto LABEL_198;
          }

          v302 = createMobileActivationError("create_baa_info", 562, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", v114, v115, @"ChipID");

          v267 = 0;
          key = 0;
          v277 = 0;
          v273 = 0;
          v275 = 0;
          v293 = 0;
        }

        else
        {
          v302 = createMobileActivationError("create_baa_info", 556, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", v111, v112, @"UniqueChipID");

          v267 = 0;
          key = 0;
          v277 = 0;
          v273 = 0;
          v275 = 0;
          v293 = 0;
          v38 = 0;
        }

        a1 = 0;
      }

      else
      {
        v302 = createMobileActivationError("create_baa_info", 548, @"com.apple.MobileActivation.ErrorDomain", -4, 0, @"UCRT is unavailable.", v108, v109, v252);

        v267 = 0;
        key = 0;
        v277 = 0;
        v273 = 0;
        v275 = 0;
        v293 = 0;
        v39 = 0;
        v38 = 0;
        a1 = 0;
        v37 = 0;
      }

      v36 = 0;
      v281 = 0;
      v282 = 0;
      v264 = 0;
      v279 = 0;
      v280 = 0;
      v25 = v258;
      v34 = v259;
      v61 = v263;
    }

    else
    {
      v302 = createMobileActivationError("create_baa_info", 541, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.", v102, v103, v252);

      v267 = 0;
      key = 0;
      v277 = 0;
      v279 = 0;
      v273 = 0;
      v275 = 0;
      v293 = 0;
      v39 = 0;
      v38 = 0;
      a1 = 0;
      v37 = 0;
      v36 = 0;
      v281 = 0;
      v282 = 0;
      v264 = 0;
      v280 = 0;
      v34 = 0;
    }

    v32 = v261;
    goto LABEL_151;
  }

  if ([v300 BOOLValue])
  {
    v43 = 0;
  }

  else
  {
    v43 = 2;
  }

  v318 = v33;
  v25 = security_create_system_key_attestation(a1, v43, v26, &v318);
  v44 = v318;

  if (!v25)
  {
    v302 = createMobileActivationError("create_baa_info", 482, @"com.apple.MobileActivation.ErrorDomain", -1, v44, @"Failed to create reference key attestation.", v45, v46, v252);

    v279 = 0;
    v280 = 0;
    v34 = 0;
    v281 = 0;
    v282 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    a1 = 0;
    v38 = 0;
    v39 = 0;
    v293 = 0;
    v32 = 0;
    v61 = 0;
    v297 = 0;
    key = 0;
    v273 = 0;
    v275 = 0;
    v277 = 0;
    goto LABEL_121;
  }

  v47 = SecKeyCopyPublicKey(a1);
  v297 = v25;
  if (!v47)
  {
    v302 = createMobileActivationError("create_baa_info", 488, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy RK public key.", v48, v49, v252);

    v279 = 0;
    v280 = 0;
    v34 = 0;
    v281 = 0;
    v282 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    a1 = 0;
    goto LABEL_45;
  }

  v265 = v47;
  v50 = SecKeyCopyExternalRepresentation(v47, &error);

  if (!v50)
  {
    v171 = error;
    v172 = @"Failed to encode RK public key as data.";
    v173 = 494;
LABEL_142:
    v302 = createMobileActivationError("create_baa_info", v173, @"com.apple.MobileActivation.ErrorDomain", -1, v171, v172, v51, v52, v252);
    v266 = 0;
    goto LABEL_197;
  }

  v53 = SecAccessControlCreate();
  if (!v53)
  {
    v171 = error;
    v172 = @"Failed to create access control.";
    v173 = 502;
    goto LABEL_142;
  }

  v303 = v21;
  v54 = *MEMORY[0x277CDBF08];
  v55 = v53;
  v266 = v53;
  if (SecAccessControlSetProtection())
  {
    v317 = v44;
    v58 = createReferenceKeyBlob(v55, v29, v306, &v317);
    v33 = v317;

    if (v58)
    {
      v299 = v50;
      v262 = v58;
      a1 = v58;
      v21 = v303;
      goto LABEL_55;
    }

    v302 = createMobileActivationError("create_baa_info", 513, @"com.apple.MobileActivation.ErrorDomain", -1, v33, @"Failed to create reference key.", v59, v60, v252);
    v44 = v33;
  }

  else
  {
    v302 = createMobileActivationError("create_baa_info", 507, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to set ACL protection to %@.", v56, v57, v54);
  }

LABEL_197:

  v25 = 0;
  v277 = 0;
  v279 = 0;
  v273 = 0;
  v275 = 0;
  key = 0;
  v61 = 0;
  v32 = 0;
  v293 = 0;
  v39 = 0;
  a1 = 0;
  v37 = 0;
  v36 = 0;
  v281 = 0;
  v282 = 0;
  v264 = 0;
  v34 = 0;
  v280 = 0;
  v299 = v50;
  v38 = 0;
  v177 = v265;
LABEL_198:
  CFRelease(v177);
LABEL_199:
  if (v264)
  {
    CFRelease(v264);
  }

  v35 = v266;
LABEL_121:
  if (error)
  {
    v152 = v37;
    v153 = a1;
    v154 = v38;
    v155 = v39;
    v156 = v32;
    v157 = v61;
    v158 = v34;
    v159 = v35;
    CFRelease(error);
    v35 = v159;
    v34 = v158;
    v61 = v157;
    v32 = v156;
    v39 = v155;
    v38 = v154;
    a1 = v153;
    v37 = v152;
  }

  error = 0;
  if (v35)
  {
    CFRelease(v35);
  }

  if (a3 && !v25)
  {
    *a3 = v302;
  }

  v160 = v25;

  v161 = *MEMORY[0x277D85DE8];

  return v160;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

uint64_t __copyRTCResetCountWithError_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = createMobileActivationError("copyRTCResetCountWithError_block_invoke", 45, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 32) + 8) + 40), @"IPC Error.", a7, a8, v13);
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return MEMORY[0x2821F96F8]();
}

uint64_t __copyMonotonicClock_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = createMobileActivationError("copyMonotonicClock_block_invoke", 92, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 32) + 8) + 40), @"IPC Error.", a7, a8, v13);
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return MEMORY[0x2821F96F8]();
}

uint64_t __isAutomaticTimeEnabledWithError_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = createMobileActivationError("isAutomaticTimeEnabledWithError_block_invoke", 139, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 32) + 8) + 40), @"IPC Error.", a7, a8, v13);
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return MEMORY[0x2821F96F8]();
}

id copyDateUsedForCertificateValidation(void *a1, void *a2, void *a3, void *a4, char *a5, void *a6)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v15 = v12;
  v54 = 0.0;
  v55 = 0.0;
  v53 = -1;
  if (v10 && v11 && v12)
  {
    if (v9)
    {
      v16 = v9;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = a5;
      goto LABEL_11;
    }

    v52 = 0;
    v26 = isAutomaticTimeEnabledWithError(&v52);
    v27 = v52;
    v21 = v27;
    if ((v26 & 1) == 0 && v27)
    {
      v30 = createMobileActivationError("copyDateUsedForCertificateValidation", 205, @"com.apple.MobileActivation.ErrorDomain", -1, v27, @"Failed to query automatic time state.", v28, v29, v46);

      v16 = 0;
      v20 = 0;
      v19 = 0;
      v18 = 0;
      v17 = 0;
LABEL_17:
      v21 = v30;
      v9 = 0;
      goto LABEL_8;
    }

    if (v26)
    {
      v16 = [MEMORY[0x277CBEAA8] date];
      goto LABEL_7;
    }

    v51 = v27;
    v31 = copyMonotonicClock(&v51);
    v32 = v51;

    if (v31 == 0.0)
    {
      v21 = createMobileActivationError("copyDateUsedForCertificateValidation", 222, @"com.apple.MobileActivation.ErrorDomain", -1, v32, @"Failed to query monotonic clock.", v33, v34, v46);
    }

    else
    {
      v50 = v32;
      v20 = copy_keychain_data(v10, v11, &v53, &v50);
      v35 = v50;

      if (v20 || !v53)
      {
        [v20 getBytes:&v55 length:8];
        if (v55 != 0.0)
        {
          v49 = v35;
          v19 = copy_keychain_data(v10, v15, &v53, &v49);
          v21 = v49;

          if (v19 || !v53)
          {
            [v19 getBytes:&v54 length:8];
            v42 = objc_alloc(MEMORY[0x277CBEAA8]);
            v43 = [v42 initWithTimeIntervalSinceReferenceDate:v54];
            v18 = v43;
            if (v43)
            {
              v16 = [v43 dateByAddingTimeInterval:v31 - v55];
              goto LABEL_32;
            }

            v30 = createMobileActivationError("copyDateUsedForCertificateValidation", 258, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create date from server timestamp.", v44, v45, v46);

            v16 = 0;
          }

          else
          {
            if (v53 == -25300)
            {
              createMobileActivationError("copyDateUsedForCertificateValidation", 246, @"com.apple.MobileActivation.ErrorDomain", -31, v21, @"Existing server timestamp not found (%@/%@): %d", v40, v41, v10);
            }

            else
            {
              createMobileActivationError("copyDateUsedForCertificateValidation", 248, @"com.apple.MobileActivation.ErrorDomain", -1, v21, @"Failed to query existing server timestamp (%@/%@): %d", v40, v41, v10);
            }
            v30 = ;

            v16 = 0;
            v19 = 0;
            v18 = 0;
          }

          v17 = 1;
          goto LABEL_17;
        }

        v21 = createMobileActivationError("copyDateUsedForCertificateValidation", 239, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy bytes from existing monotonic time data.", v38, v39, v46);

        v16 = 0;
LABEL_31:
        v19 = 0;
        v18 = 0;
LABEL_32:
        v17 = 1;
        goto LABEL_8;
      }

      if (v53 == -25300)
      {
        createMobileActivationError("copyDateUsedForCertificateValidation", 229, @"com.apple.MobileActivation.ErrorDomain", -31, v35, @"Existing monotonic time not found (%@/%@): %d", v36, v37, v10);
      }

      else
      {
        createMobileActivationError("copyDateUsedForCertificateValidation", 231, @"com.apple.MobileActivation.ErrorDomain", -1, v35, @"Failed to query existing motononic time (%@/%@): %d", v36, v37, v10);
      }
      v21 = ;
    }

    v16 = 0;
    v20 = 0;
    goto LABEL_31;
  }

  v21 = createMobileActivationError("copyDateUsedForCertificateValidation", 188, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).", v13, v14, v46);
  v16 = 0;
LABEL_7:
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
LABEL_8:
  v22 = a5;
  if (a6 && !v16)
  {
    v23 = v21;
    v22 = a5;
    *a6 = v21;
  }

LABEL_11:
  if (v22)
  {
    *v22 = v17;
  }

  v24 = v16;

  return v16;
}

uint64_t mobileactivationErrorHasDomainAndErrorCode(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = *MEMORY[0x277CCA7E8];
    do
    {
      v10 = [v5 domain];
      if ([v10 isEqualToString:v7])
      {
        v11 = [v5 code];

        if (v11 == a3)
        {
          v8 = 1;
          goto LABEL_10;
        }
      }

      else
      {
      }

      v12 = [v5 userInfo];
      v13 = [v12 objectForKeyedSubscript:v9];

      v5 = v13;
    }

    while (v13);
    v8 = 0;
  }

LABEL_10:

  return v8;
}

void __isRunningInDiagnosticsMode_block_invoke()
{
  v1 = MGCopyAnswer();
  v0 = isNSNumber(v1);

  if (v0)
  {
    isRunningInDiagnosticsMode_retval = [v1 BOOLValue];
  }
}

void __isSupportedDeviceIdentityClient_block_invoke()
{
  v0 = isSupportedDeviceIdentityClient_virtualDeviceSupportedList;
  isSupportedDeviceIdentityClient_virtualDeviceSupportedList = &unk_283965CF0;

  v1 = isSupportedDeviceIdentityClient_physicalDeviceSupportedList;
  isSupportedDeviceIdentityClient_physicalDeviceSupportedList = &unk_283965D08;
}

id isNSDictionary(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSDate(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t device_supports_mfi_certificates()
{
  v0 = +[DeviceTypeDeviceIdentity sharedInstance];
  v1 = [v0 device_supports_mfi_certificates];

  return v1;
}

uint64_t device_supports_eda_certificates()
{
  v0 = +[DeviceTypeDeviceIdentity sharedInstance];
  v1 = [v0 device_supports_eda_certificates];

  return v1;
}

id copy_trusted_local_policy_hash()
{
  v0 = +[DeviceTypeDeviceIdentity sharedInstance];
  v1 = [@"IODeviceTree" stringByAppendingString:@":/chosen"];
  v2 = [v0 copyDeviceTreeProperty:v1 key:@"trusted-boot-policy-measurement"];

  v3 = isNSData(v2);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [v2 length];

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = malloc_type_calloc(1uLL, [v2 length], 0x25DEF4D3uLL);
  if (v6)
  {
    v7 = v6;
    [v2 getBytes:v6 length:{objc_msgSend(v2, "length")}];
    if (!*v7 && !memcmp(v7, v7 + 1, [v2 length] - 1))
    {
      v5 = 0;
    }

    else
    {
      v5 = v2;
    }

    free(v7);
  }

  else
  {
LABEL_8:
    v5 = 0;
  }

LABEL_9:

  return v5;
}

id copy_sfr_manifest()
{
  v0 = +[DeviceTypeDeviceIdentity sharedInstance];
  v1 = [@"IODeviceTree" stringByAppendingString:@":/chosen/iBoot"];
  v2 = [v0 copyDeviceTreeInt:v1 key:@"sfr-manifest-size" defaultValue:0];

  if (!v2 || ![v2 unsignedIntValue])
  {
    v6 = 0;
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v3 = +[DeviceTypeDeviceIdentity sharedInstance];
  v4 = [@"IODeviceTree" stringByAppendingString:@":/chosen/iBoot"];
  v5 = [v3 copyDeviceTreeProperty:v4 key:@"sfr-manifest-data"];

  v6 = isNSData(v5);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = [v5 length];

  if (v7)
  {
    v6 = [v5 subdataWithRange:{0, objc_msgSend(v2, "unsignedIntValue")}];

    if (v6)
    {
      v6 = v6;
      v5 = v6;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

id vm_copy_host_certificate(void *a1, void *a2)
{
  v3 = a1;
  if (is_virtual_machine())
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (v8)
    {
      v34 = 0;
      v9 = libavp_copy_strong_identity_data(v3, &v34);
      v12 = v34;
      if (v9)
      {
        [v8 setObject:@"CopyVMHostCertificateRequest" forKeyedSubscript:@"Command"];
        [v8 setObject:v9 forKeyedSubscript:@"Value"];
        v33 = v12;
        v13 = libavp_send_host_message(v8, &v33);
        v14 = v33;

        v15 = isNSDictionary(v13);

        if (v15)
        {
          v15 = [v13 objectForKeyedSubscript:@"Error"];
          v18 = isNSString(v15);

          if (!v18)
          {
            v22 = [v13 objectForKeyedSubscript:@"Value"];
            v21 = isNSDictionary(v22);

            if (v21)
            {
              v23 = [v22 objectForKeyedSubscript:@"RKCertification"];
              v21 = isNSData(v23);

              if (v21)
              {
                v21 = v23;
                v23 = v21;
                goto LABEL_11;
              }

              v32 = createMobileActivationError("vm_copy_host_certificate", 71, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid response message.", v29, v30, v31);

              goto LABEL_18;
            }

            v32 = createMobileActivationError("vm_copy_host_certificate", 65, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid response message.", v27, v28, v31);

LABEL_17:
            v23 = 0;
LABEL_18:
            v14 = v32;
            goto LABEL_11;
          }

          createMobileActivationError("vm_copy_host_certificate", 59, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Error occurred during request: %@", v19, v20, v15);
        }

        else
        {
          createMobileActivationError("vm_copy_host_certificate", 53, @"com.apple.MobileActivation.ErrorDomain", -1, v14, @"Failed to receive response.", v16, v17, v31);
        }
        v32 = ;

        v21 = 0;
        v22 = 0;
        goto LABEL_17;
      }

      v14 = createMobileActivationError("vm_copy_host_certificate", 44, @"com.apple.MobileActivation.ErrorDomain", -1, v12, @"Failed to copy AVP identity data.", v10, v11, v31);

      v21 = 0;
    }

    else
    {
      v14 = createMobileActivationError("vm_copy_host_certificate", 38, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create dictionary.", v6, v7, v31);
      v21 = 0;
      v9 = 0;
    }
  }

  else
  {
    v14 = createMobileActivationError("vm_copy_host_certificate", 32, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"Device is not a VM (not supported).", v4, v5, v31);
    v21 = 0;
    v9 = 0;
    v8 = 0;
  }

  v13 = 0;
  v22 = 0;
  v23 = 0;
  v15 = 0;
LABEL_11:
  if (a2 && !v21)
  {
    v24 = v14;
    *a2 = v14;
  }

  v25 = v21;

  return v21;
}

id vm_create_host_key_signature(void *a1, void *a2, void *a3, void *a4)
{
  v6 = a1;
  v7 = a2;
  v46 = v7;
  v47 = v6;
  if (!is_virtual_machine())
  {
    v22 = createMobileActivationError("vm_create_host_key_signature", 101, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"Device is not a VM (not supported).", v8, v9, v43);
    v30 = 0;
    v17 = 0;
    v13 = 0;
LABEL_13:
    v16 = 0;
LABEL_14:
    v21 = 0;
    v31 = 0;
    v23 = 0;
    v32 = 0;
    v26 = 0;
    goto LABEL_15;
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = v10;
  if (!v10)
  {
    v22 = createMobileActivationError("vm_create_host_key_signature", 107, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create dictionary.", v11, v12, v43);
    v30 = 0;
    v17 = 0;
    goto LABEL_13;
  }

  if (v7)
  {
    [v10 addEntriesFromDictionary:v7];
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v16)
  {
    v22 = createMobileActivationError("vm_create_host_key_signature", 117, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create dictionary.", v14, v15, v43);
    v30 = 0;
    v17 = 0;
    goto LABEL_14;
  }

  v50 = 0;
  v17 = libavp_copy_strong_identity_data(v7, &v50);
  v20 = v50;
  if (!v17)
  {
    v22 = createMobileActivationError("vm_create_host_key_signature", 123, @"com.apple.MobileActivation.ErrorDomain", -1, v20, @"Failed to copy AVP identity data.", v18, v19, v43);

    v30 = 0;
    goto LABEL_14;
  }

  [v13 setObject:v17 forKeyedSubscript:@"BIKData"];
  [v16 setObject:@"CreateVMHostKeyAttestationRequest" forKeyedSubscript:@"Command"];
  [v16 setObject:v6 forKeyedSubscript:@"Value"];
  [v16 setObject:v13 forKeyedSubscript:@"Options"];
  v49 = v20;
  v21 = libavp_send_host_message(v16, &v49);
  v22 = v49;

  v23 = isNSDictionary(v21);

  if (!v23)
  {
    v44 = createMobileActivationError("vm_create_host_key_signature", 136, @"com.apple.MobileActivation.ErrorDomain", -1, v22, @"Failed to receive response.", v24, v25, v43);

    v30 = 0;
    v31 = 0;
    v32 = 0;
    v26 = 0;
    goto LABEL_22;
  }

  v26 = [v21 objectForKeyedSubscript:@"Error"];
  v27 = isNSString(v26);

  if (v27)
  {
    v44 = createMobileActivationError("vm_create_host_key_signature", 142, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Error occurred during request: %@", v28, v29, v26);

    v30 = 0;
    v31 = 0;
    v23 = 0;
LABEL_10:
    v32 = 0;
LABEL_22:
    v22 = v44;
    goto LABEL_15;
  }

  v45 = a3;
  v31 = [v21 objectForKeyedSubscript:@"Value"];
  v23 = isNSDictionary(v31);

  if (!v23)
  {
    v44 = createMobileActivationError("vm_create_host_key_signature", 148, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid response message.", v36, v37, v43);

    v30 = 0;
    goto LABEL_10;
  }

  v23 = [v31 objectForKeyedSubscript:@"RKCertification"];
  v32 = isNSData(v23);

  if (!v32)
  {
    v44 = createMobileActivationError("vm_create_host_key_signature", 154, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid response message.", v38, v39, v43);

    v30 = 0;
    goto LABEL_22;
  }

  v32 = [v31 objectForKeyedSubscript:@"RKSignature"];
  v30 = isNSData(v32);

  if (!v30)
  {
    v44 = createMobileActivationError("vm_create_host_key_signature", 160, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid response message.", v40, v41, v43);

    goto LABEL_22;
  }

  if (v45)
  {
    v42 = v23;
    *v45 = v23;
  }

  v30 = v32;
  v32 = v30;
LABEL_15:
  if (a4 && !v30)
  {
    v33 = v22;
    *a4 = v22;
  }

  v34 = v30;

  return v30;
}

uint64_t load_certificate(CFTypeRef *a1, void *a2, void *a3, int *a4, void *a5)
{
  v32[4] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v13 = v10;
  result = 0;
  if (!v10)
  {
    v23 = createMobileActivationError("load_certificate", 231, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid inputs.", v11, v12, v29);
    v24 = 0;
    v18 = 0;
    v22 = -1;
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = *MEMORY[0x277CDC228];
  v31[0] = *MEMORY[0x277CDC080];
  v31[1] = v14;
  v15 = *MEMORY[0x277CDC230];
  v32[0] = v10;
  v32[1] = v15;
  v16 = *MEMORY[0x277CDC5C8];
  v31[2] = *MEMORY[0x277CDC568];
  v31[3] = v16;
  v32[2] = MEMORY[0x277CBEC38];
  v32[3] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];
  v18 = [v17 mutableCopy];

  if (v9)
  {
    [v18 setObject:v9 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
  }

  v19 = SecItemCopyMatching(v18, &result);
  if (v19)
  {
    v22 = v19;
    v23 = createMobileActivationError("load_certificate", 253, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate (%@): %d", v20, v21, v13);
    v24 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }

LABEL_8:
    *a4 = v22;
    goto LABEL_9;
  }

  v22 = 0;
  v23 = 0;
  if (a1)
  {
    *a1 = CFRetain(result);
  }

  v24 = 1;
  if (a4)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (a5)
  {
    v25 = v24;
  }

  else
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
    v26 = v23;
    *a5 = v23;
  }

  if (result)
  {
    CFRelease(result);
  }

  result = 0;

  v27 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t delete_certificate(void *a1, void *a2, void *a3)
{
  v24[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v9 = v6;
  if (!v6)
  {
    v18 = createMobileActivationError("delete_certificate", 287, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.", v7, v8, v22);
    v14 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  v10 = *MEMORY[0x277CDC228];
  v23[0] = *MEMORY[0x277CDC080];
  v23[1] = v10;
  v11 = *MEMORY[0x277CDC230];
  v24[0] = v6;
  v24[1] = v11;
  v12 = *MEMORY[0x277CDC5C8];
  v23[2] = *MEMORY[0x277CDC568];
  v23[3] = v12;
  v24[2] = MEMORY[0x277CBEC38];
  v24[3] = MEMORY[0x277CBEC38];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];
  v14 = [v13 mutableCopy];

  if (v5)
  {
    [v14 setObject:v5 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
  }

  v17 = SecItemDelete(v14);
  v18 = 0;
  v19 = 1;
  if (v17 != -25300 && v17)
  {
    v18 = createMobileActivationError("delete_certificate", 309, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to remove existing certificate (%@): %d", v15, v16, v9);
    if (!a3)
    {
LABEL_7:
      v19 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v18 = v18;
    v19 = 0;
    *a3 = v18;
  }

LABEL_10:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

id getLAContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLAContextClass_softClass;
  v7 = getLAContextClass_softClass;
  if (!getLAContextClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getLAContextClass_block_invoke;
    v3[3] = &unk_278585F58;
    v3[4] = &v4;
    __getLAContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_226209DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t delete_keychain_item(void *a1, void *a2, void *a3)
{
  v24[3] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v9 = v6;
  if (!v6)
  {
    v19 = createMobileActivationError("delete_keychain_item", 617, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).", v7, v8, v22);
    v13 = 0;
    if (!a3)
    {
LABEL_13:
      v18 = 0;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v10 = *MEMORY[0x277CDC228];
  v23[0] = *MEMORY[0x277CDC080];
  v23[1] = v10;
  v11 = *MEMORY[0x277CDC250];
  v24[0] = v6;
  v24[1] = v11;
  v23[2] = *MEMORY[0x277CDC5C8];
  v24[2] = MEMORY[0x277CBEC38];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v13 = [v12 mutableCopy];

  if (v5)
  {
    [v13 setObject:v5 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
  }

  v14 = SecItemDelete(v13);
  if (v14 != -25300 && v14 != 0)
  {
    v19 = createMobileActivationError("delete_keychain_item", 638, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to remove existing keychain item %@: %d", v15, v16, v9);
    if (!a3)
    {
      goto LABEL_13;
    }

LABEL_11:
    v19 = v19;
    v18 = 0;
    *a3 = v19;
    goto LABEL_14;
  }

  v19 = 0;
  v18 = 1;
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t store_keychain_item(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v42[5] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v14 = v11;
  if (a1 && v10)
  {
    if (v11)
    {
      v15 = [v11 objectForKeyedSubscript:@"LocalAuthenticationContext"];
      if (!v15)
      {
        goto LABEL_9;
      }

      v16 = v15;
      v17 = [v14 objectForKeyedSubscript:@"LocalAuthenticationContext"];
      getLAContextClass();
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v19 = [v14 objectForKeyedSubscript:@"LocalAuthenticationContext"];
      }

      else
      {
LABEL_9:
        v19 = 0;
      }

      v25 = [v14 objectForKeyedSubscript:@"UseAuthenticationUI"];
      v26 = isNSString(v25);

      if (v26)
      {
        v22 = [v14 objectForKeyedSubscript:@"UseAuthenticationUI"];
        goto LABEL_14;
      }
    }

    else
    {
      v19 = 0;
    }

    v22 = 0;
LABEL_14:
    v40 = 0;
    v27 = delete_keychain_item(v9, v10, &v40);
    v20 = v40;
    if (v27)
    {
      v30 = *MEMORY[0x277CDC228];
      v41[0] = *MEMORY[0x277CDC080];
      v41[1] = v30;
      v31 = *MEMORY[0x277CDC250];
      v42[0] = v10;
      v42[1] = v31;
      v32 = *MEMORY[0x277CDC5C8];
      v41[2] = *MEMORY[0x277CDC5F8];
      v41[3] = v32;
      v42[2] = a1;
      v42[3] = MEMORY[0x277CBEC38];
      v41[4] = *MEMORY[0x277CDBED8];
      v42[4] = *MEMORY[0x277CDBF00];
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:5];
      v21 = [v33 mutableCopy];

      if (v9)
      {
        [v21 setObject:v9 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
      }

      if (v19)
      {
        [v21 setObject:v19 forKeyedSubscript:*MEMORY[0x277CDC5A0]];
      }

      if (v22)
      {
        [v21 setObject:v22 forKeyedSubscript:*MEMORY[0x277CDC5A8]];
      }

      if (!SecItemAdd(v21, 0))
      {
        v24 = 1;
        goto LABEL_27;
      }

      v36 = createMobileActivationError("store_keychain_item", 717, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to add %@ to keychain: %d", v34, v35, v10);
    }

    else
    {
      v36 = createMobileActivationError("store_keychain_item", 684, @"com.apple.MobileActivation.ErrorDomain", -1, v20, @"Failed to delete existing keychain item.", v28, v29, v39);

      v21 = 0;
    }

    v20 = v36;
    if (!a5)
    {
      goto LABEL_25;
    }

    goto LABEL_8;
  }

  v20 = createMobileActivationError("store_keychain_item", 667, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).", v12, v13, v39);
  v21 = 0;
  v19 = 0;
  v22 = 0;
  if (!a5)
  {
LABEL_25:
    v24 = 0;
    goto LABEL_27;
  }

LABEL_8:
  v23 = v20;
  v24 = 0;
  *a5 = v20;
LABEL_27:

  v37 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t delete_keychain_data(void *a1, void *a2, void *a3)
{
  v24[3] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v9 = v6;
  if (!v6)
  {
    v19 = createMobileActivationError("delete_keychain_data", 895, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).", v7, v8, v22);
    v13 = 0;
    if (!a3)
    {
LABEL_13:
      v18 = 0;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v10 = *MEMORY[0x277CDC228];
  v23[0] = *MEMORY[0x277CDC080];
  v23[1] = v10;
  v11 = *MEMORY[0x277CDC238];
  v24[0] = v6;
  v24[1] = v11;
  v23[2] = *MEMORY[0x277CDC5C8];
  v24[2] = MEMORY[0x277CBEC38];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v13 = [v12 mutableCopy];

  if (v5)
  {
    [v13 setObject:v5 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
  }

  v14 = SecItemDelete(v13);
  if (v14 != -25300 && v14 != 0)
  {
    v19 = createMobileActivationError("delete_keychain_data", 916, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to remove existing keychain item %@: %d", v15, v16, v9);
    if (!a3)
    {
      goto LABEL_13;
    }

LABEL_11:
    v19 = v19;
    v18 = 0;
    *a3 = v19;
    goto LABEL_14;
  }

  v19 = 0;
  v18 = 1;
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t store_keychain_data(void *a1, void *a2, void *a3, void *a4)
{
  v33[7] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v12 = v9;
  if (v7 && v9)
  {
    v31 = 0;
    v13 = delete_keychain_data(v8, v9, &v31);
    v16 = v31;
    if (v13)
    {
      v17 = *MEMORY[0x277CDC228];
      v32[0] = *MEMORY[0x277CDC080];
      v32[1] = v17;
      v18 = *MEMORY[0x277CDC238];
      v33[0] = v12;
      v33[1] = v18;
      v19 = *MEMORY[0x277CDC5C8];
      v32[2] = *MEMORY[0x277CDC5E8];
      v32[3] = v19;
      v33[2] = v7;
      v33[3] = MEMORY[0x277CBEC38];
      v20 = *MEMORY[0x277CDBF20];
      v32[4] = *MEMORY[0x277CDC120];
      v32[5] = v20;
      v33[4] = @"com.apple.mobileactivationd";
      v33[5] = v12;
      v32[6] = *MEMORY[0x277CDBED8];
      v33[6] = *MEMORY[0x277CDBF00];
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:7];
      v22 = [v21 mutableCopy];

      if (v8)
      {
        [v22 setObject:v8 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
      }

      if (!SecItemAdd(v22, 0))
      {
        v27 = 1;
        goto LABEL_14;
      }

      v25 = createMobileActivationError("store_keychain_data", 974, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to add %@ to keychain: %d", v23, v24, v12);
    }

    else
    {
      v25 = createMobileActivationError("store_keychain_data", 946, @"com.apple.MobileActivation.ErrorDomain", -1, v16, @"Failed to delete existing keychain item.", v14, v15, v30);

      v22 = 0;
    }

    v16 = v25;
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = createMobileActivationError("store_keychain_data", 941, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).", v10, v11, v30);
    v22 = 0;
    if (!a4)
    {
LABEL_12:
      v27 = 0;
      goto LABEL_14;
    }
  }

  v26 = v16;
  v27 = 0;
  *a4 = v16;
LABEL_14:

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

Class __getLAContextClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!LocalAuthenticationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __LocalAuthenticationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278585F78;
    v6 = 0;
    LocalAuthenticationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!LocalAuthenticationLibraryCore_frameworkLibrary)
  {
    __getLAContextClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("LAContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLAContextClass_block_invoke_cold_1();
  }

  getLAContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __LocalAuthenticationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LocalAuthenticationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id lockcrypto_query_certificate_properties(uint64_t a1, void *a2, void *a3)
{
  v219[14] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = v5;
  v204 = 0;
  v205 = 0;
  v202[1] = 0;
  v203 = 0;
  v201 = 0;
  v202[0] = 0;
  v200 = 0uLL;
  v198 = 0uLL;
  v199 = 0;
  v197 = 0;
  v196 = 0;
  v195 = 0;
  if (!a1 || !v5)
  {
    v15 = createMobileActivationError("lockcrypto_query_certificate_properties", 229, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).", v6, v7, v181);
    v11 = 0;
    goto LABEL_15;
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v11)
  {
    v15 = createMobileActivationError("lockcrypto_query_certificate_properties", 235, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.", v9, v10, v181);
LABEL_15:
    v14 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    if (v15)
    {
      goto LABEL_241;
    }

    goto LABEL_185;
  }

  if (MEMORY[0x28220DA38])
  {
    v14 = SecCertificateCopyExtensionValue();
    v15 = 0;
    if (v14)
    {
      goto LABEL_6;
    }

LABEL_183:
    v181 = v8;
    v17 = @"Failed to query DERSequence data for OID %@.";
    v18 = 245;
    v19 = -26;
    v20 = v15;
LABEL_184:
    v144 = createMobileActivationError("lockcrypto_query_certificate_properties", v18, @"com.apple.MobileActivation.ErrorDomain", v19, v20, v17, v12, v13, v181);

    v21 = 0;
    v22 = 0;
    v23 = 0;
    v15 = v144;
    if (v144)
    {
      goto LABEL_241;
    }

    goto LABEL_185;
  }

  v24 = v8;
  if (lockcrypto_query_oid_der_sequence_data_onceToken != -1)
  {
    lockcrypto_query_certificate_properties_cold_1();
  }

  v25 = SecCertificateCopyProperties();
  v28 = v25;
  v187 = a3;
  v189 = v8;
  if (v25)
  {
    v182 = v25;
    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v29 = v25;
    v30 = [v29 countByEnumeratingWithState:&v210 objects:&v217 count:16];
    if (!v30)
    {
      v32 = 0;
      goto LABEL_180;
    }

    v31 = v30;
    v32 = 0;
    v33 = *v211;
    v184 = v29;
    v185 = v24;
    v183 = *v211;
    while (1)
    {
      v34 = 0;
      do
      {
        if (*v211 != v33)
        {
          objc_enumerationMutation(v29);
        }

        v35 = *(*(&v210 + 1) + 8 * v34);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = [v35 objectForKeyedSubscript:@"label"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v36 isEqualToString:v24])
          {
            v37 = [v35 objectForKeyedSubscript:@"value"];

            if (v37)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v186 = v31;
                v208 = 0u;
                v209 = 0u;
                v206 = 0u;
                v207 = 0u;
                v32 = v37;
                v38 = [v32 countByEnumeratingWithState:&v206 objects:&v214 count:16];
                if (!v38)
                {
                  goto LABEL_47;
                }

                v39 = v38;
                v40 = *v207;
                while (1)
                {
                  for (i = 0; i != v39; ++i)
                  {
                    if (*v207 != v40)
                    {
                      objc_enumerationMutation(v32);
                    }

                    v42 = *(*(&v206 + 1) + 8 * i);
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v43 = 0;
LABEL_44:
                      v14 = 0;
                      goto LABEL_45;
                    }

                    v43 = [v42 objectForKeyedSubscript:@"label"];
                    if (!v43)
                    {
                      goto LABEL_44;
                    }

                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v43 isEqualToString:@"Unparsed Data"])
                    {
                      goto LABEL_44;
                    }

                    v14 = [v42 objectForKeyedSubscript:@"value"];
                    if (v14)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) != 0 && ![v14 isEqualToData:lockcrypto_query_oid_der_sequence_data_ASN1DERNull])
                      {

                        v142 = 0;
                        v28 = v182;
                        v143 = v184;
                        v24 = v185;
                        goto LABEL_182;
                      }
                    }

LABEL_45:
                  }

                  v39 = [v32 countByEnumeratingWithState:&v206 objects:&v214 count:16];
                  if (!v39)
                  {
LABEL_47:

                    v29 = v184;
                    v24 = v185;
                    v31 = v186;
                    v33 = v183;
                    goto LABEL_49;
                  }
                }
              }

              v32 = v37;
            }

            else
            {
              v32 = 0;
            }
          }
        }

        else
        {
          v36 = 0;
        }

LABEL_49:

        ++v34;
      }

      while (v34 != v31);
      v44 = [v29 countByEnumeratingWithState:&v210 objects:&v217 count:16];
      v31 = v44;
      if (!v44)
      {
LABEL_180:

        v141 = 0;
        v28 = v182;
        goto LABEL_181;
      }
    }
  }

  v141 = createMobileActivationError("lockcrypto_query_oid_der_sequence_data", 137, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate properties.", v26, v27, v181);
  v32 = 0;
LABEL_181:
  v143 = v141;
  v14 = 0;
  v142 = v143;
LABEL_182:

  v15 = v142;
  a3 = v187;
  v8 = v189;
  if (!v14)
  {
    goto LABEL_183;
  }

LABEL_6:
  v204 = [v14 bytes];
  v205 = [v14 length];
  v16 = DERDecodeSeqInit(&v204, &v203, v202);
  if (v16 == 2)
  {
    v16 = DERDecodeItem(&v204, &v200);
    if (!v16 && v200 == 4)
    {
      v16 = DERDecodeSeqInit(&v200 + 8, &v203, v202);
    }
  }

  if (v16)
  {
    v181 = v16;
    v17 = @"Failed to intialize DER sequence: %d";
    v18 = 267;
LABEL_12:
    v19 = -1;
    v20 = 0;
    goto LABEL_184;
  }

  if (v203 == 0x2000000000000010)
  {
    v145 = DERDecodeSeqNext(v202, &v200);
    v21 = 0;
    v188 = a3;
    v190 = v8;
    if (v145 || !*(&v200 + 1))
    {
      v22 = 0;
      v23 = 0;
LABEL_228:
      if (v145 == 1)
      {
        goto LABEL_239;
      }

      createMobileActivationError("lockcrypto_query_certificate_properties", 299, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to decode DER sequence: %d", v146, v147, v145);
      goto LABEL_237;
    }

    v23 = 0;
    v22 = 0;
    v21 = 0;
    while (1)
    {
      v148 = v11;
      v149 = v21;
      v150 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v200 & 0x5FFFFFFFFFFFFFFFLL];
      v21 = [v150 stringValue];

      if (!DERDecodeItem(&v200 + 8, &v198))
      {
        v200 = v198;
        v201 = v199;
      }

      v151 = v200 & 0x5FFFFFFFFFFFFFFFLL;
      v11 = v148;
      if ((v200 & 0x5FFFFFFFFFFFFFFFLL) == 1)
      {
        v160 = DERParseBoolean(&v200 + 1, &v195);
        if (v160)
        {
          createMobileActivationError("lockcrypto_query_certificate_properties", 353, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to decode DER encoded ASN1_BOOLEAN: %d", v161, v162, v160);
          v163 = LABEL_206:;

LABEL_207:
          v15 = v163;
          goto LABEL_217;
        }

        v168 = [MEMORY[0x277CCABB0] numberWithBool:v195];
      }

      else
      {
        if (v151 != 2)
        {
          if (v151 != 4)
          {
            goto LABEL_217;
          }

          if (v201)
          {
            v152 = 0;
            v153 = 0;
            while ((*(*(&v200 + 1) + v152) & 0x80000000) == 0)
            {
              v152 = ++v153;
              if (v201 <= v153)
              {
                v154 = objc_alloc(MEMORY[0x277CCACA8]);
                v23 = [v154 initWithBytes:*(&v200 + 1) length:v201 encoding:1];
                if (v23)
                {
                  v22 = 0;
                  goto LABEL_210;
                }

                v163 = createMobileActivationError("lockcrypto_query_certificate_properties", 326, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to decode DER encoded ANS1_OCTET_STRING.", v155, v156, v181);

                v22 = 0;
                goto LABEL_207;
              }
            }
          }

          v164 = objc_alloc(MEMORY[0x277CBEA90]);
          v22 = [v164 initWithBytes:*(&v200 + 1) length:v201];
          if (v22)
          {
            v23 = 0;
LABEL_210:
            if (v23)
            {
              v167 = v23;
            }

            else
            {
              v167 = v22;
            }

            [v148 setObject:v167 forKeyedSubscript:v21];
            goto LABEL_217;
          }

          v163 = createMobileActivationError("lockcrypto_query_certificate_properties", 332, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to decode DER encoded ANS1_OCTET_STRING.", v165, v166, v181);

          v23 = 0;
          goto LABEL_207;
        }

        v157 = DERParseInteger64(&v200 + 8, &v196);
        if (v157)
        {
          createMobileActivationError("lockcrypto_query_certificate_properties", 343, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to decode DER encoded ASN1_INTEGER: %d", v158, v159, v157);
          goto LABEL_206;
        }

        v168 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v196];
      }

      v169 = v168;
      [v148 setObject:v168 forKeyedSubscript:v21];

LABEL_217:
      v145 = DERDecodeSeqNext(v202, &v200);
      if (v145 || !*(&v200 + 1))
      {
        goto LABEL_228;
      }
    }
  }

  if (v203 != 0x2000000000000011)
  {
    v17 = @"Expected ASN1_CONSTR_SET or ASN1_CONSTR_SEQUENCE tag.";
    v18 = 717;
    goto LABEL_12;
  }

  v188 = a3;
  v210 = 0uLL;
  v206 = 0uLL;
  v217 = 0;
  v218 = 0;
  v219[0] = 0;
  v45 = DERDecodeSeqNext(v202, &v200);
  v48 = 0;
  v190 = v8;
  if (!v45)
  {
    v49 = *(&v200 + 1);
    if (*(&v200 + 1))
    {
      v23 = 0;
      v22 = 0;
      v21 = 0;
      v50 = @"com.apple.MobileActivation.ErrorDomain";
      while (1)
      {
        *&v210 = v49;
        *(&v210 + 1) = v201;
        v51 = DERDecodeSeqInit(&v210, &v203, &v206);
        if (v51)
        {
          createMobileActivationError("lockcrypto_query_certificate_properties", 479, v50, -1, 0, @"Failed to intialize DER sequence: %d", v52, v53, v51);
          goto LABEL_237;
        }

        if (v203 != 0x2000000000000010)
        {
          v171 = @"Expected ASN1_CONSTR_SEQUENCE tag.";
          v172 = 484;
          goto LABEL_236;
        }

        v54 = DERDecodeSeqNext(&v206, &v217);
        if (v54 || !v218)
        {
          createMobileActivationError("lockcrypto_query_certificate_properties", 492, v50, -1, 0, @"Failed to decode DER sequence: %d", v52, v53, v54);
          goto LABEL_237;
        }

        if (v217 != 22)
        {
          v171 = @"Invalid DER tag.";
          v172 = 497;
          goto LABEL_236;
        }

        v55 = DERParseInteger(&v218, &v197);
        if (v55)
        {
          break;
        }

        if (v219[0] != 4)
        {
          v181 = v219[0];
          v171 = @"Invalid property key length: %ld";
          v172 = 508;
LABEL_236:
          createMobileActivationError("lockcrypto_query_certificate_properties", v172, v50, -1, 0, v171, v52, v53, v181);
          v173 = LABEL_237:;

LABEL_238:
          v15 = v173;
LABEL_239:
          v8 = v190;
          goto LABEL_240;
        }

        v56 = objc_alloc(MEMORY[0x277CCACA8]);
        v48 = [v56 initWithBytes:v218 length:v219[0] encoding:1];

        if (!v48)
        {
          v173 = createMobileActivationError("lockcrypto_query_certificate_properties", 514, v50, -1, 0, @"Failed to create string.", v57, v58, v181);

          v21 = 0;
          goto LABEL_238;
        }

        v59 = DERDecodeSeqNext(&v206, &v217);
        if (v59 || !v218)
        {
          v181 = v59;
          v179 = @"Failed to decode DER sequence: %d";
          v180 = 520;
LABEL_250:
          createMobileActivationError("lockcrypto_query_certificate_properties", v180, v50, -1, 0, v179, v60, v61, v181);
          goto LABEL_251;
        }

        if (v217 <= 1)
        {
          switch(v217)
          {
            case 0xA000000000000000:
              v73 = v11;
              v74 = &unk_283965E40;
              break;
            case 0xA000000000000001:
              v73 = v11;
              v74 = &unk_283965E58;
              break;
            case 1:
              v62 = DERParseBoolean(&v218, &v195);
              if (!v62)
              {
                v65 = [MEMORY[0x277CCABB0] numberWithBool:v195];
LABEL_92:
                v78 = v65;
                [v11 setObject:v65 forKeyedSubscript:v48];

                goto LABEL_156;
              }

              createMobileActivationError("lockcrypto_query_certificate_properties", 559, v50, -1, 0, @"Failed to decode DER encoded ASN1_BOOLEAN: %d", v63, v64, v62);
              goto LABEL_251;
            default:
              goto LABEL_156;
          }

LABEL_149:
          [v73 setObject:v74 forKeyedSubscript:v48];
          goto LABEL_156;
        }

        if (v217 == 2)
        {
          v75 = DERParseInteger64(&v218, &v196);
          if (!v75)
          {
            v65 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v196];
            goto LABEL_92;
          }

          createMobileActivationError("lockcrypto_query_certificate_properties", 551, v50, -1, 0, @"Failed to decode DER encoded ASN1_INTEGER: %d", v76, v77, v75);
          goto LABEL_251;
        }

        if (v217 != 0x2000000000000011)
        {
          if (v217 != 4)
          {
            goto LABEL_156;
          }

          if (v219[0])
          {
            v66 = 0;
            v67 = 0;
            while ((v218[v66] & 0x80000000) == 0)
            {
              v66 = ++v67;
              if (v219[0] <= v67)
              {
                v68 = DERDecodeItem(&v218, &v198);
                v69 = objc_alloc(MEMORY[0x277CCACA8]);
                v70 = &v198 + 1;
                if (v68)
                {
                  v70 = &v218;
                }

                v71 = *v70;
                v72 = &v199;
                if (v68)
                {
                  v72 = v219;
                }

                v23 = [v69 initWithBytes:v71 length:*v72 encoding:1];
                if (!v23)
                {
                  v179 = @"Failed to decode DER encoded ANS1_OCTET_STRING.";
                  v180 = 536;
                  goto LABEL_250;
                }

                goto LABEL_145;
              }
            }
          }

          v130 = objc_alloc(MEMORY[0x277CBEA90]);
          v131 = [v130 initWithBytes:v218 length:v219[0]];

          if (!v131)
          {
            v178 = createMobileActivationError("lockcrypto_query_certificate_properties", 542, v50, -1, 0, @"Failed to decode DER encoded ANS1_OCTET_STRING.", v132, v133, v181);

            v22 = 0;
            v23 = 0;
            goto LABEL_252;
          }

          v23 = 0;
          v22 = v131;
LABEL_145:
          if (v23)
          {
            v74 = v23;
          }

          else
          {
            v74 = v22;
          }

          v73 = v11;
          goto LABEL_149;
        }

        v79 = DERDecodeSeqContentInit(&v218, &v206);
        if (v79)
        {
          createMobileActivationError("lockcrypto_query_certificate_properties", 571, v50, -1, 0, @"Failed to intialize DER sequence: %d", v80, v81, v79);
          v178 = LABEL_251:;

LABEL_252:
          v15 = v178;
LABEL_254:
          v21 = v48;
          goto LABEL_239;
        }

        v82 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v11 setObject:v82 forKeyedSubscript:v48];

        v193 = 0;
        v194 = 0;
        v191 = 0;
        v192 = 0;
        v214 = 0;
        v215 = 0;
        v216 = 0;
        v83 = DERDecodeSeqNext(&v206, &v217);
        if (!v83)
        {
          v86 = v218;
          if (v218)
          {
            while (1)
            {
              v193 = v86;
              v194 = v219[0];
              v87 = DERDecodeSeqInit(&v193, &v203, &v191);
              if (v87)
              {
                createMobileActivationError("lockcrypto_query_certificate_properties", 601, v50, -1, 0, @"Failed to intialize DER sequence: %d", v84, v85, v87);
                goto LABEL_154;
              }

              if (v203 != 0x2000000000000010)
              {
                v134 = 606;
                v135 = v50;
                v136 = @"Expected ASN1_CONSTR_SEQUENCE tag.";
                goto LABEL_153;
              }

              v88 = DERDecodeSeqNext(&v191, &v214);
              if (v88 || !v215)
              {
                v181 = v88;
                v134 = 614;
                goto LABEL_152;
              }

              if (v214 != 22)
              {
                v134 = 619;
                v135 = v50;
                v136 = @"Invalid DER tag.";
                goto LABEL_153;
              }

              v89 = DERParseInteger(&v215, &v197);
              if (v89)
              {
                createMobileActivationError("lockcrypto_query_certificate_properties", 625, v50, -1, 0, @"Failed to parse DER integer: %d", v90, v91, v89);
                goto LABEL_154;
              }

              if (v216 != 4)
              {
                createMobileActivationError("lockcrypto_query_certificate_properties", 630, v50, -1, 0, @"Invalid property key length: %ld", v90, v91, v219[0]);
                goto LABEL_154;
              }

              v92 = v11;
              v93 = objc_alloc(MEMORY[0x277CCACA8]);
              v94 = [v93 initWithBytes:v215 length:v216 encoding:1];
              if (!v94)
              {
                v137 = createMobileActivationError("lockcrypto_query_certificate_properties", 636, v50, -1, 0, @"Failed to create string.", v95, v96, v181);
                goto LABEL_171;
              }

              v97 = v94;
              v98 = DERDecodeSeqNext(&v191, &v214);
              if (v98 || !v215)
              {
                createMobileActivationError("lockcrypto_query_certificate_properties", 644, v50, -1, 0, @"Failed to decode DER sequence: %d", v99, v100, v98);
                goto LABEL_170;
              }

              if (v214 > 0)
              {
                break;
              }

              if (v214 == 0xA000000000000000)
              {
                v111 = [v92 objectForKeyedSubscript:v48];
                v112 = v111;
                v113 = &unk_283965E40;
              }

              else
              {
                if (v214 != 0xA000000000000001)
                {
                  goto LABEL_139;
                }

                v111 = [v92 objectForKeyedSubscript:v48];
                v112 = v111;
                v113 = &unk_283965E58;
              }

              [v111 setObject:v113 forKeyedSubscript:v97];
LABEL_138:

LABEL_139:
              v127 = DERDecodeSeqNext(&v191, &v214);
              if (v127 != 1)
              {
                createMobileActivationError("lockcrypto_query_certificate_properties", 696, v50, -1, 0, @"DER sequence is invalid: %d", v128, v129, v127);
                v137 = LABEL_170:;

                v15 = v97;
LABEL_171:
                v11 = v92;
                goto LABEL_155;
              }

              v193 = 0;
              v194 = 0;
              v191 = 0;
              v192 = 0;
              v214 = 0;
              v215 = 0;
              v216 = 0;
              v83 = DERDecodeSeqNext(&v206, &v217);
              if (v83)
              {
                v11 = v92;
                goto LABEL_150;
              }

              v86 = v218;
              v11 = v92;
              if (!v218)
              {
                goto LABEL_150;
              }
            }

            switch(v214)
            {
              case 1:
                v103 = v50;
                v114 = DERParseBoolean(&v215, &v195);
                if (v114)
                {
                  createMobileActivationError("lockcrypto_query_certificate_properties", 683, v50, -1, 0, @"Failed to decode DER encoded ASN1_BOOLEAN: %d", v115, v116, v114);
                  goto LABEL_176;
                }

                v117 = [MEMORY[0x277CCABB0] numberWithBool:v195];
                break;
              case 2:
                v103 = v50;
                v118 = DERParseInteger64(&v215, &v196);
                if (v118)
                {
                  createMobileActivationError("lockcrypto_query_certificate_properties", 675, v50, -1, 0, @"Failed to decode DER encoded ASN1_INTEGER: %d", v119, v120, v118);
                  v137 = LABEL_176:;

LABEL_177:
                  v15 = v97;
                  v11 = v92;
LABEL_155:

                  v15 = v137;
                  goto LABEL_156;
                }

                v117 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v196];
                break;
              case 4:

                if (v216)
                {
                  v101 = 0;
                  v102 = 0;
                  while ((v215[v101] & 0x80000000) == 0)
                  {
                    v101 = ++v102;
                    if (v216 <= v102)
                    {
                      v103 = v50;
                      v104 = DERDecodeItem(&v215, &v198);
                      v105 = objc_alloc(MEMORY[0x277CCACA8]);
                      v106 = &v198 + 1;
                      if (v104)
                      {
                        v106 = &v215;
                      }

                      v107 = *v106;
                      v108 = &v199;
                      if (v104)
                      {
                        v108 = &v216;
                      }

                      v23 = [v105 initWithBytes:v107 length:*v108 encoding:1];
                      if (!v23)
                      {
                        createMobileActivationError("lockcrypto_query_certificate_properties", 660, v50, -1, 0, @"Failed to decode DER encoded ANS1_OCTET_STRING.", v109, v110, v181);
                        goto LABEL_176;
                      }

                      goto LABEL_133;
                    }
                  }
                }

                v103 = v50;
                v122 = objc_alloc(MEMORY[0x277CBEA90]);
                v123 = [v122 initWithBytes:v215 length:v216];

                if (!v123)
                {
                  v137 = createMobileActivationError("lockcrypto_query_certificate_properties", 666, v50, -1, 0, @"Failed to decode DER encoded ANS1_OCTET_STRING.", v124, v125, v181);

                  v22 = 0;
                  v23 = 0;
                  goto LABEL_177;
                }

                v23 = 0;
                v22 = v123;
LABEL_133:
                if (v23)
                {
                  v126 = v23;
                }

                else
                {
                  v126 = v22;
                }

                v112 = [v92 objectForKeyedSubscript:v48];
                [v112 setObject:v126 forKeyedSubscript:v97];
                goto LABEL_137;
              default:
                goto LABEL_139;
            }

            v112 = v117;
            v121 = [v92 objectForKeyedSubscript:v48];
            [v121 setObject:v112 forKeyedSubscript:v97];

LABEL_137:
            v50 = v103;
            goto LABEL_138;
          }
        }

LABEL_150:
        if (v83 != 1)
        {
          v181 = v83;
          v134 = 590;
LABEL_152:
          v135 = v50;
          v136 = @"Failed to decode DER sequence: %d";
LABEL_153:
          createMobileActivationError("lockcrypto_query_certificate_properties", v134, v135, -1, 0, v136, v84, v85, v181);
          v137 = LABEL_154:;
          goto LABEL_155;
        }

LABEL_156:
        if (v15)
        {
          goto LABEL_254;
        }

        v138 = DERDecodeSeqNext(&v206, &v217);
        if (v138 != 1)
        {
          v15 = createMobileActivationError("lockcrypto_query_certificate_properties", 710, v50, -1, 0, @"DER sequence is invalid: %d", v139, v140, v138);
          goto LABEL_254;
        }

        v210 = 0uLL;
        v206 = 0uLL;
        v217 = 0;
        v218 = 0;
        v219[0] = 0;
        v45 = DERDecodeSeqNext(v202, &v200);
        v15 = 0;
        if (!v45)
        {
          v49 = *(&v200 + 1);
          v21 = v48;
          if (*(&v200 + 1))
          {
            continue;
          }
        }

        goto LABEL_224;
      }

      createMobileActivationError("lockcrypto_query_certificate_properties", 503, v50, -1, 0, @"Failed to parse DER integer: %d", v52, v53, v55);
      goto LABEL_237;
    }
  }

  v22 = 0;
  v23 = 0;
LABEL_224:
  v8 = v190;
  if (v45 != 1)
  {
    v170 = createMobileActivationError("lockcrypto_query_certificate_properties", 468, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to decode DER sequence: %d", v46, v47, v45);

    v15 = v170;
  }

  v21 = v48;
LABEL_240:
  a3 = v188;
  if (v15)
  {
    goto LABEL_241;
  }

LABEL_185:
  if (!v11)
  {
    goto LABEL_242;
  }

  if ([v11 count])
  {
    goto LABEL_245;
  }

LABEL_241:

LABEL_242:
  if (a3)
  {
    v174 = v15;
    v11 = 0;
    *a3 = v15;
  }

  else
  {
    v11 = 0;
  }

LABEL_245:
  v175 = v11;

  v176 = *MEMORY[0x277D85DE8];

  return v175;
}

id lockcrypto_decode_pem(void *a1, const char *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v8 = v5;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  *__str = 0u;
  v30 = 0u;
  v31 = 0u;
  *__little = 0u;
  v29 = 0u;
  if (v5 && a2)
  {
    v9 = [v5 bytes];
    v10 = [v8 length];
    if (v10 < 0)
    {
      v21 = @"Invalid data length.";
      v22 = 1496;
    }

    else
    {
      v11 = v10;
      v12 = snprintf(__str, 0x50uLL, "-----BEGIN %s-----\n", a2);
      snprintf(__little, 0x50uLL, "\n-----END %s-----", a2);
      v13 = strnstr(v9, __str, v11);
      v14 = strnstr(v9, __little, v11);
      if (v13 && v14)
      {
        v15 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:&v13[v12] length:v14 - &v13[v12] freeWhenDone:0];
        v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedData:v15 options:1];
        if (v16)
        {
          v19 = v16;
          v20 = 0;
          goto LABEL_16;
        }

        v20 = createMobileActivationError("lockcrypto_decode_pem", 1516, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to decode data.", v17, v18, v27);
        if (!a3)
        {
          goto LABEL_15;
        }

LABEL_13:
        v24 = v20;
        v19 = 0;
        *a3 = v20;
        goto LABEL_16;
      }

      v21 = @"Invalid pem data.";
      v22 = 1505;
    }

    v23 = -1;
  }

  else
  {
    v21 = @"Invalid inputs.";
    v22 = 1489;
    v23 = -2;
  }

  v20 = createMobileActivationError("lockcrypto_decode_pem", v22, @"com.apple.MobileActivation.ErrorDomain", v23, 0, v21, v6, v7, v27);
  v15 = 0;
  if (a3)
  {
    goto LABEL_13;
  }

LABEL_15:
  v19 = 0;
LABEL_16:

  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

SecCertificateRef lockcrypto_cert_from_pem_data(void *a1, void *a2)
{
  v3 = a1;
  v6 = v3;
  if (!v3)
  {
    v10 = createMobileActivationError("lockcrypto_cert_from_pem_data", 1734, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.", v4, v5, v19);
    v7 = 0;
    if (a2)
    {
LABEL_10:
      v17 = v10;
      v12 = 0;
      *a2 = v10;
      goto LABEL_11;
    }

LABEL_6:
    v12 = 0;
    goto LABEL_11;
  }

  v20 = 0;
  v7 = lockcrypto_decode_pem(v3, "CERTIFICATE", &v20);
  v10 = v20;
  if (!v7)
  {
    v13 = @"Failed to decode data.";
    v14 = 1740;
    v15 = v10;
    goto LABEL_9;
  }

  v11 = SecCertificateCreateWithData(*MEMORY[0x277CBECE8], v7);
  if (!v11)
  {
    v13 = @"Failed to create certificate with cert data.";
    v14 = 1746;
    v15 = 0;
LABEL_9:
    v16 = createMobileActivationError("lockcrypto_cert_from_pem_data", v14, @"com.apple.MobileActivation.ErrorDomain", -1, v15, v13, v8, v9, v19);

    v10 = v16;
    if (a2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v12 = v11;
LABEL_11:

  return v12;
}

uint64_t __lockcrypto_query_oid_der_sequence_data_block_invoke()
{
  lockcrypto_query_oid_der_sequence_data_ASN1DERNull = [MEMORY[0x277CBEA90] dataWithBytes:&unk_22621EED0 length:2];

  return MEMORY[0x2821F96F8]();
}

id DeviceIdentityCopyAttestationDictionary(__SecKey *a1, void *a2, void *a3)
{
  v168[1] = *MEMORY[0x277D85DE8];
  v134 = a2;
  v155 = 0;
  v156 = &v155;
  v157 = 0x3032000000;
  v158 = __Block_byref_object_copy__0;
  v159 = __Block_byref_object_dispose__0;
  v160 = 0;
  v149 = 0;
  v150 = &v149;
  v151 = 0x3032000000;
  v152 = __Block_byref_object_copy__0;
  v153 = __Block_byref_object_dispose__0;
  v154 = 0;
  error = 0;
  v147 = 0;
  if (is_virtual_machine())
  {
    v8 = (v150 + 5);
    obj = v150[5];
    has_host_key = libavp_guest_has_host_key(&obj);
    objc_storeStrong(v8, obj);
    if ((has_host_key & 1) == 0)
    {
      v39 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 214, @"com.apple.MobileActivation.ErrorDomain", -3, v150[5], @"Not supported on this device (VM support disabled).", v6, v7, v129);
      v40 = v150[5];
      v150[5] = v39;

      goto LABEL_32;
    }
  }

  if (!a1 || (v10 = (v150 + 5), v145 = v150[5], valid = security_valid_security_enclave_reference_key(a1, 0, &v147, &v145, v4, v5, v6, v7), objc_storeStrong(v10, v145), (valid & 1) == 0))
  {
    v37 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 219, @"com.apple.MobileActivation.ErrorDomain", -2, v150[5], @"Invalid reference key.", v6, v7, v129);
    v38 = v150[5];
    v150[5] = v37;

LABEL_32:
    v135 = 0;
    v136 = 0;
    v43 = 0;
    v137 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v133 = 0;
    v47 = 0;
    v48 = 0;
    task = 0;
LABEL_33:
    v49 = 0;
LABEL_34:
    v50 = 0;
    v51 = 0;
    v52 = 0;
    goto LABEL_35;
  }

  v12 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  task = v12;
  if (!v12)
  {
    v41 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 225, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create task.", v13, v14, v129);
    v42 = v150[5];
    v150[5] = v41;

    goto LABEL_32;
  }

  v137 = SecTaskCopySigningIdentifier(v12, &error);
  if (!v137)
  {
    v63 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 231, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to query code signing identifier.", v15, v16, v129);
    v64 = v150[5];
    v150[5] = v63;

    v135 = 0;
    v136 = 0;
    v43 = 0;
    v137 = 0;
    goto LABEL_57;
  }

  v136 = SecTaskCopyValueForEntitlement(task, @"com.apple.mobileactivationd.spi", &error);
  v17 = isNSNumber(v136);
  if (!v17 || (v18 = [v136 BOOLValue], v17, (v18 & 1) == 0))
  {
    v57 = error;
    v167 = @"com.apple.mobileactivationd.spi";
    v168[0] = MEMORY[0x277CBEC38];
    v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v168 forKeys:&v167 count:1];
    v61 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 237, @"com.apple.MobileActivation.ErrorDomain", -7, v57, @"Missing required entitlement: %@", v59, v60, v58);
    v62 = v150[5];
    v150[5] = v61;

LABEL_55:
    v135 = 0;
    v43 = 0;
LABEL_57:
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v133 = 0;
LABEL_58:
    v47 = 0;
    v48 = 0;
    goto LABEL_33;
  }

  v135 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v135)
  {
    v65 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 243, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.", v19, v20, v129);
    v66 = v150[5];
    v150[5] = v65;

    goto LABEL_55;
  }

  if (v134)
  {
    [v135 addEntriesFromDictionary:v134];
  }

  if (is_virtual_machine())
  {
    [v135 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"scrtAttestation"];
  }

  v21 = [v135 objectForKeyedSubscript:@"OIDSToInclude"];
  v22 = isNSArray(v21);

  if (v22)
  {
    v23 = objc_alloc(MEMORY[0x277CBEB98]);
    v24 = [v135 objectForKeyedSubscript:@"OIDSToInclude"];
    v133 = [v23 initWithArray:v24];

    if (([v133 containsObject:@"1.2.840.113635.100.10.1"] & 1) != 0 || (objc_msgSend(v133, "containsObject:", @"1.2.840.113635.100.8.1") & 1) != 0 || objc_msgSend(v133, "containsObject:", @"1.2.840.113635.100.8.3"))
    {
      v131 = SecTaskCopyValueForEntitlement(task, @"com.apple.mobileactivationd.device-identifiers", &error);

      v25 = isNSNumber(v131);
      if (!v25 || (v26 = [v131 BOOLValue], v25, (v26 & 1) == 0))
      {
        v67 = error;
        v165 = @"com.apple.mobileactivationd.device-identifiers";
        v166 = MEMORY[0x277CBEC38];
        v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
        v71 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 266, @"com.apple.MobileActivation.ErrorDomain", -7, v67, @"Missing required entitlement: %@", v69, v70, v68);
        v72 = v150[5];
        v150[5] = v71;

        goto LABEL_61;
      }

      v136 = v131;
    }

    v27 = copy_supported_eda_oids();
    v28 = [v133 intersectsSet:v27];

    if (!v28)
    {
LABEL_26:
      if ([v133 containsObject:@"1.2.840.113635.100.8.6"])
      {
        v33 = [v135 objectForKeyedSubscript:?];
        v34 = v33 == 0;

        if (v34)
        {
          v121 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 285, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing required option: %@", v35, v36, @"AccessControls");
          v122 = v150[5];
          v150[5] = v121;

          goto LABEL_90;
        }
      }

      goto LABEL_63;
    }

    if ((device_supports_eda_certificates() & 1) == 0)
    {
      v84 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 273, @"com.apple.MobileActivation.ErrorDomain", -3, v150[5], @"Enterprise Device Attestation is not supported on this device.", v29, v30, v129);
      v85 = v150[5];
      v150[5] = v84;

      goto LABEL_90;
    }

    v131 = SecTaskCopyValueForEntitlement(task, @"com.apple.mobileactivationd.eda", &error);

    v31 = isNSNumber(v131);
    if (v31)
    {
      v32 = [v131 BOOLValue];

      if (v32)
      {
        v136 = v131;
        goto LABEL_26;
      }
    }

    v86 = error;
    v163 = @"com.apple.mobileactivationd.eda";
    v164 = MEMORY[0x277CBEC38];
    v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
    v90 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 279, @"com.apple.MobileActivation.ErrorDomain", -7, v86, @"Missing required entitlement: %@", v88, v89, v87);
    v91 = v150[5];
    v150[5] = v90;

LABEL_61:
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v136 = v131;
    goto LABEL_35;
  }

  v133 = 0;
LABEL_63:
  v73 = [v135 objectForKeyedSubscript:?];

  if (!v73)
  {
    goto LABEL_73;
  }

  if ((isRunningInRecovery() & 1) != 0 || isRunningInDiagnosticsMode())
  {
    v76 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 292, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Option (%@) not allowed for processes running in recoveryOS or diagnostics mode.", v74, v75, @"AccessControls");
    v77 = v150[5];
    v150[5] = v76;

LABEL_90:
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    goto LABEL_58;
  }

  v78 = [v135 objectForKeyedSubscript:@"ClientAttestationData"];
  v79 = isNSData(v78);

  if (v79)
  {
    v82 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 297, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"ACLs (%@) not supported with %@.", v80, v81, @"AccessControls");
    v83 = v150[5];
    v150[5] = v82;

    goto LABEL_90;
  }

  v92 = [v135 objectForKeyedSubscript:@"AccessControls"];
  v93 = CFGetTypeID(v92);
  LODWORD(v93) = v93 == SecAccessControlGetTypeID();

  if (v93)
  {
    v49 = [v135 objectForKeyedSubscript:@"AccessControls"];

    CFRetain(v49);
    v130 = 1;
  }

  else
  {
LABEL_73:
    v49 = 0;
    v130 = 0;
  }

  v94 = [v135 objectForKeyedSubscript:@"AppID"];
  v95 = isNSString(v94);

  if (v95)
  {
    v96 = [v135 objectForKeyedSubscript:@"AppID"];

    v137 = v96;
  }

  v97 = [v135 objectForKeyedSubscript:@"UseXPC"];
  v98 = isNSNumber(v97);

  if (v98)
  {
    v99 = [v135 objectForKeyedSubscript:@"UseXPC"];
    LODWORD(v98) = [v99 BOOLValue];
  }

  v100 = v147;
  v47 = CFRetain(a1);
  v101 = SecKeyCopyPublicKey(v47);
  v48 = v101;
  if (!v101)
  {
    v115 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 334, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy RK public key.", v102, v103, v129);
    v116 = v150[5];
    v150[5] = v115;

    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v48 = 0;
    goto LABEL_34;
  }

  v43 = SecKeyCopyExternalRepresentation(v101, &error);
  if (!v43)
  {
    v117 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 340, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to encode RK public key as data.", v107, v108, v129);
    v118 = v150[5];
    v150[5] = v117;

    v43 = 0;
    v44 = 0;
    v45 = 0;
LABEL_88:
    v46 = 0;
    goto LABEL_34;
  }

  v109 = (v150 + 5);
  v143 = v150[5];
  v144 = 0;
  v46 = security_create_external_representation(v47, &v144, &v143, v104, v105, v106, v107, v108);
  v45 = v144;
  objc_storeStrong(v109, v143);
  if (!v46)
  {
    v119 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 346, @"com.apple.MobileActivation.ErrorDomain", -1, v150[5], @"Failed to encode RK as data.", v110, v111, v129);
    v120 = v150[5];
    v150[5] = v119;

    v44 = 0;
    goto LABEL_88;
  }

  v112 = [MEMORY[0x277CCABB0] numberWithBool:(v130 | v100) & 1];
  [v135 setObject:v112 forKeyedSubscript:?];

  [v135 setObject:v137 forKeyedSubscript:@"AppID"];
  [v135 setObject:v45 forKeyedSubscript:@"SigningKeyAttributes"];
  if (v98)
  {
    v52 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283968088];
    v51 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.mobileactivationd" options:0];
    [v51 setRemoteObjectInterface:v52];
    [v51 resume];
    v50 = [v135 mutableCopy];
    v113 = [v50 objectForKey:@"AccessControls"];

    if (v113)
    {
      [v50 removeObjectForKey:@"AccessControls"];
      [v50 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"UseRKSigningInterface"];
    }

    [v50 removeObjectForKey:@"LocalAuthenticationContext"];
    v142[0] = MEMORY[0x277D85DD0];
    v142[1] = 3221225472;
    v142[2] = __DeviceIdentityCopyAttestationDictionary_block_invoke;
    v142[3] = &unk_278585EC0;
    v142[4] = &v149;
    v114 = [v51 synchronousRemoteObjectProxyWithErrorHandler:v142];
    v141[0] = MEMORY[0x277D85DD0];
    v141[1] = 3221225472;
    v141[2] = __DeviceIdentityCopyAttestationDictionary_block_invoke_2;
    v141[3] = &unk_278585EE8;
    v141[4] = &v155;
    v141[5] = &v149;
    [v114 copyAttestationDictionaryWithCompletionBlock:v46 options:v50 completion:v141];
    [v51 invalidate];
  }

  else
  {
    v123 = (v150 + 5);
    v140 = v150[5];
    v132 = create_baa_info(v47, v135, &v140);
    objc_storeStrong(v123, v140);
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v114 = v156[5];
    v156[5] = v132;
  }

  v126 = v156[5];
  if (v126)
  {
    v44 = v126;
  }

  else
  {
    v127 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 408, @"com.apple.MobileActivation.ErrorDomain", -1, v150[5], @"Failed to copy certificate info.", v124, v125, v129);
    v128 = v150[5];
    v150[5] = v127;

    v44 = 0;
  }

LABEL_35:
  if (v150[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v53 = v150[5];
    *buf = 138543362;
    v162 = v53;
    _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  if (a3 && !v44)
  {
    *a3 = v150[5];
  }

  if (task)
  {
    CFRelease(task);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  if (v49)
  {
    CFRelease(v49);
  }

  v54 = v44;

  _Block_object_dispose(&v149, 8);
  _Block_object_dispose(&v155, 8);

  v55 = *MEMORY[0x277D85DE8];

  return v54;
}