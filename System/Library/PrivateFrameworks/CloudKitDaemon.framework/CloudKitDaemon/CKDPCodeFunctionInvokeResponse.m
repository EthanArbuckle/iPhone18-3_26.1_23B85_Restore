@interface CKDPCodeFunctionInvokeResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPCodeFunctionInvokeResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPCodeFunctionInvokeResponse;
  v4 = [(CKDPCodeFunctionInvokeResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  serializedResult = self->_serializedResult;
  if (serializedResult)
  {
    objc_msgSend_setObject_forKey_(v4, v5, serializedResult, @"serializedResult");
  }

  attestationResponse = self->_attestationResponse;
  if (attestationResponse)
  {
    v9 = objc_msgSend_dictionaryRepresentation(attestationResponse, v5, serializedResult);
    objc_msgSend_setObject_forKey_(v6, v10, v9, @"attestationResponse");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_serializedResult)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_attestationResponse)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  serializedResult = self->_serializedResult;
  v8 = v4;
  if (serializedResult)
  {
    objc_msgSend_setSerializedResult_(v4, v5, serializedResult);
    v4 = v8;
  }

  attestationResponse = self->_attestationResponse;
  if (attestationResponse)
  {
    objc_msgSend_setAttestationResponse_(v8, v5, attestationResponse);
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_serializedResult, v11, a3);
  v13 = v10[2];
  v10[2] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_attestationResponse, v14, a3);
  v16 = v10[1];
  v10[1] = v15;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((serializedResult = self->_serializedResult, v9 = v4[2], !(serializedResult | v9)) || objc_msgSend_isEqual_(serializedResult, v7, v9)))
  {
    attestationResponse = self->_attestationResponse;
    v11 = v4[1];
    if (attestationResponse | v11)
    {
      isEqual = objc_msgSend_isEqual_(attestationResponse, v7, v11);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[2];
  v8 = v4;
  if (v5)
  {
    objc_msgSend_setSerializedResult_(self, v4, v5);
    v4 = v8;
  }

  attestationResponse = self->_attestationResponse;
  v7 = v4[1];
  if (attestationResponse)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(attestationResponse, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setAttestationResponse_(self, v4, v7);
  }

  MEMORY[0x2821F96F8]();
}

@end