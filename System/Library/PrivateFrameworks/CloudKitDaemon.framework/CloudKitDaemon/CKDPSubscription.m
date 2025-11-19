@interface CKDPSubscription
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)evaluationTypeAsString:(int)a3;
- (id)mutationTriggersAsString:(int)a3;
- (id)ownerAsString:(int)a3;
- (int)StringAsEvaluationType:(id)a3;
- (int)StringAsMutationTriggers:(id)a3;
- (int)StringAsOwner:(id)a3;
- (int)evaluationType;
- (int)mutationTriggersAtIndex:(unint64_t)a3;
- (int)owner;
- (unint64_t)hash;
- (void)addFilters:(id)a3;
- (void)addRecordTypes:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasFireOnce:(BOOL)a3;
- (void)setHasOwner:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPSubscription

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = CKDPSubscription;
  [(CKDPSubscription *)&v3 dealloc];
}

- (int)evaluationType
{
  if (*&self->_has)
  {
    return self->_evaluationType;
  }

  else
  {
    return 1;
  }
}

- (id)evaluationTypeAsString:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_27854CD38[a3 - 1];
  }

  return v4;
}

- (int)StringAsEvaluationType:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"trigger"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"sync"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"metasync"))
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (int)owner
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_owner;
  }

  else
  {
    return 1;
  }
}

- (void)setHasOwner:(BOOL)a3
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

- (id)ownerAsString:(int)a3
{
  if (a3 == 1)
  {
    v4 = @"user";
  }

  else if (a3 == 2)
  {
    v4 = @"device";
  }

  else
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  return v4;
}

- (int)StringAsOwner:(id)a3
{
  v3 = a3;
  v6 = 1;
  if ((objc_msgSend_isEqualToString_(v3, v4, @"user") & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(v3, v5, @"device"))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (int)mutationTriggersAtIndex:(unint64_t)a3
{
  p_mutationTriggers = &self->_mutationTriggers;
  count = self->_mutationTriggers.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"idx (%lu) is out of range (%lu)", a3, count);
    v10 = objc_msgSend_exceptionWithName_reason_userInfo_(v6, v9, v7, v8, 0);
    objc_msgSend_raise(v10, v11, v12);
  }

  return p_mutationTriggers->list[a3];
}

- (id)mutationTriggersAsString:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_27854CD50[a3 - 1];
  }

  return v4;
}

- (int)StringAsMutationTriggers:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"insert"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"update"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"remove"))
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)addFilters:(id)a3
{
  v4 = a3;
  filters = self->_filters;
  v8 = v4;
  if (!filters)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_filters;
    self->_filters = v6;

    v4 = v8;
    filters = self->_filters;
  }

  objc_msgSend_addObject_(filters, v4, v4);
}

- (void)addRecordTypes:(id)a3
{
  v4 = a3;
  recordTypes = self->_recordTypes;
  v8 = v4;
  if (!recordTypes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_recordTypes;
    self->_recordTypes = v6;

    v4 = v8;
    recordTypes = self->_recordTypes;
  }

  objc_msgSend_addObject_(recordTypes, v4, v4);
}

