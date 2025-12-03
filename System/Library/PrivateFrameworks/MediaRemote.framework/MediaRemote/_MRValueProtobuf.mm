@interface _MRValueProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addArrayValue:(id)value;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasBoolValue:(BOOL)value;
- (void)setHasFloatValue:(BOOL)value;
- (void)setHasInt64Value:(BOOL)value;
- (void)writeTo:(id)to;
@end

@implementation _MRValueProtobuf

- (void)setHasInt64Value:(BOOL)value
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

- (void)setHasFloatValue:(BOOL)value
{
  if (value)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
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

- (void)addArrayValue:(id)value
{
  valueCopy = value;
  arrayValues = self->_arrayValues;
  v8 = valueCopy;
  if (!arrayValues)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_arrayValues;
    self->_arrayValues = v6;

    valueCopy = v8;
    arrayValues = self->_arrayValues;
  }

  [(NSMutableArray *)arrayValues addObject:valueCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRValueProtobuf;
  v4 = [(_MRValueProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRValueProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = dictionary;
  stringValue = self->_stringValue;
  if (stringValue)
  {
    [dictionary setObject:stringValue forKey:@"stringValue"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_int64Value];
    [v5 setObject:v23 forKey:@"int64Value"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *&v4 = self->_floatValue;
  v24 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v5 setObject:v24 forKey:@"floatValue"];

  if (*&self->_has)
  {
LABEL_6:
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_doubleValue];
    [v5 setObject:v8 forKey:@"doubleValue"];
  }

LABEL_7:
  dataValue = self->_dataValue;
  if (dataValue)
  {
    [v5 setObject:dataValue forKey:@"dataValue"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_BOOLValue];
    [v5 setObject:v10 forKey:@"BOOLValue"];
  }

  dateValue = self->_dateValue;
  if (dateValue)
  {
    [v5 setObject:dateValue forKey:@"dateValue"];
  }

  if ([(NSMutableArray *)self->_arrayValues count])
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_arrayValues, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = self->_arrayValues;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v12 addObject:dictionaryRepresentation];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v15);
    }

    [v5 setObject:v12 forKey:@"arrayValue"];
  }

  dictionaryValue = self->_dictionaryValue;
  if (dictionaryValue)
  {
    dictionaryRepresentation2 = [(_MRDictionaryProtobuf *)dictionaryValue dictionaryRepresentation];
    [v5 setObject:dictionaryRepresentation2 forKey:@"dictionaryValue"];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    int64Value = self->_int64Value;
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  floatValue = self->_floatValue;
  PBDataWriterWriteFloatField();
  if (*&self->_has)
  {
LABEL_6:
    doubleValue = self->_doubleValue;
    PBDataWriterWriteDoubleField();
  }

LABEL_7:
  if (self->_dataValue)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 8) != 0)
  {
    BOOLValue = self->_BOOLValue;
    PBDataWriterWriteBOOLField();
  }

  if (self->_dateValue)
  {
    PBDataWriterWriteStringField();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_arrayValues;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  if (self->_dictionaryValue)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_stringValue)
  {
    [toCopy setStringValue:?];
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_int64Value;
    *(toCopy + 76) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 14) = LODWORD(self->_floatValue);
  *(toCopy + 76) |= 4u;
  if (*&self->_has)
  {
LABEL_6:
    *(toCopy + 1) = *&self->_doubleValue;
    *(toCopy + 76) |= 1u;
  }

LABEL_7:
  if (self->_dataValue)
  {
    [v10 setDataValue:?];
    toCopy = v10;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(toCopy + 72) = self->_BOOLValue;
    *(toCopy + 76) |= 8u;
  }

  if (self->_dateValue)
  {
    [v10 setDateValue:?];
  }

  if ([(_MRValueProtobuf *)self arrayValuesCount])
  {
    [v10 clearArrayValues];
    arrayValuesCount = [(_MRValueProtobuf *)self arrayValuesCount];
    if (arrayValuesCount)
    {
      v7 = arrayValuesCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(_MRValueProtobuf *)self arrayValueAtIndex:i];
        [v10 addArrayValue:v9];
      }
    }
  }

  if (self->_dictionaryValue)
  {
    [v10 setDictionaryValue:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_stringValue copyWithZone:zone];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_int64Value;
    *(v5 + 76) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 56) = self->_floatValue;
  *(v5 + 76) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 8) = self->_doubleValue;
    *(v5 + 76) |= 1u;
  }

