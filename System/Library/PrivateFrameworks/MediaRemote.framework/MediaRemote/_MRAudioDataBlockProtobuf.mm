@interface _MRAudioDataBlockProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRAudioDataBlockProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRAudioDataBlockProtobuf;
  v4 = [(_MRAudioDataBlockProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRAudioDataBlockProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  buffer = self->_buffer;
  if (buffer)
  {
    dictionaryRepresentation = [(_MRAudioBufferProtobuf *)buffer dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"buffer"];
  }

  time = self->_time;
  if (time)
  {
    dictionaryRepresentation2 = [(_MRAudioTimeProtobuf *)time dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"time"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_gain];
    [dictionary setObject:v8 forKey:@"gain"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_buffer)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_time)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    gain = self->_gain;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_buffer)
  {
    [toCopy setBuffer:?];
    toCopy = v5;
  }

  if (self->_time)
  {
    [v5 setTime:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_gain;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRAudioBufferProtobuf *)self->_buffer copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(_MRAudioTimeProtobuf *)self->_time copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_gain;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  buffer = self->_buffer;
  if (buffer | *(equalCopy + 2))
  {
    if (![(_MRAudioBufferProtobuf *)buffer isEqual:?])
    {
      goto LABEL_10;
    }
  }

  time = self->_time;
  if (time | *(equalCopy + 3))
  {
    if (![(_MRAudioTimeProtobuf *)time isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_gain == *(equalCopy + 1))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(_MRAudioBufferProtobuf *)self->_buffer hash];
  v4 = [(_MRAudioTimeProtobuf *)self->_time hash];
  if (*&self->_has)
  {
    gain = self->_gain;
    if (gain < 0.0)
    {
      gain = -gain;
    }

    *v5.i64 = floor(gain + 0.5);
    v9 = (gain - *v5.i64) * 1.84467441e19;
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

  return v4 ^ v3 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  buffer = self->_buffer;
  v6 = *(fromCopy + 2);
  v9 = fromCopy;
  if (buffer)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRAudioBufferProtobuf *)buffer mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRAudioDataBlockProtobuf *)self setBuffer:?];
  }

  fromCopy = v9;
LABEL_7:
  time = self->_time;
  v8 = *(fromCopy + 3);
  if (time)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(_MRAudioTimeProtobuf *)time mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(_MRAudioDataBlockProtobuf *)self setTime:?];
  }

  fromCopy = v9;
LABEL_13:
  if (*(fromCopy + 32))
  {
    self->_gain = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end