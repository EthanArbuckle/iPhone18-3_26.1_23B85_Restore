@interface CKCDPCodeServiceRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataProtectionAsString:(int)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)serializationFormatAsString:(int)a3;
- (int)StringAsDataProtection:(id)a3;
- (int)StringAsSerializationFormat:(id)a3;
- (int)dataProtection;
- (int)serializationFormat;
- (unint64_t)hash;
- (void)addClientConfig:(id)a3;
- (void)clearOneofValuesForDataProtection;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSerializationFormat:(BOOL)a3;
- (void)setProtectedCloudComputeMetadata:(id)a3;
- (void)setTrustedTargetCryptoMetadata:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKCDPCodeServiceRequest

- (int)serializationFormat
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_serializationFormat;
  }

  else
  {
    return 1;
  }
}

- (void)setHasSerializationFormat:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)serializationFormatAsString:(int)a3
{
  if (a3 == 1)
  {
    v4 = @"PROTO";
  }

  else if (a3 == 2)
  {
    v4 = @"JSON";
  }

  else
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  return v4;
}

- (int)StringAsSerializationFormat:(id)a3
{
  v3 = a3;
  v6 = 1;
  if ((objc_msgSend_isEqualToString_(v3, v4, @"PROTO") & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(v3, v5, @"JSON"))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (void)addClientConfig:(id)a3
{
  v4 = a3;
  clientConfigs = self->_clientConfigs;
  v8 = v4;
  if (!clientConfigs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_clientConfigs;
    self->_clientConfigs = v6;

    v4 = v8;
    clientConfigs = self->_clientConfigs;
  }

  objc_msgSend_addObject_(clientConfigs, v4, v4);
}

- (void)setProtectedCloudComputeMetadata:(id)a3
{
  v4 = a3;
  objc_msgSend_clearOneofValuesForDataProtection(self, v5, v6);
  *&self->_has |= 1u;
  self->_dataProtection = 1;
  protectedCloudComputeMetadata = self->_protectedCloudComputeMetadata;
  self->_protectedCloudComputeMetadata = v4;
}

- (void)setTrustedTargetCryptoMetadata:(id)a3
{
  v4 = a3;
  objc_msgSend_clearOneofValuesForDataProtection(self, v5, v6);
  *&self->_has |= 1u;
  self->_dataProtection = 2;
  trustedTargetCryptoMetadata = self->_trustedTargetCryptoMetadata;
  self->_trustedTargetCryptoMetadata = v4;
}

- (int)dataProtection
{
  if (*&self->_has)
  {
    return self->_dataProtection;
  }

  else
  {
    return 0;
  }
}

- (id)dataProtectionAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_27854C708[a3];
  }

  return v4;
}

