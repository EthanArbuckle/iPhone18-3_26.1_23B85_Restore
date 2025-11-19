@interface CKDPZoneRetrieveChangesResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)statusAsString:(int)a3;
- (int)StringAsStatus:(id)a3;
- (int)status;
- (unint64_t)hash;
- (void)addChangedZones:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPZoneRetrieveChangesResponse

- (int)status
{
  if (*&self->_has)
  {
    return self->_status;
  }

  else
  {
    return 1;
  }
}

- (void)addChangedZones:(id)a3
{
  v4 = a3;
  changedZones = self->_changedZones;
  v8 = v4;
  if (!changedZones)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_changedZones;
    self->_changedZones = v6;

    v4 = v8;
    changedZones = self->_changedZones;
  }

  objc_msgSend_addObject_(changedZones, v4, v4);
}

- (id)statusAsString:(int)a3
{
  if (a3 == 1)
  {
    v4 = @"hasPendingChanges";
  }

  else if (a3 == 2)
  {
    v4 = @"syncComplete";
  }

  else
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  return v4;
}

- (int)StringAsStatus:(id)a3
{
  v3 = a3;
  v6 = 1;
  if ((objc_msgSend_isEqualToString_(v3, v4, @"hasPendingChanges") & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(v3, v5, @"syncComplete"))
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPZoneRetrieveChangesResponse;
  v4 = [(CKDPZoneRetrieveChangesResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (objc_msgSend_count(self->_changedZones, v5, v6))
  {
    v8 = objc_alloc(MEMORY[0x277CBEB18]);
    v11 = objc_msgSend_count(self->_changedZones, v9, v10);
    v13 = objc_msgSend_initWithCapacity_(v8, v12, v11);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = self->_changedZones;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v31, v35, 16);
    if (v16)
    {
      v19 = v16;
      v20 = *v32;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v14);
          }

          v22 = objc_msgSend_dictionaryRepresentation(*(*(&v31 + 1) + 8 * i), v17, v18);
          objc_msgSend_addObject_(v13, v23, v22);
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v31, v35, 16);
      }

      while (v19);
    }

    objc_msgSend_setObject_forKey_(v4, v24, v13, @"changedZones");
  }

  syncContinuationToken = self->_syncContinuationToken;
  if (syncContinuationToken)
  {
    objc_msgSend_setObject_forKey_(v4, v7, syncContinuationToken, @"syncContinuationToken");
  }

  if (*&self->_has)
  {
    status = self->_status;
    if (status == 1)
    {
      v27 = @"hasPendingChanges";
      objc_msgSend_setObject_forKey_(v4, v7, @"hasPendingChanges", @"status");
    }

    else if (status == 2)
    {
      v27 = @"syncComplete";
      objc_msgSend_setObject_forKey_(v4, v7, @"syncComplete", @"status");
    }

    else
    {
      v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"(unknown: %i)", self->_status);
      objc_msgSend_setObject_forKey_(v4, v28, v27, @"status");
    }
  }

  v29 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_changedZones;
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

  if (self->_syncContinuationToken)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v16 = a3;
  if (objc_msgSend_changedZonesCount(self, v4, v5))
  {
    objc_msgSend_clearChangedZones(v16, v6, v7);
    v10 = objc_msgSend_changedZonesCount(self, v8, v9);
    if (v10)
    {
      v11 = v10;
      for (i = 0; i != v11; ++i)
      {
        v13 = objc_msgSend_changedZonesAtIndex_(self, v6, i);
        objc_msgSend_addChangedZones_(v16, v14, v13);
      }
    }
  }

  syncContinuationToken = self->_syncContinuationToken;
  if (syncContinuationToken)
  {
    objc_msgSend_setSyncContinuationToken_(v16, v6, syncContinuationToken);
  }

  if (*&self->_has)
  {
    *(v16 + 4) = self->_status;
    *(v16 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = self->_changedZones;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v25, v29, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = objc_msgSend_copyWithZone_(*(*(&v25 + 1) + 8 * i), v14, a3, v25);
        objc_msgSend_addChangedZones_(v10, v19, v18);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v25, v29, 16);
    }

    while (v15);
  }

  v21 = objc_msgSend_copyWithZone_(self->_syncContinuationToken, v20, a3);
  v22 = *(v10 + 24);
  *(v10 + 24) = v21;

  if (*&self->_has)
  {
    *(v10 + 16) = self->_status;
    *(v10 + 32) |= 1u;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_10;
  }

  changedZones = self->_changedZones;
  v9 = v4[1];
  if (changedZones | v9)
  {
    if (!objc_msgSend_isEqual_(changedZones, v7, v9))
    {
      goto LABEL_10;
    }
  }

  syncContinuationToken = self->_syncContinuationToken;
  v11 = v4[3];
  if (syncContinuationToken | v11)
  {
    if (!objc_msgSend_isEqual_(syncContinuationToken, v7, v11))
    {
      goto LABEL_10;
    }
  }

  v12 = (v4[4] & 1) == 0;
  if (*&self->_has)
  {
    if ((v4[4] & 1) != 0 && self->_status == *(v4 + 4))
    {
      v12 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v12 = 0;
  }

LABEL_11:

  return v12;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_changedZones, a2, v2);
  v7 = objc_msgSend_hash(self->_syncContinuationToken, v5, v6);
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_status;
  }

  else
  {
    v8 = 0;
  }

  return v7 ^ v4 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = *(v4 + 1);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v15, v19, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_addChangedZones_(self, v8, *(*(&v15 + 1) + 8 * i), v15);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v15, v19, 16);
    }

    while (v9);
  }

  v13 = *(v4 + 3);
  if (v13)
  {
    objc_msgSend_setSyncContinuationToken_(self, v12, v13);
  }

  if (*(v4 + 32))
  {
    self->_status = *(v4 + 4);
    *&self->_has |= 1u;
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end