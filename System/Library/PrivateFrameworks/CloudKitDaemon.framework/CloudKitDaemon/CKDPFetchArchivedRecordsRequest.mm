@interface CKDPFetchArchivedRecordsRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNewestFirst:(BOOL)first;
- (void)writeTo:(id)to;
@end

@implementation CKDPFetchArchivedRecordsRequest

+ (id)options
{
  if (qword_280D54FC0 != -1)
  {
    dispatch_once(&qword_280D54FC0, &unk_28385DDA0);
  }

  v3 = qword_280D54FB8;

  return v3;
}

- (void)setHasNewestFirst:(BOOL)first
{
  if (first)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPFetchArchivedRecordsRequest;
  v4 = [(CKDPFetchArchivedRecordsRequest *)&v11 description];
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

  archiveContinuationToken = self->_archiveContinuationToken;
  if (archiveContinuationToken)
  {
    objc_msgSend_setObject_forKey_(v6, v4, archiveContinuationToken, @"archiveContinuationToken");
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v12 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_newestFirst);
    objc_msgSend_setObject_forKey_(v6, v13, v12, @"newestFirst");

    has = self->_has;
  }

  if (has)
  {
    v14 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v4, self->_limit);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"limit");
  }

  assetsToDownload = self->_assetsToDownload;
  if (assetsToDownload)
  {
    v17 = objc_msgSend_dictionaryRepresentation(assetsToDownload, v4, archiveContinuationToken);
    objc_msgSend_setObject_forKey_(v6, v18, v17, @"assetsToDownload");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_zoneIdentifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_archiveContinuationToken)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    newestFirst = self->_newestFirst;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    limit = self->_limit;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }

  if (self->_assetsToDownload)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  zoneIdentifier = self->_zoneIdentifier;
  v10 = toCopy;
  if (zoneIdentifier)
  {
    objc_msgSend_setZoneIdentifier_(toCopy, v5, zoneIdentifier);
    toCopy = v10;
  }

  archiveContinuationToken = self->_archiveContinuationToken;
  if (archiveContinuationToken)
  {
    objc_msgSend_setArchiveContinuationToken_(v10, v5, archiveContinuationToken);
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 40) = self->_newestFirst;
    *(toCopy + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 6) = self->_limit;
    *(toCopy + 44) |= 1u;
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
  v12 = objc_msgSend_copyWithZone_(self->_zoneIdentifier, v11, zone);
  v13 = *(v10 + 32);
  *(v10 + 32) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_archiveContinuationToken, v14, zone);
  v16 = *(v10 + 8);
  *(v10 + 8) = v15;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v10 + 40) = self->_newestFirst;
    *(v10 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v10 + 24) = self->_limit;
    *(v10 + 44) |= 1u;
  }

  v19 = objc_msgSend_copyWithZone_(self->_assetsToDownload, v17, zone);
  v20 = *(v10 + 16);
  *(v10 + 16) = v19;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_20;
  }

  zoneIdentifier = self->_zoneIdentifier;
  v9 = equalCopy[4];
  if (zoneIdentifier | v9)
  {
    if (!objc_msgSend_isEqual_(zoneIdentifier, v7, v9))
    {
      goto LABEL_20;
    }
  }

  archiveContinuationToken = self->_archiveContinuationToken;
  v11 = equalCopy[1];
  if (archiveContinuationToken | v11)
  {
    if (!objc_msgSend_isEqual_(archiveContinuationToken, v7, v11))
    {
      goto LABEL_20;
    }
  }

  v12 = *(equalCopy + 44);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 44) & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    isEqual = 0;
    goto LABEL_21;
  }

  if ((*(equalCopy + 44) & 2) == 0)
  {
    goto LABEL_20;
  }

  v13 = *(equalCopy + 40);
  if (self->_newestFirst)
  {
    if ((equalCopy[5] & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (equalCopy[5])
  {
    goto LABEL_20;
  }

LABEL_8:
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_limit != *(equalCopy + 6))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_20;
  }

  assetsToDownload = self->_assetsToDownload;
  v15 = equalCopy[2];
  if (assetsToDownload | v15)
  {
    isEqual = objc_msgSend_isEqual_(assetsToDownload, v7, v15);
  }

  else
  {
    isEqual = 1;
  }

LABEL_21:

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_zoneIdentifier, a2, v2);
  v7 = objc_msgSend_hash(self->_archiveContinuationToken, v5, v6);
  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_newestFirst;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    return v7 ^ v4 ^ v10 ^ v11 ^ objc_msgSend_hash(self->_assetsToDownload, v8, v9);
  }

  v10 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = 2654435761 * self->_limit;
  return v7 ^ v4 ^ v10 ^ v11 ^ objc_msgSend_hash(self->_assetsToDownload, v8, v9);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  zoneIdentifier = self->_zoneIdentifier;
  v6 = *(fromCopy + 4);
  v11 = fromCopy;
  if (zoneIdentifier)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(zoneIdentifier, fromCopy, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setZoneIdentifier_(self, fromCopy, v6);
  }

  fromCopy = v11;
LABEL_7:
  v7 = *(fromCopy + 1);
  if (v7)
  {
    objc_msgSend_setArchiveContinuationToken_(self, fromCopy, v7);
    fromCopy = v11;
  }

  v8 = *(fromCopy + 44);
  if ((v8 & 2) != 0)
  {
    self->_newestFirst = *(fromCopy + 40);
    *&self->_has |= 2u;
    v8 = *(fromCopy + 44);
  }

  if (v8)
  {
    self->_limit = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  assetsToDownload = self->_assetsToDownload;
  v10 = *(fromCopy + 2);
  if (assetsToDownload)
  {
    if (v10)
    {
      objc_msgSend_mergeFrom_(assetsToDownload, fromCopy, v10);
    }
  }

  else if (v10)
  {
    objc_msgSend_setAssetsToDownload_(self, fromCopy, v10);
  }

  MEMORY[0x2821F96F8]();
}

@end