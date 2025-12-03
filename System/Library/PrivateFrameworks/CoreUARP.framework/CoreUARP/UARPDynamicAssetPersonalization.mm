@interface UARPDynamicAssetPersonalization
- (BOOL)compareTssResponse:(id)response;
- (BOOL)prepareDynamicAsset:(id)asset error:(id *)error;
- (BOOL)processDynamicAsset:(id *)asset;
- (BOOL)processTssResponse:(id)response;
- (BOOL)tssRequest:(id)request error:(id *)error;
- (BOOL)tssRequest:(id)request error:(id *)error authListed:(BOOL)listed;
- (NSDictionary)options;
- (UARPDynamicAssetPersonalization)init;
- (UARPDynamicAssetPersonalization)initWithEndpoint:(id)endpoint url:(id)url tatsuServerURL:(id)l;
- (id)buildKey:(id)key forPayload:(id)payload;
- (id)buildTicketPrefixForPayload:(id)payload;
- (int64_t)assetNumber;
@end

@implementation UARPDynamicAssetPersonalization

- (UARPDynamicAssetPersonalization)init
{
  [(UARPDynamicAssetPersonalization *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPDynamicAssetPersonalization)initWithEndpoint:(id)endpoint url:(id)url tatsuServerURL:(id)l
{
  endpointCopy = endpoint;
  urlCopy = url;
  lCopy = l;
  v22.receiver = self;
  v22.super_class = UARPDynamicAssetPersonalization;
  v12 = [(UARPDynamicAssetPersonalization *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_endpoint, endpoint);
    objc_storeStrong(&v13->_url, url);
    objc_storeStrong(&v13->_tatsuServerURL, l);
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
  tlvs = [(UARPSuperBinaryAsset *)self->_im4mAsset tlvs];
  v3 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403906 tlvs:tlvs];

  if (v3)
  {
    valueAsNumber = [v3 valueAsNumber];
    v5 = valueAsNumber;
    if (valueAsNumber)
    {
      integerValue = [valueAsNumber integerValue];
    }

    else
    {
      integerValue = -1;
    }
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (NSDictionary)options
{
  v2 = MEMORY[0x277CBEAC0];
  firstObject = [(NSMutableArray *)self->_options firstObject];
  v4 = [v2 dictionaryWithDictionary:firstObject];

  return v4;
}

- (id)buildTicketPrefixForPayload:(id)payload
{
  payloadCopy = payload;
  tlvs = [payloadCopy tlvs];
  v5 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403907 tlvs:tlvs];

  if (v5)
  {
    valueAsString = [v5 valueAsString];
  }

  else
  {
    valueAsString = 0;
  }

  tlvs2 = [payloadCopy tlvs];
  v8 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403942 tlvs:tlvs2];

  if (v8)
  {
    valueAsNumber = [v8 valueAsNumber];
    v10 = [valueAsNumber unsignedCharValue] != 0;
  }

  else
  {
    v10 = 0;
  }

  tlvs3 = [payloadCopy tlvs];
  v12 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403941 tlvs:tlvs3];

  if (v12)
  {
    valueAsNumber2 = [v12 valueAsNumber];
    unsignedLongValue = [valueAsNumber2 unsignedLongValue];
  }

  else
  {
    unsignedLongValue = 1;
  }

  v15 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@", valueAsString];
  v16 = v15;
  if (v10)
  {
    [v15 appendFormat:@"%lu", unsignedLongValue];
  }

  v17 = [MEMORY[0x277CCACA8] stringWithString:v16];

  return v17;
}

- (id)buildKey:(id)key forPayload:(id)payload
{
  keyCopy = key;
  payloadCopy = payload;
  tlvs = [payloadCopy tlvs];
  v8 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403907 tlvs:tlvs];

  if (v8)
  {
    valueAsString = [v8 valueAsString];
  }

  else
  {
    valueAsString = 0;
  }

  v26 = keyCopy;
  tlvs2 = [payloadCopy tlvs];
  v11 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403937 tlvs:tlvs2];

  if (v11)
  {
    valueAsNumber = [v11 valueAsNumber];
    v13 = [valueAsNumber unsignedCharValue] != 0;
  }

  else
  {
    v13 = 0;
  }

  tlvs3 = [payloadCopy tlvs];
  v15 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403938 tlvs:tlvs3];

  if (v15)
  {
    valueAsNumber2 = [v15 valueAsNumber];
    v17 = [valueAsNumber2 unsignedCharValue] != 0;
  }

  else
  {
    v17 = 0;
  }

  tlvs4 = [payloadCopy tlvs];
  v19 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403941 tlvs:tlvs4];

  if (v19)
  {
    valueAsNumber3 = [v19 valueAsNumber];
    unsignedLongValue = [valueAsNumber3 unsignedLongValue];
  }

  else
  {
    unsignedLongValue = 1;
  }

  v22 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@", valueAsString];
  v23 = v22;
  if (v13)
  {
    [v22 appendFormat:@"%lu", unsignedLongValue];
  }

  [v23 appendFormat:@", %@", v26];
  if (v17)
  {
    [v23 appendFormat:@", %lu", unsignedLongValue];
  }

  v24 = [MEMORY[0x277CCACA8] stringWithString:v23];

  return v24;
}