- (int)StringAsDataProtection:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"PBUNSET"))
  {
    v6 = 0;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"protectedCloudComputeMetadata"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"trustedTargetCryptoMetadata"))
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)clearOneofValuesForDataProtection
{
  *&self->_has &= ~1u;
  self->_dataProtection = 0;
  protectedCloudComputeMetadata = self->_protectedCloudComputeMetadata;
  self->_protectedCloudComputeMetadata = 0;

  trustedTargetCryptoMetadata = self->_trustedTargetCryptoMetadata;
  self->_trustedTargetCryptoMetadata = 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKCDPCodeServiceRequest;
  v4 = [(CKCDPCodeServiceRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  serviceName = self->_serviceName;
  if (serviceName)
  {
    objc_msgSend_setObject_forKey_(v4, v5, serviceName, @"serviceName");
  }

  functionName = self->_functionName;
  if (functionName)
  {
    objc_msgSend_setObject_forKey_(v6, v5, functionName, @"functionName");
  }

  serializedParameters = self->_serializedParameters;
  if (serializedParameters)
  {
    objc_msgSend_setObject_forKey_(v6, v5, serializedParameters, @"serializedParameters");
  }

  if ((*&self->_has & 2) != 0)
  {
    serializationFormat = self->_serializationFormat;
    if (serializationFormat == 1)
    {
      v11 = @"PROTO";
      objc_msgSend_setObject_forKey_(v6, v5, @"PROTO", @"serializationFormat");
    }

    else if (serializationFormat == 2)
    {
      v11 = @"JSON";
      objc_msgSend_setObject_forKey_(v6, v5, @"JSON", @"serializationFormat");
    }

    else
    {
      v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_serializationFormat);
      objc_msgSend_setObject_forKey_(v6, v12, v11, @"serializationFormat");
    }
  }

  if (objc_msgSend_count(self->_clientConfigs, v5, serializedParameters))
  {
    v15 = objc_alloc(MEMORY[0x277CBEB18]);
    v18 = objc_msgSend_count(self->_clientConfigs, v16, v17);
    v20 = objc_msgSend_initWithCapacity_(v15, v19, v18);
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v21 = self->_clientConfigs;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v57, v61, 16);
    if (v23)
    {
      v26 = v23;
      v27 = *v58;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v58 != v27)
          {
            objc_enumerationMutation(v21);
          }

          v29 = objc_msgSend_dictionaryRepresentation(*(*(&v57 + 1) + 8 * i), v24, v25);
          objc_msgSend_addObject_(v20, v30, v29);
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v57, v61, 16);
      }

      while (v26);
    }

    objc_msgSend_setObject_forKey_(v6, v31, v20, @"clientConfig");
  }

  accountConfig = self->_accountConfig;
  if (accountConfig)
  {
    v33 = objc_msgSend_dictionaryRepresentation(accountConfig, v13, v14);
    objc_msgSend_setObject_forKey_(v6, v34, v33, @"accountConfig");
  }

  requestContext = self->_requestContext;
  if (requestContext)
  {
    v36 = objc_msgSend_dictionaryRepresentation(requestContext, v13, v14);
    objc_msgSend_setObject_forKey_(v6, v37, v36, @"requestContext");
  }

  assetAuthorizeGetRequestOptions = self->_assetAuthorizeGetRequestOptions;
  if (assetAuthorizeGetRequestOptions)
  {
    v39 = objc_msgSend_dictionaryRepresentation(assetAuthorizeGetRequestOptions, v13, v14);
    objc_msgSend_setObject_forKey_(v6, v40, v39, @"assetAuthorizeGetRequestOptions");
  }

  attestationRequest = self->_attestationRequest;
  if (attestationRequest)
  {
    v42 = objc_msgSend_dictionaryRepresentation(attestationRequest, v13, v14);
    objc_msgSend_setObject_forKey_(v6, v43, v42, @"attestationRequest");
  }

  authInformation = self->_authInformation;
  if (authInformation)
  {
    v45 = objc_msgSend_dictionaryRepresentation(authInformation, v13, v14);
    objc_msgSend_setObject_forKey_(v6, v46, v45, @"authInformation");
  }

  protectedCloudComputeMetadata = self->_protectedCloudComputeMetadata;
  if (protectedCloudComputeMetadata)
  {
    v48 = objc_msgSend_dictionaryRepresentation(protectedCloudComputeMetadata, v13, v14);
    objc_msgSend_setObject_forKey_(v6, v49, v48, @"protectedCloudComputeMetadata");
  }

  trustedTargetCryptoMetadata = self->_trustedTargetCryptoMetadata;
  if (trustedTargetCryptoMetadata)
  {
    v51 = objc_msgSend_dictionaryRepresentation(trustedTargetCryptoMetadata, v13, v14);
    objc_msgSend_setObject_forKey_(v6, v52, v51, @"trustedTargetCryptoMetadata");
  }

  if (*&self->_has)
  {
    dataProtection = self->_dataProtection;
    if (dataProtection >= 3)
    {
      v54 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"(unknown: %i)", self->_dataProtection);
    }

    else
    {
      v54 = off_27854C708[dataProtection];
    }

    objc_msgSend_setObject_forKey_(v6, v13, v54, @"DataProtection");
  }

  v55 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)readFrom:(id)a3
{
  v5 = objc_msgSend_position(a3, a2, a3);
  if (v5 >= objc_msgSend_length(a3, v6, v7))
  {
    return objc_msgSend_hasError(a3, v8, v9) ^ 1;
  }

  while (2)
  {
    if (objc_msgSend_hasError(a3, v8, v9))
    {
      return objc_msgSend_hasError(a3, v8, v9) ^ 1;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      LOBYTE(v90) = 0;
      v13 = objc_msgSend_position(a3, v8, v9, v90) + 1;
      if (v13 >= objc_msgSend_position(a3, v14, v15) && (v18 = objc_msgSend_position(a3, v16, v17) + 1, v18 <= objc_msgSend_length(a3, v19, v20)))
      {
        v21 = objc_msgSend_data(a3, v16, v17);
        v24 = objc_msgSend_position(a3, v22, v23);
        objc_msgSend_getBytes_range_(v21, v25, &v90, v24, 1);

        v28 = objc_msgSend_position(a3, v26, v27);
        objc_msgSend_setPosition_(a3, v29, v28 + 1);
      }

      else
      {
        objc_msgSend__setError(a3, v16, v17);
      }

      v12 |= (v90 & 0x7F) << v10;
      if ((v90 & 0x80) == 0)
      {
        break;
      }

      v10 += 7;
      v30 = v11++ >= 9;
      if (v30)
      {
        v31 = 0;
        goto LABEL_15;
      }
    }

    v31 = objc_msgSend_hasError(a3, v8, v9) ? 0 : v12;
LABEL_15:
    if (objc_msgSend_hasError(a3, v8, v9))
    {
      return objc_msgSend_hasError(a3, v8, v9) ^ 1;
    }

    v9 = v31 & 7;
    if (v9 == 4)
    {
      return objc_msgSend_hasError(a3, v8, v9) ^ 1;
    }

    v32 = (v31 >> 3);
    switch((v31 >> 3))
    {
      case 0u:
        v33 = 0;
        while (1)
        {
          LOBYTE(v90) = 0;
          v34 = objc_msgSend_position(a3, v32, v9, v90) + 1;
          if (v34 >= objc_msgSend_position(a3, v35, v36) && (v39 = objc_msgSend_position(a3, v37, v38) + 1, v39 <= objc_msgSend_length(a3, v40, v41)))
          {
            v42 = objc_msgSend_data(a3, v37, v38);
            v45 = objc_msgSend_position(a3, v43, v44);
            objc_msgSend_getBytes_range_(v42, v46, &v90, v45, 1);

            v49 = objc_msgSend_position(a3, v47, v48);
            objc_msgSend_setPosition_(a3, v50, v49 + 1);
          }

          else
          {
            objc_msgSend__setError(a3, v37, v38);
          }

          if ((v90 & 0x80000000) == 0)
          {
            break;
          }

          if (v33++ > 8)
          {
            goto LABEL_66;
          }
        }

        objc_msgSend_hasError(a3, v32, v9);
        goto LABEL_66;
      case 4u:
        v79 = PBReaderReadString();
        v80 = 96;
        goto LABEL_53;
      case 5u:
        v79 = PBReaderReadString();
        v80 = 56;
        goto LABEL_53;
      case 6u:
        v79 = PBReaderReadData();
        v80 = 88;
LABEL_53:
        v81 = *(&self->super.super.super.isa + v80);
        *(&self->super.super.super.isa + v80) = v79;

        goto LABEL_66;
      case 8u:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *&self->_has |= 2u;
        while (1)
        {
          LOBYTE(v90) = 0;
          v57 = objc_msgSend_position(a3, v32, v9, v90) + 1;
          if (v57 >= objc_msgSend_position(a3, v58, v59) && (v62 = objc_msgSend_position(a3, v60, v61) + 1, v62 <= objc_msgSend_length(a3, v63, v64)))
          {
            v65 = objc_msgSend_data(a3, v60, v61);
            v68 = objc_msgSend_position(a3, v66, v67);
            objc_msgSend_getBytes_range_(v65, v69, &v90, v68, 1);

            v72 = objc_msgSend_position(a3, v70, v71);
            objc_msgSend_setPosition_(a3, v73, v72 + 1);
          }

          else
          {
            objc_msgSend__setError(a3, v60, v61);
          }

          v56 |= (v90 & 0x7F) << v54;
          if ((v90 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v30 = v55++ >= 9;
          if (v30)
          {
            v74 = 0;
            goto LABEL_71;
          }
        }

        if (objc_msgSend_hasError(a3, v32, v9))
        {
          v74 = 0;
        }

        else
        {
          v74 = v56;
        }

LABEL_71:
        self->_serializationFormat = v74;
        goto LABEL_66;
      case 9u:
        v52 = objc_alloc_init(CKCDPCodeServiceRequestClientConfig);
        objc_msgSend_addClientConfig_(self, v76, v52);
        v90 = 0;
        v91 = 0;
        if (!PBReaderPlaceMark() || !sub_2252C66B4(v52, a3, v77))
        {
          goto LABEL_74;
        }

        goto LABEL_65;
      case 0xAu:
        v52 = objc_alloc_init(CKCDPCodeServiceRequestAccountConfig);
        objc_storeStrong(&self->_accountConfig, v52);
        v90 = 0;
        v91 = 0;
        if (!PBReaderPlaceMark() || !sub_2252C3AA4(v52, a3, v82))
        {
          goto LABEL_74;
        }

        goto LABEL_65;
      case 0xBu:
        v52 = objc_alloc_init(CKCDPCodeServiceRequestRequestContext);
        objc_storeStrong(&self->_requestContext, v52);
        v90 = 0;
        v91 = 0;
        if (!PBReaderPlaceMark() || !sub_2252C9B00(v52, a3, v83))
        {
          goto LABEL_74;
        }

        goto LABEL_65;
      case 0xCu:
        v52 = objc_alloc_init(CKCDPCodeServiceRequestAssetAuthorizeGetRequestOptions);
        objc_storeStrong(&self->_assetAuthorizeGetRequestOptions, v52);
        v90 = 0;
        v91 = 0;
        if (PBReaderPlaceMark() && sub_2252C4A74(v52, a3, v85))
        {
          goto LABEL_65;
        }

        goto LABEL_74;
      case 0xDu:
        objc_msgSend_clearOneofValuesForDataProtection(self, v32, v9);
        *&self->_has |= 1u;
        self->_dataProtection = 1;
        v52 = objc_alloc_init(CKCDPCodeServiceRequestProtectedCloudComputeMetadata);
        objc_storeStrong(&self->_protectedCloudComputeMetadata, v52);
        v90 = 0;
        v91 = 0;
        if (!PBReaderPlaceMark() || !sub_2252C87C0(v52, a3, v84))
        {
          goto LABEL_74;
        }

        goto LABEL_65;
      case 0xFu:
        v52 = objc_alloc_init(CKCDPCodeServiceRequestAttestationRequest);
        objc_storeStrong(&self->_attestationRequest, v52);
        v90 = 0;
        v91 = 0;
        if (!PBReaderPlaceMark() || !sub_2252C5B84(v52, a3, v53))
        {
          goto LABEL_74;
        }

        goto LABEL_65;
      case 0x10u:
        objc_msgSend_clearOneofValuesForDataProtection(self, v32, v9);
        *&self->_has |= 1u;
        self->_dataProtection = 2;
        v52 = objc_alloc_init(CKCDPTrustedTargetCryptoMetadata);
        objc_storeStrong(&self->_trustedTargetCryptoMetadata, v52);
        v90 = 0;
        v91 = 0;
        if (!PBReaderPlaceMark() || !sub_2252D4660(v52, a3, v78))
        {
          goto LABEL_74;
        }

        goto LABEL_65;
      case 0x11u:
        v52 = objc_alloc_init(CKCDPCodeServiceRequestAuthInformation);
        objc_storeStrong(&self->_authInformation, v52);
        v90 = 0;
        v91 = 0;
        if (PBReaderPlaceMark() && sub_2252C5FF0(v52, a3, v75))
        {
LABEL_65:
          PBReaderRecallMark();

LABEL_66:
          v86 = objc_msgSend_position(a3, v32, v9);
          if (v86 >= objc_msgSend_length(a3, v87, v88))
          {
            return objc_msgSend_hasError(a3, v8, v9) ^ 1;
          }

          continue;
        }

LABEL_74:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_66;
    }
  }
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_serviceName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_functionName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_serializedParameters)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 2) != 0)
  {
    serializationFormat = self->_serializationFormat;
    PBDataWriterWriteInt32Field();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_clientConfigs;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v15, v19, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v13, &v15, v19, 16);
    }

    while (v9);
  }

  if (self->_accountConfig)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_requestContext)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_assetAuthorizeGetRequestOptions)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_protectedCloudComputeMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_attestationRequest)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_trustedTargetCryptoMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_authInformation)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[12] = self->_dataProtection;
    *(v4 + 112) |= 1u;
  }

  serviceName = self->_serviceName;
  v26 = v4;
  if (serviceName)
  {
    objc_msgSend_setServiceName_(v4, v5, serviceName);
    v4 = v26;
  }

  functionName = self->_functionName;
  if (functionName)
  {
    objc_msgSend_setFunctionName_(v26, v5, functionName);
    v4 = v26;
  }

  serializedParameters = self->_serializedParameters;
  if (serializedParameters)
  {
    objc_msgSend_setSerializedParameters_(v26, v5, serializedParameters);
    v4 = v26;
  }

  if ((*&self->_has & 2) != 0)
  {
    v4[20] = self->_serializationFormat;
    *(v4 + 112) |= 2u;
  }

  if (objc_msgSend_clientConfigsCount(self, v5, serializedParameters))
  {
    objc_msgSend_clearClientConfigs(v26, v9, v10);
    v13 = objc_msgSend_clientConfigsCount(self, v11, v12);
    if (v13)
    {
      v14 = v13;
      for (i = 0; i != v14; ++i)
      {
        v16 = objc_msgSend_clientConfigAtIndex_(self, v9, i);
        objc_msgSend_addClientConfig_(v26, v17, v16);
      }
    }
  }

  accountConfig = self->_accountConfig;
  if (accountConfig)
  {
    objc_msgSend_setAccountConfig_(v26, v9, accountConfig);
  }

  requestContext = self->_requestContext;
  v20 = v26;
  if (requestContext)
  {
    objc_msgSend_setRequestContext_(v26, v9, requestContext);
    v20 = v26;
  }

  assetAuthorizeGetRequestOptions = self->_assetAuthorizeGetRequestOptions;
  if (assetAuthorizeGetRequestOptions)
  {
    objc_msgSend_setAssetAuthorizeGetRequestOptions_(v26, v9, assetAuthorizeGetRequestOptions);
    v20 = v26;
  }

  protectedCloudComputeMetadata = self->_protectedCloudComputeMetadata;
  if (protectedCloudComputeMetadata)
  {
    objc_msgSend_setProtectedCloudComputeMetadata_(v26, v9, protectedCloudComputeMetadata);
    v20 = v26;
  }

  attestationRequest = self->_attestationRequest;
  if (attestationRequest)
  {
    objc_msgSend_setAttestationRequest_(v26, v9, attestationRequest);
    v20 = v26;
  }

  trustedTargetCryptoMetadata = self->_trustedTargetCryptoMetadata;
  if (trustedTargetCryptoMetadata)
  {
    objc_msgSend_setTrustedTargetCryptoMetadata_(v26, v9, trustedTargetCryptoMetadata);
    v20 = v26;
  }

  authInformation = self->_authInformation;
  if (authInformation)
  {
    objc_msgSend_setAuthInformation_(v26, v9, authInformation);
    v20 = v26;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if (*&self->_has)
  {
    *(v10 + 48) = self->_dataProtection;
    *(v10 + 112) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_serviceName, v11, a3);
  v14 = *(v12 + 96);
  *(v12 + 96) = v13;

  v16 = objc_msgSend_copyWithZone_(self->_functionName, v15, a3);
  v17 = *(v12 + 56);
  *(v12 + 56) = v16;

  v19 = objc_msgSend_copyWithZone_(self->_serializedParameters, v18, a3);
  v20 = *(v12 + 88);
  *(v12 + 88) = v19;

  if ((*&self->_has & 2) != 0)
  {
    *(v12 + 80) = self->_serializationFormat;
    *(v12 + 112) |= 2u;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v21 = self->_clientConfigs;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v53, v57, 16);
  if (v23)
  {
    v25 = v23;
    v26 = *v54;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v54 != v26)
        {
          objc_enumerationMutation(v21);
        }

        v28 = objc_msgSend_copyWithZone_(*(*(&v53 + 1) + 8 * i), v24, a3, v53);
        objc_msgSend_addClientConfig_(v12, v29, v28);
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v53, v57, 16);
    }

    while (v25);
  }

  v31 = objc_msgSend_copyWithZone_(self->_accountConfig, v30, a3);
  v32 = *(v12 + 8);
  *(v12 + 8) = v31;

  v34 = objc_msgSend_copyWithZone_(self->_requestContext, v33, a3);
  v35 = *(v12 + 72);
  *(v12 + 72) = v34;

  v37 = objc_msgSend_copyWithZone_(self->_assetAuthorizeGetRequestOptions, v36, a3);
  v38 = *(v12 + 16);
  *(v12 + 16) = v37;

  v40 = objc_msgSend_copyWithZone_(self->_protectedCloudComputeMetadata, v39, a3);
  v41 = *(v12 + 64);
  *(v12 + 64) = v40;

  v43 = objc_msgSend_copyWithZone_(self->_attestationRequest, v42, a3);
  v44 = *(v12 + 24);
  *(v12 + 24) = v43;

  v46 = objc_msgSend_copyWithZone_(self->_trustedTargetCryptoMetadata, v45, a3);
  v47 = *(v12 + 104);
  *(v12 + 104) = v46;

  v49 = objc_msgSend_copyWithZone_(self->_authInformation, v48, a3);
  v50 = *(v12 + 32);
  *(v12 + 32) = v49;

  v51 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_34;
  }

  v8 = *(v4 + 112);
  if (*&self->_has)
  {
    if ((v4[14] & 1) == 0 || self->_dataProtection != *(v4 + 12))
    {
      goto LABEL_34;
    }
  }

  else if (v4[14])
  {
LABEL_34:
    isEqual = 0;
    goto LABEL_35;
  }

  serviceName = self->_serviceName;
  v10 = v4[12];
  if (serviceName | v10 && !objc_msgSend_isEqual_(serviceName, v7, v10))
  {
    goto LABEL_34;
  }

  functionName = self->_functionName;
  v12 = v4[7];
  if (functionName | v12)
  {
    if (!objc_msgSend_isEqual_(functionName, v7, v12))
    {
      goto LABEL_34;
    }
  }

  serializedParameters = self->_serializedParameters;
  v14 = v4[11];
  if (serializedParameters | v14)
  {
    if (!objc_msgSend_isEqual_(serializedParameters, v7, v14))
    {
      goto LABEL_34;
    }
  }

  v15 = *(v4 + 112);
  if ((*&self->_has & 2) != 0)
  {
    if ((v4[14] & 2) == 0 || self->_serializationFormat != *(v4 + 20))
    {
      goto LABEL_34;
    }
  }

  else if ((v4[14] & 2) != 0)
  {
    goto LABEL_34;
  }

  clientConfigs = self->_clientConfigs;
  v17 = v4[5];
  if (clientConfigs | v17 && !objc_msgSend_isEqual_(clientConfigs, v7, v17))
  {
    goto LABEL_34;
  }

  accountConfig = self->_accountConfig;
  v19 = v4[1];
  if (accountConfig | v19)
  {
    if (!objc_msgSend_isEqual_(accountConfig, v7, v19))
    {
      goto LABEL_34;
    }
  }

  requestContext = self->_requestContext;
  v21 = v4[9];
  if (requestContext | v21)
  {
    if (!objc_msgSend_isEqual_(requestContext, v7, v21))
    {
      goto LABEL_34;
    }
  }

  assetAuthorizeGetRequestOptions = self->_assetAuthorizeGetRequestOptions;
  v23 = v4[2];
  if (assetAuthorizeGetRequestOptions | v23)
  {
    if (!objc_msgSend_isEqual_(assetAuthorizeGetRequestOptions, v7, v23))
    {
      goto LABEL_34;
    }
  }

  protectedCloudComputeMetadata = self->_protectedCloudComputeMetadata;
  v25 = v4[8];
  if (protectedCloudComputeMetadata | v25)
  {
    if (!objc_msgSend_isEqual_(protectedCloudComputeMetadata, v7, v25))
    {
      goto LABEL_34;
    }
  }

  attestationRequest = self->_attestationRequest;
  v27 = v4[3];
  if (attestationRequest | v27)
  {
    if (!objc_msgSend_isEqual_(attestationRequest, v7, v27))
    {
      goto LABEL_34;
    }
  }

  trustedTargetCryptoMetadata = self->_trustedTargetCryptoMetadata;
  v29 = v4[13];
  if (trustedTargetCryptoMetadata | v29)
  {
    if (!objc_msgSend_isEqual_(trustedTargetCryptoMetadata, v7, v29))
    {
      goto LABEL_34;
    }
  }

  authInformation = self->_authInformation;
  v31 = v4[4];
  if (authInformation | v31)
  {
    isEqual = objc_msgSend_isEqual_(authInformation, v7, v31);
  }

  else
  {
    isEqual = 1;
  }

