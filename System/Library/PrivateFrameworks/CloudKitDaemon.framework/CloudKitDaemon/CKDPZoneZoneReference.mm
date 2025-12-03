@interface CKDPZoneZoneReference
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)referenceTypeAsString:(int)string;
- (int)StringAsReferenceType:(id)type;
- (int)referenceType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPZoneZoneReference

- (int)referenceType
{
  if (*&self->_has)
  {
    return self->_referenceType;
  }

  else
  {
    return 1;
  }
}

- (id)referenceTypeAsString:(int)string
{
  if (string >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854CDE8[string];
  }

  return v4;
}

- (int)StringAsReferenceType:(id)type
{
  typeCopy = type;
  if (objc_msgSend_isEqualToString_(typeCopy, v4, @"validating"))
  {
    v6 = 0;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v5, @"owning"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v7, @"weak"))
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPZoneZoneReference;
  v4 = [(CKDPZoneZoneReference *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    v8 = objc_msgSend_dictionaryRepresentation(zoneIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"zoneIdentifier");
  }

  if (*&self->_has)
  {
    referenceType = self->_referenceType;
    if (referenceType >= 3)
    {
      v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_referenceType);
    }

    else
    {
      v11 = off_27854CDE8[referenceType];
    }

    objc_msgSend_setObject_forKey_(v6, v4, v11, @"referenceType");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_zoneIdentifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    referenceType = self->_referenceType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    v7 = toCopy;
    objc_msgSend_setZoneIdentifier_(toCopy, v5, zoneIdentifier);
    toCopy = v7;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_referenceType;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_zoneIdentifier, v11, zone);
  v13 = *(v10 + 16);
  *(v10 + 16) = v12;

  if (*&self->_has)
  {
    *(v10 + 8) = self->_referenceType;
    *(v10 + 24) |= 1u;
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

  zoneIdentifier = self->_zoneIdentifier;
  v9 = equalCopy[2];
  if (zoneIdentifier | v9)
  {
    if (!objc_msgSend_isEqual_(zoneIdentifier, v7, v9))
    {
      goto LABEL_8;
    }
  }

  v10 = (equalCopy[3] & 1) == 0;
  if (*&self->_has)
  {
    if ((equalCopy[3] & 1) != 0 && self->_referenceType == *(equalCopy + 2))
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
  v4 = objc_msgSend_hash(self->_zoneIdentifier, a2, v2);
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_referenceType;
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
  zoneIdentifier = self->_zoneIdentifier;
  v6 = *(fromCopy + 2);
  if (zoneIdentifier)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    objc_msgSend_mergeFrom_(zoneIdentifier, fromCopy, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    objc_msgSend_setZoneIdentifier_(self, fromCopy, v6);
  }

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 24))
  {
    self->_referenceType = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end