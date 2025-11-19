@interface _DKPREvent
- (BOOL)isEqual:(id)a3;
- (double)confidence;
- (double)creationDate;
- (double)endDate;
- (double)startDate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)addMetadata:(uint64_t)a1;
- (uint64_t)compatibilityVersion;
- (uint64_t)hasCompatibilityVersion;
- (uint64_t)hasConfidence;
- (uint64_t)hasTimeZone;
- (uint64_t)identifier;
- (uint64_t)metadatas;
- (uint64_t)setCompatibilityVersion:(uint64_t)result;
- (uint64_t)setConfidence:(uint64_t)result;
- (uint64_t)setCreationDate:(uint64_t)result;
- (uint64_t)setEndDate:(uint64_t)result;
- (uint64_t)setStartDate:(uint64_t)result;
- (uint64_t)setTimeZone:(uint64_t)result;
- (uint64_t)source;
- (uint64_t)stream;
- (uint64_t)timeZone;
- (uint64_t)value;
- (unint64_t)hash;
- (void)setIdentifier:(uint64_t)a1;
- (void)setSource:(uint64_t)a1;
- (void)setStream:(uint64_t)a1;
- (void)setValue:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation _DKPREvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _DKPREvent;
  v4 = [(_DKPREvent *)&v8 description];
  v5 = [(_DKPREvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  stream = self->_stream;
  if (stream)
  {
    v5 = [(_DKPRStream *)stream dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"stream"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startDate];
  [v3 setObject:v6 forKey:@"startDate"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endDate];
  [v3 setObject:v7 forKey:@"endDate"];

  value = self->_value;
  if (value)
  {
    v9 = [(_DKPRValue *)value dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"value"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  source = self->_source;
  if (source)
  {
    v12 = [(_DKPRSource *)source dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"source"];
  }

  if ([(NSMutableArray *)self->_metadatas count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_metadatas, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = self->_metadatas;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v27 + 1) + 8 * i) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"metadata"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithDouble:self->_creationDate];
    [v3 setObject:v24 forKey:@"creationDate"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_20:
      if ((has & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_28;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_20;
  }

  v25 = [MEMORY[0x1E696AD98] numberWithDouble:{self->_confidence, v27}];
  [v3 setObject:v25 forKey:@"confidence"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_21:
    if ((has & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_28:
  v26 = [MEMORY[0x1E696AD98] numberWithLongLong:{self->_timeZone, v27}];
  [v3 setObject:v26 forKey:@"timeZone"];

  if (*&self->_has)
  {
LABEL_22:
    v21 = [MEMORY[0x1E696AD98] numberWithLongLong:{self->_compatibilityVersion, v27}];
    [v3 setObject:v21 forKey:@"compatibilityVersion"];
  }

LABEL_23:
  v22 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_stream)
  {
    [_DKPREvent writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteSubmessage();
  startDate = self->_startDate;
  PBDataWriterWriteDoubleField();
  endDate = self->_endDate;
  PBDataWriterWriteDoubleField();
  if (!self->_value)
  {
    [_DKPREvent writeTo:];
  }

  PBDataWriterWriteSubmessage();
  if (!self->_identifier)
  {
    [_DKPREvent writeTo:];
  }

  PBDataWriterWriteStringField();
  if (self->_source)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_metadatas;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    creationDate = self->_creationDate;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_15:
      if ((has & 8) == 0)
      {
        goto LABEL_16;
      }

LABEL_21:
      timeZone = self->_timeZone;
      PBDataWriterWriteInt64Field();
      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_15;
  }

  confidence = self->_confidence;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  if (has)
  {
LABEL_17:
    compatibilityVersion = self->_compatibilityVersion;
    PBDataWriterWriteInt64Field();
  }

LABEL_18:

  v16 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_DKPRStream *)self->_stream copyWithZone:a3];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  *(v5 + 40) = self->_startDate;
  *(v5 + 32) = self->_endDate;
  v8 = [(_DKPRValue *)self->_value copyWithZone:a3];
  v9 = *(v5 + 88);
  *(v5 + 88) = v8;

  v10 = [(NSString *)self->_identifier copyWithZone:a3];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  v12 = [(_DKPRSource *)self->_source copyWithZone:a3];
  v13 = *(v5 + 72);
  *(v5 + 72) = v12;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = self->_metadatas;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v23 + 1) + 8 * i) copyWithZone:{a3, v23}];
        [(_DKPREvent *)v5 addMetadata:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_creationDate;
    *(v5 + 96) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_10:
      if ((has & 8) == 0)
      {
        goto LABEL_11;
      }

LABEL_16:
      *(v5 + 48) = self->_timeZone;
      *(v5 + 96) |= 8u;
      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 16) = self->_confidence;
  *(v5 + 96) |= 2u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (has)
  {
LABEL_12:
    *(v5 + 8) = self->_compatibilityVersion;
    *(v5 + 96) |= 1u;
  }

LABEL_13:
  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  stream = self->_stream;
  if (stream | *(v4 + 10))
  {
    if (![(_DKPRStream *)stream isEqual:?])
    {
      goto LABEL_33;
    }
  }

  if (self->_startDate != *(v4 + 5))
  {
    goto LABEL_33;
  }

  if (self->_endDate != *(v4 + 4))
  {
    goto LABEL_33;
  }

  value = self->_value;
  if (value | *(v4 + 11))
  {
    if (![(_DKPRValue *)value isEqual:?])
    {
      goto LABEL_33;
    }
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 7))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_33;
    }
  }

  source = self->_source;
  if (source | *(v4 + 9))
  {
    if (![(_DKPRSource *)source isEqual:?])
    {
      goto LABEL_33;
    }
  }

  metadatas = self->_metadatas;
  if (metadatas | *(v4 + 8))
  {
    if (![(NSMutableArray *)metadatas isEqual:?])
    {
      goto LABEL_33;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 96) & 4) == 0 || self->_creationDate != *(v4 + 3))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 96) & 4) != 0)
  {
LABEL_33:
    v10 = 0;
    goto LABEL_34;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 96) & 2) == 0 || self->_confidence != *(v4 + 2))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 96) & 2) != 0)
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 96) & 8) == 0 || self->_timeZone != *(v4 + 6))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 96) & 8) != 0)
  {
    goto LABEL_33;
  }

  v10 = (*(v4 + 96) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 96) & 1) == 0 || self->_compatibilityVersion != *(v4 + 1))
    {
      goto LABEL_33;
    }

    v10 = 1;
  }

