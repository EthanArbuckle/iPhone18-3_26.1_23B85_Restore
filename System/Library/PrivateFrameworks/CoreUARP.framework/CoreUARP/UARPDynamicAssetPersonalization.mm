@interface UARPDynamicAssetPersonalization
- (BOOL)compareTssResponse:(id)a3;
- (BOOL)prepareDynamicAsset:(id)a3 error:(id *)a4;
- (BOOL)processDynamicAsset:(id *)a3;
- (BOOL)processTssResponse:(id)a3;
- (BOOL)tssRequest:(id)a3 error:(id *)a4;
- (BOOL)tssRequest:(id)a3 error:(id *)a4 authListed:(BOOL)a5;
- (NSDictionary)options;
- (UARPDynamicAssetPersonalization)init;
- (UARPDynamicAssetPersonalization)initWithEndpoint:(id)a3 url:(id)a4 tatsuServerURL:(id)a5;
- (id)buildKey:(id)a3 forPayload:(id)a4;
- (id)buildTicketPrefixForPayload:(id)a3;
- (int64_t)assetNumber;
@end

@implementation UARPDynamicAssetPersonalization

- (UARPDynamicAssetPersonalization)init
{
  [(UARPDynamicAssetPersonalization *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPDynamicAssetPersonalization)initWithEndpoint:(id)a3 url:(id)a4 tatsuServerURL:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = UARPDynamicAssetPersonalization;
  v12 = [(UARPDynamicAssetPersonalization *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_endpoint, a3);
    objc_storeStrong(&v13->_url, a4);
    objc_storeStrong(&v13->_tatsuServerURL, a5);
    v14 = os_log_create("com.apple.accessoryupdater.uarp", "personalization");
    log = v13->_log;
    v13->_log = v14;

    v16 = dispatch_queue_create("com.apple.UARP.UARPPersonalization", 0);
    queue = v13->_queue;
    v13->_queue = v16;

    v18 = uarpAssetTagStructPersonalization();
    v19 = [[UARPAssetTag alloc] initWithChar1:*v18 char2:v18[1] char3:v18[2] char4:v18[3]];
    tagIM4M = v13->_tagIM4M;
    v13->_tagIM4M = v19;
  }

  return v13;
}

- (int64_t)assetNumber
{
  v2 = [(UARPSuperBinaryAsset *)self->_im4mAsset tlvs];
  v3 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403906 tlvs:v2];

  if (v3)
  {
    v4 = [v3 valueAsNumber];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 integerValue];
    }

    else
    {
      v6 = -1;
    }
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (NSDictionary)options
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [(NSMutableArray *)self->_options firstObject];
  v4 = [v2 dictionaryWithDictionary:v3];

  return v4;
}

- (id)buildTicketPrefixForPayload:(id)a3
{
  v3 = a3;
  v4 = [v3 tlvs];
  v5 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403907 tlvs:v4];

  if (v5)
  {
    v6 = [v5 valueAsString];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 tlvs];
  v8 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403942 tlvs:v7];

  if (v8)
  {
    v9 = [v8 valueAsNumber];
    v10 = [v9 unsignedCharValue] != 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v3 tlvs];
  v12 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403941 tlvs:v11];

  if (v12)
  {
    v13 = [v12 valueAsNumber];
    v14 = [v13 unsignedLongValue];
  }

  else
  {
    v14 = 1;
  }

  v15 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@", v6];
  v16 = v15;
  if (v10)
  {
    [v15 appendFormat:@"%lu", v14];
  }

  v17 = [MEMORY[0x277CCACA8] stringWithString:v16];

  return v17;
}