- (BOOL)processDynamicAsset:(id *)asset
{
  selfCopy = self;
  v127 = *MEMORY[0x277D85DE8];
  v5 = [[UARPSuperBinaryAsset alloc] initWithURL:self->_url];
  im4mAsset = selfCopy->_im4mAsset;
  selfCopy->_im4mAsset = v5;

  v7 = [(UARPSuperBinaryAsset *)selfCopy->_im4mAsset expandHeadersAndTLVs:asset];
  log = selfCopy->_log;
  v100 = v7;
  if (v7)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v9 = selfCopy->_im4mAsset;
      *buf = 136315394;
      v124 = "[UARPDynamicAssetPersonalization processDynamicAsset:]";
      v125 = 2112;
      v126 = v9;
      _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s; RX IM4M dynamic asset; %@", buf, 0x16u);
    }

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    options = selfCopy->_options;
    selfCopy->_options = v10;

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    obj = [(UARPSuperBinaryAsset *)selfCopy->_im4mAsset payloads];
    v103 = [obj countByEnumeratingWithState:&v117 objects:v122 count:16];
    if (v103)
    {
      v102 = *v118;
      v107 = selfCopy;
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
          v15 = [(UARPDynamicAssetPersonalization *)selfCopy buildTicketPrefixForPayload:v13];
          if (v15)
          {
            v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@", v15, @"Ticket"];
            keyNameManifest = selfCopy->_keyNameManifest;
            selfCopy->_keyNameManifest = v16;

            v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"@%@", selfCopy->_keyNameManifest];
            keyNameTicket = selfCopy->_keyNameTicket;
            selfCopy->_keyNameTicket = v18;

            [v14 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:selfCopy->_keyNameTicket];
          }

          v20 = [(UARPDynamicAssetPersonalization *)selfCopy buildKey:@"BoardID" forPayload:v13];
          keyNameBoardID = selfCopy->_keyNameBoardID;
          selfCopy->_keyNameBoardID = v20;

          tlvs = [v13 tlvs];
          v23 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403908 tlvs:tlvs];

          if (selfCopy->_keyNameBoardID && v23)
          {
            valueAsNumber = [v23 valueAsNumber];
            [v14 setObject:valueAsNumber forKeyedSubscript:selfCopy->_keyNameBoardID];
          }

          v25 = [(UARPDynamicAssetPersonalization *)selfCopy buildKey:@"ChipID" forPayload:v110];
          keyNameChipID = selfCopy->_keyNameChipID;
          selfCopy->_keyNameChipID = v25;

          tlvs2 = [v110 tlvs];
          v28 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403909 tlvs:tlvs2];

          if (selfCopy->_keyNameChipID && v28)
          {
            valueAsNumber2 = [v28 valueAsNumber];
            [v14 setObject:valueAsNumber2 forKeyedSubscript:selfCopy->_keyNameChipID];
          }

          v30 = [(UARPDynamicAssetPersonalization *)selfCopy buildKey:@"ECID" forPayload:v110];
          keyNameECID = selfCopy->_keyNameECID;
          selfCopy->_keyNameECID = v30;

          tlvs3 = [v110 tlvs];
          v33 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403910 tlvs:tlvs3];

          if (selfCopy->_keyNameECID && v33)
          {
            valueAsNumber3 = [v33 valueAsNumber];
            [v14 setObject:valueAsNumber3 forKeyedSubscript:selfCopy->_keyNameECID];
          }

          v35 = [(UARPDynamicAssetPersonalization *)selfCopy buildKey:@"Nonce" forPayload:v110];
          keyNameNonce = selfCopy->_keyNameNonce;
          selfCopy->_keyNameNonce = v35;

          tlvs4 = [v110 tlvs];
          v38 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403912 tlvs:tlvs4];

          if (selfCopy->_keyNameNonce && v38)
          {
            valueAsData = [v38 valueAsData];
            [v14 setObject:valueAsData forKeyedSubscript:selfCopy->_keyNameNonce];
          }

          v40 = [(UARPDynamicAssetPersonalization *)selfCopy buildKey:@"ProductionMode" forPayload:v110];
          keyNameProductionMode = selfCopy->_keyNameProductionMode;
          selfCopy->_keyNameProductionMode = v40;

          tlvs5 = [v110 tlvs];
          v43 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403915 tlvs:tlvs5];

          if (selfCopy->_keyNameProductionMode && v43)
          {
            valueAsNumber4 = [v43 valueAsNumber];
            if ([valueAsNumber4 BOOLValue])
            {
              v45 = MEMORY[0x277CBEC38];
            }

            else
            {
              v45 = MEMORY[0x277CBEC28];
            }

            [v14 setObject:v45 forKeyedSubscript:selfCopy->_keyNameProductionMode];
          }

          v46 = [(UARPDynamicAssetPersonalization *)selfCopy buildKey:@"SecurityDomain" forPayload:v110];
          keyNameSecurityDomain = selfCopy->_keyNameSecurityDomain;
          selfCopy->_keyNameSecurityDomain = v46;

          tlvs6 = [v110 tlvs];
          v49 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403913 tlvs:tlvs6];

          if (selfCopy->_keyNameSecurityDomain && v49)
          {
            valueAsNumber5 = [v49 valueAsNumber];
            [v14 setObject:valueAsNumber5 forKeyedSubscript:selfCopy->_keyNameSecurityDomain];
          }

          v51 = [(UARPDynamicAssetPersonalization *)selfCopy buildKey:@"SecurityMode" forPayload:v110];
          keyNameSecurityMode = selfCopy->_keyNameSecurityMode;
          selfCopy->_keyNameSecurityMode = v51;

          tlvs7 = [v110 tlvs];
          v54 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403914 tlvs:tlvs7];

          if (selfCopy->_keyNameSecurityMode && v54)
          {
            valueAsNumber6 = [v54 valueAsNumber];
            if ([valueAsNumber6 BOOLValue])
            {
              v56 = MEMORY[0x277CBEC38];
            }

            else
            {
              v56 = MEMORY[0x277CBEC28];
            }

            [v14 setObject:v56 forKeyedSubscript:selfCopy->_keyNameSecurityMode];
          }

          v104 = v15;

          v57 = [(UARPDynamicAssetPersonalization *)selfCopy buildKey:@"SocLiveNonce" forPayload:v110];
          keyNameSoCLiveNonce = selfCopy->_keyNameSoCLiveNonce;
          selfCopy->_keyNameSoCLiveNonce = v57;

          tlvs8 = [v110 tlvs];
          v60 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403928 tlvs:tlvs8];

          if (selfCopy->_keyNameSoCLiveNonce && v60)
          {
            valueAsNumber7 = [v60 valueAsNumber];
            if ([valueAsNumber7 BOOLValue])
            {
              v62 = MEMORY[0x277CBEC38];
            }

            else
            {
              v62 = MEMORY[0x277CBEC28];
            }

            [v14 setObject:v62 forKeyedSubscript:selfCopy->_keyNameSoCLiveNonce];
          }

          tlvs9 = [v110 tlvs];
          v64 = [UARPSuperBinaryAssetTLV findTLVsWithType:2293403920 tlvs:tlvs9];

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

                valueAsTLVs = [*(*(&v113 + 1) + 8 * i) valueAsTLVs];
                v67 = objc_alloc_init(MEMORY[0x277CBEB38]);
                v68 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403922 tlvs:valueAsTLVs];
                valueAsString = [v68 valueAsString];

                v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"Digest"];
                v70 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403923 tlvs:valueAsTLVs];
                valueAsData2 = [v70 valueAsData];
                [v67 setObject:valueAsData2 forKeyedSubscript:v69];

                v72 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"EPRO"];
                v73 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403926 tlvs:valueAsTLVs];
                v74 = v73;
                if (v73)
                {
                  valueAsNumber8 = [v73 valueAsNumber];
                  if ([valueAsNumber8 BOOLValue])
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
                v78 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403925 tlvs:valueAsTLVs];
                v79 = v78;
                if (v78)
                {
                  valueAsNumber9 = [v78 valueAsNumber];
                  if ([valueAsNumber9 BOOLValue])
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
                v83 = [UARPSuperBinaryAssetTLV findTLVWithType:2293403927 tlvs:valueAsTLVs];
                v84 = v83;
                if (v83)
                {
                  valueAsNumber10 = [v83 valueAsNumber];
                  if ([valueAsNumber10 BOOLValue])
                  {
                    v86 = MEMORY[0x277CBEC38];
                  }

                  else
                  {
                    v86 = MEMORY[0x277CBEC28];
                  }

                  [v67 setObject:v86 forKeyedSubscript:v82];
                }

                selfCopy = v107;
                v87 = [(UARPDynamicAssetPersonalization *)v107 buildKey:valueAsString forPayload:v110];
                v14 = v109;
                [v109 setObject:v67 forKeyedSubscript:v87];
              }

              v111 = [v106 countByEnumeratingWithState:&v113 objects:v121 count:16];
            }

            while (v111);
          }

          v88 = selfCopy->_log;
          if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_247AA7000, v88, OS_LOG_TYPE_INFO, "Personalization Options", buf, 2u);
          }

          v89 = selfCopy->_log;
          if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v124 = v14;
            _os_log_impl(&dword_247AA7000, v89, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }

          v90 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v14];
          [(NSMutableArray *)selfCopy->_options addObject:v90];

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

