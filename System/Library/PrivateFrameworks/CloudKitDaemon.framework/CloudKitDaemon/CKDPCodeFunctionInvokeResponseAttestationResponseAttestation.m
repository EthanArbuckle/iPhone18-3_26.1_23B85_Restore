@interface CKDPCodeFunctionInvokeResponseAttestationResponseAttestation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPCodeFunctionInvokeResponseAttestationResponseAttestation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPCodeFunctionInvokeResponseAttestationResponseAttestation;
  v4 = [(CKDPCodeFunctionInvokeResponseAttestationResponseAttestation *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  appQuote = self->_appQuote;
  if (appQuote)
  {
    objc_msgSend_setObject_forKey_(v4, v5, appQuote, @"appQuote");
  }

  aqeQuote = self->_aqeQuote;
  if (aqeQuote)
  {
    objc_msgSend_setObject_forKey_(v6, v5, aqeQuote, @"aqeQuote");
  }

  pckCertificate = self->_pckCertificate;
  if (pckCertificate)
  {
    objc_msgSend_setObject_forKey_(v6, v5, pckCertificate, @"pckCertificate");
  }

  routingToken = self->_routingToken;
  if (routingToken)
  {
    objc_msgSend_setObject_forKey_(v6, v5, routingToken, @"routingToken");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_appQuote)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_aqeQuote)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_pckCertificate)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_routingToken)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  appQuote = self->_appQuote;
  v10 = v4;
  if (appQuote)
  {
    objc_msgSend_setAppQuote_(v4, v5, appQuote);
    v4 = v10;
  }

  aqeQuote = self->_aqeQuote;
  if (aqeQuote)
  {
    objc_msgSend_setAqeQuote_(v10, v5, aqeQuote);
    v4 = v10;
  }

  pckCertificate = self->_pckCertificate;
  if (pckCertificate)
  {
    objc_msgSend_setPckCertificate_(v10, v5, pckCertificate);
    v4 = v10;
  }

  routingToken = self->_routingToken;
  if (routingToken)
  {
    objc_msgSend_setRoutingToken_(v10, v5, routingToken);
    v4 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_appQuote, v11, a3);
  v13 = v10[1];
  v10[1] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_aqeQuote, v14, a3);
  v16 = v10[2];
  v10[2] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_pckCertificate, v17, a3);
  v19 = v10[3];
  v10[3] = v18;

  v21 = objc_msgSend_copyWithZone_(self->_routingToken, v20, a3);
  v22 = v10[4];
  v10[4] = v21;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((appQuote = self->_appQuote, v9 = v4[1], !(appQuote | v9)) || objc_msgSend_isEqual_(appQuote, v7, v9)) && ((aqeQuote = self->_aqeQuote, v11 = v4[2], !(aqeQuote | v11)) || objc_msgSend_isEqual_(aqeQuote, v7, v11)) && ((pckCertificate = self->_pckCertificate, v13 = v4[3], !(pckCertificate | v13)) || objc_msgSend_isEqual_(pckCertificate, v7, v13)))
  {
    routingToken = self->_routingToken;
    v15 = v4[4];
    if (routingToken | v15)
    {
      isEqual = objc_msgSend_isEqual_(routingToken, v7, v15);
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

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_appQuote, a2, v2);
  v7 = objc_msgSend_hash(self->_aqeQuote, v5, v6) ^ v4;
  v10 = objc_msgSend_hash(self->_pckCertificate, v8, v9);
  return v7 ^ v10 ^ objc_msgSend_hash(self->_routingToken, v11, v12);
}

- (void)mergeFrom:(id)a3
{
  v9 = a3;
  v5 = v9[1];
  if (v5)
  {
    objc_msgSend_setAppQuote_(self, v4, v5);
  }

  v6 = v9[2];
  if (v6)
  {
    objc_msgSend_setAqeQuote_(self, v4, v6);
  }

  v7 = v9[3];
  if (v7)
  {
    objc_msgSend_setPckCertificate_(self, v4, v7);
  }

  v8 = v9[4];
  if (v8)
  {
    objc_msgSend_setRoutingToken_(self, v4, v8);
  }
}

@end