- (id)buildKey:(id)a3 forPayload:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 tlvs];
  v8 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403907 tlvs:v7];

  if (v8)
  {
    v9 = [v8 valueAsString];
  }

  else
  {
    v9 = 0;
  }

  v26 = v5;
  v10 = [v6 tlvs];
  v11 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403937 tlvs:v10];

  if (v11)
  {
    v12 = [v11 valueAsNumber];
    v13 = [v12 unsignedCharValue] != 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v6 tlvs];
  v15 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403938 tlvs:v14];

  if (v15)
  {
    v16 = [v15 valueAsNumber];
    v17 = [v16 unsignedCharValue] != 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = [v6 tlvs];
  v19 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403941 tlvs:v18];

  if (v19)
  {
    v20 = [v19 valueAsNumber];
    v21 = [v20 unsignedLongValue];
  }

  else
  {
    v21 = 1;
  }

  v22 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@", v9];
  v23 = v22;
  if (v13)
  {
    [v22 appendFormat:@"%lu", v21];
  }

  [v23 appendFormat:@", %@", v26];
  if (v17)
  {
    [v23 appendFormat:@", %lu", v21];
  }

  v24 = [MEMORY[0x277CCACA8] stringWithString:v23];

  return v24;
}

- (BOOL)processDynamicAsset:(id *)a3
{
  v4 = self;
  v127 = *MEMORY[0x277D85DE8];
  v5 = [[UARPSuperBinaryAsset alloc] initWithURL:self->_url];
  im4mAsset = v4->_im4mAsset;
  v4->_im4mAsset = v5;

  v7 = [(UARPSuperBinaryAsset *)v4->_im4mAsset expandHeadersAndTLVs:a3];
  log = v4->_log;
  v100 = v7;
  if (v7)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v9 = v4->_im4mAsset;
      *buf = 136315394;
      v124 = "[UARPDynamicAssetPersonalization processDynamicAsset:]";
      v125 = 2112;
      v126 = v9;
      _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s; RX IM4M dynamic asset; %@", buf, 0x16u);
    }

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    options = v4->_options;
    v4->_options = v10;

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    obj = [(UARPSuperBinaryAsset *)v4->_im4mAsset payloads];
    v103 = [obj countByEnumeratingWithState:&v117 objects:v122 count:16];
    if (v103)
    {
      v102 = *v118;
      v107 = v4;
      do
      {
        v12 = 0;
        do
        {
          if (*v118 != v102)
          {
            objc_enumerationMutation(obj);
          }

          v105 = v12;
          v13 = *(*(&v117 + 1) + 8 * v12);
          v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v110 = v13;
          v15 = [(UARPDynamicAssetPersonalization *)v4 buildTicketPrefixForPayload:v13];
          if (v15)
          {
            v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@", v15, @"Ticket"];
            keyNameManifest = v4->_keyNameManifest;
            v4->_keyNameManifest = v16;

            v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"@%@", v4->_keyNameManifest];
            keyNameTicket = v4->_keyNameTicket;
            v4->_keyNameTicket = v18;

            [v14 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v4->_keyNameTicket];
          }

          v20 = [(UARPDynamicAssetPersonalization *)v4 buildKey:@"BoardID" forPayload:v13];
          keyNameBoardID = v4->_keyNameBoardID;
          v4->_keyNameBoardID = v20;

          v22 = [v13 tlvs];
          v23 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403908 tlvs:v22];

          if (v4->_keyNameBoardID && v23)
          {
            v24 = [v23 valueAsNumber];
            [v14 setObject:v24 forKeyedSubscript:v4->_keyNameBoardID];
          }

          v25 = [(UARPDynamicAssetPersonalization *)v4 buildKey:@"ChipID" forPayload:v110];
          keyNameChipID = v4->_keyNameChipID;
          v4->_keyNameChipID = v25;

          v27 = [v110 tlvs];
          v28 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403909 tlvs:v27];

          if (v4->_keyNameChipID && v28)
          {
            v29 = [v28 valueAsNumber];
            [v14 setObject:v29 forKeyedSubscript:v4->_keyNameChipID];
          }

          v30 = [(UARPDynamicAssetPersonalization *)v4 buildKey:@"ECID" forPayload:v110];
          keyNameECID = v4->_keyNameECID;
          v4->_keyNameECID = v30;

          v32 = [v110 tlvs];
          v33 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403910 tlvs:v32];

          if (v4->_keyNameECID && v33)
          {
            v34 = [v33 valueAsNumber];
            [v14 setObject:v34 forKeyedSubscript:v4->_keyNameECID];
          }

          v35 = [(UARPDynamicAssetPersonalization *)v4 buildKey:@"Nonce" forPayload:v110];
          keyNameNonce = v4->_keyNameNonce;
          v4->_keyNameNonce = v35;

          v37 = [v110 tlvs];
          v38 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403912 tlvs:v37];

          if (v4->_keyNameNonce && v38)
          {
            v39 = [v38 valueAsData];
            [v14 setObject:v39 forKeyedSubscript:v4->_keyNameNonce];
          }

          v40 = [(UARPDynamicAssetPersonalization *)v4 buildKey:@"ProductionMode" forPayload:v110];
          keyNameProductionMode = v4->_keyNameProductionMode;
          v4->_keyNameProductionMode = v40;

          v42 = [v110 tlvs];
          v43 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403915 tlvs:v42];

          if (v4->_keyNameProductionMode && v43)
          {
            v44 = [v43 valueAsNumber];
            if ([v44 BOOLValue])
            {
              v45 = MEMORY[0x277CBEC38];
            }

            else
            {
              v45 = MEMORY[0x277CBEC28];
            }

            [v14 setObject:v45 forKeyedSubscript:v4->_keyNameProductionMode];
          }

          v46 = [(UARPDynamicAssetPersonalization *)v4 buildKey:@"SecurityDomain" forPayload:v110];
          keyNameSecurityDomain = v4->_keyNameSecurityDomain;
          v4->_keyNameSecurityDomain = v46;

          v48 = [v110 tlvs];
          v49 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403913 tlvs:v48];

          if (v4->_keyNameSecurityDomain && v49)
          {
            v50 = [v49 valueAsNumber];
            [v14 setObject:v50 forKeyedSubscript:v4->_keyNameSecurityDomain];
          }

          v51 = [(UARPDynamicAssetPersonalization *)v4 buildKey:@"SecurityMode" forPayload:v110];
          keyNameSecurityMode = v4->_keyNameSecurityMode;
          v4->_keyNameSecurityMode = v51;

          v53 = [v110 tlvs];
          v54 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403914 tlvs:v53];

          if (v4->_keyNameSecurityMode && v54)
          {
            v55 = [v54 valueAsNumber];
            if ([v55 BOOLValue])
            {
              v56 = MEMORY[0x277CBEC38];
            }

            else
            {
              v56 = MEMORY[0x277CBEC28];
            }

            [v14 setObject:v56 forKeyedSubscript:v4->_keyNameSecurityMode];
          }

          v104 = v15;

          v57 = [(UARPDynamicAssetPersonalization *)v4 buildKey:@"SocLiveNonce" forPayload:v110];
          keyNameSoCLiveNonce = v4->_keyNameSoCLiveNonce;
          v4->_keyNameSoCLiveNonce = v57;

          v59 = [v110 tlvs];
          v60 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403928 tlvs:v59];

          if (v4->_keyNameSoCLiveNonce && v60)
          {
            v61 = [v60 valueAsNumber];
            if ([v61 BOOLValue])
            {
              v62 = MEMORY[0x277CBEC38];
            }

            else
            {
              v62 = MEMORY[0x277CBEC28];
            }

            [v14 setObject:v62 forKeyedSubscript:v4->_keyNameSoCLiveNonce];
          }

          v63 = [v110 tlvs];
          v64 = [UARPSuperBinaryAssetTLV findTLVsWithType:2293403920 tlvs:v63];

          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v106 = v64;
          v111 = [v106 countByEnumeratingWithState:&v113 objects:v121 count:16];
          if (v111)
          {
            v108 = *v114;
            v109 = v14;
            do
            {
              for (i = 0; i != v111; ++i)
              {
                if (*v114 != v108)
                {
                  objc_enumerationMutation(v106);
                }

                v66 = [*(*(&v113 + 1) + 8 * i) valueAsTLVs];
                v67 = objc_alloc_init(MEMORY[0x277CBEB38]);
                v68 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403922 tlvs:v66];
                v112 = [v68 valueAsString];

                v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"Digest"];
                v70 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403923 tlvs:v66];
                v71 = [v70 valueAsData];
                [v67 setObject:v71 forKeyedSubscript:v69];

                v72 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"EPRO"];
                v73 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403926 tlvs:v66];
                v74 = v73;
                if (v73)
                {
                  v75 = [v73 valueAsNumber];
                  if ([v75 BOOLValue])
                  {
                    v76 = MEMORY[0x277CBEC38];
                  }

                  else
                  {
                    v76 = MEMORY[0x277CBEC28];
                  }

                  [v67 setObject:v76 forKeyedSubscript:v72];
                }

                v77 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"ESEC"];
                v78 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403925 tlvs:v66];
                v79 = v78;
                if (v78)
                {
                  v80 = [v78 valueAsNumber];
                  if ([v80 BOOLValue])
                  {
                    v81 = MEMORY[0x277CBEC38];
                  }

                  else
                  {
                    v81 = MEMORY[0x277CBEC28];
                  }

                  [v67 setObject:v81 forKeyedSubscript:v77];
                }

                v82 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"Trusted"];
                v83 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403927 tlvs:v66];
                v84 = v83;
                if (v83)
                {
                  v85 = [v83 valueAsNumber];
                  if ([v85 BOOLValue])
                  {
                    v86 = MEMORY[0x277CBEC38];
                  }

                  else
                  {
                    v86 = MEMORY[0x277CBEC28];
                  }

                  [v67 setObject:v86 forKeyedSubscript:v82];
                }

                v4 = v107;
                v87 = [(UARPDynamicAssetPersonalization *)v107 buildKey:v112 forPayload:v110];
                v14 = v109;
                [v109 setObject:v67 forKeyedSubscript:v87];
              }

              v111 = [v106 countByEnumeratingWithState:&v113 objects:v121 count:16];
            }

            while (v111);
          }

          v88 = v4->_log;
          if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_247AA7000, v88, OS_LOG_TYPE_INFO, "Personalization Options", buf, 2u);
          }

          v89 = v4->_log;
          if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v124 = v14;
            _os_log_impl(&dword_247AA7000, v89, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }

          v90 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v14];
          [(NSMutableArray *)v4->_options addObject:v90];

          v12 = v105 + 1;
        }

        while (v105 + 1 != v103);
        v103 = [obj countByEnumeratingWithState:&v117 objects:v122 count:16];
      }

      while (v103);
    }
  }

  else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    [(UARPDynamicAssetPersonalization *)log processDynamicAsset:v91, v92, v93, v94, v95, v96, v97];
  }

  v98 = *MEMORY[0x277D85DE8];
  return v100;
}

