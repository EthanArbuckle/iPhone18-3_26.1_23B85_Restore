@interface CKDPQueryRetrieveResponseQueryResult
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
- (void)writeTo:(id)a3;
@end

@implementation CKDPQueryRetrieveResponseQueryResult

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 1;
  }
}

- (id)typeAsString:(int)a3
{
  if (a3 == 1)
  {
    v4 = @"idAndEtag";
  }

  else if (a3 == 2)
  {
    v4 = @"fullRecord";
  }

  else
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  return v4;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  v6 = 1;
  if ((objc_msgSend_isEqualToString_(v3, v4, @"idAndEtag") & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(v3, v5, @"fullRecord"))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPQueryRetrieveResponseQueryResult;
  v4 = [(CKDPQueryRetrieveResponseQueryResult *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  identifier = self->_identifier;
  if (identifier)
  {
    v8 = objc_msgSend_dictionaryRepresentation(identifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"identifier");
  }

  etag = self->_etag;
  if (etag)
  {
    objc_msgSend_setObject_forKey_(v6, v4, etag, @"etag");
  }

  if (*&self->_has)
  {
    type = self->_type;
    if (type == 1)
    {
      v12 = @"idAndEtag";
      objc_msgSend_setObject_forKey_(v6, v4, @"idAndEtag", @"type");
    }

    else if (type == 2)
    {
      v12 = @"fullRecord";
      objc_msgSend_setObject_forKey_(v6, v4, @"fullRecord", @"type");
    }

    else
    {
      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_type);
      objc_msgSend_setObject_forKey_(v6, v13, v12, @"type");
    }
  }

  record = self->_record;
  if (record)
  {
    v15 = objc_msgSend_dictionaryRepresentation(record, v4, etag);
    objc_msgSend_setObject_forKey_(v6, v16, v15, @"record");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_etag)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_record)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v9 = v4;
  if (identifier)
  {
    objc_msgSend_setIdentifier_(v4, v5, identifier);
    v4 = v9;
  }

  etag = self->_etag;
  if (etag)
  {
    objc_msgSend_setEtag_(v9, v5, etag);
    v4 = v9;
  }

  if (*&self->_has)
  {
    *(v4 + 8) = self->_type;
    *(v4 + 36) |= 1u;
  }

  record = self->_record;
  if (record)
  {
    objc_msgSend_setRecord_(v9, v5, record);
    v4 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_identifier, v11, a3);
  v13 = *(v10 + 16);
  *(v10 + 16) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_etag, v14, a3);
  v16 = *(v10 + 8);
  *(v10 + 8) = v15;

  if (*&self->_has)
  {
    *(v10 + 32) = self->_type;
    *(v10 + 36) |= 1u;
  }

  v18 = objc_msgSend_copyWithZone_(self->_record, v17, a3);
  v19 = *(v10 + 24);
  *(v10 + 24) = v18;

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

  identifier = self->_identifier;
  v9 = v4[2];
  if (identifier | v9)
  {
    if (!objc_msgSend_isEqual_(identifier, v7, v9))
    {
      goto LABEL_13;
    }
  }

  etag = self->_etag;
  v11 = v4[1];
  if (etag | v11)
  {
    if (!objc_msgSend_isEqual_(etag, v7, v11))
    {
      goto LABEL_13;
    }
  }

  v12 = *(v4 + 36);
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_type != *(v4 + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 36))
  {
LABEL_13:
    isEqual = 0;
    goto LABEL_14;
  }

  record = self->_record;
  v14 = v4[3];
  if (record | v14)
  {
    isEqual = objc_msgSend_isEqual_(record, v7, v14);
  }

  else
  {
    isEqual = 1;
  }

LABEL_14:

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_identifier, a2, v2);
  v7 = objc_msgSend_hash(self->_etag, v5, v6);
  if (*&self->_has)
  {
    v10 = 2654435761 * self->_type;
  }

  else
  {
    v10 = 0;
  }

  return v7 ^ v4 ^ v10 ^ objc_msgSend_hash(self->_record, v8, v9);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v6 = *(v4 + 2);
  v10 = v4;
  if (identifier)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(identifier, v4, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setIdentifier_(self, v4, v6);
  }

  v4 = v10;
LABEL_7:
  v7 = *(v4 + 1);
  if (v7)
  {
    objc_msgSend_setEtag_(self, v4, v7);
    v4 = v10;
  }

  if (*(v4 + 36))
  {
    self->_type = *(v4 + 8);
    *&self->_has |= 1u;
  }

  record = self->_record;
  v9 = *(v4 + 3);
  if (record)
  {
    if (v9)
    {
      objc_msgSend_mergeFrom_(record, v4, v9);
    }
  }

  else if (v9)
  {
    objc_msgSend_setRecord_(self, v4, v9);
  }

  MEMORY[0x2821F96F8]();
}

@end