@interface CKDPCodeFunctionInvokeRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPCodeFunctionInvokeRequest

+ (id)options
{
  if (qword_280D54F30 != -1)
  {
    dispatch_once(&qword_280D54F30, &unk_28385DD60);
  }

  v3 = qword_280D54F28;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPCodeFunctionInvokeRequest;
  v4 = [(CKDPCodeFunctionInvokeRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
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

  protectedCloudComputeMetadata = self->_protectedCloudComputeMetadata;
  if (protectedCloudComputeMetadata)
  {
    v11 = objc_msgSend_dictionaryRepresentation(protectedCloudComputeMetadata, v5, serializedParameters);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"protectedCloudComputeMetadata");
  }

  attestationRequest = self->_attestationRequest;
  if (attestationRequest)
  {
    v14 = objc_msgSend_dictionaryRepresentation(attestationRequest, v5, serializedParameters);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"attestationRequest");
  }

  trustedTargetCryptoMetadata = self->_trustedTargetCryptoMetadata;
  if (trustedTargetCryptoMetadata)
  {
    v17 = objc_msgSend_dictionaryRepresentation(trustedTargetCryptoMetadata, v5, serializedParameters);
    objc_msgSend_setObject_forKey_(v6, v18, v17, @"trustedTargetCryptoMetadata");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_serviceName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_functionName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_serializedParameters)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_protectedCloudComputeMetadata)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_attestationRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_trustedTargetCryptoMetadata)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  serviceName = self->_serviceName;
  v12 = v4;
  if (serviceName)
  {
    objc_msgSend_setServiceName_(v4, v5, serviceName);
    v4 = v12;
  }

  functionName = self->_functionName;
  if (functionName)
  {
    objc_msgSend_setFunctionName_(v12, v5, functionName);
    v4 = v12;
  }

  serializedParameters = self->_serializedParameters;
  if (serializedParameters)
  {
    objc_msgSend_setSerializedParameters_(v12, v5, serializedParameters);
    v4 = v12;
  }

  protectedCloudComputeMetadata = self->_protectedCloudComputeMetadata;
  if (protectedCloudComputeMetadata)
  {
    objc_msgSend_setProtectedCloudComputeMetadata_(v12, v5, protectedCloudComputeMetadata);
    v4 = v12;
  }

  attestationRequest = self->_attestationRequest;
  if (attestationRequest)
  {
    objc_msgSend_setAttestationRequest_(v12, v5, attestationRequest);
    v4 = v12;
  }

  trustedTargetCryptoMetadata = self->_trustedTargetCryptoMetadata;
  if (trustedTargetCryptoMetadata)
  {
    objc_msgSend_setTrustedTargetCryptoMetadata_(v12, v5, trustedTargetCryptoMetadata);
    v4 = v12;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_serviceName, v11, a3);
  v13 = v10[5];
  v10[5] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_functionName, v14, a3);
  v16 = v10[2];
  v10[2] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_serializedParameters, v17, a3);
  v19 = v10[4];
  v10[4] = v18;

  v21 = objc_msgSend_copyWithZone_(self->_protectedCloudComputeMetadata, v20, a3);
  v22 = v10[3];
  v10[3] = v21;

  v24 = objc_msgSend_copyWithZone_(self->_attestationRequest, v23, a3);
  v25 = v10[1];
  v10[1] = v24;

  v27 = objc_msgSend_copyWithZone_(self->_trustedTargetCryptoMetadata, v26, a3);
  v28 = v10[6];
  v10[6] = v27;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_14;
  }

  serviceName = self->_serviceName;
  v9 = v4[5];
  if (serviceName | v9)
  {
    if (!objc_msgSend_isEqual_(serviceName, v7, v9))
    {
      goto LABEL_14;
    }
  }

  functionName = self->_functionName;
  v11 = v4[2];
  if (functionName | v11)
  {
    if (!objc_msgSend_isEqual_(functionName, v7, v11))
    {
      goto LABEL_14;
    }
  }

  if (((serializedParameters = self->_serializedParameters, v13 = v4[4], !(serializedParameters | v13)) || objc_msgSend_isEqual_(serializedParameters, v7, v13)) && ((protectedCloudComputeMetadata = self->_protectedCloudComputeMetadata, v15 = v4[3], !(protectedCloudComputeMetadata | v15)) || objc_msgSend_isEqual_(protectedCloudComputeMetadata, v7, v15)) && ((attestationRequest = self->_attestationRequest, v17 = v4[1], !(attestationRequest | v17)) || objc_msgSend_isEqual_(attestationRequest, v7, v17)))
  {
    trustedTargetCryptoMetadata = self->_trustedTargetCryptoMetadata;
    v19 = v4[6];
    if (trustedTargetCryptoMetadata | v19)
    {
      isEqual = objc_msgSend_isEqual_(trustedTargetCryptoMetadata, v7, v19);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
LABEL_14:
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_serviceName, a2, v2);
  v7 = objc_msgSend_hash(self->_functionName, v5, v6) ^ v4;
  v10 = objc_msgSend_hash(self->_serializedParameters, v8, v9);
  v13 = v7 ^ v10 ^ objc_msgSend_hash(self->_protectedCloudComputeMetadata, v11, v12);
  v16 = objc_msgSend_hash(self->_attestationRequest, v14, v15);
  return v13 ^ v16 ^ objc_msgSend_hash(self->_trustedTargetCryptoMetadata, v17, v18);
}

- (void)mergeFrom:(id)a3
{
  v14 = a3;
  v5 = *(v14 + 5);
  if (v5)
  {
    objc_msgSend_setServiceName_(self, v4, v5);
  }

  v6 = *(v14 + 2);
  if (v6)
  {
    objc_msgSend_setFunctionName_(self, v4, v6);
  }

  v7 = *(v14 + 4);
  if (v7)
  {
    objc_msgSend_setSerializedParameters_(self, v4, v7);
  }

  protectedCloudComputeMetadata = self->_protectedCloudComputeMetadata;
  v9 = *(v14 + 3);
  if (protectedCloudComputeMetadata)
  {
    if (v9)
    {
      objc_msgSend_mergeFrom_(protectedCloudComputeMetadata, v14, v9);
    }
  }

  else if (v9)
  {
    objc_msgSend_setProtectedCloudComputeMetadata_(self, v14, v9);
  }

  attestationRequest = self->_attestationRequest;
  v11 = *(v14 + 1);
  if (attestationRequest)
  {
    if (v11)
    {
      objc_msgSend_mergeFrom_(attestationRequest, v14, v11);
    }
  }

  else if (v11)
  {
    objc_msgSend_setAttestationRequest_(self, v14, v11);
  }

  trustedTargetCryptoMetadata = self->_trustedTargetCryptoMetadata;
  v13 = *(v14 + 6);
  if (trustedTargetCryptoMetadata)
  {
    if (v13)
    {
      objc_msgSend_mergeFrom_(trustedTargetCryptoMetadata, v14, v13);
    }
  }

  else if (v13)
  {
    objc_msgSend_setTrustedTargetCryptoMetadata_(self, v14, v13);
  }
}

@end