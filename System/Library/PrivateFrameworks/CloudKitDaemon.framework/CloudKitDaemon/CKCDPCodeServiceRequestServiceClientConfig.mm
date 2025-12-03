@interface CKCDPCodeServiceRequestServiceClientConfig
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKCDPCodeServiceRequestServiceClientConfig

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKCDPCodeServiceRequestServiceClientConfig;
  v4 = [(CKCDPCodeServiceRequestServiceClientConfig *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  host = self->_host;
  if (host)
  {
    objc_msgSend_setObject_forKey_(v4, v5, host, @"host");
  }

  if (*&self->_has)
  {
    v8 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v5, self->_port);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"port");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_host)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    port = self->_port;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  host = self->_host;
  if (host)
  {
    v7 = toCopy;
    objc_msgSend_setHost_(toCopy, v5, host);
    toCopy = v7;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_port;
    *(toCopy + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_host, v11, zone);
  v13 = *(v10 + 8);
  *(v10 + 8) = v12;

  if (*&self->_has)
  {
    *(v10 + 16) = self->_port;
    *(v10 + 20) |= 1u;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_8;
  }

  host = self->_host;
  v9 = equalCopy[1];
  if (host | v9)
  {
    if (!objc_msgSend_isEqual_(host, v7, v9))
    {
      goto LABEL_8;
    }
  }

  v10 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) != 0 && self->_port == *(equalCopy + 4))
    {
      v10 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v10 = 0;
  }

LABEL_9:

  return v10;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_host, a2, v2);
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_port;
  }

  else
  {
    v5 = 0;
  }

  return v5 ^ v4;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = *(fromCopy + 1);
  if (v6)
  {
    v7 = fromCopy;
    objc_msgSend_setHost_(self, v5, v6);
    fromCopy = v7;
  }

  if (*(fromCopy + 20))
  {
    self->_port = *(fromCopy + 4);
    *&self->_has |= 1u;
  }
}

@end