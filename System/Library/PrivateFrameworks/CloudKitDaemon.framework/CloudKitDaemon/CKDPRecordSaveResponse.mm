@interface CKDPRecordSaveResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPRecordSaveResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRecordSaveResponse;
  v4 = [(CKDPRecordSaveResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  etag = self->_etag;
  if (etag)
  {
    objc_msgSend_setObject_forKey_(v4, v5, etag, @"etag");
  }

  timeStatistics = self->_timeStatistics;
  if (timeStatistics)
  {
    v9 = objc_msgSend_dictionaryRepresentation(timeStatistics, v5, etag);
    objc_msgSend_setObject_forKey_(v6, v10, v9, @"timeStatistics");
  }

  serverFields = self->_serverFields;
  if (serverFields)
  {
    v12 = objc_msgSend_dictionaryRepresentation(serverFields, v5, etag);
    objc_msgSend_setObject_forKey_(v6, v13, v12, @"serverFields");
  }

  expirationTime = self->_expirationTime;
  if (expirationTime)
  {
    v15 = objc_msgSend_dictionaryRepresentation(expirationTime, v5, etag);
    objc_msgSend_setObject_forKey_(v6, v16, v15, @"expirationTime");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_etag)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_timeStatistics)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_serverFields)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_expirationTime)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  etag = self->_etag;
  v10 = toCopy;
  if (etag)
  {
    objc_msgSend_setEtag_(toCopy, v5, etag);
    toCopy = v10;
  }

  timeStatistics = self->_timeStatistics;
  if (timeStatistics)
  {
    objc_msgSend_setTimeStatistics_(v10, v5, timeStatistics);
    toCopy = v10;
  }

  serverFields = self->_serverFields;
  if (serverFields)
  {
    objc_msgSend_setServerFields_(v10, v5, serverFields);
    toCopy = v10;
  }

  expirationTime = self->_expirationTime;
  if (expirationTime)
  {
    objc_msgSend_setExpirationTime_(v10, v5, expirationTime);
    toCopy = v10;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_etag, v11, zone);
  v13 = v10[1];
  v10[1] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_timeStatistics, v14, zone);
  v16 = v10[4];
  v10[4] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_serverFields, v17, zone);
  v19 = v10[3];
  v10[3] = v18;

  v21 = objc_msgSend_copyWithZone_(self->_expirationTime, v20, zone);
  v22 = v10[2];
  v10[2] = v21;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((etag = self->_etag, v9 = equalCopy[1], !(etag | v9)) || objc_msgSend_isEqual_(etag, v7, v9)) && ((timeStatistics = self->_timeStatistics, v11 = equalCopy[4], !(timeStatistics | v11)) || objc_msgSend_isEqual_(timeStatistics, v7, v11)) && ((serverFields = self->_serverFields, v13 = equalCopy[3], !(serverFields | v13)) || objc_msgSend_isEqual_(serverFields, v7, v13)))
  {
    expirationTime = self->_expirationTime;
    v15 = equalCopy[2];
    if (expirationTime | v15)
    {
      isEqual = objc_msgSend_isEqual_(expirationTime, v7, v15);
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

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_etag, a2, v2);
  v7 = objc_msgSend_hash(self->_timeStatistics, v5, v6) ^ v4;
  v10 = objc_msgSend_hash(self->_serverFields, v8, v9);
  return v7 ^ v10 ^ objc_msgSend_hash(self->_expirationTime, v11, v12);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 1);
  if (v5)
  {
    objc_msgSend_setEtag_(self, v4, v5);
  }

  timeStatistics = self->_timeStatistics;
  v7 = *(fromCopy + 4);
  if (timeStatistics)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(timeStatistics, fromCopy, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setTimeStatistics_(self, fromCopy, v7);
  }

  serverFields = self->_serverFields;
  v9 = *(fromCopy + 3);
  if (serverFields)
  {
    if (v9)
    {
      objc_msgSend_mergeFrom_(serverFields, fromCopy, v9);
    }
  }

  else if (v9)
  {
    objc_msgSend_setServerFields_(self, fromCopy, v9);
  }

  expirationTime = self->_expirationTime;
  v11 = *(fromCopy + 2);
  if (expirationTime)
  {
    if (v11)
    {
      objc_msgSend_mergeFrom_(expirationTime, fromCopy, v11);
    }
  }

  else if (v11)
  {
    objc_msgSend_setExpirationTime_(self, fromCopy, v11);
  }
}

@end