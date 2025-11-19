@interface CKDPFetchArchivedRecordsRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNewestFirst:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasNewestFirst:(BOOL)a3
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_zoneIdentifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_archiveContinuationToken)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    newestFirst = self->_newestFirst;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    limit = self->_limit;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }

  if (self->_assetsToDownload)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  zoneIdentifier = self->_zoneIdentifier;
  v10 = v4;
  if (zoneIdentifier)
  {
    objc_msgSend_setZoneIdentifier_(v4, v5, zoneIdentifier);
    v4 = v10;
  }

  archiveContinuationToken = self->_archiveContinuationToken;
  if (archiveContinuationToken)
  {
    objc_msgSend_setArchiveContinuationToken_(v10, v5, archiveContinuationToken);
    v4 = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 40) = self->_newestFirst;
    *(v4 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 6) = self->_limit;
    *(v4 + 44) |= 1u;
  }

  assetsToDownload = self->_assetsToDownload;
  if (assetsToDownload)
  {
    objc_msgSend_setAssetsToDownload_(v10, v5, assetsToDownload);
    v4 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_zoneIdentifier, v11, a3);
  v13 = *(v10 + 32);
  *(v10 + 32) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_archiveContinuationToken, v14, a3);
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

  v19 = objc_msgSend_copyWithZone_(self->_assetsToDownload, v17, a3);
  v20 = *(v10 + 16);
  *(v10 + 16) = v19;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_20;
  }

  zoneIdentifier = self->_zoneIdentifier;
  v9 = v4[4];
  if (zoneIdentifier | v9)
  {
    if (!objc_msgSend_isEqual_(zoneIdentifier, v7, v9))
    {
      goto LABEL_20;
    }
  }

  archiveContinuationToken = self->_archiveContinuationToken;
  v11 = v4[1];
  if (archiveContinuationToken | v11)
  {
    if (!objc_msgSend_isEqual_(archiveContinuationToken, v7, v11))
    {
      goto LABEL_20;
    }
  }

  v12 = *(v4 + 44);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 44) & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    isEqual = 0;
    goto LABEL_21;
  }

  if ((*(v4 + 44) & 2) == 0)
  {
    goto LABEL_20;
  }

  v13 = *(v4 + 40);
  if (self->_newestFirst)
  {
    if ((v4[5] & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v4[5])
  {
    goto LABEL_20;
  }

LABEL_8:
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_limit != *(v4 + 6))
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_20;
  }

  assetsToDownload = self->_assetsToDownload;
  v15 = v4[2];
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  zoneIdentifier = self->_zoneIdentifier;
  v6 = *(v4 + 4);
  v11 = v4;
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

  v4 = v11;
LABEL_7:
  v7 = *(v4 + 1);
  if (v7)
  {
    objc_msgSend_setArchiveContinuationToken_(self, v4, v7);
    v4 = v11;
  }

  v8 = *(v4 + 44);
  if ((v8 & 2) != 0)
  {
    self->_newestFirst = *(v4 + 40);
    *&self->_has |= 2u;
    v8 = *(v4 + 44);
  }

  if (v8)
  {
    self->_limit = *(v4 + 6);
    *&self->_has |= 1u;
  }

  assetsToDownload = self->_assetsToDownload;
  v10 = *(v4 + 2);
  if (assetsToDownload)
  {
    if (v10)
    {
      objc_msgSend_mergeFrom_(assetsToDownload, v4, v10);
    }
  }

  else if (v10)
  {
    objc_msgSend_setAssetsToDownload_(self, v4, v10);
  }

  MEMORY[0x2821F96F8]();
}

@end