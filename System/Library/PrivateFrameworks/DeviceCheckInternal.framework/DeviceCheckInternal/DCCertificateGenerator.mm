@interface DCCertificateGenerator
- (BOOL)isNSDate:(id)date;
- (BOOL)isVirtualMachine;
- (DCCertificateGenerator)initWithContext:(id)context publicKey:(id)key;
- (id)encryptData:(id)data serverSyncedDate:(id)date error:(id *)error;
- (id)parseDERCertificatesFromChain:(id)chain;
- (void)createPEMCertificateChainFrom:(id)from completion:(id)completion;
- (void)generateCertificateChainWithCompletion:(id)completion;
- (void)generateEncryptedCertificateChainWithCompletion:(id)completion;
@end

@implementation DCCertificateGenerator

- (DCCertificateGenerator)initWithContext:(id)context publicKey:(id)key
{
  contextCopy = context;
  keyCopy = key;
  v8 = [(DCCertificateGenerator *)self init];
  v9 = v8;
  if (v8)
  {
    [(DCCertificateGenerator *)v8 setPublicKey:keyCopy];
    [(DCCertificateGenerator *)v9 setContext:contextCopy];
  }

  return v9;
}

- (void)generateEncryptedCertificateChainWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__DCCertificateGenerator_generateEncryptedCertificateChainWithCompletion___block_invoke;
  v6[3] = &unk_278F59D58;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(DCCertificateGenerator *)self generateCertificateChainWithCompletion:v6];
}

void __74__DCCertificateGenerator_generateEncryptedCertificateChainWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v9 = 0;
    v5 = [v4 encryptData:a2 serverSyncedDate:a3 error:&v9];
    v6 = v9;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.devicecheck.cryptoerror" code:0 userInfo:0];
    (*(v7 + 16))(v7, 0, v8);
  }
}

