@interface CKCDPCodeServiceResponseAttestationResponseAttestation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKCDPCodeServiceResponseAttestationResponseAttestation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKCDPCodeServiceResponseAttestationResponseAttestation;
  v4 = [(CKCDPCodeServiceResponseAttestationResponseAttestation *)&v11 description];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_appQuote)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_aqeQuote)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_pckCertificate)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_routingToken)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  appQuote = self->_appQuote;
  v10 = toCopy;
  if (appQuote)
  {
    objc_msgSend_setAppQuote_(toCopy, v5, appQuote);
    toCopy = v10;
  }

  aqeQuote = self->_aqeQuote;
  if (aqeQuote)
  {
    objc_msgSend_setAqeQuote_(v10, v5, aqeQuote);
    toCopy = v10;
  }

  pckCertificate = self->_pckCertificate;
  if (pckCertificate)
  {
    objc_msgSend_setPckCertificate_(v10, v5, pckCertificate);
    toCopy = v10;
  }

  routingToken = self->_routingToken;
  if (routingToken)
  {
    objc_msgSend_setRoutingToken_(v10, v5, routingToken);
    toCopy = v10;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_appQuote, v11, zone);
  v13 = v10[1];
  v10[1] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_aqeQuote, v14, zone);
  v16 = v10[2];
  v10[2] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_pckCertificate, v17, zone);
  v19 = v10[3];
  v10[3] = v18;

  v21 = objc_msgSend_copyWithZone_(self->_routingToken, v20, zone);
  v22 = v10[4];
  v10[4] = v21;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((appQuote = self->_appQuote, v9 = equalCopy[1], !(appQuote | v9)) || objc_msgSend_isEqual_(appQuote, v7, v9)) && ((aqeQuote = self->_aqeQuote, v11 = equalCopy[2], !(aqeQuote | v11)) || objc_msgSend_isEqual_(aqeQuote, v7, v11)) && ((pckCertificate = self->_pckCertificate, v13 = equalCopy[3], !(pckCertificate | v13)) || objc_msgSend_isEqual_(pckCertificate, v7, v13)))
  {
    routingToken = self->_routingToken;
    v15 = equalCopy[4];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[1];
  if (v5)
  {
    objc_msgSend_setAppQuote_(self, v4, v5);
  }

  v6 = fromCopy[2];
  if (v6)
  {
    objc_msgSend_setAqeQuote_(self, v4, v6);
  }

  v7 = fromCopy[3];
  if (v7)
  {
    objc_msgSend_setPckCertificate_(self, v4, v7);
  }

  v8 = fromCopy[4];
  if (v8)
  {
    objc_msgSend_setRoutingToken_(self, v4, v8);
  }
}

@end