- (BOOL)tssRequest:(id)a3 error:(id *)a4
{
  options = self->_options;
  v6 = a3;
  v7 = [(NSMutableArray *)options firstObject];
  v8 = UARPPersonalizationTSSRequestWithSigningServer(v7, v6);

  if (v8)
  {
    v9 = [(UARPDynamicAssetPersonalization *)self processTssResponse:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)tssRequest:(id)a3 error:(id *)a4 authListed:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [(NSMutableArray *)self->_options firstObject];
  v9 = v8;
  if (v5)
  {
    UARPPersonalizationTSSRequestWithSigningServerAuthListed(v8, v7);
  }

  else
  {
    UARPPersonalizationTSSRequestWithSigningServer(v8, v7);
  }
  v10 = ;

  if (v10)
  {
    v11 = [(UARPDynamicAssetPersonalization *)self processTssResponse:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)processTssResponse:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(UARPSuperBinaryAsset *)self->_im4mAsset payloads];
  v4 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v4)
  {
    v5 = v4;
    v36 = *v39;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v39 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v38 + 1) + 8 * i);
        v8 = [(UARPDynamicAssetPersonalization *)self buildTicketPrefixForPayload:v7];
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@", v8, @"Ticket"];
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v43 = "[UARPDynamicAssetPersonalization processTssResponse:]";
          v44 = 2112;
          v45 = v9;
          _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s: rebuilt ticket name is %@", buf, 0x16u);
        }

        v11 = self->_log;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          keyNameManifest = self->_keyNameManifest;
          *buf = 136315394;
          v43 = "[UARPDynamicAssetPersonalization processTssResponse:]";
          v44 = 2112;
          v45 = keyNameManifest;
          _os_log_impl(&dword_247AA7000, v11, OS_LOG_TYPE_INFO, "%s: composed ticket name is %@", buf, 0x16u);
        }

        v13 = [v37 objectForKeyedSubscript:v9];
        v14 = self->_log;
        if (!v13)
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            [(UARPDynamicAssetPersonalization *)v14 processTssResponse:v18, v19, v20, v21, v22, v23, v24];
          }

          goto LABEL_25;
        }

        v15 = v13;
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_247AA7000, v14, OS_LOG_TYPE_INFO, "IM4M: TSS Response Bundle is ", buf, 2u);
        }

        v16 = self->_log;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v43 = v15;
          _os_log_impl(&dword_247AA7000, v16, OS_LOG_TYPE_INFO, "IM4M: %@", buf, 0xCu);
        }

        if (([v7 setPayloadToData:v15] & 1) == 0)
        {
          v25 = self->_log;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [(UARPDynamicAssetPersonalization *)v25 processTssResponse:v26, v27, v28, v29, v30, v31, v32];
          }

