@interface NRPBPropertyValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addArrayValues:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsError:(BOOL)a3;
- (void)setHasIsMiniUUIDSet:(BOOL)a3;
- (void)setHasIsSecurePropertyValue:(BOOL)a3;
- (void)setHasIsSet:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NRPBPropertyValue

- (void)addArrayValues:(id)a3
{
  v4 = a3;
  arrayValues = self->_arrayValues;
  v8 = v4;
  if (!arrayValues)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_arrayValues;
    self->_arrayValues = v6;

    v4 = v8;
    arrayValues = self->_arrayValues;
  }

  [(NSMutableArray *)arrayValues addObject:v4];
}

- (void)setHasIsSet:(BOOL)a3
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

- (void)setHasIsSecurePropertyValue:(BOOL)a3
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

- (void)setHasIsError:(BOOL)a3
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

- (void)setHasIsMiniUUIDSet:(BOOL)a3
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NRPBPropertyValue;
  v4 = [(NRPBPropertyValue *)&v8 description];
  v5 = [(NRPBPropertyValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  stringValue = self->_stringValue;
  if (stringValue)
  {
    [v3 setObject:stringValue forKey:@"stringValue"];
  }

  numberValue = self->_numberValue;
  if (numberValue)
  {
    v7 = [(NRPBNumber *)numberValue dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"numberValue"];
  }

  uUIDValue = self->_uUIDValue;
  if (uUIDValue)
  {
    [v4 setObject:uUIDValue forKey:@"UUIDValue"];
  }

  dataValue = self->_dataValue;
  if (dataValue)
  {
    [v4 setObject:dataValue forKey:@"dataValue"];
  }

  sizeValue = self->_sizeValue;
  if (sizeValue)
  {
    v11 = [(NRPBSize *)sizeValue dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"sizeValue"];
  }

  dictionaryKey = self->_dictionaryKey;
  if (dictionaryKey)
  {
    v13 = [(NRPBPropertyValue *)dictionaryKey dictionaryRepresentation];
    [v4 setObject:v13 forKey:@"dictionaryKey"];
  }

  if ([(NSMutableArray *)self->_arrayValues count])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_arrayValues, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = self->_arrayValues;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:v20];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v17);
    }

    [v4 setObject:v14 forKey:@"arrayValues"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSet];
    [v4 setObject:v25 forKey:@"isSet"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_24:
      if ((has & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_24;
  }

  v26 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isSecurePropertyValue, v29}];
  [v4 setObject:v26 forKey:@"isSecurePropertyValue"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_25:
    if ((has & 2) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

LABEL_33:
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isDate, v29}];
  [v4 setObject:v27 forKey:@"isDate"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_26:
    if ((has & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_34:
  v28 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isError, v29}];
  [v4 setObject:v28 forKey:@"isError"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_27:
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isMiniUUIDSet, v29}];
    [v4 setObject:v22 forKey:@"isMiniUUIDSet"];
  }

