@interface CKDPZoneDeleteRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPZoneDeleteRequest

+ (id)options
{
  if (qword_280D55110 != -1)
  {
    dispatch_once(&qword_280D55110, &unk_28385E240);
  }

  v3 = qword_280D55108;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPZoneDeleteRequest;
  v4 = [(CKDPZoneDeleteRequest *)&v11 description];
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
    v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_userPurge);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"userPurge");
  }

  lastMissingManateeIdentityErrorDate = self->_lastMissingManateeIdentityErrorDate;
  if (lastMissingManateeIdentityErrorDate)
  {
    v13 = objc_msgSend_dictionaryRepresentation(lastMissingManateeIdentityErrorDate, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v14, v13, @"lastMissingManateeIdentityErrorDate");
  }

  ancestryEtag = self->_ancestryEtag;
  if (ancestryEtag)
  {
    v16 = objc_msgSend_dictionaryRepresentation(ancestryEtag, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v17, v16, @"ancestryEtag");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_zoneIdentifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    userPurge = self->_userPurge;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_lastMissingManateeIdentityErrorDate)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_ancestryEtag)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  zoneIdentifier = self->_zoneIdentifier;
  v9 = v4;
  if (zoneIdentifier)
  {
    objc_msgSend_setZoneIdentifier_(v4, v5, zoneIdentifier);
    v4 = v9;
  }

  if (*&self->_has)
  {
    v4[32] = self->_userPurge;
    v4[36] |= 1u;
  }

  lastMissingManateeIdentityErrorDate = self->_lastMissingManateeIdentityErrorDate;
  if (lastMissingManateeIdentityErrorDate)
  {
    objc_msgSend_setLastMissingManateeIdentityErrorDate_(v9, v5, lastMissingManateeIdentityErrorDate);
    v4 = v9;
  }

  ancestryEtag = self->_ancestryEtag;
  if (ancestryEtag)
  {
    objc_msgSend_setAncestryEtag_(v9, v5, ancestryEtag);
    v4 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_zoneIdentifier, v11, a3);
  v13 = *(v10 + 24);
  *(v10 + 24) = v12;

  if (*&self->_has)
  {
    *(v10 + 32) = self->_userPurge;
    *(v10 + 36) |= 1u;
  }

  v15 = objc_msgSend_copyWithZone_(self->_lastMissingManateeIdentityErrorDate, v14, a3);
  v16 = *(v10 + 16);
  *(v10 + 16) = v15;

  v18 = objc_msgSend_copyWithZone_(self->_ancestryEtag, v17, a3);
  v19 = *(v10 + 8);
  *(v10 + 8) = v18;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_11;
  }

  zoneIdentifier = self->_zoneIdentifier;
  v9 = v4[3];
  if (zoneIdentifier | v9)
  {
    if (!objc_msgSend_isEqual_(zoneIdentifier, v7, v9))
    {
      goto LABEL_11;
    }
  }

  v10 = *(v4 + 36);
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0)
    {
      goto LABEL_11;
    }

    v10 = *(v4 + 32);
    if (self->_userPurge)
    {
      if (v4[4])
      {
        goto LABEL_6;
      }

LABEL_11:
      isEqual = 0;
      goto LABEL_12;
    }
  }

  if (v10)
  {
    goto LABEL_11;
  }

LABEL_6:
  lastMissingManateeIdentityErrorDate = self->_lastMissingManateeIdentityErrorDate;
  v12 = v4[2];
  if (lastMissingManateeIdentityErrorDate | v12 && !objc_msgSend_isEqual_(lastMissingManateeIdentityErrorDate, v7, v12))
  {
    goto LABEL_11;
  }

  ancestryEtag = self->_ancestryEtag;
  v14 = v4[1];
  if (ancestryEtag | v14)
  {
    isEqual = objc_msgSend_isEqual_(ancestryEtag, v7, v14);
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
  v4 = objc_msgSend_hash(self->_zoneIdentifier, a2, v2);
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_userPurge;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 ^ v4;
  v9 = objc_msgSend_hash(self->_lastMissingManateeIdentityErrorDate, v5, v6);
  return v8 ^ v9 ^ objc_msgSend_hash(self->_ancestryEtag, v10, v11);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  zoneIdentifier = self->_zoneIdentifier;
  v6 = *(v4 + 3);
  v11 = v4;
  if (zoneIdentifier)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(zoneIdentifier, v4, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setZoneIdentifier_(self, v4, v6);
  }

  v4 = v11;
LABEL_7:
  if (*(v4 + 36))
  {
    self->_userPurge = *(v4 + 32);
    *&self->_has |= 1u;
  }

  lastMissingManateeIdentityErrorDate = self->_lastMissingManateeIdentityErrorDate;
  v8 = *(v4 + 2);
  if (lastMissingManateeIdentityErrorDate)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    objc_msgSend_mergeFrom_(lastMissingManateeIdentityErrorDate, v4, v8);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    objc_msgSend_setLastMissingManateeIdentityErrorDate_(self, v4, v8);
  }

  v4 = v11;
LABEL_15:
  ancestryEtag = self->_ancestryEtag;
  v10 = *(v4 + 1);
  if (ancestryEtag)
  {
    if (v10)
    {
      objc_msgSend_mergeFrom_(ancestryEtag, v4, v10);
    }
  }

  else if (v10)
  {
    objc_msgSend_setAncestryEtag_(self, v4, v10);
  }

  MEMORY[0x2821F96F8]();
}

@end