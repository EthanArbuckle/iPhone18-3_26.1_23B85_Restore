@interface CKDPRequestOperationHeaderSupplementalZoneInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPRequestOperationHeaderSupplementalZoneInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRequestOperationHeaderSupplementalZoneInfo;
  v4 = [(CKDPRequestOperationHeaderSupplementalZoneInfo *)&v11 description];
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

  syncContinuationToken = self->_syncContinuationToken;
  if (syncContinuationToken)
  {
    objc_msgSend_setObject_forKey_(v6, v4, syncContinuationToken, @"syncContinuationToken");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_zoneIdentifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_syncContinuationToken)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
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

  syncContinuationToken = self->_syncContinuationToken;
  if (syncContinuationToken)
  {
    objc_msgSend_setSyncContinuationToken_(v8, v5, syncContinuationToken);
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_zoneIdentifier, v11, a3);
  v13 = v10[2];
  v10[2] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_syncContinuationToken, v14, a3);
  v16 = v10[1];
  v10[1] = v15;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((zoneIdentifier = self->_zoneIdentifier, v9 = v4[2], !(zoneIdentifier | v9)) || objc_msgSend_isEqual_(zoneIdentifier, v7, v9)))
  {
    syncContinuationToken = self->_syncContinuationToken;
    v11 = v4[1];
    if (syncContinuationToken | v11)
    {
      isEqual = objc_msgSend_isEqual_(syncContinuationToken, v7, v11);
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  zoneIdentifier = self->_zoneIdentifier;
  v6 = v4[2];
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
  v7 = v4[1];
  if (v7)
  {
    objc_msgSend_setSyncContinuationToken_(self, v4, v7);
  }

  MEMORY[0x2821F96F8]();
}

@end