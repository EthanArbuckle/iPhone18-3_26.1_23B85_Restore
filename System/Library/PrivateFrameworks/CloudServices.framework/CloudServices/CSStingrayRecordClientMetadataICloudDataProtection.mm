@interface CSStingrayRecordClientMetadataICloudDataProtection
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIcdpArmed:(BOOL)armed;
- (void)setHasIcdpDBRv2:(BOOL)rv2;
- (void)setHasIcdpDrop:(BOOL)drop;
- (void)setHasIcdpGF:(BOOL)f;
- (void)setHasIcdpWalrus:(BOOL)walrus;
- (void)writeTo:(id)to;
@end

@implementation CSStingrayRecordClientMetadataICloudDataProtection

- (void)setHasIcdpArmed:(BOOL)armed
{
  if (armed)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIcdpWalrus:(BOOL)walrus
{
  if (walrus)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIcdpDrop:(BOOL)drop
{
  if (drop)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIcdpGF:(BOOL)f
{
  if (f)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIcdpDBRv2:(BOOL)rv2
{
  if (rv2)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CSStingrayRecordClientMetadataICloudDataProtection;
  v4 = [(CSStingrayRecordClientMetadataICloudDataProtection *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  has = self->_has;
  if (has)
  {
    v17 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_icdp);
    objc_msgSend_setObject_forKey_(v5, v18, v17, @"icdp");

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v19 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_icdpArmed);
  objc_msgSend_setObject_forKey_(v5, v20, v19, @"icdpArmed");

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_21:
  v21 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_icdpWalrus);
  objc_msgSend_setObject_forKey_(v5, v22, v21, @"icdpWalrus");

  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v7 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_icdpDrop);
    objc_msgSend_setObject_forKey_(v5, v8, v7, @"icdpDrop");
  }

LABEL_6:
  escrowedKeys = self->_escrowedKeys;
  if (escrowedKeys)
  {
    objc_msgSend_setObject_forKey_(v5, v4, escrowedKeys, @"escrowedKeys");
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_icdpGF);
    objc_msgSend_setObject_forKey_(v5, v11, v10, @"icdpGF");
  }

  wrappedKeys = self->_wrappedKeys;
  if (wrappedKeys)
  {
    objc_msgSend_setObject_forKey_(v5, v4, wrappedKeys, @"wrappedKeys");
  }

  derivedTokenID = self->_derivedTokenID;
  if (derivedTokenID)
  {
    objc_msgSend_setObject_forKey_(v5, v4, derivedTokenID, @"derivedTokenID");
  }

  if ((*&self->_has & 4) != 0)
  {
    v14 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_icdpDBRv2);
    objc_msgSend_setObject_forKey_(v5, v15, v14, @"icdpDBRv2");
  }

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    icdp = self->_icdp;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  icdpArmed = self->_icdpArmed;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_21:
  icdpWalrus = self->_icdpWalrus;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    icdpDrop = self->_icdpDrop;
    PBDataWriterWriteBOOLField();
  }

LABEL_6:
  if (self->_escrowedKeys)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    icdpGF = self->_icdpGF;
    PBDataWriterWriteBOOLField();
  }

  if (self->_wrappedKeys)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_derivedTokenID)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 4) != 0)
  {
    icdpDBRv2 = self->_icdpDBRv2;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[32] = self->_icdp;
    toCopy[40] |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  toCopy[33] = self->_icdpArmed;
  toCopy[40] |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_21:
  toCopy[37] = self->_icdpWalrus;
  toCopy[40] |= 0x20u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    toCopy[35] = self->_icdpDrop;
    toCopy[40] |= 8u;
  }

