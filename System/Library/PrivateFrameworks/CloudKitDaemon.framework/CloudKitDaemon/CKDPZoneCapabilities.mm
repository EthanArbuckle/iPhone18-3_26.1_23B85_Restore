@interface CKDPZoneCapabilities
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)sharingTypeAsString:(int)a3;
- (int)StringAsSharingType:(id)a3;
- (int)sharingType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAtomicSaves:(BOOL)a3;
- (void)setHasCkql:(BOOL)a3;
- (void)setHasFetchChanges:(BOOL)a3;
- (void)setHasHierarchicalSharing:(BOOL)a3;
- (void)setHasZoneSharing:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPZoneCapabilities

- (void)setHasAtomicSaves:(BOOL)a3
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

- (void)setHasFetchChanges:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasCkql:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)sharingType
{
  if (*&self->_has)
  {
    return self->_sharingType;
  }

  else
  {
    return 1;
  }
}

- (id)sharingTypeAsString:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_27854CDA0[a3 - 1];
  }

  return v4;
}

- (int)StringAsSharingType:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"none"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"hierarchical"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"zoneWide"))
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)setHasZoneSharing:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasHierarchicalSharing:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPZoneCapabilities;
  v4 = [(CKDPZoneCapabilities *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  has = self->_has;
  if ((has & 2) != 0)
  {
    v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_atomicSaves);
    objc_msgSend_setObject_forKey_(v5, v11, v10, @"atomicSaves");

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v12 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_fetchChanges);
  objc_msgSend_setObject_forKey_(v5, v13, v12, @"fetchChanges");

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v14 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_ckql);
  objc_msgSend_setObject_forKey_(v5, v15, v14, @"ckql");

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_14:
  v16 = self->_sharingType - 1;
  if (v16 >= 3)
  {
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_sharingType);
  }

  else
  {
    v17 = off_27854CDA0[v16];
  }

  objc_msgSend_setObject_forKey_(v5, v4, v17, @"sharingType");

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_18:
  v18 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_zoneSharing);
  objc_msgSend_setObject_forKey_(v5, v19, v18, @"zoneSharing");

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    v7 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_hierarchicalSharing);
    objc_msgSend_setObject_forKey_(v5, v8, v7, @"hierarchicalSharing");
  }

LABEL_8:

  return v5;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    atomicSaves = self->_atomicSaves;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  fetchChanges = self->_fetchChanges;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  ckql = self->_ckql;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  sharingType = self->_sharingType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  zoneSharing = self->_zoneSharing;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    hierarchicalSharing = self->_hierarchicalSharing;
    PBDataWriterWriteBOOLField();
  }

LABEL_8:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[12] = self->_atomicSaves;
    v4[20] |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v4[14] = self->_fetchChanges;
  v4[20] |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4[13] = self->_ckql;
  v4[20] |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v4 + 2) = self->_sharingType;
  v4[20] |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v4[16] = self->_zoneSharing;
  v4[20] |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    v4[15] = self->_hierarchicalSharing;
    v4[20] |= 0x10u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  result = objc_msgSend_init(v7, v8, v9);
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 12) = self->_atomicSaves;
    *(result + 20) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 14) = self->_fetchChanges;
  *(result + 20) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 13) = self->_ckql;
  *(result + 20) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 2) = self->_sharingType;
  *(result + 20) |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 16) = self->_zoneSharing;
  *(result + 20) |= 0x20u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 15) = self->_hierarchicalSharing;
  *(result + 20) |= 0x10u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0)
    {
      goto LABEL_39;
    }

    v7 = *(v4 + 12);
    if (self->_atomicSaves)
    {
      if ((*(v4 + 12) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (*(v4 + 12))
    {
      goto LABEL_39;
    }
  }

  else if ((*(v4 + 20) & 2) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 20) & 8) == 0)
    {
      goto LABEL_39;
    }

    v8 = *(v4 + 14);
    if (self->_fetchChanges)
    {
      if ((*(v4 + 14) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (*(v4 + 14))
    {
      goto LABEL_39;
    }
  }

  else if ((*(v4 + 20) & 8) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 20) & 4) == 0)
    {
      goto LABEL_39;
    }

    v9 = *(v4 + 13);
    if (self->_ckql)
    {
      if ((*(v4 + 13) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (*(v4 + 13))
    {
      goto LABEL_39;
    }
  }

  else if ((*(v4 + 20) & 4) != 0)
  {
    goto LABEL_39;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_sharingType != *(v4 + 2))
    {
      goto LABEL_39;
    }
  }

  else if (*(v4 + 20))
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 20) & 0x20) == 0)
    {
      goto LABEL_39;
    }

    v12 = *(v4 + 16);
    if (self->_zoneSharing)
    {
      if ((*(v4 + 16) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (*(v4 + 16))
    {
      goto LABEL_39;
    }
  }

  else if ((*(v4 + 20) & 0x20) != 0)
  {
    goto LABEL_39;
  }

  v10 = (*(v4 + 20) & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 20) & 0x10) != 0)
    {
      if (self->_hierarchicalSharing)
      {
        if (*(v4 + 15))
        {
          goto LABEL_47;
        }
      }

      else if (!*(v4 + 15))
      {
LABEL_47:
        v10 = 1;
        goto LABEL_40;
      }
    }

LABEL_39:
    v10 = 0;
  }

LABEL_40:

  return v10;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_atomicSaves;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_fetchChanges;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_ckql;
    if (*&self->_has)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if (*&self->_has)
  {
LABEL_5:
    v5 = 2654435761 * self->_sharingType;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_zoneSharing;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_hierarchicalSharing;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if ((v5 & 2) != 0)
  {
    self->_atomicSaves = *(v4 + 12);
    *&self->_has |= 2u;
    v5 = *(v4 + 20);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 20) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_fetchChanges = *(v4 + 14);
  *&self->_has |= 8u;
  v5 = *(v4 + 20);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_ckql = *(v4 + 13);
  *&self->_has |= 4u;
  v5 = *(v4 + 20);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_sharingType = *(v4 + 2);
  *&self->_has |= 1u;
  v5 = *(v4 + 20);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_zoneSharing = *(v4 + 16);
  *&self->_has |= 0x20u;
  if ((*(v4 + 20) & 0x10) != 0)
  {
LABEL_7:
    self->_hierarchicalSharing = *(v4 + 15);
    *&self->_has |= 0x10u;
  }

LABEL_8:
}

@end