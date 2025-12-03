@interface BPSPBApproxPercentileDigest
- (BOOL)isEqual:(id)equal;
- (float)centroidMeansAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)centroidWeightsAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasCentroidCount:(BOOL)count;
- (void)setHasMax:(BOOL)max;
- (void)setHasMin:(BOOL)min;
- (void)writeTo:(id)to;
@end

@implementation BPSPBApproxPercentileDigest

- (void)dealloc
{
  PBRepeatedFloatClear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = BPSPBApproxPercentileDigest;
  [(BPSPBApproxPercentileDigest *)&v3 dealloc];
}

- (void)setHasMin:(BOOL)min
{
  if (min)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMax:(BOOL)max
{
  if (max)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCentroidCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (float)centroidMeansAtIndex:(unint64_t)index
{
  p_centroidMeans = &self->_centroidMeans;
  count = self->_centroidMeans.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_centroidMeans->list[index];
}

- (unsigned)centroidWeightsAtIndex:(unint64_t)index
{
  p_centroidWeights = &self->_centroidWeights;
  count = self->_centroidWeights.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_centroidWeights->list[index];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BPSPBApproxPercentileDigest;
  v4 = [(BPSPBApproxPercentileDigest *)&v8 description];
  dictionaryRepresentation = [(BPSPBApproxPercentileDigest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *&v4 = self->_min;
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [dictionary setObject:v10 forKey:@"min"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *&v4 = self->_max;
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v11 forKey:@"max"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_centroidCount];
  [dictionary setObject:v12 forKey:@"centroidCount"];

  if (*&self->_has)
  {
LABEL_5:
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_bufferMultiplier];
    [dictionary setObject:v6 forKey:@"bufferMultiplier"];
  }

LABEL_6:
  v7 = PBRepeatedFloatNSArray();
  [dictionary setObject:v7 forKey:@"centroidMeans"];

  v8 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v8 forKey:@"centroidWeights"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    min = self->_min;
    PBDataWriterWriteFloatField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  max = self->_max;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_19:
  centroidCount = self->_centroidCount;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_5:
    bufferMultiplier = self->_bufferMultiplier;
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
  if (self->_centroidMeans.count)
  {
    PBDataWriterPlaceMark();
    if (self->_centroidMeans.count)
    {
      v7 = 0;
      do
      {
        v8 = self->_centroidMeans.list[v7];
        PBDataWriterWriteFloatField();
        ++v7;
      }

      while (v7 < self->_centroidMeans.count);
    }

    PBDataWriterRecallMark();
  }

  p_centroidWeights = &self->_centroidWeights;
  if (p_centroidWeights->count)
  {
    PBDataWriterPlaceMark();
    if (p_centroidWeights->count)
    {
      v10 = 0;
      do
      {
        v11 = p_centroidWeights->list[v10];
        PBDataWriterWriteUint32Field();
        ++v10;
      }

      while (v10 < p_centroidWeights->count);
    }

    PBDataWriterRecallMark();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[17] = LODWORD(self->_min);
    *(toCopy + 72) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_19:
      toCopy[15] = self->_centroidCount;
      *(toCopy + 72) |= 2u;
      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  toCopy[16] = LODWORD(self->_max);
  *(toCopy + 72) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (has)
  {
LABEL_5:
    toCopy[14] = self->_bufferMultiplier;
    *(toCopy + 72) |= 1u;
  }

LABEL_6:
  v12 = toCopy;
  if ([(BPSPBApproxPercentileDigest *)self centroidMeansCount])
  {
    [v12 clearCentroidMeans];
    centroidMeansCount = [(BPSPBApproxPercentileDigest *)self centroidMeansCount];
    if (centroidMeansCount)
    {
      v7 = centroidMeansCount;
      for (i = 0; i != v7; ++i)
      {
        [(BPSPBApproxPercentileDigest *)self centroidMeansAtIndex:i];
        [v12 addCentroidMeans:?];
      }
    }
  }

  if ([(BPSPBApproxPercentileDigest *)self centroidWeightsCount])
  {
    [v12 clearCentroidWeights];
    centroidWeightsCount = [(BPSPBApproxPercentileDigest *)self centroidWeightsCount];
    if (centroidWeightsCount)
    {
      v10 = centroidWeightsCount;
      for (j = 0; j != v10; ++j)
      {
        [v12 addCentroidWeights:{-[BPSPBApproxPercentileDigest centroidWeightsAtIndex:](self, "centroidWeightsAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v4 + 68) = self->_min;
    *(v4 + 72) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v4 + 60) = self->_centroidCount;
      *(v4 + 72) |= 2u;
      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 64) = self->_max;
  *(v4 + 72) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (has)
  {
LABEL_5:
    *(v4 + 56) = self->_bufferMultiplier;
    *(v4 + 72) |= 1u;
  }

LABEL_6:
  PBRepeatedFloatCopy();
  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v5 = *(equalCopy + 72);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 72) & 8) == 0 || self->_min != *(equalCopy + 17))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 72) & 8) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 72) & 4) == 0 || self->_max != *(equalCopy + 16))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 72) & 4) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 72) & 2) == 0 || self->_centroidCount != *(equalCopy + 15))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 72) & 2) != 0)
  {
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_bufferMultiplier != *(equalCopy + 14))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 72))
  {
    goto LABEL_24;
  }

  if (!PBRepeatedFloatIsEqual())
  {
LABEL_24:
    IsEqual = 0;
    goto LABEL_25;
  }

  IsEqual = PBRepeatedUInt32IsEqual();
