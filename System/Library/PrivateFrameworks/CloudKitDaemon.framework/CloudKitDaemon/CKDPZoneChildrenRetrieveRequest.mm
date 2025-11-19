@interface CKDPZoneChildrenRetrieveRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)traversalTypeAsString:(int)a3;
- (int)StringAsTraversalType:(id)a3;
- (int)traversalType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTraversalType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPZoneChildrenRetrieveRequest

+ (id)options
{
  if (qword_280D55100 != -1)
  {
    dispatch_once(&qword_280D55100, &unk_28385E220);
  }

  v3 = qword_280D550F8;

  return v3;
}

- (int)traversalType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_traversalType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTraversalType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)traversalTypeAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_27854CDB8[a3];
  }

  return v4;
}

- (int)StringAsTraversalType:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"UNKNOWN"))
  {
    v6 = 0;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"DIRECT_CHILDREN"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"DFS"))
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
  v11.super_class = CKDPZoneChildrenRetrieveRequest;
  v4 = [(CKDPZoneChildrenRetrieveRequest *)&v11 description];
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

  if ((*&self->_has & 2) != 0)
  {
    traversalType = self->_traversalType;
    if (traversalType >= 3)
    {
      v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_traversalType);
    }

    else
    {
      v11 = off_27854CDB8[traversalType];
    }

    objc_msgSend_setObject_forKey_(v6, v4, v11, @"traversalType");
  }

  continuationToken = self->_continuationToken;
  if (continuationToken)
  {
    objc_msgSend_setObject_forKey_(v6, v4, continuationToken, @"continuationToken");
  }

  if (*&self->_has)
  {
    v13 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v4, self->_limit);
    objc_msgSend_setObject_forKey_(v6, v14, v13, @"limit");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_zoneIdentifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    traversalType = self->_traversalType;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }

  if (self->_continuationToken)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    limit = self->_limit;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  zoneIdentifier = self->_zoneIdentifier;
  v8 = v4;
  if (zoneIdentifier)
  {
    objc_msgSend_setZoneIdentifier_(v4, v5, zoneIdentifier);
    v4 = v8;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 5) = self->_traversalType;
    *(v4 + 32) |= 2u;
  }

  continuationToken = self->_continuationToken;
  if (continuationToken)
  {
    objc_msgSend_setContinuationToken_(v8, v5, continuationToken);
    v4 = v8;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_limit;
    *(v4 + 32) |= 1u;
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

  if ((*&self->_has & 2) != 0)
  {
    *(v10 + 20) = self->_traversalType;
    *(v10 + 32) |= 2u;
  }

  v15 = objc_msgSend_copyWithZone_(self->_continuationToken, v14, a3);
  v16 = *(v10 + 8);
  *(v10 + 8) = v15;

  if (*&self->_has)
  {
    *(v10 + 16) = self->_limit;
    *(v10 + 32) |= 1u;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_16;
  }

  zoneIdentifier = self->_zoneIdentifier;
  v9 = v4[3];
  if (zoneIdentifier | v9)
  {
    if (!objc_msgSend_isEqual_(zoneIdentifier, v7, v9))
    {
      goto LABEL_16;
    }
  }

  has = self->_has;
  v11 = *(v4 + 32);
  if ((has & 2) != 0)
  {
    if ((v4[4] & 2) == 0 || self->_traversalType != *(v4 + 5))
    {
      goto LABEL_16;
    }
  }

  else if ((v4[4] & 2) != 0)
  {
    goto LABEL_16;
  }

  continuationToken = self->_continuationToken;
  v13 = v4[1];
  if (continuationToken | v13)
  {
    if (!objc_msgSend_isEqual_(continuationToken, v7, v13))
    {
LABEL_16:
      v14 = 0;
      goto LABEL_17;
    }

    has = self->_has;
    v11 = *(v4 + 32);
  }

  v14 = (v11 & 1) == 0;
  if (has)
  {
    if ((v11 & 1) == 0 || self->_limit != *(v4 + 4))
    {
      goto LABEL_16;
    }

    v14 = 1;
  }

LABEL_17:

  return v14;
}

- (unint64_t)hash
{
  v6 = objc_msgSend_hash(self->_zoneIdentifier, a2, v2);
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_traversalType;
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_msgSend_hash(self->_continuationToken, v4, v5);
  if (*&self->_has)
  {
    v9 = 2654435761 * self->_limit;
  }

  else
  {
    v9 = 0;
  }

  return v7 ^ v6 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  zoneIdentifier = self->_zoneIdentifier;
  v6 = *(v4 + 3);
  v8 = v4;
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

  v4 = v8;
LABEL_7:
  if ((*(v4 + 32) & 2) != 0)
  {
    self->_traversalType = *(v4 + 5);
    *&self->_has |= 2u;
  }

  v7 = *(v4 + 1);
  if (v7)
  {
    objc_msgSend_setContinuationToken_(self, v4, v7);
    v4 = v8;
  }

  if (*(v4 + 32))
  {
    self->_limit = *(v4 + 4);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end