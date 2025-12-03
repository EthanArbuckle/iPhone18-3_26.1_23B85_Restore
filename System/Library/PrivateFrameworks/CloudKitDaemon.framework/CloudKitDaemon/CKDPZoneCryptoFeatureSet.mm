@interface CKDPZoneCryptoFeatureSet
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)minimumSchemaVersion;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPZoneCryptoFeatureSet

- (int)minimumSchemaVersion
{
  if (*&self->_has)
  {
    return self->_minimumSchemaVersion;
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
  v11.super_class = CKDPZoneCryptoFeatureSet;
  v4 = [(CKDPZoneCryptoFeatureSet *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (*&self->_has)
  {
    v6 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_minimumSchemaVersion);
    objc_msgSend_setObject_forKey_(v5, v7, v6, @"minimumSchemaVersion");
  }

  return v5;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    minimumSchemaVersion = self->_minimumSchemaVersion;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 2) = self->_minimumSchemaVersion;
    *(to + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  result = objc_msgSend_init(v7, v8, v9);
  if (*&self->_has)
  {
    *(result + 2) = self->_minimumSchemaVersion;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_6;
  }

  v7 = (*(equalCopy + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 12) & 1) != 0 && self->_minimumSchemaVersion == *(equalCopy + 2))
    {
      v7 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v7 = 0;
  }

LABEL_7:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_minimumSchemaVersion;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)from
{
  if (*(from + 12))
  {
    self->_minimumSchemaVersion = *(from + 2);
    *&self->_has |= 1u;
  }
}

@end