LABEL_28:
  v23 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_numberValue)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_uUIDValue)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_dataValue)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_sizeValue)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_dictionaryKey)
  {
    PBDataWriterWriteSubmessage();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_arrayValues;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    isSet = self->_isSet;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_22:
      if ((has & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_22;
  }

  isSecurePropertyValue = self->_isSecurePropertyValue;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_23:
    if ((has & 2) == 0)
    {
      goto LABEL_24;
    }

LABEL_30:
    isError = self->_isError;
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_29:
  isDate = self->_isDate;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_30;
  }

LABEL_24:
  if ((has & 4) != 0)
  {
LABEL_25:
    isMiniUUIDSet = self->_isMiniUUIDSet;
    PBDataWriterWriteBOOLField();
  }

LABEL_26:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if (self->_stringValue)
  {
    [v9 setStringValue:?];
  }

  if (self->_numberValue)
  {
    [v9 setNumberValue:?];
  }

  if (self->_uUIDValue)
  {
    [v9 setUUIDValue:?];
  }

  if (self->_dataValue)
  {
    [v9 setDataValue:?];
  }

  if (self->_sizeValue)
  {
    [v9 setSizeValue:?];
  }

  if (self->_dictionaryKey)
  {
    [v9 setDictionaryKey:?];
  }

  if ([(NRPBPropertyValue *)self arrayValuesCount])
  {
    [v9 clearArrayValues];
    v4 = [(NRPBPropertyValue *)self arrayValuesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NRPBPropertyValue *)self arrayValuesAtIndex:i];
        [v9 addArrayValues:v7];
      }
    }
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v9[68] = self->_isSet;
    v9[72] |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_19:
      if ((has & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_28;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_19;
  }

  v9[67] = self->_isSecurePropertyValue;
  v9[72] |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_20:
    if ((has & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_29;
  }

LABEL_28:
  v9[64] = self->_isDate;
  v9[72] |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_21:
    if ((has & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_29:
  v9[65] = self->_isError;
  v9[72] |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_22:
    v9[66] = self->_isMiniUUIDSet;
    v9[72] |= 4u;
  }

LABEL_23:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_stringValue copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NRPBNumber *)self->_numberValue copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSData *)self->_uUIDValue copyWithZone:a3];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  v12 = [(NSData *)self->_dataValue copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(NRPBSize *)self->_sizeValue copyWithZone:a3];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  v16 = [(NRPBPropertyValue *)self->_dictionaryKey copyWithZone:a3];
  v17 = *(v5 + 24);
  *(v5 + 24) = v16;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = self->_arrayValues;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v27 + 1) + 8 * i) copyWithZone:{a3, v27}];
        [v5 addArrayValues:v23];
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v20);
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 68) = self->_isSet;
    *(v5 + 72) |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_10:
      if ((has & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 67) = self->_isSecurePropertyValue;
  *(v5 + 72) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    *(v5 + 65) = self->_isError;
    *(v5 + 72) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_17:
  *(v5 + 64) = self->_isDate;
  *(v5 + 72) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  if ((has & 4) != 0)
  {
LABEL_13:
    *(v5 + 66) = self->_isMiniUUIDSet;
    *(v5 + 72) |= 4u;
  }

LABEL_14:
  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_54;
  }

  stringValue = self->_stringValue;
  if (stringValue | *(v4 + 6))
  {
    if (![(NSString *)stringValue isEqual:?])
    {
      goto LABEL_54;
    }
  }

  numberValue = self->_numberValue;
  if (numberValue | *(v4 + 4))
  {
    if (![(NRPBNumber *)numberValue isEqual:?])
    {
      goto LABEL_54;
    }
  }

  uUIDValue = self->_uUIDValue;
  if (uUIDValue | *(v4 + 7))
  {
    if (![(NSData *)uUIDValue isEqual:?])
    {
      goto LABEL_54;
    }
  }

  dataValue = self->_dataValue;
  if (dataValue | *(v4 + 2))
  {
    if (![(NSData *)dataValue isEqual:?])
    {
      goto LABEL_54;
    }
  }

  sizeValue = self->_sizeValue;
  if (sizeValue | *(v4 + 5))
  {
    if (![(NRPBSize *)sizeValue isEqual:?])
    {
      goto LABEL_54;
    }
  }

  dictionaryKey = self->_dictionaryKey;
  if (dictionaryKey | *(v4 + 3))
  {
    if (![(NRPBPropertyValue *)dictionaryKey isEqual:?])
    {
      goto LABEL_54;
    }
  }

  arrayValues = self->_arrayValues;
  if (arrayValues | *(v4 + 1))
  {
    if (![(NSMutableArray *)arrayValues isEqual:?])
    {
      goto LABEL_54;
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 72) & 0x10) == 0)
    {
      goto LABEL_54;
    }

    v13 = *(v4 + 68);
    if (self->_isSet)
    {
      if ((*(v4 + 68) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (*(v4 + 68))
    {
      goto LABEL_54;
    }
  }

  else if ((*(v4 + 72) & 0x10) != 0)
  {
    goto LABEL_54;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 72) & 8) == 0)
    {
      goto LABEL_54;
    }

    v14 = *(v4 + 67);
    if (self->_isSecurePropertyValue)
    {
      if ((*(v4 + 67) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (*(v4 + 67))
    {
      goto LABEL_54;
    }
  }

  else if ((*(v4 + 72) & 8) != 0)
  {
    goto LABEL_54;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) == 0)
    {
      goto LABEL_54;
    }

    v15 = *(v4 + 64);
    if (self->_isDate)
    {
      if ((*(v4 + 64) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (*(v4 + 64))
    {
      goto LABEL_54;
    }
  }

  else if (*(v4 + 72))
  {
    goto LABEL_54;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 72) & 2) == 0)
    {
      goto LABEL_24;
    }

LABEL_54:
    v12 = 0;
    goto LABEL_55;
  }

  if ((*(v4 + 72) & 2) == 0)
  {
    goto LABEL_54;
  }

  v16 = *(v4 + 65);
  if (self->_isError)
  {
    if ((*(v4 + 65) & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (*(v4 + 65))
  {
    goto LABEL_54;
  }

LABEL_24:
  v12 = (*(v4 + 72) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 72) & 4) != 0)
    {
      if (self->_isMiniUUIDSet)
      {
        if (*(v4 + 66))
        {
          goto LABEL_56;
        }
      }

      else if (!*(v4 + 66))
      {
LABEL_56:
        v12 = 1;
        goto LABEL_55;
      }
    }

    goto LABEL_54;
  }