LABEL_34:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(_DKPRStream *)self->_stream hash];
  startDate = self->_startDate;
  if (startDate < 0.0)
  {
    startDate = -startDate;
  }

  *v4.i64 = floor(startDate + 0.5);
  v7 = (startDate - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = vnegq_f64(v8);
  v10 = vbslq_s8(v9, v5, v4);
  v11 = 2654435761u * *v10.i64;
  v12 = v11 + v7;
  if (v7 <= 0.0)
  {
    v12 = 2654435761u * *v10.i64;
  }

  v13 = v11 - fabs(v7);
  if (v7 < 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  endDate = self->_endDate;
  if (endDate < 0.0)
  {
    endDate = -endDate;
  }

  *v10.i64 = floor(endDate + 0.5);
  v16 = (endDate - *v10.i64) * 1.84467441e19;
  *v5.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.i64[0] = vbslq_s8(v9, v5, v10).i64[0];
  v17 = 2654435761u * *v10.i64;
  v18 = v17 + v16;
  if (v16 <= 0.0)
  {
    v18 = 2654435761u * *v10.i64;
  }

  v19 = v17 - fabs(v16);
  if (v16 < 0.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  v21 = [(_DKPRValue *)self->_value hash];
  v22 = [(NSString *)self->_identifier hash];
  v23 = [(_DKPRSource *)self->_source hash];
  v24 = [(NSMutableArray *)self->_metadatas hash];
  if ((*&self->_has & 4) != 0)
  {
    creationDate = self->_creationDate;
    if (creationDate < 0.0)
    {
      creationDate = -creationDate;
    }

    *v25.i64 = floor(creationDate + 0.5);
    v29 = (creationDate - *v25.i64) * 1.84467441e19;
    *v26.i64 = *v25.i64 - trunc(*v25.i64 * 5.42101086e-20) * 1.84467441e19;
    v25 = vbslq_s8(v37, v26, v25);
    v27 = 2654435761u * *v25.i64;
    if (v29 >= 0.0)
    {
      if (v29 > 0.0)
      {
        v27 += v29;
      }
    }

    else
    {
      v27 -= fabs(v29);
    }
  }

  else
  {
    v27 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    confidence = self->_confidence;
    if (confidence < 0.0)
    {
      confidence = -confidence;
    }

    *v25.i64 = floor(confidence + 0.5);
    v32 = (confidence - *v25.i64) * 1.84467441e19;
    *v26.i64 = *v25.i64 - trunc(*v25.i64 * 5.42101086e-20) * 1.84467441e19;
    v33.f64[0] = NAN;
    v33.f64[1] = NAN;
    v30 = 2654435761u * *vbslq_s8(vnegq_f64(v33), v26, v25).i64;
    if (v32 >= 0.0)
    {
      if (v32 > 0.0)
      {
        v30 += v32;
      }

      if ((*&self->_has & 8) == 0)
      {
LABEL_35:
        v34 = 0;
        if ((*&self->_has & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v30 -= fabs(v32);
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v30 = 0;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_35;
    }
  }

  v34 = 2654435761 * self->_timeZone;
  if ((*&self->_has & 1) == 0)
  {
LABEL_36:
    v35 = 0;
    return v14 ^ v3 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v27 ^ v30 ^ v34 ^ v35;
  }

LABEL_31:
  v35 = 2654435761 * self->_compatibilityVersion;
  return v14 ^ v3 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v27 ^ v30 ^ v34 ^ v35;
}

- (uint64_t)addMetadata:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 64);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(a1 + 64);
      *(a1 + 64) = v6;

      v5 = *(a1 + 64);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)setCreationDate:(uint64_t)result
{
  if (result)
  {
    *(result + 96) |= 4u;
    *(result + 24) = a2;
  }

  return result;
}

- (uint64_t)setConfidence:(uint64_t)result
{
  if (result)
  {
    *(result + 96) |= 2u;
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)hasConfidence
{
  if (result)
  {
    return (*(result + 96) >> 1) & 1;
  }

  return result;
}

- (uint64_t)setTimeZone:(uint64_t)result
{
  if (result)
  {
    *(result + 96) |= 8u;
    *(result + 48) = a2;
  }

  return result;
}

- (uint64_t)hasTimeZone
{
  if (result)
  {
    return (*(result + 96) >> 3) & 1;
  }

  return result;
}

- (uint64_t)setCompatibilityVersion:(uint64_t)result
{
  if (result)
  {
    *(result + 96) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)hasCompatibilityVersion
{
  if (result)
  {
    return *(result + 96) & 1;
  }

  return result;
}

- (void)setStream:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_8(a1, a2, 80);
  }
}

- (void)setValue:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_8(a1, a2, 88);
  }
}

- (void)setIdentifier:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_8(a1, a2, 56);
  }
}

