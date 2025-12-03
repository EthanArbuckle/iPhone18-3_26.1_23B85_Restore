@interface CKDPMergeableDeltaReplaceRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDeltaIdentifiers:(id)identifiers;
- (void)addDeltas:(id)deltas;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIgnoreMissingDeltas:(BOOL)deltas;
- (void)writeTo:(id)to;
@end

@implementation CKDPMergeableDeltaReplaceRequest

+ (id)options
{
  if (qword_280D54FF0 != -1)
  {
    dispatch_once(&qword_280D54FF0, &unk_28385DE00);
  }

  v3 = qword_280D54FE8;

  return v3;
}

- (void)addDeltaIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  deltaIdentifiers = self->_deltaIdentifiers;
  v8 = identifiersCopy;
  if (!deltaIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_deltaIdentifiers;
    self->_deltaIdentifiers = v6;

    identifiersCopy = v8;
    deltaIdentifiers = self->_deltaIdentifiers;
  }

  objc_msgSend_addObject_(deltaIdentifiers, identifiersCopy, identifiersCopy);
}

- (void)addDeltas:(id)deltas
{
  deltasCopy = deltas;
  deltas = self->_deltas;
  v8 = deltasCopy;
  if (!deltas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_deltas;
    self->_deltas = v6;

    deltasCopy = v8;
    deltas = self->_deltas;
  }

  objc_msgSend_addObject_(deltas, deltasCopy, deltasCopy);
}

