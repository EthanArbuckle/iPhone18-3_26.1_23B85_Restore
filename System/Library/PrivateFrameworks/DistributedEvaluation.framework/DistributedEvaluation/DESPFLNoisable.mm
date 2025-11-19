@interface DESPFLNoisable
- (BOOL)isEqual:(id)a3;
- (double)dataAtIndex:(unint64_t)a3;
- (float)data32AtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasIteration:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasVersion:(BOOL)a3
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

- (void)setHasIteration:(BOOL)a3
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

- (double)dataAtIndex:(unint64_t)a3
{
  p_datas = &self->_datas;
  count = self->_datas.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_datas->list[a3];
}

- (float)data32AtIndex:(unint64_t)a3
{
  p_data32s = &self->_data32s;
  count = self->_data32s.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_data32s->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DESPFLNoisable;
  v4 = [(DESPFLNoisable *)&v8 description];
  v5 = [(DESPFLNoisable *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  recipeId = self->_recipeId;
  if (recipeId)
  {
    [v3 setObject:recipeId forKey:@"recipe_id"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_iteration];
    [v3 setObject:v7 forKey:@"iteration"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_weight];
    [v3 setObject:v8 forKey:@"weight"];
  }

  v9 = PBRepeatedDoubleNSArray();
  [v3 setObject:v9 forKey:@"data"];

  v10 = PBRepeatedFloatNSArray();
  [v3 setObject:v10 forKey:@"data32"];

  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  dataTransport = self->_dataTransport;
  if (dataTransport)
  {
    v13 = [(DESDataTransport *)dataTransport dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"data_transport"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    v4[24] = self->_version;
    *(v4 + 100) |= 4u;
  }

  v13 = v4;
  if (self->_recipeId)
  {
    [v4 setRecipeId:?];
    v4 = v13;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[18] = self->_iteration;
    *(v4 + 100) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 7) = *&self->_weight;
    *(v4 + 100) |= 1u;
  }

  if ([(DESPFLNoisable *)self datasCount])
  {
    [v13 clearDatas];
    v6 = [(DESPFLNoisable *)self datasCount];
    if (v6)
    {
      v7 = v6;
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
    v9 = [(DESPFLNoisable *)self data32sCount];
    if (v9)
    {
      v10 = v9;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 96) = self->_version;
    *(v5 + 100) |= 4u;
  }

  v7 = [(NSString *)self->_recipeId copyWithZone:a3];
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
  v10 = [(NSString *)self->_uuid copyWithZone:a3];
  v11 = *(v6 + 88);
  *(v6 + 88) = v10;

  v12 = [(DESDataTransport *)self->_dataTransport copyWithZone:a3];
  v13 = *(v6 + 64);
  *(v6 + 64) = v12;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  has = self->_has;
  v6 = *(v4 + 100);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 100) & 4) == 0 || self->_version != *(v4 + 24))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 100) & 4) != 0)
  {
    goto LABEL_26;
  }

  recipeId = self->_recipeId;
  if (recipeId | *(v4 + 10))
  {
    if (![(NSString *)recipeId isEqual:?])
    {
LABEL_26:
      v11 = 0;
      goto LABEL_27;
    }

    has = self->_has;
  }

  v8 = *(v4 + 100);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 100) & 2) == 0 || self->_iteration != *(v4 + 18))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 100) & 2) != 0)
  {
    goto LABEL_26;
  }

  if (has)
  {
    if ((*(v4 + 100) & 1) == 0 || self->_weight != *(v4 + 7))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 100))
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
  if (uuid | *(v4 + 11))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_26;
    }
  }

  dataTransport = self->_dataTransport;
  if (dataTransport | *(v4 + 8))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 100) & 4) != 0)
  {
    self->_version = *(v4 + 24);
    *&self->_has |= 4u;
  }

  v15 = v4;
  if (*(v4 + 10))
  {
    [(DESPFLNoisable *)self setRecipeId:?];
    v4 = v15;
  }

  v5 = *(v4 + 100);
  if ((v5 & 2) != 0)
  {
    self->_iteration = *(v4 + 18);
    *&self->_has |= 2u;
    v5 = *(v4 + 100);
  }

  if (v5)
  {
    self->_weight = *(v4 + 7);
    *&self->_has |= 1u;
  }

  v6 = [v4 datasCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      [v15 dataAtIndex:i];
      [(DESPFLNoisable *)self addData:?];
    }
  }

  v9 = [v15 data32sCount];
  if (v9)
  {
    v10 = v9;
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