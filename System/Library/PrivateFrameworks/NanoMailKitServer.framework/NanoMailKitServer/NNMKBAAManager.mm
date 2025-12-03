@interface NNMKBAAManager
+ (void)appleAuthHeaderFrom:(id)from completion:(id)completion;
+ (void)signRequestData:(id)data completion:(id)completion;
@end

@implementation NNMKBAAManager

+ (void)appleAuthHeaderFrom:(id)from completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__NNMKBAAManager_appleAuthHeaderFrom_completion___block_invoke;
  v8[3] = &unk_2799364E0;
  v9 = completionCopy;
  v7 = completionCopy;
  [self signRequestData:from completion:v8];
}

void __49__NNMKBAAManager_appleAuthHeaderFrom_completion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v24[3] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if ([v7 count] == 2)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [v7 objectAtIndexedSubscript:0];
      v11 = [v10 base64EncodedStringWithOptions:0];
      v12 = [v9 stringWithFormat:@"%@=%@", @"LeafCert", v11];

      v13 = MEMORY[0x277CCACA8];
      v14 = [v7 objectAtIndexedSubscript:1];
      v15 = [v14 base64EncodedStringWithOptions:0];
      v16 = [v13 stringWithFormat:@"%@=%@", @"IntermediateCert", v15];

      v17 = MEMORY[0x277CCACA8];
      v18 = [v8 base64EncodedStringWithOptions:0];
      v19 = [v17 stringWithFormat:@"%@=%@", @"Signature", v18];

      v24[0] = v16;
      v24[1] = v12;
      v24[2] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
      v21 = [v20 componentsJoinedByString:{@", "}];

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v22 = *(a1 + 32);
      v12 = [MEMORY[0x277CCA9B8] genericErrorWithMessage:@"Invalid cert count"];
      (*(v22 + 16))(v22, 0, v12);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (void)signRequestData:(id)data completion:(id)completion
{
  v99[6] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v6 = getDeviceIdentityIsSupportedSymbolLoc_ptr;
  v95 = getDeviceIdentityIsSupportedSymbolLoc_ptr;
  if (!getDeviceIdentityIsSupportedSymbolLoc_ptr)
  {
    v87 = MEMORY[0x277D85DD0];
    v88 = 3221225472;
    v89 = __getDeviceIdentityIsSupportedSymbolLoc_block_invoke;
    v90 = &unk_279936530;
    v91 = &v92;
    v7 = DeviceIdentityLibrary();
    v93[3] = dlsym(v7, "DeviceIdentityIsSupported");
    getDeviceIdentityIsSupportedSymbolLoc_ptr = *(v91[1] + 24);
    v6 = v93[3];
  }

  _Block_object_dispose(&v92, 8);
  if (!v6)
  {
    +[NNMKBAAManager signRequestData:completion:];
    goto LABEL_68;
  }

  if (v6())
  {
    error = 0;
    v8 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0x40000000uLL, &error);
    if (!v8)
    {
      v72 = qword_28144D630;
      if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_ERROR))
      {
        [(NNMKBAAManager *)&error signRequestData:v72 completion:v73, v74, v75, v76, v77, v78];
      }

      v66 = [MEMORY[0x277CCA9B8] genericErrorWithMessage:@"Failed to create access control"];
      (*(completionCopy + 2))(completionCopy, 0, 0, v66);
      goto LABEL_53;
    }

    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v9 = getDeviceIdentityUCRTAttestationSupportedSymbolLoc_ptr;
    v95 = getDeviceIdentityUCRTAttestationSupportedSymbolLoc_ptr;
    if (!getDeviceIdentityUCRTAttestationSupportedSymbolLoc_ptr)
    {
      v87 = MEMORY[0x277D85DD0];
      v88 = 3221225472;
      v89 = __getDeviceIdentityUCRTAttestationSupportedSymbolLoc_block_invoke;
      v90 = &unk_279936530;
      v91 = &v92;
      v10 = DeviceIdentityLibrary();
      v11 = dlsym(v10, "DeviceIdentityUCRTAttestationSupported");
      *(v91[1] + 24) = v11;
      getDeviceIdentityUCRTAttestationSupportedSymbolLoc_ptr = *(v91[1] + 24);
      v9 = v93[3];
    }

    _Block_object_dispose(&v92, 8);
    if (!v9)
    {
      goto LABEL_56;
    }

    v12 = v9();
    v13 = MEMORY[0x277CBEB38];
    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v14 = getkMAOptionsBAAKeychainLabelSymbolLoc_ptr;
    v95 = getkMAOptionsBAAKeychainLabelSymbolLoc_ptr;
    if (!getkMAOptionsBAAKeychainLabelSymbolLoc_ptr)
    {
      v87 = MEMORY[0x277D85DD0];
      v88 = 3221225472;
      v89 = __getkMAOptionsBAAKeychainLabelSymbolLoc_block_invoke;
      v90 = &unk_279936530;
      v91 = &v92;
      v15 = DeviceIdentityLibrary();
      v16 = dlsym(v15, "kMAOptionsBAAKeychainLabel");
      *(v91[1] + 24) = v16;
      getkMAOptionsBAAKeychainLabelSymbolLoc_ptr = *(v91[1] + 24);
      v14 = v93[3];
    }

    _Block_object_dispose(&v92, 8);
    if (!v14)
    {
      goto LABEL_56;
    }

    v80 = *v14;
    v97[0] = v80;
    v99[0] = @"NanoMail";
    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v17 = getkMAOptionsBAAIgnoreExistingKeychainItemsSymbolLoc_ptr;
    v95 = getkMAOptionsBAAIgnoreExistingKeychainItemsSymbolLoc_ptr;
    if (!getkMAOptionsBAAIgnoreExistingKeychainItemsSymbolLoc_ptr)
    {
      v87 = MEMORY[0x277D85DD0];
      v88 = 3221225472;
      v89 = __getkMAOptionsBAAIgnoreExistingKeychainItemsSymbolLoc_block_invoke;
      v90 = &unk_279936530;
      v91 = &v92;
      v18 = DeviceIdentityLibrary();
      v19 = dlsym(v18, "kMAOptionsBAAIgnoreExistingKeychainItems");
      *(v91[1] + 24) = v19;
      getkMAOptionsBAAIgnoreExistingKeychainItemsSymbolLoc_ptr = *(v91[1] + 24);
      v17 = v93[3];
    }

    _Block_object_dispose(&v92, 8);
    if (!v17)
    {
      goto LABEL_56;
    }

    v20 = *v17;
    v97[1] = v20;
    v99[1] = MEMORY[0x277CBEC28];
    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v21 = getkMAOptionsBAANetworkTimeoutIntervalSymbolLoc_ptr;
    v95 = getkMAOptionsBAANetworkTimeoutIntervalSymbolLoc_ptr;
    if (!getkMAOptionsBAANetworkTimeoutIntervalSymbolLoc_ptr)
    {
      v87 = MEMORY[0x277D85DD0];
      v88 = 3221225472;
      v89 = __getkMAOptionsBAANetworkTimeoutIntervalSymbolLoc_block_invoke;
      v90 = &unk_279936530;
      v91 = &v92;
      v22 = DeviceIdentityLibrary();
      v23 = dlsym(v22, "kMAOptionsBAANetworkTimeoutInterval");
      *(v91[1] + 24) = v23;
      getkMAOptionsBAANetworkTimeoutIntervalSymbolLoc_ptr = *(v91[1] + 24);
      v21 = v93[3];
    }

    _Block_object_dispose(&v92, 8);
    if (!v21)
    {
      goto LABEL_56;
    }

    v24 = *v21;
    v97[2] = v24;
    v99[2] = &unk_286C7BE68;
    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v25 = getkMAOptionsBAAValiditySymbolLoc_ptr;
    v95 = getkMAOptionsBAAValiditySymbolLoc_ptr;
    if (!getkMAOptionsBAAValiditySymbolLoc_ptr)
    {
      v87 = MEMORY[0x277D85DD0];
      v88 = 3221225472;
      v89 = __getkMAOptionsBAAValiditySymbolLoc_block_invoke;
      v90 = &unk_279936530;
      v91 = &v92;
      v26 = DeviceIdentityLibrary();
      v27 = dlsym(v26, "kMAOptionsBAAValidity");
      *(v91[1] + 24) = v27;
      getkMAOptionsBAAValiditySymbolLoc_ptr = *(v91[1] + 24);
      v25 = v93[3];
    }

    _Block_object_dispose(&v92, 8);
    if (!v25)
    {
      goto LABEL_56;
    }

    v28 = *v25;
    v97[3] = v28;
    v99[3] = &unk_286C7BE80;
    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v29 = getkMAOptionsBAASCRTAttestationSymbolLoc_ptr;
    v95 = getkMAOptionsBAASCRTAttestationSymbolLoc_ptr;
    if (!getkMAOptionsBAASCRTAttestationSymbolLoc_ptr)
    {
      v87 = MEMORY[0x277D85DD0];
      v88 = 3221225472;
      v89 = __getkMAOptionsBAASCRTAttestationSymbolLoc_block_invoke;
      v90 = &unk_279936530;
      v91 = &v92;
      v30 = DeviceIdentityLibrary();
      v31 = dlsym(v30, "kMAOptionsBAASCRTAttestation");
      *(v91[1] + 24) = v31;
      getkMAOptionsBAASCRTAttestationSymbolLoc_ptr = *(v91[1] + 24);
      v29 = v93[3];
    }

    _Block_object_dispose(&v92, 8);
    if (!v29)
    {
      goto LABEL_56;
    }

    v32 = *v29;
    v97[4] = v32;
    v33 = [MEMORY[0x277CCABB0] numberWithBool:v12 ^ 1u];
    v99[4] = v33;
    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v34 = getkMAOptionsBAAAccessControlsSymbolLoc_ptr;
    v95 = getkMAOptionsBAAAccessControlsSymbolLoc_ptr;
    if (!getkMAOptionsBAAAccessControlsSymbolLoc_ptr)
    {
      v87 = MEMORY[0x277D85DD0];
      v88 = 3221225472;
      v89 = __getkMAOptionsBAAAccessControlsSymbolLoc_block_invoke;
      v90 = &unk_279936530;
      v91 = &v92;
      v35 = DeviceIdentityLibrary();
      v36 = dlsym(v35, "kMAOptionsBAAAccessControls");
      *(v91[1] + 24) = v36;
      getkMAOptionsBAAAccessControlsSymbolLoc_ptr = *(v91[1] + 24);
      v34 = v93[3];
    }

    _Block_object_dispose(&v92, 8);
    if (!v34)
    {
      goto LABEL_56;
    }

    v98 = *v34;
    v99[5] = v8;
    v37 = MEMORY[0x277CBEAC0];
    v38 = v98;
    v39 = [v37 dictionaryWithObjects:v99 forKeys:v97 count:6];

    v81 = [v13 dictionaryWithDictionary:v39];

    v40 = objc_alloc(MEMORY[0x277CBEB18]);
    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v41 = getkMAOptionsBAAOIDIMG4ManifestSymbolLoc_ptr;
    v95 = getkMAOptionsBAAOIDIMG4ManifestSymbolLoc_ptr;
    if (!getkMAOptionsBAAOIDIMG4ManifestSymbolLoc_ptr)
    {
      v87 = MEMORY[0x277D85DD0];
      v88 = 3221225472;
      v89 = __getkMAOptionsBAAOIDIMG4ManifestSymbolLoc_block_invoke;
      v90 = &unk_279936530;
      v91 = &v92;
      v42 = DeviceIdentityLibrary();
      v43 = dlsym(v42, "kMAOptionsBAAOIDIMG4Manifest");
      *(v91[1] + 24) = v43;
      getkMAOptionsBAAOIDIMG4ManifestSymbolLoc_ptr = *(v91[1] + 24);
      v41 = v93[3];
    }

    _Block_object_dispose(&v92, 8);
    if (!v41)
    {
      goto LABEL_56;
    }

    v44 = *v41;
    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v45 = getkMAOptionsBAAOIDHardwarePropertiesSymbolLoc_ptr;
    v95 = getkMAOptionsBAAOIDHardwarePropertiesSymbolLoc_ptr;
    v96[0] = v44;
    if (!getkMAOptionsBAAOIDHardwarePropertiesSymbolLoc_ptr)
    {
      v87 = MEMORY[0x277D85DD0];
      v88 = 3221225472;
      v89 = __getkMAOptionsBAAOIDHardwarePropertiesSymbolLoc_block_invoke;
      v90 = &unk_279936530;
      v91 = &v92;
      v46 = DeviceIdentityLibrary();
      v47 = dlsym(v46, "kMAOptionsBAAOIDHardwareProperties");
      *(v91[1] + 24) = v47;
      getkMAOptionsBAAOIDHardwarePropertiesSymbolLoc_ptr = *(v91[1] + 24);
      v45 = v93[3];
    }

    _Block_object_dispose(&v92, 8);
    if (!v45)
    {
      goto LABEL_56;
    }

    v48 = *v45;
    v96[1] = v48;
    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v49 = getkMAOptionsBAAOIDKeyUsagePropertiesSymbolLoc_ptr;
    v95 = getkMAOptionsBAAOIDKeyUsagePropertiesSymbolLoc_ptr;
    if (!getkMAOptionsBAAOIDKeyUsagePropertiesSymbolLoc_ptr)
    {
      v87 = MEMORY[0x277D85DD0];
      v88 = 3221225472;
      v89 = __getkMAOptionsBAAOIDKeyUsagePropertiesSymbolLoc_block_invoke;
      v90 = &unk_279936530;
      v91 = &v92;
      v50 = DeviceIdentityLibrary();
      v51 = dlsym(v50, "kMAOptionsBAAOIDKeyUsageProperties");
      *(v91[1] + 24) = v51;
      getkMAOptionsBAAOIDKeyUsagePropertiesSymbolLoc_ptr = *(v91[1] + 24);
      v49 = v93[3];
    }

    _Block_object_dispose(&v92, 8);
    if (!v49)
    {
      goto LABEL_56;
    }

    v52 = *v49;
    v96[2] = v52;
    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v53 = getkMAOptionsBAAOIDAccessControlsSymbolLoc_ptr;
    v95 = getkMAOptionsBAAOIDAccessControlsSymbolLoc_ptr;
    if (!getkMAOptionsBAAOIDAccessControlsSymbolLoc_ptr)
    {
      v87 = MEMORY[0x277D85DD0];
      v88 = 3221225472;
      v89 = __getkMAOptionsBAAOIDAccessControlsSymbolLoc_block_invoke;
      v90 = &unk_279936530;
      v91 = &v92;
      v54 = DeviceIdentityLibrary();
      v55 = dlsym(v54, "kMAOptionsBAAOIDAccessControls");
      *(v91[1] + 24) = v55;
      getkMAOptionsBAAOIDAccessControlsSymbolLoc_ptr = *(v91[1] + 24);
      v53 = v93[3];
    }

    _Block_object_dispose(&v92, 8);
    if (!v53)
    {
      goto LABEL_56;
    }

    v56 = *v53;
    v96[3] = v56;
    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v57 = getkMAOptionsBAAOIDDeviceOSInformationSymbolLoc_ptr;
    v95 = getkMAOptionsBAAOIDDeviceOSInformationSymbolLoc_ptr;
    if (!getkMAOptionsBAAOIDDeviceOSInformationSymbolLoc_ptr)
    {
      v87 = MEMORY[0x277D85DD0];
      v88 = 3221225472;
      v89 = __getkMAOptionsBAAOIDDeviceOSInformationSymbolLoc_block_invoke;
      v90 = &unk_279936530;
      v91 = &v92;
      v58 = DeviceIdentityLibrary();
      v59 = dlsym(v58, "kMAOptionsBAAOIDDeviceOSInformation");
      *(v91[1] + 24) = v59;
      getkMAOptionsBAAOIDDeviceOSInformationSymbolLoc_ptr = *(v91[1] + 24);
      v57 = v93[3];
    }

    _Block_object_dispose(&v92, 8);
    if (!v57)
    {
      goto LABEL_56;
    }

    v60 = *v57;
    v96[4] = v60;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:5];
    v62 = [v40 initWithArray:v61];
    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v63 = getkMAOptionsBAAOIDSToIncludeSymbolLoc_ptr;
    v95 = getkMAOptionsBAAOIDSToIncludeSymbolLoc_ptr;
    if (!getkMAOptionsBAAOIDSToIncludeSymbolLoc_ptr)
    {
      v87 = MEMORY[0x277D85DD0];
      v88 = 3221225472;
      v89 = __getkMAOptionsBAAOIDSToIncludeSymbolLoc_block_invoke;
      v90 = &unk_279936530;
      v91 = &v92;
      v64 = DeviceIdentityLibrary();
      v65 = dlsym(v64, "kMAOptionsBAAOIDSToInclude");
      *(v91[1] + 24) = v65;
      getkMAOptionsBAAOIDSToIncludeSymbolLoc_ptr = *(v91[1] + 24);
      v63 = v93[3];
    }

    _Block_object_dispose(&v92, 8);
    if (v63)
    {
      [v81 setObject:v62 forKeyedSubscript:*v63];

      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __45__NNMKBAAManager_signRequestData_completion___block_invoke;
      v83[3] = &unk_279936508;
      v85 = completionCopy;
      v84 = dataCopy;
      v66 = v81;
      v67 = v83;
      v92 = 0;
      v93 = &v92;
      v94 = 0x2020000000;
      v68 = getDeviceIdentityIssueClientCertificateWithCompletionSymbolLoc_ptr;
      v95 = getDeviceIdentityIssueClientCertificateWithCompletionSymbolLoc_ptr;
      if (!getDeviceIdentityIssueClientCertificateWithCompletionSymbolLoc_ptr)
      {
        v87 = MEMORY[0x277D85DD0];
        v88 = 3221225472;
        v89 = __getDeviceIdentityIssueClientCertificateWithCompletionSymbolLoc_block_invoke;
        v90 = &unk_279936530;
        v91 = &v92;
        v69 = DeviceIdentityLibrary();
        v70 = dlsym(v69, "DeviceIdentityIssueClientCertificateWithCompletion");
        *(v91[1] + 24) = v70;
        getDeviceIdentityIssueClientCertificateWithCompletionSymbolLoc_ptr = *(v91[1] + 24);
        v68 = v93[3];
      }

      _Block_object_dispose(&v92, 8);
      if (v68)
      {
        (v68)(0, v66, v67);

LABEL_53:
        goto LABEL_54;
      }

      +[NNMKBAAManager signRequestData:completion:];
    }

    else
    {
LABEL_56:
      +[NNMKBAAManager signRequestData:completion:];
    }