- (BOOL)tssRequest:(id)request error:(id *)error
{
  options = self->_options;
  requestCopy = request;
  firstObject = [(NSMutableArray *)options firstObject];
  v8 = UARPPersonalizationTSSRequestWithSigningServer(firstObject, requestCopy);

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

- (BOOL)tssRequest:(id)request error:(id *)error authListed:(BOOL)listed
{
  listedCopy = listed;
  requestCopy = request;
  firstObject = [(NSMutableArray *)self->_options firstObject];
  v9 = firstObject;
  if (listedCopy)
  {
    UARPPersonalizationTSSRequestWithSigningServerAuthListed(firstObject, requestCopy);
  }

  else
  {
    UARPPersonalizationTSSRequestWithSigningServer(firstObject, requestCopy);
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

- (BOOL)processTssResponse:(id)response
{
  v47 = *MEMORY[0x277D85DE8];
  responseCopy = response;
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

        v13 = [responseCopy objectForKeyedSubscript:v9];
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

- (BOOL)prepareDynamicAsset:(id)asset error:(id *)error
{
  im4mAsset = self->_im4mAsset;
  if (im4mAsset)
  {
    LOBYTE(im4mAsset) = [(UARPSuperBinaryAsset *)im4mAsset writeToURL:asset error:error];
  }

  return im4mAsset;
}

- (BOOL)compareTssResponse:(id)response
{
  v78 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = MEMORY[0x277CBEAC0];
  firstObject = [(NSMutableArray *)self->_options firstObject];
  v7 = [v5 dictionaryWithDictionary:firstObject];

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
    v73 = responseCopy;
    _os_log_impl(&dword_247AA7000, v9, OS_LOG_TYPE_INFO, "%s TSS Response %@", buf, 0x16u);
  }

  v10 = [(NSString *)v7 objectForKeyedSubscript:self->_keyNameBoardID];
  v11 = [(NSString *)responseCopy objectForKeyedSubscript:self->_keyNameBoardID];
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
    v20 = [(NSString *)responseCopy objectForKeyedSubscript:self->_keyNameChipID];
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
    v32 = [(NSString *)responseCopy objectForKeyedSubscript:self->_keyNameECID];
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
    v69 = [(NSString *)responseCopy objectForKeyedSubscript:self->_keyNameNonce];
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
    v66 = [(NSString *)responseCopy objectForKeyedSubscript:self->_keyNameTicket];
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