- (void)setHasFireOnce:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPSubscription;
  v4 = [(CKDPSubscription *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v81 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  identifier = self->_identifier;
  if (identifier)
  {
    v8 = objc_msgSend_dictionaryRepresentation(identifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"identifier");
  }

  has = self->_has;
  if (has)
  {
    v11 = self->_evaluationType - 1;
    if (v11 >= 3)
    {
      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_evaluationType);
    }

    else
    {
      v12 = off_27854CD38[v11];
    }

    objc_msgSend_setObject_forKey_(v6, v4, v12, @"evaluationType");

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    owner = self->_owner;
    if (owner == 1)
    {
      v14 = @"user";
      objc_msgSend_setObject_forKey_(v6, v4, @"user", @"owner");
    }

    else if (owner == 2)
    {
      v14 = @"device";
      objc_msgSend_setObject_forKey_(v6, v4, @"device", @"owner");
    }

    else
    {
      v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_owner);
      objc_msgSend_setObject_forKey_(v6, v15, v14, @"owner");
    }
  }

  p_mutationTriggers = &self->_mutationTriggers;
  count = self->_mutationTriggers.count;
  if (count)
  {
    v19 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v4, count);
    if (self->_mutationTriggers.count)
    {
      v20 = 0;
      do
      {
        v21 = p_mutationTriggers->list[v20] - 1;
        if (v21 >= 3)
        {
          v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"(unknown: %i)", p_mutationTriggers->list[v20]);
        }

        else
        {
          v22 = off_27854CD50[v21];
        }

        objc_msgSend_addObject_(v19, v18, v22);

        ++v20;
      }

      while (v20 < self->_mutationTriggers.count);
    }

    objc_msgSend_setObject_forKey_(v6, v18, v19, @"mutationTriggers");
  }

  notification = self->_notification;
  if (notification)
  {
    v24 = objc_msgSend_dictionaryRepresentation(notification, v4, count);
    objc_msgSend_setObject_forKey_(v6, v25, v24, @"notification");
  }

  if (objc_msgSend_count(self->_filters, v4, count))
  {
    v28 = objc_alloc(MEMORY[0x277CBEB18]);
    v31 = objc_msgSend_count(self->_filters, v29, v30);
    v33 = objc_msgSend_initWithCapacity_(v28, v32, v31);
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v34 = self->_filters;
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v75, v80, 16);
    if (v36)
    {
      v39 = v36;
      v40 = *v76;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v76 != v40)
          {
            objc_enumerationMutation(v34);
          }

          v42 = objc_msgSend_dictionaryRepresentation(*(*(&v75 + 1) + 8 * i), v37, v38);
          objc_msgSend_addObject_(v33, v43, v42);
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v75, v80, 16);
      }

      while (v39);
    }

    objc_msgSend_setObject_forKey_(v6, v44, v33, @"filters");
  }

  if (objc_msgSend_count(self->_recordTypes, v26, v27))
  {
    v47 = objc_alloc(MEMORY[0x277CBEB18]);
    v50 = objc_msgSend_count(self->_recordTypes, v48, v49);
    v52 = objc_msgSend_initWithCapacity_(v47, v51, v50);
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v53 = self->_recordTypes;
    v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, &v71, v79, 16);
    if (v55)
    {
      v58 = v55;
      v59 = *v72;
      do
      {
        for (j = 0; j != v58; ++j)
        {
          if (*v72 != v59)
          {
            objc_enumerationMutation(v53);
          }

          v61 = objc_msgSend_dictionaryRepresentation(*(*(&v71 + 1) + 8 * j), v56, v57);
          objc_msgSend_addObject_(v52, v62, v61);
        }

        v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v56, &v71, v79, 16);
      }

      while (v58);
    }

    objc_msgSend_setObject_forKey_(v6, v63, v52, @"recordTypes");
  }

  if ((*&self->_has & 4) != 0)
  {
    v64 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v45, self->_fireOnce);
    objc_msgSend_setObject_forKey_(v6, v65, v64, @"fireOnce");
  }

  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    v67 = objc_msgSend_dictionaryRepresentation(zoneIdentifier, v45, v46);
    objc_msgSend_setObject_forKey_(v6, v68, v67, @"zoneIdentifier");
  }

  v69 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)writeTo:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_identifier)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    evaluationType = self->_evaluationType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    owner = self->_owner;
    PBDataWriterWriteInt32Field();
  }

  if (self->_mutationTriggers.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_mutationTriggers.list[v8];
      PBDataWriterWriteInt32Field();
      ++v8;
    }

    while (v8 < self->_mutationTriggers.count);
  }

  if (self->_notification)
  {
    PBDataWriterWriteSubmessage();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = self->_filters;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v32, v37, 16);
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v17, &v32, v37, 16);
    }

    while (v13);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = self->_recordTypes;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v28, v36, 16);
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v28 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v25, &v28, v36, 16);
    }

    while (v21);
  }

  if ((*&self->_has & 4) != 0)
  {
    fireOnce = self->_fireOnce;
    PBDataWriterWriteBOOLField();
  }

  if (self->_zoneIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v38 = v4;
  if (identifier)
  {
    objc_msgSend_setIdentifier_(v4, v5, identifier);
    v4 = v38;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 8) = self->_evaluationType;
    v4[92] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 16) = self->_owner;
    v4[92] |= 2u;
  }

  if (objc_msgSend_mutationTriggersCount(self, v5, identifier))
  {
    objc_msgSend_clearMutationTriggers(v38, v8, v9);
    v12 = objc_msgSend_mutationTriggersCount(self, v10, v11);
    if (v12)
    {
      v13 = v12;
      for (i = 0; i != v13; ++i)
      {
        v15 = objc_msgSend_mutationTriggersAtIndex_(self, v8, i);
        objc_msgSend_addMutationTriggers_(v38, v16, v15);
      }
    }
  }

  notification = self->_notification;
  if (notification)
  {
    objc_msgSend_setNotification_(v38, v8, notification);
  }

  if (objc_msgSend_filtersCount(self, v8, notification))
  {
    objc_msgSend_clearFilters(v38, v18, v19);
    v22 = objc_msgSend_filtersCount(self, v20, v21);
    if (v22)
    {
      v23 = v22;
      for (j = 0; j != v23; ++j)
      {
        v25 = objc_msgSend_filtersAtIndex_(self, v18, j);
        objc_msgSend_addFilters_(v38, v26, v25);
      }
    }
  }

  if (objc_msgSend_recordTypesCount(self, v18, v19))
  {
    objc_msgSend_clearRecordTypes(v38, v27, v28);
    v31 = objc_msgSend_recordTypesCount(self, v29, v30);
    if (v31)
    {
      v32 = v31;
      for (k = 0; k != v32; ++k)
      {
        v34 = objc_msgSend_recordTypesAtIndex_(self, v27, k);
        objc_msgSend_addRecordTypes_(v38, v35, v34);
      }
    }
  }

  v36 = v38;
  if ((*&self->_has & 4) != 0)
  {
    v38[88] = self->_fireOnce;
    v38[92] |= 4u;
  }

  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    objc_msgSend_setZoneIdentifier_(v38, v27, zoneIdentifier);
    v36 = v38;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_identifier, v11, a3);
  v13 = *(v10 + 48);
  *(v10 + 48) = v12;

  has = self->_has;
  if (has)
  {
    *(v10 + 32) = self->_evaluationType;
    *(v10 + 92) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v10 + 64) = self->_owner;
    *(v10 + 92) |= 2u;
  }

  PBRepeatedInt32Copy();
  v16 = objc_msgSend_copyWithZone_(self->_notification, v15, a3);
  v17 = *(v10 + 56);
  *(v10 + 56) = v16;

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v18 = self->_filters;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v45, v50, 16);
  if (v20)
  {
    v22 = v20;
    v23 = *v46;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v46 != v23)
        {
          objc_enumerationMutation(v18);
        }

        v25 = objc_msgSend_copyWithZone_(*(*(&v45 + 1) + 8 * i), v21, a3);
        objc_msgSend_addFilters_(v10, v26, v25);
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v45, v50, 16);
    }

    while (v22);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v27 = self->_recordTypes;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v41, v49, 16);
  if (v29)
  {
    v31 = v29;
    v32 = *v42;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(v27);
        }

        v34 = objc_msgSend_copyWithZone_(*(*(&v41 + 1) + 8 * j), v30, a3, v41);
        objc_msgSend_addRecordTypes_(v10, v35, v34);
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v41, v49, 16);
    }

    while (v31);
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v10 + 88) = self->_fireOnce;
    *(v10 + 92) |= 4u;
  }

  v37 = objc_msgSend_copyWithZone_(self->_zoneIdentifier, v36, a3, v41);
  v38 = *(v10 + 80);
  *(v10 + 80) = v37;

  v39 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_26;
  }

  identifier = self->_identifier;
  v9 = v4[6];
  if (identifier | v9)
  {
    if (!objc_msgSend_isEqual_(identifier, v7, v9))
    {
      goto LABEL_26;
    }
  }

  v10 = *(v4 + 92);
  if (*&self->_has)
  {
    if ((*(v4 + 92) & 1) == 0 || self->_evaluationType != *(v4 + 8))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 92))
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 92) & 2) == 0 || self->_owner != *(v4 + 16))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 92) & 2) != 0)
  {
    goto LABEL_26;
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_26;
  }

  notification = self->_notification;
  v13 = v4[7];
  if (notification | v13)
  {
    if (!objc_msgSend_isEqual_(notification, v11, v13))
    {
      goto LABEL_26;
    }
  }

  filters = self->_filters;
  v15 = v4[5];
  if (filters | v15)
  {
    if (!objc_msgSend_isEqual_(filters, v11, v15))
    {
      goto LABEL_26;
    }
  }

  recordTypes = self->_recordTypes;
  v17 = v4[9];
  if (recordTypes | v17)
  {
    if (!objc_msgSend_isEqual_(recordTypes, v11, v17))
    {
      goto LABEL_26;
    }
  }

  v18 = *(v4 + 92);
  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 92) & 4) == 0)
    {
      goto LABEL_23;
    }

