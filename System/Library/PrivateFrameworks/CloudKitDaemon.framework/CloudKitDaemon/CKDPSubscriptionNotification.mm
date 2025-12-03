@interface CKDPSubscriptionNotification
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAdditionalFields:(id)fields;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasShouldSendContentAvailable:(BOOL)available;
- (void)setHasShouldSendMutableContent:(BOOL)content;
- (void)writeTo:(id)to;
@end

@implementation CKDPSubscriptionNotification

- (void)addAdditionalFields:(id)fields
{
  fieldsCopy = fields;
  additionalFields = self->_additionalFields;
  v8 = fieldsCopy;
  if (!additionalFields)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_additionalFields;
    self->_additionalFields = v6;

    fieldsCopy = v8;
    additionalFields = self->_additionalFields;
  }

  objc_msgSend_addObject_(additionalFields, fieldsCopy, fieldsCopy);
}

- (void)setHasShouldSendContentAvailable:(BOOL)available
{
  if (available)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasShouldSendMutableContent:(BOOL)content
{
  if (content)
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
  v11.super_class = CKDPSubscriptionNotification;
  v4 = [(CKDPSubscriptionNotification *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  alert = self->_alert;
  if (alert)
  {
    v8 = objc_msgSend_dictionaryRepresentation(alert, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"alert");
  }

  if (*&self->_has)
  {
    v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_shouldBadge);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"shouldBadge");
  }

  additionalFields = self->_additionalFields;
  if (additionalFields)
  {
    objc_msgSend_setObject_forKey_(v6, v4, additionalFields, @"additionalFields");
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v14 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_shouldSendContentAvailable);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"shouldSendContentAvailable");

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v16 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_shouldSendMutableContent);
    objc_msgSend_setObject_forKey_(v6, v17, v16, @"shouldSendMutableContent");
  }

  collapseIdKey = self->_collapseIdKey;
  if (collapseIdKey)
  {
    objc_msgSend_setObject_forKey_(v6, v4, collapseIdKey, @"collapseIdKey");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  v23 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_alert)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    shouldBadge = self->_shouldBadge;
    PBDataWriterWriteBOOLField();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_additionalFields;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v18, v22, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v13, &v18, v22, 16);
    }

    while (v9);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    shouldSendContentAvailable = self->_shouldSendContentAvailable;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    shouldSendMutableContent = self->_shouldSendMutableContent;
    PBDataWriterWriteBOOLField();
  }

  if (self->_collapseIdKey)
  {
    PBDataWriterWriteStringField();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  alert = self->_alert;
  v19 = toCopy;
  if (alert)
  {
    objc_msgSend_setAlert_(toCopy, v5, alert);
    toCopy = v19;
  }

  if (*&self->_has)
  {
    toCopy[32] = self->_shouldBadge;
    toCopy[36] |= 1u;
  }

  if (objc_msgSend_additionalFieldsCount(self, v5, alert))
  {
    objc_msgSend_clearAdditionalFields(v19, v7, v8);
    v11 = objc_msgSend_additionalFieldsCount(self, v9, v10);
    if (v11)
    {
      v12 = v11;
      for (i = 0; i != v12; ++i)
      {
        v14 = objc_msgSend_additionalFieldsAtIndex_(self, v7, i);
        objc_msgSend_addAdditionalFields_(v19, v15, v14);
      }
    }
  }

  has = self->_has;
  v17 = v19;
  if ((has & 2) != 0)
  {
    v19[33] = self->_shouldSendContentAvailable;
    v19[36] |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v19[34] = self->_shouldSendMutableContent;
    v19[36] |= 4u;
  }

  collapseIdKey = self->_collapseIdKey;
  if (collapseIdKey)
  {
    objc_msgSend_setCollapseIdKey_(v19, v7, collapseIdKey);
    v17 = v19;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_alert, v11, zone);
  v13 = *(v10 + 16);
  *(v10 + 16) = v12;

  if (*&self->_has)
  {
    *(v10 + 32) = self->_shouldBadge;
    *(v10 + 36) |= 1u;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = self->_additionalFields;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v29, v33, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v30;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = objc_msgSend_copyWithZone_(*(*(&v29 + 1) + 8 * i), v17, zone, v29);
        objc_msgSend_addAdditionalFields_(v10, v22, v21);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v29, v33, 16);
    }

    while (v18);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v10 + 33) = self->_shouldSendContentAvailable;
    *(v10 + 36) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v10 + 34) = self->_shouldSendMutableContent;
    *(v10 + 36) |= 4u;
  }

  v25 = objc_msgSend_copyWithZone_(self->_collapseIdKey, v23, zone, v29);
  v26 = *(v10 + 24);
  *(v10 + 24) = v25;

  v27 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_33;
  }

  alert = self->_alert;
  v9 = equalCopy[2];
  if (alert | v9)
  {
    if (!objc_msgSend_isEqual_(alert, v7, v9))
    {
      goto LABEL_33;
    }
  }

  has = self->_has;
  v11 = *(equalCopy + 36);
  if (has)
  {
    if ((*(equalCopy + 36) & 1) == 0)
    {
      goto LABEL_33;
    }

    v17 = *(equalCopy + 32);
    if (self->_shouldBadge)
    {
      if ((equalCopy[4] & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (equalCopy[4])
    {
      goto LABEL_33;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_33;
  }

  additionalFields = self->_additionalFields;
  v13 = equalCopy[1];
  if (additionalFields | v13)
  {
    if (!objc_msgSend_isEqual_(additionalFields, v7, v13))
    {
      goto LABEL_33;
    }

    has = self->_has;
    v11 = *(equalCopy + 36);
  }

  if ((has & 2) != 0)
  {
    if ((v11 & 2) == 0)
    {
      goto LABEL_33;
    }

    v18 = *(equalCopy + 33);
    if (self->_shouldSendContentAvailable)
    {
      if ((*(equalCopy + 33) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (*(equalCopy + 33))
    {
      goto LABEL_33;
    }
  }

  else if ((v11 & 2) != 0)
  {
    goto LABEL_33;
  }

  if ((has & 4) == 0)
  {
    if ((v11 & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_33:
    isEqual = 0;
    goto LABEL_34;
  }

  if ((v11 & 4) == 0)
  {
    goto LABEL_33;
  }

  v19 = *(equalCopy + 34);
  if (self->_shouldSendMutableContent)
  {
    if ((*(equalCopy + 34) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (*(equalCopy + 34))
  {
    goto LABEL_33;
  }

LABEL_13:
  collapseIdKey = self->_collapseIdKey;
  v15 = equalCopy[3];
  if (collapseIdKey | v15)
  {
    isEqual = objc_msgSend_isEqual_(collapseIdKey, v7, v15);
  }

  else
  {
    isEqual = 1;
  }

LABEL_34:

  return isEqual;
}

- (unint64_t)hash
{
  v6 = objc_msgSend_hash(self->_alert, a2, v2);
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_shouldBadge;
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_msgSend_hash(self->_additionalFields, v4, v5);
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_shouldSendContentAvailable;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v12 = 0;
    return v7 ^ v6 ^ v8 ^ v11 ^ v12 ^ objc_msgSend_hash(self->_collapseIdKey, v9, v10);
  }

  v11 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v12 = 2654435761 * self->_shouldSendMutableContent;
  return v7 ^ v6 ^ v8 ^ v11 ^ v12 ^ objc_msgSend_hash(self->_collapseIdKey, v9, v10);
}

- (void)mergeFrom:(id)from
{
  v24 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  alert = self->_alert;
  v7 = *(fromCopy + 2);
  if (alert)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(alert, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setAlert_(self, v4, v7);
  }

  if (*(fromCopy + 36))
  {
    self->_shouldBadge = *(fromCopy + 32);
    *&self->_has |= 1u;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = *(fromCopy + 1);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v19, v23, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_addAdditionalFields_(self, v11, *(*(&v19 + 1) + 8 * i), v19);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v19, v23, 16);
    }

    while (v12);
  }

  v16 = *(fromCopy + 36);
  if ((v16 & 2) != 0)
  {
    self->_shouldSendContentAvailable = *(fromCopy + 33);
    *&self->_has |= 2u;
    v16 = *(fromCopy + 36);
  }

  if ((v16 & 4) != 0)
  {
    self->_shouldSendMutableContent = *(fromCopy + 34);
    *&self->_has |= 4u;
  }

  v17 = *(fromCopy + 3);
  if (v17)
  {
    objc_msgSend_setCollapseIdKey_(self, v15, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end