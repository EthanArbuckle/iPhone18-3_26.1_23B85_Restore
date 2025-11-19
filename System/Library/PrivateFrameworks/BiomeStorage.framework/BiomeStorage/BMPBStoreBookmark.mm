@interface BMPBStoreBookmark
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasOffset:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBStoreBookmark

- (void)setHasOffset:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBStoreBookmark;
  v4 = [(BMPBStoreBookmark *)&v8 description];
  v5 = [(BMPBStoreBookmark *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  streamId = self->_streamId;
  if (streamId)
  {
    [v3 setObject:streamId forKey:@"streamId"];
  }

  segmentName = self->_segmentName;
  if (segmentName)
  {
    [v4 setObject:segmentName forKey:@"segmentName"];
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_iterationStartTime];
    [v4 setObject:v8 forKey:@"iterationStartTime"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_offset];
    [v4 setObject:v9 forKey:@"offset"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_streamId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_segmentName)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    iterationStartTime = self->_iterationStartTime;
    PBDataWriterWriteDoubleField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    offset = self->_offset;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_streamId)
  {
    [v4 setStreamId:?];
    v4 = v6;
  }

  if (self->_segmentName)
  {
    [v6 setSegmentName:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_iterationStartTime;
    *(v4 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 4) = self->_offset;
    *(v4 + 40) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_streamId copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_segmentName copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_iterationStartTime;
    *(v5 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_offset;
    *(v5 + 40) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  streamId = self->_streamId;
  if (streamId | *(v4 + 4))
  {
    if (![(NSString *)streamId isEqual:?])
    {
      goto LABEL_15;
    }
  }

  segmentName = self->_segmentName;
  if (segmentName | *(v4 + 3))
  {
    if (![(NSString *)segmentName isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_iterationStartTime != *(v4 + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = (*(v4 + 40) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_offset != *(v4 + 4))
    {
      goto LABEL_15;
    }

    v7 = 1;
  }

LABEL_16:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_streamId hash];
  v4 = [(NSString *)self->_segmentName hash];
  if (*&self->_has)
  {
    iterationStartTime = self->_iterationStartTime;
    if (iterationStartTime < 0.0)
    {
      iterationStartTime = -iterationStartTime;
    }

    *v5.i64 = floor(iterationStartTime + 0.5);
    v9 = (iterationStartTime - *v5.i64) * 1.84467441e19;
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

  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_offset;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 4))
  {
    [(BMPBStoreBookmark *)self setStreamId:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(BMPBStoreBookmark *)self setSegmentName:?];
    v4 = v6;
  }

  v5 = *(v4 + 40);
  if (v5)
  {
    self->_iterationStartTime = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 40);
  }

  if ((v5 & 2) != 0)
  {
    self->_offset = *(v4 + 4);
    *&self->_has |= 2u;
  }
}

@end