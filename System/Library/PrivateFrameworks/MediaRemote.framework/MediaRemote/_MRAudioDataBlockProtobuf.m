@interface _MRAudioDataBlockProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRAudioDataBlockProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRAudioDataBlockProtobuf;
  v4 = [(_MRAudioDataBlockProtobuf *)&v8 description];
  v5 = [(_MRAudioDataBlockProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  buffer = self->_buffer;
  if (buffer)
  {
    v5 = [(_MRAudioBufferProtobuf *)buffer dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"buffer"];
  }

  time = self->_time;
  if (time)
  {
    v7 = [(_MRAudioTimeProtobuf *)time dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"time"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_gain];
    [v3 setObject:v8 forKey:@"gain"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_buffer)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_time)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    gain = self->_gain;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_buffer)
  {
    [v4 setBuffer:?];
    v4 = v5;
  }

  if (self->_time)
  {
    [v5 setTime:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_gain;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRAudioBufferProtobuf *)self->_buffer copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(_MRAudioTimeProtobuf *)self->_time copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_gain;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  buffer = self->_buffer;
  if (buffer | *(v4 + 2))
  {
    if (![(_MRAudioBufferProtobuf *)buffer isEqual:?])
    {
      goto LABEL_10;
    }
  }

  time = self->_time;
  if (time | *(v4 + 3))
  {
    if (![(_MRAudioTimeProtobuf *)time isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_gain == *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  buffer = self->_buffer;
  v6 = *(v4 + 2);
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  time = self->_time;
  v8 = *(v4 + 3);
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

  v4 = v9;
LABEL_13:
  if (*(v4 + 32))
  {
    self->_gain = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end