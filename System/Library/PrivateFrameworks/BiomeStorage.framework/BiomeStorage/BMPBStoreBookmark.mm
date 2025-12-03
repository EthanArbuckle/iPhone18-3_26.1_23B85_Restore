@interface BMPBStoreBookmark
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasOffset:(BOOL)offset;
- (void)writeTo:(id)to;
@end

@implementation BMPBStoreBookmark

- (void)setHasOffset:(BOOL)offset
{
  if (offset)
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
  dictionaryRepresentation = [(BMPBStoreBookmark *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  streamId = self->_streamId;
  if (streamId)
  {
    [dictionary setObject:streamId forKey:@"streamId"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_streamId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_segmentName)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    iterationStartTime = self->_iterationStartTime;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    offset = self->_offset;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_streamId)
  {
    [toCopy setStreamId:?];
    toCopy = v6;
  }

  if (self->_segmentName)
  {
    [v6 setSegmentName:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = *&self->_iterationStartTime;
    *(toCopy + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 4) = self->_offset;
    *(toCopy + 40) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_streamId copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_segmentName copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  streamId = self->_streamId;
  if (streamId | *(equalCopy + 4))
  {
    if (![(NSString *)streamId isEqual:?])
    {
      goto LABEL_15;
    }
  }

  segmentName = self->_segmentName;
  if (segmentName | *(equalCopy + 3))
  {
    if (![(NSString *)segmentName isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_iterationStartTime != *(equalCopy + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = (*(equalCopy + 40) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_offset != *(equalCopy + 4))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(BMPBStoreBookmark *)self setStreamId:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(BMPBStoreBookmark *)self setSegmentName:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 40);
  if (v5)
  {
    self->_iterationStartTime = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 40);
  }

  if ((v5 & 2) != 0)
  {
    self->_offset = *(fromCopy + 4);
    *&self->_has |= 2u;
  }
}

@end