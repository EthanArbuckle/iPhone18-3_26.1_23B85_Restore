@interface HKCodableHealthRecordsIndividualRecord
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCode:(id)a3;
- (void)addValueWithRange:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableHealthRecordsIndividualRecord

- (void)addCode:(id)a3
{
  v4 = a3;
  codes = self->_codes;
  v8 = v4;
  if (!codes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_codes;
    self->_codes = v6;

    v4 = v8;
    codes = self->_codes;
  }

  [(NSMutableArray *)codes addObject:v4];
}

- (void)addValueWithRange:(id)a3
{
  v4 = a3;
  valueWithRanges = self->_valueWithRanges;
  v8 = v4;
  if (!valueWithRanges)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_valueWithRanges;
    self->_valueWithRanges = v6;

    v4 = v8;
    valueWithRanges = self->_valueWithRanges;
  }

  [(NSMutableArray *)valueWithRanges addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableHealthRecordsIndividualRecord;
  v4 = [(HKCodableHealthRecordsIndividualRecord *)&v8 description];
  v5 = [(HKCodableHealthRecordsIndividualRecord *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_codes count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_codes, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = self->_codes;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"code"];
  }

  recordTitle = self->_recordTitle;
  if (recordTitle)
  {
    [v3 setObject:recordTitle forKey:@"recordTitle"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dateData];
    [v3 setObject:v12 forKey:@"dateData"];
  }

  if ([(NSMutableArray *)self->_valueWithRanges count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_valueWithRanges, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = self->_valueWithRanges;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v25 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"valueWithRange"];
  }

  textualValue = self->_textualValue;
  if (textualValue)
  {
    [v3 setObject:textualValue forKey:@"textualValue"];
  }

  ucumUnitString = self->_ucumUnitString;
  if (ucumUnitString)
  {
    [v3 setObject:ucumUnitString forKey:@"ucumUnitString"];
  }

  providerURI = self->_providerURI;
  if (providerURI)
  {
    [v3 setObject:providerURI forKey:@"providerURI"];
  }

  recordUUID = self->_recordUUID;
  if (recordUUID)
  {
    [v3 setObject:recordUUID forKey:@"recordUUID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_codes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  if (self->_recordTitle)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_valueWithRanges;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  if (self->_textualValue)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_ucumUnitString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_providerURI)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_recordUUID)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v13 = a3;
  if ([(HKCodableHealthRecordsIndividualRecord *)self codesCount])
  {
    [v13 clearCodes];
    v4 = [(HKCodableHealthRecordsIndividualRecord *)self codesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HKCodableHealthRecordsIndividualRecord *)self codeAtIndex:i];
        [v13 addCode:v7];
      }
    }
  }

  if (self->_recordTitle)
  {
    [v13 setRecordTitle:?];
  }

  if (*&self->_has)
  {
    *(v13 + 1) = *&self->_dateData;
    *(v13 + 72) |= 1u;
  }

  if ([(HKCodableHealthRecordsIndividualRecord *)self valueWithRangesCount])
  {
    [v13 clearValueWithRanges];
    v8 = [(HKCodableHealthRecordsIndividualRecord *)self valueWithRangesCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(HKCodableHealthRecordsIndividualRecord *)self valueWithRangeAtIndex:j];
        [v13 addValueWithRange:v11];
      }
    }
  }

  if (self->_textualValue)
  {
    [v13 setTextualValue:?];
  }

  v12 = v13;
  if (self->_ucumUnitString)
  {
    [v13 setUcumUnitString:?];
    v12 = v13;
  }

  if (self->_providerURI)
  {
    [v13 setProviderURI:?];
    v12 = v13;
  }

  if (self->_recordUUID)
  {
    [v13 setRecordUUID:?];
    v12 = v13;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = self->_codes;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v33 + 1) + 8 * v10) copyWithZone:a3];
        [v5 addCode:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_recordTitle copyWithZone:a3];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_dateData;
    *(v5 + 72) |= 1u;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = self->_valueWithRanges;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      v18 = 0;
      do
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v29 + 1) + 8 * v18) copyWithZone:{a3, v29}];
        [v5 addValueWithRange:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v16);
  }

  v20 = [(NSString *)self->_textualValue copyWithZone:a3];
  v21 = *(v5 + 48);
  *(v5 + 48) = v20;

  v22 = [(NSString *)self->_ucumUnitString copyWithZone:a3];
  v23 = *(v5 + 56);
  *(v5 + 56) = v22;

  v24 = [(NSString *)self->_providerURI copyWithZone:a3];
  v25 = *(v5 + 24);
  *(v5 + 24) = v24;

  v26 = [(NSString *)self->_recordUUID copyWithZone:a3];
  v27 = *(v5 + 40);
  *(v5 + 40) = v26;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  codes = self->_codes;
  if (codes | *(v4 + 2))
  {
    if (![(NSMutableArray *)codes isEqual:?])
    {
      goto LABEL_21;
    }
  }

  recordTitle = self->_recordTitle;
  if (recordTitle | *(v4 + 4))
  {
    if (![(NSString *)recordTitle isEqual:?])
    {
      goto LABEL_21;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_dateData != *(v4 + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 72))
  {
LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  valueWithRanges = self->_valueWithRanges;
  if (valueWithRanges | *(v4 + 8) && ![(NSMutableArray *)valueWithRanges isEqual:?])
  {
    goto LABEL_21;
  }

  textualValue = self->_textualValue;
  if (textualValue | *(v4 + 6))
  {
    if (![(NSString *)textualValue isEqual:?])
    {
      goto LABEL_21;
    }
  }

  ucumUnitString = self->_ucumUnitString;
  if (ucumUnitString | *(v4 + 7))
  {
    if (![(NSString *)ucumUnitString isEqual:?])
    {
      goto LABEL_21;
    }
  }

  providerURI = self->_providerURI;
  if (providerURI | *(v4 + 3))
  {
    if (![(NSString *)providerURI isEqual:?])
    {
      goto LABEL_21;
    }
  }

  recordUUID = self->_recordUUID;
  if (recordUUID | *(v4 + 5))
  {
    v12 = [(NSString *)recordUUID isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_22:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_codes hash];
  v4 = [(NSString *)self->_recordTitle hash];
  if (*&self->_has)
  {
    dateData = self->_dateData;
    if (dateData < 0.0)
    {
      dateData = -dateData;
    }

    *v5.i64 = floor(dateData + 0.5);
    v9 = (dateData - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = v4 ^ v3 ^ v7 ^ [(NSMutableArray *)self->_valueWithRanges hash];
  v12 = [(NSString *)self->_textualValue hash];
  v13 = v12 ^ [(NSString *)self->_ucumUnitString hash];
  v14 = v11 ^ v13 ^ [(NSString *)self->_providerURI hash];
  return v14 ^ [(NSString *)self->_recordUUID hash];
}

- (void)mergeFrom:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = *(v4 + 2);
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HKCodableHealthRecordsIndividualRecord *)self addCode:*(*(&v19 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  if (*(v4 + 4))
  {
    [(HKCodableHealthRecordsIndividualRecord *)self setRecordTitle:?];
  }

  if (*(v4 + 72))
  {
    self->_dateData = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(v4 + 8);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(HKCodableHealthRecordsIndividualRecord *)self addValueWithRange:*(*(&v15 + 1) + 8 * j), v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  if (*(v4 + 6))
  {
    [(HKCodableHealthRecordsIndividualRecord *)self setTextualValue:?];
  }

  if (*(v4 + 7))
  {
    [(HKCodableHealthRecordsIndividualRecord *)self setUcumUnitString:?];
  }

  if (*(v4 + 3))
  {
    [(HKCodableHealthRecordsIndividualRecord *)self setProviderURI:?];
  }

  if (*(v4 + 5))
  {
    [(HKCodableHealthRecordsIndividualRecord *)self setRecordUUID:?];
  }
}

@end