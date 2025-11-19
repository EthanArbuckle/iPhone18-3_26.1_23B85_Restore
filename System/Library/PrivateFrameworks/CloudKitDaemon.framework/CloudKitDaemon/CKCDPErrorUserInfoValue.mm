@interface CKCDPErrorUserInfoValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)valueAsString:(int)a3;
- (int)StringAsValue:(id)a3;
- (int)value;
- (unint64_t)hash;
- (void)clearOneofValuesForValue;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setBytesValue:(id)a3;
- (void)setDoubleValue:(double)a3;
- (void)setHasBoolValue:(BOOL)a3;
- (void)setHasInt64Value:(BOOL)a3;
- (void)setHasValue:(BOOL)a3;
- (void)setInt64Value:(int64_t)a3;
- (void)setStringValue:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKCDPErrorUserInfoValue

- (void)setDoubleValue:(double)a3
{
  objc_msgSend_clearOneofValuesForValue(self, a2, v3);
  *&self->_has |= 4u;
  self->_value = 1;
  *&self->_has |= 1u;
  self->_doubleValue = a3;
}

- (void)setInt64Value:(int64_t)a3
{
  objc_msgSend_clearOneofValuesForValue(self, a2, a3);
  *&self->_has |= 4u;
  self->_value = 2;
  *&self->_has |= 2u;
  self->_int64Value = a3;
}

- (void)setHasInt64Value:(BOOL)a3
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

- (void)setHasBoolValue:(BOOL)a3
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

- (void)setStringValue:(id)a3
{
  v4 = a3;
  objc_msgSend_clearOneofValuesForValue(self, v5, v6);
  *&self->_has |= 4u;
  self->_value = 4;
  stringValue = self->_stringValue;
  self->_stringValue = v4;
}

- (void)setBytesValue:(id)a3
{
  v4 = a3;
  objc_msgSend_clearOneofValuesForValue(self, v5, v6);
  *&self->_has |= 4u;
  self->_value = 5;
  bytesValue = self->_bytesValue;
  self->_bytesValue = v4;
}

- (int)value
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_value;
  }

  else
  {
    return 0;
  }
}

- (void)setHasValue:(BOOL)a3
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

- (id)valueAsString:(int)a3
{
  if (a3 >= 6)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_27854C7B8[a3];
  }

  return v4;
}

- (int)StringAsValue:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"PBUNSET"))
  {
    v6 = 0;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"doubleValue"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"int64Value"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v8, @"BOOLValue"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(v3, v9, @"stringValue"))
  {
    v6 = 4;
  }

  else if (objc_msgSend_isEqualToString_(v3, v10, @"bytesValue"))
  {
    v6 = 5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)clearOneofValuesForValue
{
  *&self->_has &= ~4u;
  self->_value = 0;
  *&self->_has &= ~1u;
  self->_doubleValue = 0.0;
  *&self->_has &= ~2u;
  self->_int64Value = 0;
  *&self->_has &= ~8u;
  self->_BOOLValue = 0;
  stringValue = self->_stringValue;
  self->_stringValue = 0;

  bytesValue = self->_bytesValue;
  self->_bytesValue = 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKCDPErrorUserInfoValue;
  v4 = [(CKCDPErrorUserInfoValue *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  has = self->_has;
  if (has)
  {
    v14 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v4, v5, self->_doubleValue);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"doubleValue");

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v16 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v4, self->_int64Value);
  objc_msgSend_setObject_forKey_(v6, v17, v16, @"int64Value");

  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v8 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_BOOLValue);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"BOOLValue");
  }

LABEL_5:
  stringValue = self->_stringValue;
  if (stringValue)
  {
    objc_msgSend_setObject_forKey_(v6, v4, stringValue, @"stringValue");
  }

  bytesValue = self->_bytesValue;
  if (bytesValue)
  {
    objc_msgSend_setObject_forKey_(v6, v4, bytesValue, @"bytesValue");
  }

  if ((*&self->_has & 4) != 0)
  {
    value = self->_value;
    if (value >= 6)
    {
      v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_value);
    }

    else
    {
      v13 = off_27854C7B8[value];
    }

    objc_msgSend_setObject_forKey_(v6, v4, v13, @"value");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    doubleValue = self->_doubleValue;
    PBDataWriterWriteDoubleField();
    v4 = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  int64Value = self->_int64Value;
  PBDataWriterWriteInt64Field();
  v4 = v9;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    BOOLValue = self->_BOOLValue;
    PBDataWriterWriteBOOLField();
    v4 = v9;
  }