LABEL_26:
    isEqual = 0;
    goto LABEL_27;
  }

  if ((*(v4 + 92) & 4) == 0)
  {
    goto LABEL_26;
  }

  v23 = *(v4 + 88);
  if (self->_fireOnce)
  {
    if ((v4[11] & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v4[11])
  {
    goto LABEL_26;
  }

LABEL_23:
  zoneIdentifier = self->_zoneIdentifier;
  v20 = v4[10];
  if (zoneIdentifier | v20)
  {
    isEqual = objc_msgSend_isEqual_(zoneIdentifier, v11, v20);
  }

  else
  {
    isEqual = 1;
  }

LABEL_27:

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_identifier, a2, v2);
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_evaluationType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_owner;
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = PBRepeatedInt32Hash();
  v10 = objc_msgSend_hash(self->_notification, v8, v9);
  v13 = objc_msgSend_hash(self->_filters, v11, v12);
  v16 = objc_msgSend_hash(self->_recordTypes, v14, v15);
  if ((*&self->_has & 4) != 0)
  {
    v19 = 2654435761 * self->_fireOnce;
  }

  else
  {
    v19 = 0;
  }

  return v5 ^ v4 ^ v6 ^ v7 ^ v10 ^ v13 ^ v16 ^ v19 ^ objc_msgSend_hash(self->_zoneIdentifier, v17, v18);
}