LABEL_35:

  return isEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_dataProtection;
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_msgSend_hash(self->_serviceName, a2, v2);
  v8 = objc_msgSend_hash(self->_functionName, v6, v7);
  v11 = objc_msgSend_hash(self->_serializedParameters, v9, v10);
  if ((*&self->_has & 2) != 0)
  {
    v14 = 2654435761 * self->_serializationFormat;
  }

  else
  {
    v14 = 0;
  }

  v15 = v5 ^ v4 ^ v8 ^ v11;
  v16 = v14 ^ objc_msgSend_hash(self->_clientConfigs, v12, v13);
  v19 = v15 ^ v16 ^ objc_msgSend_hash(self->_accountConfig, v17, v18);
  v22 = objc_msgSend_hash(self->_requestContext, v20, v21);
  v25 = v22 ^ objc_msgSend_hash(self->_assetAuthorizeGetRequestOptions, v23, v24);
  v28 = v25 ^ objc_msgSend_hash(self->_protectedCloudComputeMetadata, v26, v27);
  v31 = v19 ^ v28 ^ objc_msgSend_hash(self->_attestationRequest, v29, v30);
  v34 = objc_msgSend_hash(self->_trustedTargetCryptoMetadata, v32, v33);
  return v31 ^ v34 ^ objc_msgSend_hash(self->_authInformation, v35, v36);
}

