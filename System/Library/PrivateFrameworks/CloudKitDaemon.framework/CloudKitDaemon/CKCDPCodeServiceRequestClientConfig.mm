@interface CKCDPCodeServiceRequestClientConfig
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)serviceTypeAsString:(int)string;
- (int)StringAsServiceType:(id)type;
- (int)serviceType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKCDPCodeServiceRequestClientConfig

- (int)serviceType
{
  if (*&self->_has)
  {
    return self->_serviceType;
  }

  else
  {
    return 1;
  }
}

- (id)serviceTypeAsString:(int)string
{
  if ((string - 1) >= 6)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854C720[string - 1];
  }

  return v4;
}

- (int)StringAsServiceType:(id)type
{
  typeCopy = type;
  if (objc_msgSend_isEqualToString_(typeCopy, v4, @"PUSH"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v5, @"DATABASE"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v7, @"CONTENT"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v8, @"CALDAV"))
  {
    v6 = 4;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v9, @"ESCROWPROXY"))
  {
    v6 = 5;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v10, @"QUOTA"))
  {
    v6 = 6;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKCDPCodeServiceRequestClientConfig;
  v4 = [(CKCDPCodeServiceRequestClientConfig *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (*&self->_has)
  {
    v7 = self->_serviceType - 1;
    if (v7 >= 6)
    {
      v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_serviceType);
    }

    else
    {
      v8 = off_27854C720[v7];
    }

    objc_msgSend_setObject_forKey_(v6, v4, v8, @"serviceType");
  }

  config = self->_config;
  if (config)
  {
    v10 = objc_msgSend_dictionaryRepresentation(config, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"config");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    serviceType = self->_serviceType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_config)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_serviceType;
    *(toCopy + 20) |= 1u;
  }

  config = self->_config;
  if (config)
  {
    v7 = toCopy;
    objc_msgSend_setConfig_(toCopy, v5, config);
    toCopy = v7;
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
    *(v10 + 16) = self->_serviceType;
    *(v10 + 20) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_config, v11, zone);
  v14 = v12[1];
  v12[1] = v13;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_9;
  }

  v8 = *(equalCopy + 20);
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_serviceType != *(equalCopy + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_9:
    isEqual = 0;
    goto LABEL_10;
  }

  config = self->_config;
  v10 = equalCopy[1];
  if (config | v10)
  {
    isEqual = objc_msgSend_isEqual_(config, v7, v10);
  }

  else
  {
    isEqual = 1;
  }

LABEL_10:

  return isEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_serviceType;
  }

  else
  {
    v3 = 0;
  }

  return objc_msgSend_hash(self->_config, a2, v2) ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[20])
  {
    self->_serviceType = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  config = self->_config;
  v7 = *(v5 + 1);
  if (config)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(config, v5, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setConfig_(self, v5, v7);
  }

  MEMORY[0x2821F96F8]();
}

@end