LABEL_5:
  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_bytesValue)
  {
    PBDataWriterWriteDataField();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[10] = self->_value;
    *(v4 + 48) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 1) = *&self->_doubleValue;
  *(v4 + 48) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  *(v4 + 2) = self->_int64Value;
  *(v4 + 48) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    *(v4 + 44) = self->_BOOLValue;
    *(v4 + 48) |= 8u;
  }

LABEL_6:
  stringValue = self->_stringValue;
  v9 = v4;
  if (stringValue)
  {
    objc_msgSend_setStringValue_(v4, v5, stringValue);
    v4 = v9;
  }

  bytesValue = self->_bytesValue;
  if (bytesValue)
  {
    objc_msgSend_setBytesValue_(v9, v5, bytesValue);
    v4 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v10 + 40) = self->_value;
    *(v10 + 48) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v10 + 16) = self->_int64Value;
      *(v10 + 48) |= 2u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v10 + 8) = self->_doubleValue;
  *(v10 + 48) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(v10 + 44) = self->_BOOLValue;
    *(v10 + 48) |= 8u;
  }

LABEL_6:
  v14 = objc_msgSend_copyWithZone_(self->_stringValue, v11, a3);
  v15 = v12[4];
  v12[4] = v14;

  v17 = objc_msgSend_copyWithZone_(self->_bytesValue, v16, a3);
  v18 = v12[3];
  v12[3] = v17;

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_24;
  }

  v8 = *(v4 + 48);
  if ((*&self->_has & 4) != 0)
  {
    if ((v4[6] & 4) == 0 || self->_value != *(v4 + 10))
    {
      goto LABEL_24;
    }
  }

  else if ((v4[6] & 4) != 0)
  {
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((v4[6] & 1) == 0 || self->_doubleValue != *(v4 + 1))
    {
      goto LABEL_24;
    }
  }

  else if (v4[6])
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((v4[6] & 2) == 0 || self->_int64Value != v4[2])
    {
      goto LABEL_24;
    }
  }

  else if ((v4[6] & 2) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((v4[6] & 8) == 0)
    {
      goto LABEL_19;
    }

LABEL_24:
    isEqual = 0;
    goto LABEL_25;
  }

  if ((v4[6] & 8) == 0)
  {
    goto LABEL_24;
  }

  v15 = *(v4 + 44);
  if (self->_BOOLValue)
  {
    if ((*(v4 + 44) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_24;
  }

LABEL_19:
  stringValue = self->_stringValue;
  v10 = v4[4];
  if (stringValue | v10 && !objc_msgSend_isEqual_(stringValue, v7, v10))
  {
    goto LABEL_24;
  }

  bytesValue = self->_bytesValue;
  v12 = v4[3];
  if (bytesValue | v12)
  {
    isEqual = objc_msgSend_isEqual_(bytesValue, v7, v12);
  }

  else
  {
    isEqual = 1;
  }

LABEL_25:

  return isEqual;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_value;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  doubleValue = self->_doubleValue;
  if (doubleValue < 0.0)
  {
    doubleValue = -doubleValue;
  }

  *v3.i64 = floor(doubleValue + 0.5);
  v8 = (doubleValue - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v4, v3).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_9:
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_int64Value;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  v11 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v12 = 2654435761 * self->_BOOLValue;
LABEL_14:
  v13 = v10 ^ v6 ^ v11 ^ v12 ^ objc_msgSend_hash(self->_stringValue, a2, v2);
  return v13 ^ objc_msgSend_hash(self->_bytesValue, v14, v15);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = *(v4 + 48);
  if ((v6 & 4) != 0)
  {
    self->_value = *(v4 + 10);
    *&self->_has |= 4u;
    v6 = *(v4 + 48);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(v4 + 48) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_doubleValue = *(v4 + 1);
  *&self->_has |= 1u;
  v6 = *(v4 + 48);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  self->_int64Value = *(v4 + 2);
  *&self->_has |= 2u;
  if ((*(v4 + 48) & 8) != 0)
  {
LABEL_5:
    self->_BOOLValue = *(v4 + 44);
    *&self->_has |= 8u;
  }

LABEL_6:
  v7 = *(v4 + 4);
  v9 = v4;
  if (v7)
  {
    objc_msgSend_setStringValue_(self, v5, v7);
    v4 = v9;
  }

  v8 = *(v4 + 3);
  if (v8)
  {
    objc_msgSend_setBytesValue_(self, v5, v8);
    v4 = v9;
  }
}

@end