- (void)generateCertificateChainWithCompletion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if ([(DCCertificateGenerator *)self isVirtualMachine])
  {
    if (DCInternalLogSystem_onceToken_6 != -1)
    {
      [DCCertificateGenerator generateCertificateChainWithCompletion:];
    }

    v5 = DCInternalLogSystem_log_6;
    if (os_log_type_enabled(DCInternalLogSystem_log_6, OS_LOG_TYPE_DEBUG))
    {
      v6 = 0;
      v7 = 0;
      v8 = 47;
      do
      {
        v9 = &aLibraryCachesC_6[v6];
        if (v8 == 47)
        {
          v7 = &aLibraryCachesC_6[v6];
        }

        v8 = v9[1];
        if (!v9[1])
        {
          break;
        }
      }

      while (v6++ < 0xFFF);
      if (v7)
      {
        v11 = v7 + 1;
      }

      else
      {
        v11 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCertificateGenerator.m";
      }

      *buf = 136315394;
      v18 = v11;
      v19 = 1024;
      v20 = 98;
      _os_log_impl(&dword_2488FB000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to generate certificate chain on VM, using host identity.", buf, 0x12u);
    }

    v12 = objc_opt_new();
    v13 = completionCopy;
    DeviceIdentityCreateHostSignatureWithCompletion();
  }

  else
  {
    v13 = +[DCCryptoUtilities identityCertificateOptions];
    v16 = completionCopy;
    v14 = completionCopy;
    DeviceIdentityIssueClientCertificateWithCompletion();
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __65__DCCertificateGenerator_generateCertificateChainWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (DCInternalLogSystem_onceToken_6 != -1)
    {
      [DCCertificateGenerator generateCertificateChainWithCompletion:];
    }

    v10 = DCInternalLogSystem_log_6;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = 0;
      v12 = 0;
      v13 = 47;
      do
      {
        v14 = &aLibraryCachesC_6[v11];
        if (v13 == 47)
        {
          v12 = &aLibraryCachesC_6[v11];
        }

        v13 = v14[1];
        if (!v14[1])
        {
          break;
        }

        v15 = v11++ >= 0xFFF;
      }

      while (!v15);
      if (v12)
      {
        v16 = v12 + 1;
      }

      else
      {
        v16 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCertificateGenerator.m";
      }

      v17 = [v9 localizedDescription];
      v31 = 136315650;
      v32 = v16;
      v33 = 1024;
      v34 = 103;
      v35 = 2112;
      v36 = v17;
      _os_log_impl(&dword_2488FB000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to create host signature. { error=%@ }", &v31, 0x1Cu);
    }
  }

  else
  {
    if (DCInternalLogSystem_onceToken_6 != -1)
    {
      [DCCertificateGenerator generateCertificateChainWithCompletion:];
    }

    v18 = DCInternalLogSystem_log_6;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = 0;
      v20 = 0;
      v21 = 47;
      do
      {
        v22 = &aLibraryCachesC_6[v19];
        if (v21 == 47)
        {
          v20 = &aLibraryCachesC_6[v19];
        }

        v21 = v22[1];
        if (!v22[1])
        {
          break;
        }

        v15 = v19++ >= 0xFFF;
      }

      while (!v15);
      if (v20)
      {
        v23 = v20 + 1;
      }

      else
      {
        v23 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCertificateGenerator.m";
      }

      v31 = 136315906;
      v32 = v23;
      v33 = 1024;
      v34 = 107;
      v35 = 2048;
      v36 = [v7 length];
      v37 = 2048;
      v38 = [v8 count];
      _os_log_impl(&dword_2488FB000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d Created signature using host identity. { signatureLength=%lu, certificateCount=%lu }", &v31, 0x26u);
    }

    if (v7 && v8)
    {
      if (DCInternalLogSystem_onceToken_6 != -1)
      {
        __65__DCCertificateGenerator_generateCertificateChainWithCompletion___block_invoke_cold_3();
      }

      v24 = DCInternalLogSystem_log_6;
      if (os_log_type_enabled(DCInternalLogSystem_log_6, OS_LOG_TYPE_DEBUG))
      {
        v25 = 0;
        v26 = 0;
        v27 = 47;
        do
        {
          v28 = &aLibraryCachesC_6[v25];
          if (v27 == 47)
          {
            v26 = &aLibraryCachesC_6[v25];
          }

          v27 = v28[1];
          if (!v28[1])
          {
            break;
          }

          v15 = v25++ >= 0xFFF;
        }

        while (!v15);
        if (v26)
        {
          v29 = v26 + 1;
        }

        else
        {
          v29 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCertificateGenerator.m";
        }

        v31 = 136315394;
        v32 = v29;
        v33 = 1024;
        v34 = 110;
        _os_log_impl(&dword_2488FB000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Creating PEM certificate chain.", &v31, 0x12u);
      }

      [*(a1 + 32) createPEMCertificateChainFrom:v8 completion:*(a1 + 40)];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __65__DCCertificateGenerator_generateCertificateChainWithCompletion___block_invoke_6(uint64_t a1, const void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (DCInternalLogSystem_onceToken_6 != -1)
    {
      [DCCertificateGenerator generateCertificateChainWithCompletion:];
    }

    v9 = DCInternalLogSystem_log_6;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v11 = 0;
      v12 = 47;
      do
      {
        v13 = &aLibraryCachesC_6[v10];
        if (v12 == 47)
        {
          v11 = &aLibraryCachesC_6[v10];
        }

        v12 = v13[1];
        if (!v13[1])
        {
          break;
        }

        v14 = v10++ >= 0xFFF;
      }

      while (!v14);
      if (v11)
      {
        v15 = v11 + 1;
      }

      else
      {
        v15 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCertificateGenerator.m";
      }

      v16 = [v8 localizedDescription];
      v24 = 136315650;
      v25 = v15;
      v26 = 1024;
      v27 = 120;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_2488FB000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch client certificate. { error=%@ }", &v24, 0x1Cu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (DCInternalLogSystem_onceToken_6 != -1)
    {
      [DCCertificateGenerator generateCertificateChainWithCompletion:];
    }

    v17 = DCInternalLogSystem_log_6;
    if (os_log_type_enabled(DCInternalLogSystem_log_6, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 0;
      v19 = 0;
      v20 = 47;
      do
      {
        v21 = &aLibraryCachesC_6[v18];
        if (v20 == 47)
        {
          v19 = &aLibraryCachesC_6[v18];
        }

        v20 = v21[1];
        if (!v21[1])
        {
          break;
        }

        v14 = v18++ >= 0xFFF;
      }

      while (!v14);
      if (v19)
      {
        v22 = v19 + 1;
      }

      else
      {
        v22 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCertificateGenerator.m";
      }

      v24 = 136315394;
      v25 = v22;
      v26 = 1024;
      v27 = 125;
      _os_log_impl(&dword_2488FB000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Certificate issued, processing.", &v24, 0x12u);
    }

    [*(a1 + 32) createPEMCertificateChainFrom:v7 completion:*(a1 + 40)];
    if (a2)
    {
      CFRelease(a2);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)createPEMCertificateChainFrom:(id)from completion:(id)completion
{
  v117 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  completionCopy = completion;
  date = [MEMORY[0x277CBEAA8] date];
  v9 = 0x280FB1000;
  v10 = &DCInternalLogSystem_log;
  if ([fromCopy count] < 2)
  {
    v40 = 0;
    v11 = 0;
    goto LABEL_103;
  }

  v95 = date;
  if ([fromCopy count] > 3)
  {
    v40 = 0;
    v11 = 0;
    goto LABEL_103;
  }

  selfCopy = self;
  v94 = completionCopy;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v96 = fromCopy;
  v97 = *MEMORY[0x277CCA450];
  v15 = 1;
  while (1)
  {
    v16 = v15;
    v17 = v13;
    v18 = [fromCopy objectAtIndexedSubscript:v14];

    if (!v18)
    {
      break;
    }

    v19 = SecCertificateCopyData(v18);
    v115 = 0u;
    v116 = 0u;
    v114 = 0u;
    memset(__str, 0, sizeof(__str));
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    *__src = 0u;
    v98 = v12;
    if (v19)
    {
      v99 = v11;
      v20 = objc_autoreleasePoolPush();
      v21 = [(__CFData *)v19 base64EncodedDataWithOptions:1];
      v22 = [v21 length];
      if (v22)
      {
        v23 = snprintf(__str, 0x50uLL, "-----BEGIN %s-----\n", "CERTIFICATE");
        v24 = snprintf(__src, 0x50uLL, "\n-----END %s-----", "CERTIFICATE");
        v25 = &v22[v23 + v24];
        v26 = malloc_type_malloc((v25 + 1), 0x87F28E7DuLL);
        if (v26)
        {
          v27 = v26;
          v28 = &strncpy(v26, __str, v23)[v23];
          [v21 getBytes:v28 range:{0, v22}];
          strncpy(&v22[v28], __src, v24);
          v29 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v27 length:v25];
          if (v29)
          {
            v30 = v29;

            objc_autoreleasePoolPop(v20);
            v31 = 0;
            v22 = 0;
            fromCopy = v96;
            v11 = v99;
            goto LABEL_16;
          }

          v36 = MEMORY[0x277CCA9B8];
          v106 = v97;
          v107 = @"Failed to create pem data.";
          v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
          v22 = [v36 errorWithDomain:@"com.apple.devicecheck.cryptoerror" code:0 userInfo:v37];

          free(v27);
        }

        else
        {
          v34 = MEMORY[0x277CCA9B8];
          v106 = v97;
          v107 = @"Failed to allocate buffer.";
          v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
          v22 = [v34 errorWithDomain:@"com.apple.devicecheck.cryptoerror" code:0 userInfo:v35];
        }

        fromCopy = v96;
      }

      objc_autoreleasePoolPop(v20);
      v11 = v99;
    }

    else
    {
      v32 = MEMORY[0x277CCA9B8];
      v106 = v97;
      v107 = @"Invalid inputs.";
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
      v22 = [v32 errorWithDomain:@"com.apple.devicecheck.cryptoerror" code:0 userInfo:v33];
    }

    v38 = v22;

    v30 = 0;
    v31 = 1;
LABEL_16:

    v39 = v22;
    if (v39)
    {
      if (DCInternalLogSystem_onceToken_6 != -1)
      {
        __65__DCCertificateGenerator_generateCertificateChainWithCompletion___block_invoke_cold_3();
      }

      v48 = DCInternalLogSystem_log_6;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = 0;
        v50 = 0;
        v51 = 47;
        do
        {
          v52 = &aLibraryCachesC_6[v49];
          if (v51 == 47)
          {
            v50 = &aLibraryCachesC_6[v49];
          }

          v51 = v52[1];
          if (!v52[1])
          {
            break;
          }

          v46 = v49++ >= 0xFFF;
        }

        while (!v46);
        if (v50)
        {
          v53 = v50 + 1;
        }

        else
        {
          v53 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCertificateGenerator.m";
        }

        localizedDescription = [v39 localizedDescription];
        *__str = 136315650;
        *&__str[4] = v53;
        *&__str[12] = 1024;
        *&__str[14] = 155;
        *&__str[18] = 2112;
        *&__str[20] = localizedDescription;
        _os_log_impl(&dword_2488FB000, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create PEM data from certificate. { error=%@ }", __str, 0x1Cu);
      }

      v55 = fromCopy;

      v56 = MEMORY[0x277CCA9B8];
      v104 = v97;
      v105 = @"Failed to create PEM data from certificate";
      v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
      v40 = [v56 errorWithDomain:@"com.apple.devicecheck.cryptoerror" code:0 userInfo:v57];

      goto LABEL_54;
    }

    if (v31)
    {
      v55 = fromCopy;
      v58 = MEMORY[0x277CCA9B8];
      v102 = v97;
      v103 = @"Failed to create PEM data from cert.";
      v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
      v40 = [v58 errorWithDomain:@"com.apple.devicecheck.cryptoerror" code:0 userInfo:v57];
LABEL_54:

      fromCopy = v55;
      v10 = &DCInternalLogSystem_log;
      v12 = v98;
      goto LABEL_55;
    }

    if (v11)
    {
      [v11 appendBytes:"\n" length:1];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{objc_msgSend(v30, "length")}];
    }

    [v11 appendData:v30];

    v15 = 0;
    v13 = 1;
    v12 = v17;
    v14 = 1;
    if ((v16 & 1) == 0)
    {
      v40 = 0;
      v12 = v17;
      v10 = &DCInternalLogSystem_log;
      goto LABEL_55;
    }
  }

  if (DCInternalLogSystem_onceToken_6 != -1)
  {
    __65__DCCertificateGenerator_generateCertificateChainWithCompletion___block_invoke_cold_3();
  }

  v10 = &DCInternalLogSystem_log;
  v41 = DCInternalLogSystem_log_6;
  if (os_log_type_enabled(DCInternalLogSystem_log_6, OS_LOG_TYPE_DEBUG))
  {
    v42 = 0;
    v43 = 0;
    v44 = 47;
    do
    {
      v45 = &aLibraryCachesC_6[v42];
      if (v44 == 47)
      {
        v43 = &aLibraryCachesC_6[v42];
      }

      v44 = v45[1];
      if (!v45[1])
      {
        break;
      }

      v46 = v42++ >= 0xFFF;
    }

    while (!v46);
    if (v43)
    {
      v47 = v43 + 1;
    }

    else
    {
      v47 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCertificateGenerator.m";
    }

    *__str = 136315394;
    *&__str[4] = v47;
    *&__str[12] = 1024;
    *&__str[14] = 149;
    _os_log_impl(&dword_2488FB000, v41, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to parse certificate to SecCertificateRef type.", __str, 0x12u);
  }

  v40 = 0;
LABEL_55:
  if ([fromCopy count] != 3)
  {
    completionCopy = v94;
    if (DCInternalLogSystem_onceToken_6 != -1)
    {
      __65__DCCertificateGenerator_generateCertificateChainWithCompletion___block_invoke_cold_3();
    }

    v67 = v10[7];
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = 0;
      v69 = 0;
      v70 = 47;
      do
      {
        v71 = &aLibraryCachesC_6[v68];
        if (v70 == 47)
        {
          v69 = &aLibraryCachesC_6[v68];
        }

        v70 = v71[1];
        if (!v71[1])
        {
          break;
        }

        v46 = v68++ >= 0xFFF;
      }

      while (!v46);
      if (v69)
      {
        v72 = v69 + 1;
      }

      else
      {
        v72 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCertificateGenerator.m";
      }

      *__str = 136315394;
      *&__str[4] = v72;
      *&__str[12] = 1024;
      *&__str[14] = 187;
      _os_log_impl(&dword_2488FB000, v67, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Using device timestamp.", __str, 0x12u);
    }

    date = v95;
    if ((v12 & 1) == 0)
    {
      date = v95;
      goto LABEL_102;
    }

    goto LABEL_86;
  }

  v59 = [fromCopy objectAtIndexedSubscript:2];
  v60 = [(DCCertificateGenerator *)selfCopy isNSDate:v59];

  completionCopy = v94;
  if (!v60)
  {
    v82 = MEMORY[0x277CCA9B8];
    v100 = v97;
    v101 = @"Expected date field, failing.";
    v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
    v84 = [v82 errorWithDomain:@"com.apple.devicecheck.cryptoerror" code:0 userInfo:v83];

    v40 = v84;
    date = v95;
    v10 = &DCInternalLogSystem_log;
    goto LABEL_102;
  }

  date = [fromCopy objectAtIndexedSubscript:2];

  v10 = &DCInternalLogSystem_log;
  if (DCInternalLogSystem_onceToken_6 != -1)
  {
    __65__DCCertificateGenerator_generateCertificateChainWithCompletion___block_invoke_cold_3();
  }

  v61 = DCInternalLogSystem_log_6;
  if (os_log_type_enabled(DCInternalLogSystem_log_6, OS_LOG_TYPE_DEFAULT))
  {
    v62 = 0;
    v63 = 0;
    v64 = 47;
    do
    {
      v65 = &aLibraryCachesC_6[v62];
      if (v64 == 47)
      {
        v63 = &aLibraryCachesC_6[v62];
      }

      v64 = v65[1];
      if (!v65[1])
      {
        break;
      }

      v46 = v62++ >= 0xFFF;
    }

    while (!v46);
    if (v63)
    {
      v66 = v63 + 1;
    }

    else
    {
      v66 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCertificateGenerator.m";
    }

    *__str = 136315650;
    *&__str[4] = v66;
    *&__str[12] = 1024;
    *&__str[14] = 179;
    *&__str[18] = 2112;
    *&__str[20] = date;
    _os_log_impl(&dword_2488FB000, v61, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Using synced timestamp. { serverSyncedDate=%@ }", __str, 0x1Cu);
  }

  if (v12)
  {
LABEL_86:
    if (DCInternalLogSystem_onceToken_6 != -1)
    {
      __65__DCCertificateGenerator_generateCertificateChainWithCompletion___block_invoke_cold_3();
    }

    v73 = v10[7];
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v74 = 0;
      v75 = 0;
      v76 = 47;
      do
      {
        v77 = &aLibraryCachesC_6[v74];
        if (v76 == 47)
        {
          v75 = &aLibraryCachesC_6[v74];
        }

        v76 = v77[1];
        if (!v77[1])
        {
          break;
        }

        v46 = v74++ >= 0xFFF;
      }

      while (!v46);
      if (v75)
      {
        v78 = v75 + 1;
      }

      else
      {
        v78 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCertificateGenerator.m";
      }

      v79 = [v11 length];
      *__str = 136315650;
      *&__str[4] = v78;
      *&__str[12] = 1024;
      *&__str[14] = 192;
      *&__str[18] = 2048;
      *&__str[20] = v79;
      _os_log_impl(&dword_2488FB000, v73, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Certificate processed. { certificateChainLength=%lu }", __str, 0x1Cu);
    }

    v80 = [v11 copy];
    v81 = [date copy];
    completionCopy[2](completionCopy, v80, v81);

    goto LABEL_117;
  }

LABEL_102:
  v9 = 0x280FB1000uLL;
LABEL_103:
  if (*(v9 + 4080) != -1)
  {
    __65__DCCertificateGenerator_generateCertificateChainWithCompletion___block_invoke_cold_3();
  }

  v85 = v10[7];
  if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
  {
    v86 = 0;
    v87 = 0;
    v88 = 47;
    do
    {
      v89 = &aLibraryCachesC_6[v86];
      if (v88 == 47)
      {
        v87 = &aLibraryCachesC_6[v86];
      }

      v88 = v89[1];
      if (!v89[1])
      {
        break;
      }

      v46 = v86++ >= 0xFFF;
    }

    while (!v46);
    if (v87)
    {
      v90 = v87 + 1;
    }

    else
    {
      v90 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCertificateGenerator.m";
    }

    localizedDescription2 = [v40 localizedDescription];
    *__str = 136315650;
    *&__str[4] = v90;
    *&__str[12] = 1024;
    *&__str[14] = 195;
    *&__str[18] = 2112;
    *&__str[20] = localizedDescription2;
    _os_log_impl(&dword_2488FB000, v85, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to obtain valid certificates from server.  { error=%@ }", __str, 0x1Cu);
  }

  v80 = [date copy];
  completionCopy[2](completionCopy, 0, v80);
LABEL_117:

  v92 = *MEMORY[0x277D85DE8];
}

- (id)parseDERCertificatesFromChain:(id)chain
{
  v37 = *MEMORY[0x277D85DE8];
  chainCopy = chain;
  memset(v36, 0, sizeof(v36));
  v27 = 0;
  bytes = [chainCopy bytes];
  v5 = CTParseCertificateSet(bytes, bytes + [chainCopy length], v36, 3, &v27);
  if (v5 || !v27)
  {
    if (DCInternalLogSystem_onceToken_6 != -1)
    {
      __65__DCCertificateGenerator_generateCertificateChainWithCompletion___block_invoke_cold_3();
    }

    v12 = DCInternalLogSystem_log_6;
    if (os_log_type_enabled(DCInternalLogSystem_log_6, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v14 = 0;
      v15 = 47;
      do
      {
        v16 = &aLibraryCachesC_6[v13];
        if (v15 == 47)
        {
          v14 = &aLibraryCachesC_6[v13];
        }

        v15 = v16[1];
        if (!v16[1])
        {
          break;
        }

        v17 = v13++ >= 0xFFF;
      }

      while (!v17);
      if (v14)
      {
        v18 = v14 + 1;
      }

      else
      {
        v18 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCertificateGenerator.m";
      }

      *buf = 136315906;
      v29 = v18;
      v30 = 1024;
      v31 = 218;
      v32 = 1024;
      v33 = v5;
      v34 = 2048;
      v35 = v27;
      _os_log_impl(&dword_2488FB000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to parse certificate set. rc=%d, numCerts=%zu", buf, 0x22u);
    }
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CBEB18]);
    v7 = [v6 initWithCapacity:v27];
    if (!v27)
    {
      goto LABEL_37;
    }

    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = &v36[v8];
      if (!*v10 || !v10[1])
      {
        break;
      }

      v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:*v10 length:v10[1]];
      [v7 setObject:v11 atIndexedSubscript:v8];

      v8 = ++v9;
      if (v27 <= v9)
      {
        goto LABEL_37;
      }
    }

    if (DCInternalLogSystem_onceToken_6 != -1)
    {
      __65__DCCertificateGenerator_generateCertificateChainWithCompletion___block_invoke_cold_3();
    }

    v19 = DCInternalLogSystem_log_6;
    if (os_log_type_enabled(DCInternalLogSystem_log_6, OS_LOG_TYPE_ERROR))
    {
      v20 = 0;
      v21 = 0;
      v22 = 47;
      do
      {
        v23 = &aLibraryCachesC_6[v20];
        if (v22 == 47)
        {
          v21 = &aLibraryCachesC_6[v20];
        }

        v22 = v23[1];
        if (!v23[1])
        {
          break;
        }

        v17 = v20++ >= 0xFFF;
      }

      while (!v17);
      if (v21)
      {
        v24 = v21 + 1;
      }

      else
      {
        v24 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCertificateGenerator.m";
      }

      *buf = 136315394;
      v29 = v24;
      v30 = 1024;
      v31 = 227;
      _os_log_impl(&dword_2488FB000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid certificate data.", buf, 0x12u);
    }
  }

  v7 = 0;
LABEL_37:

  v25 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)encryptData:(id)data serverSyncedDate:(id)date error:(id *)error
{
  v133 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dateCopy = date;
  if (DCInternalLogSystem_onceToken_6 != -1)
  {
    [DCCertificateGenerator generateCertificateChainWithCompletion:];
  }

  v9 = DCInternalLogSystem_log_6;
  if (os_log_type_enabled(DCInternalLogSystem_log_6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 0;
    v11 = 0;
    v12 = 47;
    do
    {
      v13 = &aLibraryCachesC_6[v10];
      if (v12 == 47)
      {
        v11 = &aLibraryCachesC_6[v10];
      }

      v12 = v13[1];
      if (!v13[1])
      {
        break;
      }

      v14 = v10++ >= 0xFFF;
    }

    while (!v14);
    if (v11)
    {
      v15 = v11 + 1;
    }

    else
    {
      v15 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCertificateGenerator.m";
    }

    *buf = 136315650;
    *&buf[4] = v15;
    *&buf[12] = 1024;
    *&buf[14] = 237;
    *&buf[18] = 2112;
    *&buf[20] = dateCopy;
    _os_log_impl(&dword_2488FB000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Encrypting certificate chain data. { timestamp=%@ }", buf, 0x1Cu);
  }

  context = [(DCCertificateGenerator *)self context];
  clientAppID = [context clientAppID];
  v18 = [clientAppID dataUsingEncoding:4];

  v19 = [v18 length];
  v118 = v18;
  bytes = [v18 bytes];
  v21 = [dataCopy length];
  v119 = dataCopy;
  bytes2 = [dataCopy bytes];
  v122 = 0;
  v123 = 0;
  v121 = 0;
  v115 = ccaes_gcm_encrypt_mode();
  memset(buf, 0, 44);
  v23 = malloc_type_calloc(1uLL, v21 + v19 + 235, 0x55A5F7ECuLL);
  v24 = v23;
  if (!v23)
  {
    if (DCInternalLogSystem_onceToken_6 != -1)
    {
      __65__DCCertificateGenerator_generateCertificateChainWithCompletion___block_invoke_cold_3();
    }

    v50 = v118;
    v51 = DCInternalLogSystem_log_6;
    if (os_log_type_enabled(DCInternalLogSystem_log_6, OS_LOG_TYPE_ERROR))
    {
      v52 = 0;
      v53 = 0;
      v54 = 47;
      do
      {
        v55 = &aLibraryCachesC_6[v52];
        if (v54 == 47)
        {
          v53 = &aLibraryCachesC_6[v52];
        }

        v54 = v55[1];
        if (!v55[1])
        {
          break;
        }

        v14 = v52++ >= 0xFFF;
      }

      while (!v14);
      if (v53)
      {
        v56 = v53 + 1;
      }

      else
      {
        v56 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCertificateGenerator.m";
      }

      *v124 = 136315394;
      v125 = v56;
      v126 = 1024;
      v127 = 265;
      _os_log_impl(&dword_2488FB000, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d out_data_to_send is NULL!\n", v124, 0x12u);
    }

    v30 = 0;
    goto LABEL_56;
  }

  v113 = v21 + v19;
  *(v23 + 150) = v21 + v19 + 81;
  *v23 = 2;
  publicKey = [(DCCertificateGenerator *)self publicKey];
  v116 = dateCopy;
  bytes3 = [publicKey bytes];
  publicKey2 = [(DCCertificateGenerator *)self publicKey];
  v28 = [publicKey2 length];
  v29 = bytes3;
  dateCopy = v116;
  memcpy(v24 + 5, v29, v28);

  v30 = malloc_type_calloc(1uLL, *(v24 + 150), 0x1C337A73uLL);
  *(v30 + 73) = v21;
  memcpy(v30 + 81, bytes2, v21);
  *(v30 + 77) = v19;
  memcpy(&v30[v21 + 81], bytes, v19);
  [v116 timeIntervalSince1970];
  *(v30 + 65) = v31;
  if (DCInternalLogSystem_onceToken_6 != -1)
  {
    __65__DCCertificateGenerator_generateCertificateChainWithCompletion___block_invoke_cold_3();
  }

  v32 = DCInternalLogSystem_log_6;
  if (os_log_type_enabled(DCInternalLogSystem_log_6, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 0;
    v34 = 0;
    v35 = 47;
    do
    {
      v36 = &aLibraryCachesC_6[v33];
      if (v35 == 47)
      {
        v34 = &aLibraryCachesC_6[v33];
      }

      v35 = v36[1];
      if (!v36[1])
      {
        break;
      }

      v14 = v33++ >= 0xFFF;
    }

    while (!v14);
    if (v34)
    {
      v37 = v34 + 1;
    }

    else
    {
      v37 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCertificateGenerator.m";
    }

    v38 = *(v30 + 65);
    *v124 = 136315650;
    v125 = v37;
    v126 = 1024;
    v127 = 283;
    v128 = 2048;
    v129 = v38;
    _os_log_impl(&dword_2488FB000, v32, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Token timestamp: %f", v124, 0x1Cu);
  }

  v39 = aks_ref_key_create([(DCCertificateGenerator *)self keybagHandle], 11, 4u, 0, 0, &v123);
  if (v39)
  {
    v40 = v39;
    if (DCInternalLogSystem_onceToken_6 != -1)
    {
      __65__DCCertificateGenerator_generateCertificateChainWithCompletion___block_invoke_cold_3();
    }

    v41 = DCInternalLogSystem_log_6;
    if (!os_log_type_enabled(DCInternalLogSystem_log_6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_106;
    }

    v42 = 0;
    v43 = 0;
    v44 = 47;
    do
    {
      v45 = &aLibraryCachesC_6[v42];
      if (v44 == 47)
      {
        v43 = &aLibraryCachesC_6[v42];
      }

      v44 = v45[1];
      if (!v45[1])
      {
        break;
      }

      v14 = v42++ >= 0xFFF;
    }

    while (!v14);
    if (v43)
    {
      v46 = v43 + 1;
    }

    else
    {
      v46 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCertificateGenerator.m";
    }

    *v124 = 136315650;
    v125 = v46;
    v126 = 1024;
    v127 = 288;
    v128 = 1024;
    LODWORD(v129) = v40;
    v47 = "%25s:%-5d Failed to create ECDH key: %d\n";
    v48 = v41;
    v49 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_105;
  }

  v120 = 0;
  public_key = aks_ref_key_get_public_key(v123, &v120);
  if (v120 != 65)
  {
    if (DCInternalLogSystem_onceToken_6 != -1)
    {
      __65__DCCertificateGenerator_generateCertificateChainWithCompletion___block_invoke_cold_3();
    }

    v50 = v118;
    dataCopy = v119;
    v79 = DCInternalLogSystem_log_6;
    if (os_log_type_enabled(DCInternalLogSystem_log_6, OS_LOG_TYPE_ERROR))
    {
      v80 = 0;
      v81 = 0;
      v82 = 47;
      do
      {
        v83 = &aLibraryCachesC_6[v80];
        if (v82 == 47)
        {
          v81 = &aLibraryCachesC_6[v80];
        }

        v82 = v83[1];
        if (!v83[1])
        {
          break;
        }

        v14 = v80++ >= 0xFFF;
      }

      while (!v14);
      if (v81)
      {
        v84 = v81 + 1;
      }

      else
      {
        v84 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCertificateGenerator.m";
      }

      *v124 = 136315906;
      v125 = v84;
      v126 = 1024;
      v127 = 296;
      v128 = 2048;
      v129 = 65;
      v130 = 2048;
      v131 = v120;
      _os_log_impl(&dword_2488FB000, v79, OS_LOG_TYPE_ERROR, "%25s:%-5d Unexpected pubkey size. expected %ld got %ld\n", v124, 0x26u);
    }

LABEL_56:
    v57 = 0;
    goto LABEL_108;
  }

  *(v24 + 85) = *public_key;
  v59 = *(public_key + 16);
  v60 = *(public_key + 32);
  v61 = *(public_key + 48);
  *(v24 + 149) = *(public_key + 64);
  *(v24 + 133) = v61;
  *(v24 + 117) = v60;
  *(v24 + 101) = v59;
  v63 = *(public_key + 32);
  v62 = *(public_key + 48);
  v64 = *(public_key + 16);
  v30[64] = *(public_key + 64);
  *(v30 + 2) = v63;
  *(v30 + 3) = v62;
  *(v30 + 1) = v64;
  *v30 = *public_key;
  printf("%-25.25s = ", "random_pubkey");
  for (i = 85; i != 150; ++i)
  {
    printf("%02x", *(v24 + i));
  }

  putchar(10);
  v66 = v123;
  publicKey3 = [(DCCertificateGenerator *)self publicKey];
  bytes4 = [publicKey3 bytes];
  publicKey4 = [(DCCertificateGenerator *)self publicKey];
  v70 = [publicKey4 length];
  v72 = aks_ref_key_compute_key(v66, 0, 0, bytes4, v70, &v122, &v121, v71, v108, v109, v110, v111, v112, v113, v115, v116, v118, v119, v120, v121, v122, v123);

  if (v72)
  {
    if (DCInternalLogSystem_onceToken_6 != -1)
    {
      __65__DCCertificateGenerator_generateCertificateChainWithCompletion___block_invoke_cold_3();
    }

    dateCopy = v117;
    v73 = DCInternalLogSystem_log_6;
    if (!os_log_type_enabled(DCInternalLogSystem_log_6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_106;
    }

    v74 = 0;
    v75 = 0;
    v76 = 47;
    do
    {
      v77 = &aLibraryCachesC_6[v74];
      if (v76 == 47)
      {
        v75 = &aLibraryCachesC_6[v74];
      }

      v76 = v77[1];
      if (!v77[1])
      {
        break;
      }

      v14 = v74++ >= 0xFFF;
    }

    while (!v14);
    if (v75)
    {
      v78 = v75 + 1;
    }

    else
    {
      v78 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCertificateGenerator.m";
    }

    *v124 = 136315650;
    v125 = v78;
    v126 = 1024;
    v127 = 307;
    v128 = 1024;
    LODWORD(v129) = v72;
    v47 = "%25s:%-5d Failed to perform ECDH with server pubkey: %d\n";
    goto LABEL_104;
  }

  v85 = v122;
  v86 = v121 - 2;
  printf("%-25.25s = ", "ECDH shared key");
  if (v86)
  {
    v87 = (v85 + 2);
    do
    {
      v88 = *v87++;
      printf("%02x", v88);
      --v86;
    }

    while (v86);
  }

  putchar(10);
  v89 = cchkdf();
  if (v89)
  {
    v90 = v89;
    dateCopy = v117;
    if (DCInternalLogSystem_onceToken_6 != -1)
    {
      __65__DCCertificateGenerator_generateCertificateChainWithCompletion___block_invoke_cold_3();
    }

    v73 = DCInternalLogSystem_log_6;
    if (!os_log_type_enabled(DCInternalLogSystem_log_6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_106;
    }

    v91 = 0;
    v92 = 0;
    v93 = 47;
    do
    {
      v94 = &aLibraryCachesC_6[v91];
      if (v93 == 47)
      {
        v92 = &aLibraryCachesC_6[v91];
      }

      v93 = v94[1];
      if (!v94[1])
      {
        break;
      }

      v14 = v91++ >= 0xFFF;
    }

    while (!v14);
    if (v92)
    {
      v95 = v92 + 1;
    }

    else
    {
      v95 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCertificateGenerator.m";
    }

    *v124 = 136315650;
    v125 = v95;
    v126 = 1024;
    v127 = 319;
    v128 = 1024;
    LODWORD(v129) = v90;
    v47 = "%25s:%-5d Failed to perform HKDF with shared key: %d\n";
LABEL_104:
    v48 = v73;
    v49 = OS_LOG_TYPE_ERROR;
LABEL_105:
    _os_log_impl(&dword_2488FB000, v48, v49, v47, v124, 0x18u);
    goto LABEL_106;
  }

  hex("HKDF derived key");
  hex("HKDF derived iv");
  v98 = *(v24 + 150);
  v99 = ccgcm_one_shot();
  dateCopy = v117;
  if (!v99)
  {
    hex("tag");
    fprintf(*MEMORY[0x277D85DF8], "encrypted_data_len: %d\n", *(v24 + 150));
    v57 = [MEMORY[0x277CBEA90] dataWithBytes:v24 length:v114 + 235];
    v107 = DCInternalLogSystem();
    _DCLogDebugBinary(v107, v57);

    goto LABEL_107;
  }

  v100 = v99;
  v101 = DCInternalLogSystem();
  if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
  {
    v102 = 0;
    v103 = 0;
    v104 = 47;
    do
    {
      v105 = &aLibraryCachesC_6[v102];
      if (v104 == 47)
      {
        v103 = &aLibraryCachesC_6[v102];
      }

      v104 = v105[1];
      if (!v105[1])
      {
        break;
      }

      v14 = v102++ >= 0xFFF;
    }

    while (!v14);
    if (v103)
    {
      v106 = v103 + 1;
    }

    else
    {
      v106 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Core/Crypto/DCCertificateGenerator.m";
    }

    *v124 = 136315650;
    v125 = v106;
    v126 = 1024;
    v127 = 334;
    v128 = 1024;
    LODWORD(v129) = v100;
    _os_log_impl(&dword_2488FB000, v101, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to perform AES-GSM encryption with shared key: %d\n", v124, 0x18u);
  }

LABEL_106:
  v57 = 0;
LABEL_107:
  v50 = v118;
  dataCopy = v119;
LABEL_108:
  if (v123)
  {
    aks_ref_key_free(&v123);
  }

  if (v24)
  {
    free(v24);
  }

  if (v30)
  {
    free(v30);
  }

  if (v122)
  {
    free(v122);
  }

  v96 = *MEMORY[0x277D85DE8];

  return v57;
}

- (BOOL)isNSDate:(id)date
{
  if (date)
  {
    dateCopy = date;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)isVirtualMachine
{
  v5 = 0;
  v4 = 4;
  return !sysctlbyname("kern.hv_vmm_present", &v5, &v4, 0, 0) && v5 == 1;
}

@end