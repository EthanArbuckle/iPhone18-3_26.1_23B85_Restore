@interface CKDPRecordRetrieveRequestRetrieveAssetURL
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)typeAsString:(int)a3;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPRecordRetrieveRequestRetrieveAssetURL

- (int)type
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_type;
  }

  else
  {
    return 1;
  }
}

- (void)setHasType:(BOOL)a3
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

- (id)typeAsString:(int)a3
{
  switch(a3)
  {
    case 1:
      v4 = @"publishedURL";

      break;
    case 4:
      v4 = @"chunkInfoUrl";

      break;
    case 2:
      v4 = @"streamingURL";

      break;
    default:
      v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);

      break;
  }

  return v4;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"publishedURL"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"streamingURL"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"chunkInfoUrl"))
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRecordRetrieveRequestRetrieveAssetURL;
  v4 = [(CKDPRecordRetrieveRequestRetrieveAssetURL *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  assetFields = self->_assetFields;
  if (assetFields)
  {
    v8 = objc_msgSend_dictionaryRepresentation(assetFields, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"assetFields");
  }

  has = self->_has;
  if (has)
  {
    v11 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v4, self->_requestedTTL);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"requestedTTL");

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    type = self->_type;
    switch(type)
    {
      case 1:
        v14 = @"publishedURL";
        objc_msgSend_setObject_forKey_(v6, v4, @"publishedURL", @"type");
        break;
      case 4:
        v14 = @"chunkInfoUrl";
        objc_msgSend_setObject_forKey_(v6, v4, @"chunkInfoUrl", @"type");
        break;
      case 2:
        v14 = @"streamingURL";
        objc_msgSend_setObject_forKey_(v6, v4, @"streamingURL", @"type");
        break;
      default:
        v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_type);
        objc_msgSend_setObject_forKey_(v6, v15, v14, @"type");
        break;
    }
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_assetFields)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    requestedTTL = self->_requestedTTL;
    PBDataWriterWriteInt64Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  assetFields = self->_assetFields;
  if (assetFields)
  {
    v8 = v4;
    objc_msgSend_setAssetFields_(v4, v5, assetFields);
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_requestedTTL;
    *(v4 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 6) = self->_type;
    *(v4 + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_assetFields, v11, a3);
  v13 = *(v10 + 16);
  *(v10 + 16) = v12;

  has = self->_has;
  if (has)
  {
    *(v10 + 8) = self->_requestedTTL;
    *(v10 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v10 + 24) = self->_type;
    *(v10 + 28) |= 2u;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_13;
  }

  assetFields = self->_assetFields;
  v9 = v4[2];
  if (assetFields | v9)
  {
    if (!objc_msgSend_isEqual_(assetFields, v7, v9))
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_requestedTTL != v4[1])
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v10 = (*(v4 + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_type != *(v4 + 6))
    {
      goto LABEL_13;
    }

    v10 = 1;
  }

LABEL_14:

  return v10;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_assetFields, a2, v2);
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_requestedTTL;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v5 ^ v4 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_type;
  return v5 ^ v4 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  assetFields = self->_assetFields;
  v6 = *(v4 + 2);
  if (assetFields)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    objc_msgSend_mergeFrom_(assetFields, v4, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    objc_msgSend_setAssetFields_(self, v4, v6);
  }

  v4 = v8;
LABEL_7:
  v7 = *(v4 + 28);
  if (v7)
  {
    self->_requestedTTL = *(v4 + 1);
    *&self->_has |= 1u;
    v7 = *(v4 + 28);
  }

  if ((v7 & 2) != 0)
  {
    self->_type = *(v4 + 6);
    *&self->_has |= 2u;
  }

  MEMORY[0x2821F96F8]();
}

@end