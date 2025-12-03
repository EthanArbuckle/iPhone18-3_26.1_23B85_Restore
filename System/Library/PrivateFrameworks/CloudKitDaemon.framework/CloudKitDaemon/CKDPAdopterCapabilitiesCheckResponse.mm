@interface CKDPAdopterCapabilitiesCheckResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPAdopterCapabilitiesCheckResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPAdopterCapabilitiesCheckResponse;
  v4 = [(CKDPAdopterCapabilitiesCheckResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (*&self->_has)
  {
    v7 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_isSupported);
    objc_msgSend_setObject_forKey_(v6, v8, v7, @"isSupported");
  }

  signedSupportedAdopterCapabilities = self->_signedSupportedAdopterCapabilities;
  if (signedSupportedAdopterCapabilities)
  {
    v10 = objc_msgSend_dictionaryRepresentation(signedSupportedAdopterCapabilities, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"signedSupportedAdopterCapabilities");
  }

  signedShareUsage = self->_signedShareUsage;
  if (signedShareUsage)
  {
    v13 = objc_msgSend_dictionaryRepresentation(signedShareUsage, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v14, v13, @"signedShareUsage");
  }

  signedZoneUsage = self->_signedZoneUsage;
  if (signedZoneUsage)
  {
    v16 = objc_msgSend_dictionaryRepresentation(signedZoneUsage, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v17, v16, @"signedZoneUsage");
  }

  continuation = self->_continuation;
  if (continuation)
  {
    objc_msgSend_setObject_forKey_(v6, v4, continuation, @"continuation");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    isSupported = self->_isSupported;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_signedSupportedAdopterCapabilities)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_signedShareUsage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_signedZoneUsage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_continuation)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[40] = self->_isSupported;
    toCopy[44] |= 1u;
  }

  signedSupportedAdopterCapabilities = self->_signedSupportedAdopterCapabilities;
  v10 = toCopy;
  if (signedSupportedAdopterCapabilities)
  {
    objc_msgSend_setSignedSupportedAdopterCapabilities_(toCopy, v5, signedSupportedAdopterCapabilities);
    toCopy = v10;
  }

  signedShareUsage = self->_signedShareUsage;
  if (signedShareUsage)
  {
    objc_msgSend_setSignedShareUsage_(v10, v5, signedShareUsage);
    toCopy = v10;
  }

  signedZoneUsage = self->_signedZoneUsage;
  if (signedZoneUsage)
  {
    objc_msgSend_setSignedZoneUsage_(v10, v5, signedZoneUsage);
    toCopy = v10;
  }

  continuation = self->_continuation;
  if (continuation)
  {
    objc_msgSend_setContinuation_(v10, v5, continuation);
    toCopy = v10;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if (*&self->_has)
  {
    *(v10 + 40) = self->_isSupported;
    *(v10 + 44) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_signedSupportedAdopterCapabilities, v11, zone);
  v14 = v12[3];
  v12[3] = v13;

  v16 = objc_msgSend_copyWithZone_(self->_signedShareUsage, v15, zone);
  v17 = v12[2];
  v12[2] = v16;

  v19 = objc_msgSend_copyWithZone_(self->_signedZoneUsage, v18, zone);
  v20 = v12[4];
  v12[4] = v19;

  v22 = objc_msgSend_copyWithZone_(self->_continuation, v21, zone);
  v23 = v12[1];
  v12[1] = v22;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_13;
  }

  v8 = *(equalCopy + 44);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(equalCopy + 44) & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(equalCopy + 40);
  if (!self->_isSupported)
  {
LABEL_3:
    if ((v8 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    isEqual = 0;
    goto LABEL_14;
  }

  if ((equalCopy[5] & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  signedSupportedAdopterCapabilities = self->_signedSupportedAdopterCapabilities;
  v10 = equalCopy[3];
  if (signedSupportedAdopterCapabilities | v10 && !objc_msgSend_isEqual_(signedSupportedAdopterCapabilities, v7, v10))
  {
    goto LABEL_13;
  }

  signedShareUsage = self->_signedShareUsage;
  v12 = equalCopy[2];
  if (signedShareUsage | v12)
  {
    if (!objc_msgSend_isEqual_(signedShareUsage, v7, v12))
    {
      goto LABEL_13;
    }
  }

  signedZoneUsage = self->_signedZoneUsage;
  v14 = equalCopy[4];
  if (signedZoneUsage | v14)
  {
    if (!objc_msgSend_isEqual_(signedZoneUsage, v7, v14))
    {
      goto LABEL_13;
    }
  }

  continuation = self->_continuation;
  v16 = equalCopy[1];
  if (continuation | v16)
  {
    isEqual = objc_msgSend_isEqual_(continuation, v7, v16);
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
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isSupported;
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_msgSend_hash(self->_signedSupportedAdopterCapabilities, a2, v2) ^ v4;
  v8 = objc_msgSend_hash(self->_signedShareUsage, v6, v7);
  v11 = v5 ^ v8 ^ objc_msgSend_hash(self->_signedZoneUsage, v9, v10);
  return v11 ^ objc_msgSend_hash(self->_continuation, v12, v13);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[44])
  {
    self->_isSupported = fromCopy[40];
    *&self->_has |= 1u;
  }

  signedSupportedAdopterCapabilities = self->_signedSupportedAdopterCapabilities;
  v7 = v5[3];
  v13 = v5;
  if (signedSupportedAdopterCapabilities)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    objc_msgSend_mergeFrom_(signedSupportedAdopterCapabilities, v5, v7);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    objc_msgSend_setSignedSupportedAdopterCapabilities_(self, v5, v7);
  }

  v5 = v13;
LABEL_9:
  signedShareUsage = self->_signedShareUsage;
  v9 = v5[2];
  if (signedShareUsage)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    objc_msgSend_mergeFrom_(signedShareUsage, v5, v9);
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    objc_msgSend_setSignedShareUsage_(self, v5, v9);
  }

  v5 = v13;
LABEL_15:
  signedZoneUsage = self->_signedZoneUsage;
  v11 = v5[4];
  if (signedZoneUsage)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    objc_msgSend_mergeFrom_(signedZoneUsage, v5, v11);
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    objc_msgSend_setSignedZoneUsage_(self, v5, v11);
  }

  v5 = v13;
LABEL_21:
  v12 = v5[1];
  if (v12)
  {
    objc_msgSend_setContinuation_(self, v5, v12);
  }

  MEMORY[0x2821F96F8]();
}

@end