@interface CKCDPCodeServiceRequestAttestationRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKCDPCodeServiceRequestAttestationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKCDPCodeServiceRequestAttestationRequest;
  v4 = [(CKCDPCodeServiceRequestAttestationRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  entropy = self->_entropy;
  if (entropy)
  {
    objc_msgSend_setObject_forKey_(v4, v5, entropy, @"entropy");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  if (self->_entropy)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  entropy = self->_entropy;
  if (entropy)
  {
    objc_msgSend_setEntropy_(a3, a2, entropy);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_entropy, v11, a3);
  v13 = v10[1];
  v10[1] = v12;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    entropy = self->_entropy;
    v9 = v4[1];
    if (entropy | v9)
    {
      isEqual = objc_msgSend_isEqual_(entropy, v7, v9);
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
  v3 = *(a3 + 1);
  if (v3)
  {
    objc_msgSend_setEntropy_(self, a2, v3);
  }
}

@end