- (void)setHasIgnoreMissingDeltas:(BOOL)deltas
{
  if (deltas)
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
  v11.super_class = CKDPMergeableDeltaReplaceRequest;
  v4 = [(CKDPMergeableDeltaReplaceRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  identifier = self->_identifier;
  if (identifier)
  {
    v8 = objc_msgSend_dictionaryRepresentation(identifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"identifier");
  }

  deltaIdentifiers = self->_deltaIdentifiers;
  if (deltaIdentifiers)
  {
    objc_msgSend_setObject_forKey_(v6, v4, deltaIdentifiers, @"deltaIdentifiers");
  }

  if (objc_msgSend_count(self->_deltas, v4, deltaIdentifiers))
  {
    v12 = objc_alloc(MEMORY[0x277CBEB18]);
    v15 = objc_msgSend_count(self->_deltas, v13, v14);
    v17 = objc_msgSend_initWithCapacity_(v12, v16, v15);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v18 = self->_deltas;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v36, v40, 16);
    if (v20)
    {
      v23 = v20;
      v24 = *v37;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v37 != v24)
          {
            objc_enumerationMutation(v18);
          }

          v26 = objc_msgSend_dictionaryRepresentation(*(*(&v36 + 1) + 8 * i), v21, v22, v36);
          objc_msgSend_addObject_(v17, v27, v26);
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v36, v40, 16);
      }

      while (v23);
    }

    objc_msgSend_setObject_forKey_(v6, v28, v17, @"deltas");
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v30 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v11, self->_ignoreMissingDeltas);
    objc_msgSend_setObject_forKey_(v6, v31, v30, @"ignoreMissingDeltas");

    has = self->_has;
  }

  if (has)
  {
    v32 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v11, self->_containsNewData);
    objc_msgSend_setObject_forKey_(v6, v33, v32, @"containsNewData");
  }

  v34 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteSubmessage();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = self->_deltaIdentifiers;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v29, v34, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v29, v34, 16);
    }

    while (v8);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = self->_deltas;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v25, v33, 16);
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v25 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, &v25, v33, 16);
    }

    while (v16);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    ignoreMissingDeltas = self->_ignoreMissingDeltas;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    containsNewData = self->_containsNewData;
    PBDataWriterWriteBOOLField();
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  identifier = self->_identifier;
  if (identifier)
  {
    objc_msgSend_setIdentifier_(toCopy, v4, identifier);
  }

  if (objc_msgSend_deltaIdentifiersCount(self, v4, identifier))
  {
    objc_msgSend_clearDeltaIdentifiers(toCopy, v6, v7);
    v10 = objc_msgSend_deltaIdentifiersCount(self, v8, v9);
    if (v10)
    {
      v11 = v10;
      for (i = 0; i != v11; ++i)
      {
        v13 = objc_msgSend_deltaIdentifiersAtIndex_(self, v6, i);
        objc_msgSend_addDeltaIdentifiers_(toCopy, v14, v13);
      }
    }
  }

  if (objc_msgSend_deltasCount(self, v6, v7))
  {
    objc_msgSend_clearDeltas(toCopy, v15, v16);
    v19 = objc_msgSend_deltasCount(self, v17, v18);
    if (v19)
    {
      v21 = v19;
      for (j = 0; j != v21; ++j)
      {
        v23 = objc_msgSend_deltasAtIndex_(self, v20, j);
        objc_msgSend_addDeltas_(toCopy, v24, v23);
      }
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[33] = self->_ignoreMissingDeltas;
    toCopy[36] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[32] = self->_containsNewData;
    toCopy[36] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_identifier, v11, zone);
  v13 = *(v10 + 24);
  *(v10 + 24) = v12;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v14 = self->_deltaIdentifiers;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v39, v44, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v40;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = objc_msgSend_copyWithZone_(*(*(&v39 + 1) + 8 * i), v17, zone);
        objc_msgSend_addDeltaIdentifiers_(v10, v22, v21);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v39, v44, 16);
    }

    while (v18);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = self->_deltas;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v35, v43, 16);
  if (v25)
  {
    v27 = v25;
    v28 = *v36;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(v23);
        }

        v30 = objc_msgSend_copyWithZone_(*(*(&v35 + 1) + 8 * j), v26, zone, v35);
        objc_msgSend_addDeltas_(v10, v31, v30);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v35, v43, 16);
    }

    while (v27);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v10 + 33) = self->_ignoreMissingDeltas;
    *(v10 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v10 + 32) = self->_containsNewData;
    *(v10 + 36) |= 1u;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_16;
  }

  identifier = self->_identifier;
  v9 = equalCopy[3];
  if (identifier | v9)
  {
    if (!objc_msgSend_isEqual_(identifier, v7, v9))
    {
      goto LABEL_16;
    }
  }

  deltaIdentifiers = self->_deltaIdentifiers;
  v11 = equalCopy[1];
  if (deltaIdentifiers | v11)
  {
    if (!objc_msgSend_isEqual_(deltaIdentifiers, v7, v11))
    {
      goto LABEL_16;
    }
  }

  deltas = self->_deltas;
  v13 = equalCopy[2];
  if (deltas | v13)
  {
    if (!objc_msgSend_isEqual_(deltas, v7, v13))
    {
      goto LABEL_16;
    }
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 36) & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  if ((*(equalCopy + 36) & 2) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(equalCopy + 33);
  if (self->_ignoreMissingDeltas)
  {
    if ((*(equalCopy + 33) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 33))
  {
    goto LABEL_16;
  }

LABEL_10:
  v14 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if (*(equalCopy + 36))
    {
      if (self->_containsNewData)
      {
        if (equalCopy[4])
        {
          goto LABEL_24;
        }
      }

      else if (!*(equalCopy + 32))
      {
LABEL_24:
        v14 = 1;
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

LABEL_17:

  return v14;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_identifier, a2, v2);
  v7 = objc_msgSend_hash(self->_deltaIdentifiers, v5, v6);
  v10 = objc_msgSend_hash(self->_deltas, v8, v9);
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_ignoreMissingDeltas;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    return v7 ^ v4 ^ v10 ^ v11 ^ v12;
  }

  v11 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = 2654435761 * self->_containsNewData;
  return v7 ^ v4 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  v34 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  identifier = self->_identifier;
  v7 = *(fromCopy + 3);
  if (identifier)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(identifier, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setIdentifier_(self, v4, v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = *(fromCopy + 1);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v28, v33, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_addDeltaIdentifiers_(self, v11, *(*(&v28 + 1) + 8 * i));
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v28, v33, 16);
    }

    while (v12);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = *(fromCopy + 2);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v24, v32, 16);
  if (v17)
  {
    v19 = v17;
    v20 = *v25;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v15);
        }

        objc_msgSend_addDeltas_(self, v18, *(*(&v24 + 1) + 8 * j), v24);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v24, v32, 16);
    }

    while (v19);
  }

  v22 = *(fromCopy + 36);
  if ((v22 & 2) != 0)
  {
    self->_ignoreMissingDeltas = *(fromCopy + 33);
    *&self->_has |= 2u;
    v22 = *(fromCopy + 36);
  }

  if (v22)
  {
    self->_containsNewData = *(fromCopy + 32);
    *&self->_has |= 1u;
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end