LABEL_68:
    __break(1u);
  }

  v71 = [MEMORY[0x277CCA9B8] genericErrorWithMessage:@"DeviceIdentity not supported on this platform."];
  (*(completionCopy + 2))(completionCopy, 0, 0, v71);

LABEL_54:
  v79 = *MEMORY[0x277D85DE8];
}

void __45__NNMKBAAManager_signRequestData_completion___block_invoke(uint64_t a1, __SecKey *a2, void *a3, void *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    if (a2)
    {
      if ([v7 count] == 2)
      {
        v16 = objc_opt_new();
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v17 = v7;
        v18 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v45;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v45 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = SecCertificateCopyData(*(*(&v44 + 1) + 8 * i));
              if (!v22)
              {
                v31 = *(a1 + 40);
                v32 = [MEMORY[0x277CCA9B8] genericErrorWithMessage:@"Unable to convert certificate to data"];
                (*(v31 + 16))(v31, 0, 0, v32);

                goto LABEL_31;
              }

              v23 = v22;
              [v16 addObject:v22];
            }

            v19 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        v24 = qword_28144D630;
        if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v43[0]) = 0;
          _os_log_impl(&dword_25B19F000, v24, OS_LOG_TYPE_DEFAULT, "Certificate issued", v43, 2u);
        }

        v43[0] = 0;
        Signature = SecKeyCreateSignature(a2, *MEMORY[0x277CDC300], *(a1 + 32), v43);
        if (Signature)
        {
          (*(*(a1 + 40) + 16))();
        }

        else
        {
          v33 = qword_28144D630;
          if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_ERROR))
          {
            __45__NNMKBAAManager_signRequestData_completion___block_invoke_cold_3(v43, v33, v34, v35, v36, v37, v38, v39);
          }

          v40 = *(a1 + 40);
          v41 = [MEMORY[0x277CCA9B8] genericErrorWithMessage:@"Failed to create signature"];
          (*(v40 + 16))(v40, 0, 0, v41);
        }

        goto LABEL_31;
      }

      v30 = qword_28144D630;
      if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_ERROR))
      {
        __45__NNMKBAAManager_signRequestData_completion___block_invoke_cold_2(v30, v7);
      }

      v27 = *(a1 + 40);
      v28 = MEMORY[0x277CCA9B8];
      v29 = @"Invalid cert count";
    }

    else
    {
      v26 = qword_28144D630;
      if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_ERROR))
      {
        __45__NNMKBAAManager_signRequestData_completion___block_invoke_cold_4(v26);
      }

      v27 = *(a1 + 40);
      v28 = MEMORY[0x277CCA9B8];
      v29 = @"Missing referenceKey";
    }

    v16 = [v28 genericErrorWithMessage:v29];
    (*(v27 + 16))(v27, 0, 0, v16);
