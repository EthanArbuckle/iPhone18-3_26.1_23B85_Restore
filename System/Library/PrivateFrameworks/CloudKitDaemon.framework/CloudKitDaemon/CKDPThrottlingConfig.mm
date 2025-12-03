@interface CKDPThrottlingConfig
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPThrottlingConfig

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPThrottlingConfig;
  v4 = [(CKDPThrottlingConfig *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  label = self->_label;
  if (label)
  {
    objc_msgSend_setObject_forKey_(v4, v5, label, @"label");
  }

  criteria = self->_criteria;
  if (criteria)
  {
    v9 = objc_msgSend_dictionaryRepresentation(criteria, v5, label);
    objc_msgSend_setObject_forKey_(v6, v10, v9, @"criteria");
  }

  rateLimit = self->_rateLimit;
  if (rateLimit)
  {
    v12 = objc_msgSend_dictionaryRepresentation(rateLimit, v5, label);
    objc_msgSend_setObject_forKey_(v6, v13, v12, @"rateLimit");
  }

  if (*&self->_has)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v5, self->_ttlSec);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"ttlSec");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_label)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_criteria)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_rateLimit)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    ttlSec = self->_ttlSec;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  label = self->_label;
  v9 = toCopy;
  if (label)
  {
    objc_msgSend_setLabel_(toCopy, v5, label);
    toCopy = v9;
  }

  criteria = self->_criteria;
  if (criteria)
  {
    objc_msgSend_setCriteria_(v9, v5, criteria);
    toCopy = v9;
  }

  rateLimit = self->_rateLimit;
  if (rateLimit)
  {
    objc_msgSend_setRateLimit_(v9, v5, rateLimit);
    toCopy = v9;
  }

  if (*&self->_has)
  {
    *(toCopy + 8) = self->_ttlSec;
    *(toCopy + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_label, v11, zone);
  v13 = *(v10 + 16);
  *(v10 + 16) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_criteria, v14, zone);
  v16 = *(v10 + 8);
  *(v10 + 8) = v15;

  v18 = objc_msgSend_copyWithZone_(self->_rateLimit, v17, zone);
  v19 = *(v10 + 24);
  *(v10 + 24) = v18;

  if (*&self->_has)
  {
    *(v10 + 32) = self->_ttlSec;
    *(v10 + 36) |= 1u;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_12;
  }

  label = self->_label;
  v9 = equalCopy[2];
  if (label | v9)
  {
    if (!objc_msgSend_isEqual_(label, v7, v9))
    {
      goto LABEL_12;
    }
  }

  criteria = self->_criteria;
  v11 = equalCopy[1];
  if (criteria | v11)
  {
    if (!objc_msgSend_isEqual_(criteria, v7, v11))
    {
      goto LABEL_12;
    }
  }

  rateLimit = self->_rateLimit;
  v13 = equalCopy[3];
  if (rateLimit | v13)
  {
    if (!objc_msgSend_isEqual_(rateLimit, v7, v13))
    {
      goto LABEL_12;
    }
  }

  v14 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) != 0 && self->_ttlSec == *(equalCopy + 8))
    {
      v14 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v14 = 0;
  }

LABEL_13:

  return v14;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_label, a2, v2);
  v7 = objc_msgSend_hash(self->_criteria, v5, v6);
  v10 = objc_msgSend_hash(self->_rateLimit, v8, v9);
  if (*&self->_has)
  {
    v11 = 2654435761 * self->_ttlSec;
  }

  else
  {
    v11 = 0;
  }

  return v7 ^ v4 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 2);
  v10 = fromCopy;
  if (v5)
  {
    objc_msgSend_setLabel_(self, fromCopy, v5);
    fromCopy = v10;
  }

  criteria = self->_criteria;
  v7 = *(fromCopy + 1);
  if (criteria)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    objc_msgSend_mergeFrom_(criteria, fromCopy, v7);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    objc_msgSend_setCriteria_(self, fromCopy, v7);
  }

  fromCopy = v10;
LABEL_9:
  rateLimit = self->_rateLimit;
  v9 = *(fromCopy + 3);
  if (rateLimit)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    objc_msgSend_mergeFrom_(rateLimit, fromCopy, v9);
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    objc_msgSend_setRateLimit_(self, fromCopy, v9);
  }

  fromCopy = v10;
LABEL_15:
  if (*(fromCopy + 36))
  {
    self->_ttlSec = *(fromCopy + 8);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end