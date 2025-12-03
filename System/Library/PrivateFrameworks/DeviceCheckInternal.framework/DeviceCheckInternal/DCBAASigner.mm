@interface DCBAASigner
+ (DCBAASigner)sharedSigner;
- (id)_attestationWithCertificates:(id)certificates error:(id *)error;
- (id)_signatureForData:(id)data withReferenceKey:(__SecKey *)key error:(id *)error;
- (void)signatureForData:(id)data completion:(id)completion;
- (void)signaturesForData:(id)data completion:(id)completion;
@end

@implementation DCBAASigner

+ (DCBAASigner)sharedSigner
{
  if (sharedSigner_onceToken != -1)
  {
    +[DCBAASigner sharedSigner];
  }

  v3 = sharedSigner_sharedSigner;

  return v3;
}

uint64_t __27__DCBAASigner_sharedSigner__block_invoke()
{
  sharedSigner_sharedSigner = objc_alloc_init(DCBAASigner);

  return MEMORY[0x2821F96F8]();
}

- (void)signatureForData:(id)data completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  if ([dataCopy length])
  {
    if (DeviceIdentityIsSupported())
    {
      v7 = +[DCCryptoUtilities identityCertificateOptions];
      v13 = dataCopy;
      v14 = completionCopy;
      DeviceIdentityIssueClientCertificateWithCompletion();
    }

    else
    {
      if (DCInternalLogSystem_onceToken_0 != -1)
      {
        [DCBAASigner signatureForData:completion:];
      }

      v10 = DCInternalLogSystem_log_0;
      if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v16 = "DCBAASigner.m";
        v17 = 1024;
        v18 = 57;
        _os_log_impl(&dword_2488FB000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot sign data, platform is not supported by DeviceIdentity.", buf, 0x12u);
      }

      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10000 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, 0, v11);
    }
  }

  else
  {
    if (DCInternalLogSystem_onceToken_0 != -1)
    {
      [DCBAASigner signatureForData:completion:];
    }

    v8 = DCInternalLogSystem_log_0;
    if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_DEBUG))
    {
      v9 = v8;
      *buf = 136315650;
      v16 = "DCBAASigner.m";
      v17 = 1024;
      v18 = 51;
      v19 = 2048;
      v20 = [dataCopy length];
      _os_log_impl(&dword_2488FB000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Cannot sign empty data. { length=%lu }", buf, 0x1Cu);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __43__DCBAASigner_signatureForData_completion___block_invoke(void *a1, uint64_t a2, void *a3, void *a4)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2 && v7)
  {
    v10 = a1[4];
    v11 = a1[5];
    v36 = 0;
    v12 = [v10 _signatureForData:v11 withReferenceKey:a2 error:&v36];
    v13 = v36;
    if (v12)
    {
      v14 = a1[4];
      v35 = 0;
      v15 = [v14 _attestationWithCertificates:v7 error:&v35];
      v16 = v35;
      (*(a1[6] + 16))();
    }

    else
    {
      (*(a1[6] + 16))();
    }
  }

  else
  {
    if (v8)
    {
      v17 = *MEMORY[0x277D288A8];
      if (mobileactivationErrorHasDomainAndErrorCode())
      {
        if (DCInternalLogSystem_onceToken_0 != -1)
        {
          [DCBAASigner signatureForData:completion:];
        }

        v18 = DCInternalLogSystem_log_0;
        if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
        {
          v19 = v18;
          v20 = [v9 localizedDescription];
          *buf = 136315650;
          *&buf[4] = "DCBAASigner.m";
          v38 = 1024;
          v39 = 83;
          v40 = 2112;
          v41 = v20;
          _os_log_impl(&dword_2488FB000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch BAA certificates. { error=%@ }", buf, 0x1Cu);
        }

        v21 = a1[6];
        v22 = MEMORY[0x277CCA9B8];
        v42[0] = *MEMORY[0x277CCA7E8];
        *buf = v9;
        v23 = MEMORY[0x277CBEAC0];
        v24 = v9;
        v25 = [v23 dictionaryWithObjects:buf forKeys:v42 count:1];
        v26 = v22;
        v27 = -10002;
      }

      else
      {
        if (DCInternalLogSystem_onceToken_0 != -1)
        {
          [DCBAASigner signatureForData:completion:];
        }

        v29 = DCInternalLogSystem_log_0;
        if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
        {
          v30 = v29;
          v31 = [v9 localizedDescription];
          *buf = 136315650;
          *&buf[4] = "DCBAASigner.m";
          v38 = 1024;
          v39 = 86;
          v40 = 2112;
          v41 = v31;
          _os_log_impl(&dword_2488FB000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch BAA certificates. { error=%@ }", buf, 0x1Cu);
        }

        v21 = a1[6];
        v32 = MEMORY[0x277CCA9B8];
        v42[0] = *MEMORY[0x277CCA7E8];
        *buf = v9;
        v33 = MEMORY[0x277CBEAC0];
        v24 = v9;
        v25 = [v33 dictionaryWithObjects:buf forKeys:v42 count:1];
        v26 = v32;
        v27 = -10001;
      }

      v13 = [v26 errorWithDomain:@"com.apple.devicecheck.error.baa" code:v27 userInfo:v25];
    }

    else
    {
      if (DCInternalLogSystem_onceToken_0 != -1)
      {
        [DCBAASigner signatureForData:completion:];
      }

      v28 = DCInternalLogSystem_log_0;
      if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "DCBAASigner.m";
        v38 = 1024;
        v39 = 89;
        _os_log_impl(&dword_2488FB000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch BAA certificates.", buf, 0x12u);
      }

      v21 = a1[6];
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10001 userInfo:0];
    }

    (*(v21 + 16))(v21, 0, 0, v13);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)signaturesForData:(id)data completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  if ([dataCopy count])
  {
    if (DeviceIdentityIsSupported())
    {
      v7 = +[DCCryptoUtilities identityCertificateOptions];
      v12 = dataCopy;
      v13 = completionCopy;
      DeviceIdentityIssueClientCertificateWithCompletion();
    }

    else
    {
      if (DCInternalLogSystem_onceToken_0 != -1)
      {
        [DCBAASigner signatureForData:completion:];
      }

      v9 = DCInternalLogSystem_log_0;
      if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "DCBAASigner.m";
        v16 = 1024;
        v17 = 109;
        _os_log_impl(&dword_2488FB000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot sign data, platform is not supported by DeviceIdentity.", buf, 0x12u);
      }

      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10000 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, 0, v10);
    }
  }

  else
  {
    if (DCInternalLogSystem_onceToken_0 != -1)
    {
      [DCBAASigner signatureForData:completion:];
    }

    v8 = DCInternalLogSystem_log_0;
    if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v15 = "DCBAASigner.m";
      v16 = 1024;
      v17 = 103;
      _os_log_impl(&dword_2488FB000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Cannot sign empty data.", buf, 0x12u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __44__DCBAASigner_signaturesForData_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v64 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2 && v7)
  {
    *v61 = 0;
    *&v61[8] = v61;
    *&v61[16] = 0x3032000000;
    *&v61[24] = __Block_byref_object_copy_;
    v62 = __Block_byref_object_dispose_;
    v63 = 0;
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __44__DCBAASigner_signaturesForData_completion___block_invoke_6;
    v46[3] = &unk_278F59BF8;
    v11 = *(a1 + 32);
    v46[4] = *(a1 + 40);
    v51 = a2;
    v12 = v10;
    v47 = v12;
    v48 = *(a1 + 32);
    v49 = v9;
    v50 = v61;
    [v11 enumerateKeysAndObjectsUsingBlock:v46];
    v13 = [*(a1 + 32) count];
    if (v13 == [v12 count])
    {
      v14 = *(a1 + 40);
      v45 = 0;
      v15 = [v14 _attestationWithCertificates:v7 error:&v45];
      v16 = v45;
      if (v15)
      {
        if (DCInternalLogSystem_onceToken_0 != -1)
        {
          __44__DCBAASigner_signaturesForData_completion___block_invoke_cold_4();
        }

        v17 = DCInternalLogSystem_log_0;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = [v12 description];
          v19 = [v15 description];
          v20 = [v16 localizedDescription];
          *buf = 136316162;
          *&buf[4] = "DCBAASigner.m";
          v53 = 1024;
          v54 = 145;
          v55 = 2112;
          v56 = v18;
          v57 = 2112;
          v58 = v19;
          v59 = 2112;
          v60 = v20;
          _os_log_impl(&dword_2488FB000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Signed data. { signatureData=%@, attestationData=%@, error=%@ }", buf, 0x30u);
        }

        (*(*(a1 + 48) + 16))();
      }

      else
      {
        (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      v31 = *(*&v61[8] + 40);
      (*(*(a1 + 48) + 16))();
    }

    _Block_object_dispose(v61, 8);
  }

  else if (v8)
  {
    v21 = *MEMORY[0x277D288A8];
    if (mobileactivationErrorHasDomainAndErrorCode())
    {
      if (DCInternalLogSystem_onceToken_0 != -1)
      {
        [DCBAASigner signatureForData:completion:];
      }

      v22 = DCInternalLogSystem_log_0;
      if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
      {
        v23 = v22;
        v24 = [v9 localizedDescription];
        *v61 = 136315650;
        *&v61[4] = "DCBAASigner.m";
        *&v61[12] = 1024;
        *&v61[14] = 154;
        *&v61[18] = 2112;
        *&v61[20] = v24;
        _os_log_impl(&dword_2488FB000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch BAA certificates. { error=%@ }", v61, 0x1Cu);
      }

      v25 = *(a1 + 48);
      v26 = MEMORY[0x277CCA9B8];
      *buf = *MEMORY[0x277CCA7E8];
      *v61 = v9;
      v27 = MEMORY[0x277CBEAC0];
      v28 = v9;
      v29 = [v27 dictionaryWithObjects:v61 forKeys:buf count:1];
      v30 = [v26 errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10002 userInfo:v29];

      (*(v25 + 16))(v25, 0, 0, v30);
    }

    else
    {
      if (DCInternalLogSystem_onceToken_0 != -1)
      {
        [DCBAASigner signatureForData:completion:];
      }

      v35 = DCInternalLogSystem_log_0;
      if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
      {
        v36 = v35;
        v37 = [v9 localizedDescription];
        *v61 = 136315650;
        *&v61[4] = "DCBAASigner.m";
        *&v61[12] = 1024;
        *&v61[14] = 157;
        *&v61[18] = 2112;
        *&v61[20] = v37;
        _os_log_impl(&dword_2488FB000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch BAA certificates. { error=%@ }", v61, 0x1Cu);
      }

      v38 = *(a1 + 48);
      v39 = MEMORY[0x277CCA9B8];
      *buf = *MEMORY[0x277CCA7E8];
      *v61 = v9;
      v40 = MEMORY[0x277CBEAC0];
      v41 = v9;
      v42 = [v40 dictionaryWithObjects:v61 forKeys:buf count:1];
      v43 = [v39 errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10001 userInfo:v42];

      (*(v38 + 16))(v38, 0, 0, v43);
    }
  }

  else
  {
    if (DCInternalLogSystem_onceToken_0 != -1)
    {
      [DCBAASigner signatureForData:completion:];
    }

    v32 = DCInternalLogSystem_log_0;
    if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
    {
      *v61 = 136315394;
      *&v61[4] = "DCBAASigner.m";
      *&v61[12] = 1024;
      *&v61[14] = 160;
      _os_log_impl(&dword_2488FB000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch BAA certificates.", v61, 0x12u);
    }

    v33 = *(a1 + 48);
    v34 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10001 userInfo:0];
    (*(v33 + 16))(v33, 0, 0, v34);
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __44__DCBAASigner_signaturesForData_completion___block_invoke_6(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (DCInternalLogSystem_onceToken_0 != -1)
  {
    [DCBAASigner signatureForData:completion:];
  }

  v9 = DCInternalLogSystem_log_0;
  if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v25 = "DCBAASigner.m";
    v26 = 1024;
    v27 = 122;
    v28 = 2112;
    v29 = v7;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&dword_2488FB000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to sign data. { key=%@, object=%@ }", buf, 0x26u);
  }

  v10 = v8;
  if (![v10 length])
  {
    if (DCInternalLogSystem_onceToken_0 != -1)
    {
      __44__DCBAASigner_signaturesForData_completion___block_invoke_cold_4();
    }

    v11 = DCInternalLogSystem_log_0;
    if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "DCBAASigner.m";
      v26 = 1024;
      v27 = 126;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_2488FB000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot sign data, empty. { key=%@ }", buf, 0x1Cu);
    }

    *a4 = 1;
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 72);
  v23 = 0;
  v14 = [v12 _signatureForData:v10 withReferenceKey:v13 error:&v23];
  v15 = v23;
  v16 = v23;
  if (v14)
  {
    [*(a1 + 40) setObject:v14 forKeyedSubscript:v7];
  }

  else
  {
    if (DCInternalLogSystem_onceToken_0 != -1)
    {
      __44__DCBAASigner_signaturesForData_completion___block_invoke_cold_4();
    }

    v17 = DCInternalLogSystem_log_0;
    if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 48);
      v18 = *(a1 + 56);
      v20 = v17;
      v21 = [v18 localizedDescription];
      *buf = 136315906;
      v25 = "DCBAASigner.m";
      v26 = 1024;
      v27 = 134;
      v28 = 2112;
      v29 = v19;
      v30 = 2112;
      v31 = v21;
      _os_log_impl(&dword_2488FB000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to generate signature for data. { data=%@, error=%@ }", buf, 0x26u);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v15);
    *a4 = 1;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_signatureForData:(id)data withReferenceKey:(__SecKey *)key error:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  error = 0;
  v6 = SecKeyCreateSignature(key, *MEMORY[0x277CDC300], data, &error);
  v7 = v6;
  errorCopy = error;
  if (v6)
  {
    v9 = v6;
  }

  else if (error)
  {
    if (DCInternalLogSystem_onceToken_0 != -1)
    {
      __44__DCBAASigner_signaturesForData_completion___block_invoke_cold_4();
    }

    v10 = DCInternalLogSystem_log_0;
    if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      localizedDescription = [(__CFError *)errorCopy localizedDescription];
      *buf = 136315650;
      *&buf[4] = "DCBAASigner.m";
      v24 = 1024;
      v25 = 184;
      v26 = 2112;
      v27 = localizedDescription;
      _os_log_impl(&dword_2488FB000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to sign key. { error=%@ }", buf, 0x1Cu);
    }

    v13 = MEMORY[0x277CCA9B8];
    v28[0] = *MEMORY[0x277CCA7E8];
    *buf = errorCopy;
    v14 = MEMORY[0x277CBEAC0];
    v15 = errorCopy;
    v16 = [v14 dictionaryWithObjects:buf forKeys:v28 count:1];
    v17 = [v13 errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10001 userInfo:v16];

    v18 = v17;
    *error = v17;
  }

  else
  {
    if (DCInternalLogSystem_onceToken_0 != -1)
    {
      __44__DCBAASigner_signaturesForData_completion___block_invoke_cold_4();
    }

    v19 = DCInternalLogSystem_log_0;
    if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DCBAASigner.m";
      v24 = 1024;
      v25 = 187;
      _os_log_impl(&dword_2488FB000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to sign key.", buf, 0x12u);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10001 userInfo:0];
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_attestationWithCertificates:(id)certificates error:(id *)error
{
  v38[1] = *MEMORY[0x277D85DE8];
  certificatesCopy = certificates;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [certificatesCopy objectAtIndexedSubscript:0];
  v8 = SecCertificateCopyData(v7);
  v9 = [(__CFData *)v8 base64EncodedStringWithOptions:0];
  [v6 addObject:v9];

  v10 = [certificatesCopy objectAtIndexedSubscript:1];
  v11 = SecCertificateCopyData(v10);
  v12 = [(__CFData *)v11 base64EncodedStringWithOptions:0];
  [v6 addObject:v12];

  v36 = @"certs";
  v37 = v6;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v30 = 0;
  v14 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v13 options:0 error:&v30];
  v15 = v30;
  if (v14)
  {
    v16 = [v14 dc_compressedData:517];
  }

  else
  {
    if (DCInternalLogSystem_onceToken_0 != -1)
    {
      __44__DCBAASigner_signaturesForData_completion___block_invoke_cold_4();
    }

    v17 = DCInternalLogSystem_log_0;
    if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DCBAASigner.m";
      v32 = 1024;
      v33 = 219;
      _os_log_impl(&dword_2488FB000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to serialize attestation dictionary.", buf, 0x12u);
    }

    if (v15)
    {
      if (DCInternalLogSystem_onceToken_0 != -1)
      {
        __44__DCBAASigner_signaturesForData_completion___block_invoke_cold_4();
      }

      v18 = DCInternalLogSystem_log_0;
      if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
      {
        v19 = v18;
        localizedDescription = [v15 localizedDescription];
        *buf = 136315650;
        *&buf[4] = "DCBAASigner.m";
        v32 = 1024;
        v33 = 223;
        v34 = 2112;
        v35 = localizedDescription;
        _os_log_impl(&dword_2488FB000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to serialize attestation dictionary. { error=%@ }", buf, 0x1Cu);
      }

      v21 = MEMORY[0x277CCA9B8];
      v38[0] = *MEMORY[0x277CCA7E8];
      *buf = v15;
      v22 = MEMORY[0x277CBEAC0];
      v23 = v15;
      v24 = [v22 dictionaryWithObjects:buf forKeys:v38 count:1];
      v25 = [v21 errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10001 userInfo:v24];

      v26 = v25;
      v16 = 0;
      *error = v25;
    }

    else
    {
      if (DCInternalLogSystem_onceToken_0 != -1)
      {
        __44__DCBAASigner_signaturesForData_completion___block_invoke_cold_4();
      }

      v27 = DCInternalLogSystem_log_0;
      if (os_log_type_enabled(DCInternalLogSystem_log_0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "DCBAASigner.m";
        v32 = 1024;
        v33 = 227;
        _os_log_impl(&dword_2488FB000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to serialize attestation dictionary.", buf, 0x12u);
      }

      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.devicecheck.error.baa" code:-10001 userInfo:0];
        *error = v16 = 0;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];

  return v16;
}

@end