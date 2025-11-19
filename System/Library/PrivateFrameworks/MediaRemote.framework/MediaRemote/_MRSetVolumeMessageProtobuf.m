@interface _MRSetVolumeMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRSetVolumeMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSetVolumeMessageProtobuf;
  v4 = [(_MRSetVolumeMessageProtobuf *)&v8 description];
  v5 = [(_MRSetVolumeMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    *&v4 = self->_volume;
    v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [v3 setObject:v5 forKey:@"volume"];
  }

  outputDeviceUID = self->_outputDeviceUID;
  if (outputDeviceUID)
  {
    [v3 setObject:outputDeviceUID forKey:@"outputDeviceUID"];
  }

  details = self->_details;
  if (details)
  {
    v8 = [(_MRRequestDetailsProtobuf *)details dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"details"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    volume = self->_volume;
    PBDataWriterWriteFloatField();
    v4 = v6;
  }

  if (self->_outputDeviceUID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_details)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = LODWORD(self->_volume);
    *(v4 + 28) |= 1u;
  }

  v5 = v4;
  if (self->_outputDeviceUID)
  {
    [v4 setOutputDeviceUID:?];
    v4 = v5;
  }

  if (self->_details)
  {
    [v5 setDetails:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_volume;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_outputDeviceUID copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(_MRRequestDetailsProtobuf *)self->_details copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_volume != *(v4 + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  outputDeviceUID = self->_outputDeviceUID;
  if (outputDeviceUID | *(v4 + 2) && ![(NSString *)outputDeviceUID isEqual:?])
  {
    goto LABEL_11;
  }

  details = self->_details;
  if (details | *(v4 + 1))
  {
    v8 = [(_MRRequestDetailsProtobuf *)details isEqual:?];
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
    volume = self->_volume;
    if (volume < 0.0)
    {
      volume = -volume;
    }

    *v2.i32 = floorf(volume + 0.5);
    v7 = (volume - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v8.i64[0] = 0x8000000080000000;
    v8.i64[1] = 0x8000000080000000;
    v5 = 2654435761u * *vbslq_s8(v8, v3, v2).i32;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabsf(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(NSString *)self->_outputDeviceUID hash]^ v5;
  return v9 ^ [(_MRRequestDetailsProtobuf *)self->_details hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 28))
  {
    self->_volume = *(v4 + 6);
    *&self->_has |= 1u;
  }

  v8 = v4;
  if (*(v4 + 2))
  {
    [(_MRSetVolumeMessageProtobuf *)self setOutputDeviceUID:?];
    v5 = v8;
  }

  details = self->_details;
  v7 = v5[1];
  if (details)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    [(_MRRequestDetailsProtobuf *)details mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    [(_MRSetVolumeMessageProtobuf *)self setDetails:?];
  }

  v5 = v8;
LABEL_11:
}

@end