LABEL_31:

    goto LABEL_32;
  }

  v9 = qword_28144D630;
  if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_ERROR))
  {
    __45__NNMKBAAManager_signRequestData_completion___block_invoke_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  (*(*(a1 + 40) + 16))();
LABEL_32:

  v42 = *MEMORY[0x277D85DE8];
}

+ (uint64_t)signRequestData:completion:.cold.1()
{
  dlerror();
  v0 = abort_report_np();
  return [NNMKBAAManager signRequestData:v0 completion:?];
}

+ (void)signRequestData:(uint64_t)a3 completion:(uint64_t)a4 .cold.15(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_1(&dword_25B19F000, a2, a3, "Failed to create access control: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __45__NNMKBAAManager_signRequestData_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_25B19F000, a2, a3, "Failed to obtain BAA certificates: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __45__NNMKBAAManager_signRequestData_completion___block_invoke_cold_2(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v5 = 134217984;
  v6 = [a2 count];
  _os_log_error_impl(&dword_25B19F000, v3, OS_LOG_TYPE_ERROR, "Failed to obtain BAA certificates: invalid cert count: %lu", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __45__NNMKBAAManager_signRequestData_completion___block_invoke_cold_3(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_1(&dword_25B19F000, a2, a3, "Failed to create signature: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end