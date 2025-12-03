@interface CKDPQueryRetrieveResponseQueryResult
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)typeAsString:(int)string;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (id)typeAsString:(int)string
{
  if (string == 1)
  {
    v4 = @"idAndEtag";
  }

  else if (string == 2)
  {
    v4 = @"fullRecord";
  }

  else
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  return v4;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  v6 = 1;
  if ((objc_msgSend_isEqualToString_(typeCopy, v4, @"idAndEtag") & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(typeCopy, v5, @"fullRecord"))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_etag)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_record)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  identifier = self->_identifier;
  v9 = toCopy;
  if (identifier)
  {
    objc_msgSend_setIdentifier_(toCopy, v5, identifier);
    toCopy = v9;
  }

  etag = self->_etag;
  if (etag)
  {
    objc_msgSend_setEtag_(v9, v5, etag);
    toCopy = v9;
  }

  if (*&self->_has)
  {
    *(toCopy + 8) = self->_type;
    *(toCopy + 36) |= 1u;
  }

  record = self->_record;
  if (record)
  {
    objc_msgSend_setRecord_(v9, v5, record);
    toCopy = v9;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_identifier, v11, zone);
  v13 = *(v10 + 16);
  *(v10 + 16) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_etag, v14, zone);
  v16 = *(v10 + 8);
  *(v10 + 8) = v15;

  if (*&self->_has)
  {
    *(v10 + 32) = self->_type;
    *(v10 + 36) |= 1u;
  }

  v18 = objc_msgSend_copyWithZone_(self->_record, v17, zone);
  v19 = *(v10 + 24);
  *(v10 + 24) = v18;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_13;
  }

  identifier = self->_identifier;
  v9 = equalCopy[2];
  if (identifier | v9)
  {
    if (!objc_msgSend_isEqual_(identifier, v7, v9))
    {
      goto LABEL_13;
    }
  }

  etag = self->_etag;
  v11 = equalCopy[1];
  if (etag | v11)
  {
    if (!objc_msgSend_isEqual_(etag, v7, v11))
    {
      goto LABEL_13;
    }
  }

  v12 = *(equalCopy + 36);
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_type != *(equalCopy + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_13:
    isEqual = 0;
    goto LABEL_14;
  }

  record = self->_record;
  v14 = equalCopy[3];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  identifier = self->_identifier;
  v6 = *(fromCopy + 2);
  v10 = fromCopy;
  if (identifier)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(identifier, fromCopy, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setIdentifier_(self, fromCopy, v6);
  }

  fromCopy = v10;
LABEL_7:
  v7 = *(fromCopy + 1);
  if (v7)
  {
    objc_msgSend_setEtag_(self, fromCopy, v7);
    fromCopy = v10;
  }

  if (*(fromCopy + 36))
  {
    self->_type = *(fromCopy + 8);
    *&self->_has |= 1u;
  }

  record = self->_record;
  v9 = *(fromCopy + 3);
  if (record)
  {
    if (v9)
    {
      objc_msgSend_mergeFrom_(record, fromCopy, v9);
    }
  }

  else if (v9)
  {
    objc_msgSend_setRecord_(self, fromCopy, v9);
  }

  MEMORY[0x2821F96F8]();
}

@end