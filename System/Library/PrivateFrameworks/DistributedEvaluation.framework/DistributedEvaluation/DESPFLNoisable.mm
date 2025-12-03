@interface DESPFLNoisable
- (BOOL)isEqual:(id)equal;
- (double)dataAtIndex:(unint64_t)index;
- (float)data32AtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasIteration:(BOOL)iteration;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation DESPFLNoisable

- (void)dealloc
{
  PBRepeatedDoubleClear();
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = DESPFLNoisable;
  [(DESPFLNoisable *)&v3 dealloc];
}

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIteration:(BOOL)iteration
{
  if (iteration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (double)dataAtIndex:(unint64_t)index
{
  p_datas = &self->_datas;
  count = self->_datas.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_datas->list[index];
}

- (float)data32AtIndex:(unint64_t)index
{
  p_data32s = &self->_data32s;
  count = self->_data32s.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_data32s->list[index];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DESPFLNoisable;
  v4 = [(DESPFLNoisable *)&v8 description];
  dictionaryRepresentation = [(DESPFLNoisable *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_version];
    [dictionary setObject:v4 forKey:@"version"];
  }

  recipeId = self->_recipeId;
  if (recipeId)
  {
    [dictionary setObject:recipeId forKey:@"recipe_id"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_iteration];
    [dictionary setObject:v7 forKey:@"iteration"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_weight];
    [dictionary setObject:v8 forKey:@"weight"];
  }

  v9 = PBRepeatedDoubleNSArray();
  [dictionary setObject:v9 forKey:@"data"];

  v10 = PBRepeatedFloatNSArray();
  [dictionary setObject:v10 forKey:@"data32"];

  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  dataTransport = self->_dataTransport;
  if (dataTransport)
  {
    dictionaryRepresentation = [(DESDataTransport *)dataTransport dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"data_transport"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
  }

  if (self->_recipeId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    iteration = self->_iteration;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if (has)
  {
    weight = self->_weight;
    PBDataWriterWriteDoubleField();
  }

  if (self->_datas.count)
  {
    PBDataWriterPlaceMark();
    if (self->_datas.count)
    {
      v9 = 0;
      do
      {
        v10 = self->_datas.list[v9];
        PBDataWriterWriteDoubleField();
        ++v9;
      }

      while (v9 < self->_datas.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_data32s.count)
  {
    PBDataWriterPlaceMark();
    if (self->_data32s.count)
    {
      v11 = 0;
      do
      {
        v12 = self->_data32s.list[v11];
        PBDataWriterWriteFloatField();
        ++v11;
      }

      while (v11 < self->_data32s.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_dataTransport)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[24] = self->_version;
    *(toCopy + 100) |= 4u;
  }

  v13 = toCopy;
  if (self->_recipeId)
  {
    [toCopy setRecipeId:?];
    toCopy = v13;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[18] = self->_iteration;
    *(toCopy + 100) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 7) = *&self->_weight;
    *(toCopy + 100) |= 1u;
  }

  if ([(DESPFLNoisable *)self datasCount])
  {
    [v13 clearDatas];
    datasCount = [(DESPFLNoisable *)self datasCount];
    if (datasCount)
    {
      v7 = datasCount;
      for (i = 0; i != v7; ++i)
      {
        [(DESPFLNoisable *)self dataAtIndex:i];
        [v13 addData:?];
      }
    }
  }

  if ([(DESPFLNoisable *)self data32sCount])
  {
    [v13 clearData32s];
    data32sCount = [(DESPFLNoisable *)self data32sCount];
    if (data32sCount)
    {
      v10 = data32sCount;
      for (j = 0; j != v10; ++j)
      {
        [(DESPFLNoisable *)self data32AtIndex:j];
        [v13 addData32:?];
      }
    }
  }

  if (self->_uuid)
  {
    [v13 setUuid:?];
  }

  v12 = v13;
  if (self->_dataTransport)
  {
    [v13 setDataTransport:?];
    v12 = v13;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 96) = self->_version;
    *(v5 + 100) |= 4u;
  }

  v7 = [(NSString *)self->_recipeId copyWithZone:zone];
  v8 = *(v6 + 80);
  *(v6 + 80) = v7;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 72) = self->_iteration;
    *(v6 + 100) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 56) = self->_weight;
    *(v6 + 100) |= 1u;
  }

  PBRepeatedDoubleCopy();
  PBRepeatedFloatCopy();
  v10 = [(NSString *)self->_uuid copyWithZone:zone];
  v11 = *(v6 + 88);
  *(v6 + 88) = v10;

  v12 = [(DESDataTransport *)self->_dataTransport copyWithZone:zone];
  v13 = *(v6 + 64);
  *(v6 + 64) = v12;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  has = self->_has;
  v6 = *(equalCopy + 100);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 100) & 4) == 0 || self->_version != *(equalCopy + 24))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 100) & 4) != 0)
  {
    goto LABEL_26;
  }

  recipeId = self->_recipeId;
  if (recipeId | *(equalCopy + 10))
  {
    if (![(NSString *)recipeId isEqual:?])
    {
LABEL_26:
      v11 = 0;
      goto LABEL_27;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 100);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 100) & 2) == 0 || self->_iteration != *(equalCopy + 18))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 100) & 2) != 0)
  {
    goto LABEL_26;
  }

  if (has)
  {
    if ((*(equalCopy + 100) & 1) == 0 || self->_weight != *(equalCopy + 7))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 100))
  {
    goto LABEL_26;
  }

  if (!PBRepeatedDoubleIsEqual())
  {
    goto LABEL_26;
  }

  if (!PBRepeatedFloatIsEqual())
  {
    goto LABEL_26;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 11))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_26;
    }
  }

  dataTransport = self->_dataTransport;
  if (dataTransport | *(equalCopy + 8))
  {
    v11 = [(DESDataTransport *)dataTransport isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_27:

  return v11;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_recipeId hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_iteration;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  weight = self->_weight;
  if (weight < 0.0)
  {
    weight = -weight;
  }

  *v5.i64 = floor(weight + 0.5);
  v9 = (weight - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_12:
  v12 = v4 ^ v3;
  v13 = v7 ^ v11 ^ PBRepeatedDoubleHash();
  v14 = v13 ^ PBRepeatedFloatHash();
  v15 = v12 ^ v14 ^ [(NSString *)self->_uuid hash];
  return v15 ^ [(DESDataTransport *)self->_dataTransport hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 100) & 4) != 0)
  {
    self->_version = *(fromCopy + 24);
    *&self->_has |= 4u;
  }

  v15 = fromCopy;
  if (*(fromCopy + 10))
  {
    [(DESPFLNoisable *)self setRecipeId:?];
    fromCopy = v15;
  }

  v5 = *(fromCopy + 100);
  if ((v5 & 2) != 0)
  {
    self->_iteration = *(fromCopy + 18);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 100);
  }

  if (v5)
  {
    self->_weight = *(fromCopy + 7);
    *&self->_has |= 1u;
  }

  datasCount = [fromCopy datasCount];
  if (datasCount)
  {
    v7 = datasCount;
    for (i = 0; i != v7; ++i)
    {
      [v15 dataAtIndex:i];
      [(DESPFLNoisable *)self addData:?];
    }
  }

  data32sCount = [v15 data32sCount];
  if (data32sCount)
  {
    v10 = data32sCount;
    for (j = 0; j != v10; ++j)
    {
      [v15 data32AtIndex:j];
      [(DESPFLNoisable *)self addData32:?];
    }
  }

  v12 = v15;
  if (v15[11])
  {
    [(DESPFLNoisable *)self setUuid:?];
    v12 = v15;
  }

  dataTransport = self->_dataTransport;
  v14 = v12[8];
  if (dataTransport)
  {
    if (v14)
    {
      [(DESDataTransport *)dataTransport mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(DESPFLNoisable *)self setDataTransport:?];
  }

  MEMORY[0x2821F96F8]();
}

@end