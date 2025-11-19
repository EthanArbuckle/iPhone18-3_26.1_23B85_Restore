@interface DCCryptoProxyImpl
- (void)_fetchPublicKey:(id)a3;
- (void)baaSignatureForData:(id)a3 completion:(id)a4;
- (void)baaSignaturesForData:(id)a3 completion:(id)a4;
- (void)fetchOpaqueBlobWithContext:(id)a3 completion:(id)a4;
@end

@implementation DCCryptoProxyImpl

- (void)fetchOpaqueBlobWithContext:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (DCInternalLogSystem_onceToken_3 != -1)
  {
    [DCCryptoProxyImpl fetchOpaqueBlobWithContext:completion:];
  }

  v8 = DCInternalLogSystem_log_3;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 0;
    v10 = 0;
    v11 = 47;
    do
    {
      v12 = &aLibraryCachesC_3[v9];
      if (v11 == 47)
      {
        v10 = &aLibraryCachesC_3[v9];
      }

      v11 = v12[1];
      if (!v12[1])
      {
        break;
      }
    }

    while (v9++ < 0xFFF);
    if (v10)
    {
      v14 = v10 + 1;
    }

    else
    {
      v14 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Interfaces/DCCryptoProxyImpl.m";
    }

    v15 = [v6 clientAppID];
    *buf = 136315650;
    v23 = v14;
    v24 = 1024;
    v25 = 22;
    v26 = 2112;
    v27 = v15;
    _os_log_impl(&dword_2488FB000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Generating encrypted certificate. { clientAppID=%@ }", buf, 0x1Cu);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __59__DCCryptoProxyImpl_fetchOpaqueBlobWithContext_completion___block_invoke;
  v19[3] = &unk_278F59CB0;
  v20 = v6;
  v21 = v7;
  v16 = v7;
  v17 = v6;
  [(DCCryptoProxyImpl *)self _fetchPublicKey:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __59__DCCryptoProxyImpl_fetchOpaqueBlobWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[DCCertificateGenerator alloc] initWithContext:*(a1 + 32) publicKey:v3];

  [(DCCertificateGenerator *)v4 generateEncryptedCertificateChainWithCompletion:*(a1 + 40)];
}

- (void)_fetchPublicKey:(id)a3
{
  v3 = a3;
  v4 = +[DCAssetFetcher sharedFetcher];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__DCCryptoProxyImpl__fetchPublicKey___block_invoke;
  v6[3] = &unk_278F59CD8;
  v7 = v3;
  v5 = v3;
  [v4 fetchPublicKeyAssetWithCompletion:v6];
}

void __37__DCCryptoProxyImpl__fetchPublicKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 publicKey];

  if (v7)
  {
    if (DCInternalLogSystem_onceToken_3 != -1)
    {
      [DCCryptoProxyImpl fetchOpaqueBlobWithContext:completion:];
    }

    v8 = DCInternalLogSystem_log_3;
    if (os_log_type_enabled(DCInternalLogSystem_log_3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v10 = 0;
      v11 = 47;
      do
      {
        v12 = &aLibraryCachesC_3[v9];
        if (v11 == 47)
        {
          v10 = &aLibraryCachesC_3[v9];
        }

        v11 = v12[1];
        if (!v12[1])
        {
          break;
        }

        v13 = v9++ >= 0xFFF;
      }

      while (!v13);
      if (v10)
      {
        v14 = v10 + 1;
      }

      else
      {
        v14 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Interfaces/DCCryptoProxyImpl.m";
      }

      v26 = 136315394;
      v27 = v14;
      v28 = 1024;
      v29 = 52;
      _os_log_impl(&dword_2488FB000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Refreshed mobile asset and fetched remote public key.", &v26, 0x12u);
    }

    v15 = *(a1 + 32);
    v16 = [v5 publicKey];
  }

  else
  {
    if (DCInternalLogSystem_onceToken_3 != -1)
    {
      [DCCryptoProxyImpl fetchOpaqueBlobWithContext:completion:];
    }

    v17 = DCInternalLogSystem_log_3;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 0;
      v19 = 0;
      v20 = 47;
      do
      {
        v21 = &aLibraryCachesC_3[v18];
        if (v20 == 47)
        {
          v19 = &aLibraryCachesC_3[v18];
        }

        v20 = v21[1];
        if (!v21[1])
        {
          break;
        }

        v13 = v18++ >= 0xFFF;
      }

      while (!v13);
      if (v19)
      {
        v22 = v19 + 1;
      }

      else
      {
        v22 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Interfaces/DCCryptoProxyImpl.m";
      }

      v23 = [v6 localizedDescription];
      v26 = 136315650;
      v27 = v22;
      v28 = 1024;
      v29 = 55;
      v30 = 2112;
      v31 = v23;
      _os_log_impl(&dword_2488FB000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to fetch mobile asset, using locally cached public key. { error=%@ }", &v26, 0x1Cu);
    }

    v15 = *(a1 + 32);
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:&fallback_server_pubkey length:65];
  }

  v24 = v16;
  (*(v15 + 16))(v15, v16);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)baaSignatureForData:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (DCInternalLogSystem_onceToken_3 != -1)
  {
    [DCCryptoProxyImpl fetchOpaqueBlobWithContext:completion:];
  }

  v7 = DCInternalLogSystem_log_3;
  if (os_log_type_enabled(DCInternalLogSystem_log_3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 0;
    v9 = 0;
    v10 = 47;
    do
    {
      v11 = &aLibraryCachesC_3[v8];
      if (v10 == 47)
      {
        v9 = &aLibraryCachesC_3[v8];
      }

      v10 = v11[1];
      if (!v11[1])
      {
        break;
      }
    }

    while (v8++ < 0xFFF);
    if (v9)
    {
      v13 = v9 + 1;
    }

    else
    {
      v13 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Interfaces/DCCryptoProxyImpl.m";
    }

    v16 = 136315394;
    v17 = v13;
    v18 = 1024;
    v19 = 63;
    _os_log_impl(&dword_2488FB000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Signing data with BAA certificates.", &v16, 0x12u);
  }

  v14 = +[DCBAASigner sharedSigner];
  [v14 signatureForData:v5 completion:v6];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)baaSignaturesForData:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (DCInternalLogSystem_onceToken_3 != -1)
  {
    [DCCryptoProxyImpl fetchOpaqueBlobWithContext:completion:];
  }

  v7 = DCInternalLogSystem_log_3;
  if (os_log_type_enabled(DCInternalLogSystem_log_3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 0;
    v9 = 0;
    v10 = 47;
    do
    {
      v11 = &aLibraryCachesC_3[v8];
      if (v10 == 47)
      {
        v9 = &aLibraryCachesC_3[v8];
      }

      v10 = v11[1];
      if (!v11[1])
      {
        break;
      }
    }

    while (v8++ < 0xFFF);
    if (v9)
    {
      v13 = v9 + 1;
    }

    else
    {
      v13 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Interfaces/DCCryptoProxyImpl.m";
    }

    v16 = 136315394;
    v17 = v13;
    v18 = 1024;
    v19 = 78;
    _os_log_impl(&dword_2488FB000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Signing dictionary with BAA certificates.", &v16, 0x12u);
  }

  v14 = +[DCBAASigner sharedSigner];
  [v14 signaturesForData:v5 completion:v6];

  v15 = *MEMORY[0x277D85DE8];
}

@end