@interface CKDPNotificationSyncResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPushMessage:(id)message;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPNotificationSyncResponse

- (void)addPushMessage:(id)message
{
  messageCopy = message;
  pushMessages = self->_pushMessages;
  v8 = messageCopy;
  if (!pushMessages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_pushMessages;
    self->_pushMessages = v6;

    messageCopy = v8;
    pushMessages = self->_pushMessages;
  }

  objc_msgSend_addObject_(pushMessages, messageCopy, messageCopy);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPNotificationSyncResponse;
  v4 = [(CKDPNotificationSyncResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  changeID = self->_changeID;
  if (changeID)
  {
    objc_msgSend_setObject_forKey_(v4, v5, changeID, @"changeID");
  }

  if (objc_msgSend_count(self->_pushMessages, v5, changeID))
  {
    v9 = objc_alloc(MEMORY[0x277CBEB18]);
    v12 = objc_msgSend_count(self->_pushMessages, v10, v11);
    v14 = objc_msgSend_initWithCapacity_(v9, v13, v12);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = self->_pushMessages;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v30, v34, 16);
    if (v17)
    {
      v20 = v17;
      v21 = *v31;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v15);
          }

          v23 = objc_msgSend_dictionaryRepresentation(*(*(&v30 + 1) + 8 * i), v18, v19, v30);
          objc_msgSend_addObject_(v14, v24, v23);
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v30, v34, 16);
      }

      while (v20);
    }

    objc_msgSend_setObject_forKey_(v6, v25, v14, @"pushMessage");
  }

  if (*&self->_has)
  {
    v26 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v8, self->_moreAvailable);
    objc_msgSend_setObject_forKey_(v6, v27, v26, @"moreAvailable");
  }

  v28 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_changeID)
  {
    PBDataWriterWriteDataField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_pushMessages;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v15, v19, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v15, v19, 16);
    }

    while (v8);
  }

  if (*&self->_has)
  {
    moreAvailable = self->_moreAvailable;
    PBDataWriterWriteBOOLField();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  changeID = self->_changeID;
  if (changeID)
  {
    objc_msgSend_setChangeID_(toCopy, v4, changeID);
  }

  if (objc_msgSend_pushMessagesCount(self, v4, changeID))
  {
    objc_msgSend_clearPushMessages(toCopy, v6, v7);
    v10 = objc_msgSend_pushMessagesCount(self, v8, v9);
    if (v10)
    {
      v12 = v10;
      for (i = 0; i != v12; ++i)
      {
        v14 = objc_msgSend_pushMessageAtIndex_(self, v11, i);
        objc_msgSend_addPushMessage_(toCopy, v15, v14);
      }
    }
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_moreAvailable;
    toCopy[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_changeID, v11, zone);
  v13 = *(v10 + 8);
  *(v10 + 8) = v12;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = self->_pushMessages;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v25, v29, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v26;
    do
    {
      v20 = 0;
      do
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = objc_msgSend_copyWithZone_(*(*(&v25 + 1) + 8 * v20), v17, zone, v25);
        objc_msgSend_addPushMessage_(v10, v22, v21);

        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v25, v29, 16);
    }

    while (v18);
  }

  if (*&self->_has)
  {
    *(v10 + 24) = self->_moreAvailable;
    *(v10 + 28) |= 1u;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_8;
  }

  changeID = self->_changeID;
  v9 = equalCopy[1];
  if (changeID | v9)
  {
    if (!objc_msgSend_isEqual_(changeID, v7, v9))
    {
      goto LABEL_8;
    }
  }

  pushMessages = self->_pushMessages;
  v11 = equalCopy[2];
  if (pushMessages | v11)
  {
    if (!objc_msgSend_isEqual_(pushMessages, v7, v11))
    {
      goto LABEL_8;
    }
  }

  v12 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
LABEL_8:
      v12 = 0;
      goto LABEL_9;
    }

    if (self->_moreAvailable)
    {
      if ((equalCopy[3] & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_8;
    }

    v12 = 1;
  }

LABEL_9:

  return v12;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_changeID, a2, v2);
  v7 = objc_msgSend_hash(self->_pushMessages, v5, v6);
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_moreAvailable;
  }

  else
  {
    v8 = 0;
  }

  return v7 ^ v4 ^ v8;
}

- (void)mergeFrom:(id)from
{
  v20 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v6 = *(fromCopy + 1);
  if (v6)
  {
    objc_msgSend_setChangeID_(self, v4, v6);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(fromCopy + 2);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v15, v19, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_addPushMessage_(self, v10, *(*(&v15 + 1) + 8 * i), v15);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v15, v19, 16);
    }

    while (v11);
  }

  if (*(fromCopy + 28))
  {
    self->_moreAvailable = *(fromCopy + 24);
    *&self->_has |= 1u;
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end