LABEL_25:
          v17 = 0;
          goto LABEL_26;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
      v17 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 1;
  }

LABEL_26:

  v33 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)prepareDynamicAsset:(id)a3 error:(id *)a4
{
  im4mAsset = self->_im4mAsset;
  if (im4mAsset)
  {
    LOBYTE(im4mAsset) = [(UARPSuperBinaryAsset *)im4mAsset writeToURL:a3 error:a4];
  }

  return im4mAsset;
}

- (BOOL)compareTssResponse:(id)a3
{
  v78 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = [(NSMutableArray *)self->_options firstObject];
  v7 = [v5 dictionaryWithDictionary:v6];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v71 = "[UARPDynamicAssetPersonalization compareTssResponse:]";
    v72 = 2112;
    v73 = v7;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s TSS Options %@", buf, 0x16u);
  }

  v9 = self->_log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v71 = "[UARPDynamicAssetPersonalization compareTssResponse:]";
    v72 = 2112;
    v73 = v4;
    _os_log_impl(&dword_247AA7000, v9, OS_LOG_TYPE_INFO, "%s TSS Response %@", buf, 0x16u);
  }

  v10 = [(NSString *)v7 objectForKeyedSubscript:self->_keyNameBoardID];
  v11 = [(NSString *)v4 objectForKeyedSubscript:self->_keyNameBoardID];
  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    keyNameBoardID = self->_keyNameBoardID;
    *buf = 136315906;
    v71 = "[UARPDynamicAssetPersonalization compareTssResponse:]";
    v72 = 2112;
    v73 = keyNameBoardID;
    v74 = 2112;
    v75 = v10;
    v76 = 2112;
    v77 = v11;
    _os_log_impl(&dword_247AA7000, v12, OS_LOG_TYPE_INFO, "%s compare %@; %@ vs %@", buf, 0x2Au);
  }

  if (v10 && !v11)
  {
    v14 = self->_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = self->_keyNameBoardID;
      *buf = 136315650;
      v71 = "[UARPDynamicAssetPersonalization compareTssResponse:]";
      v72 = 2112;
      v73 = v15;
      v74 = 2112;
      v75 = v10;
      v16 = "%s %@; %@, missing in TSS response";
      v17 = v14;
      v18 = 32;
LABEL_20:
      _os_log_impl(&dword_247AA7000, v17, OS_LOG_TYPE_INFO, v16, buf, v18);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if ([v10 isEqualToNumber:v11])
  {
    v19 = [(NSString *)v7 objectForKeyedSubscript:self->_keyNameChipID];
    v20 = [(NSString *)v4 objectForKeyedSubscript:self->_keyNameChipID];
    v21 = self->_log;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      keyNameChipID = self->_keyNameChipID;
      *buf = 136315906;
      v71 = "[UARPDynamicAssetPersonalization compareTssResponse:]";
      v72 = 2112;
      v73 = keyNameChipID;
      v74 = 2112;
      v75 = v19;
      v76 = 2112;
      v77 = v20;
      _os_log_impl(&dword_247AA7000, v21, OS_LOG_TYPE_INFO, "%s compare %@; %@ vs %@", buf, 0x2Au);
    }

    if (v19 && !v20)
    {
      v23 = self->_log;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = self->_keyNameBoardID;
        *buf = 136315650;
        v71 = "[UARPDynamicAssetPersonalization compareTssResponse:]";
        v72 = 2112;
        v73 = v24;
        v74 = 2112;
        v75 = v19;
        v25 = "%s %@; %@, missing in TSS response";
        v26 = v23;
        v27 = 32;
LABEL_31:
        _os_log_impl(&dword_247AA7000, v26, OS_LOG_TYPE_INFO, v25, buf, v27);
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    if (([v19 isEqualToNumber:v20] & 1) == 0)
    {
      v40 = self->_log;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = self->_keyNameChipID;
        *buf = 136315906;
        v71 = "[UARPDynamicAssetPersonalization compareTssResponse:]";
        v72 = 2112;
        v73 = v41;
        v74 = 2112;
        v75 = v19;
        v76 = 2112;
        v77 = v20;
        v25 = "%s %@; NOT EQUAL %@ vs %@";
        v26 = v40;
        v27 = 42;
        goto LABEL_31;
      }

LABEL_32:
      v30 = 0;
LABEL_66:

      goto LABEL_67;
    }

    v31 = [(NSString *)v7 objectForKeyedSubscript:self->_keyNameECID];
    v32 = [(NSString *)v4 objectForKeyedSubscript:self->_keyNameECID];
    v33 = self->_log;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      keyNameECID = self->_keyNameECID;
      *buf = 136315906;
      v71 = "[UARPDynamicAssetPersonalization compareTssResponse:]";
      v72 = 2112;
      v73 = keyNameECID;
      v74 = 2112;
      v75 = v31;
      v76 = 2112;
      v77 = v32;
      _os_log_impl(&dword_247AA7000, v33, OS_LOG_TYPE_INFO, "%s compare %@; %@ vs %@", buf, 0x2Au);
    }

    if (v31 && !v32)
    {
      v35 = self->_log;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = self->_keyNameBoardID;
        *buf = 136315650;
        v71 = "[UARPDynamicAssetPersonalization compareTssResponse:]";
        v72 = 2112;
        v73 = v36;
        v74 = 2112;
        v75 = v31;
        v37 = "%s %@; %@, missing in TSS response";
        v38 = v35;
        v39 = 32;
LABEL_42:
        _os_log_impl(&dword_247AA7000, v38, OS_LOG_TYPE_INFO, v37, buf, v39);
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    if (([v31 isEqualToNumber:v32] & 1) == 0)
    {
      v50 = self->_log;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v51 = self->_keyNameECID;
        *buf = 136315906;
        v71 = "[UARPDynamicAssetPersonalization compareTssResponse:]";
        v72 = 2112;
        v73 = v51;
        v74 = 2112;
        v75 = v31;
        v76 = 2112;
        v77 = v32;
        v37 = "%s %@; NOT EQUAL %@ vs %@";
        v38 = v50;
        v39 = 42;
        goto LABEL_42;
      }

LABEL_43:
      v30 = 0;
LABEL_65:

      goto LABEL_66;
    }

    v68 = v32;
    v42 = [(NSString *)v7 objectForKeyedSubscript:self->_keyNameNonce];
    v69 = [(NSString *)v4 objectForKeyedSubscript:self->_keyNameNonce];
    v43 = self->_log;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      keyNameNonce = self->_keyNameNonce;
      *buf = 136315906;
      v71 = "[UARPDynamicAssetPersonalization compareTssResponse:]";
      v72 = 2112;
      v73 = keyNameNonce;
      v74 = 2112;
      v75 = v42;
      v76 = 2112;
      v77 = v69;
      _os_log_impl(&dword_247AA7000, v43, OS_LOG_TYPE_INFO, "%s compare %@; %@ vs %@", buf, 0x2Au);
    }

    if (v42 && !v69)
    {
      v45 = self->_log;
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
LABEL_54:
        v30 = 0;
LABEL_64:

        v32 = v68;
        goto LABEL_65;
      }

      v46 = self->_keyNameBoardID;
      *buf = 136315650;
      v71 = "[UARPDynamicAssetPersonalization compareTssResponse:]";
      v72 = 2112;
      v73 = v46;
      v74 = 2112;
      v75 = v42;
      v47 = "%s %@; %@, missing in TSS response";
      v48 = v45;
      v49 = 32;