LABEL_55:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_stringValue hash];
  v4 = [(NRPBNumber *)self->_numberValue hash];
  v5 = [(NSData *)self->_uUIDValue hash];
  v6 = [(NSData *)self->_dataValue hash];
  v7 = [(NRPBSize *)self->_sizeValue hash];
  v8 = [(NRPBPropertyValue *)self->_dictionaryKey hash];
  v9 = [(NSMutableArray *)self->_arrayValues hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v10 = 2654435761 * self->_isSet;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v11 = 2654435761 * self->_isSecurePropertyValue;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
  if (*&self->_has)
  {
LABEL_4:
    v12 = 2654435761 * self->_isDate;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v13 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v14 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

LABEL_9:
  v12 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v13 = 2654435761 * self->_isError;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v14 = 2654435761 * self->_isMiniUUIDSet;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 6))
  {
    [(NRPBPropertyValue *)self setStringValue:?];
  }

  numberValue = self->_numberValue;
  v6 = *(v4 + 4);
  if (numberValue)
  {
    if (v6)
    {
      [(NRPBNumber *)numberValue mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(NRPBPropertyValue *)self setNumberValue:?];
  }

  if (*(v4 + 7))
  {
    [(NRPBPropertyValue *)self setUUIDValue:?];
  }

  if (*(v4 + 2))
  {
    [(NRPBPropertyValue *)self setDataValue:?];
  }

  sizeValue = self->_sizeValue;
  v8 = *(v4 + 5);
  if (sizeValue)
  {
    if (v8)
    {
      [(NRPBSize *)sizeValue mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(NRPBPropertyValue *)self setSizeValue:?];
  }

  dictionaryKey = self->_dictionaryKey;
  v10 = *(v4 + 3);
  if (dictionaryKey)
  {
    if (v10)
    {
      [(NRPBPropertyValue *)dictionaryKey mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(NRPBPropertyValue *)self setDictionaryKey:?];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = *(v4 + 1);
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(NRPBPropertyValue *)self addArrayValues:*(*(&v18 + 1) + 8 * i), v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v16 = *(v4 + 72);
  if ((v16 & 0x10) != 0)
  {
    self->_isSet = *(v4 + 68);
    *&self->_has |= 0x10u;
    v16 = *(v4 + 72);
    if ((v16 & 8) == 0)
    {
LABEL_31:
      if ((v16 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_38;
    }
  }

  else if ((*(v4 + 72) & 8) == 0)
  {
    goto LABEL_31;
  }

  self->_isSecurePropertyValue = *(v4 + 67);
  *&self->_has |= 8u;
  v16 = *(v4 + 72);
  if ((v16 & 1) == 0)
  {
LABEL_32:
    if ((v16 & 2) == 0)
    {
      goto LABEL_33;
    }

LABEL_39:
    self->_isError = *(v4 + 65);
    *&self->_has |= 2u;
    if ((*(v4 + 72) & 4) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_38:
  self->_isDate = *(v4 + 64);
  *&self->_has |= 1u;
  v16 = *(v4 + 72);
  if ((v16 & 2) != 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  if ((v16 & 4) != 0)
  {
LABEL_34:
    self->_isMiniUUIDSet = *(v4 + 66);
    *&self->_has |= 4u;
  }

LABEL_35:

  v17 = *MEMORY[0x1E69E9840];
}

@end