- (void)mergeFrom:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6 = v4;
  if (*(v4 + 112))
  {
    self->_dataProtection = *(v4 + 12);
    *&self->_has |= 1u;
  }

  v7 = *(v4 + 12);
  if (v7)
  {
    objc_msgSend_setServiceName_(self, v5, v7);
  }

  v8 = *(v6 + 7);
  if (v8)
  {
    objc_msgSend_setFunctionName_(self, v5, v8);
  }

  v9 = *(v6 + 11);
  if (v9)
  {
    objc_msgSend_setSerializedParameters_(self, v5, v9);
  }

  if ((*(v6 + 112) & 2) != 0)
  {
    self->_serializationFormat = *(v6 + 20);
    *&self->_has |= 2u;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = *(v6 + 5);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v33, v37, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v34;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_addClientConfig_(self, v13, *(*(&v33 + 1) + 8 * i), v33);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v33, v37, 16);
    }

    while (v14);
  }

  accountConfig = self->_accountConfig;
  v19 = *(v6 + 1);
  if (accountConfig)
  {
    if (v19)
    {
      objc_msgSend_mergeFrom_(accountConfig, v17, v19);
    }
  }

  else if (v19)
  {
    objc_msgSend_setAccountConfig_(self, v17, v19);
  }

  requestContext = self->_requestContext;
  v21 = *(v6 + 9);
  if (requestContext)
  {
    if (v21)
    {
      objc_msgSend_mergeFrom_(requestContext, v17, v21);
    }
  }

  else if (v21)
  {
    objc_msgSend_setRequestContext_(self, v17, v21);
  }

  assetAuthorizeGetRequestOptions = self->_assetAuthorizeGetRequestOptions;
  v23 = *(v6 + 2);
  if (assetAuthorizeGetRequestOptions)
  {
    if (v23)
    {
      objc_msgSend_mergeFrom_(assetAuthorizeGetRequestOptions, v17, v23);
    }
  }

  else if (v23)
  {
    objc_msgSend_setAssetAuthorizeGetRequestOptions_(self, v17, v23);
  }

  protectedCloudComputeMetadata = self->_protectedCloudComputeMetadata;
  v25 = *(v6 + 8);
  if (protectedCloudComputeMetadata)
  {
    if (v25)
    {
      objc_msgSend_mergeFrom_(protectedCloudComputeMetadata, v17, v25);
    }
  }

  else if (v25)
  {
    objc_msgSend_setProtectedCloudComputeMetadata_(self, v17, v25);
  }

  attestationRequest = self->_attestationRequest;
  v27 = *(v6 + 3);
  if (attestationRequest)
  {
    if (v27)
    {
      objc_msgSend_mergeFrom_(attestationRequest, v17, v27);
    }
  }

  else if (v27)
  {
    objc_msgSend_setAttestationRequest_(self, v17, v27);
  }

  trustedTargetCryptoMetadata = self->_trustedTargetCryptoMetadata;
  v29 = *(v6 + 13);
  if (trustedTargetCryptoMetadata)
  {
    if (v29)
    {
      objc_msgSend_mergeFrom_(trustedTargetCryptoMetadata, v17, v29);
    }
  }

  else if (v29)
  {
    objc_msgSend_setTrustedTargetCryptoMetadata_(self, v17, v29);
  }

  authInformation = self->_authInformation;
  v31 = *(v6 + 4);
  if (authInformation)
  {
    if (v31)
    {
      objc_msgSend_mergeFrom_(authInformation, v17, v31);
    }
  }

  else if (v31)
  {
    objc_msgSend_setAuthInformation_(self, v17, v31);
  }

  v32 = *MEMORY[0x277D85DE8];
}

@end