@interface ENTestResultUploadRequest
+ (id)uploadRequestWithCertificate:(id)certificate healthAuthorityID:(id)d revisionToken:(id)token symmetricKey:(id)key temporaryExposureKeys:(id)keys userMetadata:(id)metadata requestURL:(id)l URLSession:(id)self0 queue:(id)self1 error:(id *)self2;
- (id)bodyJSON;
- (id)handleResponse:(id)response body:(id)body;
@end

@implementation ENTestResultUploadRequest

+ (id)uploadRequestWithCertificate:(id)certificate healthAuthorityID:(id)d revisionToken:(id)token symmetricKey:(id)key temporaryExposureKeys:(id)keys userMetadata:(id)metadata requestURL:(id)l URLSession:(id)self0 queue:(id)self1 error:(id *)self2
{
  metadataCopy = metadata;
  v18 = *MEMORY[0x277CC5BB0];
  queueCopy = queue;
  sessionCopy = session;
  lCopy = l;
  keysCopy = keys;
  keyCopy = key;
  tokenCopy = token;
  dCopy = d;
  certificateCopy = certificate;
  CFDateGetTypeID();
  v49 = metadataCopy;
  v26 = CFDictionaryGetTypedValue();
  v27 = [[self alloc] initWithRequestURL:lCopy URLSession:sessionCopy queue:queueCopy];

  v28 = [certificateCopy copy];
  v29 = *(v27 + 80);
  *(v27 + 80) = v28;

  v30 = [dCopy copy];
  v31 = *(v27 + 88);
  *(v27 + 88) = v30;

  v32 = [tokenCopy copy];
  v33 = *(v27 + 96);
  *(v27 + 96) = v32;

  v34 = [keyCopy copy];
  v35 = *(v27 + 104);
  *(v27 + 104) = v34;

  v36 = [keysCopy copy];
  v37 = *(v27 + 112);
  *(v27 + 112) = v36;

  if (v26)
  {
    v38 = MEMORY[0x277CCABA8];
    [v26 timeIntervalSinceReferenceDate];
    v40 = [v38 numberWithUnsignedInt:144 * (((v39 + *MEMORY[0x277CBECD8]) / 600.0) / 0x90)];
    v41 = *(v27 + 120);
    *(v27 + 120) = v40;
  }

  v42 = *MEMORY[0x277CC5BC8];
  *(v27 + 128) = CFDictionaryGetInt64() != 0;
  v43 = [v49 objectForKeyedSubscript:*MEMORY[0x277CC5BA0]];

  if (v43)
  {
    v44 = [MEMORY[0x277CCABA8] numberWithBool:CFDictionaryGetInt64() != 0];
    v45 = *(v27 + 136);
    *(v27 + 136) = v44;
  }

  return v27;
}

- (id)bodyJSON
{
  v31 = *MEMORY[0x277D85DE8];
  v23 = objc_alloc_init(MEMORY[0x277CBEB10]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_temporaryExposureKeys;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        v28[0] = @"key";
        keyData = [v7 keyData];
        v9 = [keyData base64EncodedStringWithOptions:0];
        v29[0] = v9;
        v28[1] = @"rollingStartNumber";
        v10 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(v7, "rollingStartNumber")}];
        v29[1] = v10;
        v28[2] = @"rollingPeriod";
        v11 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(v7, "rollingPeriod")}];
        v29[2] = v11;
        v12 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v29 forKeys:v28 count:3];
        [v23 addObject:v12];
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v4);
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB30]);
  [v13 setObject:self->_healthAuthorityID forKeyedSubscript:@"healthAuthorityID"];
  v14 = [(NSData *)self->_symmetricKey base64EncodedStringWithOptions:0];
  [v13 setObject:v14 forKeyedSubscript:@"hmackey"];

  [v13 setObject:v23 forKeyedSubscript:@"temporaryExposureKeys"];
  v15 = [MEMORY[0x277CCABA8] numberWithBool:self->_userDidTravel];
  [v13 setObject:v15 forKeyedSubscript:@"traveler"];

  [v13 setObject:self->_certificate forKeyedSubscript:@"verificationPayload"];
  requestRevisionToken = self->_requestRevisionToken;
  if (requestRevisionToken)
  {
    [v13 setObject:requestRevisionToken forKeyedSubscript:@"revisionToken"];
  }

  symptomOnsetInterval = self->_symptomOnsetInterval;
  if (symptomOnsetInterval)
  {
    [v13 setObject:symptomOnsetInterval forKeyedSubscript:@"symptomOnsetInterval"];
  }

  isUserVaccinated = self->_isUserVaccinated;
  if (isUserVaccinated)
  {
    [v13 setObject:isUserVaccinated forKeyedSubscript:@"vaccinated"];
  }

  v19 = [v13 copy];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)handleResponse:(id)response body:(id)body
{
  bodyCopy = body;
  CFStringGetTypeID();
  v6 = CFDictionaryGetTypedValue();
  responseRevisionToken = self->_responseRevisionToken;
  self->_responseRevisionToken = v6;

  v8 = NSDictionaryGetNSNumber();

  insertedExposures = self->_insertedExposures;
  self->_insertedExposures = v8;

  return 0;
}

@end