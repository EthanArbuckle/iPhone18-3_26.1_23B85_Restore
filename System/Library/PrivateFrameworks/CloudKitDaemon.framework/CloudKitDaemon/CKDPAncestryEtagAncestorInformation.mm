@interface CKDPAncestryEtagAncestorInformation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPAncestryEtagAncestorInformation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPAncestryEtagAncestorInformation;
  v4 = [(CKDPAncestryEtagAncestorInformation *)&v11 description];
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

  zoneEtag = self->_zoneEtag;
  if (zoneEtag)
  {
    objc_msgSend_setObject_forKey_(v6, v4, zoneEtag, @"zoneEtag");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_zoneIdentifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_zoneEtag)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  zoneIdentifier = self->_zoneIdentifier;
  v8 = toCopy;
  if (zoneIdentifier)
  {
    objc_msgSend_setZoneIdentifier_(toCopy, v5, zoneIdentifier);
    toCopy = v8;
  }

  zoneEtag = self->_zoneEtag;
  if (zoneEtag)
  {
    objc_msgSend_setZoneEtag_(v8, v5, zoneEtag);
    toCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_zoneIdentifier, v11, zone);
  v13 = v10[2];
  v10[2] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_zoneEtag, v14, zone);
  v16 = v10[1];
  v10[1] = v15;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((zoneIdentifier = self->_zoneIdentifier, v9 = equalCopy[2], !(zoneIdentifier | v9)) || objc_msgSend_isEqual_(zoneIdentifier, v7, v9)))
  {
    zoneEtag = self->_zoneEtag;
    v11 = equalCopy[1];
    if (zoneEtag | v11)
    {
      isEqual = objc_msgSend_isEqual_(zoneEtag, v7, v11);
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  zoneIdentifier = self->_zoneIdentifier;
  v6 = fromCopy[2];
  v8 = fromCopy;
  if (zoneIdentifier)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(zoneIdentifier, fromCopy, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setZoneIdentifier_(self, fromCopy, v6);
  }

  fromCopy = v8;
LABEL_7:
  v7 = fromCopy[1];
  if (v7)
  {
    objc_msgSend_setZoneEtag_(self, fromCopy, v7);
  }

  MEMORY[0x2821F96F8]();
}

@end