LABEL_53:
      _os_log_impl(&dword_247AA7000, v48, OS_LOG_TYPE_INFO, v47, buf, v49);
      goto LABEL_54;
    }

    v67 = v42;
    if (([v42 isEqualToData:v69] & 1) == 0)
    {
      v60 = self->_log;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        v61 = self->_keyNameNonce;
        *buf = 136315906;
        v71 = "[UARPDynamicAssetPersonalization compareTssResponse:]";
        v72 = 2112;
        v73 = v61;
        v74 = 2112;
        v75 = v42;
        v76 = 2112;
        v77 = v69;
        v47 = "%s %@; NOT EQUAL %@ vs %@";
        v48 = v60;
        v49 = 42;
        goto LABEL_53;
      }

      v30 = 0;
LABEL_63:
      v42 = v67;
      goto LABEL_64;
    }

    v52 = [(NSString *)v7 objectForKeyedSubscript:self->_keyNameTicket];
    v66 = [(NSString *)v4 objectForKeyedSubscript:self->_keyNameTicket];
    v53 = self->_log;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      keyNameTicket = self->_keyNameTicket;
      *buf = 136315906;
      v71 = "[UARPDynamicAssetPersonalization compareTssResponse:]";
      v72 = 2112;
      v73 = keyNameTicket;
      v74 = 2112;
      v75 = v52;
      v76 = 2112;
      v77 = v66;
      _os_log_impl(&dword_247AA7000, v53, OS_LOG_TYPE_INFO, "%s compare %@; %@ vs %@", buf, 0x2Au);
    }

    if (!v52 || v66)
    {
      if ([v52 isEqualToNumber:{v66, v66}])
      {
        v30 = 1;
LABEL_62:

        goto LABEL_63;
      }

      v62 = self->_log;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        v63 = self->_keyNameTicket;
        *buf = 136315906;
        v71 = "[UARPDynamicAssetPersonalization compareTssResponse:]";
        v72 = 2112;
        v73 = v63;
        v74 = 2112;
        v75 = v52;
        v76 = 2112;
        v77 = v66;
        v57 = "%s %@; NOT EQUAL %@ vs %@";
        v58 = v62;
        v59 = 42;
        goto LABEL_60;
      }
    }

    else
    {
      v55 = self->_log;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = self->_keyNameBoardID;
        *buf = 136315650;
        v71 = "[UARPDynamicAssetPersonalization compareTssResponse:]";
        v72 = 2112;
        v73 = v56;
        v74 = 2112;
        v75 = v52;
        v57 = "%s %@; %@, missing in TSS response";
        v58 = v55;
        v59 = 32;
LABEL_60:
        _os_log_impl(&dword_247AA7000, v58, OS_LOG_TYPE_INFO, v57, buf, v59);
      }
    }

    v30 = 0;
    goto LABEL_62;
  }

  v28 = self->_log;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = self->_keyNameBoardID;
    *buf = 136315906;
    v71 = "[UARPDynamicAssetPersonalization compareTssResponse:]";
    v72 = 2112;
    v73 = v29;
    v74 = 2112;
    v75 = v10;
    v76 = 2112;
    v77 = v11;
    v16 = "%s %@; NOT EQUAL %@ vs %@";
    v17 = v28;
    v18 = 42;
    goto LABEL_20;
  }

LABEL_21:
  v30 = 0;
LABEL_67:

  v64 = *MEMORY[0x277D85DE8];
  return v30;
}

- (void)processDynamicAsset:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a1, a3, "%s; failed to process dynamic asset", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)processTssResponse:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a1, a3, "%s: could not set payload data to bundle", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)processTssResponse:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a1, a3, "%s: tatsu response provides no manifest", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end