- (void)mergeFrom:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  identifier = self->_identifier;
  v7 = *(v5 + 6);
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

  v8 = *(v5 + 92);
  if (v8)
  {
    self->_evaluationType = *(v5 + 8);
    *&self->_has |= 1u;
    v8 = *(v5 + 92);
  }

  if ((v8 & 2) != 0)
  {
    self->_owner = *(v5 + 16);
    *&self->_has |= 2u;
  }

  v9 = objc_msgSend_mutationTriggersCount(v5, v4, v7);
  if (v9)
  {
    v11 = v9;
    for (i = 0; i != v11; ++i)
    {
      v13 = objc_msgSend_mutationTriggersAtIndex_(v5, v10, i);
      objc_msgSend_addMutationTriggers_(self, v14, v13);
    }
  }

  notification = self->_notification;
  v16 = *(v5 + 7);
  if (notification)
  {
    if (v16)
    {
      objc_msgSend_mergeFrom_(notification, v10, v16);
    }
  }

  else if (v16)
  {
    objc_msgSend_setNotification_(self, v10, v16);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v17 = *(v5 + 5);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v39, v44, 16);
  if (v19)
  {
    v21 = v19;
    v22 = *v40;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v40 != v22)
        {
          objc_enumerationMutation(v17);
        }

        objc_msgSend_addFilters_(self, v20, *(*(&v39 + 1) + 8 * j));
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v39, v44, 16);
    }

    while (v21);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v24 = *(v5 + 9);
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v35, v43, 16);
  if (v26)
  {
    v28 = v26;
    v29 = *v36;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v36 != v29)
        {
          objc_enumerationMutation(v24);
        }

        objc_msgSend_addRecordTypes_(self, v27, *(*(&v35 + 1) + 8 * k), v35);
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v35, v43, 16);
    }

    while (v28);
  }

  if ((*(v5 + 92) & 4) != 0)
  {
    self->_fireOnce = *(v5 + 88);
    *&self->_has |= 4u;
  }

  zoneIdentifier = self->_zoneIdentifier;
  v33 = *(v5 + 10);
  if (zoneIdentifier)
  {
    if (v33)
    {
      objc_msgSend_mergeFrom_(zoneIdentifier, v31, v33);
    }
  }

  else if (v33)
  {
    objc_msgSend_setZoneIdentifier_(self, v31, v33);
  }

  v34 = *MEMORY[0x277D85DE8];
}

@end