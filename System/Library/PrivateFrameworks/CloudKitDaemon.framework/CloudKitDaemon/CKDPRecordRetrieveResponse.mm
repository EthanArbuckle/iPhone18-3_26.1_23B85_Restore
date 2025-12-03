@interface CKDPRecordRetrieveResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPRecordRetrieveResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRecordRetrieveResponse;
  v4 = [(CKDPRecordRetrieveResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  record = self->_record;
  if (record)
  {
    v8 = objc_msgSend_dictionaryRepresentation(record, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"record");
  }

  if (*&self->_has)
  {
    v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_clientVersionETagMatch);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"clientVersionETagMatch");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_record)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    clientVersionETagMatch = self->_clientVersionETagMatch;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  record = self->_record;
  if (record)
  {
    v7 = toCopy;
    objc_msgSend_setRecord_(toCopy, v5, record);
    toCopy = v7;
  }

  if (*&self->_has)
  {
    toCopy[16] = self->_clientVersionETagMatch;
    toCopy[20] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_record, v11, zone);
  v13 = *(v10 + 8);
  *(v10 + 8) = v12;

  if (*&self->_has)
  {
    *(v10 + 16) = self->_clientVersionETagMatch;
    *(v10 + 20) |= 1u;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_6;
  }

  record = self->_record;
  v9 = equalCopy[1];
  if (record | v9)
  {
    if (!objc_msgSend_isEqual_(record, v7, v9))
    {
      goto LABEL_6;
    }
  }

  v10 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0)
    {
LABEL_6:
      v10 = 0;
      goto LABEL_7;
    }

    if (self->_clientVersionETagMatch)
    {
      if ((equalCopy[2] & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (*(equalCopy + 16))
    {
      goto LABEL_6;
    }

    v10 = 1;
  }

LABEL_7:

  return v10;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_record, a2, v2);
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_clientVersionETagMatch;
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
  record = self->_record;
  v6 = *(fromCopy + 1);
  if (record)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    objc_msgSend_mergeFrom_(record, fromCopy, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    objc_msgSend_setRecord_(self, fromCopy, v6);
  }

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 20))
  {
    self->_clientVersionETagMatch = *(fromCopy + 16);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end