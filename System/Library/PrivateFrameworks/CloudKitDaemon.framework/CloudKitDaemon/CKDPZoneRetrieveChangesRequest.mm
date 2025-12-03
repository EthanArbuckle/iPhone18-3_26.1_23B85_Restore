@interface CKDPZoneRetrieveChangesRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPZoneRetrieveChangesRequest

+ (id)options
{
  if (qword_280D55130 != -1)
  {
    dispatch_once(&qword_280D55130, &unk_28385E280);
  }

  v3 = qword_280D55128;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPZoneRetrieveChangesRequest;
  v4 = [(CKDPZoneRetrieveChangesRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  syncContinuationToken = self->_syncContinuationToken;
  if (syncContinuationToken)
  {
    objc_msgSend_setObject_forKey_(v4, v5, syncContinuationToken, @"syncContinuationToken");
  }

  if (*&self->_has)
  {
    v8 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v5, self->_maxChangedZones);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"maxChangedZones");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_syncContinuationToken)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    maxChangedZones = self->_maxChangedZones;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  syncContinuationToken = self->_syncContinuationToken;
  if (syncContinuationToken)
  {
    v7 = toCopy;
    objc_msgSend_setSyncContinuationToken_(toCopy, v5, syncContinuationToken);
    toCopy = v7;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_maxChangedZones;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_syncContinuationToken, v11, zone);
  v13 = *(v10 + 16);
  *(v10 + 16) = v12;

  if (*&self->_has)
  {
    *(v10 + 8) = self->_maxChangedZones;
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

  syncContinuationToken = self->_syncContinuationToken;
  v9 = equalCopy[2];
  if (syncContinuationToken | v9)
  {
    if (!objc_msgSend_isEqual_(syncContinuationToken, v7, v9))
    {
      goto LABEL_8;
    }
  }

  v10 = (equalCopy[3] & 1) == 0;
  if (*&self->_has)
  {
    if ((equalCopy[3] & 1) != 0 && self->_maxChangedZones == *(equalCopy + 2))
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
  v4 = objc_msgSend_hash(self->_syncContinuationToken, a2, v2);
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_maxChangedZones;
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
  v6 = *(fromCopy + 2);
  if (v6)
  {
    v7 = fromCopy;
    objc_msgSend_setSyncContinuationToken_(self, v5, v6);
    fromCopy = v7;
  }

  if (*(fromCopy + 24))
  {
    self->_maxChangedZones = *(fromCopy + 2);
    *&self->_has |= 1u;
  }
}

@end