LABEL_25:

  return IsEqual;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    min = self->_min;
    if (min < 0.0)
    {
      min = -min;
    }

    *v2.i32 = floorf(min + 0.5);
    v6 = (min - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v7.i64[0] = 0x8000000080000000;
    v7.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v7, v3, v2);
    v4 = 2654435761u * *v2.i32;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v4 += v6;
      }
    }

    else
    {
      v4 -= fabsf(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    max = self->_max;
    if (max < 0.0)
    {
      max = -max;
    }

    *v2.i32 = floorf(max + 0.5);
    v10 = (max - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v11.i64[0] = 0x8000000080000000;
    v11.i64[1] = 0x8000000080000000;
    v8 = 2654435761u * *vbslq_s8(v11, v3, v2).i32;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabsf(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = 2654435761 * self->_centroidCount;
    if (*&self->_has)
    {
      goto LABEL_19;
    }

LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  v12 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  v13 = 2654435761 * self->_bufferMultiplier;
LABEL_22:
  v14 = v8 ^ v4 ^ v12 ^ v13 ^ PBRepeatedFloatHash();
  return v14 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 72);
  if ((v5 & 8) != 0)
  {
    self->_min = *(fromCopy + 17);
    *&self->_has |= 8u;
    v5 = *(fromCopy + 72);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*(fromCopy + 72) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_max = *(fromCopy + 16);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 72);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_17:
  self->_centroidCount = *(fromCopy + 15);
  *&self->_has |= 2u;
  if (*(fromCopy + 72))
  {
LABEL_5:
    self->_bufferMultiplier = *(fromCopy + 14);
    *&self->_has |= 1u;
  }

LABEL_6:
  v12 = fromCopy;
  centroidMeansCount = [fromCopy centroidMeansCount];
  if (centroidMeansCount)
  {
    v7 = centroidMeansCount;
    for (i = 0; i != v7; ++i)
    {
      [v12 centroidMeansAtIndex:i];
      [(BPSPBApproxPercentileDigest *)self addCentroidMeans:?];
    }
  }

  centroidWeightsCount = [v12 centroidWeightsCount];
  if (centroidWeightsCount)
  {
    v10 = centroidWeightsCount;
    for (j = 0; j != v10; ++j)
    {
      -[BPSPBApproxPercentileDigest addCentroidWeights:](self, "addCentroidWeights:", [v12 centroidWeightsAtIndex:j]);
    }
  }
}

@end