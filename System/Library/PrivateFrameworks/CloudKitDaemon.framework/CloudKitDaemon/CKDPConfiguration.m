@interface CKDPConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFields:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasExpires:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPConfiguration

- (void)addFields:(id)a3
{
  v4 = a3;
  fields = self->_fields;
  v8 = v4;
  if (!fields)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_fields;
    self->_fields = v6;

    v4 = v8;
    fields = self->_fields;
  }

  objc_msgSend_addObject_(fields, v4, v4);
}

- (void)setHasExpires:(BOOL)a3
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
  v11.super_class = CKDPConfiguration;
  v4 = [(CKDPConfiguration *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (objc_msgSend_count(self->_fields, v5, v6))
  {
    v8 = objc_alloc(MEMORY[0x277CBEB18]);
    v11 = objc_msgSend_count(self->_fields, v9, v10);
    v13 = objc_msgSend_initWithCapacity_(v8, v12, v11);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = self->_fields;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v32, v36, 16);
    if (v16)
    {
      v19 = v16;
      v20 = *v33;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(v14);
          }

          v22 = objc_msgSend_dictionaryRepresentation(*(*(&v32 + 1) + 8 * i), v17, v18, v32);
          objc_msgSend_addObject_(v13, v23, v22);
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v32, v36, 16);
      }

      while (v19);
    }

    objc_msgSend_setObject_forKey_(v4, v24, v13, @"fields");
  }

  has = self->_has;
  if (has)
  {
    v26 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v7, self->_created);
    objc_msgSend_setObject_forKey_(v4, v27, v26, @"created");

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v28 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v7, self->_expires);
    objc_msgSend_setObject_forKey_(v4, v29, v28, @"expires");
  }

  v30 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)readFrom:(id)a3
{
  v5 = objc_msgSend_position(a3, a2, a3);
  if (v5 < objc_msgSend_length(a3, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a3, v8, v9))
      {
        return objc_msgSend_hasError(a3, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v82[0]) = 0;
        v13 = objc_msgSend_position(a3, v8, v9, v82[0]) + 1;
        if (v13 >= objc_msgSend_position(a3, v14, v15) && (v18 = objc_msgSend_position(a3, v16, v17) + 1, v18 <= objc_msgSend_length(a3, v19, v20)))
        {
          v21 = objc_msgSend_data(a3, v16, v17);
          v24 = objc_msgSend_position(a3, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v82, v24, 1);

          v28 = objc_msgSend_position(a3, v26, v27);
          objc_msgSend_setPosition_(a3, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a3, v16, v17);
        }

        v12 |= (v82[0] & 0x7F) << v10;
        if ((v82[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a3, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a3, v8, v9))
      {
        return objc_msgSend_hasError(a3, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a3, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 3)
      {
        break;
      }

      if (v32 == 2)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *&self->_has |= 1u;
        while (1)
        {
          LOBYTE(v82[0]) = 0;
          v39 = objc_msgSend_position(a3, v32, v9, v82[0]) + 1;
          if (v39 >= objc_msgSend_position(a3, v40, v41) && (v44 = objc_msgSend_position(a3, v42, v43) + 1, v44 <= objc_msgSend_length(a3, v45, v46)))
          {
            v47 = objc_msgSend_data(a3, v42, v43);
            v50 = objc_msgSend_position(a3, v48, v49);
            objc_msgSend_getBytes_range_(v47, v51, v82, v50, 1);

            v54 = objc_msgSend_position(a3, v52, v53);
            objc_msgSend_setPosition_(a3, v55, v54 + 1);
          }

          else
          {
            objc_msgSend__setError(a3, v42, v43);
          }

          v38 |= (v82[0] & 0x7F) << v36;
          if ((v82[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v30 = v37++ >= 9;
          if (v30)
          {
            v56 = 0;
            goto LABEL_46;
          }
        }

        if (objc_msgSend_hasError(a3, v32, v9))
        {
          v56 = 0;
        }

        else
        {
          v56 = v38;
        }

LABEL_46:
        v77 = 8;
LABEL_51:
        *(&self->super.super.isa + v77) = v56;
        goto LABEL_52;
      }

      if (v32 == 1)
      {
        v33 = objc_alloc_init(CKDPConfigurationField);
        objc_msgSend_addFields_(self, v34, v33);
        v82[0] = 0;
        v82[1] = 0;
        if (!PBReaderPlaceMark() || !sub_2252EB49C(v33, a3, v35))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_52:
      v78 = objc_msgSend_position(a3, v32, v9);
      if (v78 >= objc_msgSend_length(a3, v79, v80))
      {
        return objc_msgSend_hasError(a3, v8, v9) ^ 1;
      }
    }

    v57 = 0;
    v58 = 0;
    v59 = 0;
    *&self->_has |= 2u;
    while (1)
    {
      LOBYTE(v82[0]) = 0;
      v60 = objc_msgSend_position(a3, v32, v9, v82[0]) + 1;
      if (v60 >= objc_msgSend_position(a3, v61, v62) && (v65 = objc_msgSend_position(a3, v63, v64) + 1, v65 <= objc_msgSend_length(a3, v66, v67)))
      {
        v68 = objc_msgSend_data(a3, v63, v64);
        v71 = objc_msgSend_position(a3, v69, v70);
        objc_msgSend_getBytes_range_(v68, v72, v82, v71, 1);

        v75 = objc_msgSend_position(a3, v73, v74);
        objc_msgSend_setPosition_(a3, v76, v75 + 1);
      }

      else
      {
        objc_msgSend__setError(a3, v63, v64);
      }

      v59 |= (v82[0] & 0x7F) << v57;
      if ((v82[0] & 0x80) == 0)
      {
        break;
      }

      v57 += 7;
      v30 = v58++ >= 9;
      if (v30)
      {
        v56 = 0;
        goto LABEL_50;
      }
    }

    if (objc_msgSend_hasError(a3, v32, v9))
    {
      v56 = 0;
    }

    else
    {
      v56 = v59;
    }

LABEL_50:
    v77 = 16;
    goto LABEL_51;
  }

  return objc_msgSend_hasError(a3, v8, v9) ^ 1;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_fields;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v17, v21, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v17, v21, 16);
    }

    while (v8);
  }

  has = self->_has;
  if (has)
  {
    created = self->_created;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    expires = self->_expires;
    PBDataWriterWriteUint64Field();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v17 = a3;
  if (objc_msgSend_fieldsCount(self, v4, v5))
  {
    objc_msgSend_clearFields(v17, v6, v7);
    v10 = objc_msgSend_fieldsCount(self, v8, v9);
    if (v10)
    {
      v12 = v10;
      for (i = 0; i != v12; ++i)
      {
        v14 = objc_msgSend_fieldsAtIndex_(self, v11, i);
        objc_msgSend_addFields_(v17, v15, v14);
      }
    }
  }

  has = self->_has;
  if (has)
  {
    *(v17 + 1) = self->_created;
    *(v17 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v17 + 2) = self->_expires;
    *(v17 + 32) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = self->_fields;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v23, v27, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = objc_msgSend_copyWithZone_(*(*(&v23 + 1) + 8 * i), v14, a3, v23);
        objc_msgSend_addFields_(v10, v19, v18);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v23, v27, 16);
    }

    while (v15);
  }

  has = self->_has;
  if (has)
  {
    *(v10 + 8) = self->_created;
    *(v10 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v10 + 16) = self->_expires;
    *(v10 + 32) |= 2u;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_13;
  }

  fields = self->_fields;
  v9 = v4[3];
  if (fields | v9)
  {
    if (!objc_msgSend_isEqual_(fields, v7, v9))
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((v4[4] & 1) == 0 || self->_created != v4[1])
    {
      goto LABEL_13;
    }
  }

  else if (v4[4])
  {
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v10 = (v4[4] & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((v4[4] & 2) == 0 || self->_expires != v4[2])
    {
      goto LABEL_13;
    }

    v10 = 1;
  }

LABEL_14:

  return v10;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_fields, a2, v2);
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_created;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v5 ^ v4 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761u * self->_expires;
  return v5 ^ v4 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = *(v4 + 3);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v18, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_addFields_(self, v8, *(*(&v14 + 1) + 8 * i), v14);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v14, v18, 16);
    }

    while (v9);
  }

  v12 = *(v4 + 32);
  if (v12)
  {
    self->_created = *(v4 + 1);
    *&self->_has |= 1u;
    v12 = *(v4 + 32);
  }

  if ((v12 & 2) != 0)
  {
    self->_expires = *(v4 + 2);
    *&self->_has |= 2u;
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end