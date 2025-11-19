@interface CKCDPCodeServiceRequestClientConfig
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)serviceTypeAsString:(int)a3;
- (int)StringAsServiceType:(id)a3;
- (int)serviceType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (id)serviceTypeAsString:(int)a3
{
  if ((a3 - 1) >= 6)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_27854C720[a3 - 1];
  }

  return v4;
}

- (int)StringAsServiceType:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"PUSH"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"DATABASE"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"CONTENT"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(v3, v8, @"CALDAV"))
  {
    v6 = 4;
  }

  else if (objc_msgSend_isEqualToString_(v3, v9, @"ESCROWPROXY"))
  {
    v6 = 5;
  }

  else if (objc_msgSend_isEqualToString_(v3, v10, @"QUOTA"))
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    serviceType = self->_serviceType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_config)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_serviceType;
    *(v4 + 20) |= 1u;
  }

  config = self->_config;
  if (config)
  {
    v7 = v4;
    objc_msgSend_setConfig_(v4, v5, config);
    v4 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if (*&self->_has)
  {
    *(v10 + 16) = self->_serviceType;
    *(v10 + 20) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_config, v11, a3);
  v14 = v12[1];
  v12[1] = v13;

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_9;
  }

  v8 = *(v4 + 20);
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_serviceType != *(v4 + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_9:
    isEqual = 0;
    goto LABEL_10;
  }

  config = self->_config;
  v10 = v4[1];
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[20])
  {
    self->_serviceType = *(v4 + 4);
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