@interface NDOBAAManager
- (BOOL)generateBAACertficate:(id)certficate;
- (id)BAAAuthenticationHeadersForBody:(id)body error:(id *)error;
- (id)_compressCertificates:(id)certificates;
- (id)_zlibCompressionForData:(id)data;
- (id)certificatesEncodeToBase64:(id)base64 status:(id *)status;
- (id)serializeCertificateChain:(id)chain;
- (id)signDataAndEncodeToBase64:(id)base64 withPrivateKey:(__SecKey *)key status:(id *)status;
- (void)dealloc;
- (void)writeCertsToDevice:(id)device;
@end

@implementation NDOBAAManager

- (BOOL)generateBAACertficate:(id)certficate
{
  v34 = *MEMORY[0x277D85DE8];
  certficateCopy = certficate;
  v4 = dispatch_semaphore_create(0);
  IsSupported = DeviceIdentityIsSupported();
  v6 = _NDOLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[NDOBAAManager generateBAACertficate:]";
    *&buf[12] = 1024;
    *&buf[14] = IsSupported;
    _os_log_impl(&dword_25BD52000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: deviceIdentitySupported on this device:%d", buf, 0x12u);
  }

  if (IsSupported)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v33 = 0;
    error = 0;
    v7 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0x40000000uLL, &error);
    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x277CBEB18]);
      v9 = *MEMORY[0x277D04900];
      v31[0] = *MEMORY[0x277D04930];
      v31[1] = v9;
      v10 = *MEMORY[0x277D048F8];
      v31[2] = *MEMORY[0x277D04910];
      v31[3] = v10;
      v31[4] = *MEMORY[0x277D04908];
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:5];
      v12 = [v8 initWithArray:v11];

      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v13 setObject:@"com.apple.ndoagent.baaCertificates" forKeyedSubscript:*MEMORY[0x277D048E0]];
      [v13 setObject:@"com.apple.ndoagent" forKeyedSubscript:*MEMORY[0x277D048D8]];
      [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D048B0]];
      [v13 setObject:&unk_286D6E4B0 forKeyedSubscript:*MEMORY[0x277D048E8]];
      v14 = [MEMORY[0x277CCABB0] numberWithBool:0];
      [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x277D04948]];

      [v13 setObject:&unk_286D6E4C8 forKeyedSubscript:*MEMORY[0x277D04950]];
      [v13 setObject:v7 forKeyedSubscript:*MEMORY[0x277D048A0]];
      [v13 setObject:v12 forKeyedSubscript:*MEMORY[0x277D04928]];
      v15 = v13;
      v25 = certficateCopy;
      v24 = v4;
      DeviceIdentityIssueClientCertificateWithCompletion();
      v16 = dispatch_time(0, 60000000000);
      if (dispatch_semaphore_wait(v24, v16))
      {
        v17 = _NDOLogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 136446466;
          v28 = "[NDOBAAManager generateBAACertficate:]";
          v29 = 1024;
          v30 = 60;
          _os_log_impl(&dword_25BD52000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: Installation timed out after %d seconds", v27, 0x12u);
        }
      }

      CFRelease(v7);
      v18 = *(*&buf[8] + 24);
    }

    else
    {
      v12 = _NDOLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v21 = [(__CFError *)error description];
        v22 = v21;
        uTF8String = [v21 UTF8String];
        *v27 = 136315138;
        v28 = uTF8String;
        _os_log_error_impl(&dword_25BD52000, v12, OS_LOG_TYPE_ERROR, "Failed to create access control: %s", v27, 0xCu);
      }

      v18 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

void __39__NDOBAAManager_generateBAACertficate___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    if (a2 && v7)
    {
      [*(a1 + 40) setPrivateKey:a2];
      [*(a1 + 40) setClientCertArray:v7];
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }

    else if (!a2 || ![v7 count])
    {
      v13 = _NDOLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __39__NDOBAAManager_generateBAACertficate___block_invoke_cold_2();
      }
    }

    v14 = *(a1 + 56);
    if (v14)
    {
      v15 = [*(a1 + 40) clientCertArray];
      (*(v14 + 16))(v14, v15, [*(a1 + 40) privateKey], 0);
    }

    goto LABEL_19;
  }

  v9 = *MEMORY[0x277D04898];
  if ((mobileactivationErrorHasDomainAndErrorCode() & 1) == 0 && !mobileactivationErrorHasDomainAndErrorCode())
  {
    v16 = *(a1 + 56);
    if (v16)
    {
      (*(v16 + 16))(v16, 0, 0, v8);
    }

LABEL_19:
    dispatch_semaphore_signal(*(a1 + 48));
    goto LABEL_20;
  }

  v10 = _NDOLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __39__NDOBAAManager_generateBAACertficate___block_invoke_cold_1();
  }

  [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D04948]];
  v11 = *(a1 + 32);
  v18 = *(a1 + 40);
  v17 = *(a1 + 56);
  v12 = v17;
  v19 = *(a1 + 48);
  DeviceIdentityIssueClientCertificateWithCompletion();

LABEL_20:
}

