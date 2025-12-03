@interface CKDPRecordRetrieveVersionsRequest
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

@implementation CKDPRecordRetrieveVersionsRequest

+ (id)options
{
  if (qword_280D55080 != -1)
  {
    dispatch_once(&qword_280D55080, &unk_28385DF60);
  }

  v3 = qword_280D55078;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRecordRetrieveVersionsRequest;
  v4 = [(CKDPRecordRetrieveVersionsRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  recordIdentifier = self->_recordIdentifier;
  if (recordIdentifier)
  {
    v8 = objc_msgSend_dictionaryRepresentation(recordIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"recordIdentifier");
  }

  requestedFields = self->_requestedFields;
  if (requestedFields)
  {
    v11 = objc_msgSend_dictionaryRepresentation(requestedFields, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"requestedFields");
  }

  minimumVersionEtag = self->_minimumVersionEtag;
  if (minimumVersionEtag)
  {
    objc_msgSend_setObject_forKey_(v6, v4, minimumVersionEtag, @"minimumVersionEtag");
  }

  assetsToDownload = self->_assetsToDownload;
  if (assetsToDownload)
  {
    v15 = objc_msgSend_dictionaryRepresentation(assetsToDownload, v4, minimumVersionEtag);
    objc_msgSend_setObject_forKey_(v6, v16, v15, @"assetsToDownload");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_recordIdentifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_requestedFields)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_minimumVersionEtag)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_assetsToDownload)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  recordIdentifier = self->_recordIdentifier;
  v10 = toCopy;
  if (recordIdentifier)
  {
    objc_msgSend_setRecordIdentifier_(toCopy, v5, recordIdentifier);
    toCopy = v10;
  }

  requestedFields = self->_requestedFields;
  if (requestedFields)
  {
    objc_msgSend_setRequestedFields_(v10, v5, requestedFields);
    toCopy = v10;
  }

  minimumVersionEtag = self->_minimumVersionEtag;
  if (minimumVersionEtag)
  {
    objc_msgSend_setMinimumVersionEtag_(v10, v5, minimumVersionEtag);
    toCopy = v10;
  }

  assetsToDownload = self->_assetsToDownload;
  if (assetsToDownload)
  {
    objc_msgSend_setAssetsToDownload_(v10, v5, assetsToDownload);
    toCopy = v10;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_recordIdentifier, v11, zone);
  v13 = v10[3];
  v10[3] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_requestedFields, v14, zone);
  v16 = v10[4];
  v10[4] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_minimumVersionEtag, v17, zone);
  v19 = v10[2];
  v10[2] = v18;

  v21 = objc_msgSend_copyWithZone_(self->_assetsToDownload, v20, zone);
  v22 = v10[1];
  v10[1] = v21;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((recordIdentifier = self->_recordIdentifier, v9 = equalCopy[3], !(recordIdentifier | v9)) || objc_msgSend_isEqual_(recordIdentifier, v7, v9)) && ((requestedFields = self->_requestedFields, v11 = equalCopy[4], !(requestedFields | v11)) || objc_msgSend_isEqual_(requestedFields, v7, v11)) && ((minimumVersionEtag = self->_minimumVersionEtag, v13 = equalCopy[2], !(minimumVersionEtag | v13)) || objc_msgSend_isEqual_(minimumVersionEtag, v7, v13)))
  {
    assetsToDownload = self->_assetsToDownload;
    v15 = equalCopy[1];
    if (assetsToDownload | v15)
    {
      isEqual = objc_msgSend_isEqual_(assetsToDownload, v7, v15);
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
  v4 = objc_msgSend_hash(self->_recordIdentifier, a2, v2);
  v7 = objc_msgSend_hash(self->_requestedFields, v5, v6) ^ v4;
  v10 = objc_msgSend_hash(self->_minimumVersionEtag, v8, v9);
  return v7 ^ v10 ^ objc_msgSend_hash(self->_assetsToDownload, v11, v12);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  recordIdentifier = self->_recordIdentifier;
  v13 = fromCopy;
  v6 = fromCopy[3];
  if (recordIdentifier)
  {
    if (v6)
    {
      objc_msgSend_mergeFrom_(recordIdentifier, fromCopy, v6);
    }
  }

  else if (v6)
  {
    objc_msgSend_setRecordIdentifier_(self, fromCopy, v6);
  }

  requestedFields = self->_requestedFields;
  v8 = v13;
  v9 = v13[4];
  if (requestedFields)
  {
    if (v9)
    {
      objc_msgSend_mergeFrom_(requestedFields, v13, v9);
    }
  }

  else if (v9)
  {
    objc_msgSend_setRequestedFields_(self, v13, v9);
  }

  v10 = v13[2];
  if (v10)
  {
    objc_msgSend_setMinimumVersionEtag_(self, v8, v10);
  }

  assetsToDownload = self->_assetsToDownload;
  v12 = v13[1];
  if (assetsToDownload)
  {
    if (v12)
    {
      objc_msgSend_mergeFrom_(assetsToDownload, v13, v12);
    }
  }

  else if (v12)
  {
    objc_msgSend_setAssetsToDownload_(self, v13, v12);
  }
}

@end