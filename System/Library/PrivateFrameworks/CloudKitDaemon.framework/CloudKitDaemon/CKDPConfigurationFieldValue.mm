@interface CKDPConfigurationFieldValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)typeAsString:(int)string;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)addFieldValues:(id)values;
- (void)addListValues:(id)values;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasBoolValue:(BOOL)value;
- (void)setHasLongValue:(BOOL)value;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation CKDPConfigurationFieldValue

- (int)type
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_type;
  }

  else
  {
    return 1;
  }
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)typeAsString:(int)string
{
  if ((string - 1) >= 7)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854C818[string - 1];
  }

  return v4;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if (objc_msgSend_isEqualToString_(typeCopy, v4, @"bytesType"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v5, @"BOOLType"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v7, @"longType"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v8, @"doubleType"))
  {
    v6 = 4;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v9, @"stringType"))
  {
    v6 = 5;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v10, @"fieldType"))
  {
    v6 = 6;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v11, @"listType"))
  {
    v6 = 7;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)setHasBoolValue:(BOOL)value
{
  if (value)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasLongValue:(BOOL)value
{
  if (value)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addFieldValues:(id)values
{
  valuesCopy = values;
  fieldValues = self->_fieldValues;
  v8 = valuesCopy;
  if (!fieldValues)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_fieldValues;
    self->_fieldValues = v6;

    valuesCopy = v8;
    fieldValues = self->_fieldValues;
  }

  objc_msgSend_addObject_(fieldValues, valuesCopy, valuesCopy);
}

- (void)addListValues:(id)values
{
  valuesCopy = values;
  listValues = self->_listValues;
  v8 = valuesCopy;
  if (!listValues)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_listValues;
    self->_listValues = v6;

    valuesCopy = v8;
    listValues = self->_listValues;
  }

  objc_msgSend_addObject_(listValues, valuesCopy, valuesCopy);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPConfigurationFieldValue;
  v4 = [(CKDPConfigurationFieldValue *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if ((*&self->_has & 4) != 0)
  {
    v6 = self->_type - 1;
    if (v6 >= 7)
    {
      v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_type);
    }

    else
    {
      v7 = off_27854C818[v6];
    }

    objc_msgSend_setObject_forKey_(v5, v4, v7, @"type");
  }

  bytesValue = self->_bytesValue;
  if (bytesValue)
  {
    objc_msgSend_setObject_forKey_(v5, v4, bytesValue, @"bytesValue");
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v51 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_BOOLValue);
    objc_msgSend_setObject_forKey_(v5, v52, v51, @"BOOLValue");

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_10:
      if ((has & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

  v53 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v4, self->_longValue);
  objc_msgSend_setObject_forKey_(v5, v54, v53, @"longValue");

  if (*&self->_has)
  {
LABEL_11:
    v10 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v4, bytesValue, self->_doubleValue);
    objc_msgSend_setObject_forKey_(v5, v11, v10, @"doubleValue");
  }

LABEL_12:
  stringValue = self->_stringValue;
  if (stringValue)
  {
    objc_msgSend_setObject_forKey_(v5, v4, stringValue, @"stringValue");
  }

  if (objc_msgSend_count(self->_fieldValues, v4, stringValue))
  {
    v15 = objc_alloc(MEMORY[0x277CBEB18]);
    v18 = objc_msgSend_count(self->_fieldValues, v16, v17);
    v20 = objc_msgSend_initWithCapacity_(v15, v19, v18);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v21 = self->_fieldValues;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v59, v64, 16);
    if (v23)
    {
      v26 = v23;
      v27 = *v60;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v60 != v27)
          {
            objc_enumerationMutation(v21);
          }

          v29 = objc_msgSend_dictionaryRepresentation(*(*(&v59 + 1) + 8 * i), v24, v25);
          objc_msgSend_addObject_(v20, v30, v29);
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v59, v64, 16);
      }

      while (v26);
    }

    objc_msgSend_setObject_forKey_(v5, v31, v20, @"fieldValues");
  }

  if (objc_msgSend_count(self->_listValues, v13, v14))
  {
    v32 = objc_alloc(MEMORY[0x277CBEB18]);
    v35 = objc_msgSend_count(self->_listValues, v33, v34);
    v37 = objc_msgSend_initWithCapacity_(v32, v36, v35);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v38 = self->_listValues;
    v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v55, v63, 16);
    if (v40)
    {
      v43 = v40;
      v44 = *v56;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v56 != v44)
          {
            objc_enumerationMutation(v38);
          }

          v46 = objc_msgSend_dictionaryRepresentation(*(*(&v55 + 1) + 8 * j), v41, v42);
          objc_msgSend_addObject_(v37, v47, v46);
        }

        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v41, &v55, v63, 16);
      }

      while (v43);
    }

    objc_msgSend_setObject_forKey_(v5, v48, v37, @"listValues");
  }

  v49 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)writeTo:(id)to
{
  v37 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  if (self->_bytesValue)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    BOOLValue = self->_BOOLValue;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  longValue = self->_longValue;
  PBDataWriterWriteInt64Field();
  if (*&self->_has)
  {
LABEL_8:
    doubleValue = self->_doubleValue;
    PBDataWriterWriteDoubleField();
  }

LABEL_9:
  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = self->_fieldValues;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v31, v36, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, &v31, v36, 16);
    }

    while (v11);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = self->_listValues;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v27, v35, 16);
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v27 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v23, &v27, v35, 16);
    }

    while (v19);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[14] = self->_type;
    *(toCopy + 64) |= 4u;
  }

  bytesValue = self->_bytesValue;
  v28 = toCopy;
  if (bytesValue)
  {
    objc_msgSend_setBytesValue_(toCopy, v5, bytesValue);
    toCopy = v28;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(toCopy + 60) = self->_BOOLValue;
    *(toCopy + 64) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 2) = self->_longValue;
  *(toCopy + 64) |= 2u;
  if (*&self->_has)
  {
LABEL_8:
    *(toCopy + 1) = *&self->_doubleValue;
    *(toCopy + 64) |= 1u;
  }