LABEL_6:
  escrowedKeys = self->_escrowedKeys;
  v10 = toCopy;
  if (escrowedKeys)
  {
    objc_msgSend_setEscrowedKeys_(toCopy, v5, escrowedKeys);
    toCopy = v10;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    toCopy[36] = self->_icdpGF;
    toCopy[40] |= 0x10u;
  }

  wrappedKeys = self->_wrappedKeys;
  if (wrappedKeys)
  {
    objc_msgSend_setWrappedKeys_(v10, v5, wrappedKeys);
    toCopy = v10;
  }

  derivedTokenID = self->_derivedTokenID;
  if (derivedTokenID)
  {
    objc_msgSend_setDerivedTokenID_(v10, v5, derivedTokenID);
    toCopy = v10;
  }

  if ((*&self->_has & 4) != 0)
  {
    toCopy[34] = self->_icdpDBRv2;
    toCopy[40] |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  has = self->_has;
  if (has)
  {
    v10[32] = self->_icdp;
    v10[40] |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v10[33] = self->_icdpArmed;
  v10[40] |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  v10[37] = self->_icdpWalrus;
  v10[40] |= 0x20u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v10[35] = self->_icdpDrop;
    v10[40] |= 8u;
  }

LABEL_6:
  v14 = objc_msgSend_copyWithZone_(self->_escrowedKeys, v11, zone);
  v15 = *(v12 + 2);
  *(v12 + 2) = v14;

  if ((*&self->_has & 0x10) != 0)
  {
    v12[36] = self->_icdpGF;
    v12[40] |= 0x10u;
  }

  v17 = objc_msgSend_copyWithZone_(self->_wrappedKeys, v16, zone);
  v18 = *(v12 + 3);
  *(v12 + 3) = v17;

  v20 = objc_msgSend_copyWithZone_(self->_derivedTokenID, v19, zone);
  v21 = *(v12 + 1);
  *(v12 + 1) = v20;

  if ((*&self->_has & 4) != 0)
  {
    v12[34] = self->_icdpDBRv2;
    v12[40] |= 4u;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_53;
  }

  has = self->_has;
  v9 = *(equalCopy + 40);
  if (has)
  {
    if ((equalCopy[5] & 1) == 0)
    {
      goto LABEL_53;
    }

    v18 = *(equalCopy + 32);
    if (self->_icdp)
    {
      if ((equalCopy[4] & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (equalCopy[4])
    {
      goto LABEL_53;
    }
  }

  else if (equalCopy[5])
  {
    goto LABEL_53;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[5] & 2) == 0)
    {
      goto LABEL_53;
    }

    v19 = *(equalCopy + 33);
    if (self->_icdpArmed)
    {
      if ((*(equalCopy + 33) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (*(equalCopy + 33))
    {
      goto LABEL_53;
    }
  }

  else if ((equalCopy[5] & 2) != 0)
  {
    goto LABEL_53;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((equalCopy[5] & 0x20) == 0)
    {
      goto LABEL_53;
    }

    v20 = *(equalCopy + 37);
    if (self->_icdpWalrus)
    {
      if ((*(equalCopy + 37) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (*(equalCopy + 37))
    {
      goto LABEL_53;
    }
  }

  else if ((equalCopy[5] & 0x20) != 0)
  {
    goto LABEL_53;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((equalCopy[5] & 8) == 0)
    {
      goto LABEL_53;
    }

    v21 = *(equalCopy + 35);
    if (self->_icdpDrop)
    {
      if ((*(equalCopy + 35) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (*(equalCopy + 35))
    {
      goto LABEL_53;
    }
  }

  else if ((equalCopy[5] & 8) != 0)
  {
    goto LABEL_53;
  }

  escrowedKeys = self->_escrowedKeys;
  v11 = equalCopy[2];
  if (escrowedKeys | v11)
  {
    if (!objc_msgSend_isEqual_(escrowedKeys, v7, v11))
    {
      goto LABEL_53;
    }

    has = self->_has;
  }

  v12 = *(equalCopy + 40);
  if ((has & 0x10) == 0)
  {
    if ((equalCopy[5] & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_53:
    v17 = 0;
    goto LABEL_54;
  }

  if ((equalCopy[5] & 0x10) == 0)
  {
    goto LABEL_53;
  }

  v22 = *(equalCopy + 36);
  if (self->_icdpGF)
  {
    if ((*(equalCopy + 36) & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_53;
  }

LABEL_15:
  wrappedKeys = self->_wrappedKeys;
  v14 = equalCopy[3];
  if (wrappedKeys | v14 && !objc_msgSend_isEqual_(wrappedKeys, v7, v14))
  {
    goto LABEL_53;
  }

  derivedTokenID = self->_derivedTokenID;
  v16 = equalCopy[1];
  if (derivedTokenID | v16)
  {
    if (!objc_msgSend_isEqual_(derivedTokenID, v7, v16))
    {
      goto LABEL_53;
    }
  }

  v17 = (equalCopy[5] & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((equalCopy[5] & 4) != 0)
    {
      if (self->_icdpDBRv2)
      {
        if (*(equalCopy + 34))
        {
          goto LABEL_56;
        }
      }

      else if (!*(equalCopy + 34))
      {
LABEL_56:
        v17 = 1;
        goto LABEL_54;
      }
    }

    goto LABEL_53;
  }

LABEL_54:

  return v17;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_icdp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_icdpArmed;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761 * self->_icdpWalrus;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_icdpDrop;
    goto LABEL_10;
  }

LABEL_9:
  v7 = 0;
LABEL_10:
  v10 = objc_msgSend_hash(self->_escrowedKeys, a2, v2);
  if ((*&self->_has & 0x10) != 0)
  {
    v11 = 2654435761 * self->_icdpGF;
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_msgSend_hash(self->_wrappedKeys, v8, v9);
  v15 = objc_msgSend_hash(self->_derivedTokenID, v13, v14);
  if ((*&self->_has & 4) != 0)
  {
    v16 = 2654435761 * self->_icdpDBRv2;
  }

  else
  {
    v16 = 0;
  }

  return v5 ^ v4 ^ v6 ^ v7 ^ v11 ^ v10 ^ v12 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = *(fromCopy + 40);
  if (v6)
  {
    self->_icdp = *(fromCopy + 32);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*(fromCopy + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_icdpArmed = *(fromCopy + 33);
  *&self->_has |= 2u;
  v6 = *(fromCopy + 40);
  if ((v6 & 0x20) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_21:
  self->_icdpWalrus = *(fromCopy + 37);
  *&self->_has |= 0x20u;
  if ((*(fromCopy + 40) & 8) != 0)
  {
LABEL_5:
    self->_icdpDrop = *(fromCopy + 35);
    *&self->_has |= 8u;
  }

LABEL_6:
  v7 = *(fromCopy + 2);
  v10 = fromCopy;
  if (v7)
  {
    objc_msgSend_setEscrowedKeys_(self, v5, v7);
    fromCopy = v10;
  }

  if ((*(fromCopy + 40) & 0x10) != 0)
  {
    self->_icdpGF = *(fromCopy + 36);
    *&self->_has |= 0x10u;
  }

  v8 = *(fromCopy + 3);
  if (v8)
  {
    objc_msgSend_setWrappedKeys_(self, v5, v8);
    fromCopy = v10;
  }

  v9 = *(fromCopy + 1);
  if (v9)
  {
    objc_msgSend_setDerivedTokenID_(self, v5, v9);
    fromCopy = v10;
  }

  if ((*(fromCopy + 40) & 4) != 0)
  {
    self->_icdpDBRv2 = *(fromCopy + 34);
    *&self->_has |= 4u;
  }
}

@end