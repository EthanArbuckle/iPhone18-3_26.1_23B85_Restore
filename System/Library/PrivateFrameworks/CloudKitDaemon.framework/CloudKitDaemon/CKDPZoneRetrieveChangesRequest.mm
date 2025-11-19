@interface CKDPZoneRetrieveChangesRequest
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_syncContinuationToken)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    maxChangedZones = self->_maxChangedZones;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  syncContinuationToken = self->_syncContinuationToken;
  if (syncContinuationToken)
  {
    v7 = v4;
    objc_msgSend_setSyncContinuationToken_(v4, v5, syncContinuationToken);
    v4 = v7;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_maxChangedZones;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_syncContinuationToken, v11, a3);
  v13 = *(v10 + 16);
  *(v10 + 16) = v12;

  if (*&self->_has)
  {
    *(v10 + 8) = self->_maxChangedZones;
    *(v10 + 24) |= 1u;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_8;
  }

  syncContinuationToken = self->_syncContinuationToken;
  v9 = v4[2];
  if (syncContinuationToken | v9)
  {
    if (!objc_msgSend_isEqual_(syncContinuationToken, v7, v9))
    {
      goto LABEL_8;
    }
  }

  v10 = (v4[3] & 1) == 0;
  if (*&self->_has)
  {
    if ((v4[3] & 1) != 0 && self->_maxChangedZones == *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = *(v4 + 2);
  if (v6)
  {
    v7 = v4;
    objc_msgSend_setSyncContinuationToken_(self, v5, v6);
    v4 = v7;
  }

  if (*(v4 + 24))
  {
    self->_maxChangedZones = *(v4 + 2);
    *&self->_has |= 1u;
  }
}

@end