void __39__NDOBAAManager_generateBAACertficate___block_invoke_10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v7 = a4;
  if (a2 && v10)
  {
    [*(a1 + 32) setPrivateKey:a2];
    [*(a1 + 32) setClientCertArray:v10];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = [*(a1 + 32) clientCertArray];
    (*(v8 + 16))(v8, v9, [*(a1 + 32) privateKey], v7);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)BAAAuthenticationHeadersForBody:(id)body error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  bodyCopy = body;
  v7 = [(NDOBAAManager *)self signDataAndEncodeToBase64:bodyCopy withPrivateKey:[(NDOBAAManager *)self privateKey] status:error];

  if (v7)
  {
    clientCertArray = [(NDOBAAManager *)self clientCertArray];
    v9 = [(NDOBAAManager *)self certificatesEncodeToBase64:clientCertArray status:error];

    v10 = _NDOLogSystem();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v18 = "[NDOBAAManager BAAAuthenticationHeadersForBody:error:]";
        v19 = 2112;
        v20 = v7;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&dword_25BD52000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: signatureDataString: %@\n certificateString: %@", buf, 0x20u);
      }

      v15[0] = @"X-Apple-Baa-S";
      v15[1] = @"X-Apple-Baa";
      v16[0] = v7;
      v16[1] = v9;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [NDOBAAManager BAAAuthenticationHeadersForBody:error error:?];
      }

      v12 = 0;
      v9 = v11;
    }
  }

  else
  {
    v9 = _NDOLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NDOBAAManager BAAAuthenticationHeadersForBody:error error:?];
    }

    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)signDataAndEncodeToBase64:(id)base64 withPrivateKey:(__SecKey *)key status:(id *)status
{
  error = 0;
  v5 = SecKeyCreateSignature(key, *MEMORY[0x277CDC300], base64, &error);
  v6 = v5;
  if (v5)
  {
    v7 = [(__CFData *)v5 base64EncodedStringWithOptions:0];
  }

  else
  {
    if (error)
    {
      v8 = _NDOLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [NDOBAAManager signDataAndEncodeToBase64:? withPrivateKey:? status:?];
      }

      CFRelease(error);
    }

    v7 = 0;
  }

  return v7;
}

- (id)certificatesEncodeToBase64:(id)base64 status:(id *)status
{
  status = [(NDOBAAManager *)self serializeCertificateChain:base64, status];
  v6 = [(NDOBAAManager *)self _compressCertificates:status];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 base64EncodedStringWithOptions:0];
  }

  else
  {
    v9 = _NDOLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NDOBAAManager certificatesEncodeToBase64:status:];
    }

    v8 = 0;
  }

  return v8;
}

- (id)serializeCertificateChain:(id)chain
{
  v22 = *MEMORY[0x277D85DE8];
  chainCopy = chain;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(chainCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = chainCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = SecCertificateCopyData(*(*(&v15 + 1) + 8 * v9));
        if ([(__CFData *)v10 length])
        {
          v11 = [(__CFData *)v10 base64EncodedStringWithOptions:0];
          [v4 addObject:v11];
        }

        else
        {
          v11 = _NDOLogSystem();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            [(NDOBAAManager *)buf serializeCertificateChain:v11];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)writeCertsToDevice:(id)device
{
  deviceCopy = device;
  v4 = deviceCopy;
  if (deviceCopy && [deviceCopy count] > 1)
  {
    v6 = [v4 objectAtIndex:0];
    v7 = [v4 objectAtIndex:1];
    v5 = SecCertificateCopyData(v6);
    v8 = SecCertificateCopyData(v7);
    [v5 writeToFile:@"/tmp/leafCertificate" atomically:1];
    [(__CFData *)v8 writeToFile:@"/tmp/intermediateCertificate" atomically:1];
  }

  else
  {
    v5 = _NDOLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [NDOBAAManager writeCertsToDevice:v5];
    }
  }
}

- (id)_compressCertificates:(id)certificates
{
  v14[1] = *MEMORY[0x277D85DE8];
  certificatesCopy = certificates;
  v13 = @"certs";
  v14[0] = certificatesCopy;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12 = 0;
  v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v5 options:0 error:&v12];
  v7 = v12;
  if ([v6 length])
  {
    v8 = [(NDOBAAManager *)self _zlibCompressionForData:v6];
  }

  else
  {
    if (v7)
    {
      v9 = _NDOLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(NDOBAAManager *)v7 _compressCertificates:v9];
      }
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_zlibCompressionForData:(id)data
{
  v3 = MEMORY[0x277CBEB28];
  dataCopy = data;
  v5 = [v3 dataWithLength:{objc_msgSend(dataCopy, "length")}];
  bytes = [v5 bytes];
  v7 = [dataCopy length];
  bytes2 = [dataCopy bytes];
  v9 = [dataCopy length];

  v10 = compression_encode_buffer(bytes, v7, bytes2, v9, 0, COMPRESSION_ZLIB);
  if (v10)
  {
    v10 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(v5 length:"bytes") freeWhenDone:{v10, 0}];
  }

  return v10;
}

- (void)dealloc
{
  if ([(NDOBAAManager *)self privateKey])
  {
    CFRelease([(NDOBAAManager *)self privateKey]);
  }

  v3.receiver = self;
  v3.super_class = NDOBAAManager;
  [(NDOBAAManager *)&v3 dealloc];
}

void __39__NDOBAAManager_generateBAACertficate___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __39__NDOBAAManager_generateBAACertficate___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)BAAAuthenticationHeadersForBody:(uint64_t *)a1 error:.cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)signDataAndEncodeToBase64:(uint64_t *)a1 withPrivateKey:status:.cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)serializeCertificateChain:(os_log_t)log .cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136446210;
  *a2 = "[NDOBAAManager serializeCertificateChain:]";
  _os_log_error_impl(&dword_25BD52000, log, OS_LOG_TYPE_ERROR, "%{public}s: Found NULL attestation data!!", buf, 0xCu);
}

- (void)_compressCertificates:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_25BD52000, a2, OS_LOG_TYPE_ERROR, "Unable to create attestation data with error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end