LABEL_5:
  v9 = [(NSData *)self->_dataValue copyWithZone:zone];
  v10 = *(v5 + 32);
  *(v5 + 32) = v9;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 72) = self->_BOOLValue;
    *(v5 + 76) |= 8u;
  }

  v11 = [(NSString *)self->_dateValue copyWithZone:zone];
  v12 = *(v5 + 40);
  *(v5 + 40) = v11;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = self->_arrayValues;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v23 + 1) + 8 * i) copyWithZone:{zone, v23}];
        [v5 addArrayValue:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  v19 = [(_MRDictionaryProtobuf *)self->_dictionaryValue copyWithZone:zone];
  v20 = *(v5 + 48);
  *(v5 + 48) = v19;

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  stringValue = self->_stringValue;
  if (stringValue | *(equalCopy + 8))
  {
    if (![(NSString *)stringValue isEqual:?])
    {
      goto LABEL_31;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 76);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 76) & 2) == 0 || self->_int64Value != *(equalCopy + 2))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 76) & 2) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 76) & 4) == 0 || self->_floatValue != *(equalCopy + 14))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 76) & 4) != 0)
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 76) & 1) == 0 || self->_doubleValue != *(equalCopy + 1))
    {
      goto LABEL_31;
    }
  }

  else if (*(equalCopy + 76))
  {
    goto LABEL_31;
  }

  dataValue = self->_dataValue;
  if (dataValue | *(equalCopy + 4))
  {
    if (![(NSData *)dataValue isEqual:?])
    {
      goto LABEL_31;
    }

    has = self->_has;
  }

  v9 = *(equalCopy + 76);
  if ((has & 8) == 0)
  {
    if ((*(equalCopy + 76) & 8) == 0)
    {
      goto LABEL_24;
    }

LABEL_31:
    v13 = 0;
    goto LABEL_32;
  }

  if ((*(equalCopy + 76) & 8) == 0)
  {
    goto LABEL_31;
  }

  v15 = *(equalCopy + 72);
  if (self->_BOOLValue)
  {
    if ((*(equalCopy + 72) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (*(equalCopy + 72))
  {
    goto LABEL_31;
  }

LABEL_24:
  dateValue = self->_dateValue;
  if (dateValue | *(equalCopy + 5) && ![(NSString *)dateValue isEqual:?])
  {
    goto LABEL_31;
  }

  arrayValues = self->_arrayValues;
  if (arrayValues | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)arrayValues isEqual:?])
    {
      goto LABEL_31;
    }
  }

  dictionaryValue = self->_dictionaryValue;
  if (dictionaryValue | *(equalCopy + 6))
  {
    v13 = [(_MRDictionaryProtobuf *)dictionaryValue isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_32:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_stringValue hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_int64Value;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  floatValue = self->_floatValue;
  if (floatValue < 0.0)
  {
    floatValue = -floatValue;
  }

  *v4.i32 = floorf(floatValue + 0.5);
  v8 = (floatValue - *v4.i32) * 1.8447e19;
  *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  v4 = vbslq_s8(v9, v5, v4);
  v10 = 2654435761u * *v4.i32;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabsf(v8);
  }

LABEL_9:
  if (*&self->_has)
  {
    doubleValue = self->_doubleValue;
    if (doubleValue < 0.0)
    {
      doubleValue = -doubleValue;
    }

    *v4.i64 = floor(doubleValue + 0.5);
    v13 = (doubleValue - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v5, v4).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = [(NSData *)self->_dataValue hash];
  if ((*&self->_has & 8) != 0)
  {
    v16 = 2654435761 * self->_BOOLValue;
  }

  else
  {
    v16 = 0;
  }

  v17 = v6 ^ v3 ^ v10 ^ v11 ^ v15;
  v18 = v16 ^ [(NSString *)self->_dateValue hash];
  v19 = v17 ^ v18 ^ [(NSMutableArray *)self->_arrayValues hash];
  return v19 ^ [(_MRDictionaryProtobuf *)self->_dictionaryValue hash];
}

- (void)mergeFrom:(id)from
{
  v19 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 8))
  {
    [(_MRValueProtobuf *)self setStringValue:?];
  }

  v5 = *(fromCopy + 76);
  if ((v5 & 2) != 0)
  {
    self->_int64Value = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 76);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(fromCopy + 76) & 4) == 0)
  {
    goto LABEL_5;
  }

  self->_floatValue = *(fromCopy + 14);
  *&self->_has |= 4u;
  if (*(fromCopy + 76))
  {
LABEL_6:
    self->_doubleValue = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_7:
  if (*(fromCopy + 4))
  {
    [(_MRValueProtobuf *)self setDataValue:?];
  }

  if ((*(fromCopy + 76) & 8) != 0)
  {
    self->_BOOLValue = *(fromCopy + 72);
    *&self->_has |= 8u;
  }

  if (*(fromCopy + 5))
  {
    [(_MRValueProtobuf *)self setDateValue:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *(fromCopy + 3);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(_MRValueProtobuf *)self addArrayValue:*(*(&v14 + 1) + 8 * i), v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  dictionaryValue = self->_dictionaryValue;
  v12 = *(fromCopy + 6);
  if (dictionaryValue)
  {
    if (v12)
    {
      [(_MRDictionaryProtobuf *)dictionaryValue mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(_MRValueProtobuf *)self setDictionaryValue:?];
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end