@interface CKDPQueryRetrieveRequest
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

@implementation CKDPQueryRetrieveRequest

+ (id)options
{
  if (qword_280D55020 != -1)
  {
    dispatch_once(&qword_280D55020, &unk_28385DEA0);
  }

  v3 = qword_280D55018;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPQueryRetrieveRequest;
  v4 = [(CKDPQueryRetrieveRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  query = self->_query;
  if (query)
  {
    v8 = objc_msgSend_dictionaryRepresentation(query, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"query");
  }

  continuationMarker = self->_continuationMarker;
  if (continuationMarker)
  {
    objc_msgSend_setObject_forKey_(v6, v4, continuationMarker, @"continuationMarker");
  }

  if (*&self->_has)
  {
    v11 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v4, self->_limit);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"limit");
  }

  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    v14 = objc_msgSend_dictionaryRepresentation(zoneIdentifier, v4, continuationMarker);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"zoneIdentifier");
  }

  requestedFields = self->_requestedFields;
  if (requestedFields)
  {
    v17 = objc_msgSend_dictionaryRepresentation(requestedFields, v4, continuationMarker);
    objc_msgSend_setObject_forKey_(v6, v18, v17, @"requestedFields");
  }

  assetsToDownload = self->_assetsToDownload;
  if (assetsToDownload)
  {
    v20 = objc_msgSend_dictionaryRepresentation(assetsToDownload, v4, continuationMarker);
    objc_msgSend_setObject_forKey_(v6, v21, v20, @"assetsToDownload");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_query)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_continuationMarker)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    limit = self->_limit;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_zoneIdentifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_requestedFields)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_assetsToDownload)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  query = self->_query;
  v11 = toCopy;
  if (query)
  {
    objc_msgSend_setQuery_(toCopy, v5, query);
    toCopy = v11;
  }

  continuationMarker = self->_continuationMarker;
  if (continuationMarker)
  {
    objc_msgSend_setContinuationMarker_(v11, v5, continuationMarker);
    toCopy = v11;
  }

  if (*&self->_has)
  {
    *(toCopy + 6) = self->_limit;
    *(toCopy + 56) |= 1u;
  }

  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    objc_msgSend_setZoneIdentifier_(v11, v5, zoneIdentifier);
    toCopy = v11;
  }

  requestedFields = self->_requestedFields;
  if (requestedFields)
  {
    objc_msgSend_setRequestedFields_(v11, v5, requestedFields);
    toCopy = v11;
  }

  assetsToDownload = self->_assetsToDownload;
  if (assetsToDownload)
  {
    objc_msgSend_setAssetsToDownload_(v11, v5, assetsToDownload);
    toCopy = v11;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_query, v11, zone);
  v13 = *(v10 + 32);
  *(v10 + 32) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_continuationMarker, v14, zone);
  v16 = *(v10 + 16);
  *(v10 + 16) = v15;

  if (*&self->_has)
  {
    *(v10 + 24) = self->_limit;
    *(v10 + 56) |= 1u;
  }

  v18 = objc_msgSend_copyWithZone_(self->_zoneIdentifier, v17, zone);
  v19 = *(v10 + 48);
  *(v10 + 48) = v18;

  v21 = objc_msgSend_copyWithZone_(self->_requestedFields, v20, zone);
  v22 = *(v10 + 40);
  *(v10 + 40) = v21;

  v24 = objc_msgSend_copyWithZone_(self->_assetsToDownload, v23, zone);
  v25 = *(v10 + 8);
  *(v10 + 8) = v24;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_17;
  }

  query = self->_query;
  v9 = equalCopy[4];
  if (query | v9)
  {
    if (!objc_msgSend_isEqual_(query, v7, v9))
    {
      goto LABEL_17;
    }
  }

  continuationMarker = self->_continuationMarker;
  v11 = equalCopy[2];
  if (continuationMarker | v11)
  {
    if (!objc_msgSend_isEqual_(continuationMarker, v7, v11))
    {
      goto LABEL_17;
    }
  }

  v12 = *(equalCopy + 56);
  if (*&self->_has)
  {
    if ((equalCopy[7] & 1) == 0 || self->_limit != *(equalCopy + 6))
    {
      goto LABEL_17;
    }
  }

  else if (equalCopy[7])
  {
LABEL_17:
    isEqual = 0;
    goto LABEL_18;
  }

  zoneIdentifier = self->_zoneIdentifier;
  v14 = equalCopy[6];
  if (zoneIdentifier | v14 && !objc_msgSend_isEqual_(zoneIdentifier, v7, v14))
  {
    goto LABEL_17;
  }

  requestedFields = self->_requestedFields;
  v16 = equalCopy[5];
  if (requestedFields | v16)
  {
    if (!objc_msgSend_isEqual_(requestedFields, v7, v16))
    {
      goto LABEL_17;
    }
  }

  assetsToDownload = self->_assetsToDownload;
  v18 = equalCopy[1];
  if (assetsToDownload | v18)
  {
    isEqual = objc_msgSend_isEqual_(assetsToDownload, v7, v18);
  }

  else
  {
    isEqual = 1;
  }

LABEL_18:

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_query, a2, v2);
  v7 = objc_msgSend_hash(self->_continuationMarker, v5, v6);
  if (*&self->_has)
  {
    v10 = 2654435761 * self->_limit;
  }

  else
  {
    v10 = 0;
  }

  v11 = v7 ^ v4 ^ v10 ^ objc_msgSend_hash(self->_zoneIdentifier, v8, v9);
  v14 = objc_msgSend_hash(self->_requestedFields, v12, v13);
  return v11 ^ v14 ^ objc_msgSend_hash(self->_assetsToDownload, v15, v16);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  query = self->_query;
  v6 = *(fromCopy + 4);
  v14 = fromCopy;
  if (query)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(query, fromCopy, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setQuery_(self, fromCopy, v6);
  }

  fromCopy = v14;
LABEL_7:
  v7 = *(fromCopy + 2);
  if (v7)
  {
    objc_msgSend_setContinuationMarker_(self, fromCopy, v7);
    fromCopy = v14;
  }

  if (*(fromCopy + 56))
  {
    self->_limit = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  zoneIdentifier = self->_zoneIdentifier;
  v9 = *(fromCopy + 6);
  if (zoneIdentifier)
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    objc_msgSend_mergeFrom_(zoneIdentifier, fromCopy, v9);
  }

  else
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    objc_msgSend_setZoneIdentifier_(self, fromCopy, v9);
  }

  fromCopy = v14;
LABEL_17:
  requestedFields = self->_requestedFields;
  v11 = *(fromCopy + 5);
  if (requestedFields)
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    objc_msgSend_mergeFrom_(requestedFields, fromCopy, v11);
  }

  else
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    objc_msgSend_setRequestedFields_(self, fromCopy, v11);
  }

  fromCopy = v14;
LABEL_23:
  assetsToDownload = self->_assetsToDownload;
  v13 = *(fromCopy + 1);
  if (assetsToDownload)
  {
    if (v13)
    {
      objc_msgSend_mergeFrom_(assetsToDownload, fromCopy, v13);
    }
  }

  else if (v13)
  {
    objc_msgSend_setAssetsToDownload_(self, fromCopy, v13);
  }

  MEMORY[0x2821F96F8]();
}

@end