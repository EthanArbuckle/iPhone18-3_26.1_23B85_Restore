@interface CKDPZoneSignedCryptoRequirements
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)version;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPZoneSignedCryptoRequirements

- (int)version
{
  if (*&self->_has)
  {
    return self->_version;
  }

  else
  {
    return 1;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPZoneSignedCryptoRequirements;
  v4 = [(CKDPZoneSignedCryptoRequirements *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (*&self->_has)
  {
    v6 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_version);
    objc_msgSend_setObject_forKey_(v5, v7, v6, @"version");
  }

  signature = self->_signature;
  if (signature)
  {
    objc_msgSend_setObject_forKey_(v5, v4, signature, @"signature");
  }

  serializedRequirements = self->_serializedRequirements;
  if (serializedRequirements)
  {
    objc_msgSend_setObject_forKey_(v5, v4, serializedRequirements, @"serializedRequirements");
  }

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_signature)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_serializedRequirements)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_version;
    *(toCopy + 28) |= 1u;
  }

  signature = self->_signature;
  v8 = toCopy;
  if (signature)
  {
    objc_msgSend_setSignature_(toCopy, v5, signature);
    toCopy = v8;
  }

  serializedRequirements = self->_serializedRequirements;
  if (serializedRequirements)
  {
    objc_msgSend_setSerializedRequirements_(v8, v5, serializedRequirements);
    toCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if (*&self->_has)
  {
    *(v10 + 24) = self->_version;
    *(v10 + 28) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_signature, v11, zone);
  v14 = v12[2];
  v12[2] = v13;

  v16 = objc_msgSend_copyWithZone_(self->_serializedRequirements, v15, zone);
  v17 = v12[1];
  v12[1] = v16;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_11;
  }

  v8 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_version != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    isEqual = 0;
    goto LABEL_12;
  }

  signature = self->_signature;
  v10 = equalCopy[2];
  if (signature | v10 && !objc_msgSend_isEqual_(signature, v7, v10))
  {
    goto LABEL_11;
  }

  serializedRequirements = self->_serializedRequirements;
  v12 = equalCopy[1];
  if (serializedRequirements | v12)
  {
    isEqual = objc_msgSend_isEqual_(serializedRequirements, v7, v12);
  }

  else
  {
    isEqual = 1;
  }

LABEL_12:

  return isEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_version;
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_msgSend_hash(self->_signature, a2, v2) ^ v4;
  return v5 ^ objc_msgSend_hash(self->_serializedRequirements, v6, v7);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 28))
  {
    self->_version = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  v6 = *(fromCopy + 2);
  v8 = fromCopy;
  if (v6)
  {
    objc_msgSend_setSignature_(self, v5, v6);
    fromCopy = v8;
  }

  v7 = *(fromCopy + 1);
  if (v7)
  {
    objc_msgSend_setSerializedRequirements_(self, v5, v7);
    fromCopy = v8;
  }
}

@end