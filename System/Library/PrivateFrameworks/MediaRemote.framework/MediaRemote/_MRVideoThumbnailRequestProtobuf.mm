@interface _MRVideoThumbnailRequestProtobuf
- (BOOL)isEqual:(id)equal;
- (double)timeIntervalsAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasThumbnailsWidth:(BOOL)width;
- (void)writeTo:(id)to;
@end

@implementation _MRVideoThumbnailRequestProtobuf

- (void)dealloc
{
  PBRepeatedDoubleClear();
  v3.receiver = self;
  v3.super_class = _MRVideoThumbnailRequestProtobuf;
  [(_MRVideoThumbnailRequestProtobuf *)&v3 dealloc];
}

- (double)timeIntervalsAtIndex:(unint64_t)index
{
  p_timeIntervals = &self->_timeIntervals;
  count = self->_timeIntervals.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_timeIntervals->list[index];
}

- (void)setHasThumbnailsWidth:(BOOL)width
{
  if (width)
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
  v8.super_class = _MRVideoThumbnailRequestProtobuf;
  v4 = [(_MRVideoThumbnailRequestProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRVideoThumbnailRequestProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = PBRepeatedDoubleNSArray();
  [dictionary setObject:v4 forKey:@"timeIntervals"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    *&v5 = self->_thumbnailsWidth;
    v7 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
    [dictionary setObject:v7 forKey:@"thumbnailsWidth"];

    has = self->_has;
  }

  if (has)
  {
    *&v5 = self->_thumbnailsHeight;
    v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
    [dictionary setObject:v8 forKey:@"thumbnailsHeight"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_timeIntervals.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_timeIntervals.list[v5];
      PBDataWriterWriteDoubleField();
      toCopy = v10;
      ++v5;
    }

    while (v5 < self->_timeIntervals.count);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    thumbnailsWidth = self->_thumbnailsWidth;
    PBDataWriterWriteFloatField();
    toCopy = v10;
    has = self->_has;
  }

  if (has)
  {
    thumbnailsHeight = self->_thumbnailsHeight;
    PBDataWriterWriteFloatField();
    toCopy = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(_MRVideoThumbnailRequestProtobuf *)self timeIntervalsCount])
  {
    [toCopy clearTimeIntervals];
    timeIntervalsCount = [(_MRVideoThumbnailRequestProtobuf *)self timeIntervalsCount];
    if (timeIntervalsCount)
    {
      v5 = timeIntervalsCount;
      for (i = 0; i != v5; ++i)
      {
        [(_MRVideoThumbnailRequestProtobuf *)self timeIntervalsAtIndex:i];
        [toCopy addTimeIntervals:?];
      }
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 9) = LODWORD(self->_thumbnailsWidth);
    *(toCopy + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 8) = LODWORD(self->_thumbnailsHeight);
    *(toCopy + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedDoubleCopy();
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 36) = self->_thumbnailsWidth;
    *(v4 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 32) = self->_thumbnailsHeight;
    *(v4 + 40) |= 1u;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || !PBRepeatedDoubleIsEqual())
  {
    goto LABEL_12;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_thumbnailsWidth != *(equalCopy + 9))
    {
      goto LABEL_12;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_thumbnailsHeight != *(equalCopy + 8))
    {
      goto LABEL_12;
    }

    v5 = 1;
  }

LABEL_13:

  return v5;
}

- (unint64_t)hash
{
  v3 = PBRepeatedDoubleHash();
  if ((*&self->_has & 2) != 0)
  {
    thumbnailsWidth = self->_thumbnailsWidth;
    if (thumbnailsWidth < 0.0)
    {
      thumbnailsWidth = -thumbnailsWidth;
    }

    *v4.i32 = floorf(thumbnailsWidth + 0.5);
    v8 = (thumbnailsWidth - *v4.i32) * 1.8447e19;
    *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
    v9.i64[0] = 0x8000000080000000;
    v9.i64[1] = 0x8000000080000000;
    v4 = vbslq_s8(v9, v5, v4);
    v6 = 2654435761u * *v4.i32;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabsf(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if (*&self->_has)
  {
    thumbnailsHeight = self->_thumbnailsHeight;
    if (thumbnailsHeight < 0.0)
    {
      thumbnailsHeight = -thumbnailsHeight;
    }

    *v4.i32 = floorf(thumbnailsHeight + 0.5);
    v12 = (thumbnailsHeight - *v4.i32) * 1.8447e19;
    *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
    v13.i64[0] = 0x8000000080000000;
    v13.i64[1] = 0x8000000080000000;
    v10 = 2654435761u * *vbslq_s8(v13, v5, v4).i32;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabsf(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  return v6 ^ v3 ^ v10;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  timeIntervalsCount = [fromCopy timeIntervalsCount];
  if (timeIntervalsCount)
  {
    v5 = timeIntervalsCount;
    for (i = 0; i != v5; ++i)
    {
      [fromCopy timeIntervalsAtIndex:i];
      [(_MRVideoThumbnailRequestProtobuf *)self addTimeIntervals:?];
    }
  }

  v7 = *(fromCopy + 40);
  if ((v7 & 2) != 0)
  {
    self->_thumbnailsWidth = fromCopy[9];
    *&self->_has |= 2u;
    v7 = *(fromCopy + 40);
  }

  if (v7)
  {
    self->_thumbnailsHeight = fromCopy[8];
    *&self->_has |= 1u;
  }
}

@end