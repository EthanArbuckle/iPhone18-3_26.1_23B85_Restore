@interface CKDPZoneRetrieveRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSkipContinuation:(BOOL)continuation;
- (void)writeTo:(id)to;
@end

@implementation CKDPZoneRetrieveRequest

+ (id)options
{
  if (qword_280D55140 != -1)
  {
    dispatch_once(&qword_280D55140, &unk_28385E2A0);
  }

  v3 = qword_280D55138;

  return v3;
}

- (void)setHasSkipContinuation:(BOOL)continuation
{
  if (continuation)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPZoneRetrieveRequest;
  v4 = [(CKDPZoneRetrieveRequest *)&v11 description];
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
    v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_onlyFetchPCSInfo);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"onlyFetchPCSInfo");
  }

  continuationMarker = self->_continuationMarker;
  if (continuationMarker)
  {
    objc_msgSend_setObject_forKey_(v6, v4, continuationMarker, @"continuationMarker");
  }

  if ((*&self->_has & 2) != 0)
  {
    v13 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_skipContinuation);
    objc_msgSend_setObject_forKey_(v6, v14, v13, @"skipContinuation");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_zoneIdentifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    onlyFetchPCSInfo = self->_onlyFetchPCSInfo;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }

  if (self->_continuationMarker)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    skipContinuation = self->_skipContinuation;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
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

  if (*&self->_has)
  {
    toCopy[24] = self->_onlyFetchPCSInfo;
    toCopy[28] |= 1u;
  }

  continuationMarker = self->_continuationMarker;
  if (continuationMarker)
  {
    objc_msgSend_setContinuationMarker_(v8, v5, continuationMarker);
    toCopy = v8;
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[25] = self->_skipContinuation;
    toCopy[28] |= 2u;
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
    *(v10 + 24) = self->_onlyFetchPCSInfo;
    *(v10 + 28) |= 1u;
  }

  v15 = objc_msgSend_copyWithZone_(self->_continuationMarker, v14, zone);
  v16 = *(v10 + 8);
  *(v10 + 8) = v15;

  if ((*&self->_has & 2) != 0)
  {
    *(v10 + 25) = self->_skipContinuation;
    *(v10 + 28) |= 2u;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_15;
  }

  zoneIdentifier = self->_zoneIdentifier;
  v9 = equalCopy[2];
  if (zoneIdentifier | v9)
  {
    if (!objc_msgSend_isEqual_(zoneIdentifier, v7, v9))
    {
      goto LABEL_15;
    }
  }

  has = self->_has;
  v11 = *(equalCopy + 28);
  if (has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
      goto LABEL_15;
    }

    v16 = *(equalCopy + 24);
    if (self->_onlyFetchPCSInfo)
    {
      if ((equalCopy[3] & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (equalCopy[3])
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_15;
  }

  continuationMarker = self->_continuationMarker;
  v13 = equalCopy[1];
  if (!(continuationMarker | v13))
  {
    goto LABEL_9;
  }

  if (!objc_msgSend_isEqual_(continuationMarker, v7, v13))
  {
LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  has = self->_has;
  v11 = *(equalCopy + 28);
LABEL_9:
  v14 = (v11 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v11 & 2) != 0)
    {
      if (self->_skipContinuation)
      {
        if (*(equalCopy + 25))
        {
          goto LABEL_23;
        }
      }

      else if (!*(equalCopy + 25))
      {
LABEL_23:
        v14 = 1;
        goto LABEL_16;
      }
    }

    goto LABEL_15;
  }

LABEL_16:

  return v14;
}

- (unint64_t)hash
{
  v6 = objc_msgSend_hash(self->_zoneIdentifier, a2, v2);
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_onlyFetchPCSInfo;
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_msgSend_hash(self->_continuationMarker, v4, v5);
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_skipContinuation;
  }

  else
  {
    v9 = 0;
  }

  return v7 ^ v6 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  zoneIdentifier = self->_zoneIdentifier;
  v6 = *(fromCopy + 2);
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
  if (*(fromCopy + 28))
  {
    self->_onlyFetchPCSInfo = *(fromCopy + 24);
    *&self->_has |= 1u;
  }

  v7 = *(fromCopy + 1);
  if (v7)
  {
    objc_msgSend_setContinuationMarker_(self, fromCopy, v7);
    fromCopy = v8;
  }

  if ((*(fromCopy + 28) & 2) != 0)
  {
    self->_skipContinuation = *(fromCopy + 25);
    *&self->_has |= 2u;
  }

  MEMORY[0x2821F96F8]();
}

@end