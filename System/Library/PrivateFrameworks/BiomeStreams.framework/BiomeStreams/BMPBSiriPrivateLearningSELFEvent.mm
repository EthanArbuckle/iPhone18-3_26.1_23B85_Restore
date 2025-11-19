@interface BMPBSiriPrivateLearningSELFEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBSiriPrivateLearningSELFEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBSiriPrivateLearningSELFEvent;
  v4 = [(BMPBSiriPrivateLearningSELFEvent *)&v8 description];
  v5 = [(BMPBSiriPrivateLearningSELFEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [v3 setObject:v4 forKey:@"absoluteTimestamp"];
  }

  uniqueId = self->_uniqueId;
  if (uniqueId)
  {
    [v3 setObject:uniqueId forKey:@"uniqueId"];
  }

  eventData = self->_eventData;
  if (eventData)
  {
    [v3 setObject:eventData forKey:@"eventData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_uniqueId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_eventData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = *&self->_absoluteTimestamp;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_uniqueId)
  {
    [v4 setUniqueId:?];
    v4 = v5;
  }

  if (self->_eventData)
  {
    [v5 setEventData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_uniqueId copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSData *)self->_eventData copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_absoluteTimestamp != *(v4 + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  uniqueId = self->_uniqueId;
  if (uniqueId | *(v4 + 3) && ![(NSString *)uniqueId isEqual:?])
  {
    goto LABEL_11;
  }

  eventData = self->_eventData;
  if (eventData | *(v4 + 2))
  {
    v8 = [(NSData *)eventData isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    if (absoluteTimestamp < 0.0)
    {
      absoluteTimestamp = -absoluteTimestamp;
    }

    *v2.i64 = floor(absoluteTimestamp + 0.5);
    v7 = (absoluteTimestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(NSString *)self->_uniqueId hash]^ v5;
  return v9 ^ [(NSData *)self->_eventData hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[4])
  {
    self->_absoluteTimestamp = v4[1];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 3))
  {
    [(BMPBSiriPrivateLearningSELFEvent *)self setUniqueId:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(BMPBSiriPrivateLearningSELFEvent *)self setEventData:?];
    v4 = v5;
  }
}

@end