LABEL_9:
  stringValue = self->_stringValue;
  if (stringValue)
  {
    objc_msgSend_setStringValue_(v28, v5, stringValue);
  }

  if (objc_msgSend_fieldValuesCount(self, v5, stringValue))
  {
    objc_msgSend_clearFieldValues(v28, v9, v10);
    v13 = objc_msgSend_fieldValuesCount(self, v11, v12);
    if (v13)
    {
      v14 = v13;
      for (i = 0; i != v14; ++i)
      {
        v16 = objc_msgSend_fieldValuesAtIndex_(self, v9, i);
        objc_msgSend_addFieldValues_(v28, v17, v16);
      }
    }
  }

  if (objc_msgSend_listValuesCount(self, v9, v10))
  {
    objc_msgSend_clearListValues(v28, v18, v19);
    v22 = objc_msgSend_listValuesCount(self, v20, v21);
    if (v22)
    {
      v24 = v22;
      for (j = 0; j != v24; ++j)
      {
        v26 = objc_msgSend_listValuesAtIndex_(self, v23, j);
        objc_msgSend_addListValues_(v28, v27, v26);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if ((*&self->_has & 4) != 0)
  {
    *(v10 + 56) = self->_type;
    *(v10 + 64) |= 4u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_bytesValue, v11, zone);
  v14 = *(v12 + 24);
  *(v12 + 24) = v13;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v12 + 60) = self->_BOOLValue;
    *(v12 + 64) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v12 + 16) = self->_longValue;
  *(v12 + 64) |= 2u;
  if (*&self->_has)
  {
LABEL_6:
    *(v12 + 8) = self->_doubleValue;
    *(v12 + 64) |= 1u;
  }

LABEL_7:
  v17 = objc_msgSend_copyWithZone_(self->_stringValue, v15, zone);
  v18 = *(v12 + 48);
  *(v12 + 48) = v17;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v19 = self->_fieldValues;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v43, v48, 16);
  if (v21)
  {
    v23 = v21;
    v24 = *v44;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v44 != v24)
        {
          objc_enumerationMutation(v19);
        }

        v26 = objc_msgSend_copyWithZone_(*(*(&v43 + 1) + 8 * i), v22, zone);
        objc_msgSend_addFieldValues_(v12, v27, v26);
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v43, v48, 16);
    }

    while (v23);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v28 = self->_listValues;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v39, v47, 16);
  if (v30)
  {
    v32 = v30;
    v33 = *v40;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v40 != v33)
        {
          objc_enumerationMutation(v28);
        }

        v35 = objc_msgSend_copyWithZone_(*(*(&v39 + 1) + 8 * j), v31, zone, v39);
        objc_msgSend_addListValues_(v12, v36, v35);
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v39, v47, 16);
    }

    while (v32);
  }

  v37 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_34;
  }

  has = self->_has;
  v9 = *(equalCopy + 64);
  if ((has & 4) != 0)
  {
    if ((equalCopy[8] & 4) == 0 || self->_type != *(equalCopy + 14))
    {
      goto LABEL_34;
    }
  }

  else if ((equalCopy[8] & 4) != 0)
  {
    goto LABEL_34;
  }

  bytesValue = self->_bytesValue;
  v11 = equalCopy[3];
  if (bytesValue | v11)
  {
    if (!objc_msgSend_isEqual_(bytesValue, v7, v11))
    {
      goto LABEL_34;
    }

    has = self->_has;
    v9 = *(equalCopy + 64);
  }

  if ((has & 8) == 0)
  {
    if ((v9 & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_34:
    isEqual = 0;
    goto LABEL_35;
  }

  if ((v9 & 8) == 0)
  {
    goto LABEL_34;
  }

  v12 = *(equalCopy + 60);
  if (self->_BOOLValue)
  {
    if ((*(equalCopy + 60) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_34;
  }

LABEL_12:
  if ((has & 2) != 0)
  {
    if ((v9 & 2) == 0 || self->_longValue != equalCopy[2])
    {
      goto LABEL_34;
    }
  }

  else if ((v9 & 2) != 0)
  {
    goto LABEL_34;
  }

  if (has)
  {
    if ((v9 & 1) == 0 || self->_doubleValue != *(equalCopy + 1))
    {
      goto LABEL_34;
    }
  }

  else if (v9)
  {
    goto LABEL_34;
  }

  stringValue = self->_stringValue;
  v14 = equalCopy[6];
  if (stringValue | v14 && !objc_msgSend_isEqual_(stringValue, v7, v14))
  {
    goto LABEL_34;
  }

  fieldValues = self->_fieldValues;
  v16 = equalCopy[4];
  if (fieldValues | v16)
  {
    if (!objc_msgSend_isEqual_(fieldValues, v7, v16))
    {
      goto LABEL_34;
    }
  }

  listValues = self->_listValues;
  v18 = equalCopy[5];
  if (listValues | v18)
  {
    isEqual = objc_msgSend_isEqual_(listValues, v7, v18);
  }

  else
  {
    isEqual = 1;
  }

LABEL_35:

  return isEqual;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v4 = 2654435761 * self->_type;
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_msgSend_hash(self->_bytesValue, a2, v2);
  if ((*&self->_has & 8) == 0)
  {
    v10 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v11 = 0;
    if (*&self->_has)
    {
      goto LABEL_7;
    }

LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  v10 = 2654435761 * self->_BOOLValue;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v11 = 2654435761 * self->_longValue;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  doubleValue = self->_doubleValue;
  if (doubleValue < 0.0)
  {
    doubleValue = -doubleValue;
  }

  *v8.i64 = floor(doubleValue + 0.5);
  v13 = (doubleValue - *v8.i64) * 1.84467441e19;
  *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v9, v8).i64;
  if (v13 >= 0.0)
  {
    if (v13 > 0.0)
    {
      v15 += v13;
    }
  }

  else
  {
    v15 -= fabs(v13);
  }

LABEL_14:
  v16 = v5 ^ v4 ^ v10 ^ v11 ^ v15;
  v17 = objc_msgSend_hash(self->_stringValue, v6, v7);
  v20 = v16 ^ v17 ^ objc_msgSend_hash(self->_fieldValues, v18, v19);
  return v20 ^ objc_msgSend_hash(self->_listValues, v21, v22);
}

- (void)mergeFrom:(id)from
{
  v35 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v6 = fromCopy;
  if ((*(fromCopy + 64) & 4) != 0)
  {
    self->_type = *(fromCopy + 14);
    *&self->_has |= 4u;
  }

  v7 = *(fromCopy + 3);
  if (v7)
  {
    objc_msgSend_setBytesValue_(self, v5, v7);
  }

  v8 = *(v6 + 64);
  if ((v8 & 8) != 0)
  {
    self->_BOOLValue = *(v6 + 60);
    *&self->_has |= 8u;
    v8 = *(v6 + 64);
    if ((v8 & 2) == 0)
    {
LABEL_7:
      if ((v8 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v6 + 64) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_longValue = *(v6 + 2);
  *&self->_has |= 2u;
  if (*(v6 + 64))
  {
LABEL_8:
    self->_doubleValue = *(v6 + 1);
    *&self->_has |= 1u;
  }

LABEL_9:
  v9 = *(v6 + 6);
  if (v9)
  {
    objc_msgSend_setStringValue_(self, v5, v9);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = *(v6 + 4);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v29, v34, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_addFieldValues_(self, v13, *(*(&v29 + 1) + 8 * i));
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v29, v34, 16);
    }

    while (v14);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = *(v6 + 5);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v25, v33, 16);
  if (v19)
  {
    v21 = v19;
    v22 = *v26;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v17);
        }

        objc_msgSend_addListValues_(self, v20, *(*(&v25 + 1) + 8 * j), v25);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v25, v33, 16);
    }

    while (v21);
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end