- (void)setSource:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_8(a1, a2, 72);
  }
}

- (uint64_t)stream
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (double)startDate
{
  if (a1)
  {
    return OUTLINED_FUNCTION_2_14(a1, 40);
  }

  else
  {
    return OUTLINED_FUNCTION_1_18();
  }
}

- (uint64_t)setStartDate:(uint64_t)result
{
  if (result)
  {
    *(result + 40) = a2;
  }

  return result;
}

- (double)endDate
{
  if (a1)
  {
    return OUTLINED_FUNCTION_2_14(a1, 32);
  }

  else
  {
    return OUTLINED_FUNCTION_1_18();
  }
}

- (uint64_t)setEndDate:(uint64_t)result
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

- (uint64_t)value
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

- (uint64_t)identifier
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)source
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (uint64_t)metadatas
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (double)creationDate
{
  if (a1)
  {
    return OUTLINED_FUNCTION_2_14(a1, 24);
  }

  else
  {
    return OUTLINED_FUNCTION_1_18();
  }
}

- (double)confidence
{
  if (a1)
  {
    return OUTLINED_FUNCTION_2_14(a1, 16);
  }

  else
  {
    return OUTLINED_FUNCTION_1_18();
  }
}

- (uint64_t)timeZone
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)compatibilityVersion
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

@end